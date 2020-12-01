---
title: digital amplifier
categories: signal_chain
layout: post
function: filter
schematics: yes
date: 2020-05-19    
---

# Digital Amplifier

With 74C14 Schmitt triggered input inverter having a resistor ($$R1_{osc}$$) connected from output to 
input it will oscillate (for a certain range of resistors), using stray capacitance as part of the 
RC timing circuit. 

For AC coupled AC signal to the input the output will be pulse width modulated.

The low pass filter output signal will be the amplified analog input. 

The secret to "keeping it digital" is the Schmitt trigger input. 

The gate cannot be biased into a linear mode due to hysteresis and oscillates instead.