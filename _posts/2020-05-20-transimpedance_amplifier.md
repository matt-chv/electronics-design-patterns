---
title: transimpedance amplifier
categories: signal_chain
layout: post
function: amplifier
schematics: yes
date: 2020-05-20
---

# Transimpedance Amplifier

A transimpedance amplifier converts a current to a voltage. They're particularly useful for sensors that output currents, like the photodiode depicted above.
The inverting input of the opamp forms a virtual ground. This requires the current through R1 to be equal to the current being sunk by the photodiode, which results in an increase in the output voltage equal to the product of the input current and the feedback resistor.
Because a transimpedance amplifier has an input measured in amps and an output measured in volts, its gain is measured in ohms.