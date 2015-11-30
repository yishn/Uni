#6-5:Definition

Ein Schema-Morphismus `f: Y\to X` lokal von endlichem Typ heißt *unverzweigt*, wenn für jedes `y\in Y` der Ring `\O_{Y,y}\otimes_{\O_{X,f(y)}} k(f(y)) = \O_{Y,y}/\mathfrak{m}_{X,f(y)}\O_{Y,y}` eine endlich separable Körpererweiterung von `k(f(y)) = \O_{X,f(y)}/\mathfrak{m}_{X,f(y)}` ist. ~~unverzweigt|Schema-Morphismus~~

#6-6:Bemerkung

Dies verallgemeinert die Definition aus der Zahlentheorie für einen endlichen Morphismus `\Spec(B)\to\Spec(A)` von Dedekindringen.

#6-7:Lemma

Sei `f: Y\to X` lokal von endlichem Typ. Dann sind äquivalent:

1. `f` ist unverzweigt.
2. Für jedes `x\in X` ist die Faser `Y_x = Y\times_X k(x)` die disjunkte Vereinigung `\coprod_i\Spec(k_i)`, wobei die `k_i` endlich separable Erweiterungen von `k(x)` sind.

#6-8:Lemma

1. Immersionen sind unverzweigt.
2. Die Komposition unverzweigter Morphismen ist unverzweigt.
3. Unverzweigte Morphismen sind stabil unter Basiswechsel.

---

(i) und (ii) sind klar. (iii) folgt aus [~](#6-7) und der Beobachtung, dass für alle endlich separierte `k'/k` und `K/k` beliebig stets `K\otimes_k k' = \bigotimes_K K_i` für gewisse endlich separierten `K_i/K` gilt.

#6-9:Satz

Sei `f: Y\to X` ein Morphismus lokal von endlichem Typ. Dann sind äquivalent:

1. `f` ist unverzweigt.
2. `\Omega_{Y/X} = 0`
3. Die Diagonale `\Delta: Y\to Y\times_X Y` ist eine offene Immersion.

---

* (i)`\implies`(ii): Sei o.B.d.A. `Y,X` affin, also `f: A\to B` eine endlich erzeugte Algebra. Dann ist `\Omega_{B/A}` ein endlich erzeugter `B`-Modul. Es ist genau dann `\Omega_{B/A} = 0`, wenn `(\Omega_{B/A})_\mathfrak{m} = 0` für alle Maximalideale `\mathfrak{m}\subset B`. Es gilt `(\Omega_{B/A})_\mathfrak{m} = \Omega_{B_\mathfrak{m}/A_{f^{-1}(\mathfrak{m})}}`. Nach Nakayama verschwindet dieser `B_\mathfrak{m}`-Modul genau dann, wenn `\Omega_{k(\mathfrak{m})/k(f^{-1}(\mathfrak{m}))} = \Omega_{B_\mathfrak{m}/A_{f^{-1}(\mathfrak{m})}}/\mathfrak{m} = 0` gilt. Dies gilt nun nach [~](#6-3).

* (ii)`\implies`(iii): Sei `W\opensubset Y\times_X Y`, so dass `\Delta: Y\stackrel{\sim}{\to} \Delta(Y)\hookrightarrow W` eine abgeschlossene Immersion ist. Sei `I\subset\O_W` die zugehörige Idealgarbe. Dann gilt nach [~](#6-4) `I/I^2 = \Omega_{Y/X} = 0`, also `I = 0`, da `W` noethersch ist. Es folgt, dass `\Delta(Y) = W` offen in `Y\times_X Y` ist.

* (iii)`\implies`(i): Nach [~](#6-7) und [~](#6-1) können wir Unverweigtheit nach Übergang zu geometrischen Fasern nachprüfen, d.h. o.B.d.A. `X = \Spec(k)`, `k = \overline{k}`, `Y=\Spec(B)` zusammenhängend, wobei `B` eine endlich erzeugte `k`-Algebra ist.

Sei `y\in Y` ein abgeschlossener Punkt. Dann existiert ein Schnitt `g: \Spec(k)\to Y` zu `f: Y\to\Spec(k)` mit `g(\Spec(k)) = \{y\}`. Das folgende Diagramm ist kartesisch:

        \xymatrix{
            \{y\} \ar[r]\ar[d] & Y \ar[d]^{(gf, \id)} \\
            Y \ar[r]_-{\Delta} & Y\times_k Y
        }

weshalb `\{y\}\opensubset Y` als Basiswechsel von `\Delta`. Da `y` beliebiger abgeschlossener Punkt war, folgt `\dim(Y) = 0`. Somit ist `B` eine lokale artinsche `k`-Algebra. Insbesondere gilt `\dim_k(B)<\infty`. Damit hat `Y` und auch `Y\times_k Y` genau einen Punkt. Da `Y\to Y\times_k Y` eine offene Einbettung ist, folgt `Y\cong Y\times_k Y`, also ist `B\otimes_k B\to B` ein Isomorphismus. Aus Dimensionsgründen folgt `B = k`. Daher ist `f` unverzweigt.
