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
