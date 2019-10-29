# electronics-design-patterns

These are the source files for electronics design patterns cards. Each card depicts and describes an electronics pattern, in either analog, digital, power electronics or transducers.

They could be used for brainstorming, interviews or STEMS education.

## Status
pre-alpha

## Ressources
./rsc/images is where the illustrations are found
.sch are KiCad format files
.svg are SVG files

./rsc/txt is where the descriptions are found
jupyter notebook markdown is the goal in terms of support
today only single new line equations are supported.

## Build
png conversion of either .sch or .svg are included to allow for easier pdf generation

generation of png from the .sch requires ./bin/plotkicadsch (credit: [plotkicadsch](https://github.com/jnavila/plotkicadsch)
plotkicadsch called by the build scripts