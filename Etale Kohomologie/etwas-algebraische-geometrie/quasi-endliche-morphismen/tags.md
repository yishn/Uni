#5-1-INTRO

In diesem Kapitel seien alle Schemata lokal noethersch.

#5-1:Definition

Ein Schema-Morphismus `f: Y\to X` heißt *endlich*, wenn er affin ist und für jedes offen affines `U\opensubset X` ist `\Gamma(f^{-1}(U), \O_Y)` eine endliche `\Gamma(U, \O_X)`-Algebra.

#5-2:Bemerkung

Es genügt die Eigenschaft auf einer offen affinen Überdeckung nachzuprüfen.

#5-3:Bemerkung

Sei `X` ein normales Schema und `f: X'\to X` seine Normalisierung in einer endlich separablen Erweiterung seines Funktionenkörpers `k(X)`. Dann ist `f` endlich.

---

Siehe z.B. [[AM]](#LIT-AM) 5.17.

#5-4:Lemma

Es gilt:

1. Abgeschlossene Immersionen sind endlich.
2. Die Komposition endlicher Morphismen ist endlich.
3. Jeder Basiswechsel eines endlichen Morphismus' ist endlich.

#5-5:Satz

Endliche Morphismen sind eigentlich.

---

Affine Morphismen sind separiert, also genügt es zu zeigen, dass `f: Y\to X` universell abgeschlossen ist. Nach [~](#5-4) (iii) genügt zu zeigen, dass `f` abgeschlossen ist. Sei o.B.d.A. `X` affin, also `f: \Spec(B)\to \Spec(A)`. Dann ist `f` induziert durch `A\to A/\mathfrak{a} \hookrightarrow B`, wobei `\mathfrak{a} = \ker(f)` und `B` eine endliche `A/\mathfrak{a}`-Algebra ist.

Der Morphismus `\Spec(A/\mathfrak{a})\to\Spec(A)` ist abgeschlossen. Dass `\Spec(B)\to \Spec(A/\mathfrak{a})` abgeschlossen ist, folgt aus dem Aufstiegstheorem von Cohen-Seidenberg für ganze Ringerweiterungen, siehe z.B. [[AM]](#LIT-AM) 5.11.

#5-6:Lemma

Sei `k` ein Körper. Für ein Schema `f: X\to k` von endlichem Typ sind folgende Aussagen äquivalent:

1. `X` ist affin und `\Gamma(X, \O_X)` ist artinsch.
2. `X` ist endlich und diskret als topologischer Raum.
3. `X` ist diskret als topologischer Raum.
4. `f` ist endlich.

#5-7:Definition

Ein Schema-Morphismus `f: Y\to X` heißt *quasiendlich*, wenn `f` von endlichem Typ ist und die Fasern `f^{-1}(x)` für alle `x\in X` endliche Mengen sind. ~~quasiendlich|Morphismus~~

#5-8:Lemma

1. Jede Immersion ist quasiendlich.
2. Die Komposition quasiendlicher Morphismen ist quasiendlich.
3. Jeder Basiswechsel eines quasiendlichen Morphismus' ist quasiendlich

#5-9:Theorem

*(Zariskis Hauptsatz)* ~~Zariskis Hauptsatz~~ Sei `X` ein quasikompaktes Schema. Dann kann jeder separable, quasiendlicher Morphismus `f: Y\to X` als Komposition `Y\stackrel{f'}{\to} Y'\stackrel{g}{\to} X` geschrieben werden, wobei `f'` eine offene Immersion und `g` ein endlicher Morphismus ist.

#5-10:Korollar

Ein quasiendlicher, eigentlicher Morphismus ist endlich.

---

Sei `f:Y\to X` quasiendlich und eigentlich und o.B.d.A. `X` affin, also insbesondere quasikompakt. Wir betrachten die Faktorisierung nach Zariskis Hauptsatz `f: Y\stackrel{f'}{\to} Y'\stackrel{g}{\to} X`, wobei `f'` eine offene Immersion und `g` endlich ist.

Daher genügt es zu zeigen, dass `f'` auch eine abgeschlossene Immersion ist. Dafür genügt es zu zeigen, dass `f'` abgeschlossen ist. Wir faktorisieren `f'` als:

    Y\stackrel{\Gamma_{f'}}{\longrightarrow} Y\times_X Y' \stackrel{\pr_2}{\longrightarrow} Y'

Da `g` endlich, also eigentlich, insbesondere separiert ist, zeigt das Diagramm

    \xymatrix{
        Y \ar[r]^-{\Gamma_{f'}}\ar[d]_{f'} & Y\times_X Y' \ar[d]^{f'\times\id}\\
        Y' \ar[r]_-{\Delta_g}              & Y'\times_X Y'
    }

dass `\Gamma_{f'}` eine abgeschlossene Immersion ist. Da `f` eigentlich ist, zeigt das Diagramm

    \xymatrix{
        Y\times_X Y' \ar[r]^{\pr_2}\ar[d]_{\pr_1} & Y' \ar[d]^g \\
        Y \ar[r]_f                                & X
    }

dass `\pr_2` eigentlich ist. Daher ist `f' = \pr_2\circ\Gamma_{f'}` abgeschlossen.
