#3-6-INTRO

Sei `T` ein Situs, `\mathcal{U} = (U_i\to X)_i\in \Cov(T)` und `F\in\PrSh_\Ab(T)`.

#3-6:Definition

Der *Čech-Komplex* `\check{C}{}^\bullet(\mathcal{U}, F)` ist der Komplex abelscher Gruppen, der in Grad `n\geq 0` gegeben ist durch: ~~Čech-Komplex~~

    \check{C}{}^n(\mathcal{U}, F) = \prod_{i_0,\ldots, i_n} F(U_{i_0}\times_X \cdots \times_X U_{i_n})

und die Abbildung `\d: \check{C}{}^n(\mathcal{U}, F)\to \check{C}{}^{n+1}(\mathcal{U}, F)` ist gegeben durch:

    (\d s)_{i_0,\ldots, i_{n+1}} = \sum_{k = 0}^{n+1} (-1)^k s_{i_0,\ldots, \widehat{i_k},\ldots, i_{n+1}}|_{U_{i_0}\times _X \cdots \times_X U_{i_{n+1}}}

#3-7:Definition

`\check{\H}{}^q(\mathcal{U}, F) = \H^q(\check{C}{}^\bullet (\mathcal{U}, F))` heißt die `q`-te *Čech-Kohomologie* von `F` bzgl. `\mathcal{U}`. ~~Čech-Kohomologie~~

Die Einschränkung `s\mapsto (s|_{U_i})_i` definiert eine natürliche Abbildung `F(X) \to \check{\H}{}^0(\mathcal{U}, F)`.

#3-8:Satz

`\check{\H}{}^q(\mathcal{U}, -)` ist der `q`-te abgeleiteter Funktor von `\check{\H}{}^0(\mathcal{U}, -): \PrSh(T)\to \Ab`.
