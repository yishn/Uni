#2-57:Definition

Es seien `F, G\in\PrSh_\mathcal{C}(T)`. Die Zuordnung

    U\mapsto \Hom_{\PrSh_\mathcal{C}(T|_U)} (F|_U, G|_U)

definiert die *Hom-Prägarbe* oder auch *inneres Hom* genannt. ~~Hom-Prägarbe~~ ~~inneres Hom~~ Sie wird mit `\Hhom(F, G)\in\PrSh_\Mengen(T)` bezeichnet.

Ist `\mathcal{C}` eine abelsche Kategorie, so ist `\Hhom(F, G)` in natürlicher Weise eine Prägarbe abelscher Gruppen.

#2-58:Lemma

Ist `G` eine Garbe, so auch `\Hhom(F, G)` für jede Prägarbe `F`.

#2-59:Lemma

Ist `\mathcal{A}` eine abelsche Kategorie, so ist der Funktor `\Hhom(-, G): \PrSh_\Ab(T)\to \PrSh_\Ab(T)` linksexakt.

#2-60:Lemma

Ist `G\in\PrSh_\Ab(T)` ein injektives Objekt, so ist `\Hhom(-, G): \PrSh_\Ab(T)\to \PrSh_\Ab(T)` exakt.

---

Nach [~](#2-52) ist `G|_U` injektiv für jedes `U\in\Cat(T)`. Dies zeigt die Exaktheit von `\Hom_{\PrSh(T|_U)}(-, G|_U)`. Die Aussage folgt.

#2-61:Definition

Das *Tensorprodukt* ~~Tensorprodukt|Prägarbe~~ zweier Prägarben `F, G\in\PrSh_\Ab(T)` ist definiert durch:

    (F\otimes^\text{P} G)(U) = F(U)\otimes G(U)

#2-62:Satz

Tensorprodukt und inneres Hom sind adjungiert, d.h:

    \Hom_{\PrSh(T)} (F\otimes^\text{P} G, H) \cong \Hom_{\PrSh(T)}(F, \Hhom(G, H))

Insbesondere ist `-\otimes^\text{P} G` rechtsexakt und `\Hhom(G, -)` linksexakt.

---

Dies folgt leicht aus der gewöhnlichen Adjunktion zwischen Tensorprodukt und `\Hom`.
