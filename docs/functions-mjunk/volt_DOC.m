%% VOLT :: Volterra integral operator.
%    V = VOLT(K,D) constructs a chebop representing the Volterra integral
%    operator with kernel K for functions in domain D=[a,b]:
% 
%       (V*v)(x) = int( K(x,y) v(y), y = a..x )
% 
%    The kernel function K(x,y) should be smooth for best results.
% 
%    K must be defined as a function of two inputs X and Y. These may be scalar
%    and vector, or they may be matrices defined by NDGRID to represent a tensor
%    product of points in DxD.
% 
%    VOLT(K, D, 'onevar') will avoid calling K with tensor product matrices X and
%    Y. Instead, the kernel function K should interpret a call K(x) as a vector x
%    defining the tensor product grid. This format allows a separable or sparse
%    representation for increased efficiency in some cases.
% 
%  Example:
% 
%    To solve u(x) + x*int(exp(x-y)*u(y), y=0..x) = f(x) on [0, 2]:
%    V = chebop(@(x, u) u + x.*volt(@(x, y) exp(x-y), u), [0, 2]);
%    u = V \ sin(exp(3*x));
% 
%  See also FRED, CHEBOP.
%