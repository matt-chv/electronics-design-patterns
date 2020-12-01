---
title: log amplifier
categories: signal_chain
layout: post
function: amplification
schematics: yes
date: 2020-05-23
---

# Log Amplifier

A log amplifier, is an amplifier whose output voltage is proportional to the logarithm of the input voltage (VIN). 

This allows to extend the dynamic range of circuits situated at its output.

$$ V_{OUT} = -V_T * ln(\frac{V_{IN}}{I_S * R}) $$
Where IS and VT are respectively the saturation and thermal voltage of the diode.