from re import split as re_split
from os import walk
from os.path import abspath, pardir, join

posts_path = abspath(join(__file__,pardir, pardir,"_posts"))
<<<<<<< HEAD
sch_path = abspath(join(__file__,pardir, pardir,"rsc","schematics"))

print(posts_path)
print(sch_path)
=======

print(posts_path)
>>>>>>> e2aa394... kicad v0.1 first pass generation pdf from kicad schematics still fail one sheet generation

for dir,root,files in walk(posts_path):
    print("checking lengths")
    for f in files:
<<<<<<< HEAD
        try:
            with open(join(dir,f),'r') as fi:
                mkdown = fi.read()
        except:
            print(f"failed for {f}")
            raise
        try:
            mkdown = re_split("---\n|----\n",mkdown)[2]
        except:
            print(f"failed for {f}")
            raise
=======
        with open(join(dir,f),'r') as fi:
            mkdown = fi.read()
        mkdown = re_split("---\n|----\n",mkdown)[2]
>>>>>>> e2aa394... kicad v0.1 first pass generation pdf from kicad schematics still fail one sheet generation
        if len(mkdown) > 650:
            print(f"high level too long {f},{len(mkdown)}")
    files = [fil.split("-")[-1].split(".")[0].replace("_"," ").lower() for fil in files]


posts = set(files)

sch = []
<<<<<<< HEAD
for dir, root, files in walk(sch_path):
=======
for dir, root, files in walk("../rsc/schematics"):
>>>>>>> e2aa394... kicad v0.1 first pass generation pdf from kicad schematics still fail one sheet generation
    for f in files:
        if f.find(".sch")>=0:
            if f.find("-bak")<=0:
                sch.append(f.split(".")[0].lower())

schematics = set(sch)
<<<<<<< HEAD

            
print("in schematics w/o posts")
print(schematics-posts)
print("in posts w/o schematics",len(posts-schematics))
=======
            
print("in schematics w/o posts")
print(schematics-posts)
print("in posts w/o schematics")
>>>>>>> e2aa394... kicad v0.1 first pass generation pdf from kicad schematics still fail one sheet generation
print(posts-schematics)
