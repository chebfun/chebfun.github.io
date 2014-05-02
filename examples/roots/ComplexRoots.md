---
title: Roots of a complex function via Cauchy integrals
layout: example
authordate: "Nick Trefethen, September 2011"
meta: "(Chebfun example roots/ComplexRoots.m) [Tags: #complex, #Cauchy, #ROOTS]"
---

Poles and zeros of complex functions can be located by the evaluation of contour integrals, as mentioned in Chapter 5 of the Chebfun Guide.  For example, suppose we have a function like this one with a single root s1 in the unit disk:

<pre class="mcode-input">ff = @(z) (z-0.5i).*exp(z);</pre>We can find the root as the value of a contour integral around the unit circle:

s = (1/2i*pi) INT z (f'(z)/f(z)) dzSince Chebfun works with real independent variables, we parametrize the unit circle by a real variable $t$ on $[-1,1]$:

<pre class="mcode-input">z = chebfun('exp(1i*pi*t)');</pre>which gives us

s1 = (1/2i*pi) INT z ( (df/dt)(dt/dz) / f ) (dz/dt) dt<pre class="mcode">    = (1/2i*pi) INT z ( (df/dt) / f ) dt</pre>So here is the Chebfun evaluation:

<pre class="mcode-input">f = ff(z);
s1 = sum(z.*diff(f)./f)/(2i*pi)</pre><pre class="mcode-output">s1 =
  0.000000000000002 + 0.499999999999999i
</pre>There is nothing in this computation that depends on the use of the unit disk.  Other contours are equally tracatable in Chebfun, as illustrated in the Example complex/KeyholeContour and in Chapter 5 of the Chebfun Guide.

This method of finding a single root goes back at least to McCune in 1966 [4].  In practice we would often want to be able to find multiple roots, and a generalized algorithm for this case was published by Delves and Lyness in 1967 [2], with mathematical origins as far back as Jackson in 1917 [3].  For a discussion of all kinds of related algorithms, see [1].  The idea here is that if f has more than one root in the unit disk, then the value s above comes out as the sum of all these roots.  Similarly

s2 = (1/2i*pi) INT z^2 (f'(z)/f(z)) dzis the sum of the squares of the roots, the analogous formula for s3 with a factor $z^3$ gives the sum of the cubes, and so on.  And a count of the number of roots is given by

s0 = (1/2i*pi) INT (f'(z)/f(z)) dz(this is basically the argument principle).  So for example we can count the number of roots of cosh(pi*z) in the unit disk like this:

<pre class="mcode-input">ff = @(z) cosh(pi*z);
f = ff(z);
s0 = sum(diff(f)./f)/(2i*pi)</pre><pre class="mcode-output">s0 =
  2.000000000000000 + 0.000000000000000i
</pre>Here are the sum of the roots and the sum of their squares:

<pre class="mcode-input">s1 = sum(z.*diff(f)./f)/(2i*pi)
s2 = sum(z.^2.*diff(f)./f)/(2i*pi)</pre><pre class="mcode-output">s1 =
     -1.555010862042088e-15 + 1.013138012226223e-16i
s2 =
 -0.500000000000001 - 0.000000000000000i
</pre>corresponding to roots at +- 0.5i.  We can find these numbers systematically by noting that the monic polynomial p(z) with these roots has coefficients c0=(s1^2-s2)/2, c1=-s1, c2=1. So here is a calculation of the two roots in the unit disk of cosh(pi*z):

<pre class="mcode-input">p = [1 -s1 (s1^2-s2)/2];
roots(p)</pre><pre class="mcode-output">ans =
 -0.000000000000001 + 0.500000000000000i
 -0.000000000000001 - 0.500000000000000i
</pre>Generalization to higher numbers of roots can be done via Newton's identities.  We don't pursue the general case here but instead write a code that finds three roots of an analytic function in the unit disk:

<pre class="mcode-input">function r = roots3(ff)    % find 3 roots of ff in unit disk
z = chebfun('exp(1i*pi*t)');
f = ff(z);
s0 = sum(diff(f)./f)/(2i*pi);
s1 = sum(z.*diff(f)./f)/(2i*pi);
s2 = sum(z.^2.*diff(f)./f)/(2i*pi);
s3 = sum(z.^3.*diff(f)./f)/(2i*pi);
p = [1 -s1 (s1^2-s2)/2 -(s1^3-3*s1*s2+2*s3)/6];
r = roots(p);
end</pre>Here is an example:

<pre class="mcode-input">ff = @(z) cosh(exp(z)).*(z-.3).*(1+4*z.^2);
roots3(ff)</pre><pre class="mcode-output">ans =
 -0.000000000000014 - 0.499999999999992i
 -0.000000000000015 + 0.499999999999992i
  0.300000000000149 + 0.000000000000000i
</pre>Here is another:

<pre class="mcode-input">ff = @(z) (z.^3-1/8).*exp((-1-2i)*z);
roots3(ff)</pre><pre class="mcode-output">ans =
 -0.249999999999997 - 0.433012701892223i
 -0.249999999999997 + 0.433012701892213i
  0.499999999999995 + 0.000000000000001i
</pre><pre class="mcode-input">end</pre>References

[1] A. P. Austin, P. Kravanja and L. N. Trefethen, Numerical algorithms based on analytic function values at roots of unity, SIAM Journal on Numerical Analysis, to appear.

[2] L. M. Delves and J. N. Lyness, A numerical method for lcoating the zeros of an analytic function, Mathematics of Computation 21 (1967), 543-560.

[3] D. Jackson, Roots and singular points of analytic functions, Annals of Matheamtics 19 (1917), 142-151.

[4] J. E. McCune, Exact inversion of dispersion relations, Physics of Fluids 9 (1966), 2082-2084.

