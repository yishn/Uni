#2-15:Definition

Ein *Morphismus* `f:T'\to T` zwischen zwei Siten ist gegeben durch einen Funktor `f^\sharp: \Kat(T)\to\Kat(T')` mit folgenden Eigenschaften: ~~Morphismus|Siten~~

1. Für `(U_i\to U)_i\in\Ub(T)` ist `(f^\sharp U_i\to f^\sharp U)_i\in\Ub(T')`.
2. Für `(U_i\to U)_i\in\Ub(T)` und einen Morphismus `V\to U` ist der natürliche Morphismus `f^\sharp(U_i\times_U V) \to f^\sharp(U_i)\times_{f^\sharp(U)}f^\sharp(V)` für alle `i` ein Isomorphismus in `\Kat(T')`.

#2-16:Bemerkung

Für zwei Siten `T, T'` mit gleichen Kategorien `\mathcal{T}` ist `\id_\mathcal{T}: T'\to T` genau dann ein Situs-Morphismus, wenn `T'` eine Verfeinerung von `T` ist.

#2-17:Beispiel

Ist `f: X'\to X` eine stetige Abbildung topologischer Räume, so definiert `f^\sharp: U\mapsto f^{-1}(U)` einen Situs-Morphismus `f: X'_\top\to X_\top`.

#2-18:Beispiel

Ist `f: G'\to G` ein Gruppenhomomorphismus, so definiert `\GMengen\to G'\textbf{-Mengen}`, `M\mapsto M` ein Situs-Morphismus `f: T_{G'}\to T_G`.

#2-19:Bemerkung

Manchmal wird in der Literatur ein Situs-Morphismus `T'\to T` anders herum definiert.

#2-20:Definition

Sei `U\in\Kat(T)` und `\{\bullet\}` die diskrete Kategorie mit einem Element und der offensichtlichen Topologie. Der Situs-Morphismus `\pr_U: T\to \{\bullet\}`, welcher `\bullet` auf `U` schickt, heißt die *Projektion* auf `U`. ~~Projektion|Siten~~

#2-21:Definition

Sei `\mathcal{C}` eine Kategorie und `U` ein Objekt von `\mathcal{C}`. Die *Überkategorie* `\mathcal{C} \downarrow U` ist die Kategorie mit den folgenden Daten: ~~Überkategorie~~

* Objekte sind Morphismen `V\to U` in `\mathcal{C}`.
* Morphismen `V\to V'` sind kommutative Diagramme in `\mathcal{C}` der Form:

        \xymatrix{
            V\ar[d]\ar[r] & V'\ar[dl]\\
            U
        }

#2-22:Definition

Sei `T` ein Situs und `U\in\Kat(T)`. Dann ist der *eingeschränkter Situs* `T|_U` definiert durch: ~~eingeschränkt|Situs~~

    \Kat(T|_U) = \Kat(T)\downarrow U

Eine Familie von Morphismen

    \xymatrix{V_i \ar[r]\ar[d] & V\ar[dl] \\ U}

ist genau dann in `\Ub(T|_U)`, wenn `(V_i\to V)_i\in\Ub(T)` gilt.

#2-23:Definition

Der Funktor `\Kat(T)\downarrow U\to \Kat(T)`, `(V\to U)\mapsto V` definiert einen Situs-Morphismus `\res_U: T\to T|_U`, die sog. *Einschränkung*. ~~Einschränkung|Siten~~

#2-24:Definition

Die Kategorie `\Kat(T)` habe endliche Produkte. Dann definiert der Funktor `\Kat(T)\to \Kat(T|_U)`, `V\mapsto (V\times U\to U)` einen Situs-Morphismus `j_U: T|_U\to T`. Wir fassen `T|_U` als offenen Unterraum von `T` auf.

#2-25:Beispiel

Sei `X` ein topologischer Raum und `U\opensubset X` mit der Teilraumtopologie. Dann haben wir einen natürlichen Siten-Isomorphismus:

    U_\top \cong X_\top|_U

Produkte in `\Kat(X_\top)` sind Durchschnitte. Der in [~](#2-24) definierter Morphismus `j_U: X_\top|_U \to X_\top` entspricht bzgl. diesem Isomorphismus gerade dem Situs-Morphismus `U_\top\to X_\top`, der durch die offenen Einbettung von `U` nach `X` induziert wird.

#2-26:Definition

Sei `f: T'\to T` ein Situs-Morphismus, `\mathcal{C}` eine Kategorie mit Produkten und `F\in\PrSh_\mathcal{C}(T')`. Dann heißt die Prägarbe `U\mapsto F(f^\sharp U)` das *direkte Bild* von `F` und wird mit `f_\ast^\text{P}F` bezeichnet. ~~direktes Bild|Prägarbe~~ Wir erhalten einen Funktor:

    f_\ast^\text{P}: \PrSh_\mathcal{C}(T')\to \PrSh_\mathcal{C}(T)

Ist `\mathcal{C}` eine abelsche Kategorie, so ist `f_\ast^\text{P}` exakt.

#2-27:Beispiel

Wir betrachten für `U\in\Kat(T)` den Morphismus `\pr_U: T\to \{\bullet\}` aus [~](#2-20). Prägarben auf `\{\bullet\}` sind nichts weiter als Objekte von `\mathcal{C}` und für eine Prägarbe `F` auf `T` gilt:

    (\pr_U)^\text{P}_\ast F(\bullet) = F(U)

#2-28:Beispiel

Wir betrachten für `U\in\Kat(T)` den Morphismus `\res_U: T\to T|_U` aus [~](#2-23). Es gilt:

    (\res_U)^\text{P}_\ast F(V\to U) = F(V)

Wir benutzen die intuitivere Bezeichnung `F|_U = (\res_U)^\text{P}_\ast F`.

#2-29:Lemma

Ist `F` eine Garbe, so auch sein direktes Bild.

---

Ist `(U_i\to U)_i\in\Ub(T)`, so auch `(f^\sharp U_i\to f^\sharp U)_i\in\Ub(T')`. Betrachte die Folge:

    \equalizer{f_\ast^\text{P} F(U)}{\prod_i^\phantom{i} f_\ast^\text{P} F(U_i)}{\prod_{i,j}^\phantom{i} f_\ast^\text{P} F(U_i\times_U U_j)}

Diese ist nach Definition von `f_\ast^\text{P}` und den Axiomen für ein Situs-Morphismus zur folgenden Folge identisch:

    \equalizer{F(f^\sharp U)}{\prod_i^\phantom{i} F(f^\sharp U_i)}{\prod_{i,j}^\phantom{i} F(f^\sharp U_i\times_{f^\sharp U} f^\sharp U_j)}

Diese ist exakt.

#2-29-1:Definition

Wir erhalten einen Funktor `f_\ast: \Sh_\mathcal{C}(T')\to \Sh_\mathcal{C}(T)` und nennen `f_\ast F` die *direkte Bildgarbe* von `F`. ~~direktes Bild|Garbe~~ ~~direkte Bildgarbe~~ Offenbar gilt `f_\ast^\text{P}(\iota F) = \iota f_\ast(F)`, wobei `\iota` jeweils die Einbettung `\Sh_\mathcal{C}\hookrightarrow \PrSh_\mathcal{C}` bezeichnet.
