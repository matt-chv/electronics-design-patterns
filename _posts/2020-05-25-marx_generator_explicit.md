---
title: marx generator_explicit
categories: power
layout: post
function: pulse
schematics: yes
date: 2020-05-25
---

# Marx Generator (Explicit)

Marx generator is a variant of voltage multiplier but used to generate a pulse voltage, often in the kV range for pulse with below 1ns.
The capacitance C1..C15 are charged by VCC through R1..R15. When Q1 is triggered in avalanche mode, subsequent transistor will be exposed to high voltage, enter avalanche and connect the capacitor in series until they can all discharge in RL thus creating a high voltage pulse on RL.

$$ V_{peak} = \frac{N*V_{CC} * R_L}{R_L + R_M} $$

Notes:

* doi:10.1109/MMWCST.2013.6814636