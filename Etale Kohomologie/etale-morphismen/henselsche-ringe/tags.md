#6-35:Lemma

Sei `(A,\mathfrak{m},k)` ein lokaler Ring. Es seien `g,h\in A[T]` normiert und `\overline{g},\overline{h}\in k[T]` ihre Bilder. Dann gilt:

1. `(g, h) = A[T] \iff (\overline{g}, \overline{h}) = k[T]`
2. Gilt `g_1h_1 = g_2h_2` mit `\overline{g_1} = \overline{g_2}`, `\overline{h_1} = \overline{h_2}` und `(\overline{g_1},\overline{h_1}) = k[T]`, so folgt `g_1 = g_2` und `h_1 = h_2`.

---

1. Die Hinrichtung ist trivial. Sei umgekehrt `(\overline{g}, \overline{h}) = k[T]`. Setze `M = A[T]/(g,h)`. Dann ist `M` ein endlich erzeugter `A`-Modul und `M/\mathfrak{m}M = k[T]/(\overline{g},\overline{h}) = 0`. Nach Nakayama folgt `M = 0`.

2. Nach (i) gilt `(g_1,h_2) = A[T]`, also existieren `r,s\in A[T]` mit `g_1r + h_2s = 1`. Es folgt:

       g_2 = g_2g_1r + g_2h_2s = g_2g_1r + g_1h_1s

   Es folgt `g_1\mid g_2`. Beide Polynome sind normiert vom gleichen Grad, also gilt `g_1 = g_2`. Analog sieht man `h_1 = h_2`.

#6-36:Definition

Ein lokaler Ring `(A, \mathfrak{m},k)` heißt *henselsch*, wenn gilt: Ist `f\in A[T]` normiert und es gilt `\overline{f} = g_0\cdot h_0` mit normierten, teilerfremden Polynome `g_0,h_0\in k[T]`, so existieren normierte `g,h\in A[T]` mit `f = g\cdot h` und `\overline{g} = g_0`, `\overline{h} = h_0`.

#6-37:Bemerkung

Nach [~](#6-35) sind `g` und `h` teilerfremd und eindeutig bestimmt.
