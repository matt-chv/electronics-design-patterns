---
title: current sink
categories: signal_chain
layout: post
function: maths
schematics: yes
date: 2019-01-07
---

Current sinks are useful in a variety of situations and applications. The diagram above shows a simple current sink constructed using an NPN transistor.
A voltage is applied to the base of the transistor, in this case provided by a voltage divider. In the example schematic, the voltage is 1.6 volts. The current across the load is determined by Eq1 in the example above this will be 1 milliamp. Note that the current does not depend on the Hfe of the transistor, but only on the base voltage and the emitter resistor.

$$ I_c=\frac{V_b-0.6}{R1} $$