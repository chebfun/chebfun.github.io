%% ODE113 :: Solve stiff differential equations and DAEs. Output a CHEBFUN.
%    Y = CHEBFUN.ODE113(ODEFUN, D, ...) applies the standard ODE113 method to
%    solve an initial-value problem on the domain D. The result is then converted
%    to a piecewise-defined CHEBFUN with one column per solution component.
% 
%    CHEBFUN.ODE113 has the same calling sequence as Matlab's standard ODE113. 
% 
%    One can also write [T, Y] = ODE113(...), in which case T is a linear CHEBFUN
%    on the domain D.
% 
%  Example:
%    y = chebfun.ode113(@vdp1, [0, 20], [2 ; 0]); % Solve Van der Pol problem
%    roots(y(:,1) - 1);                           % Find when y = 1
% 
%  See also ODESET, ODE15s, ODE45.
%