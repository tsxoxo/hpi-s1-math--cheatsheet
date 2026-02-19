// linear_algebra.typ
#import "template.typ": *

// Apply the template to the whole document
#show: cheatsheet

== Rang & Invertierbarkeit (14.1, 14.3)
$dim(["Spalten"])$. $thin$ | $thin$
$A$ inv. $arrow.l.r "rang"(A) = n$.

== Determinante (14.5, 14.7)
$det(A) = sum_(sigma in S_n) "sgn"(sigma) product_(i=1)^n A(i, sigma(i))$.\
// *"sgn"*: $(-1)^k$, $k=$ Anz. Fehlstände ("falsch" sortierte Paare).
$det mat(a, b; c, d) = a d - b c$. $thin$ | $thin$
$A$ inv. $arrow.l.r det(A) eq.not 0$.

== Eigenwerte (EW) & -vektoren (EV) (14.8)
$A v = lambda v$ ($v eq.not 0$). $thin$ | $thin$
EV zu $lambda$ bilden UVR (14.10).
EV zu versch. EW sind l.u. (14.11).\
*Diag-Mat*: EW = Dia.werte (da $e_i$ EV sind).

== Charakteristisches Polynom (14.12)
$det(A - lambda I_n)$.
// Nullstellen von $p_A$ sind genau die EW.

== Großer Äquivalenzsatz (14.14)
$A in RR^(n times n)$ invertierbar $arrow.l.r$:
1. $"rang"(A) = n$ $thin$ | $thin$ $det(A) eq.not 0$.
2. $"Kern"(A) = {0}$ $thin$ | $thin$ $"Bild"(A) = RR^n$.
3. Spalten sind l.u. / Basis v. $RR^n$. 
4. 0 ist kein Eigenwert.
5. $A x = b$ eindeutig lösbar.

#recipe("Eigenwert & Vektor bestimmen")[
  1. *EW*: Berechne $det(A - lambda I) = 0$.
  2. *EV*: Für jedes $lambda$, löse $(A - lambda I) v = 0$.
]
