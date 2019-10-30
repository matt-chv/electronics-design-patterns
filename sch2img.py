#Convert .sch (Kicad eeschema) schematics to svg and png
# svg generation done thanks to plotkicadsch
# png generation from svg done with pillow

#d:\tools\Git\bin\plotkicadsch.exe -f test_blank.sch -l test_blank-cache.lib

from lxml import etree
from os.path import abspath, join
from subprocess import call

plotkicadsch_fp = abspath(join(".","bin","plotkicadsch.exe"))

def sch2svg(sch_fp):
	""" converts Kicad .sch (eeschema) to svg leveraging binaries from plotkicadsch
	Paramters:
	----------
	sch_fp: str
		full path to the schematics file
	Return:
	-------
	svg_fp: str
		full path to the svg file created
	Usage:
	------
	N/A
	"""
	svg_fp = sch_fp.replace(".sch","_cleaned.svg") #str
	
	call([plotkicadsch_fp,"-f",sch_fp,"-l","test-cache.lib"])
	
	with open(sch_fp.replace(".sch",".svg"),'r') as fp:
		fxml = fp.read()
	mxml = etree.fromstring(fxml)

	# REMOVE the canvas lines
	for element in mxml.xpath(".//*[not(node())]"):
		if(element.tag.find("rect"))>0:
			element.getparent().remove(element)
			
	#REMOVE the text from the canvas
	for element in mxml.xpath('//*[contains(text(),"Page:")]'):
		print(element)
		element.getparent().remove(element)
	#Rescale the viewbox
	#TODO
		
	cleaned = etree.tostring(mxml, pretty_print=True, encoding = "unicode")
	with open(svg_fp,'w') as fp:
		fp.write(cleaned)
	return(svg_fp)

if __name__=="__main__":
	test_sch_fp = abspath(join(local_folder,"test.sch"))
	svg_fp = sch2svg(test_sch_fp)
	print("done, created: %s"%(svg_fp))
