#2-44:Satz

Sei `f: T'\to T` ein Siten-Morphismus und `\mathcal{C}` eine kovollständige Kategorie mit Produkten. Dann hat `f^\text{P}_\ast: \PrSh_\mathcal{C}(T')\to \PrSh_\mathcal{C}(T)` einen linksadjungierten Funktor:

    f^\ast_\text{P}: \PrSh_\mathcal{C}(T)\to \PrSh_\mathcal{C}(T')

`f^\ast_\text{P} F` heißt die *direkte Urbildprägarbe* von `F`. ~~direkte Urbildprägarbe~~

---

Für `U'\in\Cat(T')` betrachten wir die Kategorie `I_{U'}` mit den folgenden Daten:

* Objekte sind Tupeln der Form `(U, \phi)` mit `U\in \Cat(T)` und `\phi\in\Mor_{\Cat(T)}(U', f^\sharp U)`.
* Morphismen `(U_1, \phi_1)\to (U_2, \phi_2)` sind Morphismen `\psi: U_2\to U_1` in `\Cat(T)`, so dass das folgende Diagramm in `\Cat(T')` kommutiert:

        \xymatrix{
            U' \ar[r]^{\phi_1} \ar[rd]_{\phi_2} & f^\sharp U_1 \\
                                                & f^\sharp U_2 \ar[u]_{f^\sharp \psi}
        }

Sei `U'\in\Cat(T')` und `F\in\PrSh(T)`. Dann definiert `F` einen Funktor auf `I_{U'}` und wir setzen:

    f^\ast_\text{P} F(U') = \colim_{(U,\phi)\in I_{U'}} F(U)

Zu einem Pfeil `\varepsilon: U'\to V'` in `\Cat(T')` erhalten wir einen Funktor `I_{V'}\to I_{U'}`, `(V, \phi)\mapsto(V, \phi\circ\varepsilon)` und somit einen Morphismus:

    f^\ast_\text{P} F(V') = \colim_{(V, \phi)\in I_{V'}} F(V) \to f^\ast_\text{P} F(U') = \colim_{(U, \phi)\in I_{U'}} F(U)

#2-46:Bemerkung

Für eine Garbe `F` ist `f^\ast_\text{P} F` im Allgemeinen keine Garbe.

#2-47:Korollar

Ist `\mathcal{C}` eine abelsche Kategorie, so ist `f^\text{P}_\ast` linksexakt und `f^\ast_\text{P}` rechtsexakt. Ist `f^\ast_\text{P}` exakt, so überführt `f^\text{P}_\ast` Injektive in Injektive.
