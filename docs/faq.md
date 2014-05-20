---
title: Frequently Asked Questions
layout: basic
---

If you have a Chebfun-related question that doesn't appear on this list, please ask us at <a href="mailto:discuss@chebfun.org">discuss@chebfun.org</a>.

----

1. *How do I get Chebfun?* <br/>
  Go to the [download][/download] section, download Chebfun (less than 2MB), put it in
  your Matlab path (the easiest way to do this is probably using the command
  "<a href="http://www.mathworks.com/help/t
  echdoc/ref/pathtool.html">pathtool</a>"), and you're ready to go. We
  recommend running "chebtest" first to get the package warmed up (i.e. loaded
  into your machine's cache) and to make sure it is running properly.

1. *What version of Matlab do I need?* <br/>
  Chebfun is compatable with [Matlab][matlab] Versions 7.4 (R2007a) and higher.

1. *How do I learn Chebfun?* <br/>
  Take a look at the [gallery of examples][/examples] or the
  [Chebfun Guide][guide], or just type `x = chebfun('x')` and
  start playing with commands like these:
  <br/>`f = exp(x).*sin(20*x)`
  <br/>`plot(f)`
  <br/>`roots(f)`
  <br/>`max(f)`
  <br/>`g = exp(f)`
  <br/>`h = abs(f)`
  <br/>`j = round(g)`
  <br/>`k = max(g,h)`

1. *What about 2D or 3D?* <br/>
  We have a project called [Chebfun2], led by <a
  href="https://www.maths.ox.ac.uk/people/profiles/alex.townsend/">Alex
  Townsend</a>, that extends Chebfun-like computations to functions defined on
  rectangles. We believe this is comparable to the power and speed of Chebfun
  in 1D for many cases. We are considering a Chebfun in 3D.

1. *Why is Chebfun based on [Matlab][matlab] rather than a non-commercial platform like C, Python, or Octave?* <br/>
  The Chebfun concept comes straight from Matlab &mdash; it's all about
  overloading Matlab commands for functions instead of vectors.  And certainly
  most of our users at present are people who already use Matlab, who can get
  start using Chebfun the minute they see it.  At the same time, we recognize
  that other platforms for Chebfun may be worth exploring.

1. *How do I get involved?* <br/>
  We are always glad to receive comments at <a
  href="mailto:discuss@chebfun.org">discuss@chebfun.org</a>, and we usually
  respond quickly to questions.  We are especially eager to receive drafts of
  proposed new [Examples] for inclusion in our collection! Furthermore, since
  the release of V4.0 in March 2011, Chebfun has been an <a
  href="http://en.wikipedia.org/wiki/Open-source_software ">open-source</a>
  project. If you're interested in helping to develop Chebfun, please take a
  look at the [Developer Zone][/develop].

1. *What is a chebfun?* <br/>
  A chebfun is a Matlab object that behaves syntactically like a Matlab vector
  and mathematically like a function of a real variable defined on an interval
  $[a,b]$.
  See [Chapter 1][guide/chap1] of the [Chebfun Guide][guide].

1. *What is a fun?* <br/>
  A chebfun consists of one or more pieces, each of which is represented by a
  polynomial interpolant in Chebyshev points. Each of these pieces is called a
  fun.

1. *What is a chebop?* <br/>
  A chebop is an object in the Chebfun system that behaves like a linear or
  nonlinear operator acting on chebfuns. For example, if `f` is a chebfun
  corresponding to `sin(x)` on the interval `[a,b]` and `L` is a chebop
  corresponding to the differentiation operator on `[a,b]`, then `L(f)` is a
  chebfun corresponding to `cos(x)` on `[a,b]`. See [Chapter 7][guide/chap7]
  and [Chapter 10][guide/chap10] of the [Chebfun Guide][guide].

1. *What's the difference between Chebfun and chebfun?* <br/>
  Chebfun with a capital *C* is the name of the project, and of the software
  system, whereas chebfun with a lower-case *c* is the name for an object in
  this system (namely a function defined on an interval).

1. *What's the difference between `sin(chebfun('x'))` and `chebfun('sin(x)')`?* <br/>
  Any call of `chebfun(f)` evaluates `f` numerically at many points in order
  to determine an accurate polynomial representation of it. Once a chebfun is
  created, functions like `sin()` can be applied to it to create a functional
  composition, which is then given a polynomial representation. Most of the
  time, you would not expect much of a difference between starting with
  polynomials and composing, or finding a polynomial directly for the composed
  expression. However, because the underlying methods are numerical rather
  than symbolic, the two techniques are not identical. An extreme example
  would be `sin(x).*exp(-x)` if `x` is a chebfun defined on the interval
  `[0,Inf]`. This fails because the first step is to represent `sin(x)` by a
  mapped polynomial on an infinite domain, which is impossible. Yet
  `chebfun('sin(x).*exp(-x)')` would be fine on the same domain, because the
  only polynomial representation requested is for a function that decays
  rapidly.