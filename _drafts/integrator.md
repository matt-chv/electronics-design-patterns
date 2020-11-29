---
title: integrator
categories: signal_chain
layout: post
function: maths
schematics: yes
date: 2019-01-07
---

An Opamp Integrator performs the mathematical operation of integration on its input signal - that is, its output voltage is proportional to the input voltage over time.
The resistor R1 converts the input voltage to a current, which charges capacitor C1 at a rate determined by the values of R1 and C1. The negative input is a virtual ground, and the opamp acts to maintain that by linearly increasing the voltage on the output while an input signal is present - performing the integration operation. R2 ensures the output voltage doesn't drift over time.
