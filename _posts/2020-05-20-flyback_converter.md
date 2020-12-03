---
title: flyback converter
categories: power
layout: post
function: regulation
schematics: yes
date: 2020-05-20
---

# Flyback Converter

A flyback converter is an transformer based switching regulator derived from the [inverting buck boost converter]({{ site.baseurl }}{% post_url 2020-05-23-inverting_buck_boost_converter %}) where the inductor is replaced with a transformer. 
The output voltage is then multiplied by the transformer turn ratio while isolating the output from the primary side.

$$ Vout = N * \frac{-D}{1-D} * Vin $$