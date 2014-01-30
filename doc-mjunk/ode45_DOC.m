%% ODE45 :: Solve stiff differential equations and DAEs. Output a CHEBFUN.
%    Y = CHEBFUN.ODE45(ODEFUN, D, ...) applies the standard ODE45 method to
%    solve an initial-value problem on the domain D. The result is then converted
%    to a piecewise-defined CHEBFUN with one column per solution component.
% 
%    CHEBFUN.ODE45 has the same calling sequence as Matlab's standard ODE45. 
% 
%    One can also write [T, Y] = ODE45(...), in which case T is a linear CHEBFUN
%    on the domain D.
% 
%  Example:
%    y = chebfun.ode45(@vdp1, [0, 20], [2 ; 0]); % Solve Van der Pol problem
%    roots(y(:, 1) - 1);                         % Find when y = 1
% 
%  See also ODESET, ODE113, ODE15S,
%