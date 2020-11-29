---
title: voltage divider
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
categories: signal_chain
layout: post
function: filter
schematics: yes
=======
category: signal-chain
layout: post
function: filter
>>>>>>> 4c8e9a7... update to jekyll blog template
=======
categories: passive
=======
categories: signal_chain
>>>>>>> 4ed3408... kicad v0.2 first successful generation of single_sheet overview
layout: post
function: filter
schematics: yes
>>>>>>> e2aa394... kicad v0.1 first pass generation pdf from kicad schematics still fail one sheet generation
date: 2019-01-07
---

# Voltage Divider

<<<<<<< HEAD
<<<<<<< HEAD
=======
<object type="image/svg+xml" data="{{site.baseurl}}/out/svg/voltage divider.svg" alt="" width="500" height="200"></object>

>>>>>>> 4c8e9a7... update to jekyll blog template
=======
>>>>>>> e2aa394... kicad v0.1 first pass generation pdf from kicad schematics still fail one sheet generation
Output voltage will be a ratio of the two resistances and the input voltage:

$$ Vout = \frac{R_2}{R_1+R_2}*Vin $$

Notes: assuming that Vin output impedance and Vout input impedance are respectivelly low impedance and high-impedance compared to R1+R2

----

## Complex impedance

Considering Laplace Transforms and complex impedance we can rewrite this as :

<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 96aa8b1... kicad_v0.2a adding backlog of DP
$$ Vout = \frac{Z_2}{Z_1+Z_2}*Vin $$

When Z1 is a capacitor and Z2 is a resistor we have a low pass filter

When Z1 is a resistor and Z2 is a capacitor we have a high pass filter
<<<<<<< HEAD
=======
$$ Vout = \frac{Z_2}{Z_1+Z_2}*Vin $$
>>>>>>> 4c8e9a7... update to jekyll blog template
=======
>>>>>>> 96aa8b1... kicad_v0.2a adding backlog of DP
