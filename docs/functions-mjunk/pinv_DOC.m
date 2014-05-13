%% PINV :: Pseudoinverse of a column CHEBFUN.
%    X = PINV(A) produces a row CHEBFUN X so that A*X*A = A and X*A*X = X.
% 
%    X = PINV(A, TOL) uses the tolerance TOL. The computation uses SVD(A) and any
%    singular value less than the tolerance TOL is treated as zero.
% 
%  See also SVD, RANK.
%