#import "template.typ": *

= ana-01

== $e^x$ Potenzen & Logs (17.10, 17.11, 17.12)
*Umkehr*: $log_b (b^x) = x quad | quad b^(log_b (y)) = y$. *Pot*:
$b^(x+y) = b^x b^y quad | quad b^(x-y) = b^x / b^y quad | quad (b^x)^y = b^(x y) quad | quad a^x b^x = (a b)^x$.
*Log*:
$log_b (a c) = log_b (a) + log_b (c) med | med log_b (a/c) = log_b (a) - log_b (c) med | med log_b (a^y) = y log_b (a)$.
*Basisw.*:
$log_b (c) = (log_a (c)) / ( log_a (b) ) med | med b^x = a^(x log_a (b))$.
*exp*: $b^r = exp(r dot ln(b))$

== Betragsfunktion (17.4)
*Dreiecksungleichung*: $|x+y| <= |x| + |y|$. *Umgekehrt*: $|x| - |y| <= |x+y|$.
*Multiplikation*: $|x y| = |x| dot |y|$.

== $f'$ Ableitungen (18.1, 18.2)
*Standard*:
$(x^r)' = r x^(r-1) quad | quad (e^x)' = e^x quad | quad (ln(x))' = 1/x$. *Basis
$b$*: $(b^x)' = ln(b) b^x quad | quad (log_b (x))' = 1/(x ln(b))$. *Produkt*:
$(f g)' = f'g + f g' quad | quad$ *Quotient*: $(f/g)' = (f'g - f g')/g^2$.
*Kettenregel*: $(f(g))' = f'(g) dot g'$.

*Ableitungs-Shortcut*: Für
$f(x) = ln(x+c) arrow.r f'(x) = (x+c)^(-1), f''(x) = -(x+c)^(-2)$.

== Extrema (18.6)
*Extrema*: Notwendig: $f'(x)=0$. Hinreichend: $f'(x)=0$ und $f''(x) eq.not 0$
($>0$ Min, $<0$ Max).

== Approximation (18.10)
*Lin. Appr.* (um $x_0$): $f(x_0) + f'(x_0)(x - x_0)$. *Taylor* Beste Appr. durch
Polynom $n$-ten Grades bei $a$:
$T_n (x) = sum_(k=0)^n (f^((k))(a)) / k! (x - a)^k$
// *Spezialfall $a = 0$*: $f(0) + f'(0)x + (f''(0))/2 x^2 + ...$

== $integral$ Integrale (18.12, 18.14)
*Stammf.* $F$: $F'=f$. $integral_a^b f(x) thin d x = F(b) - F(a)$. *intervall*:
$integral_a^b = -integral_b^a quad | quad integral_a^c = integral_a^b + integral_b^c$.
*Linear*:
$integral (f+g) = integral f + integral g quad | quad integral c f = c integral f$.
*Monotonie*: $f <= g arrow.r integral f <= integral g$.


*Partiell*:
$integral f'(x) g(x) thin d x = f(x) g(x) - integral f(x) g'(x) thin d x$.

*Subst.*:
$integral_a^b f(g(x)) g'(x) thin d x = integral_(g(a))^(g(b)) f(z) thin d z$.

*Doppel*: $integral integral ... d x d y$ Von innen nach außen
