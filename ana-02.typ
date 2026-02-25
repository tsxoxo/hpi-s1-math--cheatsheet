#import "template.typ": *

= ana-02

== Standard Integrale (18.13)
$integral x^r thin = x^(r+1)/(r+1) quad | quad
integral 1/x thin = ln(|x|)$

$integral ln(x) thin = x(ln(x) - 1) quad | quad
integral e^x thin = e^x$

== Metrik & Norm (19.1, 19.4, 19.7)
*Metrik* $d: M times M -> RR_(>=0)$:
1. (M1) *Definitheit*: $d(x,y)=0 arrow.l.r x=y$. _(Können versch. Objekte
    Distanz 0 haben?)_
2. (M2) *Symmetrie*: $d(x,y)=d(y,x)$.
3. (M3) *$triangle.stroked$ungl.*: $d(x,z) <= d(x,y) + d(y,z)$.

*Norm* $||dot||: V -> RR_(>=0)$:
1. (N1) $||x||=0 arrow.l.r x=0$
2. (N2) $||lambda x|| = |lambda| dot ||x||$
3. (N3) $||x+y|| <= ||x|| + ||y||$

*Induzierte Metrik* (19.7): Jede Norm definiert eine Metrik via
$d(x,y) := ||x - y||$.

*Norm des Nullvektors (19.5)*
$||v|| = 0 arrow.l.r v = 0$.

*$p$-Norm*: $||v||_p = root(p, sum_(i=1)^n |v_i|^p)$.

*Standard Normen (19.6, 19.8)*
- *Euklidisch ($p=2$)*: $||x||_2 = sqrt(sum x_i^2)$
- *Summe ($p=1$)*: $||x||_1 = sum |x_i|$
- *Maximum ($p=infinity$)*: $||x||_infinity = max_i |x_i|$

== Hesse-Matrix
$A(i,j) = partial / ( partial x_i ) partial / ( partial x_j ) f(x)$

*Beispiel (2D)*:
$H_f(x,y) = mat(f_(x x), f_(x y); f_(y x), f_(y y))$

TIP: probably, Hesse Matrix is going to be symmetric (schwartz's theorem: mixed
partial der are equal for smooth funcs like polynomials)

#recipe("Extrema bestimmen")[
    // 1. *Notwendig*: Gradient $nabla f(x) = arrow(0)$ setzen & nach $x_0$ lösen.
    1. *Notwendig*: Alle Ableitungen $f(x_i)'$ auf 0 setzen und LGS loesen
    2. *Hinreich.*: Make Hesse-Mat. $H_f(x_0)$: Matrix of all 2nd partial
        derivatives.
        - Plug every candidate $x_0$ into $H_f$.

    3. Definitheit prüfen (via Eigenwerte $lambda$):
        - *Positiv definit* (alle $lambda > 0$): *Lok. Min.*.
        - *Negativ definit* (alle $lambda < 0$): *Lok. Max.*
        - *Indefinit* (gemischte $lambda$): *Sattelpunkt*.
        - *Semi-definit* (ein $lambda = 0$): *???* $arrow.r$ algeb. prüfen: e.g.
            check for squares $(...)^2 >= 0$
]

