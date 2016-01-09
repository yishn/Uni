#5-11:Definition

Ein Morphismus `f: Y\to X` heißt *flach*, wenn `\O_{Y,y}` eine flache `\O_{X,f(y)}`-Algebra ist für alle `y\in Y`.

`f` heißt *treuflach*, wenn `f` flach und surjektiv ist. ~~treuflach|Schema-Morphismus~~ ~~flach|Schema-Morphismus~~

#5-12:Bemerkung

Für ein Schema-Morphismus `f: \Spec(B)\to \Spec(A)` gilt:

    f \text{ flach} \iff B \text{ flacher $A$-Modul}\\
    f \text{ treuflach} \iff B \text{ treuflacher $A$-Modul}

Treuflache Ringhomomorphismen sind injektiv, insbesondere sind flache Homomorphismen lokaler Ringe injektiv.

#5-13:Bemerkung

Die Eigenschaft für einen Modul flach zu sein ist lokal. Ist `M` ein endlich erzeugter `A`-Modul, so sind äquivalent:

1. `M` ist flach.
2. `M` ist lokal frei.
3. `M` ist projektiv.

#5-14:Satz

Sei `f: A\to B` eine endlich erzeugte Algebra.

1. Ist `f` flach, so ist `f^\ast: \Spec(B)\to \Spec(A)` offen.
2. Die Menge der Punkte `\mathfrak{P}\in\Spec(B)`, so dass `B_\mathfrak{p}` eine flache `A_\mathfrak{p}`-Algebra mit `\mathfrak{p} = f^\ast(\mathfrak{P})` ist, ist offen in `\Spec(B)`.

#5-15:Korollar

Sei `f: Y\to X` ein Morphismus lokal von endlichem Typ.

1. Ist `f` flach, so ist `f` offen.
2. Die Menge der Punkte `y\in Y`, so dass `\O_{Y,y}` eine flache `\O_{X,f(y)}`-Algebra ist, ist offen in `Y`.

#5-16:Definition

Sei `X` ein Schema. Der *flache Situs* `X_\fl` besteht aus der Kategorie der Schemata lokal von endlichem Typ über `X`. Eine Familie `(\phi_i: U_i\to Y)_i` von `X`-Morphismen ist genau dann eine Überdeckung, wenn `\phi_i` alle flach (automatisch lokal von endlichem Typ) und `Y = \bigcup_i\phi_i(U_i)` gilt. ~~flach|Situs~~

#5-18:Lemma

Sei `F\in\PrSh_\Mengen(X_\fl)`. Dann ist `F` genau dann eine Garbe, wenn die folgenden Bedingungen gelten:

1. `F` hat die Garbeneigenschaft bzgl. Zariski-Überdeckungen.
2. `F` hat die Garbeneigenschaft bzgl. der einelementigen Familie `(\phi: V\to U)` mit `U, V` affin und `\phi` flach (automatisch von endlichem Typ).

---

Wir zeigen die nichttriviale Richtung. Sei `(f_i: U_i\to U)\in\Ub(X_\fl)` und `s_i\in F(U_i)` eine Familie von kompatiblen Schnitten. Wir zeigen, dass für jedes affine `W\opensubset U` ein eindeutig bestimmtes `s\in F(W)` existiert, so dass `s|_{U_i\times_U W} = s_i|_{U_i\times_U W}` für alle `i` gilt. Ist dies gezeigt, so sind wir mit der Bedingung (i) fertig.

Sei o.B.d.A. `U` affin. Wir verfeinern `(f_i: U_i\to U)_i` durch `(h_j: V_j\to U)_j` mit affinen `V_j\to U_{i_j}`. Nach [~](#5-14) (i) ist `h_j(V_j)\opensubset U` und da `U` quasikompakt ist, können wir o.B.d.A. annehmen, dass `(h_j: V_j\to U)_j` endlich ist. Dann ist `\coprod_j V_j\to U` ein flacher Morphismus zwischen affinen Schemata. Bedingung (ii) liefert ein `s\in F(U)` mit `s|_{V_j} = s_{i_j}|_{V_j}` für alle `j`.

Betrachte nun für jedes `i` die endliche Überdeckung `(V_j\times_U U_i\to U_i)_j`. Ist `U_i` affin, so können wir analog zum obigen Argument ein eindeutiges `s_{U_i}\in F(U_i)` finden mit `s_{U_i}|_{V_j\times_U U_i} = s_{i_j}|_{V_j\times_U U_i} = s_i|_{V_j\times_U U_i}` für alle `j`. Ist `U_i` nicht affin, so finden wir ein eindeutiges `s_{U_i}` mithilfe von (i) nach Übergang zu einer Zariski-Überdeckung von `U_i`.

Wegen `s|_{V_j\times_U U_i} = s_{i_j}|_{V_j\times_U U_i} = s_i|_{V_j\times_U U_i}` und der Eindeutigkeit von `s_{U_i}` folgt `s|_{U_i} = s_{U_i} = s_i`.

#5-19:Lemma

Sei `f: A\to B` ein treuflacher Ringhomomorphismus und `M` ein `A`-Modul. Dann ist der folgende Komplex exakt:

    0\longrightarrow M \longrightarrow B\otimes_A M \stackrel{\d}{\longrightarrow} B^{\otimes_A 2} \otimes_A M \stackrel{\d}{\longrightarrow} B^{\otimes_A 3} \otimes_A M \stackrel{\d}{\longrightarrow} \cdots

wobei `\d = \sum_{i = 0}^r (-1)^i e_i\otimes\id` und

    \begin{align*}
        B^{\otimes_A r} &\stackrel{e_i}{\longrightarrow} B^{\otimes_A (r+1)},\\
        b_1\otimes\cdots\otimes b_r &\longmapsto b_1\otimes\cdots\otimes b_i\otimes 1\otimes b_{i+1}\otimes\cdots\otimes b_r
    \end{align*}

---

`\d^2 = 0` ist einfach auszurechnen. Hat `f: A\to B` einen Schnitt `g: B\to A` mit `gf = \id_A`, so gibt `\Delta\otimes\id_M` mit

    \begin{align*}
        B^{\otimes_A(r+1)} &\stackrel{\Delta}{\longrightarrow} B^{\otimes_A r},\\
        b_1\otimes\cdots\otimes b_{r+1} &\longmapsto g(b_1)b_2\otimes b_3\otimes \cdots\otimes b_{r+1}
    \end{align*}

eine Nullhomotopie des Komplexes.

Im allgemeinen Fall beachten wir, dass es ausreicht die Exaktheit des Komplexes nach Tensorieren mit der treuflachen `A`-Algebra `f: A\to B` zu zeigen. Nun hat `f\otimes_A B: B = A\otimes_A B \to B\otimes_A B` den Schnitt `B\otimes_A B\to B`, `b_1\otimes b_2\mapsto b_1b_2`.

#5-17:Theorem

Sei `Z\to X` ein Schema. Dann ist `\Mor_X(-, Z)` eine Garbe auf `X_\fl`.

---

Sei `(U_i\to U)_i\in \Ub(X_\fl)`. Es ist zu zeigen, dass die folgende Folge exakt ist:

    \equalizer{\Mor_X(U, Z)}{\prod_i^\phantom{i} \Mor_X(U_i, Z)}{\prod_{i,j}^\phantom{i} \Mor_X(U_i\times_U U_j, Z)}

Da flache Überdeckungen surjektiv und flache lokale Ringhomomorphismen injektiv sind, sieht man leicht ein, dass dies aus der Exaktheit der folgenden Folge folgt:

    \equalizer{\Mor(U, Z)}{\prod_i^\phantom{i} \Mor(U_i, Z)}{\prod_{i,j}^\phantom{i} \Mor(U_i\times_U U_j, Z)}

Die Bedingung (i) in [~](#5-18) ist klar erfüllt. Daher reicht es, die Aussage für eine einelementige Überdeckung der Form `(f^\ast: \Spec(B)\to \Spec(A))` mit `f: A\to B` treuflach zu zeigen.

Sei zunächst `Z = \Spec(C)` affin. Dann folgt die Aussage aus der Exaktheit des Komplexes in [~](#5-19):

    0\longrightarrow A \stackrel{f}{\longrightarrow} B \stackrel{e_0-e_1}{\longrightarrow} B\otimes_A B

Sind nämlich `g_1,g_2: C\to A` mit `fg_1 = fg_2` gegeben, so gilt `g_1 = g_2`, da `f` injektiv ist. Haben wir `h: C\to B` mit `e_0h = e_1h` gegeben, so gilt `\im(h)\subset\im(f)`, also faktorisiert `h` über `f`.

Nun sei `Z` beliebig. Wir betrachten das Diagramm:

    \xymatrix{
        Y\times_X Y \ar@<-.5ex>[d]_{\pr_1} \ar@<.5ex>[d]^{\pr_2} \\
        Y = \Spec(B) \ar[d]_{f^\ast} \ar@/^/[rd]^-h \\
        X = \Spec(A) \ar@<-.5ex>[r]_-{g_2} \ar@<.5ex>[r]^-{g_1} & Z
    }

Sind `g_1,g_2: X\to Z` mit `g_1f^\ast = g_2f^\ast` gegeben, so ist `g_1 = g_2` zu zeigen. Da `f` surjektiv ist, gilt `g_1 = g_2` als stetige Abbildungen und wir können `g_1 = g_2` als Morphismen lokal verifizieren. Zu `x\in X` wähle eine affine Umgebung `W\opensubset Z` von `g_1(x) = g_2(x)` und affine Umgebung `U\opensubset X` von `x` mit `g_1(U) = g_2(U)\subset W`. Dann ist `f^{\ast}{}^{-1}(U)\subset Y` affin und `f^\ast: f^\ast{}^{-1}(U)\to U` treuflach. Die Gleichheit folgt nun aus dem affinen Fall.

Nun sei `h: Y\to Z` mit `h\pr_1 = h\pr_2` gegeben. Wir wollen ein `g: X\to Z` mit `h = gf` konstruieren. Wegen der bereits bewiesenen Eindeutigkeit können wir dies lokal tun. Sei `x\in X`, `y\in f^\ast{}^{-1}(x)` und `U\opensubset Z` eine affine Umgebung von `h(y)`. Dann ist `y\in h^{-1}(U)\opensubset Y` und `x\in f^\ast(h^{-1}(U))`. Wir sind fertig, wenn wir eine affine Umgebung `x\in V\opensubset f^\ast(h^{-1}(U))` mit `f^\ast{}^{-1}(V)\subset h^{-1}(U)` finden können, da sich der affine Fall anwenden lässt.

Da `f` von endlichem Typ ist, ist `f^\ast(h^{-1}(U))\opensubset X` nach [~](#5-15) (i). Also finden wir eine affine Umgebung `x\in V\opensubset f^\ast(h^{-1}(U))`. Sei `y'\in f^\ast{}^{-1}(V)`. Dann existiert ein `y''\in h^{-1}(U)` mit `f^\ast(y'') = f^\ast(y')`. Wir betrachten den Punkt `(y',y'')\in Y\times_X Y`. Nach Voraussetzung an `h` gilt `h(y') = h(y'')\in U`, also `y'\in h^{-1}(U)`.
