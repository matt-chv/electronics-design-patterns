---
title: differentiator
categories: signal_chain
layout: post
function: maths
schematics: yes
date: 2019-01-07
---

An opamp differentiator performs the opposite action of an integrator: it outputs a voltage proportional to the rate of change of its input.
The input capacitor sources a current proportional to the difference between its terminals into the opamp's inverting input. The noninverting input is a virtual ground, and the opamp acts to maintain this by asserting a voltage across R1. This voltage is proportional to the input current, and thus proportional to the rate of change of the input signal. Current flowing through R1 charges C1, ensuring that a DC signal will result in the output returning to ground.
