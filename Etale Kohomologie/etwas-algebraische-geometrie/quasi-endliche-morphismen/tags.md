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

Ein Schema-Morphismus `f: Y\to X` heißt *quasiendlich*, wenn `f` von endlichem Typ ist und die Fasern `f^{-1}(x)` für alle `x\in X` endliche Mengen sind. ~~quasiendlich|Schema-Morphismus~~

#5-8:Lemma

1. Jede Immersion ist quasiendlich.
2. Die Komposition quasiendlicher Morphismen ist quasiendlich.
3. Jeder Basiswechsel eines quasiendlichen Morphismus' ist quasiendlich

#5-9:Theorem

*(Zariskis Hauptsatz)* ~~Zariskis Hauptsatz~~ Sei `X` ein quasikompaktes Schema. Dann kann jeder separable, quasiendlicher Morphismus `f: Y\to X` als Komposition `Y\stackrel{f'}{\to} Y'\stackrel{g}{\to} X` geschrieben werden, wobei `f'` eine offene Einbettung und `g` ein endlicher Morphismus ist.

#5-10:Korollar

Ein quasiendlicher, eigentlicher Morphismus ist endlich.
