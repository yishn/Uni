#7-39-INTRO

Sei `X` ein Schema, `i: Z\hookrightarrow X` ein abgeschlossenes Unterschema und `j: U \hookrightarrow X` sein offenes Komplement. Jede Garbe `F\in\Sh(X_\et)` definiert:

    F_1 = i^\ast F\in\Sh(Z_\et),\quad F_2 = j^\ast F \in\Sh(U_\et)

Die Identität `\id: j^\ast F\to j^\ast F` liefert über Adjunktion einen Homomorphismus `F\to j_\ast j^\ast F`. Anwendung von `i^\ast` liefert `\varphi_F: F_1 \to i^\ast j_\ast F_2`.

Wir betrachten die Menge der Tripel `(F_1, F_2, \varphi)` mit `F_1\in\Sh(Z_\et)`, `F_2\in\Sh(U_\et)` und `\varphi: F_1\to i^\ast j_\ast F_2` und machen diese zu einer Kategorie `\mathbf{T}(X)`, indem wir ein Morphismus `\psi: (F_1, F_2, \varphi)\to (F'_1, F'_2, \varphi')` als ein kommutatives Diagramm der folgenden Form erklären:

    \xymatrix{
        F_1 \ar[d]_{\psi_1} \ar[r]^-\varphi & i^\ast j_\ast F_2 \ar[d]^{i^\ast j_\ast\psi_2} \\
        F'_1 \ar[r]_-{\varphi'} & i^\ast j_\ast F'_2
    }

#7-38-2:Satz

Der Funktor `t: \Sh(X_\et)\to \mathbf{T}(X)`, `F\mapsto (F_1, F_2, \varphi_F)` ist eine Kategorienäquivalenz.

---

Wir konstruieren einen Funktor `s: \mathbf{T}(X)\to \Sh(X_\et)` durch das kartesische Diagramm:

    \xymatrix{
        s(F_1, F_2, \varphi) \ar[r]\ar[d] & j_\ast F_2 \ar[d] \\
        i_\ast F_1 \ar[r]_-{i_\ast\varphi} & i_\ast i^\ast j_\ast F_2
    }

Die natürliche Abbildungen `F\to i_\ast i^\ast F` und `F\to j_\ast j^\ast F` definieren einen Homomorphismus `F\to st F`. Wir zeigen, dass dies ein Isomorphismus ist. Dazu müssen wir zeigen, dass das folgende Diagramm kartesisch ist:

    (\star)\qquad \xymatrix{
        F \ar[r]\ar[d] & j_\ast j^\ast F \ar[d] \\
        i_\ast i^\ast F \ar[r] & i_\ast i^\ast j_\ast j^\ast F
    } \phantom{\qquad (\star)}

In einer abelschen Kategorie ist das Faserprodukt `A = B\times_D C` durch `A = \ker(B\oplus C\to D)` gegeben. Die Exaktheit kann man auf Halmen nachgeprüfen, das gilt also insbesondere für die Eigenschaft 'kartesisch'.

Sei `\overline{x}: \Spec(k)\to X` ein geometrischer Punkt. Für `\overline{x}\in U` hat der Halm von `(\star)` in `\overline{x}` die folgende Form:

    \xymatrix{
        F_{\overline{x}}\ar[r]\ar[d] & F_{\overline{x}}\ar[d] \\
        0 \ar[r] & 0
    }

Dies ist kartesisch. Für `\overline{x}\in Z` hat der Halm von `(\star)` in `\overline{x}` die folgende Form:

    \xymatrix{
        F_{\overline{x}} \ar[r]\ar[d] & (j_\ast j^\ast F)_{\overline{x}} \ar[d] \\
        F_{\overline{x}} \ar[r] & (j_\ast j^\ast F)_{\overline{x}}
    }

Dies ist auch kartesisch und wir erhalten `\id\cong st`. Bleibt noch `ts\cong\id` zu zeigen.

Da `i^\ast` und `j^\ast` exakt sind, erhalten wir die kartesischen Diagramme. Daran sehen wir für `s(F_1, F_2, \varphi)_1 = i^\ast s(F_1, F_2, \varphi)` unter Ausnutzung von `i^\ast i_\ast = \id` das kartesische Diagramm:

    \xymatrix{
        i^\ast s(F_1, F_2, \varphi) \ar[r]\ar[d] & i^\ast j_\ast F_2 \ar[d] \\
        F_1 \ar[r] & i^\ast j_\ast F_2
    }

Also `s(F_1, F_2, \varphi)_1 = F_1`. Analog erhalten wir `s(F_1, F_2, \varphi)_2 = F_2` und `\varphi_{s(F_1, F_2, \varphi)} = \varphi`.

#7-39:Beispiel

Sei `(A, \mathfrak{m})` ein diskreter Bewertungsring mit `K = \Quot(A)` und `k = A/\mathfrak{m}`. Wir betrachten die abgeschlossene Immersion `i: \Spec(k)\hookrightarrow\Spec(A)` und ihr Komplement `j: \Spec(K)\hookrightarrow\Spec(A)`.

Sei `\overline{K}` ein separabler Abschluss von `K` und `T_{\overline{\mathfrak{m}}} \subset \Gal(\overline{K}/K)` die Trägheitsgruppe einer Fortsetzung `\overline{\mathfrak{m}}` von `\mathfrak{m}` auf `\overline{K}`. Dann gilt `Z_{\overline{\mathfrak{m}}}/T_{\overline{\mathfrak{m}}} \cong G_K` und die Kategorie `\Sh(\Spec(A)_\et)` ist äquivalent zur Kategorie der Tripel `(M_1, M_2, \varphi)` mit diskreten `G_K`-Moduln `M_1, M_2` und einem Homomorphismus von `G_K`-Moduln `\varphi: M_1 \to M_2^{T_{\overline{\mathfrak{m}}}}`.

#7-40:Definition

Sei `Y\subset X` ein Unterschema und `F\in\Sh(X_\et)`. `F` hat *Träger* in `Y`, wenn `F_\overline{x} = 0` für alle `\overline{x}\in X\setminus Y`.

#7-41:Korollar

Für eine abgeschlossene Immersion `i: Z\hookrightarrow X` definiert `i_\ast: \Sh(Z_\et)\to \Sh(X_\et)` eine Kategorienäquivalenz von `\Sh(Z_\et)` auf die volle Unterkategorie der Garben auf `X_\et` mit Träger in `Z`.

---

Unter der Äquivalenz in [~](#7-38-2) entsprechen die Garben mit Träger in `Z` genau dem Tripel `(F_1, 0, 0)` und für `F_1\in\Sh(Z_\et)` gilt `i_\ast F_1 = (F_1, 0, 0)`.

#7-42-INTRO

Für `j: U\hookrightarrow X` haben wir die Funktoren `j_\ast, j^\ast, j_!` und Adjunktionen `j_! \dashv j^\ast \dashv j_\ast`.

Für `i: Z\hookrightarrow X` haben wir `i_\ast, i^\ast` und `i^\ast \dashv i_\ast`. Es ist `i_\ast` exakt und es gibt daher die Möglichkeit der Existenz eines Rechtsadjungierten von `i_\ast`.

#7-42:Definition

Für `F\in\Sh(X_\et)` ist `i^! F\in \Sh(Z_\et)` definiert durch:

    i^! F = i^\ast \ker(F\to j_\ast j^\ast F)

#7-43:Satz

Es gilt `i_\ast \dashv i^!`.

---

In `\mathbf{T}(X)` gilt `i^! (F_1, F_2, \varphi) = (\ker\varphi, 0, 0)` und:

    \Hom_{\mathbf{T}(X)}((F_1, 0, 0), (F'_1, F'_2, \varphi)) = \Hom(F_1, \ker\varphi) = \Hom_{\mathbf{T}(X)}((F_1, 0, 0), (\ker\varphi, 0, 0))

#7-43-1:Bemerkung

Wir haben Adjunktionen `i^\ast\vdash i_\ast \vdash i^!` und `j_! \vdash j^\ast \vdash j_\ast`. Bzgl. der Kategorienäquivalenz in [~](#7-38-2) gilt:

    \begin{align*}
        i^\ast: (F_1, F_2, \varphi) &\maspto F_1 \\
        i^!: (F_1, F_2, \varphi) &\mapsto \ker(\varphi) \\
        i_\ast: F_1 &\mapsto (F_1, 0, 0) \\
        j^\ast: (F_1, F_2, \varphi) &\mapsto F_2 \\
        j_!: F_2 &\mapsto (0, F_2, 0) \\
        j_\ast: F_2 &\mapsto (i^\ast j_\ast F_2, F_2, \id)
    \end{align*}

#7-44:Korollar

Die folgende Folge ist exakt für jedes `F\in\Sh(X_\et)`:

    0\longrightarrow j_! j^\ast F \longrightarrow F \longrightarrow i_\ast i^\ast F \longrightarrow 0

---

Folgt aus der Exaktheit von:

    0 \longrightarrow (0, F_2, 0) \longrightarrow (F_1, F_2, \varphi_F) \longrightarrow (F_1, 0, 0) \longrightarrow 0
