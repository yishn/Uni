#5-12:Bemerkung

Für ein Schema-Morphismus `f: \Spec(B)\to \Spec(A)` gilt:

    f \text{ flach} \iff B \text{ flacher $A$-Modul}\\
    f \text{ treuflach} \iff B \text{ treuflacher $A$-Modul}

Treuflache Ringhomomorphismen sind injektiv, insbesondere sind flache Homomorphismen lokaler Ringe injektiv.

#5-13:Bemerkung

Die Eigenschaft für einen Modul flach zu sein ist lokal. Ist `M` ein endlich erzeugter `A`-Modul, so sind äquivalent:

1. `M` ist flach.
2. `M` ist lokal frei.
3. `M` ist projektiv.

#5-14:Satz

Sei `f: A\to B` eine endlich erzeugte Algebra.

1. Ist `f` flach, so ist `f^\ast: \Spec(B)\to \Spec(A)` offen.
2. Die Menge der Punkte `\mathfrak{P}\in\Spec(B)`, so dass `B_\mathfrak{p}` eine flache `A_\mathfrak{p}`-Algebra mit `\mathfrak{p} = f^\ast(\mathfrak{P})` ist, ist offen in `\Spec(B)`.

#5-15:Korollar

Sei `f: Y\to X` ein Morphismus lokal von endlichem Typ.

1. Ist `f` flach, so ist `f` offen.
2. Die Menge der Punkte `y\in Y`, so dass `\O_{Y,y}` eine flache `\O_{X,f(y)}`-Algebra ist, ist offen in `Y`.
