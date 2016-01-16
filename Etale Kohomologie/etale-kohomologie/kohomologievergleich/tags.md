#7-15:Lemma

Sei `X=\Spec(A)` affin und `F` eine quasikohärente Garbe auf `X_\Zar`. Dann gilt `\H_\Zar^q(X, F) = 0` für alle `q > 0`.

#7-16:Satz

Sei `X` ein separiertes Schema und `F` eine quasikohärente Garbe auf `X_\Zar`. Dann ist für jede affine Zariski-Überdeckung `\mathcal{U} = (U_i\to X)_i` die natürliche Abbildung

    \check{\H}{}^p(\mathcal{U}, F) \to \H^p_\Zar(X, F)

ein Isomorphismus für alle `p`. Insbesondere ist

    \check{\H}{}^p_\Zar(X, F)\to \H_\Zar^p(X, F)

ein Isomorphismus.

---

Für eine affine Überdeckung `\mathcal{U} = (U_i\to X)_i` ist `\check{\H}{}^p(\mathcal{U}, F)\to \H_\Zar^p(X, F)` die Kantenabbildung der Spektralfolge aus [~](#4-5):

    E_2^{pq} = \check{\H}{}^p(\mathcal{U}, \Hh_\Zar^q(F)) \Longrightarrow \H_\Zar^{p+q}(X, F)

Es genügt zu zeigen, dass `E_2^{pq} = 0` für `q > 0` ist. Es gilt:

    \check{\H}{}^p(\mathcal{U}, \Hh_\Zar^q(F)) = \H^p(\check{C}^\bullet(\mathcal{U}, \Hh_\Zar^q(F))) \\
    \check{C}{}^p(\mathcal{U}, \Hh_\Zar^q(F)) = \prod_{i_0,\ldots,i_p} \Hh_\Zar^q(F)(U_{i_0}\cap\cdots \cap U_{i_p})

Da `X` separiert ist, ist `U_{i_0}\cap \cdots\cap U_{i_p}` affin und für `q > 0` gilt:

    \Hh_\Zar^q(F)(U_{i_0}\cap \cdots\cap U_{i_p}) = \H_\Zar^q(U_{i_0}\cap\cdots\cap U_{i_p}, F) = 0

#7-17:Bemerkung

Ist `X` quasikompakt (und nicht notwendig separiert), so gilt `\check{\H}{}^p_\Zar(X, F) = \H_\Zar^p(X, F^\#)` für jede Prägarbe `F` abelscher Gruppen. Dies folgt aus [~](#4-10).

#7-18:Satz

*(M. Artin)* Sei `X` ein noethersches Schema, so dass jede endliche Menge von Punkten eine gemeinsame affine Umgebung besitzt. Seien `U_i\to X`, `i = 1,\ldots,n` étale Morphismen von endlichem Typ und `(V_k\to U_1\times_X\cdots\times_X U_n)_k` eine étale Überdeckung. Dann existieren Übereckungen `(W_{ij}\to U_i)_j`, `i=1,\ldots,n`, so dass die Produktüberdeckung

    (W_{1,j_1}\times_X\cdots \times_X W_{n,j_n}\to U_1\times_X\cdots \times_X U_n)_{j_1,\ldots,j_n}

eine Verfeinerung von `(V_k\to U_1\times_X\cdots\times_X U_n)_k` ist.

---

Siehe *M. Artin:* On joins of Henselrings, Advancements in Mathematics 7 (1971) **282-296**.

#7-19:Bemerkung

Die Bedingung an `X` in [~](#7-18) ist erfüllt, wenn `X` quasiprojektiv über ein affines Schema ist.

#7-20:Satz

*(M. Artin)* Sei `X` ein noethersches Schema, so dass jede endliche Menge von Punkten eine gemeinsame affine Umgebung besitzt. Dann ist für jede Prägarbe `F` auf `X_\et` die natürliche Abbildung

    \check{\H}{}^q_\Zar(X, F) \to \H^q_\Zar(X, F^\#)

ein Isomorphismus für alle `q>0`.

#7-21:Satz

Sei `X` ein Schema und `F` eine quasikohärenter `\O_X`-Modul. Wir betrachten die Garbe `W(F)\in\Sh(X_\fl)` und bezeichnen die Einschränkung auf `X_\et` ebenfalls mit `W(F)`. Die natürliche Abbildungen

    \H_\Zar^q(X, F) \to \H_\et^q(X, W(F)) \to \H_\fl^q(X, W(F))

sind Isomorphismen für alle `q`.

---

Wir führen den Beweis für `\H_\Zar^q \to \H_\fl^q`, der étale Fall ist analog. Wir betrachten die Leraysche Spektralfolge:

    E_2^{pq} = \H_\Zar^p(X, \mathrm{R}^qf_\ast W(F)) \Longrightarrow \H_\fl^{p+q} (X, W(F))

wobei `f: X_\fl \to X_\Zar` der natürliche Situs-Morphismus ist. Offenbar genügt zu zeigen, dass `\mathrm{R}^qf_\ast W(F) = 0` für `q > 0` gilt. Nun ist `\mathrm{R}^qf_\ast W(F)` die Zariski-Garbe assoziiert zur Prägarbe `U\mapsto \H_\fl^q(U, W(F))`. Daher genügt es zu zeigen, dass `\H_\fl^q(U, W(F)) = 0` für `q > 0` und `U` affin.

Wir betrachten den Hilfssitus `U_{\fl,\text{aff}}` mit Objekten `V\to U` affin flach von endlichem Typ und surjektiven Familien als Überdeckungen. Nach dem Vergleichssatz induziert der Situs-Morphismus `U_\fl\to U_{\fl,\text{aff}}` einen Isomorphismus auf der Kohomologie. Es genügt zu zeigen, dass `\H_{\fl,\text{aff}}^q(U, W(F)) = 0` für `q > 0` gilt. Wir zeigen, dass `W(F)` in `\Sh(U_{\fl,\text{aff}})` schlaff ist, was den Beweis beendet.

Sei `V\to U` affin und `(V_i\to V)_i` eine o.B.d.A. endliche Überdeckung. O.B.d.A. ist diese Überdeckung einelementig `V'\to V`. Sei `V = \Spec(A)`, `V' = \Spec(B)` und `F` ist assoziiert zum `A`-Modul `M`. Dann ist der Čech-Komplex `\check{C}{}^\bullet(V'\to V, W(F))` der Komplex

    0\longrightarrow M\otimes_A B \longrightarrow M\otimes_A B\otimes_A B \longrightarrow \cdots

aus [~](#5-17) und hat triviale Kohomologie in Grad größer `0`.

#7-22:Korollar

Ist `X` ein affines Schema und `F\in \Qcoh(\O_X)`, so gilt `\H_\et^q(X, W(F)) = \H_\fl^q(X, W(F)) = 0` für `q > 0`.

#7-23:Korollar

Für ein affines Schema `X` gilt `\H^q_\et(X, \Ga) = \H_\fl^q(X, \Ga) = 0` für `q > 0`.

---

Es gilt `\Ga = W(\O_X)`.
