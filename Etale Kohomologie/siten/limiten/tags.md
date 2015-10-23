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
