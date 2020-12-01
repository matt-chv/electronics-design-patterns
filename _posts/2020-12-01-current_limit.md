---
title: current limit
categories: power
layout: post
function: protection
schematics: yes
date: 2020-12-01
---

This circuit will limit current such as in case of inrush current to protect the source or to avoid other loads on the same node to collapse in case of over-current being taken from VOUT

$$ I_{OUT} \leq \frac{2 * V_F}{R_2} $$