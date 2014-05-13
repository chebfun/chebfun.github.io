%% DIFF :: Differentiation of a CHEBFUN.
%    DIFF(F), when F is a column CHEBFUN, computes a column CHEBFUN whose columns
%    are the derivatives of the corresponding columns in F.  At discontinuities,
%    DIFF creates a Dirac delta with coefficient equal to the size of the jump.
%    Dirac deltas already existing in F will increase their degree.
% 
%    DIFF(F), when F is an array-valued row CHEBFUN or a quasimatrix, computes
%    the first-order finite difference of F along its rows. The resulting row
%    CHEBFUN will have one row less than the number of rows in F.
% 
%    DIFF(F, N) or DIFF(F, N, 1) computes the Nth derivative of F if F is a
%    column CHEBFUN and the Nth-order finite difference of F along its rows if F
%    is a row CHEBFUN.
% 
%    DIFF(F, N, 2) is the Nth-order finite difference of F along its columns if
%    F is a column CHEBFUN and the Nth derivative of F if F is a row CHEBFUN.
% 
%  See also SUM, CUMSUM.
%