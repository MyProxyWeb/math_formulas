== Fourier Transform
=== Definition
$ F(omega) = cal(F){f(t)} = integral_(-infinity)^infinity f(t) e^(-i omega t) d t $

*Inverse Fourier transform:*
$ f(t) = cal(F)^(-1){F(omega)} = 1/(2pi) integral_(-infinity)^infinity F(omega) e^(i omega t) d omega $

=== Properties
*Linearity:*
$ cal(F){a f(t) + b g(t)} = a F(omega) + b G(omega) $

*Time shifting:*
$ cal(F){f(t-t_0)} = e^(-i omega t_0) F(omega) $

*Frequency shifting:*
$ cal(F){e^(i omega_0 t) f(t)} = F(omega - omega_0) $

*Scaling:*
$ cal(F){f(a t)} = 1/abs(a) F(omega/a) $

*Differentiation:*
$ cal(F){f'(t)} = i omega F(omega) $
$ cal(F){f^((n))(t)} = (i omega)^n F(omega) $

*Convolution:*
$ cal(F){f(t) * g(t)} = F(omega) G(omega) $

*Parseval's theorem:*
$ integral_(-infinity)^infinity abs(f(t))^2 d t = 1/(2pi) integral_(-infinity)^infinity abs(F(omega))^2 d omega $#import "../utils/table.typ": table_with_sn

= Laplace Transforms

== Definition
The Laplace transform of a function $f(t)$ is defined as:
$ F(s) = cal(L) {f(t)} = integral_0^infinity e^(-s t) f(t) d t = lim_(A -> infinity) integral_0^A e^(-s t) f(t) d t $

The inverse Laplace transform of $F(s)$ is defined as:
$ f(t) = cal(L)^(-1) {F(s)} = 1/(2 pi i) integral_(c - i infinity)^(c + i infinity) e^(s t) F(s) d s $

where $c$ is a real constant chosen so that the contour path is in the region of convergence of $F(s)$.

== Properties of Laplace Transform
=== Linearity
$ cal(L) {a f(t) + b g(t)} = a cal(L) {f(t)} + b cal(L) {g(t)} $
$ cal(L) {a f(t) + b g(t)} = a F(s) + b G(s) $

=== First Translation (Shifting) Theorem
$ cal(L) {e^(a t) f(t)} = F(s-a) $

=== Second Translation Theorem
$ cal(L) {u(t-c) f(t-c)} = e^(-c s) F(s) $

where $u(t-c)$ is the unit step function.

=== Change of Scale
$ cal(L) {f(c t)} = 1/c F(s/c) $

=== Derivative of Transform
$ cal(L) {t^n f(t)} = (-1)^n (d^n F(s))/(d s^n) = (-1)^n F^((n))(s) $

=== Transform of Derivative
$ cal(L) {f'(t)} = s F(s) - f(0) $
$ cal(L) {f''(t)} = s^2 F(s) - s f(0) - f'(0) $
$ cal(L) {f^((n))(t)} = s^n F(s) - s^(n-1) f(0) - s^(n-2) f'(0) - ... - f^((n-1))(0) $

=== Transform of Integral
$ cal(L) {integral_0^t f(tau) d tau} = F(s)/s $

=== Division by t
$ cal(L) {f(t)/t} = integral_s^infinity F(u) d u $

=== Convolution Theorem
$ cal(L) {f(t) * g(t)} = cal(L) {integral_0^t f(t-tau) g(tau) d tau} = F(s) G(s) $

=== Transform of Periodic Function
If $f(t+T) = f(t)$ (periodic with period $T$):
$ cal(L) {f(t)} = (integral_0^T e^(-s t) f(t) d t)/(1 - e^(-s T)) $

== Table of Laplace Transforms
#table_with_sn(
  columns: (auto, 150pt, 1fr),
  ([ $ f(t) = cal(L)^(-1) {F(s)} $ ], [ $ F(s) = cal(L) {f(t)} $ ]),
  (
    ($ 1 $, $ 1/s, quad s > 0 $),
    ($ t $, $ 1/s^2 $),
    ($ t^n, quad n = 1,2,3,... $, $ (n!)/s^(n+1) $),
    ($ t^p, quad p > -1 $, $ (Gamma(p+1))/s^(p+1) $),
    ($ sqrt(t) $, $ (sqrt(pi))/(2s^(3/2)) $),
    ($ t^(-1/2) $, $ sqrt(pi/s) $),
    ($ e^(a t) $, $ 1/(s-a), quad s > a $),
    ($ t e^(a t) $, $ 1/(s-a)^2 $),
    ($ t^n e^(a t), quad n = 1,2,3,... $, $ (n!)/(s-a)^(n+1) $),
    ($ sin(a t) $, $ a/(s^2 + a^2) $),
    ($ cos(a t) $, $ s/(s^2 + a^2) $),
    ($ t sin(a t) $, $ (2a s)/(s^2 + a^2)^2 $),
    ($ t cos(a t) $, $ (s^2 - a^2)/(s^2 + a^2)^2 $),
    ($ sin(a t) - a t cos(a t) $, $ (2a^3)/(s^2 + a^2)^2 $),
    ($ sin(a t) + a t cos(a t) $, $ (2a s^2)/(s^2 + a^2)^2 $),
    ($ sinh(a t) $, $ a/(s^2 - a^2), quad s > abs(a) $),
    ($ cosh(a t) $, $ s/(s^2 - a^2), quad s > abs(a) $),
    ($ t sinh(a t) $, $ (2a s)/(s^2 - a^2)^2 $),
    ($ t cosh(a t) $, $ (s^2 + a^2)/(s^2 - a^2)^2 $),
    ($ e^(a t) sin(b t) $, $ b/((s-a)^2 + b^2) $),
    ($ e^(a t) cos(b t) $, $ (s-a)/((s-a)^2 + b^2) $),
    ($ e^(a t) sinh(b t) $, $ b/((s-a)^2 - b^2) $),
    ($ e^(a t) cosh(b t) $, $ (s-a)/((s-a)^2 - b^2) $),
    ($ sin(a t) sinh(a t) $, $ (2a^2 s)/(s^4 + 4a^4) $),
    ($ sin(a t) cosh(a t) $, $ (a(s^2 + 2a^2))/(s^4 + 4a^4) $),
    ($ cos(a t) sinh(a t) $, $ (a(s^2 - 2a^2))/(s^4 + 4a^4) $),
    ($ cos(a t) cosh(a t) $, $ (s^3)/(s^4 + 4a^4) $),
    ($ u(t-c) $, $ e^(-c s)/s $),
    ($ delta(t-c) $, $ e^(-c s) $),
    ($ u(t-c) f(t-c) $, $ e^(-c s) F(s) $),
    ($ f(c t) $, $ 1/c F(s/c) $),
    ($ e^(c t) f(t) $, $ F(s-c) $),
    ($ t f(t) $, $ -F'(s) $),
    ($ t^n f(t), quad n = 1,2,3,... $, $ (-1)^n F^((n))(s) $),
    ($ f(t)/t $, $ integral_s^infinity F(u) d u $),
    ($ f'(t) $, $ s F(s) - f(0) $),
    ($ f''(t) $, $ s^2 F(s) - s f(0) - f'(0) $),
    ($ f^((n))(t) $, $ s^n F(s) - s^(n-1) f(0) - s^(n-2) f'(0) - ... - f^((n-1))(0) $),
    ($ integral_0^t f(v) d v $, $ F(s)/s $),
    ($ integral_0^t f(t-tau) g(tau) d tau $, $ F(s) G(s) $),
    ($ f(t+T) = f(t) $, $ (integral_0^T e^(-s t) f(t) d t)/(1 - e^(-s T)) $),
  ),
)

== Special Functions in Laplace Transform
=== Unit Step Function (Heaviside Function)
$ u(t-c) = cases(
  0 & "if" t < c,
  1 & "if" t >= c
) $

$ cal(L) {u(t-c)} = e^(-c s)/s $

=== Dirac Delta Function
$ delta(t-c) = cases(
  infinity & "if" t = c,
  0 & "if" t != c
) $

$ integral_(-infinity)^infinity delta(t-c) d t = 1 $

$ cal(L) {delta(t-c)} = e^(-c s) $

=== Rectangular Pulse
$ f(t) = u(t-a) - u(t-b) = cases(
  1 & "if" a <= t < b,
  0 & "otherwise"
) $

$ cal(L) {u(t-a) - u(t-b)} = (e^(-a s) - e^(-b s))/s $

== Applications of Laplace Transform
=== Solving Differential Equations
For differential equation with initial conditions:
1. Take Laplace transform of both sides
2. Use properties to convert derivatives
3. Solve algebraic equation for $F(s)$
4. Take inverse Laplace transform to get $f(t)$

=== Transfer Functions
For linear system with input $f(t)$ and output $g(t)$:
$ H(s) = G(s)/F(s) $

where $H(s)$ is the transfer function.

= Fourier Series

== Definition
A periodic function $f(x)$ with period $2pi$ can be represented as:
$ f(x) = a_0/2 + sum_(n=1)^infinity [a_n cos(n x) + b_n sin(n x)] $

== Fourier Coefficients
=== For Period $2pi$ (interval $[alpha, alpha + 2pi]$)
$ a_0 = 1/pi integral_alpha^(alpha + 2pi) f(x) d x $

$ a_n = 1/pi integral_alpha^(alpha + 2pi) f(x) cos(n x) d x, quad n = 1,2,3,... $

$ b_n = 1/pi integral_alpha^(alpha + 2pi) f(x) sin(n x) d x, quad n = 1,2,3,... $

*Common choice:* $alpha = -pi$ (interval $[-pi, pi]$)

=== For Arbitrary Period $2c$ (interval $[-c, c]$)
If $f(x)$ has period $2c$:
$ f(x) = a_0/2 + sum_(n=1)^infinity [a_n cos((n pi x)/c) + b_n sin((n pi x)/c)] $

Coefficients:
$ a_0 = 1/c integral_(-c)^c f(x) d x $

$ a_n = 1/c integral_(-c)^c f(x) cos((n pi x)/c) d x, quad n = 1,2,3,... $

$ b_n = 1/c integral_(-c)^c f(x) sin((n pi x)/c) d x, quad n = 1,2,3,... $

== Special Cases
=== Case I: Even Function
If $f(-x) = f(x)$ (even function):

$ a_0 = 2/c integral_0^c f(x) d x $

$ a_n = 2/c integral_0^c f(x) cos((n pi x)/c) d x $

$ b_n = 0 $

*Fourier cosine series:*
$ f(x) = a_0/2 + sum_(n=1)^infinity a_n cos((n pi x)/c) $

=== Case II: Odd Function
If $f(-x) = -f(x)$ (odd function):

$ a_0 = 0 $

$ a_n = 0 $

$ b_n = 2/c integral_0^c f(x) sin((n pi x)/c) d x $

*Fourier sine series:*
$ f(x) = sum_(n=1)^infinity b_n sin((n pi x)/c) $

== Half-Range Expansions
=== Half-Range Cosine Series
For function defined on $[0, c]$, extend as even function:
$ f(x) = a_0/2 + sum_(n=1)^infinity a_n cos((n pi x)/c) $

$ a_0 = 2/c integral_0^c f(x) d x $

$ a_n = 2/c integral_0^c f(x) cos((n pi x)/c) d x $

=== Half-Range Sine Series
For function defined on $[0, c]$, extend as odd function:
$ f(x) = sum_(n=1)^infinity b_n sin((n pi x)/c) $

$ b_n = 2/c integral_0^c f(x) sin((n pi x)/c) d x $

== Complex Form of Fourier Series
$ f(x) = sum_(n=-infinity)^infinity c_n e^(i n x) $

where:
$ c_n = 1/(2pi) integral_(-pi)^pi f(x) e^(-i n x) d x $

For period $2c$:
$ c_n = 1/(2c) integral_(-c)^c f(x) e^(-i n pi x\/c) d x $

*Relation with real coefficients:*
$ c_0 = a_0/2 $
$ c_n = (a_n - i b_n)/2, quad n > 0 $
$ c_(-n) = (a_n + i b_n)/2, quad n > 0 $

== Parseval's Theorem
=== For Fourier Series
$ 1/pi integral_(-pi)^pi [f(x)]^2 d x = a_0^2/2 + sum_(n=1)^infinity (a_n^2 + b_n^2) $

For period $2c$:
$ 1/c integral_(-c)^c [f(x)]^2 d x = a_0^2/2 + sum_(n=1)^infinity (a_n^2 + b_n^2) $

== Convergence of Fourier Series
=== Dirichlet Conditions
Fourier series of $f(x)$ converges if:
1. $f(x)$ is periodic
2. $f(x)$ is single-valued and finite
3. $f(x)$ has finite number of discontinuities in one period
4. $f(x)$ has finite number of maxima and minima in one period

*At point of continuity:* Series converges to $f(x)$

*At point of discontinuity:* Series converges to $(f(x^+) + f(x^-))/2$

== Common Fourier Series Examples
=== Square Wave
$ f(x) = cases(
  1 & 0 < x < pi,
  -1 & -pi < x < 0
) $

$ f(x) = 4/pi sum_(n=1,3,5,...)^infinity 1/n sin(n x) = 4/pi [sin x + 1/3 sin 3x + 1/5 sin 5x + ...] $

=== Sawtooth Wave
$ f(x) = x, quad -pi < x < pi $

$ f(x) = 2 sum_(n=1)^infinity ((-1)^(n+1))/n sin(n x) = 2[sin x - 1/2 sin 2x + 1/3 sin 3x - ...] $

=== Triangular Wave
$ f(x) = abs(x), quad -pi < x < pi $

$ f(x) = pi/2 - 4/pi sum_(n=1,3,5,...)^infinity 1/n^2 cos(n x) $

=== Full-Wave Rectifier
$ f(x) = abs(sin x), quad -pi < x < pi $

$ f(x) = 2/pi - 4/pi sum_(n=1)^infinity 1/(4n^2 - 1) cos(2n x) $