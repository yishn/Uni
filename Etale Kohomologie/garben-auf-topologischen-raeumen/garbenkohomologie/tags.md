#1-17:Definition

Wir betrachten den *Schnittfunktor* ~~Schnittfunktor~~ `\Gamma(X, -): \Sh(X)\to \Ab`, `F\mapsto F(X)`. Da `i` nach [Korollar 1.15](#1-15) linksexakt ist und `F\mapsto F(X)` auf Prägarben exakt ist, ist `\Gamma(X, -)` linksexakt.

Sei `F` eine Garbe. Wir definieren die `i`-te *Kohomologie* ~~Kohomologie|Garbe~~ von `X` mit Werten in `F` als:

    \H^i(X, F) = \mathrm{R}^i\Gamma(X, -)(F)

Für eine abelsche Gruppe `A` schreibt man typischerweise `\H^i(X, A)` für `\H^i(X, \underline{A})`. Dies ist für viele topologische Räume (wie z.B. für Mannigfaltigkeiten oder CW-Komplexe) eine brauchbare Kohomologietheorie und stimmt mit der singulären Kohomologie überein.

#1-18:Definition

Für `U\opensubset X` definiert man die Prägarbe `\Z^\text{P}_U` durch:

    \Z^\text{P}_U(V) = \begin{cases}
        \Z, & V\subset U \\
        0, & \text{sonst}
    \end{cases}

Es gilt `\Hom_{\PrSh(X)}(\Z^\text{P}_U, G) = G(U)`. Insbesondere ist `\Z^\text{P}_X = \underline{\Z}^\text{P}`.

#1-19:Lemma

Für eine injektive Prägarbe `I` und jede offene Teilmenge `U\opensubset X` ist `I(X)\to I(U)` surjektiv.

---

Die kanonische Abbildung `\Z^\text{P}_U\to \Z^\text{P}_X` ist injektiv. Da `I` injektiv ist, ist folgende Abbildung surjektiv:

    I(X) = \Hom(\Z^\text{P}_X, I) \to \Hom(\Z^\text{P}_U, I) = I(U)

#1-20:Definition

Eine Garbe `F` heißt *welk*, ~~welk|Garbe~~ wenn für jede offene Teilmenge `U\opensubset X` die Einschränkungsabbildung `F(X)\to F(U)` surjektiv ist.

#1-21:Bemerkung

*   Injektive Garben sind welk nach [Lemma 1.19](#1-19).
*   Ist `F` welk, so ist für jedes `U\opensubset X` die Einschränkung `F|_U` eine welke Garbe auf `U`.

#1-22:Satz

Für eine welke Garbe `F` gilt `\H^i(X, F) = 0` für alle `i\geq 1`.

---

* *Schritt 1:* Ist `0\to F\to G\stackrel{j}{\to} H\to 0` exakt und `F` welk, so ist auch die Folge globaler Schnitte exakt:

        0\longrightarrow F(X)\longrightarrow G(X) \longrightarrow H(X) \longrightarrow 0

  *Beweis von Schritt 1:* Sei `h\in H(X)`. Wir betrachten die Menge aller Paare `(U, s),\ U\opensubset X,\ s\in G(U)` mit `j(U)(s) = h|_U`. Nach Lemma von Zorn hat diese Menge ein maximales Element `(U, x)`. Sei `U\subsetneq X` und `x\in X\setminus U`. Nach [Korollar 1.12](#1-12) existiert eine Umgebung `V\opensubset X` von `x` und ein `t\in G(V)` mit `j(V)(t) = h|_V`. Somit gilt:

        s|_{U\cap V} - t|_{U\cap V} \in \ker j(U\cap V) = F(U\cap V)

  Da `F` welk ist, finden wir ein Urbild `u\in F(X)` von `s|_{U\cap V} - t|_{U\cap V}` und nach Ersetzung `t\mapsto t + u|_V` gilt `s|_{U\cap V} = t|_{U\cap V}`, weshalb sich `s` und `t` nach Garbeneigenschaft zu einem Element in `G(U\cup V)` verkleben, welches sich auf `h|_{U\cup V}` abbildet, im Widerspruch zur Maximalität von `(U, x)`.

* *Schritt 2:* Ist `0\to F\to G\to H\to 0` eine exakte Sequenz von Garben mit `F, G` welk, so ist auch `H` welk.

  *Beweis von Schritt 2:* Da `F` welk ist, erhalten wir für `U\opensubset X` das folgende kommutative Diagramm mit exakten Zeilen:

        \xymatrix{
            0\ar[r] & F(X)\ar@{->>}[d] \ar[r] & G(X)\ar@{->>}[d] \ar[r] & H(X)\ar[d]\ar[r] & 0\\
            0\ar[r] & F(U) \ar[r] & G(U) \ar[r] & H(U) \ar[r] & 0
        }

  Es folgt die Surjektivität von `H(X)\to H(U)`.

* *Schritt 3:* Für eine welke Garbe `F` gilt `\H^1(X, F) = 0`.

  *Beweis von Schritt 3:* Bette `F\hookrightarrow I` in eine injektive Garbe ein mit Kokern `G`. Wir erhalten die lange exakte Kohomologiefolge:

        0 \longrightarrow F(X) \longrightarrow I(X) \longrightarrow G(X) \longrightarrow \H^1(X, F) \longrightarrow \H^1(X, I)= 0

  Nach Schritt 1 ist `I(X)\to G(X)` surjektiv, also `\H^1(X, F) = 0`.

* *Schritt 4:* Für eine welke Garbe `F` gilt `\H^i(X, F) = 0` für alle `i\geq 1`.

  *Beweis von Schritt 4:* Mit der Notation in Schritt 3 gilt `\H^n(X, F) = \H^{n - 1}(X, G)` für `n\geq 2`. Nach Schritt 2 ist `G` welk. Die Aussage folgt dann per Induktion.

#1-23:Definition

Ein topologischer Raum heißt *irreduzibel*, ~~irreduzibel|topologischer Raum~~ wenn er nicht als Vereinigung zweier echter abgeschlossener Teilmengen dargestellt werden kann.

#1-24:Satz

Ist `X` ein irreduzibler topologischer Raum und `A` eine abelsche Gruppe, so gilt `\H^i(X, A) = 0` für `i\geq 1`.

---

Die Garbe `\underline{A}` ist welk, da die lokal konstanten Funktionen schon konstant sind.

#1-24-1:Bemerkung

Insbesondere ist für jedes irreduzible Schema die Zariski-Kohomologie mit Werten in konstanten Garben gleich `0`. Die Zariski-Topologie ist auch aus anderen Gründen nicht wirklich hilfreich, siehe z.B. [Lemma 1.25](#1-25).

#1-25:Lemma

Zwei beliebige irreduzible Kurven über dem gleichen Körper `k` sind homöomorph in der Zariski-Topologie.
