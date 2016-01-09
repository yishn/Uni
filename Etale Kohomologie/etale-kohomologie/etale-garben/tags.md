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

    (\mathbb{G}_\text{a})_\overline{x} = \mathbb{G}_\text{a}(\Spec \O_{X,\overline{x}}^\shens) = \O_{X,\overline{x}}^\shens
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
