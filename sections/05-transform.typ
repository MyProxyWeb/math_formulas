#import "../utils/table.typ": table_with_sn

= Laplace Transforms

$ F(s) = L{f(t)} = integral_0^infinity e ^(-s t) f(t)  d t = limits(lim)_(A -> infinity) integral_0^A e ^(-s t) f(t)  d t $

#table_with_sn(
  ([$f(t)=L^(-1){F(s)}$], [$F(s)=L[f(t)]]$], ),
  (
    ($1$,$1/s$),
    ($e^(a t)$,$1/(s-a)$),
    ($t^n,n=1,2,3 dots $,$frac(n!,s^(n+1))$),
    ($t^p , p>-1$,$frac(Gamma (p+1),s^(p+1))$),
    ($sqrt(t)$,$frac(sqrt(pi),2 s^(3/2))$),
    ($sin(a t)$,$a/(s^2+a^2)$),
    ($cos(a t)$,$s/(s^2+a^2)$),
    ($t sin(a t)$,$(2a s)/(s^2+a^2)^2$),
    ($t sin(a t)$,$(s^2 - a^2)/(s^2+a^2)^2$),
    ($sinh(a t)$,$a/(s^2-a^2)$),
    ($cosh(a t)$,$s/(s^2-a^2)$),
    ($e^(a t) sin(b t)$,$b/((s-a)^2+b^2)$),
    ($e^(a t) cos(b t)$,$(s-a)/((s-a)^2+b^2)$),
    ($e^(a t) sinh(b t)$,$b/((s-a)^2-b^2)$),
    ($e^(a t) cosh(b t)$,$(s-a)/((s-a)^2-b^2)$),
    ($t^n e^(a t), n=1,2,3 dots$,$(n !)/(s-a)^(n+1)$),
    ($f(c t)$,$1/c F(s/c)$),
    ($u(t-c)$,$e^(-c s)/s$),
    ($delta(t-c)$,$e^(-c s)$),
    ($u(t)f(t-c)$,$e^(-c s)F(s)$),
    ($e^(c t) f(t)$,$F(s-c)$),
    ($1/t f(t)$,$integral_0^infinity F(u) d u$),
    ($integral_0^infinity f(t-tau)g(tau)d tau $,$ F(s)G(s)$),
    ($f'(t)$,$s F(s) - f(0)$),
    ($f^n (t)$,$s^n F(s) - s^(n-1)f(0)-s^(n-2) f'(0) dots - f^(n-1)f(0)$),
    ($t^n f(t), n =1,2,3 dots $,$(-1)^n F^n (s)$),
    ($integral_0^1 f(v) d v $,$ F(s)/s$),
    ($f(t+T)=f(t)$,$frac(integral_0^T e^(-s t) f(t) d t ,1-e^(-s T))$)
  ),
)

= Fourier Series
$ f(x) = a_0/2 + sum_(n=1)^(infinity)a_n cos(n x) + sum_(n=1)^(infinity)a_n sin(n x) $

$ a_0 = 1/pi integral_alpha^(alpha+2pi) f(x) d x $

$ a_n = 1/pi integral_alpha^(alpha+2pi) f(x) cos(n x) d x $


$ b_n = 1/pi integral_alpha^(alpha+2pi) f(x) sin(n x) d x $


for arbitary interval $(-c,c)$:
$ f(x) = a_0/2 + sum_(n=1)^(infinity)a_n cos((n pi x)/c) + sum_(n=1)^(infinity)a_n sin(n pi x)/c)) $

$ a_0 = 1/c integral_alpha^(alpha+2c) f(x) d x $

$ a_n = 1/c integral_alpha^(alpha + 2c) f(x) cos(n pi x)/c)) d x $


$ b_n = 1/c integral_alpha^(alpha+2c) f(x) sin(n pi x)/c)) d x $

==== Case I : f(x) is even
- $a_0 = 2/c integral_0^(c) f(x) d x $

- $a_n = 2/c integral_0^(c) f(x) cos(n pi x)/c)) d x $

- $b_n = 0 $


==== Case II : f(x) is odd
- $a_0 = 0 $

- $a_n = 0$

- $b_n = 2/c integral_0^(c) f(x) sin(n pi x)/c)) d x $