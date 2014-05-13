%% Chebfun documentation
%
%% Methods for class |chebfun|
% * <abs.html ABS :: Absolute value of a CHEBFUN.>
% * <acos.html ACOS :: Inverse cosine of a CHEBFUN.>
% * <acosd.html ACOSD :: Cosine of a CHEBFUN, result in degrees.>
% * <acosh.html ACOSH :: Inverse hyperbolic cosine of a CHEBFUN.>
% * <acot.html ACOT :: Inverse cotangent of a CHEBFUN.>
% * <acotd.html ACOTD :: Inverse cotangent of a CHEBFUN, result in degrees.>
% * <acoth.html ACOTH :: Inverse hyperbolic cotangent of a CHEBFUN.>
% * <acsc.html ACSC :: Inverse cosecant of a CHEBFUN.>
% * <acscd.html ACSCD :: Inverse cosecant of a CHEBFUN, result in degrees.>
% * <acsch.html ACSCH :: Inverse hyperbolic cosecant of a CHEBFUN.>
% * <airy.html AIRY :: Airy function of a CHEBFUN.>
% * <all.html ALL :: True if all values of a CHEBFUN are nonzero.>
% * <and.html & :: CHEBFUN Logical AND>
% * <angle.html ANGLE :: Chebfun phase angle.>
% * <any.html ANY :: True if any value of a CHEBFUN is nonzero. ANY ignores entries that are>
% * <arcLength.html ARCLENGTH	Compute the length of the arc defined by a CHEBFUN.>
% * <area.html AREA :: Filled CHEBFUN area plot.>
% * <asec.html ASEC :: Inverse secant of a CHEBFUN.>
% * <asecd.html ASECD :: Inverse secant of a CHEBFUN, result in degrees.>
% * <asech.html ASECH :: Inverse hyperbolic secant of a CHEBFUN.>
% * <asin.html ASIN :: Inverse sine of a CHEBFUN.>
% * <asind.html ASIND :: Inverse sine of a CHEBFUN, result in degrees.>
% * <asinh.html ASINH :: Inverse hyperbolic sine of a CHEBFUN.>
% * <atan.html ATAN :: Inverse tangent of a CHEBFUN.>
% * <atan2.html ATAN2 :: Four quadrant inverse tangent of a CHEBFUN.>
% * <atan2d.html ATAN2 :: Four quadrant inverse tangent (in degrees) of a CHEBFUN.>
% * <atand.html ATAND :: Inverse tangent of a CHEBFUN, result in degrees.>
% * <atanh.html ATANH :: Inverse hyperbolic tangent of a CHEBFUN.>
% * <besselh.html BESSELH :: Bessel function of third kind (Hankel function) of a CHEBFUN.>
% * <besseli.html BESSELI ::  :: Modified Bessel function of first kind of a CHEBFUN.>
% * <besselj.html BESSELJ :: Bessel function of first kind of a CHEBFUN.>
% * <besselk.html BESSELK :: Modified Bessel function of second kind of a CHEBFUN.>
% * <bessely.html BESSELY :: Bessel function of second kind of a CHEBFUN.>
% * <bvp4c.html BVP4C :: Solve boundary value problems for ODEs by collocation with CHEBFUN.>
% * <bvp5c.html BVP5C :: Solve boundary value problems for ODEs by collocation with CHEBFUN.>
% * <cat.html CAT :: Concatenation of CHEBFUN objects.>
% * <ceil.html CEIL :: Pointwise ceiling of a CHEBFUN.>
% * <cf.html CF :: Caratheodory-Fejer approximation>
% * <cheb2cell.html CHEB2CELL  Convert columns of a quasimatrix or array-valued CHEBFUN to a cell.>
% * <cheb2quasi.html CHEB2QUASI :: Convert an array-valued CHEBFUN to a quasimatrix.>
% * <chebellipseplot.html CHEBELLIPSEPLOT :: Plot the Bernstein (aka Chebyshev) ellipses.>
% * <chebfun.html CHEBFUN :: CHEBFUN class for representing functions on [a,b].>
% * <chebpade.html CHEBPADE :: Chebyshev-Pade approximation.>
% * <chebpoly.html CHEBPOLY :: Chebyshev polynomial.>
% * <chebpolyplot.html CHEBPOLYPLOT :: Display Chebyshev coefficients graphically.>
% * <chebtune.html CHEBTUNE :: CHEBFUN melody player.>
% * <complex.html COMPLEX :: Construct complex CHEBFUN from real and imaginary parts.>
% * <compose.html COMPOSE  Composition of CHEBFUN objects.>
% * <cond.html COND :: Condition number of a CHEBFUN.>
% * <conj.html CONJ :: Complex conjugate of a CHEBFUN.>
% * <constructor.html CONSTRUCTOR :: CHEBFUN constructor.>
% * <conv.html CONV :: Convolution of CHEBFUN objects.>
% * <cos.html COS :: Cosine of a CHEBFUN.>
% * <cosd.html COSD :: Cosine of a CHEBFUN, result in degrees.>
% * <cosh.html COSH :: Hyperbolic cosine of a CHEBFUN.>
% * <cot.html COT :: Cotangent of a CHEBFUN.>
% * <cotd.html COSD :: Cotangent of a CHEBFUN, result in degrees.>
% * <coth.html COTH :: Hyperbolic cotangent of a CHEBFUN.>
% * <cov.html COV :: Covariance of a CHEBFUN.>
% * <csc.html CSC :: Cosecant of a CHEBFUN.>
% * <cscd.html CSCD :: Cosecant of a CHEBFUN, result in degrees.>
% * <csch.html CSCH :: Hyperbolic cosecant of a CHEBFUN.>
% * <ctranspose.html ' :: Complex conjugate transpose of a CHEBFUN.>
% * <cumprod.html CUMPROD :: Indefinite product integral.>
% * <cumsum.html CUMSUM :: Indefinite integral of a CHEBFUN.>
% * <cylinder.html CYLINDER Generate cylinder. Surface revolution of a chebfun to form a chebfun2.>
% * <diff.html DIFF :: Differentiation of a CHEBFUN.>
% * <dirac.html DIRAC ::  :: Dirac delta function.>
% * <disp.html DISPLAY :: Display a chebfun object.>
% * <display.html TODO: Document this file.>
% * <domain.html DOMAIN :: Domain of definition of a CHEBFUN.>
% * <ellipj.html ELLIPJ :: Jacobi elliptic functions.>
% * <ellipke.html ELLIPKE :: Complete elliptic integral of a CHEBFUN.>
% * <end.html END :: Rightmost point of a CHEBFUN domain (or last row/col of quasimatrix).>
% * <epslevel.html EPSLEVEL :: Accuracy estimate of a CHEBFUN object.>
% * <eq.html == :: Equality operator for CHEBFUN objects.>
% * <erf.html ERF :: Error function of a CHEBFUN.>
% * <erfc.html ERFC :: Complementary error function of a CHEBFUN.>
% * <erfcinv.html ERFCINV :: Inverse complementary error function of a CHEBFUN.>
% * <erfcx.html ERFCX :: Scaled complementary error function of a CHEBFUN.>
% * <erfinv.html ERFINV :: Inverse error function of a CHEBFUN.>
% * <exp.html EXP :: Exponential of a CHEBFUN.>
% * <expm1.html EXPM1 :: Compute EXP(F)-1 of a CHEBFUN accurately.>
% * <feval.html FEVAL :: Evaluate a CHEBFUN.>
% * <fill.html FILL  Filled 2-D CHEBFUN plots.>
% * <find.html FIND :: Find locations of nonzeros in a CHEBFUN.>
% * <fix.html FIX :: Round a CHEBFUN pointwise toward zero.>
% * <fliplr.html FLIPLR :: Flip/reverse a CHEBFUN.>
% * <flipud.html FLIPUD :: Flip/reverse a CHEBFUN.>
% * <floor.html FLOOR :: Pointwise floor function of a CHEBFUN.>
% * <fred.html FRED :: Fredholm integral operator.>
% * <ge.html >= :: Greater than or equal operator for CHEBFUN objects.>
% * <get.html GET :: GET method for the CHEBFUN class>
% * <gt.html > :: Greater than operator for CHEBFUN objects.>
% * <heaviside.html HEAVISIDE :: Heaviside function of a CHEBFUN.>
% * <horzcat.html HORZCAT :: Horizontal concatenation of CHEBFUN objects.>
% * <hscale.html HSCALE :: Horizontal scale of a CHEBFUN object.>
% * <hypot.html HYPOT :: Robust computation of the square root of the sum of squares.>
% * <imag.html IMAG :: Complex imaginary part of a CHEBFUN.>
% * <innerProduct.html INNERPRODUCT :: Compute the inner product of two CHEBFUN objects.>
% * <integral.html INTEGRAL :: Evaluate integral of a CHEBFUN.>
% * <interp1.html INTERP1 :: CHEBFUN polynomial interpolant at any distribution of points.>
% * <inv.html INV :: Invert a CHEBFUN.>
% * <isdelta.html ISDELTA :: Test if a CHEBFUN object is built upon DELTAFUN.>
% * <isempty.html ISEMPTY :: Test for empty CHEBFUN.>
% * <isequal.html ISEQUAL :: Equality test for two CHEBFUNs.>
% * <isfinite.html ISFINITE :: Test if a CHEBFUN is bounded.>
% * <isinf.html ISINF :: Test if a CHEBFUN is infinite.>
% * <isnan.html ISNAN :: Test if a CHEBFUN is NaN.>
% * <isreal.html ISREAL :: True for real-valued CHEBFUN object.>
% * <issing.html ISSING :: Test if a CHEBFUN object is built upon SINGFUN.>
% * <iszero.html ISZERO :: Check if a CHEBFUN is identically zero on its domain.>
% * <join.html JOIN :: Join together two or more CHEBFUN objects.>
% * <jump.html JUMP :: The jump in a CHEBFUN over a breakpoint.>
% * <lagrange.html LAGRANGE :: Compute Lagrange basis functions.>
% * <ldivide.html .\ :: Pointwise CHEBFUN left divide.>
% * <le.html <= :: Less than or equal operator for CHEBFUN objects.>
% * <legpoly.html LEGPOLY :: Legendre polynomials.>
% * <length.html LENGTH :: Length of a Chebfun.>
% * <log.html LOG :: Natural logarithm of a CHEBFUN.>
% * <log10.html LOG10 :: Base 10 logarithm of a CHEBFUN.>
% * <log1p.html LOG1P :: Compute LOG(1+F) of a CHEBFUN F accurately.>
% * <log2.html LOG2 :: Base 2 logarithm of a CHEBFUN.>
% * <logical.html LOGICAL :: CHEBFUN logical.>
% * <loglog.html LOGLOG  log-log scale plot of a CHEBFUN.>
% * <lt.html < :: Less than operator for CHEBFUN objects.>
% * <lu.html LU  LU factorization of a quasimatrix.>
% * <mat2cell.html MAT2CELL :: Convert an array-valued CHEBFUN to a cell array of CHEBFUN objects.>
% * <max.html MAX :: Maximum value of a CHEBFUN.>
% * <mean.html MEAN ::  :: Average or mean value of a CHEBFUN.>
% * <merge.html MERGE :: Remove unnecessary breakpoints in from a CHEBFUN.>
% * <mesh.html MESH :: Surface mesh plot for array-valued CHEBFUN objects.>
% * <min.html MIN :: Minimum values of a CHEBFUN.>
% * <minandmax.html MINANDMAX :: Minimum and maximum values of a CHEBFUN.>
% * <minus.html - :: CHEBFUN minus.>
% * <mldivide.html \ :: Left matrix divide for CHEBFUN objects.>
% * <mod.html MOD :: Modulus after division of two CHEBFUN objects.>
% * <mrdivide.html / :: Right matrix divide for CHEBFUN objects.>
% * <mtimes.html * :: CHEBFUN multiplication.>
% * <ne.html ~= :: Not equal operator for CHEBFUN objects.>
% * <newDomain.html NEWDOMAIN :: Change of domain of a CHEBFUN.>
% * <nextpow2.html NEXTPOW2 :: Base 2 power of a CHEBFUN.>
% * <norm.html NORM :: Norm of a CHEBFUN object.>
% * <normal.html NORMAL :: Normal to a complex-valued CHEBFUN.>
% * <normest.html TODO: Check this and document.>
% * <not.html ~ :: CHEBFUN logical NOT.>
% * <null.html NULL :: Null space of an array-valued CHEBFUN.>
% * <num2cell.html NUM2CELL :: Convert an array-valued CHEBFUN into cell array.>
% * <ode113.html ODE113 :: Solve stiff differential equations and DAEs. Output a CHEBFUN.>
% * <ode15s.html ODE15S :: Solve stiff differential equations and DAEs. Output a CHEBFUN.>
% * <ode45.html ODE45 :: Solve stiff differential equations and DAEs. Output a CHEBFUN.>
% * <or.html | :: CHEBFUN logical OR.>
% * <orth.html ORTH :: Array-valued CHEBFUN orthogonalization.>
% * <overlap.html OVERLAP :: Overlap the domain of two CHEBFUN objects.>
% * <pchip.html PCHIP :: CHEBFUN Cubic Hermite interpolating polynomial.>
% * <pde15s.html PDE15S :: Solve PDEs using the CHEBFUN system.>
% * <permute.html PERMUTE :: Permute CHEBFUN array dimensions.>
% * <pinv.html PINV :: Pseudoinverse of a column CHEBFUN.>
% * <plot.html PLOT :: Basic linear plot for CHEBFUN objects.>
% * <plot3.html PLOT3 :: Plot for CHEBFUN objects in 3-D space.>
% * <plus.html + :: CHEBFUN plus.>
% * <poly.html POLY	 Polynomial coefficients of a CHEBFUN.>
% * <polyfit.html POLYFIT :: Fit polynomial to a CHEBFUN.>
% * <pow2.html POW2 :: Base 2 power of a CHEBFUN.>
% * <power.html .^ :: CHEBFUN power.>
% * <prod.html PROD :: Product integral.>
% * <qr.html QR :: QR factorization of an array-valued CHEBFUN.>
% * <quantumstates.html QUANTUMSTATES ::  :: Compute and plot Schroedinger eigenstates.>
% * <quasi2cheb.html QUASI2CHEB :: Convert a quasimatrix to an array-valued CHEBFUN.>
% * <rank.html RANK :: Rank of an array-valued CHEBFUN.>
% * <rdivide.html ./ :: Pointwise CHEBFUN right divide.>
% * <real.html REAL :: Complex real part of a CHEBFUN.>
% * <reallog.html REALLOG :: Real logarthm of a CHEBFUN.>
% * <rem.html REM :: Remainder after division of two CHEBFUN objects.>
% * <remez.html REMEZ :: Best polynomial or rational approximation.>
% * <repmat.html REPMAT :: Replicate and tile a CHEBFUN.>
% * <residue.html RESIDUE :: Partial-fraction expansion (residues).>
% * <restrict.html RESTRICT :: Restrict a CHEBFUN object to a subinterval.>
% * <roots.html ROOTS :: Roots of a CHEBFUN.>
% * <round.html ROUND :: Round a CHEBFUN pointwise to nearest integer.>
% * <sec.html SEC :: Secant of a CHEBFUN.>
% * <secd.html SECD :: Secant of a CHEBFUN, result in degrees.>
% * <sech.html SECH :: Hyperbolic secant of a CHEBFUN.>
% * <semilogx.html SEMILOGX :: Semi-log scale plot of a CHEBFUN.>
% * <semilogy.html SEMILOGY :: Semi-log scale plot of a CHEBFUN.>
% * <sign.html SIGN :: Sign function of a CHEBFUN.>
% * <simplify.html SIMPLIFY  Simplify a CHEBFUN.>
% * <sin.html SIN :: Sine of a CHEBFUN.>
% * <sinc.html SINC :: Sinc function of a CHEBFUN.>
% * <sind.html SIND :: Sine of a CHEBFUN, result in degrees.>
% * <sinh.html SINH :: Hyperbolic sine of a CHEBFUN.>
% * <size.html SIZE :: Size of a CHEBFUN.>
% * <sound.html SOUND :: Play a CHEBFUN as a sound.>
% * <spline.html SPLINE :: CHEBFUN cubic spline data interpolation.>
% * <spy.html SPY :: Visualise a CHEBFUN.>
% * <sqrt.html SQRT :: Square root of a CHEBFUN.>
% * <std.html STD :: Standard deviation of a CHEBFUN.>
% * <subsasgn.html SUBSASGN :: Chebfun SUBSASGN.>
% * <subspace.html SUBSPACE :: Angle between subspaces.>
% * <subsref.html SUBSREF :: CHEBFUN subsref.>
% * <sum.html SUM :: Definite integral of a CHEBFUN.>
% * <surf.html SURF :: Surface plot for array-valued CHEBFUN objects.>
% * <surface.html SURFACE :: Surface plot for CHEBFUN objects.>
% * <surfc.html SURFC :: Combination surf/contour plot for CHEBFUN objects.>
% * <svd.html SVD :: Singular value decomposition of a CHEBFUN.>
% * <tan.html TAN :: Tangent of a CHEBFUN.>
% * <tand.html TAND :: Tangent of a CHEBFUN, result in degrees.>
% * <tanh.html TANH :: Hyperbolic tangent of a CHEBFUN.>
% * <times.html .* :: CHEBFUN multiplication.>
% * <transpose.html .' :: CHEBFUN transpose.>
% * <uminus.html - :: CHEBFUN unary minus.>
% * <unwrap.html UNWRAP :: Unwrap CHEBFUN phase angle.>
% * <uplus.html + :: CHEBFUN unary plus.>
% * <vander.html VANDER :: Vandermonde array-valued CHEBFUN.>
% * <var.html VAR :: Variance of a CHEBFUN.>
% * <vertcat.html VERTCAT :: Vertical concatenation of CHEBFUN objects.>
% * <volt.html VOLT :: Volterra integral operator.>
% * <vscale.html VSCALE :: Vertical scale of a CHEBFUN object.>
% * <waterfall.html WATERFALL Waterfall plot for array-valued CHEBFUN objects and quasimatrices.>
% * <why.html WHY :: Provides a succinct answer to almost any Chebfun related question in the>
% * <xor.html XOR :: Logical CHEBFUN EXCLUSIVE OR.>
%% Other Chebfun-related methods
% * <chebpref.html CHEBPREF :: Abstract class for Chebfun system preferences.>
% * <barymat.html BARYMAT  Barycentric Interpolation Matrix.>
% * <chebpoly.html CHEBPOLY :: Chebyshev polynomial.>
% * <chebpts.html CHEBPTS ::  :: Chebyshev points.>
% * <jacpts.html JACPTS  Gauss-Jacobi Quadrature Nodes and Weights.>
% * <legpoly.html LEGPOLY :: Legendre polynomials.>
% * <legpts.html LEGPTS ::  :: Legendre points and Gauss-Legendre Quadrature Weights.>
% * <lobpts.html LOBPTS :: Gauss-Legendre-Lobatto Quadrature Nodes and Weights.>
% * <lebesgue.html LEBESGUE :: Lebesgue function for a set of interpolation points.>
