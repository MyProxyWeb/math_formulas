= Permutations, Combinations and Statistics

== Fundamental Principles
=== Addition Principle
If an event can occur in $m$ ways and another event can occur in $n$ ways, and both cannot occur together, then either event can occur in $m + n$ ways.

=== Multiplication Principle
If an event can occur in $m$ ways and for each of these, another event can occur in $n$ ways, then both events can occur in $m times n$ ways.

== Factorial
=== Definition
$ n! = n times (n-1) times (n-2) times ... times 2 times 1 $
$ 0! = 1 $

=== Properties
$ n! = n times (n-1)! $
$ frac(n!, (n-r)!) = n times (n-1) times ... times (n-r+1) $

== Permutations
=== Basic Permutation
Number of arrangements of $n$ objects taken $r$ at a time:
$ P(n,r) = ""^n P_r = frac(n!, (n-r)!) $

When $r = n$:
$ P(n,n) = n! $

=== Permutation with Repetition
Permutations of $n$ objects where $p$ are of one kind, $q$ of another kind, etc.:
$ frac(n!, p! q! r! ...) $

=== Circular Permutations
Circular arrangements of $n$ distinct objects:
$ (n-1)! $

Circular arrangements with clockwise and anticlockwise same:
$ frac((n-1)!, 2) $

=== Properties
$ ""^n P_r = n times ""^(n-1) P_(r-1) $
$ ""^n P_r = ""^n P_(n-r) times frac(n!, (n-r)!) $

== Combinations
=== Basic Combination
Number of selections of $n$ objects taken $r$ at a time:
$ C(n,r) = ""^n C_r = binom(n, r) = frac(n!, r!(n-r)!) $

=== Properties
$ ""^n C_r = ""^n C_(n-r) $
$ ""^n C_r + ""^n C_(r-1) = ""^(n+1) C_r $ (Pascal's Identity)
$ ""^n C_0 + ""^n C_1 + ""^n C_2 + ... + ""^n C_n = 2^n $
$ ""^n C_0 - ""^n C_1 + ""^n C_2 - ... + (-1)^n ""^n C_n = 0 $
$ ""^n C_r = frac(n, r) ""^(n-1) C_(r-1) $

=== Selection with Repetition
Number of ways to select $r$ objects from $n$ types with repetition:
$ ""^(n+r-1) C_r = ""^(n+r-1) C_(n-1) $

== Binomial Theorem
=== Expansion
$ (x+y)^n = sum_(r=0)^n ""^n C_r x^(n-r) y^r $
$ (x+y)^n = ""^n C_0 x^n + ""^n C_1 x^(n-1) y + ""^n C_2 x^(n-2) y^2 + ... + ""^n C_n y^n $

=== General Term
$(r+1)$th term:
$ T_(r+1) = ""^n C_r x^(n-r) y^r $

=== Middle Term
If $n$ is even: middle term is $T_(n/2 + 1)$
If $n$ is odd: middle terms are $T_((n+1)/2)$ and $T_((n+3)/2)$

=== Greatest Term
If $frac((n+1)abs(y), abs(x)+abs(y))$ is an integer $m$, then $T_m$ and $T_(m+1)$ are equal and greatest.

Otherwise, greatest term is $T_(m+1)$ where $m = floor(frac((n+1)abs(y), abs(x)+abs(y)))$

=== Special Cases
$ (1+x)^n = sum_(r=0)^n ""^n C_r x^r $
$ (1-x)^n = sum_(r=0)^n ""^n C_r (-1)^r x^r $

== Multinomial Theorem
$ (x_1 + x_2 + ... + x_k)^n = sum frac(n!, r_1! r_2! ... r_k!) x_1^(r_1) x_2^(r_2) ... x_k^(r_k) $
where $r_1 + r_2 + ... + r_k = n$

== Statistics - Measures of Central Tendency
=== Mean
*Arithmetic Mean (ungrouped):*
$ overline(x) = frac(sum x_i, n) = frac(x_1 +v x_2 + ... + x_n, n) $

*Arithmetic Mean (grouped):*
$ overline(x) = frac(sum f_i x_i, sum f_i) = frac(sum f_i x_i, N) $

*Weighted Mean:*
$ overline(x)_w = frac(sum w_i x_i, sum w_i) $

*Properties:*
$ sum (x_i - overline(x)) = 0 $
If $y_i = a x_i + b$, then $overline(y) = a overline(x) + b$

=== Median
For ungrouped data (ordered):
- If $n$ is odd: Median $= x_((n+1)/2)$
- If $n$ is even: Median $= frac(x_(n/2) + x_(n/2+1), 2)$

For grouped data:
$ "Median" = L + frac(N/2 - F, f) times h $
where:\
$L$ = lower boundary of median class\
$N$ = total frequency\
$F$ = cumulative frequency before median class\
$f$ = frequency of median class\
$h$ = class width

=== Mode
For grouped data:
$ "Mode" = L + frac(f_1 - f_0, 2f_1 - f_0 - f_2) times h $
where:\
$L$ = lower boundary of modal class\
$f_1$ = frequency of modal class\
$f_0$ = frequency of class before modal class\
$f_2$ = frequency of class after modal class\
$h$ = class width

=== Relationship
For moderately asymmetric distribution:
$ "Mean" - "Mode" = 3("Mean" - "Median") $

== Measures of Dispersion
=== Range
$ "Range" = "Maximum value" - "Minimum value" $

=== Mean Deviation
*Mean Deviation about Mean:*
$ "M.D."(overline(x)) = frac(sum abs(x_i - overline(x)), n) $

*Mean Deviation about Median:*
$ "M.D."("Median") = frac(sum abs(x_i - "Median"), n) $

For grouped data:
$ "M.D." = frac(sum f_i abs(x_i - A), N) $
where $A$ is mean or median.

=== Variance
*Population Variance:*
$ sigma^2 = frac(sum (x_i - mu)^2, N) = frac(sum x_i^2, N) - mu^2 $

*Sample Variance:*
$ s^2 = frac(sum (x_i - overline(x))^2, n-1) = frac(sum x_i^2 - n overline(x)^2, n-1) $

For grouped data:
$ sigma^2 = frac(sum f_i (x_i - overline(x))^2, N) = frac(sum f_i x_i^2, N) - overline(x)^2 $

=== Standard Deviation

=== Coefficient of Variation
$ "C.V." = frac(sigma, overline(x)) times 100% $

Used to compare variability of two or more datasets.

== Probability Basics
=== Classical Definition
$ P(A) = frac("Number of favorable outcomes", "Total number of outcomes") $

=== Properties
$ 0 <= P(A) <= 1 $
$ P("certain event") = 1 $
$ P("impossible event") = 0 $
$ P(A') = 1 - P(A) $ (Complement)

=== Addition Rules
*For mutually exclusive events:*
$ P(A union B) = P(A) + P(B) $

*For any two events:*
$ P(A union B) = P(A) + P(B) - P(A inter B) $

*For three events:*
$ P(A union B union C) = P(A) + P(B) + P(C) - P(A inter B) - P(B inter C) - P(A inter C) + P(A inter B inter C) $

=== Conditional Probability
$ P(A|B) = frac(P(A inter B), P(B)) $

=== Multiplication Rules
*For independent events:*
$ P(A inter B) = P(A) times P(B) $

*For dependent events:*
$ P(A inter B) = P(A) times P(B|A) = P(B) times P(A|B) $

=== Bayes' Theorem
$ P(A_i|B) = frac(P(A_i) times P(B|A_i), sum_(j=1)^n P(A_j) times P(B|A_j)) $

== Probability Distributions
=== Binomial Distribution
$ P(X = r) = ""^n C_r p^r q^(n-r) $
where $q = 1-p$

*Mean:* $ mu = n p $
*Variance:* $ sigma^2 = n p q $
*Standard Deviation:* $ sigma = sqrt(n p q) $

=== Poisson Distribution
$ P(X = r) = frac(e^(-lambda) lambda^r, r!) $

*Mean:* $ mu = lambda $
*Variance:* $ sigma^2 = lambda $

=== Normal Distribution
Probability density function:
$ f(x) = frac(1, sigma sqrt(2 pi)) e^(-frac((x-mu)^2, 2 sigma^2)) $

*Standard Normal Distribution* ($mu = 0, sigma = 1$):
$ z = frac(x - mu, sigma) $

*Properties:*
$ P(mu - sigma < X < mu + sigma) approx 0.6827 $ (68.27%)
$ P(mu - 2sigma < X < mu + 2sigma) approx 0.9545 $ (95.45%)
$ P(mu - 3sigma < X < mu + 3sigma) approx 0.9973 $ (99.73%)

== Correlation and Regression
=== Correlation Coefficient (Pearson's r)
$ r = frac(sum (x_i - overline(x))(y_i - overline(y)), sqrt(sum (x_i - overline(x))^2 sum (y_i - overline(y))^2)) $

$ r = frac(N sum x_i y_i - sum x_i sum y_i, sqrt([N sum x_i^2 - (sum x_i)^2][N sum y_i^2 - (sum y_i)^2])) $

*Properties:*
$ -1 <= r <= 1 $

=== Regression Lines
*Regression line of y on x:*
$ y - overline(y) = frac(r sigma_y, sigma_x) (x - overline(x)) $
$ y - overline(y) = b_(y x) (x - overline(x)) $

*Regression line of x on y:*
$ x - overline(x) = frac(r sigma_x, sigma_y) (y - overline(y)) $
$ x - overline(x) = b_(x y) (y - overline(y)) $

*Relationship:*
$ r = sqrt(b_(y x) times b_(x y)) $
$ r^2 = b_(y x) times b_(x y) $ (if both slopes have same sign)