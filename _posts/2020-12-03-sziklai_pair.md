---
title: sziklai pair
categories: signal_chain
layout: post
function: [amplification, v2v]
schematics: yes
date: 2020-12-01
---

A Sziklai pair is similar to the [darlington_pair]({{ site.baseurl }}{% post_url 2020-12-03-darlington_pair %}) and used to offer a very high current gain even with low base current. 
Unlinke the Darlington it has one NPN and one PNP transistor, one advantage over the Darlington pair is that the base turn-on voltage is only about 0.6V or half of the Darlington's 1.2V nominal turn-on voltage.

$$ I_C= I_B * (\beta_1 * \beta_2) $$