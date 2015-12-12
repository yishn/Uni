#6-23:Satz

Sei `f: Y\to X` étale, `Z` ein `X`-Schema und `Z_0\subset Z` ein abgeschlossenes Unterschema, das durch eine lokal nilpotente Idealgarbe gegeben ist. Dann ist `\Mor_X(Z, Y)\to \Mor_X(Z_0, Y)` bijektiv.

---

Alles verklebt sich. Sei o.B.d.A. `A\to C = B_b` ein standard-étaler Ringhomomorphismus mit `B = A[T]/(F)`, `(F', b) = B`, `R` eine `A`-Algebra und `N\subset R` ein nilpotentes Ideal. Wir zeigen, dass `\Hom_{\Ringe/A}(C, R) \to \Hom_{\Ringe/A}(C, R/N)` eine Bijektion ist. Ferner können wir o.B.d.A. `N^2 = 0` annehmen. Die Frage ist, ob jedes `g_0: C\to R/N` eindeutig zu `g: C\to R` gehoben werden kann.

Es ist `r\in R^\times` genau dann, wenn `r + N\in (R/N)^\times`. Ferner gilt:

    \begin{align*}
        \Hom_{\Ringe/A}(C, R)   &= \{\varphi\in\Hom_{\Ringe/A}(B, R) \mid \varphi(b)\in R^\times\} \\
        \Hom_{\Ringe/A}(C, R/N) &= \{\varphi_0\in\Hom_{\Ringe/A}(B, R/N) \mid \varphi_0(b)\in (R/N)^\times\}
    \end{align*}

Sei `g_0: C\to R/N` gegeben durch ein `\varphi_0: B\to R/N`. Sei `t` das Bild von `T` in `B`, also `B = A[t]`. Wir konstruieren `\varphi(t)` wie folgt:

> Sei `\varphi_0(t) = r+N` für ein `r\in R`. Dann gilt `F'(r+N) = F'(\varphi_0(t)) = \varphi_0(F'(t))`. Wegen `F'(t)\in C^\times`, folgt `F'(r+N)\in (R/N)^\times`, d.h. `F'(r)\in R^\times`.
>
> Wir suchen einen Vertreter `r'\in R` von `r+N` mit `F(r') = 0`. Für `r' = r+h` mit einem `h\in N` hat die Gleichung `0 = F(r') = F(r) + hF'(r)` eine eindeutig bestimmte Lösung `h`.

#6-24:Bemerkung

Morphismen mit der Eigenschaft in [~](#6-23) heißen *formal étale*. ~~formal étale|Schema-Morphismus~~ Mann kann zeigen, dass jeder formal étale Morphismus lokal von endlichem Typ stets étale sind.

#6-25:Theorem

*(Topologischer Invarianz étaler Morphismen)* Sei `X_0\subset X` ein abgeschlossenes Unterschema, das durch eine nilpotente Idealgarbe gegeben ist. Dann ist der Funktor `(Y\to X)\mapsto Y_0 = Y\times_X X_0` eine Äquivalenz zwischen der Kategorie der étalen `X`-Schemata und der étalen `X_0`-Schemata.

---

Die Vorgabe eines `X`-Morphismus' `f: Y\to Z` étaler Schemata ist äquivalent zur Vorgabe des Graphen `\Gamma_f: Y\to Y\times_X Z`, d.h. eines Schnitts zur étalen Projektion `Y\times_X Z\to Y`. Nach [~](#6-13) entspricht dies den offenen Teilmengen von `Y\times_X Z`, die sich isomorph auf `Y` projizieren. Analog gilt dies für `X_0`-Morphismen étaler Schemata.

Betrachte das kartesische Quadrat:

    \xymatrix{
        Y_0\times_{X_0} Z_0 \ar[d]\ar[r] & Y\times_X Z \ar[d] \\
        Y_0 \ar[r] & Y
    }

Die horizontalen Pfeile sind Homöomorphismen. Wir zeigen zunächst die folgende Aussage: Sind die senkrechten Pfeile im kartesischen Quadrat

    \xymatrix{
        U_0 \ar[r]\ar[d]_{p_0} & U \ar[d]^p \\
        Y_0 \ar[r] & Y
    }

Homöomorphismen, so ist `p_0` genau dann ein Isomorphismus, wenn `p` ein Isomorphismus ist.

> Für die nicht-triviale Richtung seien alle Pfeile Homöomorphismen. Für jeden Punkt `x\in U_0`, `y = p_0(x)` sind wir lokal in der folgenden Situation: `f: A\to B` étaler Homöomorphismus, `I\subset A` nilpotentes Ideal, so dass `A/I\to B/IB` ein Isomorphismus ist. Wir zeigen, dass `f` ein Isomorphismus ist. Wegen [~](#6-11) genügt es zu zeigen, dass `f` surjektiv ist.
>
> Dies folgt, weil `f` nach [~](#6-23) formal étale ist:
>
>     \xymatrix{
>         A \ar[r]^f\ar[d] & B \ar[d]\ar@{-->}[ld] \\
>         A/I \ar[r]_-\sim & B/IB
>     }
>
> `f` hat daher einen Schnitt.

Es bleibt noch die wesentliche Surjektivität des Funktors zu zeigen. Wegen der Eindeutigkeit genügt es, dies lokal zu zeigen. Sei `A\to A_0 = A/I` ein Ringhomomorphismus und `C_0 = (A_0[T]/F_0)_{b_0}` eine standard-étale `A_0`-Algebra. Nun wähle ein `F\in A[T]` über `F_0` und ein beliebiges Urbild `b\in A[T]/F\to A_0[T]/F_0` von `b_0`.
