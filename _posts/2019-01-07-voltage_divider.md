---
title: voltage divider
categories: signal_chain
layout: post
function: filter
schematics: yes
date: 2019-01-07
---

# Voltage Divider

Output voltage will be a ratio of the two resistances and the input voltage:

$$ Vout = \frac{R_2}{R_1+R_2}*Vin $$

Notes: assuming that Vin output impedance and Vout input impedance are respectivelly low impedance and high-impedance compared to R1+R2

----

## Complex impedance

Considering Laplace Transforms and complex impedance we can rewrite this as :

$$ Vout = \frac{Z_2}{Z_1+Z_2}*Vin $$

When Z1 is a capacitor and Z2 is a resistor we have a low pass filter

When Z1 is a resistor and Z2 is a capacitor we have a high pass filter
