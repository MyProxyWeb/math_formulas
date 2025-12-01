= Vector Algebra
#let veca = $arrow(a)$
#let vecb = $arrow(b)$
#let vecc = $arrow(c)$
#let vecr = $arrow(r)$
#let veci = $hat(i)$
#let vecj = $hat(j)$
#let veck = $hat(k)$

== Vector Basics
=== Representation
Vector in component form:
$ veca = a_x veci + a_y vecj + a_z veck $

Position vector:
$ vecr = x veci + y vecj + z veck $

=== Magnitude
$ abs(veca) = sqrt(a_x^2 + a_y^2 + a_z^2) $

=== Unit Vector
$ hat(a) = frac(veca, abs(veca)) $

=== Direction Cosines
If vector makes angles $alpha, beta, gamma$ with axes:
$ cos alpha = frac(a_x, abs(veca)), cos beta = frac(a_y, abs(veca)), cos gamma = frac(a_z, abs(veca)) $
$ cos^2 alpha + cos^2 beta + cos^2 gamma = 1 $

== Vector Operations
=== Addition and Subtraction
$ veca plus.minus vecb = (a_x plus.minus b_x)veci + (a_y plus.minus b_y)vecj + (a_z plus.minus b_z)veck $

Triangle law: $ veca + vecb = vecc $
Parallelogram law: $ veca + vecb = "diagonal" $

=== Scalar Multiplication
$ k veca = k a_x veci + k a_y vecj + k a_z veck $

=== Properties
$ veca + vecb = vecb + veca $ (Commutative)
$ (veca + vecb) + vecc = veca + (vecb + vecc) $ (Associative)
$ k(veca + vecb) = k veca + k vecb $ (Distributive)

== Dot Product (Scalar Product)
=== Definition
$ veca dot vecb = abs(veca) abs(vecb) cos theta $
$ veca dot vecb = a_x b_x + a_y b_y + a_z b_z $

=== Properties
$ veca dot vecb = vecb dot veca $ (Commutative)
$ veca dot (vecb + vecc) = veca dot vecb + veca dot vecc $ (Distributive)
$ veca dot veca = abs(veca)^2 $
$ veci dot veci = vecj dot vecj = veck dot veck = 1 $
$ veci dot vecj = vecj dot veck = veck dot veci = 0 $

=== Angle Between Vectors
$ cos theta = frac(veca dot vecb, abs(veca) abs(vecb)) $

Perpendicular if: $ veca dot vecb = 0 $
Parallel if: $ veca = k vecb $

=== Projection
Projection of $veca$ on $vecb$:
$ "proj"_vecb veca = frac(veca dot vecb, abs(vecb)) $

Vector projection:
$ "proj"_vecb veca = frac(veca dot vecb, abs(vecb)^2) vecb $

== Cross Product (Vector Product)
=== Definition
$ veca times vecb = abs(veca) abs(vecb) sin theta hat(n) $
where $hat(n)$ is unit vector perpendicular to both.

$ veca times vecb = mat(delim: "|", veci, vecj, veck; a_x, a_y, a_z; b_x, b_y, b_z) $

$ veca times vecb = (a_y b_z - a_z b_y)veci + (a_z b_x - a_x b_z)vecj + (a_x b_y - a_y b_x)veck $

=== Properties
$ veca times vecb = -(vecb times veca) $ (Anti-commutative)
$ veca times (vecb + vecc) = veca times vecb + veca times vecc $ (Distributive)
$ veca times veca = arrow(0) $
$ veci times vecj = veck, vecj times veck = veci, veck times veci = vecj $
$ vecj times veci = -veck, veck times vecj = -veci, veci times veck = -vecj $

=== Magnitude
$ abs(veca times vecb) = abs(veca) abs(vecb) sin theta $

Area of parallelogram: $ abs(veca times vecb) $
Area of triangle: $ frac(1, 2) abs(veca times vecb) $

Parallel if: $ veca times vecb = arrow(0) $

== Scalar Triple Product
=== Definition
$ [veca vecb vecc] = veca dot (vecb times vecc) $

$ [veca vecb vecc] = mat(delim: "|", a_x, a_y, a_z; b_x, b_y, b_z; c_x, c_y, c_z) $

=== Properties
$ [veca vecb vecc] = [vecb vecc veca] = [vecc veca vecb] $ (Cyclic)
$ [veca vecb vecc] = -[vecb veca vecc] $ (Anti-cyclic)
$ [veca vecb vecc] = 0 $ (Coplanar vectors)

=== Volume
Volume of parallelepiped: $ abs([veca vecb vecc]) $
Volume of tetrahedron: $ frac(1, 6) abs([veca vecb vecc]) $

== Vector Triple Product
=== BAC-CAB Rule
$ veca times (vecb times vecc) = (veca dot vecc)vecb - (veca dot vecb)vecc $
$ (veca times vecb) times vecc = (veca dot vecc)vecb - (vecb dot vecc)veca $

=== Properties
$ veca times (vecb times vecc) eq.not (veca times vecb) times vecc $ (Not associative)
