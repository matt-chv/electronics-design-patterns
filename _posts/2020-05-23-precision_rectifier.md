---
title: precision rectifier
categories: signal_chain
layout: post
function: passives
schematics: yes
date: 2020-05-23
---

# Precision Rectifier

The precision rectifier or super diode.

When the VIN<0, there is a negative voltage on the diode, so it works like an open circuit, no current flows through the load, and the output voltage is zero.

When VIN>0, it is amplified by the operational amplifier, which switches the diode on. Current flows through the load and, because of the feedback, the output voltage is equal to the input voltage.

$$ VOUT = max(VIN,0) $$