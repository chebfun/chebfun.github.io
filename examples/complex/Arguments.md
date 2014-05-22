---
title: "ANGLE, UNWRAP, and branches of complex chebfuns"
layout: example
authordate: "Nick Trefethen, May 2011"
meta: "(Chebfun example complex/Arguments.m) [Tags: #complex, #ANGLE, #UNWRAP]"
---

A complex number $z$ has a modulus or absolute value in $[0,\infty)$, which MATLAB computes with `abs(z)`, and an argument in $(-\pi,\pi]$, which MATLAB computes with `angle(z)`. For example:

<pre class="mcode-input">angle(1)</pre><pre class="mcode-output">ans =
     0
</pre><pre class="mcode-input">angle(-1)</pre><pre class="mcode-output">ans =
   3.141592653589793
</pre><pre class="mcode-input">angle(-1-.01i)</pre><pre class="mcode-output">ans =
  -3.131592986903128
</pre>Chebfun overloads the `angle` command in the obvious fashion, analogously to `ceil`, `floor`, and `round`.  For example, here is a spiral in the complex plane:

<pre class="mcode-input">LW = 'linewidth'; lw = 1.6; FS = 'fontsize'; fs = 14;
t = chebfun('t',[1 20]);
f = t.*exp(1i*t);
plot(f,LW,lw), axis equal
title('f(t) in complex plane',FS,fs)</pre><img src="img/Arguments_01.png" class="figure" alt="">

And here is its angle:

<pre class="mcode-input">plot(angle(f),'m',LW,lw)
xlabel t, ylabel angle(f(t))</pre><img src="img/Arguments_02.png" class="figure" alt="">

Often one would prefer to define a continuous argument, and for this purpose MATLAB has the command `unwrap`.  For example:

<pre class="mcode-input">unwrap(angle([-1 -1-.01i]))</pre><pre class="mcode-output">ans =
   3.141592653589793   3.151592320276458
</pre>If we apply the Chebfun overload, we get a continuous argument for that spiral that makes more sense:

<pre class="mcode-input">plot(unwrap(angle(f)),'m',LW,lw), ylim([-1 21])
xlabel t, ylabel argument</pre><img src="img/Arguments_03.png" class="figure" alt="">

An important area of application of these commands is to functions in the complex plane, where keeping track of branch cuts is often a headache.  For example, suppose we want to take the square root of that function $f$.  The result is not very useful. (For the moment we have to construct the function again with 'splitting on' to make this experiment work, though in principle Chebfun should be clever enough to introduce a breakpoint without splitting on.)

<pre class="mcode-input">g = chebfun('sqrt(t.*exp(1i*t))',[1 20],'splitting','on');
plot(g,LW,lw), axis(5*[-1 1 -1 1]), axis square
title('sqrt(f(t)) in complex plane',FS,fs)</pre><img src="img/Arguments_04.png" class="figure" alt="">

We can get the right effect with `unwrap`:

<pre class="mcode-input">g = sqrt(abs(f)).*exp(.5i*unwrap(angle(f)));
plot(g,LW,lw), axis(5*[-1 1 -1 1]), axis square
title('sqrt(f(t)) in complex plane',FS,fs)</pre><img src="img/Arguments_05.png" class="figure" alt="">

