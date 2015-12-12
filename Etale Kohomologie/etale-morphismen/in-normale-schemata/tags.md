#6-26:Lemma

Sei `A` ein ganzabgeschlossener Ring mit Quotientenkörper `K` und `F = F_1\cdot F_2` mit normierten Polynomen `F_1,F_2\in K[T]` und `F\in A[T]`. Dann gilt `F_1,F_2\in A[T]`.

---

Die Nullstellen von `F_1` in einem algebraischen Abschluss sind Nullstellen von `F`, also ganz über `A`. Daher sind die Koeffizienten von `F_1`, als elementar-symmetrische Polynome in den Nullstellen, ganz über `A`.

#6-27:Lemma

Sei `f: Y\to X` ein étaler Morphismus in ein normales Schema `X`. Dann stellt sich `f` lokal als standard-étaler Morphismus `\Spec(C)\to \Spec(A)` dar, wobei `A` nullteilerfrei, `C = B_b`, `B = A[T]/(F)`, `F'\in B_b^\times` mit einem normierten Polynom `F\in A[T]`, der irreduzibel in `K[T]` ist, wobei `K = \Quot(A)`.

---

Es ist alles schon bekannt bis auf die Irreduzibilität von `F\in K[T]`. Sei o.B.d.A. `A` lokal, `C = B_b`, `B = A[T]/(F)`, `F'\in B_b^\times`, wobei `F` eventuell reduzibel ist. Sei `F = F_1\cdots F_r` die Zerlegung von `F` in irreduzible, normierte Polynome in `K[T]`. Nach [~](#6-26) gilt `F_i\in A[T]`.

Auf `\Spec(C)` gilt `F = 0`, also `\Spec(C) = V(F_1)\cup\cdots \cup V(F_r)` mit `V(F_i) = \Spec(A[T]/F_i)_b`. Wir sind fertig, wenn wir `V(F_i)\cap V(F_j) = \varnothing` für `i\neq j` zeigen.

Für `\mathfrak{q}\in\Spec(C)` kann aber wegen `F'\in B_b^\times` nicht sowohl `F_i` als auch `F_j` in `\mathfrak{q}C_\mathfrak{q}` liegen.

#6-28:Satz

Sei `X` ein normales Schema und `f: Y\to X` unverzweigt. Dann ist `f` genau dann étale, wenn für beliebiges `y\in Y` die Abbildung `\O_{X, f(y)}\to \O_{Y,y}` injektiv ist.

---

Flache lokale Morphismen sind treuflach, also injektiv. Sei nun `f` unverzweigt und `\O_{X,f(y)}\to \O_{Y,y}` injektiv für alle `y\in Y`. Nach [~](#6-20-1) ist `f` lokal von der Form `Y\stackrel{f'}{\to} Y' \stackrel{g}{\to} X` mit standard-étalem `g` und einer abgeschlossenen Immersion `f'`. Wir setzen `A = \O_{X,f(y)}`. Dann ist `\O_{Y',f'(y)} = B_\mathfrak{q}` mit `B = A[T]/(F)`, `F` normiert und irreduzibel über `K = \Quot(A)` nach [~](#6-27), und `F'\in B_\mathfrak{q}^\times`.

Nach Voraussetzung ist `A\to \O_{Y,y}` injektiv. Da `K` eine flache `A`-Algebra ist, folgt die Injektivität von `K\to \O_{Y,y}\otimes_A K` und deshalb ist `\O_{Y,y}\otimes_A K` nicht der Nullring. Da `F\in K[T]` irreduzibel ist, ist `K[T]/(F) = B\otimes_A K\to B_\mathfrak{q}\otimes_A K` ein Isomorphismus. Insbesondere ist `B_\mathfrak{q}\otimes_A K` ein Körper und wegen `\O_{Y,y}\otimes_A K\neq 0` ist daher `B_\mathfrak{q}\otimes_A K\to \O_{Y,y}\otimes_A K` injektiv.

Es folgt die Injektivität von `B_\mathfrak{q}\to \O_{Y,y}`. Da `f'` eine abgeschlossene Immersion ist, ist `B_\mathfrak{q}\to \O_{Y,y}` auch surjektiv, weshalb `\O_{Y,y}\cong B_\mathfrak{q}` eine flache `A`-Algebra ist.

#6-29:Theorem

Sei `X` ein zusammenhängendes, normales Schema und `K = k(X)` sein Funktionenkörper. Sei `L/K` eine endlich separable Erweiterung von `K` und `X_L` die Normalisierung von `X` in `L`. Desweiteren sei `U\opensubset X_L` ein offenes Unterschema, welches disjunkt zu `\supp(\Omega_{X_L/X})` ist. Dann ist `U\to X` étale.

Umgekehrt ist jeder separierte, étale Morphismus `Y\to X` von der Form `Y = \coprod_i U_i\to X`, wobei die `U_i\to X` offene Unterschemata sind, welche disjunkt zu `\supp(\Omega_{X_L/X})` ist.

#6-30-INTRO

Sei `X` ein zusammenhängendes, normales Schema mit Funktionenkörper `K`. Sei `L/K` eine endliche Galoiserweiterung und `Y = X_L` die Normalisierung von `X` in `L`. Dann wirkt `G = \Gal(L/K)` von rechts auf `Y`. Für einen Zwischenkörper `L/K'/K` sei `X_{K'}` die Normalisierung von `X` in `K'`.

#6-30:Definition

Für `y\in Y` heißt

    Z_y = \{\sigma\in G\mid y\sigma = y\}

die *Zerlegungsgruppe* von `y` und

    T_y = \{\sigma\in Z_y\mid \overline{\sigma}: k(y)\to k(y),\ \overline{\sigma} = \id_{k(y)} \}

die *Trägheitsgruppe* von `y`. ~~Zerlegungsgruppe~~ ~~Trägheitsgruppe~~

#6-31:Satz

1. Für `x\in X` wirkt `G` transitiv auf der Menge der Punkte in `Y` über `x`.
2. Sei `y\in Y`, `y'` das Bild von `y` in `X_{L^{Z_y}}` und `x` das Bild von `y` in `X`. Dann ist `y` der einzige Punkt von `Y` über `y'` und es gilt `k(x)\cong k(y')`.
3. `Y\to X` ist genau dann étale bei `y\in Y`, wenn `T_y = 1` gilt.

#6-32:Theorem

*(Reinheitssatz von Zariski-Nagata)* ~~Reinheitssatz~~ Sei `X` ein reguläres, zusammenhängendes Schema und `X_L` die Normalisierung von `X` in einer endlich separablen Erweiterung `L/K = k(X)`. Sei `U_L\opensubset X_L` die maximal offene Teilmenge, so dass die Projektion `U_L\to X` étale ist. Dann ist `R_{X_L\setminus X} = X_L\setminus U_L`, der sog. *Verzweigungsort*, ein abgeschlossenes Unterschema, rein von Kodimension `1`. ~~Verzweigungsort~~

#6-33:Theorem

Sei `f: Y\to X` treuflach und endlich, ohne Normalitätsannahme. Dann ist der Verzweigungsort in `Y` rein von Kodimension `1`.

#6-34:Bemerkung

In kleinen Dimensionen folgt [~](#6-32) aus [~](#6-33). Ist nämlich `X` regulär und `\dim(X)\leq 2`, so ist `X_L\to X` treuflach.
