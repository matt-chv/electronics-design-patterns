---
title: Forward Converter
category: power
layout: post
function: regulation
date: 2020-05-23
---

# Forward Converter

<object type="image/svg+xml" data="{{site.baseurl}}/out/svg/forward converter.svg" alt="" width="500" height="200"></object>
<p xmlns:dct="http://purl.org/dc/terms/" xmlns:cc="http://creativecommons.org/ns#" class="license-text"><span rel="dct:title">svg schematics</span> by <a rel="cc:attributionURL" href="http://matthieuchevrier.com"><span rel="cc:attributionName">matt_chv</span></a>CC BY-SA 4.0<a href="https://creativecommons.org/licenses/by-sa/4.0"><img style="height:22px!important;margin-left: 3px;vertical-align:text-bottom;" src="https://search.creativecommons.org/static/img/cc_icon.svg" /><img  style="height:22px!important;margin-left: 3px;vertical-align:text-bottom;" src="https://search.creativecommons.org/static/img/cc-by_icon.svg" /><img  style="height:22px!important;margin-left: 3px;vertical-align:text-bottom;" src="https://search.creativecommons.org/static/img/cc-sa_icon.svg" /></a></p>

A forward converter, is a transformer based switching regulator derived from the buck converter whose inductor has been replaced by a transformer. This topology uses a reset winding (Nr) on the transformer to reset it.

In CCM mode, we have:

$$ V_{OUT} = N * \frac{t_{ON}}{t_{ON}+t_{OFF}} * V_{IN} $$

Notes:

* [see TI AN](http://www.ti.com/lit/an/snva603/snva603.pdf)
* [see IFX AN](https://www.mouser.com/pdfdocs/2-10.pdf)
