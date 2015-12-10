%% Fourier Spectral Collocation 
% Hadrien Montanelli, December 2014

%%
% (Chebfun example ode-linear/FourierCollocation)
% [Tags: #linearODE, #periodic]

%%
% A Fourier spectral collocation method is now available in Chebfun to solve
% ODEs with periodic boundary conditions. The solution is a chebfun using a
% `trigtech` representation, that is, a trigonometric interpolant in
% equispaced points. This is the default method for periodic boundary
% conditions.

%%
% Consider the first-order ODE
%
% $$ u'(x) + a(x)u(x) = f(x) $$
%
% on $[0,2\pi]$ with periodic boundary conditions, where $a(x)$ and $f(x)$  
% are continuous, periodic complex-valued functions. 
% This equation has a unique periodic solution if 
% $\overline{a}=\frac{1}{2\pi}\int_0^{2\pi}a(x)dx\neq ik$ for
% all integers $k$. 
% In particular, if $a(x)=a$ is a constant coefficient, this means 
% $a\neq ik$ for all $k$. 

%%
% Take for example $a(x)=1+\sin(\cos(10x))$ and $f(x)=\exp(\sin(x))$, and solve 
% it with Fourier collocation. Since $\overline{a}=1$, this a well-posed
% problem.
LW = 'linewidth'; dom = [0 2*pi];
L = chebop(@(x,u) diff(u) + (1+sin(cos(10*x))).*u, dom); 
L.bc = 'periodic';
f = chebfun(@(x) exp(sin(x)), dom);
u = L \ f
figure, plot(u, LW, 2)

%%
% The periodic solution $u$ satisfies the differential equation to high
% accuracy:
norm(L*u - f, inf)

%% 
% We can solve the same ODE with 2nd kind Chebyshev collocation using 
% a `cheboppref` object with `chebcolloc2` discretization. 
pref = cheboppref;
pref.discretization = @chebcolloc2;
v = solvebvp(L, f, pref)
hold on, plot(v, 'r', LW, 2)

%%
% The solution $v$ is now a chebfun with a `chebtech2` representation, that is, 
% a polynomial interpolant in 2nd-kind Chebyshev points.
% It satisfies the differential equation to high accuracy too,
norm(L*v - f, inf)

%%
% but is about $\pi/2$ times longer.
length(v)/length(u)

%%
% Consider now the second-order ODE 
%
% $$ u''(x) +  a_1(x)u'(x) + a_0(x)u(x) = f(x) $$
%
% on $[0,2\pi]$ with periodic boundary conditions, where $a_0(x)$,
% $a_1(x)$, and $f(x)$ are continuous, periodic complex-valued functions.
% Let $\Delta$ be the Hill discriminant of this equation
%
% $$ \Delta = \frac{c(2\pi) + s'(2\pi)}{2}, $$
%
% where $c(x)$ and $s(x)$ are the solutions of the homogeneous version of
% this equation, corresponding to the initial conditions $c(0)=1$, $c'(0)=0$ 
% and $s(0)=0$, $s'(0)=1$. The nonhomogeneous equation has a unique periodic 
% solution if $\Delta \neq 1$ [1].

%%
% Take $a_1(x)=\sin(\cos(x/2)^2)$, $a_0(x)=\cos(12\sin(x))$, and 
% $f(x)=\exp(\cos(2x))$, and solve it with Fourier collocation.
a1 = chebfun(@(x) sin(cos(x/2).^2), dom);
a0 = chebfun(@(x) cos(12*sin(x)), dom);
L = chebop(@(u) diff(u, 2) + a1.*diff(u) + a0.*u, dom); 
L.bc = 'periodic';
f = chebfun(@(x) exp(cos(2*x)), dom);
u = L \ f
figure, plot(u, LW, 2)

%%
% Again, the periodic solution $u$ satisfies the differential equation to high 
% accuracy:
norm(L*u - f, inf)

%%
% The solution with Chebyshev collocation in 2nd-kind points 
pref = cheboppref;
pref.discretization = @chebcolloc2;
v = solvebvp(L, f, pref)
hold on, plot(v, 'r', LW, 2)

%%
% is again about $\pi/2$ times longer:
length(v)/length(u)

%% 
% The second-order ODE we have solved is well-posed, and we can check this 
% by computing the Hill discriminant and verifying that it is not 1:
L.bc = [];
L.lbc = @(c) [ c - 1 ; diff(c) ];
c = L \ 0;
L.lbc = @(s) [ s ; diff(s) - 1 ];
s = L \ 0;
HillDiscr = 1/2*(c(2*pi) + feval(diff(s), 2*pi))

%% References
%
% 1. M. S. P. Eastham, _The Spectral Theory of Periodic Differential
%    Equations_, Scottish Academic Press, 1973.
