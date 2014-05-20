---
title: "Mean Value Theorem"
layout: example
authordate: "Kuan Xu, 23rd October 2012"
meta: "(Chebfun example calc/MeanValueTheorem.m) [Tags: #calculus, #ROOTS]"
---

The mean value theorem states that for an arc between two endpoints, there is at least one point at which the tangent to the arc is parallel to the secant through the endpoints. More specifically, if a function $f$ is continuous on the closed interval $[a, b]$ $(a &lt; b)$ and it is differentiable on the open interval $(a, b)$, then there exists a point $c \in (a, b)$ such that

$$f^{\prime}(c) = \frac{f(b) - f(a)}{b-a}.$$

Here is an example, where we try to locate a suitable point $c$. Let's consider $f(x) = (x-1)(x-2)(x-3)$ on the interval $[-6, 6]$.

<pre class="mcode-input">a = -6;
b = 6;
dom = [a b];
x = chebfun('x', dom);
f = (x-1).*(x-2).*(x-3);</pre>We calculate the value of (1):

<pre class="mcode-input">sl = (f(b) - f(a))/(b - a);</pre>We calculate the derivative of $f$:

<pre class="mcode-input">fprime = diff(f);</pre>Now we compute the value of $c$.

<pre class="mcode-input">c = roots(fprime - sl)</pre><pre class="mcode-output">c =
    -2
     6
</pre>Two roots are returned. We keep the first one and ignore the other as it lies at an endpoint of the interval. The following plot visualizes this example: the tangent line at $c$ (red) is parallel to the secant (black, dashed).

<pre class="mcode-input">LW = 'linewidth'; lw = 1.6;
plot(f, LW, lw), hold on
plot([a b], [f(a) f(b)], '--k', LW, lw)
plot(c(1), f(c(1)),'.r', 'markersize', 20)
L = 2;
plot([c(1)-L c(1)+L],[f(c(1))-L*sl f(c(1))+L*sl], 'r', LW, lw)</pre><img src="img/MeanValueTheorem_01.png" alt="">

