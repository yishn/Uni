#3-6-INTRO

Sei `T` ein Situs, `\mathcal{U} = (U_i\to X)_i\in \Cov(T)` und `F\in\PrSh_\Ab(T)`.

#3-6:Definition

Der *Čech-Komplex* `\check{C}{}^\bullet(\mathcal{U}, F)` ist der Komplex abelscher Gruppen, der in Grad `n\geq 0` gegeben ist durch: ~~Komplex|Čech~~ ~~Čech-Komplex~~

    \check{C}{}^n(\mathcal{U}, F) = \prod_{i_0,\ldots, i_n} F(U_{i_0}\times_X \cdots \times_X U_{i_n})

und die Abbildung `\d: \check{C}{}^n(\mathcal{U}, F)\to \check{C}{}^{n+1}(\mathcal{U}, F)` ist gegeben durch:

    (\d s)_{i_0,\ldots, i_{n+1}} = \sum_{k = 0}^{n+1} (-1)^k s_{i_0,\ldots, \widehat{i_k},\ldots, i_{n+1}}|_{U_{i_0}\times _X \cdots \times_X U_{i_{n+1}}}

#3-7:Definition

`\check{\H}{}^q(\mathcal{U}, F) = \H^q(\check{C}{}^\bullet (\mathcal{U}, F))` heißt die `q`-te *Čech-Kohomologie* von `F` bzgl. `\mathcal{U}`. ~~Čech-Kohomologie~~ ~~Kohomologie|Čech~~ Die Einschränkung `s\mapsto (s|_{U_i})_i` definiert eine natürliche Abbildung `F(X) \to \check{\H}{}^0(\mathcal{U}, F)`.

#3-8:Satz

`\check{\H}{}^q(\mathcal{U}, -)` ist der `q`-te abgeleiteter Funktor von `\check{\H}{}^0(\mathcal{U}, -): \PrSh(T)\to \Ab`.

---

Die Konstruktion liefert unmittelbar für eine kurze exakte Folge von Prägarben `0\to F'\to F\to F''\to 0` eine kurze exakte Folge von Komplexen abelscher Gruppen:

    0 \longrightarrow \check{C}{}^\bullet(\mathcal{U}, F') \longrightarrow \check{C}{}^\bullet(\mathcal{U}, F) \longrightarrow \check{C}{}^\bullet(\mathcal{U}, F'') \longrightarrow 0

Somit ist `(\check{\H}{}^q(\mathcal{U}, -))_{q\geq 0}` ein `\delta`-Funktor. Bleibt zu zeigen, dass er universell ist. Es genügt zu zeigen, dass `\check{\H}{}^q(\mathcal{U}, -)` für `q\geq 1` auslöschbar ist. Da `\PrSh(T)` genügend viele Injektive hat, genügt zu zeigen, dass dieser Funktor auf Injektive verschwinden.

Sei `J` eine injektive Prägarbe. Es gilt:

    \begin{align*}
        \check{C}{}^n(\mathcal{U}, J) &= \prod_{i_0,\ldots, i_n} J(U_{i_0}\times_X\cdots \times_X U_{i_n})\\
        &= \prod_{i_0,\ldots, i_n} \Hom_{\PrSh(T)}(\Z^\text{P}_{U_{i_0}\times_X\cdots \times_X U_{i_n}}, J)\\
        &= \Hom_{\PrSh(T)}\Big( \bigoplus_{i_0,\ldots, i_n} \Z^\text{P}_{U_{i_0}\times_X\cdots \times_X U_{i_n}}, J \Big)
    \end{align*}

Nun ist `J` injektiv. Somit genügt es für jedes `V\in\Cat(T)` die Exaktheit der folgende Folge zu zeigen:

    \bigoplus_i \Z_{U_i}^\text{P}(V) \longleftarrow \bigoplus_{i,j} \Z^\text{P}_{U_i\times_X U_j}(V)\longleftarrow \cdots

Es gilt `\Z_U^\text{P}(V) = \bigoplus_{\Mor(V, U)} \Z`. Die Differentiale im obigen Komplex sind gegeben durch das folgende Diagramm von Mengenabbildungen:

    \xymatrix{
        \displaystyle \coprod_i^\phantom{i} \Mor(V, U_i) &
        \displaystyle \coprod_{i,j}^\phantom{i} \Mor(V, U_i\times_X U_j) \ar@<-.5ex>[l] \ar@<.5ex>[l] &
        \cdots \ar@<-1ex>[l] \ar[l] \ar@<1ex>[l]
    }

Für gegebenes `\varphi\in \Mor(V, X)` bezeichnet `\Mor_\varphi(V, U_i)` die Menge der Morphismen `V\to U_i`, so dass das folgende Diagramm kommutiert:

    \xymatrix{
        V \ar[r]\ar[d]_\varphi & U_i\ar[ld] \\
        X
    }

Wir erhalten disjunkte Zerlegungen:

    \begin{align*}
                    \Mor(V, U_i) &= \coprod_\varphi \Mor_\varphi(V, U_i)\\
        \Mor(V, U_i\times_X U_j) &= \coprod_\varphi \Mor_\varphi(V, U_i\times_X U_j) \\
                                 &= \coprod_\varphi \Mor_\varphi(V, U_i)\times \Mor_\varphi(V, U_j) \\
                                 &\vdots
    \end{align*}

Für gegebenes `\varphi\in \Mor(V, X)` setzen wir `S(\varphi) = \coprod_i\Mor_\varphi(V, U_i)`. Damit schreibt sich das obige Mengendiagramm als:

    \coprod_\varphi \Big(\xymatrix{
        \displaystyle S(\varphi) &
        \displaystyle S(\varphi)^2 \ar@<-.5ex>[l] \ar@<.5ex>[l] &
        \cdots \ar@<-1ex>[l] \ar[l] \ar@<1ex>[l]
    }\Big)

Also reicht es für die Exaktheit zu zeigen, dass für eine beliebige Menge `S` die folgende Folge exakt ist:

    \bigoplus_S \Z \stackrel{\d}{\longleftarrow} \bigoplus_{S\times S} \Z \stackrel{\d}{\longleftarrow} \cdots

wobei die Differentiale durch das Diagramm `\xymatrix{S & S\times S \ar@<-.5ex>[l] \ar@<.5ex>[l] & \cdots \ar@<-1ex>[l] \ar[l] \ar@<1ex>[l]}` induziert sind. Explizit heißt das:

    \d(1_{i_0,\ldots, i_q}) = \sum_{k = 0}^q (-1)^k 1_{i_0,\ldots,\widehat{i_k},\ldots,i_q}

Wir zeigen die Exaktheit durch Angabe einer Nullhomotopie. Wir fixieren `s\in S` und betrachten die Abbildung:

    \Delta: \bigoplus_{S^q} \Z \to \bigoplus_{S^{q+1}} \Z,\ \Delta(1_{i_0,\ldots,i_q}) = 1_{s,i_0,\ldots,i_q}

Man rechnet leicht nach, dass `\Delta\d + \d\Delta = \id`.
