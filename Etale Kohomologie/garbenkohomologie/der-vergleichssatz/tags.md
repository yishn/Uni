#4-24:Theorem

Sei `\iota: T'\to T` ein Situs-Morphismus, so dass:

1. `\iota^\sharp` ist eine volltreue Einbettung, d.h. wir können `\Kat(T)` als volle Unterkategorie von `\Kat(T')` auffassen.
2. Sind `U` und `U_i,\ i\in I` Objekte von `T` und `(U_i\to U)_i\in\Ub(T')`, so gilt `(U_i\to U)\in\Ub(T)`.
3. Jedes Objekt `U\in\Kat(T')` hat eine Überdeckung `(U_i\to U)_i\in\Ub(T')` mit `U_i\in\Kat(T)`.

Dann sind `\iota_\ast: \Sh(T')\to \Sh(T)` und `\iota^\ast: \Sh(T)\to\Sh(T')` zueinander inverse Kategorienäquivalenzen. Für `U\in\Kat(T)`, `F\in\Sh(T')` und `G\in\Sh(T)` gilt für alle `q`:

    \H^q_{T'}(U, F) = \H_T^q(U, \iota_\ast F),\quad \H^q_T(U, G) = \H_{T'}^q(U, \iota^\ast G)

---

Die Adjunktion `\iota^\ast \dashv \iota_\ast` liefert natürliche Transformationen `\id \to \iota_\ast\iota^\ast` und `\iota^\ast\iota_\ast\to \id` von denen wir zeigen, dass sie Funktorisomorphismen sind.

> Es gilt `\iota_\ast^\text{P} = \iota_\ast` und `\iota^\ast = \#\circ\iota^\ast_\text{P}`. Für `U\in\Kat(T)\subset\Kat(T')` hat die Kategorie `I_U` in [~](#2-44) das Endobjekt `\id_U: U\to U` und es gilt für jede Prägarbe `G\in\PrSh(T)`:
>
>     \iota^\ast_\text{P} G(U) = \colim_{(V, \phi)\in I_U} G(V) = G(U)

Für `F\in\PrSh(T)` und `U\in\Kat(T)` gilt:

    \iota_\ast\iota_\text{P}^\ast F(U) = \iota^\ast_\text{P} F(U) = F(U)

Es gilt `\iota_\ast\iota_\text{P}^\ast = \id_{\PrSh(T)}`, womit `\iota_\ast\iota^\ast = \id_{\Sh(T)}` durch Garbifizierung folgt.

Noch zu zeigen ist `\iota^\ast \iota_\ast F(U') = F(U')` für jedes `U'\in\Kat(T')` und `F\in\Sh(T')`. Es gilt `\iota_\ast \iota^\ast_\text{P}\iota_\ast F = \iota_\ast F`, also `\iota^\ast\iota_\ast F(U) = F(U)` für alle `U\in\Kat(T)`.

Sei nun `U'\in\Kat(T')` beliebig. Wir wählen eine Überdeckung `(U_i\to U')_i` mit `U_i\in\Kat(T)` und für beliebige `i,j` eine Überdeckung `(V_{ij}^k\to U_i\times_U U_j)_k` mit `V_{ij}^k\in\Kat(T)`. Dann haben wir ein kommutatives Digramm mit exakten Zeilen:

    \xymatrix{
        \displaystyle F(U') \ar[r]\ar[d] & \displaystyle \prod_i^\phantom{i} F(U_i)\ar[d]^\sim \ar@<-.5ex>[r] \ar@<.5ex>[r] & \displaystyle \prod_{i,j,k}^\phantom{i} F(V_{ij}^k)\ar[d]^\sim \\
        \displaystyle \iota^\ast\iota_\ast F(U') \ar[r] & \displaystyle \prod_i^\phantom{i} \iota^\ast\iota_\ast F(U_i) \ar@<-.5ex>[r] \ar@<.5ex>[r] & \displaystyle \prod_{i,j,k}^\phantom{i}\iota^\ast\iota_\ast F(V_{ij}^k)
    }

Dies zeigt die Aussage.

#4-25:Beispiel

Sei `G` eine proendliche Gruppe und `T_G` ihr klassfizierender Situs. Es sei `T_G^\text{f}` die Unterkategorie der endlichen, diskreten `G`-Mengen mit surjektiven Familien als Überdeckungen. Dann erfüllt der natürliche Morphismus `T_G\to T_G^\text{f}` die Bedingungen von [~](#4-24).

#4-26:Definition

Eine stetige Abbildung `f: X'\to X` topologischer Räume heißt *lokaler Homöomorphismus*, wenn zu jedem `x'\in X'` eine offene Umgebung `x'\in U'` existiert, so dass `f(U')\opensubset X` und die Einschränkung `f|_{U'}: U'\to f(U')` ein Homöomorphismus ist. ~~lokal|Homöomorphismus~~

#4-27:Beispiel

Offene Einbettungen sind lokale Homöomorphismen.

#4-28:Lemma

Seien `f': X''\to X'` und `f: X'\to X` stetige Abbildungen topologischer Räume. Dann gilt:

1. Sind `f` und `f'` lokale Homöomorphismen, so auch `f\circ f'`.
2. Sind `f` und `f\circ f'` lokale Homöomorphismen, so auch `f'`.

#4-29:Definition

Sei `X` ein topologischer Raum. Der *étale Situs* `X_\et` besteht aus der Kategorie der lokalen Homöomorphismen `Y\to X` mit den surjektiven Familien als Überdeckungen. ~~étale|Situs~~

#4-30:Satz

Der Situs-Morphismus `\iota: X_\et\to X_\top` definiert zueinander inverse Kategorienäquivalenzen:

    \iota_\ast: \Sh(X_\et)\to\Sh(X_\top),\quad \iota^\ast: \Sh(X_\top)\to \Sh(X_\et)

Insbesondere gilt für jede Garbe `F` auf `X_\top` und jede Garbe `G` auf `X_\et` und alle `q`:

    \H_\et^q(X, \iota^\ast F) = \H_\top^q(X, F),\quad \H_\et^q(X, G) = \H_\top^q(X, \iota^\ast G)

#4-31:Lemma

Für eine stetige Abbildung `f:X \to Y` sind äquivalent:

1. `f` ist ein lokaler Homöomorphismus.
2. `f` ist offen und die Diagonale `\Delta: X\to X\times_Y X` ist eine offene Einbettung.

---

* (i)`\implies`(ii): `f` ist offensichtlich offen. Sei `x\in X` und `U\opensubset X` eine Umgebung von `x`, so dass `f|_U: U\to f(U)` ein Homöomorphismus auf einer offenen Teilmenge ist. Dann ist `(U\times U)\cap (X\times_Y X)\subset X\times X` eine offene Umgebung von `(x, x)` in `X\times_Y X`, die ausschließlich Punkte der Diagonale enthält. Also ist die Diagonale Vereinigung offener Teilmengen in `X`.

* (ii)`\implies`(i): Sei `x\in X` und `U\opensubset X` eine Umgebung von `x`, so dass `(U\times U)\cap (X\times_Y X)` ganz in der Diagonale liegt. Dann ist `f|_U: U\to Y` injektiv. Da `f` offen ist, ist es ein Homöomorphismus auf sein Bild.

#4-32:Satz

Sei `f: X\to Y` ein Schema-Morphismus.

1. `f` heißt *flach*, wenn für alle `x\in X` der Homomorphismus lokaler Ringe `f^\ast: \O_{Y,f(x)}\to \O_{X,x}` flach ist.
2. `f` heißt *unverzweigt*, wenn er lokal von endlicher Präsentation ist und die Diagonale `\Delta: X\to X\times_Y X` eine offene Immersion ist.
3. `f` heißt *étale*, wenn `f` flach und unverzweigt ist.

Flache Morphismen lokal von endlicher Präsentation sind universell offen. Der *étale Situs* eines Schemas `X` ist gegeben durch alle étalen Morphismen `Y\to X` mit surjektiven Familien als Überdeckungen. ~~unverzweigt|Schema-Morphismus~~ ~~étale|Schema-Morphismus~~ ~~étale|Situs (Schema)~~
