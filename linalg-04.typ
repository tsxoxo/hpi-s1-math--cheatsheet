#import "template.typ": *

= linalg-04

== Koordinatentransformation (15.2, 15.5)
$K_B (v) = (x_1, ..., x_n)^T$ mit $v = sum_(i=1)^n x_i b_i$.\
$M_B = [b_1 | ... | b_n]$ (Basisvektoren als Spalten).
$K_B (v) = M_B^(-1) v^T quad | quad M_B K_B (v) = v^T$.

== Diagonalisierung (15.10, 15.12)
$M_phi$ diagonalisierbar, falls Basis aus EVs existiert.
$M_phi = M_B M_phi^B M_B^(-1)$ ($M_phi^B$: EW auf Dia). *Potenzieren*:
$A^k = T D^k T^(-1)$.

== Cholesky (15.14, 15.15, 15.16)
$L = triangle.stroked.bl$
*Cholesky-Zerlegung*: $A = L L^T$. *Existenz*: $A$ symmetrisch & EWs > 0

#recipe("Diagonalisierung: A = T D T^(-1)")[
    1. EWs $lambda_i$, EVs $v_i$ bestimmen
    2. $T = mat(v_1, v_2, ...)$, $D = mat(lambda_1, 0; 0, lambda_2)$
    // 3. *T invertieren*
]

#recipe("LGS via Cholesky lösen: Ax = b | A = L L^T")[
    1. Löse $L y = b$ nach $y$
    2. Löse $L^T x = y$ nach $x$
]
