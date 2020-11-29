---
title: Flyback Converter
category: power
layout: post
function: regulation
date: 2020-05-20
---

# Flyback Converter

<object type="image/svg+xml" data="{{site.baseurl}}/out/svg/flyback converter.svg" alt="" width="500" height="200"></object>

A flyback converter is an transformer based switching regulator derived from the inverting [buck-boost converter]({% post_url 2020-05-23-buck-boost-converter %}) where the inductor is replaced with a transformer. 
The output voltage is then multiplied by the transformer turn ratio while isolating the output from the primary side.

$$ Vout = N * \frac{-D}{1-D} * Vin $$