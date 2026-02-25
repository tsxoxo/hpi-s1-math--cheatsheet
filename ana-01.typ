// linear_algebra.typ
#import "template.typ": *

// Apply the template to the whole document
#show: cheatsheet

== Integrale & Regeln (18.13, 18.14, 18.15, 18.17)
// *Konstante ziehen* (18.14): $int c dot f(x) thin d x = c dot int f(x) thin d x$.
// *Standard* (18.13): $int 1/x thin d x = ln(|x|) quad | quad int ln(x) thin d x = x(ln(x) - 1)$.
// *Partiell* (18.15): $int f'(x) g(x) thin d x = f(x) g(x) - int f(x) g'(x) thin d x$.
// *Subst.* (18.17): $int_a^b f(g(x)) g'(x) thin d x = int_(g(a))^(g(b)) f(z) thin d z$.
*Doppelintegrale*: Von innen nach außen (Inneres Integral $arrow.l.r$ Inneres
Differential).

== Logarithmen & Betrag (17.3, 17.7, 17.10, 17.12)
*Log-Def* (17.10): $log_b (x) = y arrow.l.r b^y = x$. *Log-Produkt* (17.12):
$log_b (x dot y) = log_b (x) + log_b (y)$. *Log-Injektiv* (17.7):
$log_b (A) = log_b (B) arrow.l.r A = B$ (da exp/log strikt monoton). *Betrag*
(17.3): "Bei 0 aufteilen" ($++, +-, -+, --$). $x$ für $x >= 0$, sonst $-x$.

== Monotonie & Extrema (17.6, 18.5, 18.6)
*Extrema* (18.6):
- *Notwendig* ("Ticket"): $f'(x) = 0$.
- *Hinreichend* ("Ticket + ID"): $f'(x) = 0$ und $f''(x) eq.not 0$.
*Monotonie beweisen*:
- *Primär* (18.5): Ableitungstest (z.B. $f'(x) <= 0 arrow.r$ fallend).
- *Backup* (17.6): Definition ($a < b arrow.r f(a) >= f(b)$). _Tipp: $(b-a)$
    ausklammern._
*Ungleichungen*: Rückwärts lösen ($arrow.l.r$) ist valide, wenn dokumentiert.

== Taylor Approximation (18.10)
Beste Approximation durch Polynom $n$-ten Grades an der Stelle $a$:
$T_n (x) = sum_(k=0)^n (f^((k))(a)) / k! (x - a)^k$
*Spezialfall $a = 0$*: $f(0) + f'(0)x + (f''(0))/2 x^2 + ...$
*Ableitungs-Shortcut*: Für
$f(x) = ln(x+c) arrow.r f'(x) = (x+c)^(-1), f''(x) = -(x+c)^(-2)$.
