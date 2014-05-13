%% ROUND :: Round a CHEBFUN pointwise to nearest integer.
%    G = ROUND(F) returns the CHEBFUN G such that G(x) = ROUND(F(x)) for each x
%    in F.domain.
% 
%    If F is complex, then the G = ROUND(REAL(F)) + 1i*ROUND(IMAG(F)).
% 
%  See also FIX, FLOOR, CEIL.
%