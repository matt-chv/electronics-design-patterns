---
title: four switch buck boost converter
categories: power
layout: post
function: regulation
schematics: yes
date: 2020-05-23
---

# Four Switch Buck-Boost Converter

A buck-boost converter is an inductor based switching regulator whose output voltage can be lower or higher than the input voltage.

Besides the implementation in this schematic, another topology called [inverting buck-boost converter]({{ site.baseurl }}{% post_url 2020-05-23-inverting_buck_boost_converter %})

$$ V_{OUT} = \frac{-D}{\frac{R_L}{R*(1-D)}+1-D} * V_{IN} $$

Notes:
https://www.ti.com/tool/PMP5026
