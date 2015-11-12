#4-24:Theorem

Sei `\iota: T'\to T` ein Situs-Morphismus, so dass:

1. `\iota^\sharp` ist eine volltreue Einbettung, d.h. wir können `\Cat(T)` als volle Unterkategorie von `\Cat(T')` auffassen.
2. Sind `U` und `U_i,\ i\in I` Objekte von `T` und `(U_i\to U)_i\in\Cov(T')`, so gilt `(U_i\to U)\in\Cov(T)`.
3. Jedes Objekt `U\in\Cat(T')` hat eine Überdeckung `(U_i\to U)_i\in\Cov(T')` mit `U_i\in\Cat(T)`.

Dann sind `\iota_\ast: \Sh(T')\to \Sh(T)` und `\iota^\ast: \Sh(T)\to\Sh(T')` zueinander inverse Kategorienäquivalenzen. Für `U\in\Cat(T)`, `F\in\Sh(T')` und `G\in\Sh(T)` gilt für alle `q`:

    \H^q_{T'}(U, F) = \H_T^q(U, \iota_\ast F),\quad \H^q_T(U, G) = \H_{T'}^q(U, \iota^\ast G)

---

Die Adjunktion `\iota^\ast \dashv \iota_\ast` liefert natürliche Transformationen `\id \to \iota_\ast\iota^\ast` und `\iota^\ast\iota_\ast\to \id` von denen wir zeigen, dass sie Funktorisomorphismen sind.

> Es gilt `\iota_\ast^\text{P} = \iota_\ast` und `\iota^\ast = \#\circ\iota^\ast_\text{P}`. Für `U\in\Cat(T)\subset\Cat(T')` hat die Kategorie `I_U` in [~](#2-44) das Endobjekt `\id_U: U\to U` und es gilt für jede Prägarbe `G\in\PrSh(T)`:
>
>     \iota^\ast_\text{P} G(U) = \colim_{(V, \phi)\in I_U} G(V) = G(U)

Für `F\in\PrSh(T)` und `U\in\Cat(T)` gilt:

    \iota_\ast\iota_\text{P}^\ast F(U) = \iota^\ast_\text{P} F(U) = F(U)

Es gilt `\iota_\ast\iota_\text{P}^\ast = \id_{\PrSh(T)}`, womit `\iota_\ast\iota^\ast = \id_{\Sh(T)}` durch Garbifizierung folgt.

Noch zu zeigen ist `\iota^\ast \iota_\ast F(U') = F(U')` für jedes `U'\in\Cat(T')` und `F\in\Sh(T')`. Es gilt `\iota_\ast \iota^\ast_\text{P}\iota_\ast F = \iota_\ast F`, also `\iota^\ast\iota_\ast F(U) = F(U)` für alle `U\in\Cat(T)`.

Sei nun `U'\in\Cat(T')` beliebig. Wir wählen eine Überdeckung `(U_i\to U')_i` mit `U_i\in\Cat(T)` und für beliebige `i,j` eine Überdeckung `(V_{ij}^k\to U_i\times_U U_j)_k` mit `V_{ij}^k\in\Cat(T)`. Dann haben wir ein kommutatives Digramm mit exakten Zeilen:

    \xymatrix{
        \displaystyle F(U') \ar[r]\ar[d] & \displaystyle \prod_i^\phantom{i} F(U_i)\ar[d]^\sim \ar@<-.5ex>[r] \ar@<.5ex>[r] & \displaystyle \prod_{i,j,k}^\phantom{i} F(V_{ij}^k)\ar[d]^\sim \\
        \displaystyle \iota^\ast\iota_\ast F(U') \ar[r] & \displaystyle \prod_i^\phantom{i} \iota^\ast\iota_\ast F(U_i) \ar@<-.5ex>[r] \ar@<.5ex>[r] & \displaystyle \prod_{i,j,k}^\phantom{i}\iota^\ast\iota_\ast F(V_{ij}^k)
    }

Dies zeigt die Aussage.

#4-25:Beispiel

Sei `G` eine proendliche Gruppe und `T_G` ihr klassfizierender Situs. Es sei `T_G^\text{f}` die Unterkategorie der endlichen, diskreten `G`-Mengen mit surjektiven Familien als Überdeckungen. Dann erfüllt der natürliche Morphismus `T_G\to T_G^\text{f}` die Bedingungen von [~](#4-24).

#4-26:Definition

Eine stetige Abbildung `f: X'\to X` topologischer Räume heißt *lokal Homöomorphismus*, wenn zu jedem `x'\in X'` eine offene Umgebung `x'\in U'` existiert, so dass `f(U')\opensubset X` und die Einschränkung `f|_{U'}: U'\to f(U')` ein Homöomorphismus ist. ~~lokal|Homöomorphismus~~
