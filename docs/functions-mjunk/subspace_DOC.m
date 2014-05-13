%% SUBSPACE :: Angle between subspaces.
%    SUBSPACE(A, B) finds the angle between two subspaces specified by the
%    columns (or rows, if A and B are transposed) of the CHEBFUN objects A and B.
% 
%    If the angle is small, the two spaces are nearly linearly dependent.
% 
%    References:
%    [1] A. Bjorck & G. Golub, Numerical methods for computing angles between 
%        linear subspaces, Math. Comp. 27 (1973), pp. 579-594.
%    [2] P.-A. Wedin, On angles between subspaces of a finite dimensional inner 
%        product space, in B. Kagstrom & A. Ruhe (Eds.), Matrix Pencils, Lecture 
%        Notes in Mathematics 973, Springer, 1983, pp. 263-285.
%    [3] A. V. Knyazev and M. E. Argentati, Principal Angles between Subspaces
%        in an A-Based Scalar Product: Algorithms and Perturbation Estimates.
%        SIAM Journal on Scientific Computing, 23 (2002), no. 6, 2009-2041.
%        http://epubs.siam.org:80/sam-bin/dbq/article/37733
%