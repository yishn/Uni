#1-17:Definition

Wir betrachten den *Schnittfunktor* ~~Schnittfunktor~~ `\Gamma(X, -): \Sh(X)\to \Ab`, `F\mapsto F(X)`. Da `i` linksexakt ist und `F\mapsto F(X)` auf Prägarben exakt ist, ist `\Gamma(X, -)` linksexakt.

Sei `F` eine Garbe. Wir definieren die `i`-te *Kohomologie* ~~Kohomologie|Garbe~~ von `X` mit Werten in `F` als:

    \H^i(X, F) = \mathrm{R}^i\Gamma(X, -)(F)

Für eine abelsche Gruppe `A` schreibt man typischerweise `\H^i(X, A)` für `\H^i(X, \underline{A})`. Dies ist für viele topologische Räume (wie z.B. für Mannigfaltigkeiten oder CW-Komplexe) eine brauchbare Kohomologietheorie und stimmt mit der singulären Kohomologie überein.

#1-18:Definition

Für `U\opensubset X` definiert man die Prägarbe `\Z^\text{P}_U` durch:

    \Z^\text{P}_U(V) = \begin{cases}
        \Z, & V\subset U \\
        0, & \text{sonst}
    \end{cases}

Es gilt `\Hom_{\PrSh(X)}(\Z^\text{P}_U, G) = G(U)`. Insbesondere ist `\Z^\text{P}_X = \underline{\Z}^\text{P}`.

#1-19:Lemma

Für eine injektive Prägarbe `I` und jede offene Teilmenge `U\opensubset X` ist `I(X)\to I(U)` surjektiv.

---

Die kanonische Abbildung `\Z^\text{P}_U\to \Z^\text{P}_X` ist injektiv. Da `I` injektiv ist, ist folgende Abbildung surjektiv:

    I(X) = \Hom(\Z^\text{P}_X, I) \to \Hom(\Z^\text{P}_U, I) = I(U)

#1-20:Definition

Eine Garbe `F` heißt *welk*, ~~welk|Garbe~~ wenn für jede offene Teilmenge `U\opensubset X` die Einschränkungsabbildung `F(X)\to F(U)` surjektiv ist.

#1-21:Bemerkung

* Injektive Garben sind welk nach [Lemma 1.19](#1-19).
* Ist `F` welk, so ist für jedes `U\opensubset X` die Einschränkung `F|_U` eine welke Garbe auf `U`.
