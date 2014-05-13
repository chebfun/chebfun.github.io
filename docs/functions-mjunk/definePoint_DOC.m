%% DEFINEPOINT :: Supply new definition for a CHEBFUN at a point or set of points.
%    F = DEFINEPOINT(F, S, V) redefines the CHEBFUN F to take the values V at the
%    points S in F.DOMAIN. If F is a scalar-valued CHEBFUN, then S and V should
%    be vectors of the same length. If F is an array-valued CHEBFUN or a
%    quasimatrix, then V should be a matrix of size LENGTH(S)*NUMCOLUMNS(F).
% 
%    An equivalent syntax is F(S) = V.
% 
%  See also SUBSASGN, RESTRICT, DEFINEINTERVAL.
%