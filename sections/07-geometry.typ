= Geometry
#let pxy = $(x,y)$
#let pxy(p) = $(x_#p,y_#p)$
*Two Dimensional Coordinate Geometry*

#link("https://www.scribd.com/document/155282071/Two-Dimensional-Co-Ordinate-Geometry")

== Lines
=== Introduction

Angle between lines:
$ tan theta = frac(m_1 + m_2, 1+ m_1  m_2) $

If point cuts on $m_1$:$m_2$ \
$ x = frac(x_1+r x_2, 1+r) , y = frac(y_1+r y_2, 1+r) $

Area of triangle = 
$ frac(1,2) mat(delim:"|", x_1,y_1,1;x_2,y_2,1;x_3,y_3,1) $

Area of n-sided polygon=
$ frac(1,2) mat(delim:"|", x_1,x_2, x_3, ..., x_n , x_1; y_1, y_2, y_3, ..., y_n, y_1) $

=== Change of axis

Translation of axis:P' is new . 
$ x=x' + h, y=y'+k $
Rotation
$ mat(x;y) = mat(cos theta, -sin theta; sin theta, cos theta) $

=== Straight Lines

Point slope form: $y-y_1=m(x-x_1)$

#h(1em) Parametric: $ x = x_1 + t cos theta $ $ y = y_1 + t sin theta  $

Slope intercept: $ y = m x + c$

Two point form: $ frac(x-x_1,y-y_1) =  frac(x_1-x_2,y_1-y_2) $

#h(1em) Parametric: $ x = t x_1 + (1 - t) x_2 $ $ y = t y_1 + (1 - t) y_2 $

Intercept Form:$ frac(x,a) + frac(y,b) = 1  $

Normal form:
 $ x cos alpha + y sin alpha = p$

for $A x + B y + C = 0$,

#let msqq(a) = $frac(#a,plus.minus sqrt( A^2 + B^2))$
$ msqq(A) x + msqq(B) y + msqq(C) = 0 $

=== Distance between line and points:

For $ x cos alpha + y sin alpha -p = 0$
$ d = x_0 cos alpha + y_0 sin alpha -p $

For $A x + B y + C = 0$,
$ d =  abs(frac(A x_0 + B y_0 + C, sqrt(A^2+B^2)) ) $

Concurrancy,
$ mat(delim: "|",A_1,B_1,C_1;A_2,B_2,C_2;A_3,B_3,C_3;) = 0 $

=== Equation of line pairs
For $a x^2 + 2 h x y + b y^2 =0$,
+ real and distinct, $h^2 > a b $
+ real and coincident, $h^2 >= a b $
+ imaginary, $h^2 < a b $
Equation of bisector: $h x^2-(a-b)x y -h y^2=0$

* General eqution *
$a x^2+ 2 h x y + b y^2 + 2 g x + 2 f y + c = 0$, shall represent line if,
$ mat(delim: "|", a,h,g;h,b,f;g,f,c) $

== Circles
General: $a x^2 + 2h x y + b y^2 + 2g x+ 2 f y+ c=0$\
Condition: a=b & h = 0\
Centre:$(-frac(g,a),-frac(f,a))$\
radius: $ sqrt(frac(g^2,a^2)+frac(f^2,a^2)-frac(c,a)) $

Equation with diameter points, $pxy(1)$ ,$pxy(2)$
$ (frac(y-y_1,x-x_2)) (frac(y-y_2,x-x_2)) = -1 $

Equation at tangent:$pxy(1)$
$ x_1 x + y_1 y + g(x_1 + x) +f(y_1+y)+c=0 $
#h(1em)\* Same formula gives chord if point is outside.

Tangent having slope $m$:
$ y=m x plus.minus r sqrt(1+m^2) $


== Parabola
#image("../images/parabola.png")

Parametric:
$ x=a t^2 \ y = 2 a t $

Chord of parabola with ends $pxy(1), pxy(2)$: $ y ( y_1 - y_2)=4 a x + y_1 * y_2 $
Remark: If $y_1 + y_2 =0, x=x_1=x_2$

Equation of tangent $pxy(1)$
$ y_1 y = 2 a (x + x_1) $

In parametric form. $(a t^2,2a t)$
$ y = frac(x,t)+ a t $

== Ellipse
Standard form: $ frac(x^2,a^2)+ frac(y^2,b^2) = 1 $
Eccentricity (e): $ e ^2 = 1 - frac(b^2,a^2), "for" a>b $
Parametric: $x = a cos theta$, $x = b sin theta$

Tangent:
$ frac(x x_1,a^2 ) + frac(y y_1, b^2) = 1 $
Parametric:
$ frac(x,a) cos theta + frac(y,b)sin theta =1  $

== Hyperbola
Standard form: $ frac(x^2,a^2)- frac(y^2,b^2) = 1 $
Eccentricity (e): $ e ^2 = 1 + frac(b^2,a^2) > 1$

Asymptotes: 
$ frac(x,a) plus.minus frac(y,b) = 1 $
Parametric: $x = a sec` theta$, $x = b tan theta$
Chord: $pxy(1)$,$pxy(2)$
$ frac(x,a^2)(x_1+x_2)-frac(y,b^2)(y_1+y_2) = frac(x_1 x_2, a^2)-frac(y_1 y_2, b^2) +1 $

== General Equation of second degree
$a x^2 + 2h x y + b y^2 + 2g x+ 2 g y+ c=0$\
Tangent: $pxy(1)$
$ a x_1 x^2 + 2h (x y_1 +  y x_1) + b y_1 y^2 + 2g (x+x_1)+ 2 f (y+y_1)+ c=0 $ 
If $a b-h^2$
- =0. parabola
- >0, Ellipse
- \<0, hyperbola

Pair of lines:
$ tan 2 theta = frac(2 h, a-b) $
