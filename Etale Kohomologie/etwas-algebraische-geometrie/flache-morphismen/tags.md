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

Sei `X` ein Schema. Der *flache Situs* `X_\fl` besteht aus der Kategorie der Schemata über `X` lokal von endlichem Typ. Eine Familie `(\phi_i: U_i\to Y)_i` von `X`-Morphismen ist genau dann eine Überdeckung, wenn `\phi_i` alle flach (automatisch lokal von endlichem Typ) und `Y = \bigcup_i\phi_i(U_i)` gilt.

#5-18:Lemma

Sei `F\in\PrSh_\Mengen(X_\fl)`. Dann ist `F` genau dann eine Garbe, wenn die folgenden Bedingungen gelten:

1. `F` hat die Garbeneigenschaft bzgl. Zariski-Überdeckungen.
2. `F` hat die Garbeneigenschaft bzgl. der einelementigen Familie `(\phi: V\to U)` mit `U, V` affin und `\phi` flach (automatisch von endlichem Typ).

---

Wir zeigen die nichttriviale Richtung. Sei `(f_i: U_i\to U)\in\Ub(X_\fl)` und `s_i\in F(U_i)` eine Familie von kompatiblen Schnitten. Wir zeigen, dass für jedes affine `W\opensubset U` ein eindeutig bestimmtes `s\in F(W)` existiert, so dass `s|_{U_i\times_U W} = s_i|_{U_i\times_U W}` für alle `i` gilt. Ist dies gezeigt, so sind wir mit der Bedingung (i) fertig.

Sei o.B.d.A. `U` affin. Wir verfeinern `(f_i: U_i\to U)_i` durch `(h_j: V_j\to U)_j` mit affinen `V_j\to U_{i_j}`. Nach [~](#5-14) (i) ist `h_j(V_j)\opensubset U` und da `U` quasikompakt ist, können wir o.B.d.A. annehmen, dass `(h_j: V_j\to U)_j` endlich ist. Dann ist `\coprod_j V_j\to U` ein flacher Morphismus zwischen affinen Schemata. Bedingung (ii) liefert ein `s\in F(U)` mit `s|_{V_j} = s_{i_j}|_{V_j}` für alle `j`.

Betrachte nun für jedes `i` die endliche Überdeckung `(V_j\times_U U_i\to U_i)_j`. Ist `U_i` affin, so können wir analog zum obigen Argument ein eindeutiges `s_{U_i}\in F(U_i)` finden mit `s_{U_i}|_{V_j\times_U U_i} = s_{i_j}|_{V_j\times_U U_i} = s_i|_{V_j\times_U U_i}` für alle `j`. Ist `U_i` nicht affin, so finden wir ein eindeutiges `s_{U_i}` mithilfe von (i) nach Übergang zu einer Zariski-Überdeckung von `U_i`.

Wegen `s|_{V_j\times_U U_i} = s_{i_j}|_{V_j\times_U U_i} = s_i|_{V_j\times_U U_i}` und der Eindeutigkeit von `s_{U_i}` folgt `s|_{U_i} = s_{U_i} = s_i`.
