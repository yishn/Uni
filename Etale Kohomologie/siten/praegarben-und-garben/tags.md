#2-5:Definition

Sei `T` ein Situs und `\mathcal{C}` eine Kategorie mit Produkten. Eine *Prägarbe* ~~Prägarbe|Situs~~ auf `T` mit Werten in `\mathcal{C}` ist ein kontravarianter Funktor `F: \Cat(T)^\op \to\mathcal{C}`. Eine *Garbe* ~~Garbe|Situs~~ ist eine Prägarbe mit der Eigenschaft, dass für jede Überdeckung `(U_i\to U)_i\in\Cov(T)` die folgende Folge ein Differenzkern ist:

    \equalizer{F(U)}{\prod_i^\phantom{i} F(U_i)}{\prod_{i, j}^\phantom{i} F(U_i\times_U U_j)}

#2-6:Bemerkung

Die Kategorie `\PrSh_\mathcal{C}(T)` der `\mathcal{C}`-wertigen Prägarben auf `T` hängt nur von `\Cat(T)` und nicht von `\Cov(T)` ab.

#2-7:Bemerkung

Ist `(F_i)_{i\in I}` eine Familie von Garben, so ist die Produktprägarbe wieder eine Garbe:

    \Big(\prod_{i\in I} F_i\Big)(U) = \prod_{i\in I} F_i(U),\quad U\opensubset X

#2-8:Bemerkung

Eine Prägarbe abelscher Gruppen ist genau dann eine Garbe, wenn sie als Prägarbe von Mengen eine Garbe ist. Prägarben bzw. Garben abelscher Gruppen sind die Gruppenobjekte in der Kategorie der Prägarben bzw. Garben von Mengen.

#2-9:Definition

Jedes Objekt `X` in `\Cat(T)` definiert eine mengenwertige Prägarbe:

    F_X(U) = \Mor_{\Cat(T)}(U, X),\quad U\opensubset X

Man nennt eine Prägarbe *darstellbar* durch `X`, wenn `F\cong F_X`. ~~darstellbar|Prägarbe~~

#2-10:Lemma

*(Yoneda-Lemma)* Die Zuordnung `X\mapsto F_X` liefert eine volltreue Einbettung: ~~Yoneda-Lemma~~

    \Cat(T)\hookrightarrow\PrSh_\Mengen(T)

#2-11:Bemerkung

Die Prägarbe `F_X` aus [Definition 2.9](#2-9) ist nicht notwendigerweise eine Garbe. Ist `F_X` für jedes `X` eine Garbe, so nennt man den Situs *subkanonisch*. ~~subkanonisch|Situs~~

#2-12:Beispiel

Der Situs `X_\text{top}` aus [Beispiel 2.2](#2-2) ist subkanonisch: Garben auf `X_\text{top}` sind gerade die gewöhnlichen Garben auf `X` und jedes `U\opensubset X` stellt eine Garbe dar nach [Beispiel 1.4](#1-4).

#2-13:Beispiel

Der Situs `T_G` aus [Beispiel 2.3](#2-3) ist subkanonisch. Ferner sind in `T_G` alle Garben darstellbar, d.h. die Einbettung aus dem [Yoneda-Lemma](#2-10) liefert eine Kategorienäquivalenz:

    \GMengen \stackrel{\sim}{\longrightarrow} \Sh_\Mengen(T_G)

---

Die erste Aussage kann man leicht einsehen. Für die zweite Aussage betrachte die Gruppe `G` mit der Linksmultiplikation als Objekt in `\GMengen`. Für eine Garbe `F` auf `T_G` machen wir die Menge `F(G)` zu einer Links-`G`-Menge wie folgt:

> Sei `g\in G`. Dann ist die Rechtsmultiplikation `\cdot g: G\to G,\ g'\mapsto g' g` eine Abbildung von `G`-Mengen. Da `F` eine Prägarbe ist, erhalten wir die Abbildung `F(\cdot g): F(G)\to F(G)`.

Wir zeigen nun, dass `F(G)` die Garbe `F` darstellt, d.h. wir konstruieren natürliche Isomorphismen `F(S)\to \Abb_G(S, F(G))` für jede `G`-Menge `S`. Wir betrachten eine Kopie `G^{(s)}` von `G` für jedes `s\in S` und die Überdeckung `(\phi_s: G^{(s)}\to S)_{s\in S}\in\Cov(T_G)` mit `\phi_s(g) = gs`. Die Garbeneigenschaft liefert die exakte Folge:

    \equalizer{F(S)}{\prod_{s\in S}^\phantom{i} F(G^{(s)})}{\prod_{s, t\in S}^\phantom{i} F(G^{(s)}\times_S G^{(t)})}

Wir identifizieren den mittleren Term mit `\Abb(S, F(G))` und zeigen, dass der Differenzkern die Teilmenge `\Abb_G(S, F(G))` ist.

Für `s, t\in S` setzen wir `G_{s, t} = \{h\in G\mid hs = t\}`. Wir haben einen Isomorphismus:

    \bigsqcup_{h\in G_{s, t}} G^{(h)} \stackrel{\sim}{\longrightarrow} G^{(s)}\times_S G^{(t)} = \{(g_1, g_2)\in G\times G\mid g_1s = g_2t \}

induziert von den Abbildungen `G^{(h)}\to G^{(s)}\times_S G^{(t)},\ g\mapsto (gh, g),\ h\in G_{s, t}`. Es gilt:

* Die Komposition `G^{(h)}\to G^{(s)}\times_S G^{(t)}\to G^{(s)}` ist die Abbildung `\cdot h: G\to G,\ g\mapsto gh`.
* Die Komposition `G^{(h)}\to G^{(s)}\times_S G^{(t)}\to G^{(t)}` ist die Identitätsabbildung.

Das Element `(x_s)_s \in \prod_{s\in S} F(G^{(s)})` liegt daher genau dann im Differenzkern, wenn `F(\cdot h)(x_s) = x_{hs}` für alle `h\in G` gilt. Somit ist der Differenzkern gerade `\Abb_G(S, F(G))`.

#2-14:Beispiel

Sei `G` eine proendliche Gruppe. Der Situs `T_G` aus [Beispiel 2.4](#2-4) ist subkanonisch. Man erhält eine Kategorienäquivalenz:

    \textbf{diskrete }\GMengen \stackrel{\sim}{\to} \Sh_\Mengen(T_G)

Für eine Garbe `F` wird `F(G)` durch die diskreten `G`-Mengen `\colim_{H\opennormal G}F(G/H)` und die `G`-Wirkung auf `F(G/H)` wie in [Beispiel 2.13](#2-13) zu einer diskreten `G`-Menge. Durch Übergang zu Gruppenobjekten erhalten wir die Kategorienäquivalenz:

    \textbf{diskrete }\GMod \stackrel{\sim}{\to} \Sh_\Ab(T_G)
