#4-5:Satz

Sei `\mathcal{U} = (U_i\to X)_i\in\Cov(T)` und `F\in\Sh(T)`. Dann gibt es eine Spektralfolge:

    E_2^{pq} = \check{\H}{}^p(\mathcal{U}, \Hh^q(F)) \Longrightarrow \H^{p+q}(X, F)

Im Kolimes erhalten wir die Spektralfolge:

    E_2^{pq} = \check{\H}{}^p(X, \Hh^q(F)) \Longrightarrow \H^{p+q}(X, F)

---

Die Garbenkohomologie liefert `\H^0(X, -) = \check{\H}{}^0(X, \Hh^0(-))` als Funktoren `\Sh(T)\to \PrSh(T)\to \Ab`. Nun ist `\Hh^0(F) = \iota F` und `\iota` überführt Injektive in Injektive. Dies zeigt die erste Spektralfolge. Die zweite folgt aus der Exaktheit des Kolimes'.

#4-6:Korollar

Die Spektralfolge `E_2^{pq} = \check{\H}{}^p(X, \Hh^q(F)) \Longrightarrow \H^{p+q}(X, F)` induziert insbesondere eine natürliche Abbildung:

    \check{\H}{}^p(X, F) = \check{\H}{}^p(X, \Hh^0(F)) = E_2^{p,0} \twoheadrightarrow E_\infty^{p,0} \hookrightarrow \H^p(X, F)

Die natürliche Abbildung `\check{\H}{}^p(X, F)\to \H^p(X, F)` ist ein Isomorphismus für `p = 0,1` und injektiv für `p = 2`.

---

Die Aussage ist trivial für `p = 0`.

    \begin{xy}
        0;<1.2pc,0pc>:
        (0,0)="o",

        (-1,0); (6,0) **@{-} ?>*@{>},
        (0,-1); (0,4) **@{-} ?>*@{>},

        (-.5,-.5)*{0},
        (6,-.5)*{p},
        (-.5,4)*{q},

        (0,0)*{\bullet},
        (0,1)*{\circ},
        (0,2)*{\circ},
        (0,3)*{\circ},

        (1,0)*{\bullet},
        (2,0)*{\bullet},
        (3,0)*{\bullet},
        (4,0)*{\bullet},
        (5,0)*{\bullet},

        (1,1)*{\bullet},
        (2,1)*{\bullet},
        (3,1)*{\bullet},
        (4,1)*{\bullet},
        (5,1)*{\bullet},

        (-1,1); (1,-1) **@{.},
        (-1,2); (2,-1) **@{.},
        (-1,3); (3,-1) **@{.}
    \end{xy}

Nach [~](#4-4) (i) gilt `\Hh^q(F)^\# = 0` für `q \geq 1` und nach [~](#3-21) folgt `\Hh^q(F)^+ = 0`, also `E_2^{0,q} = 0` für `q\geq 1`. Für `q = 1` bedeutet dies:

    \check{\H}{}^1(X, F) = E_2^{1,0} = E_\infty^{1,0} \cong \H^1(X, F)

Desweiteren impliziert `E_2^{0,1} = 0`, dass `\check{\H}{}^2(X, F) = E_2^{2,0} = E_\infty^{2,0}` sich injektiv nach `\H^2(X, F)` abbildet.

#4-7:Satz

Angenommen, für `X\in\Cat(T)` gilt die folgende Bedingung:

* *(Č1)* ~~Č1~~ Für jede Prägarbe `P` mit `P^\# = 0` und alle `q\geq 1` gilt `\check{\H}{}^q(X, P) = 0`.

Dann gilt für jede Prägarbe `F` und alle `q\geq 0`:

    \check{\H}{}^q(X, F) = \check{\H}{}^q(X, F^\#) = \H^q(X, F^\#)

---

Zunächst folgt nach [~](#3-21) aus `P^\# = 0` schon `P^+ = 0`, d.h. (Č1) gilt automatisch für `q = 0`. Nach [~](#4-4) (ii) gilt `\Hh^q(F^\#)^\# = 0` für `q\geq 1`. Mit (Č1) entartet daher die Spektralfolge aus [~](#4-5). Dies zeigt die zweite Gleichung.

Bleibt zu zeigen, dass für jede Prägarbe `F` die Abbildung `\check{\H}{}^q(X, F)\to \check{\H}{}^q(X, F^\#)` ein Isomorphismus ist. Wir spalten den Prägarben-Homomorphismus `F\to F^\#` auf in folgende exakte Folgen:

    0 \longrightarrow K \longrightarrow F \longrightarrow G \longrightarrow 0 \\
    0 \longrightarrow G \longrightarrow F^\# \longrightarrow C \longrightarrow 0

mit `K^\# = 0 = C^\#`. Die lange exakte Folge für die Čech-Kohomologie zeigt die Behauptung.

#4-8:Definition

Eine offene Überdeckung `X = \bigcup_i U_i` eines topologischen Raums `X` heißt *lokal endlich*, wenn zu jedem Punkt `x\in X` eine offene Umgebung `x\in U_x` existiert mit `U_x\cap U_i = \varnothing` für fast alle `i`. ~~lokal endlich|Überdeckung~~

Ein topologischer Raum `X` heißt *parakompakt*, wenn jede offene Überdeckung von `X` eine lokal endliche Verfeinerung besitzt. ~~parakompakt|topologischer Raum~~

#4-9:Beispiel

* Jeder kompakter Raum ist parakompakt.
* Jeder lokal kompakter Raum mit abzählbarer Basis der Topologie ist parakompakt.
* Jeder metrischer Raum ist parakompakt.
* Jeder CW-Komplex ist parakompakt.

#4-10:Theorem

Ist `X` ein parakompakter topologischer Raum, so gilt für jede Prägarbe `F\in \Sh(X)`:

    \check{\H}{}^q(X, F) \cong \H^q(X, F^\#)

---

Wir zeigen (Č1). Sei `P` eine Prägarbe mit `P^\# = 0`, also `P^+ = 0`. Sei `q\geq 1`, `\overline{c}\in \check{\H}{}^q(X, P)` und `c\in\check{\H}{}^q(\mathcal{U}, P)` ein Repräsentant von `\overline{c}` mit Überdeckung `\mathcal{U} = (U_i\to X)_{i\in I}`, die wir o.B.d.A. als lokal endlich annehmen können. Für `\underline{i} = (i_0,\ldots,i_q)\in I^{q+1}` sei `c_{\underline{i}}\in P(U_{i_0}\cap \cdots \cap U_{i_q})` die `\underline{i}`-te Komponente von `c`.

Für jedes `x\in X` wählen wir eine offene Umgebung `x\in U_x` mit `U_x\cap U_i = \varnothing` für fast alle `i` und o.B.d.A. `U_x\subset U_i` für die verbleibenden `i`. Damit schneidet `U_x` auch `U_{i_0}\cap\cdots\cap U_{i_q}` nur für endlich viele Tupeln `(i_0,\ldots,i_q)` nicht-trivial und ist dann darin enthalten.

Wegen `P^+ = 0` können wir nach Verkleinerung der `U_x` annehmen, dass für jedes Tupel `\underline{i} = (i_0,\ldots,i_q)` und jedes `x\in X` stets `c_\underline{i}|_{U_x} = 0` gilt. Daher verschwindet das Bild von `c` in `\check{C}{}^q((U_x\to X)_{x\in X}, P)`.
