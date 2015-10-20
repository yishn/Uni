#2-1-INTRO

Wir können einen topologischen Raum `X` als Kategorie auffassen, indem wir die offenen Teilmengen von `X` als Objekte auffassen und die Morphismen von `U` nach `V` gerade aus der natürlichen Inklusion `U\hookrightarrow V` besteht, falls `U\subset V`. Es gilt `U\cap V = U\times_X V`. Eine Prägarbe auf `X` ist gerade ein kontravarianter Funktor auf dieser Kategorie. Die Garbeneigenschaft kann man kategoriell als Differenzkern schreiben.

#2-1:Definition

Ein *Situs* ~~Situs~~ `T` besteht aus einer (kleinen) Kategorie `\Kat(T)` und einer Menge `\Ueb(T)` von Familien `(U_i\to U)_{i\in I}` von Morphismen in `\Kat(T)`, die man *Überdeckung* nennt, wobei ~~Überdeckung|Situs~~ in jeder Überdeckung das Zielobjekt der Morphismen dasselbe ist, so dass:

1. Ist `\phi` ein Isomorphismus in `\Kat(T)`, so gilt `(\phi)\in \Ueb(T)`.
2. Ist `(U_i\to U)_i\in \Ueb(T)` und `(V_{ij}\to U_i)_j\in\Ueb(T)` für alle `i`, so ist die Familie `(V_{ij}\to U)_{i,j}`, die man durch Komposition erhält, auch in `\Ueb(T)`.
3. Ist `(U_i\to U)_i\in\Ueb(T)` und `(V\to U)\in \Kat(T)` beliebig, so existiert das Faserprodukt `U_i\times_U V` und es ist `(U_i\times_U V\to V)_i\in\Ueb(T)`.

Man sagt auch, dass `\Ueb(T)` eine *(Grothendieck-)Topologie* auf `\Kat(T)` definiert. ~~Topologie|Grothendieck~~
