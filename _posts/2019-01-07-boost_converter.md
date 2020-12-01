---
title: boost converter
categories: power
layout: post
function: regulation
schematics: yes
date: 2019-01-07
---

# Boost Converter

A boost regulator is a type of switching regulator, a highly efficient means of producing a regulated DC voltage or current from a lower input voltage. With switch SW1 on, current flows through the inductor I1, charging it. When SW1 turns off, the voltage on that end of the inductor rises rapidly until the diode D1 conducts, charging the output capacitor. The output voltage can be much greater than the input voltage. A feedback loop adjusts the duty cycle or frequency of the switch's on periods in order to regulate the output voltage at the desired level.

$$ Vout = \frac{t_{on}+t_{off}}{t_{off}} * Vin $$

