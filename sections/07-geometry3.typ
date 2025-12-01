= Three Dimensional Coordinate Geometry
#let pxyz = $(x,y,z)$
#let pxyz(p) = $(x_#p,y_#p,z_#p)$

== Distance and Section Formula
=== Distance Formula
Distance between two points $pxyz(1)$ and $pxyz(2)$:
$ d = sqrt((x_2-x_1)^2 + (y_2-y_1)^2 + (z_2-z_1)^2) $

=== Section Formula
Point dividing line in ratio $m:n$ internally:
$ x = frac(m x_2 + n x_1, m+n), y = frac(m y_2 + n y_1, m+n), z = frac(m z_2 + n z_1, m+n) $

Midpoint:
$ x = frac(x_1+x_2, 2), y = frac(y_1+y_2, 2), z = frac(z_1+z_2, 2) $

== Direction Cosines and Direction Ratios
=== Direction Cosines
If line makes angles $alpha, beta, gamma$ with axes:
$ l = cos alpha, m = cos beta, n = cos gamma $
$ l^2 + m^2 + n^2 = 1 $

Direction cosines between two points:
$ l = frac(x_2-x_1, d), m = frac(y_2-y_1, d), n = frac(z_2-z_1, d) $

=== Direction Ratios
If $a, b, c$ are direction ratios:
$ l = frac(a, sqrt(a^2+b^2+c^2)), m = frac(b, sqrt(a^2+b^2+c^2)), n = frac(c, sqrt(a^2+b^2+c^2)) $

=== Angle Between Two Lines
If direction cosines are $(l_1, m_1, n_1)$ and $(l_2, m_2, n_2)$:
$ cos theta = l_1 l_2 + m_1 m_2 + n_1 n_2 $

If direction ratios are $(a_1, b_1, c_1)$ and $(a_2, b_2, c_2)$:
$ cos theta = frac(a_1 a_2 + b_1 b_2 + c_1 c_2, sqrt(a_1^2+b_1^2+c_1^2) sqrt(a_2^2+b_2^2+c_2^2)) $

Perpendicular if: $ a_1 a_2 + b_1 b_2 + c_1 c_2 = 0 $

Parallel if: $ frac(a_1, a_2) = frac(b_1, b_2) = frac(c_1, c_2) $

== Straight Lines in 3D
=== Equation of a Line
*Cartesian form* through $pxyz(1)$ with direction ratios $(a,b,c)$:
$ frac(x-x_1, a) = frac(y-y_1, b) = frac(z-z_1, c) $

*Two point form* through $pxyz(1)$ and $pxyz(2)$:
$ frac(x-x_1, x_2-x_1) = frac(y-y_1, y_2-y_1) = frac(z-z_1, z_2-z_1) $

*Parametric form*:
$ x = x_1 + lambda a, y = y_1 + lambda b, z = z_1 + lambda c $

== Planes
=== Equation of a Plane
*General form*:
$ A x + B y + C z + D = 0 $
where $(A, B, C)$ are direction ratios of normal.

*Intercept form*:
$ frac(x, a) + frac(y, b) + frac(z, c) = 1 $

*Normal form*:
$ l x + m y + n z = p $
where $(l, m, n)$ are direction cosines of normal and $p$ is distance from origin.

*Plane through point* $pxyz(1)$ with normal $(A, B, C)$:
$ A(x-x_1) + B(y-y_1) + C(z-z_1) = 0 $

*Plane through three points* $pxyz(1), pxyz(2), pxyz(3)$:
$ mat(delim: "|", x-x_1, y-y_1, z-z_1; x_2-x_1, y_2-y_1, z_2-z_1; x_3-x_1, y_3-y_1, z_3-z_1) = 0 $

=== Distance from Point to Plane
Distance from $pxyz(0)$ to plane $A x + B y + C z + D = 0$:
$ d = frac(abs(A x_0 + B y_0 + C z_0 + D), sqrt(A^2 + B^2 + C^2)) $

=== Angle Between Planes
For planes $A_1 x + B_1 y + C_1 z + D_1 = 0$ and $A_2 x + B_2 y + C_2 z + D_2 = 0$:
$ cos theta = frac(A_1 A_2 + B_1 B_2 + C_1 C_2, sqrt(A_1^2+B_1^2+C_1^2) sqrt(A_2^2+B_2^2+C_2^2)) $

Perpendicular if: $ A_1 A_2 + B_1 B_2 + C_1 C_2 = 0 $

Parallel if: $ frac(A_1, A_2) = frac(B_1, B_2) = frac(C_1, C_2) $

=== Angle Between Line and Plane
For line with direction ratios $(a, b, c)$ and plane $A x + B y + C z + D = 0$:
$ sin theta = cos ( 90 - theta)= frac(abs(A a + B b + C c), sqrt(A^2+B^2+C^2) sqrt(a^2+b^2+c^2)) $

Line parallel to plane if: $ A a + B b + C c = 0 $

Line perpendicular to plane if: $ frac(A, a) = frac(B, b) = frac(C, c) $

== Sphere
=== Standard Forms
*General equation*:
$ x^2 + y^2 + z^2 + 2u x + 2v y + 2w z + d = 0 $

Centre: $(-u, -v, -w)$\
Radius: $ r = sqrt(u^2 + v^2 + w^2 - d) $

*Centre-radius form* with centre $(h, k, l)$ and radius $r$:
$ (x-h)^2 + (y-k)^2 + (z-l)^2 = r^2 $

*Diameter form* with endpoints $pxyz(1)$ and $pxyz(2)$:
$ (x-x_1)(x-x_2) + (y-y_1)(y-y_2) + (z-z_1)(z-z_2) = 0 $

=== Tangent Plane
Tangent plane at point $pxyz(1)$ on sphere $x^2+y^2+z^2+2u x+2v y+2w z+d=0$:
$ x x_1 + y y_1 + z z_1 + u(x+x_1) + v(y+y_1) + w(z+z_1) + d = 0 $

=== Sphere through Four Points
Sphere through $pxyz(1), pxyz(2), pxyz(3), pxyz(4)$:
$ mat(delim: "|", 
x^2+y^2+z^2, x, y, z, 1;
x_1^2+y_1^2+z_1^2, x_1, y_1, z_1, 1;
x_2^2+y_2^2+z_2^2, x_2, y_2, z_2, 1;
x_3^2+y_3^2+z_3^2, x_3, y_3, z_3, 1;
x_4^2+y_4^2+z_4^2, x_4, y_4, z_4, 1) = 0 $

== Vector Forms
=== Position Vector
$ arrow(r) = x hat(i) + y hat(j) + z hat(k) $

=== Equation of Line
$ arrow(r) = arrow(a) + lambda arrow(b) $
where $arrow(a)$ is position vector of point on line and $arrow(b)$ is direction vector.

=== Equation of Plane
$ arrow(r) dot arrow(n) = d $
where $arrow(n)$ is normal vector and $d$ is constant.

*Plane through point* $arrow(a)$ with normal $arrow(n)$:
$ (arrow(r) - arrow(a)) dot arrow(n) = 0 $

=== Distance from Point to Plane
Distance from point $arrow(a)$ to plane $arrow(r) dot arrow(n) = d$:
$ "distance" = frac(abs(arrow(a) dot arrow(n) - d), abs(arrow(n))) $