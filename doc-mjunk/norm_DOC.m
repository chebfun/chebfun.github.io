%% NORM :: Norm of a CHEBFUN object.
%    For scalar-valued column CHEBFUN objects:
%        NORM(F) = sqrt(integral of abs(F)^2).
%        NORM(F, 2) is the same as NORM(F).
%        NORM(F, 'fro') is also the same as NORM(F).
%        NORM(F, 1) = integral of abs(F).
%        NORM(F, P) = (integral of abs(F)^P)^(1/P).
%        NORM(F, inf) = max(abs(F)).
%        NORM(F, -inf) = min(abs(F)).
% 
%    For array-valued column CHEBFUN objects:
%        NORM(F) is the Frobenius norm, sqrt(sum(svd(F).^2)).
%        NORM(F, 'fro') is the same as NORM(F).
%        NORM(F, 1) is the maximum of the 1-norms of the columns of F.
%        NORM(F, 2) is the largest singular value of F.
%        NORM(F, inf) is the maximum of the 1-norms of the rows of F.
%        NORM(F, -inf) is the minimum of the 1-norms of the rows of F.
%        NORM(F, P) is the P-th root of the maximum of the sum of the P-th
%                   powers of the magnitudes of the columns of F.
% 
%  Furthermore, the +\-inf norms for scalar-valued CHEBFUN objects may also
%  return a second output, giving the position where the max/min occurs. For
%  array-valued CHEBFUN objects, the 1 norm can return as its 2nd output the
%  index of the column with the largest norm, while the inf, -inf, and p-norms
%  can return as their 2nd output the point in the domain of the CHEBFUN at
%  which the norm is attained.
% 
%  If F is a row CHEBFUN, NORM(F, TYPE) is equal to NORM(F.', TYPE).
%