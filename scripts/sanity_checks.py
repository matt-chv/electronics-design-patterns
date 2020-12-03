#import python modules
from re import split as re_split
from os import walk
from os.path import abspath, pardir, join

#imports from pip
import frontmatter #python -m pip install python-frontmatter
import markdown
from lxml import etree

#own imports
from make_pdf import defined_categories

posts_path = abspath(join(__file__,pardir, pardir,"_posts"))

sch_path = abspath(join(__file__,pardir, pardir,"rsc","schematics"))

print(posts_path)
print(sch_path)

print("checking lengths")
error_baseurl_missing = 0
for dir,root,files in walk(posts_path):
    for f in files:
        try:
            with open(join(dir,f),'r') as fi:
                mkdown = fi.read()
        except:
            print(f"failed for {f}")
            raise
        post_text = frontmatter.load(join(dir,f))
        cat=post_text["categories"]
        if not cat in defined_categories:
            print(f"category {cat} from {f} not in defined ones")
            raise
        try:
            mkdown = re_split("---\n|----\n",mkdown)[2]
        except:
            print(f"failed for {f}")
            raise
        if len(mkdown) > 650:
            print(f"high level too long {f},{len(mkdown)}")

        #checking that the post when linking to other posts, include the site.baseurl fix (issue #18)

        #first we parse the post content
        parsed_mkdown = markdown.markdown(mkdown)
        #add top level node as otherwise etree will throw an exception "Extra content at the end of the document"
        parsed_mkdown= "<html>%s</html>"%(parsed_mkdown)
        #parse it with lxml
        doc = etree.fromstring(parsed_mkdown)
        #look for all a anchors
        for link in doc.xpath("//a"):
            href = link.get("href")
            if href.find("{% post_url ")>=0:
                if not href[:18]=="{{ site.baseurl }}":
                    print(f"inter posts links not patched for site.baseurl for {f}")
                    error_baseurl_missing+=1
            # FIXME: add here code to check that link.text actually uses valid filename
        #print(post_text)
    files = [fil.split("-")[-1].split(".")[0].replace("_"," ").lower() for fil in files]


posts = set(files)

sch = []
for dir, root, files in walk(sch_path):

    for f in files:
        if f.find(".sch")>=0:
            if f.find("-bak")<=0:
                sch.append(f.split(".")[0].lower())

schematics = set(sch)

            
print("in schematics w/o posts")
print(schematics-posts)
print("in posts w/o schematics",len(posts-schematics))

print("in schematics w/o posts")
print(schematics-posts)
print("in posts w/o schematics",len(posts-schematics))
print(posts-schematics)

if error_baseurl_missing>0:
    raise Exception("ValueError")
