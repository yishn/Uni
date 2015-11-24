#5-20-INTRO

Sei `S` ein Schema und `(f_i: S_i\to S)_i` eine Familie von Morphismen.

#5-20:Definition

Ein *Abstiegsdatum* ~~Abstiegsdatum~~ `(F_i,\varphi_{ij})` für quasikohärente Garben bzgl. `(S_i\to S)_i` ist gegeben durch einen quasikohärenten `\O_{S_i}`-Modul `F_i` für alle `i`. Für  alle `i,j` gibt es ein Isomorphismus von `\O_{S_i\times_S S_j}`-Moduln `\varphi_{ij}: \pr_1^\ast F_i \stackrel{\sim}{\to} \pr_2^\ast F_j`, so dass für jedes Tripel `i,j,k` alle Diagramme von `\O_{S_i\times_S S_j\times_S S_k}`-Moduln kommutieren:

    \xymatrix{
        \pr_1^\ast F_i \ar[rr]^{\pr_{1,3}^\ast\varphi_{ik}} \ar[d]_{\pr_{1,2}^\ast\varphi_{ij}} &&
        \pr_3^\ast F_k \\
        \pr_2^\ast F_j \ar[rru]_{\pr_{2,3}^\ast\varphi_{jk}}
    }

Hier ist `{}^\ast` das quasikohärente `{}^\ast`, d.h. das gewöhnliche `{}^\ast` gefolgt von der Tensorierung mit der Strukturgarbe.

Ein *Morphismus* ~~Morphismus|Abstiegsdatum~~ `\psi: (F_i,\varphi_{ij}) \to (F_i',\varphi'_{ij})` von Abstiegsdaten bzgl. `(S_i\to S)_i` ist durch eine Familie `\psi_i: F_i\to F'_i` von `\O_{S_i}`-Moduln gegeben, so dass alle Diagramme kommutieren:

    \xymatrix{
        \pr_1^\ast F_i \ar[r]^{\varphi_{ij}} \ar[d]_{\pr_1^\ast \psi_i} & \pr_2^\ast F_j \ar[d]^{\pr_2^\ast\psi_i} \\
        \pr_1^\ast F_i' \ar[r]_{\varphi'_{ij}}                          & \pr_2^\ast F_j'
    }

#5-21:Beispiel

Sei `F` ein quasikohärenter `\O_S`-Modul. Das System `F_i = f_i^\ast F` zusammen mit der Identität `\varphi_{ij} = \id` auf `(f_i\times f_j)^\ast F` ist ein Abstiegsdatum, das wir mit `(F|_{S_i}, \kan)` bezeichnen.

#5-22:Definition

Ein Abstiegsdatum `(F_i,\varphi_{ij})` heißt *effektiv*, wenn es eine quasikohärente `\O_S`-Garbe `F` auf `S` gibt mit `(F_i,\varphi_{ij})\cong (F|_{S_i},\kan)`. ~~effektiv|Abstiegsdatum~~

#5-23:Lemma

Sei `(U_i\to S)_i` eine Zariski-offene Überdeckung. Dann ist jedes Abstiegsdatum bzgl. `(U_i\to S)_i` effektiv. Außerdem ist der Funktor `F\mapsto (F|_{U_i},\kan)` von der Kategorie der quasikohärenten `\O_S`-Moduln in die Kategorie der Abstiegsdaten bzgl. `(U_i\to S)_i` volltreu.

#5-24:Satz

Sei `f: Y=\Spec(B) \to X=\Spec(A)` ein treuflacher Morphismus. Dann ist jedes Abstiegsdatum bzgl. der einelementigen Familie `(Y\to X)` effektiv. Der Funktor von der Kategorie der quasikohärenten `\O_X`-Moduln in die Kategorie der Abstiegsdaten bzgl. `(Y\to X)` volltreu.

---

Für einen `A`-Modul `M` gilt `f^\ast M = B\otimes_A M`. Sei `M'` ein `B`-Modul.

> Der Morphismus `\pr_1: Y\times_X Y\to Y` ist gegeben durch den Ringhomomorphismus `e_2: B\to B\otimes_A B`, `b\mapsto b\otimes 1`, d.h. es gilt:
>
>     \begin{align*}
>         \pr_1^\ast M' = M'\otimes_{B,e_2} (B\otimes_A B) &\stackrel{\sim}{\longrightarrow} M'\otimes_A B\\
>         m'\otimes b_1\otimes b_2 &\longmapsto b_1m'\otimes b_2
>     \end{align*}
>
> wobei die `B\otimes_AB`-Wirkung auf `M'\otimes_A B` gegeben ist durch `(b_1\otimes b_2)(m'\otimes b) = b_1m'\otimes b_2b`. Analog ist `\pr_2: Y\times_X Y\to Y` gegeben durch `e_1: B\to B\otimes_A B`, `b\mapsto 1\otimes b`, also:
>
>     \begin{align*}
>         \pr_2^\ast M' = M'\otimes_{B,e_1} (B\otimes_A B) &\stackrel{\sim}{\longrightarrow} B\otimes_A M'\\
>         m'\otimes b_1\otimes b_2 & \longmapsto b_1\otimes b_2m'
>     \end{align*}
>
> wobei die `B\otimes_AB`-Wirkung auf `B\otimes_A M'` gegeben ist durch `(b_1\otimes b_2)(m'\otimes b) = b_1b\otimes b_2m'`.
>
> Analog identifizieren sich `\pr_1^\ast M'`, `\pr_2^\ast M'` und `\pr_3^\ast M'` auf `Y\times_X Y\times_X Y = \Spec(B\otimes_A B\otimes_A B)` als `B\otimes_A B\otimes_A B`-Moduln `M'\otimes_A B\otimes_A B`, `B\otimes_A M'\otimes_A B` und `B\otimes_A B\otimes_A M'` mit den passenden Wirkungen.

Ist `M' = f^\ast M = B\otimes_A M` für einen `A`-Modul `M`, so ist der kanonische Isomorphismus `\varphi: \pr_1^\ast M'\to \pr_2^\ast M'` gegeben durch:

    \begin{align*}
        (B\otimes_A M)\otimes_A B &\stackrel{\sim}{\longrightarrow} B\otimes_A (B\otimes_A M)\\
        (b\otimes m)\otimes b' &\longmapsto b\otimes(b'\otimes m)
    \end{align*}

Da `f` treuflach ist, erhalten wir nach [~](#5-19):

    M = \ker(e_2\otimes \id_{M'} - e_1\otimes \id_{M'}) = \{m'\in M'\mid 1\otimes m' = \varphi(m'\otimes 1) \}

Sei nun ein Abstiegsdatum für `M'` gegeben, also ein Isomorphismus `\varphi: M'\otimes_A B\to B\otimes_A M'`, so dass das folgende Diagramm kommutiert:

    \xymatrix{
        M'\otimes_A B\otimes_A B \ar[rr]^{\varphi_{1,3}} \ar[d]_{\varphi_{1,2}} && B\otimes_A B\otimes_A M' \\
        B\otimes_A M'\otimes_A B \ar[urr]_{\varphi_{2,3}}
    }

wobei `\varphi_{ij} = \pr_{ij}^\ast\varphi` bezeichnet.

Setze `M` als den `A`-Untermodul `M = \{m'\in M'\mid 1\otimes m' = \varphi(m'\otimes 1) \}`. Wir behaupten, dass `M'\cong B\otimes_A M` gilt und dass das Abstiegsdatum gerade das kanonische Abstiegsdatum zu `M` ist.

Wir haben den kanonischen Homomorphismus `B\otimes_A M \to M'`, `b\otimes m\mapsto bm` und zeigen, dass diese ein Isomorphismus ist und einen Isomorphismus auf den Abstiegsdaten induziert. Betrachte das Diagramm:

    \xymatrix{
        M'\otimes_A B \ar@<.5ex>[rr]^-{\alpha\otimes\id} \ar@<-.5ex>[rr]_-{\beta\otimes\id} \ar[d]_\varphi &&
        B\otimes_A M'\otimes_A B \ar[d]^{\varphi_{2,3}} \\
        B\otimes_A M' \ar@<.5ex>[rr]^-{e_1 \otimes\id} \ar@<-.5ex>[rr]_-{e_2\otimes\id} &&
        B\otimes_A B\otimes_A M'
    }

wobei `\alpha: M'\to B\otimes_A M'`, `m'\mapsto 1\otimes m'` und `\beta: M'\to B\otimes_A M'`, `m'\mapsto \varphi(m'\otimes 1)`. Wir zeigen, dass das Diagramm mit den oberen bzw. unteren horizontalen Abbildung kommutiert.

> Sei `\varphi(m'\otimes b) = \sum_i b_i\otimes m_i'`. Dann gilt:
>
>     \begin{align*}
>         (e_1\otimes\id)(\varphi(m'\otimes b)) &= \sum_i 1\otimes b_i\otimes m_i' \\
>         \varphi_{2,3}((\alpha\otimes \id)(m'\otimes b)) &= \varphi_{2,3}(1\otimes m'\otimes b) = \sum_i 1\otimes b_i\otimes m'
>     \end{align*}
>
> Desweiteren gilt:
>
>     \begin{align*}
>         (e_2\otimes\id)(\varphi(m'\otimes b)) &= \sum_i b_i\otimes 1\otimes m'_i \\
>         \varphi_{2,3}((\beta\otimes\id)(m'\otimes b)) &= \varphi_{2,3}(\varphi(m'\otimes 1)\otimes b) \\
>                                                       &= \varphi_{2,3}(\varphi_{1,2}(m'\otimes 1\otimes b))\\
>                                                       &= \varphi_{1,3}(m'\otimes 1\otimes b) = \sum_i b_i\otimes 1 \otimes m'_i
>     \end{align*}

Somit erhalten wir einen Isomorphismus der Differenzkerne. Nach Definition von `M` ist der Differenzkern oben gerade `M\otimes_A B\cong B\otimes_A M`. Der Differenzkern unten ist isomorph zu `M'` nach [~](#5-19). Dies zeigt die Aussage, nachdem wir alle nötigen Kompatibilitäten nachgeprüft haben.

#5-25:Bemerkung

Die genaue Bedingung an `f`, für das die Aussage von [~](#5-24) richtig ist, lautet: `f` ist universell injektiv. Außer für treuflache gilt dies z.B. auch, wenn `f` einen Schnitt als `A`-Modulhomomorphismus hat. Siehe z.B. [[SP]](#LIT-SP) Tag [08WE](http://stacks.math.columbia.edu/tag/08WE).

#5-26:Theorem

Sei `X` ein Schema und `(U_i\to X)_i` eine Überdeckung in `X_\fl`. Dann ist jedes Abstiegsdatum für quasikohärente Garben bzgl. `(U_i\to X)_i` effektiv. Weiterhin ist der Funktor von der Kategorie der quasikohärenten `\O_X`-Moduln in die Kategorie der Abstiegsdaten bzgl. `(U_i\to X)_i` volltreu.

---

Siehe z.B. [[SP]](#LIT-SP) Tag [023T](http://stacks.math.columbia.edu/tag/023T).
