#import "../utils/table.typ": table_with_sn

= Calculus

== Differentiation
=== Basic Rules
*Constant Rule:* $ frac(d, d x)(c) = 0 $

*Power Rule:* $ frac(d, d x)(x^n) = n x^(n-1) $

*Constant Multiple Rule:* $ frac(d, d x)(c f(x)) = c f'(x) $

*Sum Rule:* $ frac(d, d x)(f(x) plus.minus g(x)) = f'(x) plus.minus g'(x) $

*Product Rule:* $ frac(d, d x)(f(x) g(x)) = f'(x) g(x) + f(x) g'(x) $

*Quotient Rule:* $ frac(d, d x)(f(x) / g(x)) = (f'(x) g(x) - f(x) g'(x)) / (g(x))^2 $

*Chain Rule:* $ frac(d, d x)(f(g(x))) = f'(g(x)) g'(x) $

=== Table of Derivatives
#table_with_sn(
  ([$ f(x) $], [$ f'(x) $]),
  (
    ($ c $, $ 0 $),
    ($ x^n $, $ n x^(n-1) $),
    ($ 1/x $, $ -1/x^2 $),
    ($ sqrt(x) $, $ 1/(2sqrt(x)) $),
    ($ e^x $, $ e^x $),
    ($ a^x $, $ a^x ln(a) $),
    ($ ln x $, $ 1/x $),
    ($ log_a x $, $ 1/(x ln a) $),
    ($ sin x $, $ cos x $),
    ($ cos x $, $ -sin x $),
    ($ tan x $, $ sec^2 x $),
    ($ cot x $, $ -csc^2 x $),
    ($ sec x $, $ sec x tan x $),
    ($ csc x $, $ -csc x cot x $),
    ($ sin^(-1) x $, $ 1/sqrt(1-x^2) $),
    ($ cos^(-1) x $, $ -1/sqrt(1-x^2) $),
    ($ tan^(-1) x $, $ 1/(1+x^2) $),
    ($ cot^(-1) x $, $ -1/(1+x^2) $),
    ($ sec^(-1) x $, $ 1/(abs(x)sqrt(x^2-1)) $),
    ($ csc^(-1) x $, $ -1/(abs(x)sqrt(x^2-1)) $),
    ($ sinh x $, $ cosh x $),
    ($ cosh x $, $ sinh x $),
    ($ tanh x $, $ "sech"^2 x $),
    ($ coth x $, $ -"csch"^2 x $),
    ($ "sech" x $, $ -"sech" x tanh x $),
    ($ "csch" x $, $ -"csch" x coth x $),
    ($ sinh^(-1) x $, $ 1/sqrt(x^2+1) $),
    ($ cosh^(-1) x $, $ 1/sqrt(x^2-1) $),
    ($ tanh^(-1) x $, $ 1/(1-x^2) $),
    ($ coth^(-1) x $, $ 1/(1-x^2) $),
    ($ "sech"^(-1) x $, $ -1/(x sqrt(1-x^2)) $),
    ($ "csch"^(-1) x $, $ -1/(abs(x)sqrt(1+x^2)) $),
  ),
)

=== Higher Order Derivatives
*Second derivative:* $ f''(x) = frac(d^2 f, d x^2) = frac(d, d x)(frac(d f, d x)) $

*nth derivative:* $ f^((n))(x) = frac(d^n f, d x^n) $

*Leibniz Rule:*
$ frac(d^n, d x^n)(u v) = sum_(k=0)^n binom(n, k) frac(d^k u, d x^k) frac(d^(n-k) v, d x^(n-k)) $

=== Implicit Differentiation
For equation $F(x,y) = 0$:
$ frac(d y, d x) = -(frac(partial F, partial x))/(frac(partial F, partial y)) $

=== Parametric Differentiation
If $x = f(t)$ and $y = g(t)$:
$ frac(d y, d x) = (frac(d y, d t))/(frac(d x, d t)) = (g'(t))/(f'(t)) $

$ frac(d^2 y, d x^2) = frac(d, d t)((d y)/(d x)) / (frac(d x, d t)) $

=== Logarithmic Differentiation
For $y = f(x)$:
$ frac(d, d x)(ln y) = frac(1, y) frac(d y, d x) $

Useful for products, quotients, and powers.

== Integration
=== Basic Rules
*Constant Rule:* $ integral c d x = c x + C $

*Power Rule:* $ integral x^n d x = frac(x^(n+1), n+1) + C, quad n != -1 $

*Sum Rule:* $ integral (f(x) plus.minus g(x)) d x = integral f(x) d x plus.minus integral g(x) d x $

*Constant Multiple:* $ integral c f(x) d x = c integral f(x) d x $

=== Table of Integrals
#table_with_sn(
  ([$ f(x) $], [$ integral f(x) d x $]),
  (
    ($ c $, $ c x + C $),
    ($ x^n $, $ frac(x^(n+1), n+1) + C, quad n != -1 $),
    ($ 1/x $, $ ln abs(x) + C $),
    ($ e^x $, $ e^x + C $),
    ($ a^x $, $ frac(a^x, ln a) + C $),
    ($ ln x $, $ x ln x - x + C $),
    ($ log_a x $, $ x log_a x - frac(x, ln a) + C $),
    ($ sin x $, $ -cos x + C $),
    ($ cos x $, $ sin x + C $),
    ($ tan x $, $ -ln abs(cos x) + C = ln abs(sec x) + C $),
    ($ cot x $, $ ln abs(sin x) + C $),
    ($ sec x $, $ ln abs(sec x + tan x) + C $),
    ($ csc x $, $ -ln abs(csc x + cot x) + C $),
    ($ sec^2 x $, $ tan x + C $),
    ($ csc^2 x $, $ -cot x + C $),
    ($ sec x tan x $, $ sec x + C $),
    ($ csc x cot x $, $ -csc x + C $),
    ($ sin^(-1) x $, $ x sin^(-1) x + sqrt(1-x^2) + C $),
    ($ cos^(-1) x $, $ x cos^(-1) x - sqrt(1-x^2) + C $),
    ($ tan^(-1) x $, $ x tan^(-1) x - frac(ln(1+x^2), 2) + C $),
    ($ 1/sqrt(a^2-x^2) $, $ sin^(-1)(x/a) + C $),
    ($ 1/sqrt(x^2+a^2) $, $ sinh^(-1)(x/a) + C = ln(x + sqrt(x^2+a^2)) + C $),
    ($ 1/sqrt(x^2-a^2) $, $ cosh^(-1)(x/a) + C = ln(x + sqrt(x^2-a^2)) + C $),
    ($ 1/(a^2+x^2) $, $ frac(1, a) tan^(-1)(x/a) + C $),
    ($ 1/(a^2-x^2) $, $ frac(1, 2a) ln abs((a+x)/(a-x)) + C $),
    ($ sinh x $, $ cosh x + C $),
    ($ cosh x $, $ sinh x + C $),
    ($ tanh x $, $ ln(cosh x) + C $),
    ($ coth x $, $ ln abs(sinh x) + C $),
    ($ "sech" x $, $ tan^(-1)(sinh x) + C $),
    ($ "csch" x $, $ ln abs(tanh(x/2)) + C $),
    ($ sinh^(-1) x $, $ x sinh^(-1) x - sqrt(x^2+1) + C $),
    ($ cosh^(-1) x $, $ x cosh^(-1) x - sqrt(x^2-1) + C $),
    ($ tanh^(-1) x $, $ x tanh^(-1) x + frac(ln(1-x^2), 2) + C $),
    ($ f'(x)/f(x) $, $ ln abs(f(x)) + C $),
    ($ f'(x) (f(x))^n $, $ frac((f(x))^(n+1), n+1) + C, quad n != -1 $),
  ),
)

=== Integration Techniques
==== Integration by Parts
$ integral u d v = u v - integral v d u $

Or:
$ integral u(x) v'(x) d x = u(x) v(x) - integral u'(x) v(x) d x $

*LIATE Rule* (priority for choosing $u$):
- L: Logarithmic functions
- I: Inverse trigonometric functions
- A: Algebraic functions
- T: Trigonometric functions
- E: Exponential functions

==== Integration by Substitution
$ integral f(g(x)) g'(x) d x = integral f(u) d u, quad "where" u = g(x) $

==== Partial Fractions
For rational functions $frac(P(x), Q(x))$ where $"deg"(P) < "deg"(Q)$:

*Linear factors:* $frac(A, x-a)$

*Repeated linear:* $frac(A, x-a) + frac(B, (x-a)^2) + ... + frac(C, (x-a)^n)$

*Quadratic factors:* $frac(A x + B, x^2 + b x + c)$

==== Trigonometric Substitution
- For $sqrt(a^2 - x^2)$: use $x = a sin theta$
- For $sqrt(a^2 + x^2)$: use $x = a tan theta$
- For $sqrt(x^2 - a^2)$: use $x = a sec theta$

=== Definite Integrals
$ integral_a^b f(x) d x = F(b) - F(a) $

where $F'(x) = f(x)$

*Properties:*
$ integral_a^b f(x) d x = -integral_b^a f(x) d x $

$ integral_a^b f(x) d x = integral_a^c f(x) d x + integral_c^b f(x) d x $

$ integral_a^b (f(x) plus.minus g(x)) d x = integral_a^b f(x) d x plus.minus integral_a^b g(x) d x $

*Symmetric intervals:*
- If $f(-x) = f(x)$ (even): $ integral_(-a)^a f(x) d x = 2 integral_0^a f(x) d x $
- If $f(-x) = -f(x)$ (odd): $ integral_(-a)^a f(x) d x = 0 $

*Periodic functions:*
$ integral_a^(a+n T) f(x) d x = n integral_0^T f(x) d x $

where $T$ is the period.

=== Important Definite Integrals
$ integral_0^(pi/2) sin^n x d x = integral_0^(pi/2) cos^n x d x = cases(
  frac((n-1)!!, n!!), quad &"n even",
  frac((n-1)!!, n!!) dot frac(pi, 2), quad &"n odd"
) $

$ integral_0^infinity e^(-x^2) d x = frac(sqrt(pi), 2) $

$ integral_(-infinity)^infinity e^(-x^2) d x = sqrt(pi) $

== Applications of Derivatives
=== Tangent and Normal
At point $(x_0, y_0)$:

*Tangent line:* $ y - y_0 = f'(x_0)(x - x_0) $

*Normal line:* $ y - y_0 = -frac(1, f'(x_0))(x - x_0) $

=== Rate of Change
$ "Rate of change" = frac(d y, d x) $

*Related rates:* Use chain rule to relate rates of different quantities.

=== Maxima and Minima
*Critical points:* $f'(x) = 0$ or $f'(x)$ does not exist

*First derivative test:*
- $f'$ changes from + to -: local maximum
- $f'$ changes from - to +: local minimum

*Second derivative test:*
- $f''(x_0) > 0$: local minimum at $x_0$
- $f''(x_0) < 0$: local maximum at $x_0$
- $f''(x_0) = 0$: test inconclusive

=== Concavity and Inflection Points
*Concave up:* $f''(x) > 0$

*Concave down:* $f''(x) < 0$

*Inflection point:* $f''(x)$ changes sign

=== Mean Value Theorem
If $f$ is continuous on $[a,b]$ and differentiable on $(a,b)$:
$ exists c in (a,b): f'(c) = frac(f(b) - f(a), b - a) $

*Rolle's Theorem:* If additionally $f(a) = f(b)$, then $exists c: f'(c) = 0$

== Applications of Integrals
=== Area Under Curve
$ A = integral_a^b f(x) d x $

*Area between curves:*
$ A = integral_a^b abs(f(x) - g(x)) d x $

=== Volume of Solids of Revolution
*Disk method (about x-axis):*
$ V = pi integral_a^b (f(x))^2 d x $

*Washer method:*
$ V = pi integral_a^b ((f(x))^2 - (g(x))^2) d x $

*Shell method (about y-axis):*
$ V = 2pi integral_a^b x f(x) d x $

=== Arc Length
$ L = integral_a^b sqrt(1 + (f'(x))^2) d x $

For parametric: $x = f(t), y = g(t)$:
$ L = integral_(t_1)^(t_2) sqrt((frac(d x, d t))^2 + (frac(d y, d t))^2) d t $

=== Surface Area of Revolution
About x-axis:
$ S = 2pi integral_a^b f(x) sqrt(1 + (f'(x))^2) d x $

== Series and Taylor Expansions
=== Common Taylor Series
#table_with_sn(
  columns: (auto, auto, 2fr),
  ([$"Function"$], [$"Series Expansion"$]),
  (
    ($e^x$, $ sum_(n=0)^infinity frac(x^n, n!) = 1 + x + frac(x^2, 2!) + frac(x^3, 3!) + ... $),
    ($sin x$, $ sum_(n=0)^infinity frac((-1)^n x^(2n+1), (2n+1)!) = x - frac(x^3, 3!) + frac(x^5, 5!) - ... $),
    ($cos x$, $ sum_(n=0)^infinity frac((-1)^n x^(2n), (2n)!) = 1 - frac(x^2, 2!) + frac(x^4, 4!) - ... $),
    ($ln(1+x)$, $ sum_(n=1)^infinity frac((-1)^(n+1) x^n, n) = x - frac(x^2, 2) + frac(x^3, 3) - ..., quad abs(x) < 1 $),
    ($(1+x)^alpha$, $ sum_(n=0)^infinity binom(alpha, n) x^n = 1 + alpha x + frac(alpha(alpha-1), 2!) x^2 + ... $),
    ($tan^(-1) x$, $ sum_(n=0)^infinity frac((-1)^n x^(2n+1), 2n+1) = x - frac(x^3, 3) + frac(x^5, 5) - ..., quad abs(x) <= 1 $),
    ($sinh x$, $ sum_(n=0)^infinity frac(x^(2n+1), (2n+1)!) = x + frac(x^3, 3!) + frac(x^5, 5!) + ... $),
    ($cosh x$, $ sum_(n=0)^infinity frac(x^(2n), (2n)!) = 1 + frac(x^2, 2!) + frac(x^4, 4!) + ... $),
  ),
)

=== Taylor's Theorem
$ f(x) = sum_(n=0)^N frac(f^((n))(a), n!) (x-a)^n + R_N $

where $R_N$ is the remainder term.

*Maclaurin series* (expansion around $a = 0$):
$ f(x) = sum_(n=0)^infinity frac(f^((n))(0), n!) x^n $

== Partial Derivatives
=== Basic Definitions
For $f(x,y)$:

$ frac(partial f, partial x) = lim_(h arrow 0) frac(f(x+h,y) - f(x,y), h) $

$ frac(partial f, partial y) = lim_(k arrow 0) frac(f(x,y+k) - f(x,y), k) $

=== Mixed Partial Derivatives
If continuous:
$ frac(partial^2 f, partial x partial y) = frac(partial^2 f, partial y partial x) $

=== Chain Rule for Partial Derivatives
If $z = f(x,y)$, $x = g(t)$, $y = h(t)$:
$ frac(d z, d t) = frac(partial z, partial x) frac(d x, d t) + frac(partial z, partial y) frac(d y, d t) $

=== Directional Derivative
In direction of unit vector $arrow(u) = (u_1, u_2)$:
$ D_arrow(u) f = nabla f dot arrow(u) = frac(partial f, partial x) u_1 + frac(partial f, partial y) u_2 $

=== Gradient Vector
$ nabla f = (frac(partial f, partial x), frac(partial f, partial y), frac(partial f, partial z)) $

Points in direction of maximum increase of $f$.

=== Euler's Theorem for Homogeneous Functions
If $f(t x, t y, t z) = t^n f(x,y,z)$ (homogeneous of degree $n$):
$ x frac(partial f, partial x) + y frac(partial f, partial y) + z frac(partial f, partial z) = n f $

== Vector Calculus
#let veca = $arrow(a)$
#let vecb = $arrow(b)$
#let vecc = $arrow(c)$
#let vecr = $arrow(r)$
#let vecF = $arrow(F)$
#let veci = $hat(i)$
#let vecj = $hat(j)$
#let veck = $hat(k)$

=== Vector Differentiation
$ frac(d, d t)(veca + vecb) = frac(d veca, d t) + frac(d vecb, d t) $

$ frac(d, d t)(phi veca) = frac(d phi, d t) veca + phi frac(d veca, d t) $

$ frac(d, d t)(veca dot vecb) = frac(d veca, d t) dot vecb + veca dot frac(d vecb, d t) $

$ frac(d, d t)(veca times vecb) = frac(d veca, d t) times vecb + veca times frac(d vecb, d t) $

=== Velocity and Acceleration
*Position vector:* $ vecr(t) = x(t) veci + y(t) vecj + z(t) veck $

*Velocity:* $ arrow(v) = frac(d vecr, d t) = frac(d x, d t) veci + frac(d y, d t) vecj + frac(d z, d t) veck $

*Acceleration:* $ arrow(a) = frac(d arrow(v), d t) = frac(d^2 vecr, d t^2) $

*Speed:* $ abs(arrow(v)) = sqrt((frac(d x, d t))^2 + (frac(d y, d t))^2 + (frac(d z, d t))^2) $

=== Vector Integration
$ integral (veca + vecb) d t = integral veca d t + integral vecb d t $

$ integral phi veca d t = phi integral veca d t $ (if $phi$ is constant)

=== Del Operator (Nabla)
$ nabla = veci frac(partial, partial x) + vecj frac(partial, partial y) + veck frac(partial, partial z) $

=== Gradient
For scalar field $phi$:
$ nabla phi = frac(partial phi, partial x) veci + frac(partial phi, partial y) vecj + frac(partial phi, partial z) veck $

Properties:
- Points in direction of maximum increase
- Magnitude gives rate of maximum increase
- Perpendicular to level surfaces

=== Divergence
For vector field $vecF = F_x veci + F_y vecj + F_z veck$:
$ nabla dot vecF = frac(partial F_x, partial x) + frac(partial F_y, partial y) + frac(partial F_z, partial z) $

Measures "outflow" from a point (scalar).

=== Curl
$ nabla times vecF = mat(delim: "|", veci, vecj, veck; partial/(partial x), partial/(partial y), partial/(partial z); F_x, F_y, F_z) $

$ = (frac(partial F_z, partial y) - frac(partial F_y, partial z)) veci + (frac(partial F_x, partial z) - frac(partial F_z, partial x)) vecj + (frac(partial F_y, partial x) - frac(partial F_x, partial y)) veck $

Measures "rotation" of field (vector).

=== Laplacian
*Scalar Laplacian:*
$ nabla^2 phi = nabla dot nabla phi = frac(partial^2 phi, partial x^2) + frac(partial^2 phi, partial y^2) + frac(partial^2 phi, partial z^2) $

*Vector Laplacian:*
$ nabla^2 vecF = (nabla^2 F_x) veci + (nabla^2 F_y) vecj + (nabla^2 F_z) veck $

=== Important Identities
$ nabla times (nabla phi) = arrow(0) $ (Curl of gradient is zero)

$ nabla dot (nabla times vecF) = 0 $ (Divergence of curl is zero)

$ nabla times (nabla times vecF) = nabla(nabla dot vecF) - nabla^2 vecF $

$ nabla dot (phi vecF) = phi nabla dot vecF + vecF dot nabla phi $

$ nabla times (phi vecF) = phi nabla times vecF + (nabla phi) times vecF $

$ nabla(vecF dot arrow(G)) = (vecF dot nabla)arrow(G) + (arrow(G) dot nabla)vecF + vecF times (nabla times arrow(G)) + arrow(G) times (nabla times vecF) $

=== Line Integrals
*Scalar line integral:*
$ integral_C f d s = integral_a^b f(vecr(t)) abs(vecr'(t)) d t $

*Vector line integral:*
$ integral_C vecF dot d vecr = integral_a^b vecF(vecr(t)) dot vecr'(t) d t $

=== Surface Integrals
*Scalar surface integral:*
$ integral.surf_S f d S $

*Vector surface integral (flux):*
$ integral.surf_S vecF dot d arrow(S) = integral.surf_S vecF dot hat(n) d S $

where $hat(n)$ is unit normal vector.

=== Integral Theorems
*Green's Theorem* (2D):
$ integral.cont_C (P d x + Q d y) = integral.double_D (frac(partial Q, partial x) - frac(partial P, partial y)) d A $

*Stokes' Theorem:*
$ integral.cont_C vecF dot d vecr = integral.surf_S (nabla times vecF) dot hat(n) d S $

*Divergence Theorem (Gauss's Theorem):*
$ integral.surf_S vecF dot hat(n) d S = integral.vol_V (nabla dot vecF) d V $

== Special Functions
=== Gamma Function
*Definition:*
$ Gamma(n) = integral_0^infinity e^(-x) x^(n-1) d x, quad n > 0 $

*Properties:*
$ Gamma(n+1) = n Gamma(n) $
$ Gamma(n+1) = n!, quad n in NN $
$ Gamma(1) = 1 $
$ Gamma(1/2) = sqrt(pi) $

*Duplication formula:*
$ Gamma(2n) = frac(2^(2n-1), sqrt(pi)) Gamma(n) Gamma(n + 1/2) $

=== Beta Function
*Definition:*
$ beta(m,n) = integral_0^1 x^(m-1) (1-x)^(n-1) d x, quad m,n > 0 $

*Properties:*
$ beta(m,n) = beta(n,m) $
$ beta(m,n) = frac(Gamma(m) Gamma(n), Gamma(m+n)) $

*Alternate forms:*
$ beta(m,n) = 2 integral_0^(pi/2) sin^(2m-1) theta cos^(2n-1) theta d theta $

$ beta(m,n) = integral_0^infinity frac(t^(m-1), (1+t)^(m+n)) d t $

=== Important Integrals Using Gamma and Beta
$ integral_0^infinity e^(-a x) x^(n-1) d x = frac(Gamma(n), a^n), quad a > 0 $

$ integral_0^infinity e^(-x^2) x^(2n-1) d x = frac(Gamma(n), 2) $

$ integral_0^infinity e^(-x^2) d x = frac(sqrt(pi), 2) $

$ integral_0^(pi/2) sin^m theta cos^n theta d theta = frac(1, 2) beta((m+1)/2, (n+1)/2) $