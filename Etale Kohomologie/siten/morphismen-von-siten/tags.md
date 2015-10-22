#2-15:Definition

Ein *Morphismus* `f:T'\to T` zwischen zwei Siten ist gegeben durch einen Funktor `f^\sharp: \Cat(T)\to\Cat(T')` mit folgenden Eigenschaften: ~~Morphismus|Siten~~

1. Für `(U_i\to U)_i\in\Cov(T)` ist `(f^\sharp U_i\to f^\sharp U)_i\in\Cov(T')`.
2. Für `(U_i\to U)_i\in\Cov(T)` und einen Morphismus `V\to U` ist der natürliche Morphismus `f^\sharp(U_i\times_U V) \to f^\sharp(U_i)\times_{f^\sharp(U)}f^\sharp(V)` für alle `i` ein Isomorphismus in `\Cat(T')`.

#2-16:Bemerkung

Für zwei Siten `T, T'` mit gleichen Kategorien `\mathcal{T}` ist `\id_\mathcal{T}: T'\to T` genau dann ein Siten-Morphismus, wenn `T'` eine Verfeinerung von `T` ist.
