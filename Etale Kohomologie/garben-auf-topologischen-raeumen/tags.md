#1-INTRO

Sei `X` ein topologischer Raum.

#1-1:Definition

Eine *Prägarbe (abelscher Gruppen)* ~~Prägarbe~~ `F` besteht aus folgenden Objekten:

* Zu jeder offenen Teilmenge `U\subset X` gibt es eine abelsche Gruppe `F(U)`.
* Zu jedem Paar `V\subset U` offener Teilmengen gibt es einen Homomorphismus `\varrho^U_V:F(U)\to F(V)`, so dass für `W\subset V\subset U` gilt:

      \varrho^U_W = \varrho^V_W\circ \varrho^U_V

*Notation:* Für `V\subset U` und `s\in F(U)` schreiben wir auch `s|_V` für `\varrho^U_V(s)`.

Ein *Morphismus* ~~Morphismus|Prägarben~~ `F\to G` von Prägarben ist eine Familie von Homomorphismus `(F(U)\to G(U))_{U\subset_\text{o} X}`, so dass für `V\subset U` das folgende Diagramm kommutiert:

    \xymatrix{
        F(U) \ar[r] \ar[d]_{\varrho} & G(U) \ar[d]^{\varrho} \\
        F(V) \ar[r]                  & G(V)
    }

Die Prägarben abelscher Gruppen bilden eine abelsche Kategorie `\mathbf{PrSh}(X)`, wobei Kerne, Bilder, Kokerne, usw. schnittweise gebildet werden.

#1-2:Satz

Die abelsche Kategorie `\mathbf{PrSh}(X)` hat genügend viele Injektive.
