%% ODE15S :: Solve stiff differential equations and DAEs. Output a CHEBFUN.
%    Y = CHEBFUN.ODE15S(ODEFUN, D, ...) applies the standard ODE15S method to
%    solve an initial-value problem on the domain D. The result is then converted
%    to a piecewise-defined CHEBFUN with one column per solution component.
% 
%    CHEBFUN.ODE15S has the same calling sequence as Matlab's standard ODE15S. 
% 
%    One can also write [T, Y] = ODE15S(...), in which case T is a linear CHEBFUN
%    on the domain D.
% 
%  Example:
%    y = chebfun.ode15s(@vdp1000, [0, 3000], [2 ; 0]); % Solve Van der Pol problem
%    roots(y(:,1) - 1);                                % Find when y = 1
% 
%  See also ODESET, ODE113, ODE45,
%