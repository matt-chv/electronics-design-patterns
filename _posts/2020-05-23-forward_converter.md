---
title: forward converter
categories: power
layout: post
function: regulation
schematics: yes
date: 2020-05-23
---

# Forward Converter

A forward converter, is a transformer based switching regulator derived from the buck converter whose inductor has been replaced by a transformer. This topology uses a reset winding (Nr) on the transformer to reset it.

In CCM mode, we have:

$$ V_{OUT} = N * \frac{t_{ON}}{t_{ON}+t_{OFF}} * V_{IN} $$

Notes:

* [see TI AN](http://www.ti.com/lit/an/snva603/snva603.pdf)
* [see IFX AN](https://www.mouser.com/pdfdocs/2-10.pdf)
