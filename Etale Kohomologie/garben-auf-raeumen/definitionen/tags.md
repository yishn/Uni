#1-1-INTRO

Sei `X` ein topologischer Raum.

#1-1:Definition

Eine *Prägarbe (abelscher Gruppen)* ~~Prägarbe|topologischer Raum~~ `F` besteht aus folgenden Objekten:

*   Zu jeder offenen Teilmenge `U\opensubset X` gibt es eine abelsche Gruppe `F(U)`.
*   Zu jedem Paar `V\subset U` offener Teilmengen gibt es einen Homomorphismus `\varrho^U_V:F(U)\to F(V)`, so dass für `W\subset V\subset U` gilt:

        \varrho^U_W = \varrho^V_W\circ \varrho^U_V

*Notation:* Für `V\subset U` und `s\in F(U)` schreiben wir auch `s|_V` für `\varrho^U_V(s)`.

Ein *Morphismus* ~~Morphismus|Prägarben~~ ~~Homomorphismus|Prägarben~~ `F\to G` von Prägarben ist eine Familie von Homomorphismus `(F(U)\to G(U))_{U\opensubset X}`, so dass für `V\subset U` das folgende Diagramm kommutiert:

    \xymatrix{
        F(U) \ar[r] \ar[d]_{\varrho} & G(U) \ar[d]^{\varrho} \\
        F(V) \ar[r]                  & G(V)
    }

Die Prägarben abelscher Gruppen bilden eine abelsche Kategorie `\PrSh(X)`, wobei Kerne, Bilder, Kokerne, usw. schnittweise gebildet werden.

#1-2:Satz

Die abelsche Kategorie `\PrSh(X)` hat genügend viele Injektive.

#1-3:Beispiel

Sei `A` eine abelsche Gruppe. Dann definiert `F(U)=A` für alle `U\opensubset X` und der Identität als Einschränkungsabbildungen eine Prägarbe, die sog. *konstante Prägarbe* ~~konstant|Prägarbe~~ `\underline{A}^\text{P}`. Für jede Prägarbe `G` gilt:

    \Hom_{\PrSh(X)}(\underline{A}^\text{P}, G) = \Hom_\Ab(A, G(X))

#1-4:Beispiel

Ist `T` ein weiterer topologischer Raum, so definiert `F(U) = \Abb_\stg(U, T)` eine Prägarbe von Mengen (bzw. abelscher Gruppen, wenn `T` eine abelsche topologische Gruppe ist).

#1-5:Beispiel

Ist `X` eine glatte Mannigfaltigkeit, so ist die Prägarbe `\mathcal{C}^\infty` gegeben durch:

    \mathcal{C}^\infty(U) = \{\text{unendlich oft reell differenzierbare Funktion } U\to\R \}

Analog für komplexe Mannigfaltigkeiten `X` und holomorphe Funktionen.

#1-6:Definition

Eine Prägarbe `F` heißt *Garbe* ~~Garbe|topologischer Raum~~, wenn sie die folgende Garbeneigenschaft erfüllt:

> Ist `U\opensubset X` und `(U_i)_{i\in I}` eine offene Überdeckung von `U` mit `s_i\in F(U_i)` gegeben, so existiert genau dann ein `s\in F(U)` mit `s|_{U_i} = s_i` für alle `i`, wenn für beliebige `i,j\in I` stets `s_i|_{U_i\cap U_j} = s_j|_{U_i\cap U_j}` gilt und dieses `s` eindeutig ist.

Die Prägarben in [~](#1-4) und [~](#1-5) sind Garben. Man schreibt die Garbeneigenschaft auch kategoriell als Differenzkern:

    \equalizer{F(U)}{\prod_i^\phantom{i} F(U_i)}{\prod^\phantom{i}_{i, j} F(U_i\cap U_j)}

Extrem formal schließt man durch die Betrachtung der leeren Überdeckung der leeren Menge, dass `F(\varnothing) = 0` für jede Garbe `F` gilt.

#1-6-1

Morphismen zwischen Garben sind Morphismen von Prägarben. ~~Morphismus|Garben~~ ~~Homomorphismus|Garben~~ Wir erhalten eine volltreue Kategorieneinbettung `\iota:\Sh(X)\hookrightarrow \PrSh(X)`.

Die direkte Prägarbensumme zweier Garben ist wieder eine Garbe, also ist `\Sh(X)` eine additive Kategorie und `\iota` ein additiver Funktor.

#1-7:Definition

Für einen Punkt `x\in X` und eine Prägarbe `F` definieren wir:

    F_x = \colim_{\substack{U\opensubset X \\ x\in U}} F(U)

`F_x` heißt *Halm* ~~Halm~~ von `F` in `x`. Für `s\in F(U)` heißt das Bild `s_x` von `s` in `F_x` der *Keim* ~~Keim~~ von `s`.

#1-8:Lemma

Ist `F` eine Garbe und `s\in F(U)`, so ist genau dann `s=0`, wenn `s_x=0` für alle `x\in U`. Insbesondere ist eine Garbe genau dann Null, wenn alle ihre Halme Null sind.

#1-9:Korollar

Ein Homomorphismus `f: F\to G` einer Prägarbe `F` in eine Garbe `G` ist genau dann gleich Null, wenn `f_x: F_x\to G_x` für alle `x\in X` die Nullabbildung ist.

#1-10:Korollar

Sei `f:F\to G` ein Morphismus von Garben. Dann sind äquivalent:

1.  `f` ist ein Monomorphismus in `\Sh(X)`
2.  Für jedes `U` ist `f(U):F(U)\to G(U)` injektiv, d.h. `f` ist ein Monomorphismus in `\PrSh(X)`.
3.  `f_x: F_x\to G_x` ist injektiv für alle `x\in X`.

---

Offensichtlich ist der Prägarbenkern `\ker(f)` eine Garbe mit Halmen `\ker(f)_x = \ker(f_x)`. Die Injektivität von `f` ist somit äquivalent zu `\ker(f) = 0` und nach [~](#1-8) zu (ii) und (iii).

#1-11:Lemma

Für eine Prägarbe `P` sind äquivalent:

1.  Für alle `x\in X` gilt `P_x=0`.
2.  Jeder Homomorphismus `f:P\to F` in eine Garbe `F` ist Null.

---

(i)`\implies`(ii) folgt aus [~](#1-9). Sei nun umgekehrt `x\in X` mit `P_x\neq 0`. Wir betrachten die Prägarbe `F` gegeben durch:

    F(U) = \begin{cases}
        0, & x\not\in U\\
        P_x, & \text{sonst}
    \end{cases}

Diese ist sogar eine Garbe, die sog. *Wolkenkratzergarbe* ~~Wolkenkratzergarbe~~ zur Gruppe `P_x` im Punkt `x`. Der Halm von `F` in `x` ist gerade `P_x`. Nun definieren wir uns `f:P\to F` als `0` auf `P(U)` für `x\not\in U` und als die natürliche Abbildung `P(U)\to P_x` für `x\in U`. Die von `f` auf den Halm bei `x` induzierte Abbildung ist die Identität auf `P_x\neq 0`, weshalb `f` nach [~](#1-9) nicht die Nullabbildung ist.

#1-12:Korollar

Sei `f:F\to G` ein Garben-Morphismus. Dann sind äquivalent:

1.  `f` ist ein Epimorphismus in `\Sh(X)`.
2.  Zu jedem `U` und `s\in G(U)` existiert eine Überdeckung `(U_i)_{i\in I}` von `U` und Elemente `t_i\in F(U_i)` mit `f(t_i) = s|_{U_i}` für alle `i\in I`.
3.  `f_x: F_x\to G_x` ist surjektiv für alle `x\in X`.

#1-12-1

Die *konstante Garbe* ~~konstant|Garbe~~ `\underline{A}` zu einer abelschen Gruppe `A` ist definiert durch:

    \underline{A}(U) = \Hom_\stg(U, A)

wobei wir `A` als diskrete topologische Gruppe auffassen, d.h. `\Hom_\stg(U, A)` besteht aus den lokal konstanten Funktionen auf `U`, während `\underline{A}^\text{P}(U)` aus den konstanten Funktionen auf `U` besteht. Es gibt einen natürlichen Homomorphismus `\underline{A}^\text{P} \to \underline{A}`. Dieser ist universell für Homomorphismen in Garben, siehe [~](#1-13).

#1-13:Lemma

Ist `G` eine Garbe, so gilt:

    \Hom_{\PrSh(X)}(\underline{A}^\text{P}, G) = \Hom_{\Sh(X)}(\underline{A}, G)

---

Die kanonische Abbildung `\underline{A}^\text{P} \to \underline{A}` gibt uns durch Zurückziehen eine Abbildung `\Hom_{\Sh(X)}(\underline{A}, G) \to \Hom_{\PrSh(X)}(\underline{A}^\text{P}, G)`. Wir konstruieren die inverse Abbildung.

Es gilt `\Hom_{\PrSh(X)}(\underline{A}^\text{P}, G) = \Hom_\Ab(A, G(X))`. Sei nun `\phi: A\to G(X)` gegeben. Um einen Garben-Morphismus `\underline{A}\to G` zu konstruieren, müssen wir für jedes `U` kompatible Zuordnungen `\{f: U\to A \text{ lokal konstant}\} \to G(U)` finden.

Sei `f: U\to A` eine lokal konstante Funktion. Nun ist `U` die disjunkte Vereinigung seiner offenen Teilmengen `f^{-1}(a),\ a\in A`. Die Garbeneigenschaft von `G` liefert:

    G(U) = \prod_{a\in A} G(f^{-1}(a))

Wir ordnen `f` das Element `(\phi(a)|_{f^{-1}(a)})_{a\in A}\in G(U)` zu. Die Abbildungen sind zueinander invers.

#1-14:Satz

Es gibt einen zu `\iota: \Sh(X)\to \PrSh(X)` linksadjugierten Funktor `\PrSh(X)\to \Sh(x),\ F\mapsto F^\sim`, ~~Garbifizierung|topologischer Raum~~ d.h. für jede Prägarbe `F` und Garbe `G` gilt:

    \Hom_{\PrSh(X)}(F, G) = \Hom_{\Sh(X)}(F^\sim, G)

Es ist `\iota\circ{\sim}` linksexakt. Da `\iota` eine volltreue Einbettung ist, folgt rein formal `{\sim}\circ \iota = \id`.

#1-15:Korollar

`\Sh(X)` ist eine abelsche Kategorie. `\iota` ist linksexakt und der Garbifizierungsfunktor `\sim` ist exakt. Eine injektive Garbe ist injektiv als Prägarbe.

---

Ist `f: F\to G` ein Garben-Morphismus, so ist die Prägarbe `\ker(f)` wieder eine Garbe. Für den Prägarbenkokern `\coker^\text{P}(f)` ist dies falsch, aber `(\coker^\text{P}(f))^\sim` hat die Universaleigenschaft des Kokerns in `\Sh(X)`. Alle Axiome einer abelschen Kategorie ergeben sich nun formal. Der Garbifizierungsfunktor `\sim` ist exakt, weshalb `\iota` Injektive in Injektive überführt.

#1-16:Lemma

`\Sh(X)` hat genügend viele Injektive.
