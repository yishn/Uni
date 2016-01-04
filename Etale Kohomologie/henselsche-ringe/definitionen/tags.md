#6-35:Lemma

Sei `(A,\mathfrak{m},k)` ein lokaler Ring. Es seien `g,h\in A[T]` normiert und `\overline{g},\overline{h}\in k[T]` ihre Bilder. Dann gilt:

1. `(g, h) = A[T] \iff (\overline{g}, \overline{h}) = k[T]`
2. Gilt `g_1h_1 = g_2h_2` mit `\overline{g_1} = \overline{g_2}`, `\overline{h_1} = \overline{h_2}` und `(\overline{g_1},\overline{h_1}) = k[T]`, so folgt `g_1 = g_2` und `h_1 = h_2`.

---

1. Die Hinrichtung ist trivial. Sei umgekehrt `(\overline{g}, \overline{h}) = k[T]`. Setze `M = A[T]/(g,h)`. Dann ist `M` ein endlich erzeugter `A`-Modul und `M/\mathfrak{m}M = k[T]/(\overline{g},\overline{h}) = 0`. Nach Nakayama folgt `M = 0`.

2. Nach (i) gilt `(g_1,h_2) = A[T]`, also existieren `r,s\in A[T]` mit `g_1r + h_2s = 1`. Es folgt:

       g_2 = g_2g_1r + g_2h_2s = g_2g_1r + g_1h_1s

   Es folgt `g_1\mid g_2`. Beide Polynome sind normiert vom gleichen Grad, also gilt `g_1 = g_2`. Analog sieht man `h_1 = h_2`.

#6-36:Definition

Ein lokaler Ring `(A, \mathfrak{m},k)` heißt *henselsch*, wenn gilt: Ist `f\in A[T]` normiert und es gilt `\overline{f} = g_0\cdot h_0` mit normierten, teilerfremden Polynome `g_0,h_0\in k[T]`, so existieren normierte `g,h\in A[T]` mit `f = g\cdot h` und `\overline{g} = g_0`, `\overline{h} = h_0`. ~~henselsch|Ring~~

#6-37:Bemerkung

Nach [~](#6-35) sind `g` und `h` teilerfremd und eindeutig bestimmt.

#6-38:Satz

Sei `(A,\mathfrak{m})` ein lokaler Ring mit Restklassenkörper `k` und `x\in X = \Spec(A)` der abgeschlossene Punkt. Dann sind äquivalent:

1. `A` ist henselsch.
2. Jede endliche `A`-Algebra zerfällt in das Produkt lokaler, endlicher `A`-Algebren.
3. Ist `f: Y\to X` quasiendlich und separiert, so zerfällt `Y` in der Form `Y = Y_0 \amalg Y_1 \amalg \cdots \amalg Y_n`, wobei `Y_i` für `i\geq 1` ein lokales Schema endlich über `X` ist und `f(Y_0)` den Punkt `x` nicht enthält.
4. Ist `f: Y\to X` étale und es existiert ein `y\in Y` mit `f(y) = x` und `k(x)\stackrel{\sim}{\to} k(y)`, so existiert ein Schnitt `s: X\to Y` zu `f` mit `s(x) = y`.
5. Seien `f_1,\ldots, f_n\in A[T_1,\ldots,T_n]` normiert. Gibt es ein `a\in k^n` mit `\overline{f_i}(a) = 0` für alle `i` mit `\det \big(\frac{\partial\overline{f_i}}{\partial T_j}\big)_{i,j}(a) \neq 0`, so existiert ein `b\in A^n` mit `\overline{b} = a` und `f_i(b) = 0` für alle `i`.

#6-39:Korollar

Sei `A` ein henselscher lokaler Ring, so ist auch jeder Faktorring henselsch.

---

Sei `A_0 = A/I` und `B_0` eine endliche `A_0`-Algebra. Dann ist `B_0` auch eine endliche `A`-Algebra und zerfällt somit in ein Produkt lokaler, endlicher `A`-Algebren, die auch `A/I`-Algebren sind. [~](#6-38) (ii) vererbt sich somit auf Faktorringe.

#6-40:Satz

Sei `(A,\mathfrak{m},k)` ein henselscher lokaler Ring. Dann ist die folgende Zuweisung eine Kategorienäquivalenz:

    \begin{align*}
        \{\text{Endliche, }\et\text{ale $A$-Algebren}\} &\to \{\text{Endliche, }\et\text{ale $k$-Algebren}\}\\
        B &\mapsto B\otimes_A k
    \end{align*}

#6-41:Satz

Sei `(A,\mathfrak{m},k)` ein henselscher lokaler Ring, `X\to \Spec(A)` eigentlich und `X_0 = X\times_A k` die Faser über dem abgeschlossenen Punkt von `\Spec(A)`. Dann liefert die folgende Zuweisung eine Kategorienäquivalenz:

    \begin{align*}
        \{\text{Endliche, }\et\text{ale $X$-Schemata}\} &\to \{\text{Endliche, }\et\text{ale $X_0$-Schemata}\}\\
        Y &\mapsto Y\times_X X_0
    \end{align*}

---

Siehe *M. Artin*: Algebraic approximation of structures over complete local rings, Theorem 31.

#6-42:Satz

Jeder vollständiger lokaler Ring `(A,\mathfrak{m},k)` ist henselsch.

---

Wir verifizieren [~](#6-38) (iv). Sei `B` eine étale `A`-Algebra und es gäbe ein `s_0: B\to k` mit kommutativem Diagramm:

    \xymatrix{
        A \ar[r]\ar[d] & B\ar[ld] \\
        A/\mathfrak{m}
    }

Wir setzen `A_r = A/\mathfrak{m}^{r+1}` für `r\geq 0` und zeigen die Existenz einer kompatiblen Familie von Homomorphismen `s_r: B\to A_r`. Diese erhält man nach [~](#6-32).

#6-43:Bemerkung

Insbesondere ist der Ring `\mathbb{C}[[T]]` der formalen Potenzreihen henselsch. Auch henselsch ist der Ring `\mathbb{C}\{[T]\}` der auf einer kleinen Nullumgebung konvergenten Potenzreihen.
