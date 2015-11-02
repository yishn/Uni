#3-1:Definition

Eine Menge `\mathcal{M}` von Objekten einer Kategorie `\mathcal{C}` heißt *Menge von Erzeugern*, wenn für jedes `A\in\mathcal{C}` und jedes echte Unterobjekt `B\subsetneq A` ein `M\in\mathcal{M}` und ein Morphismus `M\to A` existiert, der nicht über die kanonische Inklusion `B\hookrightarrow A` faktorisiert. ~~Menge von Erzeugern~~ ~~Erzeuger~~

#3-2:Beispiel

1. Sei `e` die einelementige Menge. In `\Mengen` bildet `\mathcal{M} = \{e\}` eine Menge von Erzeugern.
2. In `\Ab` ist `\mathcal{M} = \{\Z\}` eine Menge von Erzeugern.
3. Sei `G` eine proendliche Gruppe. Dann bildet `\mathcal{M} = \{\Z[G/U] \mid U\opennormal G\}` eine Menge von Erzeugern in der Kategorie der diskreten `G`-Moduln.
4. Sei `T` ein Situs. Wegen

        \Hom_{\PrSh(T)}(\Z_U^\text{P}, F) = \Hom_\Ab(\Z, F(U)) = F(U)

   ist `\{\Z_U^\text{P}\mid U\in\Cat(T)\}` eine Menge von Erzeugern für `\PrSh_\Ab(T)`.

#3-3:Satz

Sei `\mathcal{A}` eine abelsche Kategorie, so dass folgende Eigenschaften gelten:

1. *(AB5)* In `\mathcal{A}` existieren direkte Summen und gerichtete Kolimiten sind exakt. ~~AB5~~
2. `\mathcal{A}` hat eine Menge von Erzeugern.

Dann hat `\mathcal{A}` genügend viele Injektive.

#3-4:Lemma

Sei `\mathcal{A}` eine abelsche Kategorie, die den Bedingungen von [Satz 3.3](#3-3) genügt. Dann genügt für jeden Situs `T` auch `\PrSh_\mathcal{A}(T)` den Bedingungen von [Satz 3.3](#3-3).

---

Direkte Summen und gerichtete Kolimiten von `\mathcal{A}`-wertigen Prägarben werden stufenweise gebildet. Daher erbt sich Bedingung (AB5) von `\mathcal{A}`. Ist `\mathcal{M} = \{M_i\mid i\in I\}` eine Menge von Erzeugern, so ist eine Menge von Erzeugern in `\PrSh_\mathcal{A}(T)` gegeben durch:

    \{(M_i)_U^\text{P} \mid i\in I,\ U\in\Cat(T)\}

#3-5:Korollar

Für jeden Situs `T` hat `\PrSh_\Ab(T)` genügend viele Injektive.
