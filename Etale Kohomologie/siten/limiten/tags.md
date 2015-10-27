#2-30-INTRO

Seien `I, \mathcal{C}` Kategorien und `F: I\to\mathcal{C}` ein kovarianter Funktor. Sei `X\in\mathcal{C}` ein Objekt und `c_X: I\to\mathcal{C}` der konstante Funktor, der jedes Objekt auf `X` und jeder Morphismus auf `\id_X` schickt.

#2-30:Definition

Der Funktor `\mathcal{C}\to\Mengen`, `X\mapsto \Hom_\Funktoren(F, c_X)` heißt `\underline{\colim} F`. Ist dieser darstellbar, wird das darstellende Objekt in `\mathcal{C}` mit `\colim F` bezeichnet und heißt *Kolimes* von `F`. ~~Kolimes~~ Ist `\underline{\colim}F` für jeden Funktor `F` darstellbar, so sagt man, dass Kolimiten in `\mathcal{C}` existieren. Man nennt `\mathcal{C}` auch *kovollständig*. ~~kovollständig|Kategorie~~

Analog definiert man den *Limes* ~~Limes~~ durch `\underline{\lim} F: \mathcal{C}\to \Mengen`, `X\mapsto \Hom_\Funktoren(c_X, F)` und `\lim F` als das darstellende Objekt, falls existent. Existieren Limiten in `\mathcal{C}`, so nennt man `\mathcal{C}` *vollständig*. ~~vollständig|Kategorie~~

#2-32:Beispiel

Ist `I` eine diskrete Kategorie, so ist ein Funktor `F: I\to\mathcal{C}` nichts weiter als eine Familie von Objekten. Der Kolimes ist das Koprodukt und der Limes das Produkt, falls existent.

#2-33:Satz

In `\Mengen` existieren beliebige Limiten und Kolimiten.

#2-34:Satz

Sei `\mathcal{A}` eine abelsche Kategorie mit belibigen Koprodukten. Dann hat `\mathcal{A}` beliebige Kolimiten. Der Funktor `\colim` ist rechtsexakt.

---

Die erste Aussage ist Übung. Für festes `I` bilden die Funktoren `I\to\mathcal{A}` in natürlicher Weise eine abelsche Kategorie `\Funktoren(I, \mathcal{A})`. Dann ist `\colim: \Funktoren(I,\mathcal{A})\to\mathcal{A}`, `F\mapsto \colim F` nach der Universaleigenschaft linksadjungiert zum konstanten Funktor `\mathcal{A}\to \Funktoren(I, \mathcal{A})`, `A\mapsto c_A`. Dies zeigt die Rechtsexaktheit von `\colim`.

#2-34-1:Beispiel

Sei `G` eine Gruppe und `\mathcal{C}` die Kategorie mit einem Objekt `C` und `\Aut(C) = G`. Ein Funktor `F: \mathcal{C}\to \Ab` ist gegeben durch eine abelschen Gruppe `A` und einen Gruppenhomomorphismus `G\to\Aut(A)`, also einen `G`-Modul. Es gilt:

    \lim F = A^G,\qquad \colim F = A_G

#2-35:Definition

Eine Kategorie `I` kann folgende Eigenschaften haben:

* *(L1)* Jedes Diagramm in `I` der Form ~~L1~~

        \xymatrix{
            i \ar[r]\ar[rd] & j \\
                            & j'
        }

  kann zu einem kommutativen Diagramm der folgenden Form vervollständigt werden:

        \xymatrix{
            i \ar[r]\ar[rd] & j \ar[rd] \\
                            & j' \ar[r] & k
        }

* *(L2)* Jedes Diagramm in `I` der Form ~~L2~~

        \xymatrix{i \ar@<-.5ex>[r] \ar@<.5ex>[r] & j}

  kann zu einem kommutativen Diagramm der folgenden Form vervollständigt werden:

        \xymatrix{i \ar@<-.5ex>[r] \ar@<.5ex>[r] & j \ar[r] & k}

* *(L3)* `I` ist als ungerichteter Graph zusammenhängend. ~~L3~~

#2-35-1:Definition

`I` heißt *pseudogerichtet*, ~~pseudogerichtet|Kategorie~~ wenn (L1) und (L2) erfüllt sind. `I` heißt *gerichtet* oder *filtriert*, ~~gerichtet|Kategorie~~ ~~filtriert|Kategorie~~ wenn es nicht leer ist und (L1)–(L3) erfüllt sind.

#2-36:Satz

Gerichtete Kolimiten in Mengen kommutieren mit endlichen Limiten, d.h. ist `I` gerichtet und `J` endlich, so gilt für jeden Funktor `F: I\times J\to \Mengen`:

    \colim_I \lim_J F \cong \lim_J \colim_I F

#2-37:Definition

Eine Unterkategorie `J` von `I` heißt *final*, wenn: ~~final|Unterkategorie~~

1. `J` ist eine volle Unterkategorie.
2. Für jedes `i\in I` gibt es ein `i\to j` mit `j\in J`.

#2-38:Beispiel

Ist `e\in I` ein Endobjekt, so ist `(e, \id_e)` eine finale Unterkategorie von `I`.

#2-39:Lemma

Ist `J` final in `I` und `I` erfüllt (L`i`) für ein `i=1,2,3`, so erfüllt auch `J` die Eigenschaft (L`i`).

#2-40:Satz

`I` erfülle (L1) und `J` sei final in `I`. Dann ist

    \underline{\colim} F = \underline{\colim} F|_J

ein Isomorphismus von Funktoren `\mathcal{C}\to \Mengen` und `\colim F\to \colim F|_J` ein Isomorphismus in `\mathcal{C}` falls existent. Existiert ein Endobjekt `e\in I`, so gilt `\colim F = F(e)`.

#2-41:Satz

Sei `I` gerichtet und `F: I\to\Ab` ein Funktor. Sei `V: \Ab\to \Mengen` der Vergissfunktor. Dann ist die natürliche Abbildung `\colim(VF)\to V(\colim F)` bijektiv.

#2-42:Korollar

Gerichtete Kolimiten nach `\Ab` kommutieren mit endlichen Limiten. Pseudogerichtete Kolimiten nach `\Ab` sind exakt.

---

Die erste Aussage folgt aus [Satz 2.41](#2-41) und [Satz 2.36](#2-36). Die Exaktheit gerichteter Kolimiten ist klar. Ist schließlich `I` pseudofiltrierend, so kann man `I` als disjunkte Vereinigung `I = \coprod_{s\in S} I_s` mit gerichteten `I_s` schreiben, wobei `S` die Menge der Zusammenhangskomponenten von `I` bezeichnet. Es gilt:

    \colim_I = \bigoplus_{s\in S} \colim_{I_s}

#2-43:Lemma

Es seien `u: \mathcal{C}\to \mathcal{D}` und `v: \mathcal{D}\to\mathcal{C}` adjungierte Funktoren `u\dashv v`. Dann kommutiert `u` mit Kolimiten und `v` mit Limiten.

---

Für beliebige `D\in\mathcal{D}` gilt:

    \begin{align*}
        \Hom\Big(\colim_{i\in I} uF(i), D\Big) &= \lim_{i\in I} \Hom(uF(i), D)\\
        &= \lim_{i\in I} \Hom(F(i), vD)\\
        &= \Hom\Big(\colim_I F, vD\Big) = \Hom\Big(u\Big(\colim_I F\Big), D\Big)
    \end{align*}

Es folgt `\colim_I uF = u(\colim_I F)` aus dem Yoneda-Lemma. Aussage für `v` folgt analog.
