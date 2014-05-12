---
title: "Chebfun: Numerical computing with functions"
layout: index
content:
    - about
    - download
    - docs
    - examples
    - develop
    - citing
    - support
tagline:
    Numerical computing with functions.
---

# What is Chebfun?

Chebfun is an open-source MATLAB package for computing with
functions to 15-digit accuracy. Most Chebfun commands are
overloads of familiar MATLAB commands &mdash; for example `sum(f)`
computes an integral, `roots(f)` finds zeros, and `u = L\f` solves
a differential equation.

Click [here][about] for more information.

# A simple example

The following code finds and plots all intersections of two complicated
functions on the interval $[-1,1]$.

<pre class='lang-matlab prettyprint'>
x = chebfun('x');
f = tanh(4*sin(40*x)).*exp(-x).*(2 + sin(7*x)) / 16;
g = sin(9*x).^3 / 4;
rr = roots(f - g);
plot([f g])
plot(rr, f(rr), 'k.')
</pre>

<div style='text-align:center'>
<img src='figure_frontpagedemo.png' />
</div>
