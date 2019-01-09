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
from reportlab.lib.pagesizes import A4,A3

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
            

def draw_card(c, card_size, card_output_path, card_background_path, \
              x0=0,y0=0,\
                  schematics_image_path=None, card_title=None,\
                  design_pattern_description=None, schematics_index=None,\
                   schematics_count=None):
#     card_size = A4
#     card_size = (64*mm,89*mm)
    card_width = card_size[0]
    card_height = card_size[1]
    schematics_image = schematics_image_path
#     schematics_title = "CMOS Inverter"
#     schematics_title = card_title
#     schematics_index = "13"
#     schematics_count = "32"

#     c = canvas.Canvas(card_output_path, pagesize=card_size)
    #add image background, needs to be done first as otherwise covers the text
    c.drawImage(card_background_path, x0+0, y0+0, width = card_width, height=card_height, \
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
        p.drawOn(c, x0+6*mm, y0+card_height/2.-5*mm-p.height)    # position of text / where to draw
        
        if len(equations)==1:
            equation = "$%s$"%(equations[0].get_text())
            eq_full_path = abspath(join(".","out","equations","%s_equation.png"%(card_title)))
            latex_to_img(equation,eq_full_path)
            eq_height = card_height*3/8.-p.height-5*mm
            #to make it transparent add mask =[255,255,255,255,255,255]
            c.drawImage(eq_full_path, x0+6*mm, y0+card_height/2.-5*mm-p.height-eq_height,\
                        width = card_width*3/4., height=eq_height,preserveAspectRatio=True)#, width = card_width, height=card_height) 
        elif len(equations)>1:
            raise Exception("Too many equations in %s, not supported yet"%(card_title))
    
    if not schematics_image is None:
        #add schematics image
        c.drawImage(schematics_image, x0+6*mm, y0+card_height/2., width = card_width*3/4., height=card_height/3.,\
                    mask='auto',showBoundary=False,preserveAspectRatio=True)
    
    #add schematics info
    if not schematics_index is None:
        c.drawString(x0+card_width/3.,y0+5*mm,schematics_index)
    if not schematics_count is None:
        c.drawString(x0+card_width*1/2.+1*mm,y0+5*mm,schematics_count)
    if not card_title is None:
        c.drawString(x0+5*mm,y0+card_height*7/8.,card_title)
    
    
#     c.showPage()
#     c.save()
    logging.info(card_output_path, "done")

def make_card_deck(cards_rendering="standard sheet",card_deck_layout=A4,naming_convention="named", NCARD=52, card_size = (64*mm,89*mm)):
    """ generates the pdf from:
    a. the different schematics in the schematics folder
    b. the associated text description (names must match 100%)
    c. color card (based on folder hierarchy)
    
    Usage:
    ------
    #make a single sheet with all cards:
    make_card_deck(cards_rendering="single sheet", NCARD=34)
    #make a pdf file with standard size paper sheet
    make_card_deck(cards_rendering="standard sheet", naming_convention="named", NCARD=34)
    #make one pdf file for each card
    make_card_deck(cards_rendering="one a sheet", naming_convention="named",card_deck_layout=None, NCARD=34)
    
    Parameters:
    -----------
    cards_rendering: str
        "single sheet": all cards on one page
        "standard sheet": print as many as possible on a standard sheet size (uses sheet_layout)
        "one a sheet": all cards on individual page
        "one a pdf": all cards in individual pdf
    sheet_layout: (width, height)
        reportlab pdf page size, reportlab pagesizes
    naming_convention: str
        named = output file will be the design pattern name.pdf
        indexed = output file will be integer indexed
    NCARD: int
        minimum number of cards in the deck, used when printing services need more cards than available in deck
    Return:
    -------
    None
    """
    #ratio = 1.39
    
    assert cards_rendering in ["single sheet", "standard sheet", "one a sheet","one a pdf"]
    creating_deck = False
    
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
                
            #select the background image based on the folder where the design pattern is located
            for suit in ["signal_chain","power","digital","transducers"]:
                if path.find(suit)>=0:
                    card_background_path = abspath(join(template_png_folder,"%s_front.png"%(suit)))
            
            #select the text description
            with open(text_full_path,'r') as fb:
                design_pattern_description = fb.read()
            card_title = sch.replace("_"," ").replace(".sch","").replace(".svg","").title()

            #if we have a single pdf file per card, create names for the front
            if sch.find(".sch")>=0:
                card_output_path = abspath(join(pdf_folder,sch.replace(".sch","_front.pdf")))
            elif sch.find(".svg")>=0:
                card_output_path = abspath(join(pdf_folder,sch.replace(".svg","_front.pdf")))
            else:
                raise Exception("Unsupported visual format")
            
            card_count+=1
            if naming_convention == "indexed":
                #if the desired output is one pdf per card (front and back) then overwrite the card name
                card_output_path=abspath(join(pdf_folder,"indexed","front","%s.pdf"%(card_count)))
            if cards_rendering=="single sheet":
                card_output_path= abspath(join(pdf_folder,"card_deck_single_sheet.pdf")) 
            elif cards_rendering== "standard sheet":
                card_output_path= abspath(join(pdf_folder,"card_deck_DIN_size.pdf"))      
                
            if exists(card_output_path):
                #FIXME: here need to check if pdf is more recent than the sources, if not need to overwrite the pdf
                pass
            else:
                creating_deck = True
                #make front
                if (card_count == 1):
                    if cards_rendering=="single sheet":
                        sheet_n_card_width = int(total_cards_count**0.5)+1
                        sheet_n_card_height = int(total_cards_count/sheet_n_card_width )+1
                        card_deck_layout = (card_size[0]*sheet_n_card_width, card_size[1]*sheet_n_card_height)
                        card_output_path= abspath(join(pdf_folder,"card_deck_single_sheet.pdf"))                       
                        card_canva = canvas.Canvas(card_output_path, pagesize=(card_size[0]*sheet_n_card_width,card_size[1]*sheet_n_card_height))
                        print(card_output_path)
                    elif cards_rendering== "standard sheet":
                        sheet_n_card_width = int(card_deck_layout[0]/card_size[0])
                        sheet_n_card_height = int(card_deck_layout[1]/card_size[1])
                        card_output_path= abspath(join(pdf_folder,"card_deck_DIN_size.pdf"))
                        card_canva = canvas.Canvas(card_output_path, pagesize=card_deck_layout)
                    elif cards_rendering in ["one a sheet"]:
                        #nothing to do here
                        pass
                    else:
                        raise Exception(" Unknown card rendering value: %s"%(cards_rendering))
                    

                #if we have multiple cards on one pdf page, compute relative coordinates
                if cards_rendering in ["single sheet","standard sheet" ]:
                    card_index = card_count-1
                    x0_card= card_size[0]*(card_index % sheet_n_card_width)
                    y0_card= card_size[1]*(int(( card_index  % (sheet_n_card_width*sheet_n_card_height)) /sheet_n_card_width))
                else:
                    card_canva = canvas.Canvas(card_output_path, pagesize=(card_size[0],card_size[1]))
                    x0_card = 0
                    y0_card = 0

                    
                draw_card(c = card_canva,card_size=card_size, card_output_path=card_output_path, card_background_path=card_background_path,\
                          x0=x0_card,y0=y0_card,\
                                schematics_image_path=png_full_path, card_title=card_title,\
                                design_pattern_description= design_pattern_description,
                               schematics_index=str(card_count), schematics_count=str(total_cards_count))
                

                if cards_rendering in ["single sheet","standard sheet" ]:
                    #assess if we need to add a new page
                    #if the x and y index is the max for the page
                    #call "showPage" which will add a new page of the pdf file
                    if (card_index % sheet_n_card_width == sheet_n_card_width-1) &  \
                        (int(( card_index  % (sheet_n_card_width*sheet_n_card_height)) /sheet_n_card_width) == sheet_n_card_height-1):
                        card_canva.showPage()
                else:
                    card_canva.showPage()
                    card_canva.save()
                    
                logging.debug("added %s"%(card_title))
    
    #we have added all the cards from the deck on the pdf, save to file now
    if (cards_rendering in ["single sheet","standard sheet" ]) & \
        creating_deck:
        card_canva.save()


#             draw_card(card_size, card_output_path, card_background_path,\
#                                schematics_image_path, card_title, design_pattern_description,
#                                str(card_count+i), str(total_cards_count))
#             #make back
#             draw_card(card_size, card_output_path.replace("front","back"), card_background_path.replace("front","back"))

if __name__=="__main__":
    if not exists(out_folder):
        mkdir(out_folder)
    if not exists(png_folder):
        mkdir(png_folder)
    if not exists(pdf_folder):
        mkdir(pdf_folder)
    if not exists(eq_folder):
        mkdir(eq_folder)

    #american card size
    us_card_size = (2.72 * inch, 3.7 *inch) #ratio = 1.36
    eu_card_size = card_size = (64*mm,89*mm)
    print("start")
    #make a single sheet with all cards:
    make_card_deck(cards_rendering="single sheet", NCARD=34)
    #make a pdf file with standard size paper sheet
    make_card_deck(cards_rendering="standard sheet", naming_convention="named", NCARD=34)
    #make one pdf file for each card
    make_card_deck(cards_rendering="one a sheet", naming_convention="named",card_deck_layout=None, NCARD=34)

    print("done")