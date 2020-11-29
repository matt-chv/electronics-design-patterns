---
title: led current limit
categories: transducer
layout: post
function: protection
schematics: yes
date: 2019-01-07
---

When powering an LED from a voltage source, it's necessary to limit the current that flows through it to prevent it burning out. As the voltage across an LED exceeds its forward voltage, the current the LED consumes rises rapidly. The simplest and most common way to handle this is with a simple series resistor.
Calculating the necessary value of the resistor is easy. If Vth is the LED's forward voltage, Vin is the input voltage, and I is the desired current, the resistor value is calculated by:.
$$R_{1}=\frac{V_{CC}-V_{th-D1}}{I}$$
