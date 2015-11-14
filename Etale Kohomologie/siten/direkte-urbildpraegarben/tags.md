#2-44:Satz

Sei `f: T'\to T` ein Situs-Morphismus und `\mathcal{C}` eine kovollständige Kategorie mit Produkten. Dann hat `f^\text{P}_\ast: \PrSh_\mathcal{C}(T')\to \PrSh_\mathcal{C}(T)` einen linksadjungierten Funktor:

    f^\ast_\text{P}: \PrSh_\mathcal{C}(T)\to \PrSh_\mathcal{C}(T')

`f^\ast_\text{P} F` heißt die *direkte Urbildprägarbe* von `F`. ~~direkte Urbildprägarbe~~

---

Für `U'\in\Kat(T')` betrachten wir die Kategorie `I_{U'}` mit den folgenden Daten:

* Objekte sind Tupeln der Form `(U, \phi)` mit `U\in \Kat(T)` und `\phi\in\Mor_{\Kat(T)}(U', f^\sharp U)`.
* Morphismen `(U_1, \phi_1)\to (U_2, \phi_2)` sind Morphismen `\psi: U_2\to U_1` in `\Kat(T)`, so dass das folgende Diagramm in `\Kat(T')` kommutiert:

        \xymatrix{
            U' \ar[r]^{\phi_1} \ar[rd]_{\phi_2} & f^\sharp U_1 \\
                                                & f^\sharp U_2 \ar[u]_{f^\sharp \psi}
        }

Sei `U'\in\Kat(T')` und `F\in\PrSh(T)`. Dann definiert `F` einen Funktor auf `I_{U'}` und wir setzen:

    f^\ast_\text{P} F(U') = \colim_{(U,\phi)\in I_{U'}} F(U)

Zu einem Pfeil `\varepsilon: U'\to V'` in `\Kat(T')` erhalten wir einen Funktor `I_{V'}\to I_{U'}`, `(V, \phi)\mapsto(V, \phi\circ\varepsilon)` und somit einen Morphismus:

    f^\ast_\text{P} F(V') = \colim_{(V, \phi)\in I_{V'}} F(V) \longrightarrow f^\ast_\text{P} F(U') = \colim_{(U, \phi)\in I_{U'}} F(U)

So wird `f^\ast_\text{P}F` zu einer Prägarbe. Zu zeigen ist noch die Funktoradjunktion.

> Beachte zunächst, dass für `U\in\Kat(T)` das Objekt `(U, \id_{f^\sharp U})` ein Endobjekt in `I_{f^\sharp U}` ist. Daher gilt nach [~](#2-40):
>
>     f^\ast_\text{P} F(f^\sharp U) = F(U)

Sei `\phi\in\Hom_{\PrSh(T')}(f^\ast_\text{P}F, G)` gegeben. Wir erhalten ein `\psi\in\Hom_{\PrSh(T)}(F, f^\text{P}_\ast G)` durch:

    \psi(U): F(U) = f^\ast_\text{P} F(f^\sharp U) \stackrel{\phi}{\longrightarrow} G(f^\sharp U) = f^\text{P}_\ast G(U)

Sei nun umgekehrt `\psi\in\Hom_{\PrSh(T)}(F, f^\text{P}_\ast G)`. Dann erhalten wir für jedes `(U, \varphi)\in I_{U'}` kompatible Homomorphismen:

    F(U) \stackrel{\psi(U)}{\longrightarrow} f^\text{P}_\ast G(U) = G(f^\sharp U)\stackrel{G(\varphi)}{\longrightarrow} G(U')

Diese setzen sich zusammen zu:

    \phi(U'): f^\ast_\text{P} F(U') = \colim_{(U, \varphi)\in I_{U'}} F(U) \to G(U')

Beide Konstruktionen sind invers zueinander.

#2-46:Bemerkung

Für eine Garbe `F` ist `f^\ast_\text{P} F` im Allgemeinen keine Garbe.

#2-47:Korollar

Ist `\mathcal{C}` eine abelsche Kategorie, so ist `f^\text{P}_\ast` linksexakt und `f^\ast_\text{P}` rechtsexakt. Ist `f^\ast_\text{P}` exakt, so überführt `f^\text{P}_\ast` Injektive in Injektive.

#2-48:Bemerkung

Es ist nicht klar, ob `f^\ast_\text{P}` mit dem Vergissfunktor `\Ab\to\Mengen` kommutiert. Dazu müsste die Indexkategorie gerichtet sein, vgl. [~](#2-41).

#2-49:Satz

Sei `f: T'\to T` ein Situs-Morphismus.

1. Ist für jedes `U'\in\Kat(T')` die Indexkategorie `I_{U'}` in der Konstruktion von `f^\ast_\text{P}F(U')` pseudogerichtet, so ist `f^\ast_\text{P}: \PrSh_\Ab(T)\to\PrSh_\Ab(T')` exakt und `f^\text{P}_\ast` überführt Injektive in Injektive.
2. `\Kat(T)` habe endliche Limiten. Dann ist für jedes `U'\in \Kat(T')` die Indexkategorie `I_{U'}` pseudogerichtet.

---

(i) folgt direkt aus [~](#2-42). Für (ii) erhält man durch Konstruktion des geeigneten Faserprodukts bzw. Differenzkerns die Objekte für (L1) und (L2).

#2-50:Definition

Für ein Objekt `U\in\Kat(T)` und eine Prägarbe `F` auf `T|_U` heißt `(\res_U)^\ast_\text{P} F\in \PrSh(T)` die *Fortsetzung durch Null* von `F`. ~~Fortsetzung durch Null|Prägarbe~~ Sie ist explizit gegeben durch:

    (\res_U)^\ast_\text{P} F(V) = \coprod_{\Mor(V, U)} F(V)

---

Für `V\in\Kat(T)` gilt:

    (\res_U)^\ast_\text{P} F(V) = \colim F(W)

wobei die Indexkategorie durch Diagramme `V\to W\to U` in `\Kat(T)` gegeben ist. In dieser Kategorie ist die diskrete Kategorie der Diagramme `V\stackrel{\id}{\to} V\to U` final und (L1) ist erfüllt. Die Aussage folgt aus [~](#2-40).

#2-51:Bemerkung

Im Fall einer offenen Einbettung `U\opensubset X` topologischer Räume gilt für `F\in\PrSh_\Ab(U)` und `V\opensubset X`:

    (\res_U)^\ast_\text{P} F(V) = \begin{cases}
        F(V), & \text{wenn } V\subset U \\
        0,    & \text{sonst}
    \end{cases}

#2-52:Korollar

Sei `\mathcal{A}` eine abelsche Kategorie mit beliebigen direkten Summen und Produkten. Sind direkte Summen in `\mathcal{A}` exakt, so ist `(\res_U)_\text{P}^\ast` exakt und `(\res_U)^\text{P}_\ast: \PrSh_{\mathcal{A}}(T)\to\PrSh_\mathcal{A}(T|_U)` überführt Injektive in Injektive.

#2-53:Beispiel

`\Kat(T)` habe Produkte. Ist `U\in\Kat(T)` und `j_U: T|_U\to T` die offene Einbettung, so hat für `(V\to U)\in\Kat(T) \downarrow U` die Kategorie `I_{(V\to U)}` das Endobjekt `(V, V\to U\times V)`. Daher ist `(j_U)_\text{P}^\ast: \PrSh(T)\to \PrSh(T|_U)` nichts weiter als die Einschränkung `(j_U)_\text{P}^\ast F(V\to U) = F(V)`, also `(j_U)^\ast_\text{P} = (\res_U)^\text{P}_\ast`.

Es hat daher `(j_U)^\ast_\text{P}` auch ein Linksadjungierten, nämlich die Fortsetzung durch Null, die man auch mit `(j_U)_!^\text{P}` bezeichnet. Wir haben Adjunktionen:

    (j_U)_!^\text{P} \dashv (j_U)^\ast_\text{P} \dashv (j_U)^\text{P}_\ast

Insbesondere ist `(j_U)^\ast_\text{P}` exakt und `(j_U)^\text{P}_\ast` überführt Injektive in Injektive.

#2-54:Lemma

Seien `g: T''\to T'`, `f: T'\to T` Situs-Morphismen. Dann gilt:

1. `(fg)_\ast^\text{P} = f^\text{P}_\ast g^\text{P}_\ast`
2. `(fg)^\ast_\text{P} = g^\ast_\text{P} f^\ast_\text{P}`

---

(i) liest man leicht aus der Definition ab. (ii) folgt aus (i) und der Eindeutigkeit des adjungierten Funktors.

#2-55:Definition

Für ein Objekt `C\in\mathcal{C}` bezeichnet `\underline{C}^\text{P}` die Prägarbe, die durch `\underline{C}^\text{P}(V) = C` für alle `V\in \Kat(T)` und `\id_C` als Übergansabbildungen definiert ist. `\underline{C}^\text{P}` heißt die *konstante Prägarbe* ~~konstant|Prägarbe (Situs)~~ zu `C`. Hat `\Kat(T)` ein Endobjekt `e`, so gilt für alle `F\in\PrSh_\mathcal{C}(T)`:

    \Hom_{\PrSh_\mathcal{C}(T)}(\underline{C}^\text{P}, F) = \Mor_\mathcal{C}(C, F(e))

Für `U\in\Kat(T)` wird die Fortsetzung durch Null der konstanten Prägarbe zu `C` auf `T|_U` mit `C_U^\text{P}` bezeichnet. Es gilt:

    C_U^\text{P}(V) = \coprod_{\Mor(V, U)} C

Die Funktoradjunktion liefert:

    \Hom_{\PrSh_\mathcal{C}(T)}(C_U^\text{P}, F) = \Hom_{\PrSh_\mathcal{C}(T|_U)}(\underline{C}^\text{P}, F|_U) = \Mor_\mathcal{C}(C, F(U))

#2-56:Bemerkung

Fasst man das Objekt `C\in\mathcal{C}` als Prägarbe auf dem Situs `\{\bullet\}`, so gilt:

    C_U^\text{P} = (\pr_U)^\ast_\text{P}(C)
