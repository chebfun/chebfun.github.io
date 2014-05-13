%% QUANTUMSTATES ::  :: Compute and plot Schroedinger eigenstates.
%    This program computes and plots eigenvalues lambda and eigenfunctions u
%    for the equation Lu = lambda*u, where L is the Schroedinger operator
%    defined by Lu(x) = -h^2*u"(u) + V(x)*u(x).  Here h is a small parameter
%    and the potential function V is given as a Chebfun. The domain of the
%    problem is the domain of V, with boundary conditions u=0 at both ends.
% 
%    Inputs:
% 
%        QUANTUMSTATES(V) plots 10 eigenstates for h=0.1
%        QUANTUMSTATES(V, n) plots n eigenstates for h=0.1
%        QUANTUMSTATES(V, h), h noninteger, plots 10 eigenstates for given h
%        QUANTUMSTATES(V, n, h) plots n eigenstates for given h
%        QUANTUMSTATES(..., 'noplot') produces no plot
% 
%    Outputs:
%  
%        D = QUANTUMSTATES(...) returns a vector D of eigenvalues
%        [U, D] = QUANTUMSTATES(...) returns a quasimatrix U of eigenfunctions
%        and a diagonal matrix of eigenvalues
% 
%    Examples:
% 
%        x = chebfun('x', [-3, 3]);
%        V = x.^2;                 % harmonic oscillator, or
%        V = abs(x);               % absolute value, or
%        V = (x.^2-1).^4;          % double well
%