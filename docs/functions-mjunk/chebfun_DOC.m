%% CHEBFUN :: CHEBFUN class for representing functions on [a,b].
% 
%    Class for approximating functions defined on finite, semi-infinite, or
%    doubly-infinite intervals [a,b]. Functions may be smooth, piecewise smooth,
%    weakly singular, or blow up on the interval.
% 
%  CHEBFUN(F) constructs a CHEBFUN object representing the function F on the
%  interval [-1,1]. F may be a string, e.g., 'sin(x)', a function handle, e.g.,
%  @(x) x.^2 + 2*x + 1, or a vector of numbers. In the first two instances, F
%  should be "vectorized" in the sense that it may be evaluated at a column
%  vector of points x(:) in [-1,1] and return an output of size NxM where N =
%  length(x(:)). If this is not possible then the flag CHEBFUN(F, 'vectorize')
%  should be passed. CHEBFUN(F, 'vectorcheck', 'off') disables the automatic
%  checking for vector input. Additionally, F may be a CHEBFUN, in which case
%  CHEBFUN(F) is equivalent to CHEBFUN(@(X) FEVAL(F, X)). CHEBFUN() returns an
%  empty CHEBFUN object.
% 
%  CHEBFUN(F, [A, B]) specifies an interval [A,B] on which the CHEBFUN is
%  defined, where A and/or B may be infinite. CHEBFUN(F, ENDS), where ENDS is a
%  1x(K+1) vector of unique ascending values, specifies a piecewise smooth
%  CHEBFUN defined on the interval [ENDS(1), ENDS(K+1)] with additional interior
%  breaks at ENDS(2), ..., ENDS(K). Specifying these breaks can be particularly
%  useful if F is known to have discontinuities. For example,
%    CHEBFUN(@(x) abs(x), [-1, 0, 1]).
%  If a domain is passed to the constructor, it should always be the 2nd input.
% 
%  CHEBFUN(A) or CHEBFUN(A, 'chebkind', 2), where A is an Nx1 matrix, constructs
%  a CHEBFUN object which interpolates the data in A on an N-point Chebyshev grid
%  of the second kind (see >> help chebpts). CHEBFUN(A, 'chebkind', 1) and
%  CHEBFUN(A, 'equi') are similar, but here the data is assumed to come from a
%  1st-kind Chebyshev or equispaced grid linspace(-1, 1, N), respectively. (In
%  the latter case, a smooth interpolant is constructed using an adaptive
%  Floater-Hormann scheme [Numer. Math. 107, 315-331 (2007)].). CHEBFUN(F, N) or
%  CHEBFUN(F, N, 'chebkind', 2) is equivalent to CHEBFUN(feval(F, chebpts(N)).
% 
%  CHEBFUN({F1,...,Fk}, ENDS) constructs a piecewise smooth CHEBFUN which
%  represents Fj on the interval [ENDS(j), END(j+1)]. Each entry Fj may be a
%  string, function handle, or vector of doubles. For example
%    CHEBFUN({@(x) sin(x), @(x) cos(x)}, [-1, 0, 1])
% 
%  CHEBFUN(F, PREF) or CHEBFUN(F, [A, B], PREF) constructs a CHEBFUN object from
%  F with the options determined by the CHEBFUNPREF object PREF. Construction time
%  options may also be passed directly to the constructor in the form CHEBFUN(F,
%  [A, B], PROP1, VAL1, PROP2, VAL2, ...). (See CHEBFUNPREF for details of the
%  various preference options and their defaults.). In particular, CHEBFUN(F,
%  'splitting', 'on') allows the constructor to adaptively determine breakpoints
%  to better represent piecewise smooth functions F. For example,
%    CHEBFUN(@(x) sign(x - .3), [-1, 1], 'splitting', 'on')
%  CHEBFUN(F, 'extrapolate', 'on') prevents the constructor from evaluating the
%  function F at the endpoints of the domain. Note that it is not possible to mix
%  PROP/VAL and PREF inputs in a single constructor call.
% 
%  CHEBFUN(F, 'trunc', N) returns a smooth N-point CHEBFUN constructed by
%  computing the first N Chebyshev coefficients from their integral form, rather
%  than by interpolation at Chebyshev points.
% 
%  CHEBFUN(F, ...), where F is an NxM matrix or an array-valued function handle,
%  returns an "array-valued" CHEBFUN. For example,
%    CHEBFUN(rand(14, 2))
%  or
%    CHEBFUN(@(x) [sin(x), cos(x)])
%  Note that each column in an array-valued CHEBFUN object is discretized in the
%  same way (i.e., the same breakpoint locations and the same underlying
%  representation). For more details see ">> help quasimatrix". Note the
%  difference between
%    CHEBFUN(@(x) [sin(x), cos(x)], [-1, 0, 1])
%  and
%    CHEBFUN({@(x) sin(x), @(x) cos(x)}, [-1, 0, 1]).
%  The former constructs an array-valued CHEBFUN with both columns defined on the
%  domain [-1, 0, 1]. The latter defines a single column CHEBFUN which represents
%  sin(x) in the interval [-1, 0) and cos(x) on the interval (0, 1]. 
% 
%  See also CHEBFUNPREF, CHEBPTS.
%