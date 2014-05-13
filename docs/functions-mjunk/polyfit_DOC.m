%% POLYFIT :: Fit polynomial to a CHEBFUN.
%    F = POLYFIT(Y, N) returns a CHEBFUN F corresponding to the polynomial of
%    degree N that fits the CHEBFUN Y in the least-squares sense.
% 
%    If Y is a global polynomial of degree n then this code has an O(n (log n)^2)
%    complexity. If Y is piecewise polynomial then it has an O(n^2) complexity.
% 
%    F = POLYFIT(CHEBFUN, X, Y, N, D) returns a CHEBFUN F on the domain D which
%    corresponds to the polynomial of degree N that fits the data (X, Y) in the
%    least-squares sense. If D is not given, it is assumed to be [X(1), X(end)].
%    X should be a real-valued column vector.
% 
%    Note CHEBFUN/POLYFIT does not not support more than one output argument in
%    the way that MATLAB/POLYFIT does.
% 
%  See also INTERP1.
%