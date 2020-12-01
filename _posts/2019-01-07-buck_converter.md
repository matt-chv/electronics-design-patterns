---
title: buck converter
categories: power
layout: post
function: regulation
schematics: yes
date: 2019-01-07
---

# Buck Converter

A buck converter is an inductor based switching regulator, whose output voltage is lower than the input voltage. 
With the switch on, current flows through the
inductor I1, charging the output capacitor C1. When the switch
turns off, the diode D1 completes the circuit with the inductor,
applying a voltage of the opposite polarity to the inductor, and
causing the current to linearly decrease. A feedback loop adjusts
the duty cycle or frequency of the switch SW1 in order to maintain
a constant output voltage on the output capacitor.

$$ Vout = \frac{t_{on}}{t_{on}+t_{off}} * Vin $$