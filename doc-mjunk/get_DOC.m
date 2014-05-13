%% GET :: GET method for the CHEBFUN class
%    P = GET(F, PROP) returns the property P specified in the string PROP from
%    the CHEBFUN F. Valid entries for the string PROP are:
%        'DOMAIN'         - The domain of definintion of F.
%        'FUNS'           - The piecewise smooth components of F.
%        'VSCALE'         - Vertical scale of F.
%        'VSCALE-LOCAL'   - Local vertical scales of F.
%        'HSCALE'         - Horizontal scale of F.
%        'HSCALE-LOCAL'   - Local horizontal scales of F.
%        'ISHAPPY'        - Is F happy?
%        'EPSLEVEL'       - Approximate accuracy estimate of F.
%        'EPSLEVEL-LOCAL' - Approximate accuracy estimate of F's components.
%        'LVAL'           - Value(s) of F at lefthand side of domain.
%        'RVAL'           - Value(s) of F at righthand side of domain.
%        'LVAL-LOCAL      - Value(s) of F's FUNs at left sides of their domains.
%        'RVAL-LOCAL'     - Value(s) of F's FUNs at right sides of their domains.
% 
%    The following are also supported for backward compatabiilty, and really only
%    make sense when the CHEBFUN is represented by a CHEBTECH-type object. Note
%    that in these cases a cell is always returned, even if the Chebfun has only
%    a sngle FUN.
%        'POINTS'         - The Chebyshev grid used to represent F.
%        'VALUES'         - The values of the CHEBFUN on the grid above.
%        'COEFFS'         - The corresponding Chebyshev coefficients.
%