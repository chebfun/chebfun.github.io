%% FIND :: Find locations of nonzeros in a CHEBFUN.
%    FIND(F) returns a vector of all values at which the CHEBFUN F is nonzero.
% 
%    [R, C] = FIND(F) returns two column vectors of the same length such that
%    [F(R(n),C(n)) for all n = 1:length(R)] is the list of all nonzero values of
%    the CHEBFUN F. One of the outputs holds dependent variable values, and
%    the other holds CHEBFUN row or column indices.
% 
%    If the set of nonzero locations is not finite, an error is thrown.
% 
%  Example:
%    f = chebfun(@sin, [0. 2*pi]);
%    format long, find(f == 1/2) / pi
% 
%  See also ROOTS, EQ.
%