#3-9-INTRO

Sei `T` ein Situs und `\mathcal{U} = (U_i\to X)_{i\in I},\ \mathcal{V} = (V_j\to X)_{j\in J}\in\Cov(T)`.

#3-9:Definition

Eine *Verfeinerungsabbildung* ~~Verfeinerungsabbildung~~ `(f, \phi): \mathcal{V}\to \mathcal{U}` besteht aus einer Mengenabbildung `\phi: J\to I` und einer Familie von `X`-Morphismen `f_j: V_j\to U_{\phi(j)}`.

Es heißt `\mathcal{V}` eine *Verfeinerung* von `\mathcal{U}`, wenn es eine Verfeinerungsabbildung `(f, \phi): \mathcal{V}\to \mathcal{U}` gibt. ~~Verfeinerung~~

Eine Verfeinerungsabbildung `(f, \phi): \mathcal{V}\to \mathcal{U}` definiert einen Komplexhomomorphismus `\check{C}{}^\bullet(f, \phi, F): \check{C}{}^\bullet(\mathcal{U}, F)\to \check{C}{}^\bullet(\mathcal{V}, F)` und somit einen Homomorphismus:

    \check{\H}{}^q(f, \phi, F): \check{\H}{}^q(\mathcal{U}, F) \to \check{\H}{}^q(\mathcal{V}, F)

#3-10:Lemma

Es sein `(f, \phi), (g, \psi): \mathcal{V}\to\mathcal{U}` Verfeinerungsabbildungen und `F\in\PrSh_\Ab(T)`. Dann gilt `\check{\H}{}^q(f, \phi, F) = \check{\H}{}^q(g, \psi, F)`.

---

Die von `(f, \phi)` und `(g, \psi)` induzierte Homomorphismen auf den Čech-Komplexen sind homotop. Eine Homotopie ist gegeben durch:

    D^q: \check{C}{}^q(\mathcal{U}, F) \to \check{C}{}^{q-1}(\mathcal{V}, F) \\

    (Ds)_{j_0,\ldots,j_{q-1}} = \sum_{k = 1}^{q-1} (-1)^k F( (f_{j_0}, \ldots, f_{j_k}) \times (g_{j_k}, \ldots, g_{j_{q-1}}) )(s_{\phi(j_0), \ldots, \phi(j_k), \psi(j_k), \ldots, \psi(j_{q-1})})

wobei `(f_{j_0}, \ldots, f_{j_k}) \times (g_{j_k}, \ldots, g_{j_{q-1}})` die folgende Abbildung ist:

    V_{j_0}\times_X \cdots \times_X V_{j_{q-1}} \longrightarrow U_{\phi(j_0)} \times_X \cdots \times_X (U_{\phi(j_k)} \times_X U_{\psi(j_k)}) \times_X \cdots \times_X U_{\psi(j_{q-1})}

#3-10-1:Bemerkung

Man braucht nur nachzurechnen, dass `\check{C}{}^0(g, \psi, F) - \check{C}{}^0(f, \phi, F) = D^1\circ \d` gilt, vergleiche [Lemma 3.8](#3-8).

#3-11-INTRO

Wir können die Menge `\Cov(X)` der Überdeckungen von `X\in\Cat(T)` durch die Verfeinerungsrelation halbordnen: Es gelte `\mathcal{U} \leq \mathcal{V}`, genau dann wenn `\mathcal{V}` eine Verfeinerung von `\mathcal{U}` ist.

#3-11:Lemma

Die halbgeordnete Menge `\Cov(X)` ist gerichtet.

---

Für `\mathcal{U}` und `\mathcal{V}` existiert nach Definition eines Situs' das Faserprodukt `(U_i\times_X V_j\to X)_{i,j}` und diese ist eine Überdeckung von `X`, die sowohol `\mathcal{U}` als auch `\mathcal{V}` verfeinert.

#3-12:Definition

Für `q\geq 0` heißen die Gruppen

    \check{\H}{}^q(X, F) = \colim_{\Cov(X)} \check{\H}{}^q(-, F)

die *Čech-Kohomologiegruppen* von `X` mit Werten in `F`. Diese sind wohldefiniert nach [Lemma 3.10](#3-10). ~~Kohomologie|Čech~~ ~~Čech-Kohomologie~~

#3-13:Lemma

Es ist `\check{\H}{}^q(X, -)` der `q`-te abgeleiteter Funktor von `\check{\H}{}^0(X, -)`.

---

Nach [Lemma 3.11](#3-11) ist `\Cov(X)` gerichtet und somit der Kolimes exakt. Damit folgt alles formal aus Satz [Satz 3.8](#3-8).
