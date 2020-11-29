#Convert .sch (Kicad eeschema) schematics to svg and png
# svg generation done thanks to plotkicadsch
# png generation from svg done with pillow

#d:\tools\Git\bin\plotkicadsch.exe -f test_blank.sch -l test_blank-cache.lib

from lxml import etree
from os.path import abspath, dirname, exists, getmtime, join, realpath
from os import walk
from subprocess import call, check_output

plotkicadsch_fp = abspath(join("..","bin","plotkicadsch.exe"))

def svg2png(svg_fp, png_fp):
    """ converts svg files to png by calling Inkscape command lines
    Paramters:
    ----------
    svg_fp: str
        full path to the svg input file
    png_fp: str
        full path to the png output file
    
    """
    svg_is_younger = True
    if exists(png_fp):
        if getmtime(svg_fp) < getmtime(png_fp):
            svg_is_younger = False
            print(png_fp, "not updated") 
    if svg_is_younger:
        print("calling inkscape on ",svg_fp)
        res = call(["D:\\binw\\Inkscape\\inkscape.exe","-z",\
                            svg_fp,"-e", png_fp])

def get_svg_viewbox(mxml):
    #Rescale the viewbox
    x_min = 10000
    y_min = 10000
    x_max = -10000
    y_max = -10000
    #first we go over any tag which has a x property and then access the x,y property
    for el in mxml.xpath("//*[@x]"):
        x, y = el.attrib['x'], el.attrib['y']
        x, y = float(x), float(y)
        x_min = min(x_min,x)
        x_max = max(x_max,x)
        y_min = min(y_min,y)
        y_max = max(y_max,y)
        
    #then we access the tags which have points and split them
    for el in mxml.xpath("//*[@points]"):
        points = el.attrib['points']
        points = points.split(" ")
        for i in range(int(len(points)/2)):
            x, y = points[2*i], points[2*i+1]
            x, y = float(x.replace(",","")), float(y)
            x_min = min(x_min,x)
            x_max = max(x_max,x)
            y_min = min(y_min,y)
            y_max = max(y_max,y)
            
    return x_min, x_max, y_min, y_max


def sch2svg(sch_fp,svg_fp):
    """ converts Kicad .sch (eeschema) to svg leveraging binaries from plotkicadsch
    requires the .lib to be in the same folder
    Paramters:
    ----------
    sch_fp: str
        full path to the Kicad schematics file
    svg_fp: str
        full path to the svg output
    Return:
    -------
    svg_fp: str
        full path to the svg file created
    Usage:
    ------
    N/A
    """
    lib_fp = sch_fp.replace(".sch","-cache.lib")
    #now test that svg is older than schematics:
    sch_is_younger = True
    if exists(svg_fp):
        if getmtime(sch_fp) < getmtime(svg_fp):
            sch_is_younger = False
    
    if sch_is_younger:
        call([plotkicadsch_fp,"-f",sch_fp,"-l",lib_fp])

    if sch_is_younger:
        with open(sch_fp.replace(".sch",".svg"),'r') as fp:
            fxml = fp.read()
        mxml = etree.fromstring(fxml)

        # REMOVE the canvas lines
        for element in mxml.xpath(".//*[not(node())]"):
            if(element.tag.find("rect"))>0:
                element.getparent().remove(element)
                
        #REMOVE the text from the canvas
        for element in mxml.xpath('//*[contains(text(),"Page:")]'):
            element.getparent().remove(element)
        
        #text in RED and GREEN changed back to black
        for el in mxml.xpath("//svg:text[@fill='#FF0000']",\
            namespaces={'svg':'http://www.w3.org/2000/svg'}):
            el.attrib["fill"]="#000000"
        for element in mxml.xpath('//svg:text[@fill="#00FF00"]',\
            namespaces={'svg':'http://www.w3.org/2000/svg'}):
            element.attrib["fill"]="#000000"
            
        #polyline in dark red to black
        for element in mxml.xpath('//svg:polyline[@stroke="#800000"]',\
            namespaces={'svg':'http://www.w3.org/2000/svg'}):
            element.attrib["stroke"]="#000000"
        
        x_min, x_max, y_min, y_max = get_svg_viewbox(mxml)
        
        
        
            
        for el in mxml.xpath("//*[@viewBox]"):
            width = (x_max - x_min) *1.2
            height = (y_max - y_min) *1.2
            el.attrib['viewBox'] = "%s %s %s %s"%(x_min-width*0.1, y_min-height*0.1, width, height)
            etree.strip_attributes(el,'width')
            etree.strip_attributes(el,'height')

        cleaned = etree.tostring(mxml, pretty_print=True, encoding = "unicode")
        with open(svg_fp,'w') as fp:
            fp.write(cleaned)
    return(svg_fp)

if __name__=="__main__":
    for root, dir, files in walk("../rsc/schematics"):
        for f in files:
            if f[-4:]==".sch":
                sch_fp = abspath(join(root,f))
                svg_fp = abspath(join("../out/svg",f.replace(".sch",".svg")))
                png_fp = abspath(join("../out/png",f.replace(".sch",".png")))
                svg_fp = sch2svg(sch_fp,svg_fp)
                png_fp = svg2png(svg_fp, png_fp)

    """
    local_folder = dirname(realpath(__file__))
    test_sch_fp = abspath(join(local_folder,"test.sch"))
    svg_fp = sch2svg(test_sch_fp)
    print("done, created: %s"%(svg_fp))
    """