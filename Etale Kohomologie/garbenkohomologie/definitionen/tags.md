#4-1:Definition

Sei `T` ein Situs, `F\in\Sh_\Ab(T)` und `X\in\Cat(T)`. Die abgeleiteten Funktoren des linksexakten Funktors

    \Gamma(X, -): \Sh(T)\to \Ab,\ F\mapsto F(X)

heißt die *Garbenkohomologie* von `X` mit Werten in `F`: ~~Kohomologie|Garbe~~

    \H^q_T(X, F) = \mathrm{R}^q\Gamma(X, -)(F)

Der Index `T` wird weggelassen, wenn darüber kein Zweifel besteht. Die Kohomologie ist kontravariant in `X`, d.h. zu einem Morphismus `X'\to X` in `T` induziert der Funktorhomomorphismus `\Gamma(X, -) \to \Gamma(X', -)` auf den Ableitungen die Einschränkungsabbildung:

    \H^q(X, F) \to \H^q(X', F),\ a\mapsto a|_{X'}

#4-2:Lemma

Die Restriktion `\res_U: T\to T|_U` induziert einen Isomorphismus:

    \H_T^q(U, F) \cong \H_{T|_U}^q(U, F|_U)

wobei rechts strikt formal `\id_U: U\to U` anstelle von `U` stehen müsste.

---

Es gilt `\Gamma(U, F) = \Gamma(U, F|_U)`. Desweiteren ist `\res_{U,\ast}` exakt und überführt Injektive in Injektive nach [~](#3-30).

#4-3:Definition

Die abgeleiteten Funktoren des linksexakten Funktors `\iota: \Sh(T)\to\PrSh(T)` heißen die *Kohomologieprägarben*: ~~Kohomologieprägarbe~~

    \Hh^q(F) = \mathrm{R}^q \iota(F)

#4-4:Lemma

1. Für jedes `X\in\Cat(T)` und jedes `F\in\Sh(T)` gilt `\H^q(X, F) = \Hh^q(F)(X)`.
2. Es gilt `\Hh^q(F)^\# = 0` für `q > 0`.
3. Sei `X\in\Cat(T)`, `q > 0` und `a\in\H^q(X, F)`. Dann existiert eine Überdeckung `(U_i\to X)_i` mit `a|_{U_i} = 0` für alle `\iota`.

---

1.  Wir bezeichnen den Schnittfunktor auf Prägarben mit `\Gamma_\text{P}(X, -)`. Dieser ist exakt und wir haben `\Gamma(X, -) = \Gamma_\text{P}(X, -)\circ \iota`. Daher folgt:

        \mathrm{R}^q\Gamma(X, -) = \Gamma_P(X, -)\circ \mathrm{R}^q \iota = \Gamma_P(X, -)\circ \Hh^q

   Dies zeigt (i).

2. Es ist `\#` exakt, `\id = \#\circ \iota` und für `q > 0` gilt:

        0 = \mathrm{R}^q \id = \# \circ \mathrm{R}^q \iota = \#\circ\Hh^q

3. Wegen `\Hh^q(F)^\# = 0` folgt nach [~](#3-21) schon `\Hh^q(F)^+ = 0`. Nach Konstuktion gilt also:

        \Hh^q(F)^+(X) = \check{\H}{}^0(X, \Hh^q(F)) = \colim_{\Cov(X)} \check{\H}{}^0(-, \Hh^q(F))

   Die Aussage folgt mit (i).
