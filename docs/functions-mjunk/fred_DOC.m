%% FRED :: Fredholm integral operator.
% 
%    F = FRED(K, V) computes the Fredholm integral with kernel K:
% 
%       (F*v)(x) = int( K(x,y)*v(y), y=a..b ),
% 
%    where [a b] = domain(V). The kernel function K(x,y) should be smooth for
%    best results.
% 
%    K must be defined as a function of two inputs X and Y. These may be scalar
%    and vector, or they may be matrices defined by NDGRID to represent a tensor
%    product of points in DxD.
% 
%    FRED(K, V, 'onevar') will avoid calling K with tensor product matrices X and
%    Y. Instead, the kernel function K should interpret a call K(x) as a vector x
%    defining the tensor product grid. This format allows a separable or sparse
%    representation for increased efficiency in some cases.
% 
%  See also VOLT, CHEBOP.
%