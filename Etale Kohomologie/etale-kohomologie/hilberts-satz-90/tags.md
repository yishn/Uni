#7-25:Theorem

*(Hilberts Satz 90)* ~~Hilberts Satz 90~~ Für jedes Schema `X` sind die natürlichen Abbildungen Isomorphismen:

    \Pic(X) \cong \H_\Zar^1(X, \Gm) \to \H_\et^1(X, \Gm) \to \H_\fl^1(X, \Gm)

Ist `X = \Spec(k)` für einen Körper `k`, so gilt insbesondere `\H_\et^1(X, \Gm) = \H^1(G_k,\overline{k}^\times)`.

---

Wir bezeichnen die Situs-Morphismen mit `X_\fl\stackrel{\alpha}{\to}X_\et\stackrel{\beta}{\to} X_\Zar`. Nach der Lerayschen Spektralfolge reicht es zu zeigen, dass `\mathrm{R}^1(\beta\alpha)_\ast (\Gm) = 0` und `\mathrm{R}^1\alpha_\ast(\Gm) = 0`.

Im Zariski und étalen Situs genügt es zu zeigen, dass die Halme verschwinden. Nach [~](#7-13) genügt es, das nachfolgende Lemma zu zeigen.

#7-26:Lemma

Sei `X = \Spec(A)` mit einem lokalen Ring `A`. Dann gilt `\H^1_\fl(X, \Gm) = 0`.

---

Nach [~](#4-6) genügt es `\check{\H}{}^1_\fl(X, \Gm) = 0` zu zeigen. Sei `\alpha\in\check{\H}{}_\fl^1(X, \Gm)`. Dann existiert ein treuflaches `Y\to X` mit `\alpha\in\check{\H}{}^1_\fl(Y\to X,\Gm)`. Sei `x\in X` der abgeschlossene Punkt und `y\in Y` ein Urbild. Dann existiert eine affine Umgebung `U = \Spec(B)` von `y` in `Y`, so dass `U\to X` treuflach von endlichem Typ ist und `\alpha\in \check{\H}{}_\fl^1(U\to X, \Gm)`. Es wird daher durch einen `1`-Kozykel `\varphi\in\Gamma(U\times_X U, \Gm) = (B\otimes_A B)^\times` repräsentiert.

Wir können `\varphi` auch als `B\otimes_A B`-Isomorphismus `\varphi: B\otimes_A B\to B\otimes_A B` auffassen oder auch gekünstelt als `\varphi: M'\otimes_AB \to B\otimes_A M'` mit `M' = B` auffassen. Die Kozykel-Eigenschaft zeigt, dass `\varphi` ein Abstiegsdatum für den `B`-Modul `M'` ist. Nach [~](#5-23) ist dieses effektiv. Also gibt es einen `A`-Modul `M` und einen Isomorphismus `\psi: B\otimes_A M\stackrel{\sim}{\to} M' = B`, so dass das folgende Diagramm kommutiert:

    \xymatrix{
        M'\otimes_A B \ar[rrr]^-\varphi &&& B\otimes_A M' \\
        (B\otimes_A M)\otimes_A B \ar[rrr]_-{b\otimes m \otimes b'\mapsto b\otimes b'\otimes m} \ar[u]^{\psi\otimes\id} &&& B \otimes_A (B\otimes_A M) \ar[u]_{\id\otimes\psi}
    }

Nun ist `M` als `A`-Modul flach und endlich erzeugt, weil das nach treuflacher Basiswechsel `A\to B` so ist. Weil `A` lokal ist, ist `M` frei und vom Rang `1` wegen `\psi`. Fixieren wir einen Isomorphismus `M\cong A`, so liegt `\psi: B\stackrel{\sim}{\to} B` in `B^\times` und das obige Diagramm zeigt `\varphi = \psi^{-1}\otimes\psi\in (B\otimes_A B)^\times`. Daher ist `\varphi` ein Korand und `\alpha = 0`.

#7-26-1:Satz

*(Kummerfolge)* ~~Kummerfolge~~ Sei `n\in\N`. Mit `\mu_n` bezeichnen wir die Prägarbe `\mu_n(U) = \{\zeta\in\Gamma(U,\O_U)\mid\zeta^n = 1\}`. Es gilt `\mu_n = \ker(\Gm \stackrel{\cdot n}{\to}\Gm)`, weshalb `\mu_n` eine flache/étale/Zariski-Garbe ist. Die Folge von Garben

    0\longrightarrow \mu_n \longrightarrow \Gm \stackrel{\cdot n}{\longrightarrow} \Gm \longrightarrow 0

ist exakt in `\Sh(X_\fl)` und wenn `\frac{1}{n}\in\O_X` ist, auch exakt in `\Sh(X_\et)`.

---

Es ist zu zeigen, dass `\cdot n: \Gm\to \Gm` surjektiv ist, d.h. wir müssen Schnitte lokal hochheben können. Das Problem ist Zariski-lokal, also sei `a\in\Gamma(U,\Gm) = A^\times` für `U = \Spec(A)`. Der Morphismus `A\to A[T]/(T^n-a)` ist treuflach und étale, wenn `n\in A^\times`. Über `V = \Spec(A[T]/(T^n-a))` existiert ein Urbild von `a` bzgl. `n`-Potenzieren.

#7-27:Satz

*(Kummertheorie)* ~~Kummertheorie~~ Es existiert eine natürliche exakte Folge:

    0\longrightarrow \Gamma(X, \O_X^\times)/n \longrightarrow \H^1_\fl(X, \mu_n) \longrightarrow ~_n\!\Pic(X) \longrightarrow 0

Ist `\frac{1}{n}\in\O_X`, so ist die natürliche Abbildung `\H_\et^1(X, \mu_n)\to \H_\fl^1(X, \mu_n)` ein Isomorphismus.

---

Die exakte Folge erhalten wir aus der langen exakten Kohomologiefolge zur Kummerfolge. Ist `\frac{1}{n}\in\O_X` betrachte:

    \xymatrix{
        0 \ar[r] & \Gamma(X, \O_X^\times)/n \ar[r] & \H^1_\fl(X, \mu_n) \ar[r] & ~_n\!\H_\fl^1(X, \Gm) \ar[r] & 0 \\
        0 \ar[r] & \Gamma(X, \O_X^\times)/n \ar[r]\ar[u]^\id & \H^1_\et(X, \mu_n) \ar[r]\ar[u] & ~_n\!\H_\et^1(X, \Gm) \ar[r]\ar[u]_\sim & 0
    }

Das Fünfer-Lemma liefert der gewünschte Isomorphismus.

#7-28:Bemerkung

Ist `X` ein Schema über `\Z\big[\frac{1}{n}\big][\mu_n]`, so haben wir nach Auswahl einer primitiven `n`-te Einheitswurzel einen Isomorphismus `\Z/n\Z\cong\mu_n` in `\Sh(X_\et)` und [~](#7-27) berechnet auch `\H_\et^1(X, \Z/n\Z)`.

#7-29:Bemerkung

Der Homomorphismus `\H_\et^q(X, F)\to \H_\fl^q(X, F)` ist ein Isomorphismus für alle `q`, wenn `F` durch ein glattes, kommutatives Gruppenschema dargestellt wird.

#7-30:Satz

*(Artin-Schreier-Folge)* ~~Artin-Schreier-Folge~~ Sei `p` eine Primzahl und `X` ein Schema über `\F_p`. Die konstante Garbe `\Z/p\Z` wird durch das folgende Gruppenschema dargestellt:

    \coprod_{\Z/p\Z} \Spec(\F_p) = \Spec \F_p[T]/(T(T-1)\cdots(T-p+1)) = \Spec \F_p[T]/(T^p-T)

Betrachte den Homomorphismus `F: \Ga \to \Ga`, `x\mapsto x^p` in `\Sh(X_\et)`. Dann gilt:

    \Z/p\Z = \ker(\Ga \stackrel{F-\id}{\longrightarrow} \Ga)

Dann ist die folgende Folge exakt in `\Sh(X_\et)`:

    0 \longrightarrow \Z/p\Z \longrightarrow \Ga \stackrel{F-\id}{\longrightarrow} \Ga \longrightarrow 0

---

`F-\id: \Ga\to \Ga` ist surjektiv, da für jede `\F_p`-Algebra `A` und `a\in A` der Homomorphismus `A\to A[T]/(T^p-T-a)` treuflach und étale ist.

#7-31:Korollar

Sei `X = \Spec(A)` mit einer `\F_p`-Algebra `A`. Dann gilt:

    \H_\et^q(X, \Z/p\Z) \cong \begin{cases}
        (\Z/p\Z)^{\pi_0(X)}, & q = 0 \\
        A/(F-\id), & q = 1 \\
        0, & q \geq 2
    \end{cases}

---

Folgt aus der langen exakten Kohomologiefolge zur Artin-Schreier-Folge und [~](#7-23).
