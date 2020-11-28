---
title: flybuck converter
categories: power
layout: post
function: regulation
schematics: yes
date: 2020-05-23
---

# Fly-Buck Converter

A Fly-Buck converter, is a transformer based switching regulator where the inductor of a [buck converter]() is replaced by a transformer with a 1 to N ratio between primary and secondary.

The secondary output voltage (VOUT_sec) is ratio of the primary voltage (VOUT_pri) given by the transformer ratio (N) while being isolated from it.

$$ VOUT_pri = N * VOUT_sec $$