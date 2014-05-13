%% ASSIGNCOLUMNS :: Assign columns (or rows) of an array-valued CHEBFUN.
%    F = ASSIGNCOLUMNS(F, COLIDX, G), if F is a column CHEBFUN, assigns the
%    columns of the CHEBFUN G (or rows, if G is a row CHEBFUN) to the columns
%    specified by the vector COLIDX so that F(:,COLIDX) = G. COLIDX need not be
%    increasing in order or unique but must contain only integers in the range
%    [1, M] (where F has M columns) and have a length equal to the number of
%    columns (or rows) of G. Setting COLIDX to ':' has the same effect as setting
%    it to 1:SIZE(F, 2).
% 
%    If F is a row CHEBFUN, then ASSIGNCOLUMNS(F, ROWIDX, G) behaves as described
%    above, except that it assigns the rows of F so that F(ROWIDX,:) = G.
% 
%    In both cases, G may also be a numerical vector of the appropriate
%    orientation (column or row).  In this case, G is treated as an array-valued
%    CHEBFUN with a constant value equal to this vector.
% 
%  See also EXTRACTCOLUMNS, MAT2CELL.
%