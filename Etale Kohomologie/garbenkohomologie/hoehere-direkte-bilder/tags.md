#4-15-INTRO

Sei `f: T'\to T` ein Situs-Morphismus. Wir haben den linksexakten Funktor `f_\ast: \Sh_\Ab(T')\to \Sh_\Ab(T)`.

#4-15:Definition

Für eine Garbe `F` auf `T'` heißt die Rechtsableitung `\mathrm{R}^q f_\ast(F)\in\Sh(T)` die *`q`-te höhere direkte Bildgarbe* von `F`. ~~höhere direkte Bildgarbe~~

#4-16:Lemma

Es ist `\mathrm{R}^q f_\ast(F)` die assoziierte Garbe zur Prägarbe:

    U\mapsto \H_{T'}^q(f^\sharp U, F),\quad U\in \Kat(T)

---

Es gilt `f_\ast = \# \circ f_\ast^\text{P} \circ \iota_{T'}`. Nun sind `\#` und `f_\ast^\text{P}` exakte Funktoren, also gilt:

    \mathrm{R}^q f_\ast = \# \circ f_\ast^\text{P} \circ \mathrm{R}^q\iota_{T'}

Mit [~](#4-4) (i) zeigt dies die Behauptung.

#4-17:Korollar

Schlaffe Garben sind `f_\ast`-azyklisch. Ist `F` schlaff, so ist auch `f_\ast F` schlaff.

---

Die erste Aussage folgt direkt aus [~](#4-16). Für `\mathcal{U} = (U_i\to U)_i\in\Ub(T)` gilt für die Čech-Komplexe:

    \check{C}{}^\bullet(\mathcal{U}, f_\ast F) = \check{C}{}^\bullet(f^\sharp\mathcal{U}, F)

Ist `F` schlaff, so gilt somit für `q\geq 1`:

    \check{\H}{}^q(\mathcal{U}, f_\ast F) = \check{\H}{}^q(f^\sharp\mathcal{U}, F) = 0

weshalb auch `f_\ast F` schlaff ist.

#4-18:Satz

*(Leraysche Spektralfolge)* ~~Spektralfolge|Leray~~ ~~Leraysche Spektralfolge~~ Sei `f: T'\to T` ein Situs-Morphismus, `F\in\Sh(T')` und `U\in\Kat(T)`. Dann gibt es eine Spektralfolge:

    E_2^{pq} = \H^p_T(U, \mathrm{R}^q f_\ast(F)) \Longrightarrow \H^{p+q}_{T'}(f^\sharp U, F)

---

Es gilt `\Gamma(f^\sharp U, -) = \Gamma(U, f_\ast -)`. Nach [~](#4-17) überführt der linksexakte Funktor `f_\ast` Injektive in Schlaffe, also `\Gamma(U, -)`-Azyklische. Die Aussage folgt.

#4-19:Bemerkung

Zu `F\in\Sh(T)` betrachten wir die Leraysche Spektralfolge zu `f^\ast F`. Die Kantenabbildung und der Adjunktionsmorphismus `F\to f_\ast f^\ast F` liefert die natürliche Abbildung:

    \H_T^p(U, F) \longrightarrow \H^p_T(U, f_\ast f^\ast F) \longrightarrow \H_{T'}^p(f^\sharp U, f^\ast F)

In diesem Sinne ist Kohomologie kontravariant im Situs. Insbesondere erhalten wir einen Homomorphismus `\H_T^p(U, A)\to \H_{T'}^p(f^\sharp U, A)` für jedes `U\in\Kat(T)` und `A\in\Ab`.
