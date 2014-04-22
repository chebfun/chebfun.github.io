---
title: Approximations and Oscillation of Error
layout: example
authordate: Mohsin Javed, 22nd October 2013
example: approx/OscError.m
tags: "#approximation, #bestapproximation, #l2approximation, #interpolation"
---

<pre class="mcode-input">LW = 'linewidth'; lw = 2;
MS = 'markersize';
FS = 'fontsize'; fs = 12;</pre>
## Introduction
Let us approximate a continuous function $f$ defined on $[-1,1]$ in three different ways.

<pre class="mcode-input">f = chebfun( @(x) exp(x) + .5*sin(2*pi*x), 10);
plot(f, LW, lw),
title( 'Function to be Approximated', FS, fs), hold on</pre><img src="img/OscError_01.png" alt="">


## Best Approximation in $\infty$-Norm
The existence and uniqueness of the the best mini-max approximation of $f$ in the space of polynomials of degree upto $n$ is well known. The best degree $n$ approximation is characterized by the equioscillation of the error at least $n+2$ times. The error consequently changes sign at least $n+1$ times [2]. Let us suppose we want to find the degree $n$ best approximation of this function. Chebfun's $\verb|remez|$ command can be used to find this polynomial:

<pre class="mcode-input">n = 4;
p = remez(f, n)
plot(p, 'r-.', LW, lw)
title('Function and its Best Approximation', FS, fs), hold off</pre><pre class="mcode-output">p = 
   chebfun column (1 smooth piece)
       interval       length   endpoint values  
[      -1,       1]        5      0.81      2.3 
Epslevel = 1.948362e-15.  Vscale = 2.279296e+00.
</pre><img src="img/OscError_02.png" alt="">

<pre class="mcode-input">clf, hold on
h1 = plot(f - p, 'r', LW, lw);
title('Approximation Error', FS, fs)
maxError = norm(f-p, inf);
plot( [-1, 1], [maxError maxError], 'k--', LW, 1.5)
plot( [-1, 1], -[maxError maxError], 'k--', LW, 1.5)
plot( [-1, 1], [0 0], 'k--', LW, 1.5)</pre><img src="img/OscError_03.png" alt="">

We can see that the error equioscillates $n+2$ times with $n+1$ sign changes.


## Best Weighted $L_2$ Approximation
It is also interesting to note that the error curve of the best weighted $L_2$ approximation of a continuous function by a degree $n$ polynomial has the same oscillation property. The error curve is guaranteed to change sign at least $n+1$ times [1], however, in this case, the error curve does not generally equioscillate. For the same function, we now construct a degree $n$ approximation by Chebyshev polynomials. This can be done in Chebfun using the 'trunc' option, since best $L_2$ approximations are simply given by truncated Fourier series, (a Chebyshev-Fourier series in this case):

<pre class="mcode-input">fn = chebfun( @(x) f(x), 'trunc', n + 1)
h2 = plot(f - fn, 'k', LW, lw);</pre><pre class="mcode-output">fn = 
   chebfun column (1 smooth piece)
       interval       length   endpoint values  
[      -1,       1]        5      0.61      2.5 
Epslevel = 1.793441e-15.  Vscale = 2.476185e+00.
</pre><img src="img/OscError_04.png" alt="">


## Best $L_2$ Approximation
We can also think of approximating the same function using Legendre polynomials. In this case, we can use Chebfun's $\verb|polyfit|$ command to generate the best $L_2$ approximating polynomial. This is just the truncated Fourier-Legendre series expansion of the function $f$. The error curve again behaves as expected:

<pre class="mcode-input">pLn = polyfit(f, n)
h3 = plot(f - pLn, 'b', LW, lw);</pre><pre class="mcode-output">pLn = 
   chebfun column (1 smooth piece)
       interval       length   endpoint values  
[      -1,       1]        5      0.95      2.1 
Epslevel = 2.081656e-15.  Vscale = 2.133346e+00.
</pre><img src="img/OscError_05.png" alt="">


## Interpolation
The degree $n$ interpolant of a function by definition hits the function normally at least $n+1$ times and hence the error curve again has at least $n+1$ sign changes.

<pre class="mcode-input">pn = chebfun( @(x) f(x), n + 1)
h4 = plot( f - pn, 'g', LW, lw); hold off
legend( [h1(:,1), h2(:,1), h3(:,1), h4(:,1)], ...
    {'L_\infty-Best', 'L_2-Cheb', 'L_2-Legn', 'Interp'})</pre><pre class="mcode-output">pn = 
   chebfun column (1 smooth piece)
       interval       length   endpoint values  
[      -1,       1]        5      0.37      2.7 
Epslevel = 1.633713e-15.  Vscale = 2.718282e+00.
</pre><img src="img/OscError_06.png" alt="">

Notice that since Chebfun uses Chebyshev points of the second kind for interpolation, which include the end points $-1$ and $1$, the error curve will always have zeros at $-1$ and $1$.


## References
[1] P. J. Davis, Interpolation and Approximation, Blaisdell Publishing Company, 1965.

[2] L. N. Trefethen, Approximation Theory and Approximation Practice, SIAM, 2013.

