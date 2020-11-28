---
title: inverting amplifier
categories: signal_chain
layout: post
function: maths
schematics: yes
date: 2019-01-07
---

Along with the noninverting amplifier, the inverting amplifier is one of the simplest opamp configurations. It amplifies the signal by a fixed gain, while inverting it relative to the supply rails.
This is accomplished with negative feedback from the output to the inverting input of the opamp via R2. Combined with R1, this forms a voltage divider that attenuates the output; the opamp then acts to ensure this attenuated version of the output signal is equal to the input signal. The gain of this circuit is thus \(G=-\frac{R2}{R1}\).
