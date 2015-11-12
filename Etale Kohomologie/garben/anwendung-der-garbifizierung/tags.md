#3-22:Satz

Es ist `\Sh_\Ab(T)` eine abelsche Kategorie und die Garbifizierung `\#: \PrSh_\Ab(T)\to \Sh_\Ab(T)` ist ein exakter Funktor. Die Einbettung `\iota: \Sh_\Ab(T)\to \PrSh_\Ab(T)` überführt Injektive in Injektive.

#3-23:Lemma

Sei `f: F\to G` ein Garben-Morphismus. Dann sind äquivalent:

1. `f` ist ein Monomorphismus in `\Sh(T)`.
2. `f` ist ein Monomorphismus in `\PrSh(T)`, d.h. für jedes `U\in\Cat(T)` ist `f(U): F(U)\to G(U)` ein Monomorphismus.

---

Der Prägarbenkern ist bereits eine Garbe.

#3-24:Satz

Sei `f: F\to G` ein Garben-Morphismus. Dann sind äquivalent:

1. `f` ist ein Epimorphismus in `\Sh(T)`.
2. Zu jedem `U\in\Cat(T)` und `s\in G(U)` existiert eine Überdeckung `(U_i\to U)_i` und ein `t_i\in F(U_i)` mit `f(t_i) = s|_{U_i}`.

---

Wir haben folgende Äquivalenzen:

    \coker(f) = 0 \iff \coker^\text{P}(f)^\# = 0 \iff \coker^\text{P}(f)^+ = 0

Wegen `F^+ = \check{\H}{}^0(-, F)` ist letzteres äquivalent zu (ii).

#3-25:Satz

Sei `f: T'\to T` ein Siten-Morphismus. Dann hat `f_\ast: \Sh_\Ab(T')\to \Sh_\Ab(T)` einen linksadjungierten Funktor `f^\ast: \Sh_\Ab(T)\to \Sh_\Ab(T')`.

---

Wir setzen `f^\ast F = (f^\ast_\text{P}F)^\#`.

#3-26:Definition

`f^\ast F` heißt die *direkte Urbildgarbe* von `F`. ~~direkte Urbildgarbe~~

#3-27:Lemma

Das folgende Diagramm kommutiert:

    \xymatrix{
        \PrSh(T') \ar[r]^{f^\ast_\text{P}} \ar[d]_{\#} & \PrSh(T) \ar[d]^{\#} \\
        \Sh(T') \ar[r]_{f^\ast}                      & \Sh(T)
    }

#3-28:Satz

Angenommen, `\Cat(T)` habe endliche Limiten. Dann ist `f^\ast` exakt und `f_\ast` überführt Injektive in Injektive.

---

Nach [~](#2-49) ist `f_\text{P}^\ast` exakt. Sei `0\to F'\to F\to F''\to 0` eine exakte Folge von Garben, d.h. wir haben eine exakte Prägarbenfolge `0\to F'\to F\to F''\to C\to 0` mit einer Prägarbe `C`, so dass `C^\# = 0`. Anwendung des exakten Funktors `f^\ast_\text{P}` liefert die exakte Folge:

    0\longrightarrow f^\ast_\text{P}F' \longrightarrow f^\ast_\text{P}F \longrightarrow f^\ast_\text{P}F'' \longrightarrow f^\ast_\text{P}C \longrightarrow 0

Da die Garbifizierung exakt ist, genügt zu zeigen, dass `(f^\ast_\text{P}C)^\# = 0`. Das gilt nach [~](#3-27). Die Adjunktion zeigt nun formal, dass `f_\ast` Injektive in Injektive überführt.

#3-29:Definition

Für `U\in\Cat(T)` heißt der Funktor `\res_U^\ast: \Sh(T|_U)\to \Sh(T)` die *Fortsetzung durch Null*. ~~Fortsetzung durch Null|Garbe~~

#3-30:Lemma

`(\res_U)^\ast` ist exakt und `(\res_U)_\ast: \Sh(T)\to \Sh(T|_U)`, `F\mapsto F|_U` überführt Injektive in Injektive.

---

Nach [~](#2-52) ist `(\res_U)^\ast_\text{P}` exakt. Nun verläuft der Beweis analog zum Beweis von [~](#3-28).

#3-31:Beispiel

`\Cat(T)` habe Produkte. Für `U\in\Cat(T)` betrachten wir die offene Einbettung `j_U: T|_U\to T`. Dann gilt `j_U^\ast = (\res_U)_\ast` und wir benutzen die Bezeichnung `(j_U)_! = \res_U^\ast`. Wir haben Funktoradjunktionen:

    (j_U)_! \dashv j_U^\ast \dashv (j_U)_\ast

Insbesondere ist `j_U^\ast` exakt und `(j_U)_\ast` überführt Injektive in Injektive.

#3-32:Definition

Sei `A` eine abelsche Gruppe. Die *konstante Garbe* ist die Garbifizierung der konstanten Prägarbe `\underline{A} = (\underline{A}^\text{P})^\#`. ~~konstant|Garbe (Situs)~~

#3-33:Definition

Für `U\in\Cat(T)` und eine abelsche Gruppe `A` setzen wir:

    A_U = \res_U^\ast(\underline{A}) = (\res_U)^\ast_\text{P} (\underline{A}^\text{P})^\#

#3-34:Lemma

Sei `F\in\Sh(T)` und `A` eine abelsche Gruppe. Dann gilt:

    \Hom_{\Sh(T)}(A_U, F) = \Hom_{\Sh(T|_U)}(\underline{A}, F|_U) = \Hom_\Ab(A, F(U))

---

Folgt aus der Funktoradjunktion.

#3-35:Korollar

Die Kategorie `\Sh_\Ab(T)` hat genügend viele Injektive.

---

Wegen `\Hom(\Z_U, F) = F(U)` ist die Menge `\{\Z_U \mid U\in\Cat(T)\}` eine Menge von Erzeugern von `\Sh(T)` und das Ergebnis folgt aus [~](#3-3).

#3-36:Definition

Das *Tensorprodukt* zweier Garben `F, G` ist definiert als: ~~Tensorprodukt|Garbe~~

    F\otimes G = (F\otimes^\text{P} G)^\#

#3-37:Lemma

Der Funktor `\Hhom(-, G): \Sh(T)\to \Sh(T)` ist linksexakt.

---

Folgt direkt aus der Linksexaktheit von `\Hhom(-, G): \PrSh(T)\to \PrSh(T)`.

#3-38:Lemma

Ist `G\in\Sh(T)` injektiv, so ist `\Hhom(-, G): \Sh(T)\to \Sh(T)` exakt.

---

Nach [~](#2-52) ist auch `G|_U` für jedes `U\in\Cat(T)` als Prägarbe injektiv. Somit ist `\Hom_{\PrSh(T|_U)}(-, G|_U)` exakt für jedes `U`.

#3-39:Lemma

Das Tensorprodukt und das innere Hom sind adjungiert als Funktoren `\Sh(T)\to \Sh(T)`, d.h:

    \Hom_{\Sh(T)} (F\otimes G, H) \cong \Hom_{\Sh(T)}(F, \Hhom(G, H))

Insbesondere ist `-\otimes G` rechtsexakt und `\Hhom(G, -)` linksexakt.

---

Dies folgt durch Garbifizierung aus [~](#2-62).
