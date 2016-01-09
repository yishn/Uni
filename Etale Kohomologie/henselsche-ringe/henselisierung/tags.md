#6-44:Satz

*(Henselisierung)* ~~Henselisierung~~ Der Vergissfunktor `\{\text{Henselsche lokale Ringe}\}\to \{\text{Lokale Ringe}\}` besitzt einen Linksadjungierten `A\mapsto A^\hens`.

---

Sei `(A,\mathfrak{m})` ein lokaler Ring. Wir betrachten die Kategorie `\mathcal{K}` mit Objekten `(B, \mathfrak{q}, f)`, so dass:

* `f: A\to B` ist ein étaler Ringhomomorphismus.
* `\Spec(B)` ist zusammenhängend.
* `\mathfrak{q}\subset B` ist ein Primideal.
* Die induzierte Inklusion `k(\mathfrak{m})\to k(\mathfrak{q})` ist ein Isomorphismus.
* `f^{-1}(\mathfrak{q}) = \mathfrak{m}`

Nach [~](#6-14) ist `\mathcal{K}` gerichtet und wir setzen `A^\hens = \colim_{(B,\mathfrak{q})\in \mathcal{K}} B`. Offensichtlich ist `A^\hens` lokal mit Maximalideal `\mathfrak{m}^\hens` über `\mathfrak{m}` mit Isomorphismus `A/\mathfrak{m} \stackrel{\sim}{\to} A^\hens/\mathfrak{m}^\hens`.

Die Universaleigenschaft folgt aus [~](#6-38) (iv): Ist `C` henselsch und `A\to C` ein Homomorphismus, so betrachte das kartesische Quadrat:

    \xymatrix{
        A \ar[r] \ar[d] & B \ar[d] \\
        C \ar[r] & B\otimes_A C
    }

Da `A\to B` étale ist, ist der Basiswechsel `C\to B\otimes_A C` ebenfalls étale. Nach [~](#6-38) (iv) existiert ein Schnitt `B\otimes_A C\to C`.

Zu zeigen ist noch, dass `A^\hens` henselsch ist. Dazu sei `A^\hens\to C` étale mit `k(\mathfrak{m}^\hens)\stackrel{\sim}{\to} k(\mathfrak{p})` und o.B.d.A. `C` standard-étale. Dann existiert ein `(B,\mathfrak{q})\in\mathcal{K}` und `(B,\mathfrak{q})\to (C_0,\mathfrak{p}_0)` étale mit `k(\mathfrak{q})\stackrel{\sim}{\to}k(\mathfrak{p}_0)` und `(C,\mathfrak{p}) = (A^\hens,\mathfrak{m}^\hens)\otimes_{(B,\mathfrak{q})}(C_0,\mathfrak{p}_0)`. Nun liefert der kanonische Homomorphismus `(C_0,\mathfrak{p}_0)\to (A^\hens,\mathfrak{m}^\hens)` einen Schnitt `(C,\mathfrak{p})\to (A^\hens,\mathfrak{m}^\hens)`. Nach [~](#6-38) (iv) ist `A^\hens` henselsch.

#6-45:Definition

Sei `(A,\mathfrak{m})` ein lokaler Ring und `K` ein separabel abgeschlossener Körper zusammen mit einer Einbettung `A/\mathfrak{m}\hookrightarrow K`. Geometrisch bedeutet dies einen Morphismus `\Spec(K)\to\Spec(A)` mit Bild `\mathfrak{m}`, d.h. ein *geometrischer Punkt* von `\Spec(A)` über `\mathfrak{m}`. ~~geometrisch|Punkt~~

Die *strikte Henselisierung* `(A^\shens, \mathfrak{m}^\shens)` von `(A,\mathfrak{m})` bzgl. `A/\mathfrak{m}\hookrightarrow K` ist definiert als

    A^\shens = \colim (B,\mathfrak{q},i)

wobei der Kolimes über alle étalen `f: A\to B` mit `\Spec(B)` zusammenhängend, `f^{-1}(\mathfrak{q}) = \mathfrak{m}` und `i: k(\mathfrak{q})\hookrightarrow K` eine `A/\mathfrak{m}`-Einbettung geht.

Die Indexkategorie ist gerichtet, `(A^\shens, \mathfrak{m}^\shens)` ein henselscher lokaler Ring und `A^\shens/\mathfrak{m}^\shens` ist der separable Abschluss von `A/\mathfrak{m}` in `K`. ~~strikt|Henselisierung~~

#6-45-1:Sprechweise

Sei `X` ein Schema, `K` ein Körper und `x: \Spec(K)\to X` ein `K`-wertiger Punkt. Eine *étale Umgebung von `x`* ist ein étaler, separierter Morphismus `Y\to X` mit `Y` zusammenhängend und einem kommutativen Diagramm: ~~étale|Umgebung~~

    \xymatrix{
        \Spec(K) \ar[r] \ar[rd]_x & Y \ar[d] \\
        & X
    }

Die étalen Umgebungen von `x` bilden eine gerichtete Menge. Für einen lokalen Ring `(A,\mathfrak{m})` ist die Henselisierung `A^\hens` der Limes über alle étalen Umgebungen von `A\to A/\mathfrak{m}`.

#6-46:Lemma

Sei `C` der Kolimes `\colim B` über eine Teilmenge der étalen Umgebungen von `A\to A/\mathfrak{m}`. Ist `C` henselsch, so ist `C\cong A^\hens` kanonisch isomorph.

---

Wir erhalten einen kanonischen Homomorphismus `C\to A^\hens`. Da `C` henselsch ist, gibt es einen kanonischen `A^\hens\to C`.

#6-47:Satz

Sei `A` ein lokaler Ring und `I\subset A` ein Ideal. Dann gilt:

    (A/I)^\hens \cong A^\hens/IA^\hens

---

`A^\hens/IA^\hens` ist Kolimes étaler Umgebungen von `A\to (A/I)/(\mathfrak{m}/I)` und selbst henselsch nach [~](#6-39). Das Ergebnis folgt aus [~](#6-46).

#6-48-INTRO

Sei nun `(A,\mathfrak{m})` ein ganzabgeschlossener, lokaler Ring und `K = \Quot(A)`. Sei `\overline{K}` ein separabler Abschluss von `K`, `\overline{A}` der Ganzabschluss von `A` in `\overline{K}` und `\overline{\mathfrak{m}}\subset\overline{A}` ein Maximalideal über `\mathfrak{m}`. Sei `Z_{\overline{\mathfrak{m}}}\subset \Gal(\overline{K}/K)` die Zerlegungsgruppe von `\overline{\mathfrak{m}}`, `K' = \overline{K}^{Z_{\overline{\mathfrak{m}}}}` und `A' = A_{K'}` der Ganzabschluss von `A` in `K'`, `\mathfrak{m}' = \overline{\mathfrak{m}}\cap A'`.

#6-48:Satz

Die Lokalisierung `A'_{\mathfrak{m}'}` ist die Henselisierung von `(A,\mathfrak{m})`.

#6-49:Satz

Die Lokalisierung von `\overline{A}^{T_{\overline{\mathfrak{m}}}}` bei `\overline{\mathfrak{m}}\cap \overline{A}^{T_{\overline{\mathfrak{m}}}}` ist die strikte Henselisierung von `A` bzgl. `A/\mathfrak{m}\subset\overline{A}/\overline{\mathfrak{m}}`.

#6-50:Satz

Der natürliche Homomorphismus `A\to A^\hens` ist treuflach, also insbesondere injektiv. Es ist `A^\hens` noethersch, reduziert, normal bzw. regulär, wenn `A` dies ist.

#6-51:Bemerkung

Die Aussagen von [~](#6-50) gelten auch für `A^\shens` anstelle von `A^\hens`.

#6-52:Bemerkung

Die Ganzabgeschlossenheit überträgt sich nicht von `A` auf `A^\hens`.

#6-53:Satz

Sei `A` exzellent, z.B. als Lokalisierung einer endlich erzeugten Algebra über `\Z` oder einem Körper. Dann ist `A^\hens` die Lokalisierung des Ganzabschlusses `A'` von `A` in `\widehat{A}` bei `\mathfrak{m}' = \widehat{\mathfrak{m}}\cap A'`.
