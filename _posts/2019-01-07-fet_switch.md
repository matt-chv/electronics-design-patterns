---
title: fet switch
categories: logic
layout: post
function: switch
schematics: yes
date: 2019-01-07
---

One of the simplest uses for a FET is as a switch. In this configuration, when the physical switch - which could also be a digital output - is connected to VCC, the gate voltage on the n-channel FET is high, and the FET acts like a short circuit. When the switch is connected to GND, the gate is low, and no current flows.
Unlike bipolar transistors, FETs are voltage controlled, and are thus even simpler to control. Since the gate consumes no current, though, it's necessary to drive the gate both low and high, or connect a resistor between the gate and ground, to ensure it isn't left "floating" when turned off.
