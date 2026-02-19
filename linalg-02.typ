// linear_algebra.typ
#import "template.typ": *

// Apply the template to the whole document
#show: cheatsheet

== Lineare Abbildung $phi: RR^n->RR^m$ (13.1)
$forall u, v in RR^n, x in RR: phi(x u + v) = x phi(u) + phi(v)$

== Rechenregeln l.A. (13.3)
1. $phi(#zero) = #zero$
2. $phi(u + v) = phi(u) + phi(v)$ (Additivitaet)
3. $phi(x v) = x phi(v)$ (Homogenitaet)

== Abschluss l.A. (13.5)
Sind $phi, psi$ linear und $x in RR$, dann auch:
1. $phi + psi$ (Summe)
2. $x phi$ (Skalarmultiplikation)
3. $psi compose phi$ (Komposition)

== Kern und Bild (13.6)
$"Kern"(phi) = {v in RR^n | phi(v) = #zero}$ (Nullstellen) \
$"Bild"(phi) = {phi(v) | v in RR^n}$ (Erreichbares) \
$phi$ ist injektiv $<==> "Kern"(phi) = {#zero}$.

== Dimensionssatz (13.7)
$"Kern"(phi)$ und $"Bild"(phi)$ sind UVR. \
$dim("Kern"(phi)) + dim("Bild"(phi)) = n$ (Dim. Startraum)

== l.A. als Matrix $M_phi in RR^(n times m)$ (13.9)
// Spalte $j$ = $phi(e_j)$ $thin$ | $thin$ 
$phi(v) = M_phi dot v$ $thin$ | $thin$ 
$(M dot v)_i = sum_(j=1)^m M(i,j) dot v_j$ ("Zeile mal Spalte")

1. $A(v + w) = A v + A w$
2. $A(x v) = x (A v)$

== Matrixmultiplikation $B in RR^(m times k)$ (13.17)
$(A dot B)(i, j) = sum_(x=1)^m A(i, x) dot B(x, j)$ $thin$ | $thin$ 
Ergebnis ist in $RR^(n times k)$.

== Inverse & Transposition (13.20)
*Inv.*: $A B = I_n$ $thin$ | $thin$ 
*Trans.*: $A^T (i, j) = A(j, i)$. $thin$ | $thin$ 
*Symm.*: $A^T = A$.

#recipe("Abbildungsmatrix bestimmen")[
  1. Nimm die Standardbasisvektoren $e_1, ..., e_n$.
  2. Berechne die Bilder: $phi(e_1), phi(e_2), ...$
  3. Bilder = *Spalten* 
]

#recipe("Matrix-Multiplikation (Zeile (links) mal Spalte (rechts))")[
$ mat(a, b; c, d) dot mat(e, f; g, h)
          = mat(
            a dot e + b dot g, a dot f + b dot h;
            c dot e + d dot g, c dot f + d dot h
          ) $

// Merksatz: 
// Position (1,1): Zeile 1 von A * Spalte 1 von B
// Position (1,2): Zeile 1 von A * Spalte 2 von B
]

#recipe("Inverse 2x2 (Determinanten-Formel)")[
  Für $A = mat(a, b; c, d)$ gilt:
  $ A^(-1) = 1/(a d - b c) mat(d, -b; -c, a) $
  1. Tausche Hauptdiagonale ($a <-> d$).
  2. Negiere Nebendiagonale ($b, c -> -b, -c$).
  3. Teile durch Determinante ($a d-b c$).
]

// #recipe("Inverse nxn (Gauss-Jordan)")[
//   Schreibe Blockmatrix $(A | I_n)$.
//   Führe Gauss-Schritte durch, bis links $I_n$ steht.
//   $ (A | I) --"Gauss"--> (I | A^(-1)) $
//   Steht links eine Nullzeile? $->$ Nicht invertierbar.
// ]
//
// #recipe("Projektion auf Vektor a")[
//   Projiziere $x$ auf Richtung $a$:
//   $ P_a (x) = (x dot a)/(a dot a) dot a $
// ]
//
// #recipe("Nilpotente Matrix (The Shift)")[
//   Ziel: Matrix $N$, so dass $N^k = 0$ (verschwindet nach k Schritten).
//   Strategie: Verschiebe Komponenten.
//   Bsp 3D ($N^3 = 0$): $e_1 -> e_2 -> e_3 -> 0$.
//   $ N = mat(0, 0, 0; 1, 0, 0; 0, 1, 0) $
// ]
