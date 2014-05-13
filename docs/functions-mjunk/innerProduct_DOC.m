%% INNERPRODUCT :: Compute the inner product of two CHEBFUN objects.
%    INNERPRODUCT(F, G) returns the L2 inner product of the two CHEBFUN objects F
%    and G (conjugate linear in F).
% 
%    If F and/or G are array-valued CHEBFUN objects or quasimatrices, then the
%    result is a matrix whose i,j entry is the inner product of the ith column of
%    F with the jth column of G.
% 
%  See also NORM.
%