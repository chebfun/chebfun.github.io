%% CUMSUM :: Indefinite integral of a CHEBFUN.
%    G = CUMSUM(F) is the indefinite integral of the column CHEBFUN F. G will
%    typically be normalised so that G(F.domain(1)) = 0. The exception to this is
%    when computing indefinite integrals of functions whose indefinite integrals
%    have singularities. In this case, the arbitrary constant in the indefinite
%    integral is chosen to make the representation of G as simple as possible.
% 
%    CUMSUM(F, N) returns the Nth integral of F. If N is not an integer then
%    CUMSUM(F, N) returns the fractional integral of order N as defined by the
%    Riemann-Liouville integral.
% 
%    CUMSUM(F, N, 2) will take the Mth cumulative sum over the columns F an
%    array-valued CHEBFUN or quasimatrix.
% 
%  See also SUM, INTEGRAL.
%