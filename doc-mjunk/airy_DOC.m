%% AIRY :: Airy function of a CHEBFUN.
%    AIRY(F) returns the Airy function Ai(F) of a CHEBFUN F.
% 
%    AIRY(K, F) returns various Airy functions specified by K:
%      0 - (default) is the same as airy(Z)
%      1 - returns the derivative, Ai'(Z)
%      2 - returns the Airy function of the second kind, Bi(Z)
%      3 - returns the derivative, Bi'(Z)
% 
%    AIRY(K, F, SCALE) returns a scaled AIRY(K, F) specified by SCALE:
%      0 - (default) is that same as AIRY(K, Z)
%      1 - returns airy(K, F) scaled by EXP(2/3*F.^(3/2)) for K = 0, 1,
%          and scaled by EXP(-ABS(2/3.*REAL(F.^(3/2)))) for K = 2, 3.
% 
%  See also BESSELJ.
%