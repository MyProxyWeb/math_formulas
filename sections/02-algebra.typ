= Algebra

#let ii = $iota$

Complex Number:
$ z = x + ii y = r e^(ii theta) = r (cos theta + ii sin theta) $

$ x = r cos theta $
$ y = r sin theta $
$ r = sqrt(x^2 + y^2) $
$ tan theta = y/x $
$ (cos theta + ii sin theta)^n = cos(n theta) + ii sin(n theta) $
$ (cos alpha + ii sin alpha)(cos beta + ii sin beta) = cos(alpha + beta) + ii sin(alpha + beta) $
$ z^(1/n) = r[cos((2 pi k + theta)/n) + ii sin((2 pi k + theta)/n)], "for k = 0, 1, 2, ..., n" $

Cube Root Of Unity:

$ z^3 - 1 = 0 $
$ z = 1, omega, omega^2 $
$ "where," omega = (-1 + ii sqrt(3)) / 2 $
$ omega^2 = (-1 - ii sqrt(3)) / 2 $
$ 1 + omega + omega^2 = 0 $

Properties:

$ abs(z)^2 = z overline(z) $
$ abs(z) = abs(overline(z)) $

$ overline(z_1 z_2) = overline(z_1) dot overline(z_2) $
$ overline(z_1 plus.minus z_2) = overline(z_1) plus.minus overline(z_2) $
$ overline(z_1 / z_2) = overline(z_1) / overline(z_2) $

$ abs(z_1 z_2) = abs(z_1)  abs(z_2) $


$ abs(z) = sqrt(x^2 + y^2) $

$ abs(z) = 0 " iff " z = 0 $

$ abs(z_1 z_2) = abs(z_1) abs(z_2) $

$ abs(z_1 / z_2) = abs(z_1) / abs(z_2), "for" z_2 != 0 $

$ abs(z_1 + z_2) <= abs(z_1) + abs(z_2) $
$ abs(z_1 - z_2) <= abs(z_1) + abs(z_2) $

$ abs(abs(z_1) - abs(z_2)) <= abs(z_1 - z_2) $

$ abs(z^n) = (abs(z))^n $

$ abs(x) <= abs(z) $
$ abs(y) <= abs(z) $

$ abs(z_1 - z_2) = "distance between" z_1 "and" z_2 $



$ z = r e^(ii theta) $
$ ln z = ln r + ii(theta + 2 pi k), "for k = 0, +-1, +-2, ..." $
$ "Principal\ value:"\ log z = ln r + ii theta, "where" -pi < theta <= pi $



--- Equation of Line in Complex Number Form ---

$ z = x + ii y,\ z_1 = x_1 + ii y_1,\ z_2 = x_2 + ii y_2 $

$ "Direction represented by"\ z_2 - z_1 $

Equation of a line passing through $z_1$ in direction of $(z_2 - z_1)$:
$ z = z_1 + t (z_2 - z_1),\ "where"\ t in RR $

Two-point form:
$ frac(z - z_1,z_2 - z_1) = t,\ t in  RR $

or 

$mat(delim:"|",
z , overline(z),1;
z_1 , overline(z_1),1;
z_2 , overline(z_2),1)=0;$

three points are colinear if
$mat(delim:"|",
z_1 , overline(z_1),1;
z_2 , overline(z_2),1;
z_2 , overline(z_2),1)=0;$