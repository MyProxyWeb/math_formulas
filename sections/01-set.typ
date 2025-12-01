= Set Theory and Functions
#import "../utils/table.typ": table_with_sn

== Set Operations and Properties
=== Basic Set Operations
*Union:* $A union B = {x : x in A "or" x in B}$

*Intersection:* $A inter B = {x : x in A "and" x in B}$

*Difference:* $A - B = {x : x in A "and" x in.not B}$

*Symmetric Difference:* $A Delta B = (A - B) union (B - A)$

*Complement:* $A' = U - A = {x : x in U "and" x in.not A}$

*Cartesian Product:* $A times B = {(a,b) : a in A "and" b in B}$

=== Identity Laws
$ A union A = A $ (Idempotent)
$ A inter A = A $ (Idempotent)
$ A union emptyset = A $ (Identity for union)
$ A inter U = A $ (Identity for intersection)
$ A union U = U $ (Domination)
$ A inter emptyset = emptyset $ (Domination)

=== Commutative Laws
$ A union B = B union A $
$ A inter B = B inter A $
$ A Delta B = B Delta A $

*Note:* 
$ A - B eq.not B - A $ (Not commutative)
$ A times B eq.not B times A $ (Not commutative)

=== Associative Laws
$ (A union B) union C = A union (B union C) $
$ (A inter B) inter C = A inter (B inter C) $

=== Distributive Laws
$ A union (B inter C) = (A union B) inter (A union C) $
$ A inter (B union C) = (A inter B) union (A inter C) $
$ A times (B union C) = (A times B) union (A times C) $
$ A times (B inter C) = (A times B) inter (A times C) $
$ A times (B - C) = (A times B) - (A times C) $

=== De Morgan's Laws
$ (A union B)' = A' inter B' $
$ (A inter B)' = A' union B' $

Generalized:
$ (union.big_(i=1)^n A_i)' = inter.big_(i=1)^n A_i' $
$ (inter.big_(i=1)^n A_i)' = union.big_(i=1)^n A_i' $

=== Difference Laws
$ A - (B inter C) = (A - B) union (A - C) $
$ A - (B union C) = (A - B) inter (A - C) $
$ A - B = A inter B' $
$ B - A = B inter A' $
$ A inter (B - C) = (A inter B) - (A inter C) $

=== Symmetric Difference Laws
$ A Delta B = (A - B) union (B - A) $
$ A Delta B = (A union B) - (A inter B) $
$ A inter (B Delta C) = (A inter B) Delta (A inter C) $
$ A Delta emptyset = A $
$ A Delta A = emptyset $
$ A Delta U = A' $

=== Complement Laws
$ A union A' = U $
$ A inter A' = emptyset $
$ (A')' = A $ (Involution)
$ U' = emptyset $
$ emptyset' = U $

=== Additional Properties
$ A subset.eq A union B $
$ A inter B subset.eq A $
$ A subset.eq B arrow.l.r.double A union B = B $
$ A subset.eq B arrow.l.r.double A inter B = A $
$ A - B = A - (A inter B) $
$ A union (A inter B) = A $ (Absorption)
$ A inter (A union B) = A $ (Absorption)

== Relations
=== Types of Relations
*Reflexive:* $(a,a) in R$ for all $a in A$

*Symmetric:* $(a,b) in R arrow.r.double (b,a) in R$

*Transitive:* $(a,b) in R$ and $(b,c) in R arrow.r.double (a,c) in R$

*Anti-symmetric:* $(a,b) in R$ and $(b,a) in R arrow.r.double a = b$

=== Equivalence Relations
A relation is an *equivalence relation* if it is:
- Reflexive
- Symmetric  
- Transitive

*Equivalence Class:* $[a] = {x in A : (a,x) in R}$

=== Partial Order Relations
A relation is a *partial order* if it is:
- Reflexive
- Anti-symmetric
- Transitive

== Functions
=== Types of Functions
*One-to-one (Injective):*
$ f(x_1) = f(x_2) arrow.r.double x_1 = x_2 $

*Onto (Surjective):*
For every $y in B$, there exists $x in A$ such that $f(x) = y$

*Bijective:*
Both one-to-one and onto

=== Function Composition
$ (g compose f)(x) = g(f(x)) $

*Properties:*
- Generally not commutative: $g compose f eq.not f compose g$
- Associative: $(h compose g) compose f = h compose (g compose f)$

=== Inverse Function
If $f : A arrow B$ is bijective, then $f^(-1) : B arrow A$ exists.

$ f(f^(-1)(x)) = x $ and $ f^(-1)(f(x)) = x $

== Domain and Range of Standard Functions

=== Trigonometric Functions
#table_with_sn(
  ([*Function*], [*Domain*], [*Range*]),
  (
    ([$y = sin x$], [$RR$], [$[-1, 1]$]),
    ([$y = cos x$], [$RR$], [$[-1, 1]$]),
    ([$y = tan x$], [$RR - {(2n+1)pi/2 : n in ZZ}$], [$RR$]),
    ([$y = cot x$], [$RR - {n pi : n in ZZ}$], [$RR$]),
    ([$y = sec x$], [$RR - {(2n+1)pi/2 : n in ZZ}$], [$(-infinity, -1] union [1, infinity)$]),
    ([$y = csc x$], [$RR - {n pi : n in ZZ}$], [$(-infinity, -1] union [1, infinity)$]),
  ),
)

=== Inverse Trigonometric Functions
#table_with_sn(
  ([*Function*], [*Domain*], [*Range*]),
  (
    ([$y = sin^(-1) x$], [$[-1, 1]$], [$[-pi/2, pi/2]$]),
    ([$y = cos^(-1) x$], [$[-1, 1]$], [$[0, pi]$]),
    ([$y = tan^(-1) x$], [$RR$], [$(-pi/2, pi/2)$]),
    ([$y = cot^(-1) x$], [$RR$], [$(0, pi)$]),
    ([$y = sec^(-1) x$], [$(-infinity, -1] union [1, infinity)$], [$[0, pi] - {pi/2}$]),
    ([$y = csc^(-1) x$], [$(-infinity, -1] union [1, infinity)$], [$[-pi/2, pi/2] - {0}$]),
  ),
)

=== Other Standard Functions
#table_with_sn(
  ([*Function*], [*Domain*], [*Range*]),
  (
    ([$y = a^x$ $(a > 0, a eq.not 1)$], [$RR$], [$(0, infinity)$]),
    ([$y = log_a x$ $(a > 0, a eq.not 1)$], [$(0, infinity)$], [$RR$]),
    ([$y = e^x$], [$RR$], [$(0, infinity)$]),
    ([$y = ln x$], [$(0, infinity)$], [$RR$]),
    ([$y = abs(x)$], [$RR$], [$[0, infinity)$]),
    ([$y = x^2$], [$RR$], [$[0, infinity)$]),
    ([$y = sqrt(x)$], [$[0, infinity)$], [$[0, infinity)$]),
    ([$y = 1/x$], [$RR - {0}$], [$RR - {0}$]),
    ([$y = floor(x)$ (floor)], [$RR$], [$ZZ$]),
    ([$y = ceil(x)$ (ceiling)], [$RR$], [$ZZ$]),
    ([$y = {x}$ (fractional)], [$RR$], [$[0, 1)$]),
  ),
)

=== Polynomial and Rational Functions
*Polynomial:* $P(x) = a_n x^n + a_(n-1) x^(n-1) + ... + a_1 x + a_0$
- Domain: $RR$
- Range: Depends on degree and leading coefficient

*Rational:* $f(x) = P(x)/Q(x)$
- Domain: $RR$ excluding zeros of $Q(x)$
- Range: Varies based on function

=== Hyperbolic Functions
#table_with_sn(
  ([*Function*], [*Domain*], [*Range*]),
  (
    ([$y = sinh x = (e^x - e^(-x))/2$], [$RR$], [$RR$]),
    ([$y = cosh x = (e^x + e^(-x))/2$], [$RR$], [$[1, infinity)$]),
    ([$y = tanh x = (sinh x)/(cosh x)$], [$RR$], [$(-1, 1)$]),
    ([$y = coth x$], [$RR - {0}$], [$(-infinity, -1) union (1, infinity)$]),
    ([$y = "sech" x = 1/(cosh x)$], [$RR$], [$(0, 1]$]),
    ([$y = "csch" x = 1/(sinh x)$], [$RR - {0}$], [$RR - {0}$]),
  ),
)

== Cardinality
=== Finite Sets
$ abs(A union B) = abs(A) + abs(B) - abs(A inter B) $
$ abs(A times B) = abs(A) times abs(B) $
$ abs(A - B) = abs(A) - abs(A inter B) $

For three sets:
$ abs(A union B union C) = abs(A) + abs(B) + abs(C) - abs(A inter B) - abs(B inter C) - abs(A inter C) + abs(A inter B inter C) $

=== Power Set
Number of subsets of a set with $n$ elements:
$ abs(cal(P)(A)) = 2^n $

Number of proper subsets: $2^n - 1$