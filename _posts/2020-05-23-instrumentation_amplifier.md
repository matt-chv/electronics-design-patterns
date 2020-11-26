---
title: Instrumentation Amplifier
categories: signal_chain
layout: post
function: amplification
schematics: yes
date: 2020-05-23
---

# Differential Amplifier

An instrumentation amplifier adds two [buffer amplifier](({% post_url 2020-05-23-voltage_follower %})) to a [differential amplifier](({% post_url 2020-05-23-differential_amplifier %})), which eliminates the need for input impedance matching.

$$ V_{OUT} = (1+\frac{2*R1}{RG})*\frac{R3}{R2} *(V_{IN+}-V_{IN-} $$
