%% MAT2CELL :: Convert an array-valued CHEBFUN to a cell array of CHEBFUN objects.
%    G = MAT2CELL(F, C) breaks up the array-valued CHEBFUN F into a cell array G
%    of CHEBFUN objects. C is a vector of sizes and must sum to the number of
%    components of F (i.e., the number of columns (rows) of F if F is a column
%    (row) CHEBFUN). The elements of C determine the size of each cell in G so
%    that
%                SIZE(G{I}, 2) == C(I), for I = 1:LENGTH(C)
%    if F is a column CHEBFUN or
%                SIZE(G{I}, 1) == C(I), for I = 1:LENGTH(C)
%    if F is a row CHEBFUN.
% 
%    G = MAT2CELL(F) assumes is C a vector with all entries equal to 1 whose
%    length is equal to the number of components of F.
% 
%    G = MAT2CELL(F, M, N) is similar to above, but allows three input arguments
%    so as to be consistent with the built-in MAT2CELL function.  If F is a
%    column CHEBFUN, then N takes the role of C above, and M should be the
%    scalar value 1.  If F is a row CHEBFUN, then M takes the role of C above,
%    and N should be the scalar value 1.
% 
%  Example:
%    f = chebfun(@(x) [sin(x), cos(x), exp(x), x], [0, pi])
%    g = mat2cell(f, 1, [1, 2, 1])
% 
%  See also NUM2CELL.
%