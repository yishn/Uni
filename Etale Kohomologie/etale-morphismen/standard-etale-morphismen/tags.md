#6-15:Lemma

Sei `A` ein noetherscher Ring und `\mathfrak{p}\subset A` ein Primideal. Dann gibt es ein `s\in A\setminus\mathfrak{p}`, so dass für jedes `s'\in A\setminus\mathfrak{p}` der Homomorphismus `A_{ss'}\to A_\mathfrak{p}` injektiv ist.

---

Sei `\mathfrak{a} = \ker(A\to A_\mathfrak{p})`. Da Lokalisierung exakt ist, gilt `\mathfrak{a}_s = \ker(A_s \to A_\mathfrak{p})`. Nun ist `A` noethersch, also `\mathfrak{a}` endlich erzeugt. Wir finden daher ein `s\in A\setminus\mathfrak{p}` mit `sa = 0` für alle `a\in\mathfrak{a}`. Es folgt `\mathfrak{a}_s = 0` und somit `\mathfrak{a}_{ss'} = 0` für alle `s'\in A\setminus\mathfrak{p}`.

#6-16:Lemma

Sei `S` ein lokal noethersches Schema und seien `X, Y` lokal von endlichem Typ über `S`. Seien `x\in X` und `y\in Y` mit gleichem Bild `s\in S`. Angenommen, es gibt einen `\O_{S,s}`-Isomorphismus `\varphi: \O_{X,x}\stackrel{\sim}{\to} \O_{Y,y}`. Dann gilt:

1. Es gibt offene Umgebungen `y\in V\opensubset Y`, `x\in U\opensubset X` und einen `S`-Isomorphismus `f: V\stackrel{\sim}{\to} U` mit `f(y) = x`, der `\varphi` induziert.

2. Sind `f_1: V_1\stackrel{\sim}{\to} U_1` und `f_2: V_2\stackrel{\sim}{\to} U_2` zwei `S`-Isomorphismen wie in (i), so existieren offene Umgebungen `y\in V_3\opensubset Y` und `x\in U_3\opensubset X`, so dass `f_1|_{V_3} = f_2|_{V_3}: V_3\stackrel{\sim}{\to} U_3`.

---

Sei o.B.d.A. alles affin. Mit [~](#6-15) können wir die Aussage auf den folgenden Fall reduzieren: Wir haben endlich erzeugte `A`-Algebren `B,C`, Primideale `\mathfrak{p}\subset B`, `\mathfrak{q}\subset C`, so dass `B_s\hookrightarrow B_\mathfrak{p}` für alle `s\in B\setminus\mathfrak{p}` und `C_t\hookrightarrow C_\mathfrak{q}` für alle `t\in C\setminus\mathfrak{q}`, und einen `A`-Isomorphismus `\varphi: B_\mathfrak{p}\stackrel{\sim}{\to}C_\mathfrak{q}`.

Sei `B = A[b_1,\ldots,b_n]` und `\gamma\in C\setminus\mathfrak{q}` ein gemeinsamer Nenner von `\varphi(b_1),\ldots,\varphi(b_n)`. Betrachte `\tilde{f}: A[X_1,\ldots,X_n]\to C_\gamma`, `X_i\mapsto\varphi(b_i)`. Betrachte das kommutative Diagramm:

    \xymatrix{
        A[X_1,\ldots,X_n] \ar@{->>}[d] \ar[rd]^-{\tilde{f}} & C \ar[d] \\
        B \ar[d] \ar@{-->}[r]_f & C_\gamma \ar[d] \\
        B_\mathfrak{p} \ar[r]_-\varphi^-{\sim} & C_\mathfrak{q}
    }

Da `B\to B_\mathfrak{p}` injektiv ist, faktorisiert `\tilde{f}` über `f: B\to C_\gamma`. Nun sei `C = A[c_1,\ldots,c_n]` und `\beta\in B\setminus\mathfrak{p}` ein gemeinsamer Nenner von `\varphi^{-1}(c_1),\ldots,\varphi^{-1}(c_n)`. Dann ist der von `f` induzierte Homomorphismus `B_\beta\to C_{\gamma f(\beta)}` surjektiv und injektiv. Dies zeigt (i).

Die Eindeutigkeitsaussagte in (ii) folgt direkt aus der Injektion von `B\to B_\mathfrak{p}` und `C\to C_\mathfrak{q}`.

#6-17-INTRO

Sei `k` ein Körper und `P\in k[T]` normiert. Dann ist die `k`-Algebra `k[T]/(P)` genau dann étale, wenn `P` separabel ist.

#6-17:Definition

Sei `A` ein Ring und `P\in A[T]` normiert. `P` heißt *separabel*, wenn `(P, P') = A[T]` gilt. ~~separabel|Polynom~~

#6-18:Lemma

Sei `A` ein Ring und `P\in A[T]` normiert. `A\to A[T]/(P)` ist genau dann étale, wenn `P` separabel ist.

---

Da `P` normiert ist, ist `A[T]/(P)\cong A^{\deg(P)}` frei, also insbesondere flach. Nun gilt:

    P \text{ separabel} \iff (P, P') = A[T] \iff P'\in (A[T]/(P))^\times

Letzteres gilt genau dann, wenn `P'\in (k(\mathfrak{p})[T]/(P))^\times` für alle Primideale `\mathfrak{p}\subset A` gilt. Es gilt:

    P'\in (k(\mathfrak{p})[T]/(P))^\times \iff P \text{ separabel in } k(\mathfrak{p})[T]

Somit ist `P` genau dann separabel, wenn `k(\mathfrak{p})\to A[T]/(P)\otimes_A k(\mathfrak{p})` für alle Primideale `\mathfrak{p}\subset A` étale ist. Dies ist nun äquivalent dazu, dass `A\to B` unverzweigt ist.

#6-19:Korollar

Sei `P\in A[T]` normiert und `b\in B = A[T]/(P)`, so dass `P'\in B_b^\times`. Dann ist `A\to B_b` étale.

#6-20:Definition

Ein Morphismus wie in [~](#6-19) heißt *standard-étale*. ~~standard-étale|Schema-Morphismus~~

#6-21:Theorem

Sei `f: Y\to X` étale in einer offenen Umgebung von `y\in Y`. Dann existieren offene Umgebungen `V` und `U` von `y` und `f(y)`, so dass `f|_V: V\to U` ein standard-étaler Morphismus ist.

#6-20-1:Theorem

Sei `f: Y\to X` unverzweigt in einer offenen Umgebung von `y\in Y`. Dann existieren offen affine Umgebungen `V` und `U` von `y` und `f(y)`, so dass `f|_V: V\to U` die Komposition einer abgeschlossenen Einbettung und eines standard-étalen Morphismus' ist.

#6-21-1:Korollar

Ein Morphismus `f: Y\to X` ist genau dann étale, wenn für jeden Punkt `y\in Y` eine affin offene Umgebung `y\in V =\Spec(C)` und eine affin offene Umgebung `f(y)\in U = \Spec(A)` existieren, so dass:

    C = A[T_1,\ldots,T_n]/(P_1,\ldots,P_n),\qquad \det \Big(\frac{\partial P_i}{\partial T_j}\Big)_{i,j}\in C^\times

Man kann `n = 2` wählen.

#6-22:Satz

Sei `Y\to X` étale. Dann gilt:

1. Für alle `y\in Y` gilt `\dim\O_{Y,y} = \dim \O_{X,f(y)}`.
2. Ist `X` normal, so auch `Y`.
3. Ist `X` regulär, so auch `Y`.

---

1. Sei o.B.d.A. `X = \Spec(A)` affin und lokal, `Y = \Spec(B_b)` mit einer endlichen `A`-Algebra `B`, und `\mathfrak{q}\subset B` ein Primideal über dem Maximalideal `\mathfrak{p}\subset A`. Da `A\to B_\mathfrak{q}` treuflach ist, ist `\Spec(B_\mathfrak{q})\to\Spec(A)` surjektiv. Daher gilt `\dim(B_\mathfrak{q})\geq\dim(A)`.

   Andererseits gilt `\dim(B_\mathfrak{q})\leq\dim(B) = \dim(A)`, da `A\subset B` endlich ist.

2. Siehe EGA IV-2, 6.5.4.

3. Es gilt `\dim\O_{Y,y} = \dim\O_{X,f(y)} = n` nach (i). `\O_{X,f(y)}` ist regulär, also wird `\mathfrak{m}_{X,f(y)}` durch `n` Elemente erzeugt und `\mathfrak{m}_{Y,y} = \mathfrak{m}_{X,f(y)}\O_{Y,y}`. Daher wird `\mathfrak{m}_{Y,y}` durch `n` Elemente erzeugt, weshalb `\O_{Y,y}` regulär ist.
