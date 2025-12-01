= Algebra and Complex Numbers
#let ii = $i$

== Complex Numbers
=== Representation
*Cartesian form:*
$ z = x + ii y $
where $x = "Re"(z)$ (real part) and $y = "Im"(z)$ (imaginary part)

*Polar form:*
$ z = r(cos theta + ii sin theta) = r e^(ii theta) $

where:
$ r = abs(z) = sqrt(x^2 + y^2) $ (modulus)
$ theta = arg(z) = tan^(-1)(y/x) $ (argument)

*Conversions:*
$ x = r cos theta $
$ y = r sin theta $

=== Euler's Formula
$ e^(ii theta) = cos theta + ii sin theta $
$ e^(-ii theta) = cos theta - ii sin theta $

From these:
$ cos theta = frac(e^(ii theta) + e^(-ii theta), 2) $
$ sin theta = frac(e^(ii theta) - e^(-ii theta), 2ii) $

=== De Moivre's Theorem
$ (cos theta + ii sin theta)^n = cos(n theta) + ii sin(n theta) $
$ (r e^(ii theta))^n = r^n e^(ii n theta) $

=== Multiplication and Division
*Multiplication:*
$ z_1 z_2 = r_1 r_2 [cos(theta_1 + theta_2) + ii sin(theta_1 + theta_2)] $
$ (cos alpha + ii sin alpha)(cos beta + ii sin beta) = cos(alpha + beta) + ii sin(alpha + beta) $

*Division:*
$ frac(z_1, z_2) = frac(r_1, r_2) [cos(theta_1 - theta_2) + ii sin(theta_1 - theta_2)] $

=== Roots of Complex Numbers
*nth root:*
$ z^(1/n) = r^(1/n) [cos((theta + 2 pi k)/n) + ii sin((theta + 2 pi k)/n)] $
for $k = 0, 1, 2, ..., n-1$

*Square root:*
$ sqrt(x + ii y) = plus.minus [sqrt(frac(r+x, 2)) + ii "sgn"(y) sqrt(frac(r-x, 2))] $
where $r = sqrt(x^2 + y^2)$

=== Cube Roots of Unity
$ z^3 = 1 arrow.r.double z^3 - 1 = 0 $

*Roots:*
$ z = 1, omega, omega^2 $

where:
$ omega = frac(-1 + ii sqrt(3), 2) = e^(ii 2pi/3) = cos(2pi/3) + ii sin(2pi/3) $
$ omega^2 = frac(-1 - ii sqrt(3), 2) = e^(ii 4pi/3) = cos(4pi/3) + ii sin(4pi/3) $

*Properties:*
$ 1 + omega + omega^2 = 0 $
$ omega^3 = 1 $
$ omega^2 = overline(omega) $
$ (omega)^(3n) = 1 $
$ (omega)^(3n+1) = omega $
$ (omega)^(3n+2) = omega^2 $

=== nth Roots of Unity
$ z^n = 1 $

*Roots:*
$ z_k = e^(ii 2pi k/n) = cos(2pi k/n) + ii sin(2pi k/n) $
for $k = 0, 1, 2, ..., n-1$

*Sum of all nth roots:*
$ sum_(k=0)^(n-1) z_k = 0 $

== Complex Conjugate
=== Definition
$ overline(z) = overline(x + ii y) = x - ii y $
$ overline(r e^(ii theta)) = r e^(-ii theta) $

=== Properties
$ z + overline(z) = 2 "Re"(z) = 2x $
$ z - overline(z) = 2ii "Im"(z) = 2ii y $
$ z overline(z) = abs(z)^2 = x^2 + y^2 = r^2 $
$ overline(overline(z)) = z $
$ overline(z_1 plus.minus z_2) = overline(z_1) plus.minus overline(z_2) $
$ overline(z_1 z_2) = overline(z_1) dot overline(z_2) $
$ overline(z_1 / z_2) = overline(z_1) / overline(z_2) $
$ overline(z^n) = (overline(z))^n $

*Real and imaginary parts:*
$ "Re"(z) = frac(z + overline(z), 2) $
$ "Im"(z) = frac(z - overline(z), 2ii) $

*z is real iff:* $z = overline(z)$

*z is purely imaginary iff:* $z = -overline(z)$

== Modulus (Absolute Value)
=== Definition
$ abs(z) = sqrt(x^2 + y^2) = sqrt(z overline(z)) = r $

=== Properties
$ abs(z)^2 = z overline(z) $
$ abs(z) = abs(overline(z)) = abs(-z) $
$ abs(z) = 0 arrow.l.r.double z = 0 $
$ abs(z) >= 0 $
$ abs("Re"(z)) <= abs(z) $
$ abs("Im"(z)) <= abs(z) $
$ abs(z_1 z_2) = abs(z_1) abs(z_2) $
$ abs(z^n) = (abs(z))^n $
$ abs(z_1 / z_2) = frac(abs(z_1), abs(z_2)), quad z_2 != 0 $

=== Triangle Inequalities
$ abs(z_1 + z_2) <= abs(z_1) + abs(z_2) $
$ abs(z_1 - z_2) >= abs(abs(z_1) - abs(z_2)) $
$ abs(z_1 + z_2) >= abs(abs(z_1) - abs(z_2)) $
$ abs(z_1 - z_2) <= abs(z_1) + abs(z_2) $

*Generalized triangle inequality:*
$ abs(z_1 + z_2 + ... + z_n) <= abs(z_1) + abs(z_2) + ... + abs(z_n) $

=== Distance
$ abs(z_1 - z_2) = "distance between" z_1 "and" z_2 $

== Argument
=== Definition
$ arg(z) = theta = tan^(-1)(y/x) $

*Principal argument:*
$ "Arg"(z) = theta, quad -pi < theta <= pi $

=== Properties
$ arg(z_1 z_2) = arg(z_1) + arg(z_2) + 2pi k $
$ arg(z_1 / z_2) = arg(z_1) - arg(z_2) + 2pi k $
$ arg(z^n) = n arg(z) + 2pi k $
$ arg(overline(z)) = -arg(z) $
$ arg(-z) = arg(z) + pi $

== Logarithm of Complex Numbers
=== Definition
If $z = r e^(ii theta)$, then:
$ ln z = ln r + ii(theta + 2pi k), quad k in ZZ $

*Principal value:*
$ log z = ln r + ii theta, quad -pi < theta <= pi $
$ log z = ln abs(z) + ii arg(z) $

=== Properties
$ log(z_1 z_2) = log z_1 + log z_2 + 2pi ii k $
$ log(z_1 / z_2) = log z_1 - log z_2 + 2pi ii k $
$ log(z^n) = n log z + 2pi ii k $

== Complex Numbers in Geometry
=== Distance and Midpoint
*Distance between* $z_1$ and $z_2$:
$ d = abs(z_1 - z_2) $

*Midpoint:*
$ z_m = frac(z_1 + z_2, 2) $

*Section formula* (internal division in ratio $m:n$):
$ z = frac(m z_2 + n z_1, m + n) $

=== Equation of a Line
*Parametric form* through $z_1$ in direction of $(z_2 - z_1)$:
$ z = z_1 + t(z_2 - z_1), quad t in RR $

*Two-point form:*
$ frac(z - z_1, z_2 - z_1) = t, quad t in RR $

*Determinant form:*
$ mat(delim: "|", z, overline(z), 1; z_1, overline(z_1), 1; z_2, overline(z_2), 1) = 0 $

*General form:*
$ a z + overline(a) overline(z) + b = 0 $
where $a$ is complex and $b$ is real.

=== Collinearity
Three points $z_1, z_2, z_3$ are collinear iff:
$ mat(delim: "|", z_1, overline(z_1), 1; z_2, overline(z_2), 1; z_3, overline(z_3), 1) = 0 $

Or equivalently:
$ frac(z_3 - z_1, z_2 - z_1) in RR $

=== Equation of a Circle
*Centre* $z_0$, radius $r$:
$ abs(z - z_0) = r $
$ (z - z_0)(overline(z) - overline(z_0)) = r^2 $

*General form:*
$ z overline(z) + overline(a) z + a overline(z) + b = 0 $
where $b$ is real, centre $= -a$, radius $= sqrt(abs(a)^2 - b)$

*Diameter form* with endpoints $z_1$ and $z_2$:
$ frac(z - z_1, z - z_2) + frac(overline(z) - overline(z_1), overline(z) - overline(z_2)) = 0 $

=== Angle Between Two Lines
If two lines have directions $z_1$ and $z_2$:
$ theta = arg(z_2/z_1) $

*Perpendicular lines:*
$ "Re"(z_1 overline(z_2)) = 0 $
$ frac(z_1, z_2) "is purely imaginary" $

*Parallel lines:*
$ "Im"(z_1 overline(z_2)) = 0 $
$ frac(z_1, z_2) "is real" $

=== Important Loci
*Circle:* $abs(z - z_0) = r$

*Perpendicular bisector:* $abs(z - z_1) = abs(z - z_2)$

*Ellipse:* $abs(z - z_1) + abs(z - z_2) = 2a$ (where $2a > abs(z_1 - z_2)$)

*Hyperbola:* $abs(abs(z - z_1) - abs(z - z_2)) = 2a$ (where $2a < abs(z_1 - z_2)$)

*Ray from origin:* $arg(z) = theta$

*Half-plane:* $"Re"(z) > a$ or $"Im"(z) > b$