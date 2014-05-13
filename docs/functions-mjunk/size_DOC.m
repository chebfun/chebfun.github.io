%% SIZE :: Size of a CHEBFUN.
%    S = SIZE(F) returns a two-element row vector S = [S1, S2]. If F is a column
%    CHEBFUN, then S1 is infinity and S2 is the number of columns. For a row
%    CHEBFUN, S1 is the number of rows and S2 is infinity. If the finite
%    dimension is > 1, we say F is "array-valued" or a "quasimatrix".
% 
%    [S1, S2] = SIZE(F) returns the dimensions of F as separate output variables.
% 
%    S = SIZE(F, DIM) returns the dimension specified by the scalar DIM.
% 
%  See also LENGTH.
%