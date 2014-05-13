%% END :: Rightmost point of a CHEBFUN domain (or last row/col of quasimatrix).
%    END(F, K, N) This function is called for indexing expressions involving a
%    CHEBFUN F when END is part of the K-th index out of N indices.
% 
%    If F is a column CHEBFUN and K is 1, this function returns the last point
%    in F's domain. If K is 2, it returns the index of F's last column.
% 
%    If F is a row CHEBFUN and K is 1, this function returns the index of F's
%    last row. If K is 2, it returns the last point in F's domain.
%