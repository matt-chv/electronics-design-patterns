---
title: npn switch
categories: logic
layout: post
function: switch
schematics: yes
date: 2019-01-07
---

# NPN Switch

When VIN switches from GND to VCC (VIN could be a physical switch, an MCU or any other digital signal), current flows through the current limiting resistor R1 into the base of Q1, turning on the transistor, and allowing power to flow through it and R1, turning the load on and/or changing the Vout level.

$$ ILOAD = Hfe * \frac{VCC-0.6}{R1} $$ 

---

## Design considerations 

Bipolar transistors are current controlled devices, and the resistor R1 on the base of the transistor limits the current flow from base to ground. The transistor will conduct a maximum current from collector emitter equal to the base current multiplied by the transistor's gain, usually notated Hfe.
