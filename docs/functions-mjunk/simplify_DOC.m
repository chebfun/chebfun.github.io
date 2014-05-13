%% SIMPLIFY  Simplify a CHEBFUN.
%   G = SIMPLIFY(F) attempts to compute a CHEBFUN G which is a 'simplified'
%   version of F in that length(G) <= length(F), but ||G - F|| is small in a
%   relative sense: ||G - F|| < EPSLEVEL(G)*VSCALE(G).  The relative error
%   threshold tolerance is chosen based on F's own global accuracy estimate (via
%   F.VSCALE and F.EPSLEVEL) and the local VSCALEs of F's individual FUN
%   objects.
% 
%   G = SIMPLIFY(F, TOL) does the same as above but uses TOL instead of the
%   default simplification tolerances as the relative threshold level.
%