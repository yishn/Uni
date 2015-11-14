#4-11:Satz

Für eine Garbe `F` auf einem Situs `T` sind folgende Aussagen äquivalent:

1. `\H^q(U, F) = 0` für alle `q\geq 1` und `U\in\Kat(T)`.
2. `\check{\H}{}^q(\mathcal{U}, F) = 0` für alle `q\geq 1` und `\mathcal{U}\in\Ub(T)`.
3. `\check{\H}{}^q(U, F) = 0` für alle `q\geq 1` und `U\in\Kat(T)`.

---

* (i)`\implies`(ii): Es gilt `\Hh^q(F) = 0` für `q\geq 1` nach [~](#4-4) (i) und somit liefert die Spektralfolge aus [~](#4-5) für Überdeckungen `\mathcal{U} = (U_i\to U)_i`:

        \check{\H}{}^q(\mathcal{U}, F) = \H^q(U, F) = 0

* (ii)`\implies`(iii) ergibt sich durch Übergang zum Kolimes.

* (iii)`\implies`(i): Wir betrachten die Spektralfolge:

        E_2^{pq} = \check{\H}{}^p(U, \Hh^q(F)) \Longrightarrow \H^{p+q}(U, F)

   Nach [~](#4-4) (ii) gilt `E_2^{0,q} = 0` für `q\geq 1`. Hieraus folgt wie schon in [~](#4-6), dass `0 = \check{\H}{}^1(U, F) = \H^1(U, F)`. Dies gilt für alle `U`, also gilt `\Hh^1(F) = 0` und `E_2^{p,1} = 0` für alle `p`.

        \begin{xy}
           0;<1.2pc,0pc>:
           (-1,0); (6,0) **@{-} ?>*@{>},
           (0,-1); (0,4) **@{-} ?>*@{>},

           (-.5,-.5)*{0},
           (6,-.5)*{p},
           (-.5,4)*{q},
           (6,4)*{E_2^{pq}},

           (0,0)*{\bullet},
           (0,1)*{\circ},
           (0,2)*{\circ},
           (0,3)*{\circ},

           (1,0)*{\bullet},
           (2,0)*{\bullet},
           (3,0)*{\bullet},
           (4,0)*{\bullet},
           (5,0)*{\bullet},

           (1,1)*{\circ},
           (2,1)*{\circ},
           (3,1)*{\circ},
           (4,1)*{\circ},
           (5,1)*{\circ},

           (-1,1); (1,-1) **@{.},
           (-1,2); (2,-1) **@{.},
           (-1,3); (3,-1) **@{.}
        \end{xy}

   Daraus folgt `\H^2(U, F) = \check{\H}{}^2(U, F) = 0` für alle `U`, also `\Hh^2(F) = 0`, usw...

#4-12:Definition

Eine Garbe, die den äquivalenten Bedingungen von [~](#4-11) genügt, heißt *schlaff*. ~~schlaff|Garbe~~

#4-13:Korollar

Injektive Garben sind schlaff. Garbenkohomologie kann durch schlaffe Auflösungen berechnet werden.

#4-14:Bemerkung

Sei `X` ein topologischer Raum und `F` eine Garbe auf `X`. Ist `F` welk, so ist `F` schlaff. Die Umkehrung ist nicht richtig. Ein Gegenbeispiel ist etwa die Garbe `\mathcal{C}_\R(-, \R)` der stetigen reellwertigen Funktionen auf `\R`.

Es gibt Zerlegungen der Eins, daher ist `\mathcal{C}_\R(-, \R)` schlaff. Die Funktion `x\mapsto \frac{1}{x}` auf `U = \R\setminus\{0\}` setzt sich nicht zu einer stetigen Funktion auf ganz `\R` fort.
