#7-INTRO

Zu einem (lokal noetherschen) Schema `X` betrachten wir folgende Siten:

* Der *Zariski-Situs* `X_\Zar`. Objekte sind Zariski-offene Teilmengen von `X` und besitzt surjektive Familien als Überdeckungen. ~~Zariski|Situs~~
* Der *(kleine) étale Situs* `X_\et`. Objekte sind étale Morphismen nach `X` und besitzt surjektive Familien als Überdeckungen. ~~étale|Situs (klein)~~
* Der *große étale Situs* `(\LFT/X)_\et`. Objekte sind Schemata lokal von endlichem Typ über `X` und besitzt surjektive Familien von étalen Morphismen als Überdeckungen. ~~étale|Situs (groß)~~
* Der *flache Situs* `X_\fl`. Objekte sind Schemata lokal von endlichem Typ über `X` und besitzt surjektive Familien von flachen Morphismen als Überdeckungen.

Wir haben Situs-Morphismen:

    X_\fl \to (\LFT/X)_\et \to X_\et \to X_\Zar

Alle diese Siten sind subkanonisch. Garben auf `X_\fl` liefern durch Einschränkung auch Garben auf den anderen Siten.

#7-INTRO-2

Wichtige Garben:

* Konstante Garben: Sei `A` eine abelsche Gruppe. Die konstante Garbe zu `A` ist die Garbifizierung der konstanten Prägarbe zu `A`. Die Garbifizierung hängt vom Situs ab. Die konstante Garbe wird aber dargestellt durch das Gruppenschema `\coprod_A X`. Insbesondere ist die konstante Garbe auf allen oben genannten Siten gleich.

* Die *additive Gruppe* `\mathbb{G}_\text{a}` ist gegeben durch `\mathbb{G}_\text{a}(U) = \Gamma(U,\O_U)`. Sie wird dargestellt durch `\Z[T]\times_\Z X\cong \mathbf{A}^1_X`, ist also eine flache Garbe. ~~additiv|Gruppe~~

* Die *multiplikative Gruppe* `\mathbb{G}_\text{m}` ist gegeben durch `\mathbb{G}_\text{m}(U) = \Gamma(U,\O_U)^\times`. Sie wird dargestellt durch `\Z[T, T^{-1}]\times_\Z X`, ist also eine flache Garbe. ~~multiplikativ|Gruppe~~

* Sei `F\in\Qcoh(\O_X)` ein quasikohärenter `\O_X`-Modul auf `X_\Zar`. Wir definieren die Prägarbe `W(F)` für ein `X`-Schema `U` durch `W(F)(U) = \Gamma(U, F\otimes_{\O_X} \O_U) = \Gamma(U, \pr^\ast F\otimes_{\pr^\ast\O_X}\O_U)`, wobei `\pr: U\to X`.

#7-1:Satz

`W(F)` ist eine Garbe auf `X_\fl`, also insbesondere auch eine Garbe auf `(\LFT/X)_\et`, `X_\et` und `X_\Zar`.

---

Dies ist eine Umformulierung von [~](#5-26).

#7-2:Definition

Sei `K` ein separabel abgeschlossener Körper und `\overline{x}: \Spec(K)\to X` ein geometrischer Punkt. Für eine Prägarbe `F\in\PrSh(X)` von Mengen oder abelsche Gruppen definieren wir den *Halm* von `F` in `\overline{x}` wie folgt: ~~Halm|geometrischer Punkt~~

    F_{\overline{x}} = \colim_U F(U)

wobei der Kolimes über alle étalen Umgebungen `U` von `\overline{x}` geht.

#7-3:Beispiel

Sei `\O_{X,\overline{x}}^\shens` die strikte Henselisierung von `\O_{X,\overline{x}}` bzgl. `k(x)\hookrightarrow K`, wobei `x` das Bild von `\overline{x}` in `X` bezeichnet. `\O_{X,\overline{x}}^\shens` heißt *strikte Henselisierung* von `X` in `\overline{x}`. Dann gilt: ~~strikt|Henselisierung (geom. Punkt)~~

    (\mathbb{G}_\text{a})_\overline{x} = \mathbb{G}_\text{a}(\Spec \O_{X,\overline{x}}^\shens) = \O_{X,\overline{x}}^\shens \\
    (\mathbb{G}_\text{m})_\overline{x} = \mathbb{G}_\text{m}(\Spec \O_{X,\overline{x}}^\shens) = (\O_{X,\overline{x}}^\shens)^\times

Dehnt man eine Prägarbe `F` auf `X_\et` durch die Regel `F(\lim U_i) = \colim F(U_i)` aus, so gilt tautologisch `F_{\overline{x}} = F(\Spec\O_{X,\overline{x}}^\shens)`.

#7-4:Lemma

Eine Garbe `F\in\Sh(X_\et)` ist genau dann gleich Null, wenn `F_{\overline{x}} = 0` für jeden geometrischen Punkt `\overline{x}` von `X` gilt.

---

Sei `F_\overline{x} = 0` für alle geometrischen Punkte `\overline{x}` und `a\in F(U)` für `U\to X` étale. Zu jedem Punkt `u\in U` wählen wir einen geometrischen Punkt `\overline{x}: \Spec(K)\to U` über `u`, den wir über `U\to X` auch als geometrischen Punkt von `X` auffassen. Es gilt:

    F_\overline{x} = \colim_V F(V)

Mit `V` liegt auch `V\times_X U` in diesem System. Somit liegen die `V`, die über `U` faktorisieren final. Wegen `F_\overline{x} = 0` existiert ein `V` mit kommutativem Diagramm

    \xymatrix{
        \Spec(K) \ar[r]\ar[rrd]_{\overline{x}} & V \ar[r] & U \ar[d] \\
        & & X
    }

und `a|_V = 0`. Die wechselnden `V` überdecken `U`, daher folgt `a = 0`.

#7-5:Satz

Ein Schema-Morphismus `f: Y\to X` liefert mit `(U\to X)\mapsto (U\times_X Y\to Y)` einen Situs-Morphismus `f: Y_\et\to X_\et`. Der assoziierte Funktor `f^\ast: \Sh_\Ab(X_\et)\to\Sh_\Ab(Y_\et)` ist exakt.

---

Dies folgt aus [~](#3-28) und dem nachfolgenden Lemma.

#7-6:Lemma

`X_\et` besitzt endliche Limiten.

---

Offenbar hat `X_\et` Faserprodukte. Daher bleibt die Existenz von Differenzkernen zu zeigen. In `\Schemata/X` existieren Differenzkerne: Für `f,g: U\to V` betrachte das Faserprodukt `W` im folgenden kartesischen Quadrat:

    \xymatrix{
        W \ar[r]\ar[d] & U \ar[d]^-{\Gamma_g} \\
        U \ar[r]_-{\Gamma_f} & U\times_X V
    }

Beachte, dass beide Pfeile `W\to U` automatisch dieselben sind. Seien `U,V\in\Kat(X_\et)`. Dann ist `\Gamma_f` ein Morphismus in `X_\et`, also étale nach [~](#6-12). Somit ist `W\to U` als Basiswechsel étale und daher auch `W\to X`.

#7-7:Bemerkung

[~](#7-5) gilt auch für `X_\fl`.

#7-8:Lemma

Sei `\overline{x}: \Spec(K)\to X` ein geometrischer Punkt.

1. Der Funktor `\Sh(X_\et)\to \Ab`, `F\mapsto F_\overline{x}` ist exakt.
2. Für eine Prägarbe `F` ist die natürliche Abbildung `F_\overline{x}\to (F^\#)_\overline{x}` ein Isomorphismus.

---

1. Es gilt:

        \Sh(\Spec(K)_\et) = \PrSh(\Spec(K)_\et) = \Ab

    und `F_\overline{x} = \overline{x}^\ast(F) = \overline{x}_\text{P}^\ast(F)`. [~](#7-5) zeigt die Behauptung.

2. Aussage folgt aus [~](#3-27) mit:

        F^\#_\overline{x} = \overline{x}^\ast(F^\#) = \overline{x}_\text{P}F = \overline{x}^\ast(F) = F_\overline{x}

#7-9:Satz

Eine Folge `0\to F'\to F\to F''\to 0` von Garben abelscher Gruppen auf `X_\et` ist genau dann exakt, wenn für jeden geometrischen Punkt `\overline{x}` von `X` die Folge abelscher Gruppen `0\to F'_\overline{x}\to F_\overline{x}\to F''_\overline{x}\to 0` exakt ist.

---

Die Notwendigkeit folgt aus [~](#7-8) (i). Ist nun die Folge halmweise exakt, so haben die Kohomologieprägarben triviale Halme, also sind die Kohomologiegarben Null nach [~](#7-4).

#7-10:Satz

Sei `\pi: X'\to X` ein endlicher Morphismus. Dann ist `\pi_\ast: \Sh(X'_\et)\to \Sh(X_\et)` exakt.

#7-11:Satz

Betrachte den Situs `X_\mathrm{\acute{E}t}` mit étale Morphismen nach `X` von endlichem Typ als Objekte und surjektive Familien als Überdeckungen. Der Morphismus `\iota: X_\et\to X_\mathrm{\acute{E}t}` induziert eine Kategorienäquivalenz:

    \Sh(X_\et) \overset{\iota_\ast}{\underset{\iota^\ast}{\longleftrightarrow}} \Sh(X_\mathrm{\acute{E}t})

---

Folgt aus dem Vergleichssatz [~](#4-24).

#7-12:Satz

Sei `X` ein Schema, `I` eine gerichtete Indexkategorie und `F: I\to\Sh(X_\et)`, `i\mapsto F_i` ein Funktor. Dann gilt:

1. Für jedes quasikompakte `U\in X_\et` und jedes `q\geq 0` gilt:

        \H_\et^q(U, \colim_{i\in I} F_i) = \colim_{i\in I} \H_\et^q(U, F_i)

2. `\colim_I` vertauscht mit Halmbildung und ist exakt auf Garben.

#7-13-INTRO

Sei `I` eine gerichtete Indexkategorie und `X: I^\op\to \Aff`, `i\mapsto X_i = \Spec(A_i)` ein Funktor in die Kategorie der affinen Schemata. Dann existiert `\lim X = \Spec(\colim A_i)`. Die Konstruktion verklebt sich, d.h. haben wir ein Funktor `X: I^\op\to \Schemata`, so dass für jeden Pfeil `i\to j` in `I` der Schema-Morphismus `X_j\to X_i` affin ist, dann existiert das Schema `X_\infty = \lim X`.

In dieser Situation möge für jedes `i\in I` eine Garbe `F_i\in\Sh(X_{i,\et})` gegeben, so dass für jedes `i\to j` mit `\phi_{ji}: X_j\to X_i` stets `F_j = \phi_{ji}^\ast F_i` gilt. Dann ist `F_\infty = \phi_{\infty,i}^\ast F_i` unabhängig von `i`.

#7-13:Theorem

In der gegebenen Situation gibt es natürliche Isomorphismen `\colim_{i\in I} \H_\et^q(X_i, F_i) = \H_\et^q(X_\infty, F_\infty)`.

---

Siehe *Artin* GT, III Corollary 3.9.

#7-14:Bemerkung

Da wir angenommen haben, dass alle Schemata lokal noethersch sind, müssen wir das hier auch für `X_\infty` fordern.

#7-15:Korollar

Es sei `f: Y\to X` ein Schema-Morphismus, `\overline{x}: \Spec(K)\to X` ein geometrischer Punkt und `F\in\Sh(Y_\et)`. Dann gilt für die Halme der höheren direkten Bildgarben:

    \mathrm{R}^qf_\ast(F)_{\overline{x}} = \H_\et^q(Y\times_X \Spec \O_{X,\overline{x}}^\shens, F)
