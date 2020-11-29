# electronics-design-patterns

These are the source files for electronics design patterns cards. Each card depicts and describes an electronics pattern, in either analog, digital, power or transducers.

They could be used for brainstorming, interviews or STEMS education.

## Credits

In alphabetical order:
* [Arachnid Labs trading cards]()
* [Circuit.js](http://www.falstad.com/circuit/circuitjs.html)
* IEEE papers
* Wikipedia

## Status
pre-alpha

## WHY ?

As of the day of starting this there was no good centralised archive of basic electronic design patterns. Sources included IC manufacturers application note sections, wikipedia, electronic hobbyist, EE curriculum text books but nothing centralised easily searchable when in need of a good idea during brainstorming.

## WHAT ?

## HOW ?

### Incremental update to the pdf output
once a schematics + description has been added / updated
1. run sanity check to ensure all naming conventions are followed (required for next steps)
2. run sch2img (updates the png and svg from the Kicad schematics database)
3. run make_pdf

## Ressources
./rsc/images is where the illustrations are found
.sch are KiCad format files
.svg are SVG files

./rsc/txt is where the descriptions are found
jupyter notebook markdown is the goal in terms of support
today only single new line equations are supported.

## Install

try first
```
python -m pip install -r requirements
```

if this fails because matplotlib cannot be installed

download binaries from [pythonlibs](https://www.lfd.uci.edu/~gohlke/pythonlibs/)

you will also need to have an instlled LATEX for the equation conversion

## Build
png conversion of either .sch or .svg are included to allow for easier pdf generation

generation of png from the .sch requires ./bin/plotkicadsch (credit: [plotkicadsch](https://github.com/jnavila/plotkicadsch)
plotkicadsch called by the build scripts