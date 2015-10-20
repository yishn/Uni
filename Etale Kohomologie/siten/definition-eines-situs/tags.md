#2-1-INTRO

Wir können einen topologischen Raum `X` als Kategorie auffassen, indem wir die offenen Teilmengen von `X` als Objekte auffassen und die Morphismen von `U` nach `V` gerade aus der natürlichen Inklusion `U\hookrightarrow V` besteht, falls `U\subset V`. Es gilt `U\cap V = U\times_X V`. Eine Prägarbe auf `X` ist gerade ein kontravarianter Funktor auf dieser Kategorie. Die Garbeneigenschaft kann man kategoriell als Differenzkern schreiben.

#2-1:Definition

Ein *Situs* ~~Situs~~ `T` besteht aus einer (kleinen) Kategorie `\Cat(T)` und einer Menge `\Cov(T)` von Familien `(U_i\to U)_{i\in I}` von Morphismen in `\Cat(T)`, die man *Überdeckung* nennt, wobei ~~Überdeckung|Situs~~ in jeder Überdeckung das Zielobjekt der Morphismen dasselbe ist, so dass:

1. Ist `\phi` ein Isomorphismus in `\Cat(T)`, so gilt `(\phi)\in \Cov(T)`.
2. Ist `(U_i\to U)_i\in \Cov(T)` und `(V_{ij}\to U_i)_j\in\Cov(T)` für alle `i`, so ist die Familie `(V_{ij}\to U)_{i,j}`, die man durch Komposition erhält, auch in `\Cov(T)`.
3. Ist `(U_i\to U)_i\in\Cov(T)` und `(V\to U)\in \Cat(T)` beliebig, so existiert das Faserprodukt `U_i\times_U V` und es ist `(U_i\times_U V\to V)_i\in\Cov(T)`.

Man sagt auch, dass `\Cov(T)` eine *(Grothendieck-)Topologie* auf `\Cat(T)` definiert. ~~Topologie|Grothendieck~~

Sei auf derselben Kategorie `\mathcal{T}` zwei Topologien definiert, d.h. wir haben zwei Siten `T, T'` mit `\Cat(T) = \mathcal{T} = \Cat(T')`. Wir sagen, dass `T'` *feiner* ~~feiner|Topologie~~ als `T` ist, wenn `\Cov(T)\subset \Cov(T')` gilt.

#2-2:Beispiel

Ist `X` ein topologischer Raum, so definiert `X_\text{top}` mit der Kategorie [wie oben](#2-1-INTRO) und den üblichen Überdeckungen einen Situs. Eine feinere Topologie auf `X` liefert auch eine feinere Grothendieck-Topologie.

#2-3:Beispiel

Sei `G` eine Gruppe. Sei `\Cat(T_G)` die Kategorie der Mengen mit einer Links-`G`-Wirkung und `\Cov(T_G)` die Menge von Familien surjektiver `G`-Abbildungen mit gleichem Ziel. Dies definiert einen Situs `T_G`.

Für `G`-Abbildungen `\phi:U\to X` und `\psi:V\to X` ist das Faserprodukt `U\times_X V\to X` von `G`-Mengen gerade das mengentheoretisches Faserprodukt

    U\times_X V = \{(u, v)\in U\times V\mid \phi(u) = \psi(v)\}

mit der `G`-Diagonalwirkung `g(u, v) = (gu, gv)`.

#2-4:Beispiel

Sei `G` eine proendliche Gruppe. Sei `\Cat(T_G)` die Kategorie der diskreten Links-`G`-Mengen und `\Cov(T_G)` die Mengen von Familien stetiger, surjektiver `G`-Abbildungen mit gleichem Ziel. Dies definiert einen Situs `T_G`. Vergleiche auch mit [Beispiel 2.3](#2-3).
