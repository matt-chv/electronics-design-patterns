from bs4 import BeautifulSoup


from os.path import abspath, join, exists
from os import walk, mkdir

import logging

import markdown
try:
    from mdx_mathjax import MathJaxExtension
except:
    print("module mdx_mathjax not installed")
    print("pip install python-markdown-mathjax")

from reportlab.lib.enums import TA_JUSTIFY
from reportlab.pdfgen import canvas
from reportlab.platypus import Paragraph
from reportlab.lib.units import mm, inch
from reportlab.lib import colors
from reportlab.lib.styles import getSampleStyleSheet,ParagraphStyle

import subprocess

current_dir = abspath(join(__file__,".."))
rsc_folder = abspath(join(current_dir,"rsc"))
rsc_img_folder = abspath(join(rsc_folder,"images"))
rsc_txt_folder = abspath(join(rsc_folder,"txt"))
template_png_folder = abspath(join(current_dir,"templates","png"))


txt_folder = "./txt"
out_folder = abspath(join(current_dir,"out"))
png_folder = abspath(join(out_folder,"png"))
pdf_folder = abspath(join(out_folder,"pdf"))
eq_folder = abspath(join(out_folder,"equations"))

import matplotlib.pyplot as plt
import io
from PIL import Image, ImageChops

white = (255, 255, 255, 255)

def latex_to_img(tex,save_path):
    if exists(save_path):
        #fixme if more recent
        pass
    else:
        buf = io.BytesIO()
        plt.rc('text', usetex=True)
        plt.rc('font', family='serif')
        plt.axis('off')
        plt.text(0.05, 0.5, f'${tex}$', size=40)
        plt.savefig(buf, format='png')
        plt.close()
    
        im = Image.open(buf)
        bg = Image.new(im.mode, im.size, white)
        diff = ImageChops.difference(im, bg)
        diff = ImageChops.add(diff, diff, 2.0, -100)
        bbox = diff.getbbox()
        im.crop(bbox).save(save_path)
    return


def src_to_png():
    """ will convert all sources into png files
    .sch files will be converted by scripting Eagle
    .svg ...
    """
    
    schematics = []
    for path, folders, sch_files in walk(rsc_img_folder):
        for sch in sch_files:
            print(sch)
            schematics.append(abspath(join(path, sch)))# = [abspath(join(sch)) for sch in sch_files]

    
    for sch in schematics:
        png_full_path = sch.replace(".sch",".png").replace(rsc_img_folder,png_folder).replace("signal chain\\","").\
            replace("digital_b\\","").replace("power_v\\","")
        script = "export image %s 600; quit;"%(png_full_path)
        if exists(png_full_path):
            #TODO: add here a timestamp comparison
            pass
        else:
            #create the png file
            try:
                res = subprocess.check_output(["D:/tools/EAGLE 9.2.2/eagle.exe",\
                                       sch,"-C", script])
            except:
                print("error for %s\n%s"%(sch, script))
            print(script)
            

def make_pdf_card(card_size, card_output_path, card_background_path, \
                  schematics_image_path=None, card_title=None,\
                  design_pattern_description=None, schematics_index=None, schematics_count=None):
#     card_size = A4
#     card_size = (64*mm,89*mm)
    card_width = card_size[0]
    card_height = card_size[1]
    schematics_image = schematics_image_path
#     schematics_title = "CMOS Inverter"
#     schematics_title = card_title
#     schematics_index = "13"
#     schematics_count = "32"

    c = canvas.Canvas(card_output_path, pagesize=card_size)
    #add image background, needs to be done first as otherwise covers the text
    c.drawImage(card_background_path, 0, 0, width = card_width, height=card_height, \
                mask='auto',showBoundary=False) 
    
    if not design_pattern_description is None:
        ptext = design_pattern_description
        
        md = markdown.Markdown(extensions=[MathJaxExtension()])
        
        htm = md.convert(ptext)
        soup = BeautifulSoup(htm,'html.parser')
        equations = [s.extract() for s in soup('script')]
        style_description = ParagraphStyle(name='card_description',
                                      fontSize=5,
                                      leading=8,
                                      alignment=TA_JUSTIFY,
                                    borderColor=colors.HexColor('#0000ff'))
        ptext = soup.get_text()
        p = Paragraph(ptext, style=style_description)
        p.wrapOn(c, card_width-12*mm, 50*mm)  # size of 'textbox' for linebreaks etc.
#         p._showBoundary=True #keep for debug
        if p.height>card_height*3/8.:
            raise Exception("Description for: %s, too big"%(card_title))
        p.drawOn(c, 6*mm, card_height/2.-5*mm-p.height)    # position of text / where to draw
        
        if len(equations)==1:
            equation = "$%s$"%(equations[0].get_text())
            eq_full_path = abspath(join(".","out","equations","%s_equation.png"%(card_title)))
            latex_to_img(equation,eq_full_path)
            print(eq_full_path)
            eq_height = card_height*3/8.-p.height-5*mm
            print(eq_height, p.height, card_height/2., card_height/2.-p.height)
            #to make it transparent add mask =[255,255,255,255,255,255]
            c.drawImage(eq_full_path, 6*mm, card_height/2.-5*mm-p.height-eq_height,\
                        width = card_width*3/4., height=eq_height,preserveAspectRatio=True)#, width = card_width, height=card_height) 
            print("added equation")
        elif len(equations)>1:
            raise Exception("Too many equations in %s, not supported yet"%(card_title))
    
    if not schematics_image is None:
        #add schematics image
        c.drawImage(schematics_image, 6*mm, card_height/2., width = card_width*3/4., height=card_height/3.,\
                    mask='auto',showBoundary=False,preserveAspectRatio=True)
    
    #add schematics info
    if not schematics_index is None:
        c.drawString(card_width/3.,5*mm,schematics_index)
    if not schematics_count is None:
        c.drawString(card_width*1/2.+1*mm,5*mm,schematics_count)
    if not card_title is None:
        c.drawString(5*mm,card_height*7/8.,card_title)
    
    
    c.showPage()
    c.save()
    logging.info(card_output_path, "done")

def make_card_deck(naming_convention="named", NCARD=52):
    """ generates the pdf from:
    a. the different schematics in the schematics folder
    b. the associated text description (names must match 100%
    c. color card (based on folder hierarchy
    Parameters:
    -----------
    naming_convention: str
        named = output file will be the design pattern name.pdf
        indexed = output file will be integer indexed
    NCARD: int
        minimum number of cards in the deck
    """
    card_size = (64*mm,89*mm) #ratio = 1.39
    
    #count cards
    total_cards_count = 0
    for path, _, sch_files in walk(rsc_img_folder):
        for sch in sch_files:
            #assert that the text file exists
            text_full_path = abspath(join(rsc_txt_folder,sch.replace(".sch",".md")))
            if exists(text_full_path):
                total_cards_count+=1
            else:
                text_full_path = abspath(join(rsc_txt_folder,sch.replace(".svg",".md")))
                if exists(text_full_path):
                    total_cards_count+=1
                else:
                    raise Exception(" visual without description: %s"%(sch))
    
    card_count = 0
    for path, _, sch_files in walk(rsc_img_folder):
        for sch in sch_files:
            #assert that the text file exists
            text_full_path = abspath(join(rsc_txt_folder,sch.replace(".sch",".md")))
            if not exists(text_full_path):
                text_full_path = abspath(join(rsc_txt_folder,sch.replace(".svg",".md")))
                if not exists(text_full_path):
                    print("missing %s "%(text_full_path))
                    raise Exception("missing")
                    
            
            #assert that the image file exists
            png_full_path = abspath(join(png_folder,sch.replace(".sch",".png")))
            if not exists(png_full_path):
                png_full_path = abspath(join(png_folder,sch.replace(".svg",".png")))
                if not exists(png_full_path):
                    raise Exception("missing: %s for %s"%(png_full_path,sch))
            for suit in ["signal_chain","power","digital","transducers"]:
                if path.find(suit)>=0:
                    card_background_path = abspath(join(template_png_folder,"%s_front.png"%(suit)))
#             if path.find("signal_chain")>=0:
#                 card_background_path="./src/static/gold_front.png"
#             elif path.find("power")>=0:
#                 card_background_path="./src/static/green_front.png"
#             elif path.find("digital")>=0:
#                 card_background_path=abspath(join(template_png_folder,"blue_front_digital.png"))
# #             print("%s - %s"%(png_full_path,card_background_path))
            
            with open(text_full_path,'r') as fb:
                design_pattern_description = fb.read()
            card_title = sch.replace("_"," ").replace(".sch","").replace(".svg","").title()
#             print(design_pattern_description)
            if sch.find(".sch")>=0:
                card_output_path = abspath(join(pdf_folder,sch.replace(".sch","_front.pdf")))
            elif sch.find(".svg")>=0:
                card_output_path = abspath(join(pdf_folder,sch.replace(".svg","_front.pdf")))
            else:
                raise Exception("Unsupported visual format")
            schematics_image_path = png_full_path
            
            card_count+=1
            if naming_convention == "indexed":
                card_output_path=abspath(join(pdf_folder,"indexed","front","%s.pdf"%(card_count)))
                card_size = (2.72 * inch, 3.7 *inch) #ratio = 1.36
                
            if exists(card_output_path):
                #fixme: need to compare timestamps
                pass
            else:
                #make front
                make_pdf_card(card_size, card_output_path, card_background_path,\
                               schematics_image_path, card_title, design_pattern_description,
                               str(card_count), str(total_cards_count))
                #make back
                make_pdf_card(card_size, card_output_path.replace("front","back"), card_background_path.replace("front","back"))
                
                logging.debug("made %s"%(card_title))
    if card_count<NCARD:
        for i in range(NCARD-card_count+1):
            if naming_convention == "indexed":
                card_output_path=abspath(join(pdf_folder,"indexed","front","%s.pdf"%(card_count+i)))

            make_pdf_card(card_size, card_output_path, card_background_path,\
                               schematics_image_path, card_title, design_pattern_description,
                               str(card_count+i), str(total_cards_count))
            #make back
            make_pdf_card(card_size, card_output_path.replace("front","back"), card_background_path.replace("front","back"))
            

if __name__=="__main__":
    if not exists(out_folder):
        mkdir(out_folder)
    if not exists(png_folder):
        mkdir(png_folder)
    if not exists(pdf_folder):
        mkdir(pdf_folder)
    if not exists(eq_folder):
        mkdir(eq_folder)

#     src_to_png()
#     exit()
#     make_card_deck(naming_convention="indexed", NCARD=36)
    make_card_deck(naming_convention="named", NCARD=36)
    print("start")
#     latex_to_img(r'\frac{x}{y^2}').save('img.png')

    print("done")