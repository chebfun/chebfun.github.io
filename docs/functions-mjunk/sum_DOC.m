%% SUM :: Definite integral of a CHEBFUN.
%    SUM(F) is the integral of a column CHEBFUN F over its domain of definition.
% 
%    SUM(F, A, B), where A and B are scalars, integrates a column CHEBFUN F over
%    [A, B], which must be a subdomain of F.domain:
% 
%                          B
%                          /
%                SUM(F) =  | F(t) dt.
%                          /
%                         A
% 
%    SUM(F, A, B), where A and B are CHEBFUN objects, returns a CHEBFUN S which
%    satisfies
% 
%                        B(s)
%                        /
%                S(s) =  | F(t) dt.
%                        /
%                      A(s)
% 
%    SUM(F, DIM), where DIM is one of 1, 2, sums F over the dimension DIM. If F
%    is a column CHEBFUN and DIM = 1 or if F is a row CHEBFUN and DIM = 2 then
%    this integrates in the continuous dimension of F, as described above.
%    Otherwise, SUM(F, DIM) sums across the columns (rows) of the column (row)
%    CHEBFUN F.
% 
%  See also CUMSUM, DIFF.
%