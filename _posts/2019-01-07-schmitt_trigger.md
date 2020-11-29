---
title: schmitt trigger
categories: signal_chain
layout: post
function: maths
schematics: yes
date: 2019-01-07
---

A schmitt trigger is a circuit that provides hysteresis: its threshold voltage depends on the current state. 
This is useful in preventing noisy sources from generating many spurious transitions in digital logic or when using a comparator.
The threshold VTH is set by R1 and R2 while R3 provides a small bias depending on the state of the output.
This positive feedback provides a range of voltages for which the output will not change from the state it's currently in.

$$ V_TH = \frac{VCC}{2} $$

---

## MORE 

R1 and R2 form a voltage divider, setting the comparator's threshold Vth. 
R3 sources or sinks a small current from the output into the positive terminal. 
When the output is high, this increases the threshold voltage slightly, and when the output is low it decreases it. 
