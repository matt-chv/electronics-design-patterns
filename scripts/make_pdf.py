""" This module generates the pdf summary of all design patterns.

Usage:
python make_pdf.py 

"""

#import python modules
import argparse
import io
import logging    
from os.path import abspath, join, exists, pardir
from os import walk, mkdir
from re import split as re_split

#import pip
from bs4 import BeautifulSoup
import frontmatter
import markdown
import matplotlib.pyplot as plt

#import own


try:
    from mdx_mathjax import MathJaxExtension
except:
    print("module mdx_mathjax not installed")
    print("pip install python-markdown-mathjax")
from PIL import Image, ImageChops

from reportlab.lib.enums import TA_JUSTIFY
from reportlab.pdfgen import canvas
from reportlab.platypus import Paragraph
from reportlab.lib.units import mm, inch
from reportlab.lib import colors
from reportlab.lib.styles import getSampleStyleSheet,ParagraphStyle
from reportlab.lib.pagesizes import A4,A3,LETTER 

import subprocess
from titlecase import titlecase

current_dir = abspath(join(__file__,pardir))
rsc_folder = abspath(join(current_dir,"..","_posts"))
rsc_img_folder = abspath(join(current_dir,"..","out","png"))
rsc_txt_folder = abspath(join(current_dir,"..","_posts"))
template_png_folder = abspath(join(current_dir,pardir,"templates","png"))


txt_folder = "./txt"
out_folder = abspath(join(current_dir,pardir,"out"))
png_folder = abspath(join(out_folder,"png"))
pdf_folder = abspath(join(out_folder,"pdf"))
eq_folder = abspath(join(out_folder,"equations"))

#american card size
us_card_size = (2.72 * inch, 3.7 *inch) #ratio = 1.36
eu_card_size = card_size = (64*mm,89*mm)

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


def electronics_title(title_to_be_styled):
    titlelised = titlecase(title_to_be_styled)
    
    abbreviations = ["AMR", "BJT","CMOS","FET", "LC", "LED", "LPF", "LVDT", "MOSFET",\
                      "NPN","ORP", "PNP","pH","PV","PZT", "RTD", "RC", "SR", "TEG"]
    for abb in abbreviations:
        titlelised = titlelised.replace(abb.lower(),abb)
        titlelised = titlelised.replace(abb.title(),abb)    
    return titlelised
    

def compile_rsc_to_png():
    # remove and call sch2svg
    raise Exception("remove this function call")
    """ will convert all sources into png files
    .sch files will be converted by scripting Eagle
    .svg files will be converted by scripting Inkscape
    """
    
    ressources = []
    for path, folders, rsc_files in walk(rsc_img_folder):
        for rsc in rsc_files:
            ressources.append(abspath(join(path, rsc)))# = [abspath(join(sch)) for sch in sch_files]

    
    for rsc in ressources:
        png_full_path = rsc.replace(".sch",".png").replace(".svg",".png").replace(rsc_img_folder,png_folder).replace("signal_chain\\","").\
            replace("digital\\","").replace("power\\","").replace("transducers\\","")
        if exists(png_full_path):
            #TODO: add here a timestamp comparison
            pass
        else:
            #create the png file
            try:
                if rsc.find(".sch")>=0:
                    script = "export image %s 600; quit;"%(png_full_path)
                    res = subprocess.check_output(["D:/tools/EAGLE 9.2.2/eagle.exe",\
                                               rsc,"-C", script])
                elif rsc.find(".svg")>=0:
                    res = subprocess.check_output(["D:/tools/Inkscape/inkscape.exe","-z",\
                                               rsc,"-e", png_full_path])
            except:
                logging.error("error compiling graphic ressources to png for %s\n%s"%(rsc))
            

def draw_card(c, card_size,card_background_path, \
              x0=0,y0=0,\
                  schematics_image_path=None, card_title=None,\
                  design_pattern_description=None, design_pattern_index=None,\
                   design_pattern_count=None):
    """ This draws with the reportlab module the card on the canvas (the pdf page) passed in paramter
    c: reportlab canvas
        the pdf page where the card is being drawn
    card_size: (int,int)
        the size in canvas pixels of the card being drawn
    card_output_path: str (deprecated)
    card_background_path: str
        the path to the background image to be added for the card
    x0: int
        the offset in the x axis where to draw the card onto the canvas
    y0: int
        the offset in the y axis where to draw the card onto the canvas
    card_title: str
        the title of the card (name of the design pattern)
    design_pattern_description: str
        the description of the design pattern
    design_pattern_index: str
        as of today a str of an int - future proof with string to show suits
    design_pattern_count: str
        as of today a str of an int - future proof (see above)
    """
#     card_size = A4
#     card_size = (64*mm,89*mm)
    card_width = card_size[0]
    card_height = card_size[1]
    schematics_image = schematics_image_path
#     schematics_title = "CMOS Inverter"
#     schematics_title = card_title
#     design_pattern_index = "13"
#     design_pattern_count = "32"

#     c = canvas.Canvas(card_output_path, pagesize=card_size)
    #add image background, needs to be done first as otherwise covers the text
    logger.info(f"drawing at {x0},{y0}")
    print(f"drawing at {x0},{y0}")
    c.drawImage(card_background_path, x0+0, y0+0, width = card_width, height=card_height, \
                mask='auto',showBoundary=False) 
    
    if not design_pattern_description is None:
        ptext = design_pattern_description
        
        md = markdown.Markdown(extensions=[MathJaxExtension()])
        
        #print(f"172--{ptext}--")
        #ptext = "# hello \n hellow world"
        try:
            htm = md.convert(re_split("---\n|----\n",ptext)[0])
        except:
            print(f"error for {card_title}")
            res = len(re_split("---\n|----\n",ptext))
            print(f"len {res}")
            print("first lines",ptext[0:20])
            print(re_split("---\n|----\n",ptext))
            raise
        soup = BeautifulSoup(htm,'html.parser')
        equations = []
        for script_tag in soup.find_all('script'):
            res = script_tag.string
            equations.append(res)
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
            logger.info(f"making equation {card_title}")
            equation = "$%s$"%(equations[0])
            eq_full_path = abspath(join(".","out","equations","%s_equation.png"%(card_title)))

            latex_to_img(equation,eq_full_path)
            eq_height = card_height*3/8.-p.height-5*mm
            print(f"equation heights: {eq_height}")
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
    if not design_pattern_index is None:
        c.drawString(x0+card_width/3.,y0+5*mm,design_pattern_index)
    if not design_pattern_count is None:
        c.drawString(x0+card_width*1/2.+1*mm,y0+5*mm,design_pattern_count)
    if not card_title is None:
        c.drawString(x0+5*mm,y0+card_height*7/8.,card_title)
    

def link_png_txt_to_pdf(cards_rendering="standard sheet",card_deck_layout=A4,\
                        naming_convention="named", NCARD=52, card_size = (64*mm,89*mm)):
    """ generates the pdf from:
    a. the different resources in the resource folder
    b. the associated text description (names must match 100%)
    c. color card (based on folder hierarchy)
    
    
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
    logger = logging.getLogger('edp')
    logger.debug("image folder: %s"%(rsc_img_folder))
    logger.debug("text folder: %s"%(rsc_txt_folder))
    
    assert cards_rendering in ["single sheet", "standard sheet", "one a sheet","one a pdf"]
    creating_deck = False
    
    #count cards
    total_cards_count = 0
<<<<<<< HEAD
<<<<<<< HEAD
    # sheet_n_card_width is the number of card side by side on one sheet
    sheet_n_card_width = 1 # Type: int
=======
>>>>>>> e2aa394... kicad v0.1 first pass generation pdf from kicad schematics still fail one sheet generation
=======
    # sheet_n_card_width is the number of card side by side on one sheet
    sheet_n_card_width = 1 # Type: int
>>>>>>> 4ed3408... kicad v0.2 first successful generation of single_sheet overview
    
    schematics_posts = {}
    edp_cat = {}
    edp_descr = {}
    #we now proces the _posts folder to build a dic of posts 
    #whose key is the title and value the path
    #for this we leverage the python module frontmatter
    for _, _, posts in walk(rsc_txt_folder):
        for post in posts:
            try:
                post_text = None
                post_text = frontmatter.load(join(rsc_txt_folder,post))
                schematics_posts[post_text["title"].lower()]=join(rsc_txt_folder,post)
                edp_cat[post_text["title"].lower()]=post_text["categories"]
                edp_descr[post_text["title"].lower()]=post_text.content
            except:
                print(f"error for {post}")
                print(f"post text: {post_text}")
                raise
    
    #now we count how many images have a matching post with markdown description
    #this `total_cards_count` is needed for the index of the card when we draw them
    for path, _, img_files in walk(rsc_img_folder):
        for sch in img_files:
            #assert that the text file exists
            #text_full_path = abspath(join(rsc_txt_folder,sch.replace(".sch",".md")))
            
            png_file = sch
            if png_file.replace(".png","").lower() in schematics_posts:
                total_cards_count+=1
            else:
                text_full_path = abspath(join(rsc_txt_folder,sch.replace(".svg",".md")))
                if exists(text_full_path):
                    total_cards_count+=1
                else:
                    raise Exception(" visual without description: %s"%(sch))
    
<<<<<<< HEAD
<<<<<<< HEAD
    # card_count is the index of the current card in the deck
    card_count = 0 # Type: int
    logger.debug("starting to draw the pdf output")

    """ GENERATE PDF """

    #now we walk the folder and collect all info then draw the card on pdf as per
    #the selected pdf output format
    for path, _, img_files in walk(rsc_img_folder):
        #img_files = ["Capacitance Multiplier.png"]
        for img_fn in img_files: # Type: str
            card_count+=1
=======
    card_count = 0
=======
    # card_count is the index of the current card in the deck
    card_count = 0 # Type: int
>>>>>>> 4ed3408... kicad v0.2 first successful generation of single_sheet overview
    logger.debug("starting to draw the pdf output")

    """ GENERATE PDF """

    #now we walk the folder and collect all info then draw the card on pdf as per
    #the selected pdf output format
    for path, _, img_files in walk(rsc_img_folder):
        #img_files = ["Capacitance Multiplier.png"]
        for img_fn in img_files: # Type: str
<<<<<<< HEAD
>>>>>>> e2aa394... kicad v0.1 first pass generation pdf from kicad schematics still fail one sheet generation
=======
            card_count+=1
>>>>>>> 4ed3408... kicad v0.2 first successful generation of single_sheet overview
            logger.debug(img_fn)
            #assert that the text file exists
            design_pattern = img_fn.lower().replace(".png","")
            if not design_pattern in schematics_posts:
                print("missing text %s "%(design_pattern))
                raise Exception("missing")
                    
            
            #assert that the image file exists
            png_full_path = abspath(join(png_folder,img_fn))
            if not exists(png_full_path):
                png_full_path = abspath(join(png_folder,sch.replace(".svg",".png")))
                if not exists(png_full_path):
                    raise Exception("missing: %s for %s"%(png_full_path,sch))
                
            #select the background image based on the folder where the design pattern is located
            card_background_path = None
<<<<<<< HEAD
<<<<<<< HEAD
            for suit in ["signal_chain","power","logic","transducer"]:
=======
            for suit in ["signal-chain","power","digital","transducers"]:
>>>>>>> e2aa394... kicad v0.1 first pass generation pdf from kicad schematics still fail one sheet generation
=======
            for suit in ["signal_chain","power","logic","transducer"]:
>>>>>>> 4ed3408... kicad v0.2 first successful generation of single_sheet overview
                if edp_cat[design_pattern]==suit:
                    card_background_path = abspath(join(template_png_folder,"%s_front.png"%(suit)))
            if card_background_path is None:
                logging.error(f"did not find existing suit for {img_fn}")
                raise Exception("value Error for categories")
            #select the text description
            #with open(text_full_path,'r') as fb:
            #    design_pattern_description = fb.read()
            #card_title = sch.replace("_"," ").replace(".sch","").replace(".svg","").title()
            card_title = design_pattern
            design_pattern_description = edp_descr[design_pattern]

            #if we have a single pdf file per card, create names for the front
            card_output_path = abspath(join(pdf_folder,card_title+"_front.pdf"))
            """
            if img_fn.find(".sch")>=0:
                card_output_path = abspath(join(pdf_folder,sch.replace(".sch","_front.pdf")))
            elif img_fn.find(".svg")>=0:
                card_output_path = abspath(join(pdf_folder,sch.replace(".svg","_front.pdf")))
            else:
                raise Exception("Unsupported visual format")
            """
            
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
<<<<<<< HEAD
<<<<<<< HEAD

                if (card_count == 1):
=======
                if (card_count == 0):
>>>>>>> e2aa394... kicad v0.1 first pass generation pdf from kicad schematics still fail one sheet generation
=======

                if (card_count == 1):
>>>>>>> 4ed3408... kicad v0.2 first successful generation of single_sheet overview
                    if cards_rendering=="single sheet":
                        sheet_n_card_width = int(total_cards_count**0.5)+1
                        sheet_n_card_height = int(total_cards_count/sheet_n_card_width )+1
                        card_deck_layout = (card_size[0]*sheet_n_card_width, card_size[1]*sheet_n_card_height)
                        card_output_path= abspath(join(pdf_folder,"card_deck_single_sheet.pdf"))                       
                        card_canva = canvas.Canvas(card_output_path, pagesize=(card_size[0]*sheet_n_card_width,card_size[1]*sheet_n_card_height))
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

                
                styled_title = electronics_title(card_title)
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 4ed3408... kicad v0.2 first successful generation of single_sheet overview
                logger.info(f"adding card: {styled_title} at {x0_card},{y0_card} from {png_full_path}")
                print(f"sheet width {sheet_n_card_width} ")
                draw_card(c = card_canva,card_size=card_size,\
                    card_background_path=card_background_path,\
                    x0=x0_card,y0=y0_card,\
                    schematics_image_path=png_full_path, card_title=styled_title,\
                    design_pattern_description= design_pattern_description,
                    design_pattern_index=str(card_count), design_pattern_count=str(total_cards_count))
<<<<<<< HEAD
=======
                logging.info("adding card: %s"%(styled_title))
                draw_card(c = card_canva,card_size=card_size, card_output_path=card_output_path,\
                     card_background_path=card_background_path,\
                          x0=x0_card,y0=y0_card,\
                                schematics_image_path=png_full_path, card_title=styled_title,\
                                design_pattern_description= design_pattern_description,
                               design_pattern_index=str(card_count), design_pattern_count=str(total_cards_count))
>>>>>>> e2aa394... kicad v0.1 first pass generation pdf from kicad schematics still fail one sheet generation
=======
>>>>>>> 4ed3408... kicad v0.2 first successful generation of single_sheet overview
                

                if cards_rendering in ["single sheet","standard sheet" ]:
                    #assess if we need to add a new page
                    #if the x and y index is the max for the page
                    #call "showPage" which will add a new page of the pdf file
                    if (card_index % sheet_n_card_width == sheet_n_card_width-1) &  \
                        (int(( card_index  % (sheet_n_card_width*sheet_n_card_height)) /sheet_n_card_width) == sheet_n_card_height-1):
                        print("adding page")
                        card_canva.showPage()
                else:
                    card_canva.showPage()
                    card_canva.save()
                if card_count==2000:
                    draw_card(c = card_canva,card_size=card_size,\
                    card_background_path=card_background_path,\
                    x0=x0_card+card_size[0],y0=y0_card,\
                    schematics_image_path=png_full_path, card_title=styled_title,\
                    design_pattern_description= design_pattern_description,
                    design_pattern_index=str(card_count), design_pattern_count=str(total_cards_count))
                    card_canva.save()
                    #exit()
                    
                logging.debug("added %s"%(card_title))
    

    #we have added all the cards from the deck on the pdf, save to file now
    if (cards_rendering in ["single sheet","standard sheet" ]):
        if creating_deck:
            card_canva.save()
            print(f"created deck at: {card_output_path}")
        else:
            logging.info("card deck already existing - not updated")


#             draw_card(card_size, card_output_path, card_background_path,\
#                                schematics_image_path, card_title, design_pattern_description,
#                                str(card_count+i), str(total_cards_count))
#             #make back
#             draw_card(card_size, card_output_path.replace("front","back"), card_background_path.replace("front","back"))

def make_card_deck(**kwargs):
    """
    Usage:
    ------
    #make a single sheet with all cards:
    make_card_deck(cards_rendering="single sheet", NCARD=34)
    #make a pdf file with standard size paper sheet
    make_card_deck(cards_rendering="standard sheet", naming_convention="named", NCARD=34)
    #make one pdf file for each card
    make_card_deck(cards_rendering="one a sheet", naming_convention="named",card_deck_layout=None, NCARD=34)
    """
    #compile ressources
    #compile_rsc_to_png()
    
    #link all ressources into final pdf
    #link_png_txt_to_pdf(cards_rendering=kwargs.get('pdf_layout'))
    
    #make a single sheet with all cards:
    link_png_txt_to_pdf(cards_rendering="single sheet", NCARD=34)
    
    #make a pdf file with standard size paper sheet
    #link_png_txt_to_pdf(cards_rendering="standard sheet", naming_convention="named", NCARD=34)
    #make one pdf file for each card
    link_png_txt_to_pdf(cards_rendering="one a sheet", naming_convention="named",card_deck_layout=None, NCARD=34)


if __name__=="__main__":
    # create logger with 'spam_application'
    logger = logging.getLogger('edp')
    logger.setLevel(logging.DEBUG) #DEBUG)INFO
    # create file handler which logs even debug messages
    fh = logging.FileHandler('edp_logs.log')
    fh.setLevel(logging.DEBUG)
    # create console handler with a higher log level
    ch = logging.StreamHandler()
    ch.setLevel(logging.DEBUG)
    # create formatter and add it to the handlers
    formatter = logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s')
    fh.setFormatter(formatter)
    ch.setFormatter(formatter)
    # add the handlers to the logger
    logger.addHandler(fh)
    logger.addHandler(ch)


    parser = argparse.ArgumentParser(description='Generate Card Deck with Electronics Design Pattern on each card')
    parser.add_argument('--pdf_layout', metavar='pdf layout',default="single sheet",
                        choices=['single sheet','standard sheet','one a sheet'], type=str,
                        help='final pdf layout (default: single sheet)')
    parser.add_argument('--pdf_size', metavar='pdf size',default="A4",
                        choices=['A4','A3','LETTER'], type=str,\
                        help = 'only needed if pdf layout set to standard sheet')
    parser.add_argument('--card_size', metavar='card size',default="eu",
                        choices=['eu','us'], type=str,\
                        help = 'sets the size of each card in the deck')
    
    if not exists(out_folder):
        mkdir(out_folder)
    if not exists(png_folder):
        mkdir(png_folder)
    if not exists(pdf_folder):
        mkdir(pdf_folder)
    if not exists(eq_folder):
        mkdir(eq_folder)
    args = parser.parse_args()
    make_card_deck(**vars(args))

    print("done")