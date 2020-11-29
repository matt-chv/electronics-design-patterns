---
title: Log Amplifier
category: signal-chain
layout: post
function: amplification
date: 2020-05-23
---

# Log Amplifier

<object type="image/svg+xml" data="{{site.baseurl}}/out/svg/log amplifier.svg" alt="" width="500" height="200"></object>
<p xmlns:dct="http://purl.org/dc/terms/" xmlns:cc="http://creativecommons.org/ns#" class="license-text"><span rel="dct:title">svg schematics</span> by <a rel="cc:attributionURL" href="http://matthieuchevrier.com"><span rel="cc:attributionName">matt_chv</span></a>CC BY-SA 4.0<a href="https://creativecommons.org/licenses/by-sa/4.0"><img style="height:22px!important;margin-left: 3px;vertical-align:text-bottom;" src="https://search.creativecommons.org/static/img/cc_icon.svg" /><img  style="height:22px!important;margin-left: 3px;vertical-align:text-bottom;" src="https://search.creativecommons.org/static/img/cc-by_icon.svg" /><img  style="height:22px!important;margin-left: 3px;vertical-align:text-bottom;" src="https://search.creativecommons.org/static/img/cc-sa_icon.svg" /></a></p>

A log amplifier, is an amplifier whose output voltage is proportional to the logarithm of the input voltage (VIN). 

This allows to extend the dynamic range of circuits situated at its output.

$$ V_{OUT} = -V_T * ln(\frac{V_{IN}}{I_S * R}) $$
Where $$ I_S $$ and $$ V_T $$ are respectively the saturation and thermal voltage of the diode.