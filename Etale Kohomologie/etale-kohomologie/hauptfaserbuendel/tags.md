#7-28-1-INTRO

Sei `X` ein Schema und `G\to X` ein flaches Gruppenschema lokal von endlichem Typ. Für ein Schema `S` bezeichnen wir die von `S` dargestellte Garben ebenfalls mit `S`.

Sei `S` ein `X`-Schema. Eine *`G`-Wirkung* auf `S` ~~Wirkung|Gruppe (Schema)~~ ist ein Morphismus `S\times_X G\to S`, so dass für jedes `X`-Schema `T` die induzierte Abbildung `S(T)\times G(T)\to S(T)` eine Wirkung im üblichen Sinne ist.

#7-28-1-1:Beispiel

`G` wirkt auf sich selbst durch Multiplikation.

#7-28-1:Satz

Die folgenden Aussagen sind äquivalent:

1. `S` ist treuflach lokal von endlichem Typ über `X` und der Morphismus `S\times_X G\to S\times_X S`, `(s, g)\mapsto (s, sg)` ist ein Isomorphismus.
2. Es existiert eine Überdeckung `(U_i\to X)_i` in `X_\fl`, so dass für jedes `i` der Basiswechsel `S_{(U_i)} = S\times_X U_i` mit seiner `G_{(U_i)}`-Wirkung isomorph zu `G_{(U_i)}` ist.

---

* (i)`\implies`(ii): Betrachte die Überdeckung `S\to X`. Dann übersetzt sich (i) in ein Isomorphismus `G_{(S)}\cong S_{(S)}`, der mit der `G_{(S)}`-Wirkung verträglich ist.
* (ii)`\implies`(i): Der Morphismus `S\times_X G\to S\times_X S` aus (i) ist nach treuflachem Abstieg ein Isomorphismus, wenn der Basiswechsel `S_{(U_i)}\times_{U_i} G_{(U_i)}\to S_{(U_i)}\times_{U_i} S_{(U_i)}` für alle `i` ein Isomorphismus ist. Dies ist der Fall, da `S_{(U_i)}\cong G_{(U_i)}` für alle `i`.

#7-29-1:Definition

Ein `S` wie in [~](#7-28-1) heißt *`G`-Hauptfaserbündel* oder *`G`-Torseur*. ~~Torseur~~ ~~Hauptfaserbündel~~

#7-30-1:Definition

Ein `G`-Hauptfaserbündel heißt *trivial*, wenn er isomorph zu `G` ist. ~~trivial|Torseur~~

#7-31:Bemerkung

Per Definition ist jedes Hauptfaserbündel lokal trivial in der flachen Topologie.

#7-32:Lemma

Sei `E` eine Eigenschaft, die treuflachen Abstieg hat, z.B. étale, glatt, eigentlich, normal, regulär. Erfüllt `G` die Eigenschaft `E`, so auch jedes `G`-Torseur `S`.

---

`G` und `S` sind flach lokal isomorph.

#7-33:Korollar

Sei `G` ein étales Gruppenschema. Dann trivialisiert jeder `G`-Torseur `S` bereits auf einer étalen Überdeckung.

---

Nach [~](#7-28-1) (i) trivialisiert `S` über sich selbst und nach [~](#7-32) ist `S` étale.

#7-34:Definition

Sei `S` eine mengenwertige Garbe auf `X_\fl` mit einer `G`-Wirkung. `S` heißt *`G`-Torseurgarbe*, wenn es eine flache Überdeckung `(U_i\to X)_i` gibt, so dass die Einschränkung `S|_{U_i}\in\Sh_\Mengen(U_{i,\fl})` als Garbe mit `G`-Wirkung isomorph zur von `G` dargestellten Garbe ist.

#7-35:Bemerkung

Jeder `G`-Torseur stellt eine `G`-Torseurgarbe dar.

#7-36:Satz

Jede `G`-Torseurgarbe ist durch einen `G`-Torseur dargestellt, wenn eines der folgenden Bedingungen erfüllt ist:

1. `G\to X` ist affin.
2. `\dim(X)\leq 1` und `G` ist glatt und separiert über `X`.
3. `X` ist regulär und `G` ist glatt und eigentlich über `X`.
4. `G\to X` ist lokal von endlichem Typ und hat diskrete Fasern.

---

Siehe *Raymond:* Lecture Notes in Mathematics 119 für (i) - (iii). Für (iv) siehe SGA3 X §5, Lemma 5.4.

#7-36-1-INTRO

Sei nun `G` kommutativ, `S` eine `G`-Torseurgarbe und `(U_i\to X)_i` eine trivialisierende flache Überdeckung. Insbesondere ist `S(U_i)\neq\varnothing` für alle `i`. Wir wählen `s_i\in S(U_i)`. Dann existieren eindeutig bestimmte Elemente `g_{ij}\in G(U_i\times_X U_j)` mit `s_i|_{U_i\times_X U_j}\cdot g_{ij} = s_j|_{U_i\times_X U_j}` für alle `i,j`. Für `i,j,k` gilt auf `U_i\times_X U_j\times_X U_k` stets `s_i g_{ij}g_{jk} = s_k = s_i g_{ik}`, d.h. `(g_{ij})_{i,j}\in\check{Z}{}^1((U_i\to X)_i, G)`.

#7-36-1:Definition

Die Klasse von `(g_{ij})_{i,j}` in `\check{\H}{}^1_\fl(X, G)` wird mit `c(S)` bezeichnet und ist unabhängig von der Wahl der `s_i` und von der Wahl von `(U_i\to X)_i`.

Wir bezeichnen die Menge der `G`-Torseurgarben auf `X` mit `\TSh_G(X_\fl)`.

#7-37:Satz

Die Zuordnung `\TSh_G(X_\fl)\to \H^1_\fl(X, G)`, `S\mapsto c(S)` ist eine Bijektion.

---

Wir konstruieren die inverse Abbildung. Sei `\mathcal{U} = (U_i\to X)_i` eine Überdeckung und `g_{ij}\in\check{C}{}^1(\mathcal{U}, G)` ein `1`-Kozykel. Wir betrachten die folgende Garben:

    \begin{align*}
        \check{\mathcal{C}}{}^0(\mathcal{U}, G),&\quad V\mapsto \check{C}{}^0(\mathcal{U}\times_X V, G) = \prod_i G(U_i\times_X V) \\
        \check{\mathcal{C}}{}^1(\mathcal{U}, G),&\quad V\mapsto \check{C}{}^1(\mathcal{U}\times_X V, G) = \prod_{i,j} G(U_i\times_X U_j\times_X V)
    \end{align*}

und `\d: \check{\mathcal{C}}{}^0(\mathcal{U}, G)\to \check{\mathcal{C}}{}^1(\mathcal{U}, G)`. Für jedes `V` schränkt sich `g_{ij}` zu einem Element `g_{ij}|_V\in\Gamma(V, \check{\mathcal{C}}{}^1(\mathcal{U}, G))` ein. Wir definieren `S` als Urbild von `g_{ij}` unter `\d`, d.h:

    S(V) = \{s\in \Gamma(V, \check{\mathcal{C}}{}^0(\mathcal{U}, G)) \mid \d s = g_{ij}|_V\}

`G(V)` wirkt auf `S(V)` durch `(s, g)\mapsto g^{-1}s`.

#7-38:Satz

Sei `X` ein normales Schema. Dann gilt `\H_\et^1(X, \Z) = 0`.

---

Sei o.B.d.A. `X` zusammenhängend. Sei `\eta\in\Spec(K)` der generische Punkt. Es gilt:

    \H_\et^1(\eta, \Z) = \H^1(G_K, \Z) = \Hom_\stg(G_K, \Z) = 0

Daher genügt es zu zeigen, dass `\H^1_\et(X, \Z)\to \H^1_\et(\eta, \Z)` injektiv ist. Nach [~](#7-29) ist `\H_\et^1(X, \Z)\to \H_\fl^1(X, \Z)` ein Isomorphismus. Nach [~](#7-36) (iv) ist jedes Element in `\H_\fl^1(X, \Z)` durch einen `\Z`-Torseur `S\to X` dargestellt. Nach [~](#7-32) ist `S` étale, also hat `S` die Darstellung:

    S = \coprod_i U_i,\quad U_i\subset X_{L_i},\quad L_i/X \text{ endlich separabel}

Ist nun `S_(\eta)` trivial, so gilt `S_(\eta) \cong\coprod_\Z \eta` und somit `L_i = K` für alle `i`. Da `S\to X` treuflach ist und `\Z` transitiv operiert, ist jede Zusammenhangskomponente von `S` surjektiv über `X`, d.h. `S = \coprod_\Z X`. Somit ist `S` trivial.

#7-38-1:Bemerkung

Der Beweis kann modifiziert werden, so dass man statt Normalität nur die folgende Bedingung braucht: `X` irreduzibel und jedes zusammenhängende étale `U\to X` ist irreduzibel. Diese Eigenschaft heißt *geometrisch einzweigig*. ~~geometrisch einzweigig~~
