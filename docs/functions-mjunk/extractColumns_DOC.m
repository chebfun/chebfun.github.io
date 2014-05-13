%% EXTRACTCOLUMNS :: Extract columns (or rows) of an array-valued CHEBFUN.
%    G = EXTRACTCOLUMNS(F, COLIDX) extracts the columns specified by the row
%    vector COLIDX from the CHEBFUN F so that G = F(:,COLIDX). COLIDX need not be
%    increasing in order or unique, but it must contain only integers in the
%    range [1, M] where F has M columns.
% 
%    If F is a row CHEBFUN, then EXTRACTCOLUMNS(F, ROWIDX) behaves as described
%    above, except that extracts the rows of F so G = F(ROWIDX,:).
% 
%  See also MAT2CELL.
%