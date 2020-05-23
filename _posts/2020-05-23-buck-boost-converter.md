---
title: Buck-Boost Converter
category: power
layout: post
function: regulation
date: 2020-05-23
---

# Buck-Boost Converter

<object type="image/svg+xml" data="{{site.baseurl}}/out/svg/buck-boost converter.svg" alt="" width="500" height="200"></object>

A buck-boost converter is an inductor based switching regulator whose output voltage can be lower or higher than the input voltage.

Two topologies for this are:

* The inverting buck-boost converter
$$ Vout = \frac{-D}{1-D} * Vin $$ 
* The four switch buck-boost converter
$$ V_{OUT} = \frac{-D}{\frac{R_L}{R*(1-D)}+1-D} * V_{IN} $$