#6-9-1:Definition

Ein Morphismus `f: Y\to X` heißt *étale*, wenn `f` lokal von endlichem Typ, unverzweigt und flach ist. ~~étale|Schema-Morphismus~~

#6-10:Lemma

1. Jede offene Immersion ist étale.
2. Komposition étaler Morphismen ist étale.
3. Étale Morphismen sind stabil unter Basiswechsel.

---

Dies folgt aus den entsprechenden Eigenschaften für unverzweigte und flache Morphismen.

#6-11:Lemma

Eine abgeschlossene Immersion ist genau dann étale, wenn sie eine offene Immersion ist.

---

Sei `f: Y\to X` eine flache abgeschlossene Immersion. Da `f` von endlichem Typ ist, ist `f(Y)` offen nach [~](#5-15). Für `y\in Y` ist dann `\O_{X,f(y)}\to \O_{Y,y}` ein surjektiver, flacher Homomorphismus lokaler Ringe, also injektiv und somit bijektiv.

#6-12:Lemma

Es seien `f: X\to S` und `g: Y\to X` Schema-Morphismen. Ist `f\circ g` étale und `f` unverzweigt, so ist `g` étale.

---

Wir betrachten die kartesischen Quadrate:

    \xymatrix{
        Y\times_S X \ar[r]^-{\pr_1} \ar[d]_{\pr_2}  & Y \ar[d]^{f\circ g} \\
        X \ar[r]_f & S
    }
    \qquad
    \xymatrix{
        Y \ar[r]^-{\Gamma_g} \ar[d]_g & Y\times_S X \ar[d]^{(g,\id)} \\
        X \ar[r]_-{\Delta_f} & X\times_S X
    }

`\pr_2` ist étale als Basiswechsel von `f\circ g` und `\Gamma_g` eine offene Immersion als Basiswechsel von `\Delta_f`, insbesondere étale nach [~](#6-10). Somit ist `g = \pr_2\circ\Gamma_g` étale.

#6-13:Lemma

Sei `X` ein zusammenhängendes Schema und `f: Y\to X` étale bzw. étale und separiert. Dann ist jeder Schnitt `s: X\to Y` zu `f` eine offene Immersion bzw. eine offene und abgeschlossene Immersion.

Die Menge solcher Schnitte steht in Bijektion zu den offenen bzw. offenen und abgeschlossenen Teilmengen von `Y`, die durch `f` isomorph auf `X` aufgebildet werden. Ist `f` also separiert, so ist ein solcher Schnitt durch eine Zusammenhangskomponente von `Y`, also schon durch das Bild eines einzelnen Punktes eindeutig bestimmt.

---

Es gilt `f\circ s = \id`, daher ist `s` étale nach [~](#6-12). Betrachte das kartesische Quadrat:

    \xymatrix{
        X \ar[r]^-{\Gamma_s} \ar[d]_s & X\times_X Y \ar[d]_{(s, \id)} \ar[r]^-{\sim} & Y \ar[ld]^-{(sf,\id)} \\
        Y \ar[r]_-{\Delta_f} & Y\times_X Y
    }

Da `f` unverzweigt ist, ist `\Delta_f` und somit auch `\Gamma_s = s` eine offene Immersion. Ist `f` separiert, so ist `\Delta_f` und damit auch `\Gamma_s = s` eine abgeschlossene Immersion.

#6-14:Korollar

Sei `Y'` ein zusammenhängendes `X`-Schema und `Y` ein étales, separiertes `X`-Schema. Es seien `f,g: Y'\to Y` zwei `X`-Morphismen. Angenommen, es gibt einen Punkt `y'\in Y'`mit `y = f(y') = g(y')` und gleichen induzierten Abbildungen `f,g: k(y)\to k(y')`. Dann gilt `f = g`.

---

Die Graphen `\Gamma_f,\Gamma_g: Y'\to Y'\times_X Y` sind Schnitte zur Projektion `Y'\times_X Y\to Y'`, die als Basiswechsel von `Y\to X` étale und separiert sind. Nach Voraussetzung induzieren `f,g` dieselbe Abbildungen:

    \xymatrix{
        \Spec k(y') \ar@<-.5ex>[r]_-{(\id, g)} \ar@<.5ex>[r]^-{(\id, f)} & \Spec k(y')\times_{k(x)} \Spec k(y)
    }

Somit gilt `\Gamma_f(y') = \Gamma_g(y')` und nach [~](#6-13) folgt `\Gamma_f = \Gamma_g`, also `f = \pr_2\circ\Gamma_f = \pr_2\circ\Gamma_g = g`.
