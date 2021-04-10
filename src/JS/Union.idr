-- Unfortunately, using a list parameter does not work here
module JS.Union

import Data.SOP
import JS.Inheritance
import JS.Marshall

public export
data NPP :  (f : Type -> Type -> Type)
         -> (ps1 : List Type)
         -> (ps2 : List Type)
         -> Type where
  Nil  : NPP f Nil Nil
  (::) : f a b -> NPP f ps1 ps2 -> NPP f (a :: ps1) (b :: ps2)

appToFFI : NPP ToFFI ps1 ps2 -> NS I ps1 -> NS I ps2
appToFFI [] (Z v) impossible
appToFFI [] (S x) impossible
appToFFI (_ :: _) (Z v) = Z $ toFFI v
appToFFI (_ :: t) (S y) = S $ appToFFI t y

appFromFFI : NPP FromFFI ps1 ps2 -> NS I ps2 -> Maybe $ NS I ps1
appFromFFI [] (Z v) impossible
appFromFFI [] (S x) impossible
appFromFFI (_ :: _) (Z v) = Z <$> fromFFI v
appFromFFI (_ :: t) (S y) = S <$> appFromFFI t y

--------------------------------------------------------------------------------
--          Union2
--------------------------------------------------------------------------------

export
data Union2 : Type -> Type -> Type where [external]

export
toUnion2 : NS I [a,b] -> Union2 a b
toUnion2 = collapseNS . mapNS believe_me

export
fromUnion2 : NP SafeCast [a,b] => Union2 a b -> Maybe $ NS I [a,b]
fromUnion2 = safeCastNS

export
(npp : NPP ToFFI [a,b] [m,n]) =>
  ToFFI (NS I [a,b]) (Union2 m n) where
    toFFI ns = toUnion2 $ appToFFI npp ns

export
(npp : NPP FromFFI [a,b] [m,n]) => NP SafeCast [m,n] =>
  FromFFI (NS I [a,b]) (Union2 m n) where
    fromFFI ns = fromUnion2 ns >>= appFromFFI npp

--------------------------------------------------------------------------------
--          Union3
--------------------------------------------------------------------------------

export
data Union3 : Type -> Type -> Type -> Type where [external]

export
toUnion3 : NS I [a,b,c] -> Union3 a b c
toUnion3 = collapseNS . mapNS believe_me

export
fromUnion3 : NP SafeCast [a,b,c] => Union3 a b c -> Maybe $ NS I [a,b,c]
fromUnion3 = safeCastNS

export
(npp : NPP ToFFI [a,b,c] [m,n,o]) =>
  ToFFI (NS I [a,b,c]) (Union3 m n o) where
    toFFI ns = toUnion3 $ appToFFI npp ns

export
(npp : NPP FromFFI [a,b,c] [m,n,o]) => NP SafeCast [m,n,o] =>
  FromFFI (NS I [a,b,c]) (Union3 m n o) where
    fromFFI ns = fromUnion3 ns >>= appFromFFI npp

--------------------------------------------------------------------------------
--          Union4
--------------------------------------------------------------------------------

export
data Union4 : Type -> Type -> Type -> Type -> Type where [external]

export
toUnion4 : NS I [a,b,c,d] -> Union4 a b c d
toUnion4 = collapseNS . mapNS believe_me

export
fromUnion4 : NP SafeCast [a,b,c,d] => Union4 a b c d -> Maybe $ NS I [a,b,c,d]
fromUnion4 = safeCastNS

export
(npp : NPP ToFFI [a,b,c,d] [m,n,o,p]) =>
  ToFFI (NS I [a,b,c,d]) (Union4 m n o p) where
    toFFI ns = toUnion4 $ appToFFI npp ns

export
(npp : NPP FromFFI [a,b,c,d] [m,n,o,p]) => NP SafeCast [m,n,o,p] =>
  FromFFI (NS I [a,b,c,d]) (Union4 m n o p) where
    fromFFI ns = fromUnion4 ns >>= appFromFFI npp

--------------------------------------------------------------------------------
--          Union5
--------------------------------------------------------------------------------

export
data Union5 : Type -> Type -> Type -> Type -> Type -> Type where [external]

export
toUnion5 : NS I [a,b,c,d,e] -> Union5 a b c d e
toUnion5 = collapseNS . mapNS believe_me

export
fromUnion5 : NP SafeCast [a,b,c,d,e] =>
             Union5 a b c d e -> Maybe $ NS I [a,b,c,d,e]
fromUnion5 = safeCastNS

export
(npp : NPP ToFFI [a,b,c,d,e] [m,n,o,p,q]) =>
  ToFFI (NS I [a,b,c,d,e]) (Union5 m n o p q) where
    toFFI ns = toUnion5 $ appToFFI npp ns

export
(npp : NPP FromFFI [a,b,c,d,e] [m,n,o,p,r]) => NP SafeCast [m,n,o,p,r] =>
  FromFFI (NS I [a,b,c,d,e]) (Union5 m n o p r) where
    fromFFI ns = fromUnion5 ns >>= appFromFFI npp

--------------------------------------------------------------------------------
--          Union6
--------------------------------------------------------------------------------

export
data Union6 : Type -> Type -> Type -> Type -> Type -> Type -> Type where [external]

export
toUnion6 : NS I [a,b,c,d,e,f] -> Union6 a b c d e f
toUnion6 = collapseNS . mapNS believe_me

export
fromUnion6 : NP SafeCast [a,b,c,d,e,f] =>
             Union6 a b c d e f -> Maybe $ NS I [a,b,c,d,e,f]
fromUnion6 = safeCastNS

export
(npp : NPP ToFFI [a,b,c,d,e,f] [m,n,o,p,q,r]) =>
  ToFFI (NS I [a,b,c,d,e,f]) (Union6 m n o p q r) where
    toFFI ns = toUnion6 $ appToFFI npp ns

export
(npp : NPP FromFFI [a,b,c,d,e,f] [m,n,o,p,r,s]) =>
NP SafeCast [m,n,o,p,r,s] =>
  FromFFI (NS I [a,b,c,d,e,f]) (Union6 m n o p r s) where
    fromFFI ns = fromUnion6 ns >>= appFromFFI npp

--------------------------------------------------------------------------------
--          Union7
--------------------------------------------------------------------------------

export
data Union7 : Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type where [external]

export
toUnion7 : NS I [a,b,c,d,e,f,g] -> Union7 a b c d e f g
toUnion7 = collapseNS . mapNS believe_me

export
fromUnion7 : NP SafeCast [a,b,c,d,e,f,g] =>
             Union7 a b c d e f g -> Maybe $ NS I [a,b,c,d,e,f,g]
fromUnion7 = safeCastNS

export
(npp : NPP ToFFI [a,b,c,d,e,f,g] [m,n,o,p,q,r,s]) =>
  ToFFI (NS I [a,b,c,d,e,f,g]) (Union7 m n o p q r s) where
    toFFI ns = toUnion7 $ appToFFI npp ns

export
(npp : NPP FromFFI [a,b,c,d,e,f,g] [m,n,o,p,r,s,t]) =>
NP SafeCast [m,n,o,p,r,s,t] =>
  FromFFI (NS I [a,b,c,d,e,f,g]) (Union7 m n o p r s t) where
    fromFFI ns = fromUnion7 ns >>= appFromFFI npp

--------------------------------------------------------------------------------
--          Union8
--------------------------------------------------------------------------------

export
data Union8 : Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type where [external]

export
toUnion8 : NS I [a,b,c,d,e,f,g,h] -> Union8 a b c d e f g h
toUnion8 = collapseNS . mapNS believe_me

export
fromUnion8 : NP SafeCast [a,b,c,d,e,f,g,h] =>
             Union8 a b c d e f g h -> Maybe $ NS I [a,b,c,d,e,f,g,h]
fromUnion8 = safeCastNS

export
(npp : NPP ToFFI [a,b,c,d,e,f,g,h] [m,n,o,p,q,r,s,t]) =>
  ToFFI (NS I [a,b,c,d,e,f,g,h]) (Union8 m n o p q r s t) where
    toFFI ns = toUnion8 $ appToFFI npp ns

export
(npp : NPP FromFFI [a,b,c,d,e,f,g,h] [m,n,o,p,r,s,t,u]) =>
NP SafeCast [m,n,o,p,r,s,t,u] =>
  FromFFI (NS I [a,b,c,d,e,f,g,h]) (Union8 m n o p r s t u) where
    fromFFI ns = fromUnion8 ns >>= appFromFFI npp

--------------------------------------------------------------------------------
--          Union9
--------------------------------------------------------------------------------

export
data Union9 : Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type where [external]

export
toUnion9 : NS I [a,b,c,d,e,f,g,h,i] -> Union9 a b c d e f g h i
toUnion9 = collapseNS . mapNS believe_me

export
fromUnion9 : NP SafeCast [a,b,c,d,e,f,g,h,i] =>
             Union9 a b c d e f g h i -> Maybe $ NS I [a,b,c,d,e,f,g,h,i]
fromUnion9 = safeCastNS

export
(npp : NPP ToFFI [a,b,c,d,e,f,g,h,i] [m,n,o,p,q,r,s,t,u]) =>
  ToFFI (NS I [a,b,c,d,e,f,g,h,i]) (Union9 m n o p q r s t u) where
    toFFI ns = toUnion9 $ appToFFI npp ns

export
(npp : NPP FromFFI [a,b,c,d,e,f,g,h,i] [m,n,o,p,r,s,t,u,v]) =>
NP SafeCast [m,n,o,p,r,s,t,u,v] =>
  FromFFI (NS I [a,b,c,d,e,f,g,h,i]) (Union9 m n o p r s t u v) where
    fromFFI ns = fromUnion9 ns >>= appFromFFI npp

--------------------------------------------------------------------------------
--          Union10
--------------------------------------------------------------------------------

export
data Union10 : Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type where [external]

export
toUnion10 : NS I [a,b,c,d,e,f,g,h,i,j] -> Union10 a b c d e f g h i j
toUnion10 = collapseNS . mapNS believe_me

export
fromUnion10 : NP SafeCast [a,b,c,d,e,f,g,h,i,j] =>
             Union10 a b c d e f g h i j -> Maybe $ NS I [a,b,c,d,e,f,g,h,i,j]
fromUnion10 = safeCastNS

export
(npp : NPP ToFFI [a,b,c,d,e,f,g,h,i,j] [m,n,o,p,q,r,s,t,u,v]) =>
  ToFFI (NS I [a,b,c,d,e,f,g,h,i,j]) (Union10 m n o p q r s t u v) where
    toFFI ns = toUnion10 $ appToFFI npp ns

export
(npp : NPP FromFFI [a,b,c,d,e,f,g,h,i,j] [m,n,o,p,r,s,t,u,v,w]) =>
NP SafeCast [m,n,o,p,r,s,t,u,v,w] =>
  FromFFI (NS I [a,b,c,d,e,f,g,h,i,j]) (Union10 m n o p r s t u v w) where
    fromFFI ns = fromUnion10 ns >>= appFromFFI npp
