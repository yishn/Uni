#2-1-INTRO

Wir können einen topologischen Raum `X` als Kategorie auffassen, indem wir die offenen Teilmengen von `X` als Objekte auffassen und die Morphismen von `U` nach `V` gerade aus der natürlichen Inklusion `U\hookrightarrow V` besteht, falls `U\subset V`. Es gilt `U\cap V = U\times_X V`. Eine Prägarbe auf `X` ist gerade ein kontravarianter Funktor auf dieser Kategorie. Die Garbeneigenschaft kann man kategoriell als Differenzkern schreiben.

#2-1:Definition

Ein *Situs* ~~Situs~~ `T` besteht aus einer (kleinen) Kategorie `\Kat(T)` und einer Menge `\Ub(T)` von Familien `(U_i\to U)_{i\in I}` von Morphismen in `\Kat(T)`, die man *Überdeckung* nennt, wobei ~~Überdeckung|Situs~~ in jeder Überdeckung das Zielobjekt der Morphismen dasselbe ist, so dass:

1. Ist `\phi` ein Isomorphismus in `\Kat(T)`, so gilt `(\phi)\in \Ub(T)`.
2. Ist `(U_i\to U)_i\in \Ub(T)` und `(V_{ij}\to U_i)_j\in\Ub(T)` für alle `i`, so ist die Familie `(V_{ij}\to U)_{i,j}`, die man durch Komposition erhält, auch in `\Ub(T)`.
3. Ist `(U_i\to U)_i\in\Ub(T)` und `(V\to U)\in \Kat(T)` beliebig, so existiert das Faserprodukt `U_i\times_U V` und es ist `(U_i\times_U V\to V)_i\in\Ub(T)`.

Man sagt auch, dass `\Ub(T)` eine *(Grothendieck-)Topologie* auf `\Kat(T)` definiert. ~~Topologie|Grothendieck~~

Sei auf derselben Kategorie `\mathcal{T}` zwei Topologien definiert, d.h. wir haben zwei Siten `T, T'` mit `\Kat(T) = \mathcal{T} = \Kat(T')`. Wir sagen, dass `T'` *feiner* ~~feiner|Topologie~~ als `T` ist, wenn `\Ub(T)\subset \Ub(T')` gilt.

#2-2:Beispiel

Ist `X` ein topologischer Raum, so definiert `X_\top` mit der Kategorie [wie oben](#2-1-INTRO) und den üblichen Überdeckungen einen Situs. Eine feinere Topologie auf `X` liefert auch eine feinere Grothendieck-Topologie.

#2-2-1:Bemerkung

Eine Familie von Abbildungen `(\varphi_i: U_i\to U)_{i\in I}` mit gleichem Ziel heißt *surjektive Familie*, ~~surjektiv|Familie~~ wenn:

    \bigcup_{i\in I} \varphi_i(U_i) = U

#2-3:Beispiel

Sei `G` eine Gruppe. Sei `\Kat(T_G)` die Kategorie der Mengen mit einer Links-`G`-Wirkung und `\Ub(T_G)` die Menge von surjektiven Familien von `G`-Abbildungen mit gleichem Ziel. Dies definiert einen Situs `T_G`.

Für `G`-Abbildungen `\phi:U\to X` und `\psi:V\to X` ist das Faserprodukt `U\times_X V\to X` von `G`-Mengen gerade das mengentheoretisches Faserprodukt

    U\times_X V = \{(u, v)\in U\times V\mid \phi(u) = \psi(v)\}

mit der `G`-Diagonalwirkung `g(u, v) = (gu, gv)`.

#2-4:Beispiel

Sei `G` eine proendliche Gruppe. Sei `\Kat(T_G)` die Kategorie der diskreten Links-`G`-Mengen und `\Ub(T_G)` die Mengen von surjektiven Familien von `G`-Abbildungen mit gleichem Ziel. Dies definiert einen Situs `T_G`. Vergleiche auch mit [~](#2-3).
