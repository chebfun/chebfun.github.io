%% OVERLAP :: Overlap the domain of two CHEBFUN objects.
%    [FOUT, GOUT] = OVERLAP(F, G) returns two CHEBFUNs such that FOUT.DOMAIN ==
%    GOUT.DOMAIN and F(x) = FOUT(x), G(x) = GOUT(x) for all x in the domain of
%    F. The third dimension of the IMPULSES fields of F and G will be padded with
%    zeros if necessary so that FOUT.IMPULSES and GOUT.IMPULSES store impulse
%    data to the same order.
% 
%    If F and G are array-valued, they must have the same numer of columns/rows,
%    else an error is thrown.
%