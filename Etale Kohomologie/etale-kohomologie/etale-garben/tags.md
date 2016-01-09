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
