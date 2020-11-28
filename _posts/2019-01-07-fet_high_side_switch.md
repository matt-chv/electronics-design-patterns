---
title: fet high side switch
categories: signal
layout: post
function: switch
schematics: yes
date: 2019-01-07
---

When doing high-side power switching, it's often necessary to switch a higher voltage from a lower logic voltage. It's not possible to do this using just a P-channel FET, as the logic voltage cannot go high enough to turn the PFET off. The circuit above solves this issue with the use of a second, N-Channel FET.
When the input is low, Q1 does not conduct, and the gate on Q2 is held at VCC via the pullup resistor R1. When the input goes high, Q1 turns on, grounding the gate of Q2 and turning it on, allowing it to conduct.
