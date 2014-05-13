%% JOIN :: Join together two or more CHEBFUN objects.
%    F = JOIN(F1, F2, ...) joins together the CHEBFUN objects F1, F2, ..., to
%    create a piecewise CHEBFUN F on a larger domain. F1, F2, ... must all have
%    the same transposition state; the output F will have the same transposition
%    state as the inputs. The left endpoint of the domain of F is F1.domain(1),
%    and the remaining points in the domain are determined by the adding on the
%    lengths of the successive subintervals forming the domains of F1, F2, etc.
%    For example, if F1 has domain [-1 -0.5 0] and F2 has domain [1 1.25 2],
%    then the domain of F will be [-1 -0.5 0 0.25 1].
% 
%    The number of columns (or rows) in F1, F2, ... must be the same, else an
%    error is thrown.
% 
%  See also HORZCAT, VERTCAT.
%