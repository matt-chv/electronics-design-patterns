from re import split as re_split
from os import walk
from os.path import abspath, pardir, join

posts_path = abspath(join(__file__,pardir, pardir,"_posts"))

print(posts_path)

for dir,root,files in walk(posts_path):
    print("checking lengths")
    for f in files:
        with open(join(dir,f),'r') as fi:
            mkdown = fi.read()
        mkdown = re_split("---\n|----\n",mkdown)[2]
        if len(mkdown) > 650:
            print(f"high level too long {f},{len(mkdown)}")
    files = [fil.split("-")[-1].split(".")[0].replace("_"," ").lower() for fil in files]


posts = set(files)

sch = []
for dir, root, files in walk("../rsc/schematics"):
    for f in files:
        if f.find(".sch")>=0:
            if f.find("-bak")<=0:
                sch.append(f.split(".")[0].lower())

schematics = set(sch)
            
print("in schematics w/o posts")
print(schematics-posts)
print("in posts w/o schematics")
print(posts-schematics)
