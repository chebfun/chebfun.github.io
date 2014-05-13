%% DIRAC ::  :: Dirac delta function.
%  D = DIRAC(F) returns a CHEBFUN D which is zero on the domain of the CHEBFUN F
%  except at the simple roots of F, where it is infinite. This infinity may be
%  examined by looking at the second row of the matrix D.IMPS
% 
%  DIRAC(F, N) is the nth derivative of DIRAC(F).
% 
%  DIRAC(F) is not defined if F has a zero of order greater than one within the
%  domain of F.
% 
%  If F has break-points, they should not coinicde with the roots of F. However,
%  F can have simple roots at either end points of its domain.
% 
%  See also HEAVISIDE.
%