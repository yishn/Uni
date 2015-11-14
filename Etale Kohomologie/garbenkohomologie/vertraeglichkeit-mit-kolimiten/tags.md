#4-20:Definition

Sei `T` ein Situs. `U\in\Kat(T)` heißt *quasikompakt*, wenn jede Überdeckung `(U_i\to U)_i` eine endliche Verfeinerung `(V_j\to U)_j` besitzt. ~~quasikompakt~~

`T` heißt *noethersch*, wenn jedes `U\in\Kat(T)` quasikompakt ist. ~~noethersch|Situs~~

#4-22:Bemerkung

Ist `X` ein topologischer Raum, so ist `X_\top` genau dann noethersch, wenn `X` als topologischer Raum noethersch ist.

#4-23:Satz

Sei `I` eine pseudogerichtete Kategorie und `F: I\to \Sh(T)`, `i\mapsto F_i` ein Funktor. Ist `T` noethersch, so gilt:

1. Der Prägarben-Kolimes `(\colim_{i\in I}F_i)(U) = \colim_{i\in I} F_i(U)` ist eine Garbe.
2. `\colim_I: \Funktoren(I, \Sh(T))\to \Sh(T)` ist ein exakter Funktor.
3. Ist `F_i` schlaff für alle `i`, so auch `\colim_I F`.
4. Für jedes `U` und alle `q` gilt `\H^q(U, \colim_{i\in I} F_i) = \colim_{i\in I}\H^q(U, F_i)`.

---

In `\Ab` sind endliche Produkte schon Koprodukte. Daher kommutiert endliche Produkte mit Kolimiten. Für eine endliche Überdeckung `\mathcal{U} = (U_j\to U)_j` gilt somit:

    \colim_{i\in I} \check{C}{}^\bullet(\mathcal{U}, F_i) = \check{C}{}^\bullet\Big(\mathcal{U}, \colim_{i\in I}F_i\Big)

Es folgt für alle `q`:

    \colim_{i\in I} \check{\H}{}^q(\mathcal{U}, F_i) = \check{\H}{}^q \Big(\mathcal{U}, \colim_{i\in I}F_i\Big)

Da `T` noethersch ist, liegen die endlichen Überdeckungen von `U` final in `\Ub(U)` und wir erhalten für alle `q`:

    \colim_{i\in I} \check{\H}{}^q(U, F_i) = \check{\H}{}^q \Big(U, \colim_{i\in I}F_i\Big)

Sind alle `F_i` schlaff, so auch `\colim_I F`. Für `q = 0` und laufendes `U` bedeutet dies:

    \Big(\colim_I F\Big)^+ = \colim_I F

Somit folgt (i). Dass `\colim_I` exakt für pseudogerichtete `I` ist, folgt aus (i) und [~](#2-42). Bleibt noch (iv) zu zeigen.

Dazu betrachten wir die Kategorie `\Funktoren(I, \Sh(T))`. Diese können wir als `\PrSh_{\Sh(T)}(I^\op)` auffassen, wobei wir `I^\op` mit der trivialen Grothendieck-Topologie ausstatten. Diese hat nach [~](#3-4) und [~](#2-42) genügend viele Injektive. Ist `F = (F_i)_{i\in I}` injektiv in `\Funktoren(I, \Sh(T))`, so ist für jedes `i\in I` die Garbe `F_i` injektiv. Dies folgt daraus, dass `F_i = (\pr_i)_\ast^\text{P} F` und `(\pr_i)_\ast^\text{P}` Injektive in Injektive überführt.

Wir wählen nun eine injektive Auflösung `F\to J^\bullet` von `F` und betrachte den Funktor `\colim_I: \Funktoren(I, \Sh(T))\to \Sh(T)`. Dann ist nach (i) und (iii) `\colim_I F \to \colim_I J^\bullet` eine schlaffe Auflösung in `\Sh(T)` und es folgt:

    \begin{align*}
        \H^q\Big(U, \colim_{i\in I} F_i\Big) &= \H^q\Big( \Gamma\Big( U, \colim_{i\in I} J_i^\bullet \Big) \Big)\\
                                    &= \H^q\Big(\colim_{i\in I} \Gamma(U, J_i^\bullet) \Big) = \colim_{i\in I} \H^q(U, F_i)
    \end{align*}
