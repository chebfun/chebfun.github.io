%% FLIPUD :: Flip/reverse a CHEBFUN.
%    G = FLIPUD(F), where F is a column CHEBFUN, returns a CHEBFUN G with the
%    same domain as F but reversed; that is, G(x) = F(a+b-x), where the domain is
%    [a,b].
% 
%    FLIPUD(F), where F is an array-valued row CHEBFUN or a quasimatrix, reverses
%    the order of the rows of F.
% 
%  See also FLIPLR.
%