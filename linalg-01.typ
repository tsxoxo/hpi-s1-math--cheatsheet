// linear_algebra.typ
#import "template.typ": *

// Apply the template to the whole document
#show: cheatsheet

// ==========================================
// LINEARE ALGEBRA CHEAT SHEET
// ==========================================

= LinAlg I
== Rechenregeln Vektorraum
Für alle $u,v,w in RR^n$ und $x,y in RR$:
  1. *Assoziativ:* $u+(v+w) = (u+v)+w$
  2. *Distributiv I:* $x(u+v) = x u + x v$
  3. *Distributiv II:* $(x+y)u = x u + y u$
  4. *Gemischt:* $(x y) u = x (y u)$
  5. *Neutral:* $1 dot u = u$
  6. *Null-Vektor:*
     - $0 dot u = #zero$
     - $x dot #zero = #zero$
     - $x u = #zero => x=0 or u=#zero$
  7. *Kommutativ:* $u + v = v + u$

== Untervektorraum (UVR)
Ein $U subset.eq RR^n$ ist UVR, wenn:
1. $U eq.not emptyset$ (z.B. $#zero in U$)
2. $forall u, v in U, lambda in RR: u + lambda v in U$ (Abgeschlossenheit)

== Schnitt von Unterräumen (Satz 13.7)
Seien $U, W subset.eq RR^n$ Unterräume. Dann ist $U inter W$ ein Unterraum von $RR^n$.

== Lineare Hülle (Def 13.11)
Sei $A subset.eq RR^n$ eine Menge von Vektoren.
$ [A] := { sum_(i=1)^k x_i a_i | k in NN and forall i, 1 <= i <= k : x_i in RR and a_i in A } $

$ [u_1, ..., u_m] := { sum_(i=1)^m x_i u_i | forall i, 1 <= i <= m : x_i in RR } $

== Linear Unabhängig (Def 13.15)
$u_1, ..., u_k in RR^n$ heißen *linear unabhängig* gdw. für alle $x_1, ..., x_k in RR$:
$ sum_(i=1)^k x_i u_i = #zero <==> x_1 = x_2 = dots = x_k = 0 $

== Lineare Abhängigkeit & Darstellungen (Satz 13.16)
Seien $u_1, ..., u_k$ linear abhängig. Dann existiert $i <= k$, so dass:
$ u_i in [u_1, ..., u_(i-1), u_(i+1), ..., u_k] $

== Vererbung Lin. (Un)Abhängigkeit (Satz 13.19)
Seien $U subset.eq W subset.eq RR^n$.
1. Falls $W$ l.u. ist, so auch $U$.
2. Falls $U$ l.a. ist, so auch $W$.

== Basis
Eine Menge $B subset.eq V$ ist Basis von $U$, wenn:
1. $B$ ist *linear unabhängig* 
2. $[B] = U$ 

== Dimension
$dim(U) =$ Anzahl der Vektoren in einer Basis von $U$.
- $dim({#zero}) = 0$ (Basis ist $emptyset$)

== Äquivalente Aussagen zu Basen I (Satz 13.23)
Sei $B subset.eq U$. Äquivalent sind:
1. $B$ ist Basis von $U$.
2. jede Menge $B'$ mit $B subset.eq.not B' subset.eq U$ ist l.a.
// 2. $B$ ist $subset.eq$-maximale l.u. Teilmenge von $U$.
3. fuer jede Menge $B''$ mit $B'' subset.eq.not B$ gilt $[B''] subset.eq.not U$
// 3. $B$ ist $subset.eq$-minimale Teilmenge mit $[B]=U$.

== Äquivalente Aussagen zu Basen II (Satz 13.26)
Sei $B subset.eq U$. Äquivalent sind:
1. $B$ ist Basis von $U$.
2. $B$ l.u $and B subset.eq U and |B| = dim(U)$.
3. $[B]=U and |B| = dim(U)$.

== Dimensionssatz (Satz 13.28)
Für Unterräume $U, T subset.eq RR^n$:
$ dim(U inter T) + dim([U union T]) = dim(U) + dim(T) $

//============================================================ 
// = Recipes
//============================================================ 

#recipe("Lineare Unabhängigkeit (L.U.)")[
  Prüfe Menge ${v_1, ..., v_k}$.
  1. Ansatz: $lambda_1 v_1 + ... + lambda_k v_k = #zero$
  2. LGS lösen für $lambda_i$.
  3. Freie Variablen? $->$ *L.A.* (setze $lambda_1=1$ für Gegenbeispiel).
]

#recipe("Basis aus Erzeugendensystem")[
  Gegeben $M = {v_1, ..., v_k}$, suche Basis für $[M]$.
  1. Schreibe $v_i$ als *Spalten* in Matrix $A$.
  2. Bringe $A$ auf Zeilenstufenform (ZSF).
  3. Identifiziere *Pivot-Spalten* (Stufen).
  4. Die *Original-Vektoren* $v_i$ an den Pivot-Pos. bilden die Basis.
]

// SILVER
// #recipe("UVR Konstruktion (Hyperplane)")[
//   Ziel: UVR $U subset RR^n$, der keine Achsen enthält.
//   1. Wähle Bedingung: Summe der Komponenten ist 0.
//   2. $U = { x in RR^n | sum x_i = 0 }$
//   3. $e_i$ sind nicht enthalten, da $sum (e_i)_k = 1 eq.not 0$.
// ]
