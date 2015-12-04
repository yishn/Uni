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
