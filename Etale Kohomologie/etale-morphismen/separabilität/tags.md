#6-1:Lemma

Sei `K/k` eine endliche Körpererweiterung und `\overline{k}/k` ein algebraischer Abschluss von `k`. Dann sind äquivalent:

1. `K/k` ist separabel.
2. `K\otimes_k \overline{k}` ist reduziert.
3. `K\otimes_k\overline{k}` ist isomorph zu einem endlichen Produkt von Kopien von `\overline{k}`.
4. Die Spurform `K\times K\to k`, `(x, y)\mapsto \operatorname{Sp}_{K/k}(xy)` ist nicht ausgeartet.

#6-2:Definition

Sei `f: A\to B` ein Ringhomomorphismus. `\Omega_{B/A}` ist der `B`-Modul, erzeugt von Symbolen `\d b`, `b\in B` modulo die folgenden Relationen:

1. `\d(b+b') = \d b + \d b'` für alle `b,b'\in B`
2. `\d(bb') = b\d b' + b'\d b` für alle `b,b'\in B`
3. `\d a = 0` für alle `a\in A`

#6-2-1:Bemerkung

`\d: B\to\Omega_{B/A}`, `b\mapsto \d b` ist universell bzgl. `A`-Differentialen `\d': B\to M` in `B`-Moduln `M`.

#6-3:Lemma

Sei `K/k` eine endliche Körpererweiterung. Dann sind äquivalent:

1. `K/k` ist endlich separiert.
2. `\Omega_{K/k} = 0`

#6-3-1:Bemerkung

Die Konstruktion von `\Omega_{B/A}` verklebt sich. Wir erhalten für jeden Schema-Morphismus `f: Y\to X` einen quasikohärenten `\O_Y`-Modul `\Omega_{Y/X}`, die kohärent ist, falls `f` lokal von endlichem Typ ist. Die Diagonale `\Delta: Y\to Y\times_X Y` ist eine Immersion und induziert ein Schema-Isomorphismus `\Delta: Y\stackrel{\sim}{\to}\Delta(Y)\stackrel{i}{\hookrightarrow} W\opensubset Y\times_X Y`, wobei `i` eine abgeschlossene Immersion ist.

#6-4:Lemma

Sei `I\subset\O_W` die Idealgarbe, die `\Delta(Y)` definiert. Dann gilt:

    \Omega_{Y/X} \cong \Delta^\ast(I/I^2)
