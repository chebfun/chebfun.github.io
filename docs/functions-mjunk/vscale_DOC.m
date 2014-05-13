%% VSCALE :: Vertical scale of a CHEBFUN object.
%    VSCALE(F) returns an estimate of the maximum absolute value of F. VSCALE
%    always returns a scalar, even when F is an array-valued CHEBFUN or a
%    quasimatrix. Vertical scales of each of the piecewise components and columns
%    of F are given by get(F, 'vscale-local');
% 
%  See also MAX, MINANADMAX.
%