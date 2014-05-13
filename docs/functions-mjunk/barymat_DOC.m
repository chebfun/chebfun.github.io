%% BARYMAT  Barycentric Interpolation Matrix.
%    BARYMAT(Y, X, W), where Y is a column vector of length M and X and W are
%    column and row vectors of length N respectively, returns the M*N matrix
%    which interpolates data from the grid X to the grid Y using the 2nd-kind
%    barycentric interpolation formula with barycentric weights W. If W is not
%    supplied it is assumed to be the weights for polynomial interpolation at a
%    2nd-kind Chebyshev grid: W(j) = (-1)^j, W([1, N]) = 0.5*W([1, N]).
%