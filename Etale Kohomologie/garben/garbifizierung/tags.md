#3-14:Definition

Eine Prägarbe `F` abelscher Gruppen auf einem Situs `T` heißt *separiert*, wenn für jede Überdeckung `(U_i\to U)_i\in\Cov(T)` die folgende natürliche Abbildung injektiv ist: ~~separiert|Prägarbe~~

    \equalizer{F(U)}{\ker\Big( \prod_i^\phantom{i} F(U_i)}{\prod_{i,j}^\phantom{i} F(U_i\times_U U_j) \Big)}

#3-15:Bemerkung

Garben sind separierte Prägarben.

#3-16:Definition

Für `F\in\PrSh(T)` sei `F^+` die Prägarbe, die gegeben ist durch:

    F^+(U) = \check{\H}{}^0(U, F)

#3-17:Bemerkung

Es gibt einen natürlichen Homomorphismus `i_F: F\to F^+`. Es ist `i_F` genau dann injektiv, wenn `F` separiert ist. Wenn `F` eine Garbe ist, so ist `i_F` bijektiv.

#3-18:Theorem

1. Jeder Morphismus `f: F\to G` von einer Prägarbe `F` in eine Garbe `G` faktorisiert eindeutig über `F^+`.
2. Die Zuordnung `F\mapsto F^+` liefert einen linksexakten Funktor `\PrSh(T)\to \PrSh(T)`.
3. Ist `F` eine Prägarbe, so ist `F^+` eine separierte Prägarbe
4. Ist `F` eine separierte Prägarbe, so ist `F^+` eine Garbe.
5. Der Funktor `F\mapsto F^\# = (F^+)^+` ist linksadjungiert zur Inklusion `i: \Sh(T)\hookrightarrow \PrSh(T)`.

---

1. Für jedes `U\in \Cat(T)` haben wir das kommutative Diagramm:

        \xymatrix{
            F(U) \ar[d]\ar[r]           & G(U) \ar[d] \\
            \check{\H}{}^0(U, F) \ar[r] & \check{\H}{}^0(U, G)
        }

   Die Garbeneigenschaft zeigt die Bijektivität des rechten vertikalen Pfeils, was die Existenz der Faktorisierung von (i) zeigt.

   Für die Eindeutigkeit sei `F\to G` die Nullabbildung. Sei `\mathcal{U} = (U_i\to U)_i\in\Cov(T)` eine Überdeckung von `U\in\Cat(T)` und betrachte das kommutative Diagramm:

        \xymatrix{
            \check{\H}{}^0(\mathcal{U}, F) \ar[d]\ar[r] & \check{\H}{}^0(\mathcal{U}, G) \ar[d] \\
            \prod_i F(U_i) \ar[r]                       & \prod_i G(U_i)
        }

    Die vertikalen Pfeile sind injektiv, daher ist `\check{\H}{}^0(\mathcal{U}, F)\to \check{\H}{}^0(\mathcal{U}, G) = G(U)` die Nullabbildung. Damit ist auch `\check{\H}{}^0(U, F) = F^+(U)\to G(U)` die Nullabbildung und deshalb auch `F^+\to G`.

2. Dies folgt formal, da `F^+` durch Kernbildung und gerichteten Kolimiten entsteht.

3. Die Prägarbe `\ker(i_F: F\to F^+)` besteht aus allen Schnitten, die auf einer Überdeckung zu Null werden. Insbesondere gilt `\ker(i_F)^+ = 0`. Wenden wir den linksexakten Funktor `+` auf die Folge `0\to\ker(i_F) \to F\to F^+` an, so erhalten wir die Inklusion `i_{F^+}: F^+\hookrightarrow F^\#`.

4. Sei `F` eine separierte Prägarbe. Dann ist für jede Überdeckung `\mathcal{U}=(U_i\to U)_i` die Abbildung `\check{\H}{}^0(\mathcal{U}, F)\to\check{\H}{}^0(U, F)` injektiv. Wir zeigen, dass die folgende Folge exakt ist:

        \equalizer{F^+(U)}{\prod_i^\phantom{i} F^+(U_i)}{\prod_{i,j}^\phantom{i} F^+(U_i\times_U U_j)}

   Der linke Pfeil ist injektiv, da `F^+` separiert ist. Sei nun `s^+\in \check{\H}{}^0(\mathcal{U}, F^+)\subset F^\#(U)` mit `s_i^+\in F^+(U_i)` als die `i`-te Komponente. Wir suchen ein `s\in F^+(U)=\check{\H}{}^0(U, F)`, das `s^+` repräsentiert.

   Für jedes `i` wählen wir eine Überdeckung `(V_{i,k}\to U_i)_k` und ein `s_i\in\check{\H}{}^0((V_{i,k}\to U_i)_k, F)`, das `s_i^+` repräsentiert. Wir verfeinern und ersetzen die Überdeckung `(U_i\to U)_i` durch die Überdeckung `(V_{i,k}\to U)_{i,k}`, so dass wir o.B.d.A. annehmen können, dass `s_i^+\in F^+(U_i)` das Bild eines `s_i\in F(U_i)` ist.

   Da `F` separiert ist, folgt aus `s_i^+|_{U_i\times_U U_j} = s_j^+|_{U_i\times_U U_j}` schon `s_i|_{U_i\times_U U_j} = s_j|_{U_i\times_U U_j}`. Die `s_i` definieren daher ein Element `s\in\check{\H}{}^0(\mathcal{U}, F)\subset F^+(U)`, das sich auf `s^+\in\check{\H}{}^0(\mathcal{U}, F^+)` abbildet.

5. folgt aus (i) und (iv).

#3-19:Definition

Die Garbe `F^\#` heißt die *Garbifizierung* von `F`. ~~Garbifizierung|Situs~~

#3-21:Korollar

Eine separierte Prägarbe ist genau dann gleich Null, wenn ihre Garbifizierung gleich Null ist. Für eine beliebige Prägarbe `F` gilt:

    F^+ = 0 \iff F^\# = 0

---

Dies folgt aus der Injektivität von `F\to F^+ = F^\#` für separiertes `F`.

#3-21-1:Bemerkung

Wir betrachten nun Prägarben von Mengen. Wir können keine Čech-Kohomologiegruppen bilden, aber für eine Überdeckung `\mathcal{U} = (U_i\to X)_i` und eine Prägarbe von Mengen `F` können wir setzen:

    \check{\H}{}^0(\mathcal{U}, F) = \ker\Big(\xymatrix{
        \displaystyle\prod_i^\phantom{i} F(U_i) \ar@<-.5ex>[r] \ar@<.5ex>[r] &
        \displaystyle\prod_{i,j}^\phantom{i} F(U_i\times_X U_j)
    } \Big)

Für eine Verfeinerung `\mathcal{V} = (V_j\to X)_j` von `\mathcal{U}` erhält man eine Abbildung `\check{\H}{}^0(\mathcal{U}, F)\to \check{\H}{}^0(\mathcal{V}, F)`, die unabhängig von der Wahl der Verfeinerungsabbildung ist. Wir setzen:

    \check{\H}{}^0(X, F) = \colim_{\Cov(X)} \check{\H}{}^0(-, F)

Nun geht alles analog zum abelschen Fall, d.h. wir erhalten die Garbifizierung `\#: \PrSh_\Mengen(T)\to \Sh_\Mengen(T)`, der linksadjungiert zur Inklusion `\Sh_\Mengen(T)\to\PrSh_\Mengen(T)` ist.
