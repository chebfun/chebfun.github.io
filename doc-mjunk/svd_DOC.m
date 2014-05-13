%% SVD :: Singular value decomposition of a CHEBFUN.
%    [U, S, V] = SVD(A) or SVD(A, 0), where A is an array-valued column CHEBFUN
%    with N columns, produces an N x N diagonal matrix S with nonnegative
%    diagonal elements in nonincreasing order, a column CHEBFUN U with N
%    orthonormal columns, and an N x N unitary matrix V such that A = U*S*V'.
% 
%    If A is a row CHEBFUN with N rows, then U is a unitary matrix and V' is an
%    array-valued row CHEBFUN.
% 
%    S = SVD(A) returns a vector containing the singular values of A.
% 
%    The computation is carried out by orthogonalization operations following
%    Battles's 2005 thesis [1].
% 
%    [1] Z. Battles, "Numerical Linear Algebra for Continuous Functions",
%    D. Phil. thesis, University of Oxford, 2005.
% 
%  See also QR, MRDIVIDE, RANK.
%