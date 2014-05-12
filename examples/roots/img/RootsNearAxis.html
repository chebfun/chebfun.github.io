---
title: "Complex roots near the real axis"
layout: example
authordate: "Nick Trefethen, 26th October 2011"
meta: "(Chebfun example roots/RootsNearAxis.m) [Tags: #roots, #complex, #CHEBELLIPSEPLOT]"
---

Here's a wiggly chebfun defined on [0,30]:

<pre class="mcode-input">x = chebfun('x',[0 30]);
f = 3 + sin(x) + sin(pi*x);
LW = 'linewidth';
plot(f,LW,2)</pre><img src="img/RootsNearAxis_01.png" alt="">

The chebfun has no roots on the interval:

<pre class="mcode-input">roots(f)</pre><pre class="mcode-output">ans =
   Empty matrix: 0-by-1
</pre>It has some roots near the interval in the complex plane, however, and the chebfun will have some accuracy for these complex values. We can get an idea of the relevant region with chebellipseplot, which plots the "Chebfun ellipse" for f:

<pre class="mcode-input">clf, chebellipseplot(f,LW,2), grid on
xlim([-5 35]), axis equal
hold on, plot(x,0*x,'k',LW,1.5)</pre><img src="img/RootsNearAxis_02.png" alt="">

The number of digits of accuracy of the chebfun can be expected to reduce smoothly from 15 or so along the interval down to 0 on the ellipse.

This provides an easy way to calculate roots of functions in the complex plane near the interval of definition, using ROOTS with the flag 'complex':

<pre class="mcode-input">r = roots(f,'complex'); plot(r,'.r','markersize',18)</pre><img src="img/RootsNearAxis_03.png" alt="">

Notice that the number of roots is is less than the polynomial degree of the chebfun:

<pre class="mcode-input">number_of_roots = length(r)
degree = length(f)-1</pre><pre class="mcode-output">number_of_roots =
    32
degree =
    85
</pre>That's because there are quite a few additional roots of the chebfun that have nothing to do with roots of the underlying function.  We can see them with the flag 'all':

<pre class="mcode-input">plot(roots(f,'all'),'or'), axis auto, axis equal</pre><img src="img/RootsNearAxis_04.png" alt="">

For more details about computations like these, see Section 3.6 of the Chebfun Guide, and for more on the mathematics, see Chapters 8 and 18 of [1].

Reference:

[1] L. N. Trefethen, Approximation Theory and Approximation Practice, SIAM, 2013.

