#7-45-INTRO

Die Gruppe `\Gamma(X, i_\ast i^! F) = \Gamma(Z, i^! F) = \ker(F(X)\to F(U))` heißt *Gruppe der Schnitte mit Träger in `Z`*. ~~Schnitte|mit Träger~~

#7-45:Definition

Die Rechtsabgeleiteten des linkexakten Funktors `\Sh(X_\et)\to \Ab`, `F\mapsto \Gamma(Z, i^! F)` heißen *Kohomologie mit Träger in `Z`*. Wir bezeichnen die Kohomologie mit `\H^q_Z(X, F)`. ~~Kohomologie|mit Träger~~

#7-46:Satz

Es gibt die lange exakte Folge:

    0 \longrightarrow \H_Z^0(X, F) \longrightarrow \H^0_\et(X, F) \longrightarrow \H^0_\et(U, F|_U) \longrightarrow \H^1_Z(X, F) \longrightarrow \H^1_\et(X, F) \longrightarrow \cdots

---

Setzt man in [~](#7-44) `F = \Z`, erhält man die exakte Folge:

    0 \longrightarrow \Z_U \longrightarrow \Z \longrightarrow \Z_Z \longrightarrow 0

mit `\Z_U = j_! \Z` und `\Z_Z = i_\ast \Z`. Wir erhalten somit die lange exakte Folge:

    0 \longrightarrow \Ext_{X_\et}^0(\Z_Z, F) \longrightarrow \Ext_{X_\et}^0(\Z, F) \longrightarrow \Ext_{X_\et}^0(\Z_U, F) \longrightarrow \Ext^1_{X_\et}(\Z_Z, F) \longrightarrow \cdots

Nun gilt `\Hom_{X_\et}(\Z, F) = F(X)`, `\Hom_{X_\et}(\Z_U, F) = \Hom_{U_\et}(\Z, j^\ast F)` und `\Hom_{X_\et}(\Z_Z, F) = \Gamma(Z, i^! F)`. Hieraus folgen dieselben Identitäten für die abgeleiteten Funktoren und es folgt die Aussage.
