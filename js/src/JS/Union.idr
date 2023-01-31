||| Union types (= sum types) in the FFI.
module JS.Union

import Data.SOP
import JS.Inheritance
import JS.Marshall

%default total

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

export
FromFFI (Union2 a b) (Union2 a b) where
  fromFFI = Just

export
ToFFI (Union2 a b) (Union2 a b) where
  toFFI = id

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

export
FromFFI (Union3 a b c) (Union3 a b c) where
  fromFFI = Just

export
ToFFI (Union3 a b c) (Union3 a b c) where
  toFFI = id

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

export
FromFFI (Union4 a b c d) (Union4 a b c d) where
  fromFFI = Just

export
ToFFI (Union4 a b c d) (Union4 a b c d) where
  toFFI = id

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

export
FromFFI (Union5 a b c d e) (Union5 a b c d e) where
  fromFFI = Just

export
ToFFI (Union5 a b c d e) (Union5 a b c d e) where
  toFFI = id

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

export
FromFFI (Union6 a b c d e f) (Union6 a b c d e f) where
  fromFFI = Just

export
ToFFI (Union6 a b c d e f) (Union6 a b c d e f) where
  toFFI = id

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

export
FromFFI (Union7 a b c d e f g) (Union7 a b c d e f g) where
  fromFFI = Just

export
ToFFI (Union7 a b c d e f g) (Union7 a b c d e f g) where
  toFFI = id

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

export
FromFFI (Union8 a b c d e f g h) (Union8 a b c d e f g h) where
  fromFFI = Just

export
ToFFI (Union8 a b c d e f g h) (Union8 a b c d e f g h) where
  toFFI = id

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

export
FromFFI (Union9 a b c d e f g h i) (Union9 a b c d e f g h i) where
  fromFFI = Just

export
ToFFI (Union9 a b c d e f g h i) (Union9 a b c d e f g h i) where
  toFFI = id

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

export
FromFFI (Union10 a b c d e f g h i j) (Union10 a b c d e f g h i j) where
  fromFFI = Just

export
ToFFI (Union10 a b c d e f g h i j) (Union10 a b c d e f g h i j) where
  toFFI = id

--------------------------------------------------------------------------------
--          Union11
--------------------------------------------------------------------------------

export
data Union11 : Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type where [external]

export
toUnion11 : NS I [a,b,c,d,e,f,g,h,i,j,k] -> Union11 a b c d e f g h i j k
toUnion11 = collapseNS . mapNS believe_me

export
fromUnion11 : NP SafeCast [a,b,c,d,e,f,g,h,i,j,k] =>
             Union11 a b c d e f g h i j k -> Maybe $ NS I [a,b,c,d,e,f,g,h,i,j,k]
fromUnion11 = safeCastNS

export
(npp : NPP ToFFI [a,b,c,d,e,f,g,h,i,j,k] [m,n,o,p,q,r,s,t,u,v,w]) =>
  ToFFI (NS I [a,b,c,d,e,f,g,h,i,j,k]) (Union11 m n o p q r s t u v w) where
    toFFI ns = toUnion11 $ appToFFI npp ns

export
(npp : NPP FromFFI [a,b,c,d,e,f,g,h,i,j,k] [m,n,o,p,q,r,s,t,u,v,w]) =>
NP SafeCast [m,n,o,p,q,r,s,t,u,v,w] =>
  FromFFI (NS I [a,b,c,d,e,f,g,h,i,j,k]) (Union11 m n o p q r s t u v w) where
    fromFFI ns = fromUnion11 ns >>= appFromFFI npp

export
FromFFI (Union11 a b c d e f g h i j k) (Union11 a b c d e f g h i j k) where
  fromFFI = Just

export
ToFFI (Union11 a b c d e f g h i j k) (Union11 a b c d e f g h i j k) where
  toFFI = id

--------------------------------------------------------------------------------
--          Union12
--------------------------------------------------------------------------------

export
data Union12 : Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type where [external]

export
toUnion12 : NS I [a,b,c,d,e,f,g,h,i,j,k,l] -> Union12 a b c d e f g h i j k l
toUnion12 = collapseNS . mapNS believe_me

export
fromUnion12 : NP SafeCast [a,b,c,d,e,f,g,h,i,j,k,l] =>
             Union12 a b c d e f g h i j k l -> Maybe $ NS I [a,b,c,d,e,f,g,h,i,j,k,l]
fromUnion12 = safeCastNS

export
(npp : NPP ToFFI [a,b,c,d,e,f,g,h,i,j,k,l] [m,n,o,p,q,r,s,t,u,v,w,x]) =>
  ToFFI (NS I [a,b,c,d,e,f,g,h,i,j,k,l]) (Union12 m n o p q r s t u v w x) where
    toFFI ns = toUnion12 $ appToFFI npp ns

export
(npp : NPP FromFFI [a,b,c,d,e,f,g,h,i,j,k,l] [m,n,o,p,q,r,s,t,u,v,w,x]) =>
NP SafeCast [m,n,o,p,q,r,s,t,u,v,w,x] =>
  FromFFI (NS I [a,b,c,d,e,f,g,h,i,j,k,l]) (Union12 m n o p q r s t u v w x) where
    fromFFI ns = fromUnion12 ns >>= appFromFFI npp

export
FromFFI (Union12 a b c d e f g h i j k l) (Union12 a b c d e f g h i j k l) where
  fromFFI = Just

export
ToFFI (Union12 a b c d e f g h i j k l) (Union12 a b c d e f g h i j k l) where
  toFFI = id

--------------------------------------------------------------------------------
--          Union13
--------------------------------------------------------------------------------

export
data Union13 : Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type where [external]

export
toUnion13 : NS I [a,b,c,d,e,f,g,h,i,j,k,l,a1] -> Union13 a b c d e f g h i j k l a1
toUnion13 = collapseNS . mapNS believe_me

export
fromUnion13 : NP SafeCast [a,b,c,d,e,f,g,h,i,j,k,l,a1] =>
             Union13 a b c d e f g h i j k l a1 -> Maybe $ NS I [a,b,c,d,e,f,g,h,i,j,k,l,a1]
fromUnion13 = safeCastNS

export
(npp : NPP ToFFI [a,b,c,d,e,f,g,h,i,j,k,l,a1] [m,n,o,p,q,r,s,t,u,v,w,x,y]) =>
  ToFFI (NS I [a,b,c,d,e,f,g,h,i,j,k,l,a1]) (Union13 m n o p q r s t u v w x y) where
    toFFI ns = toUnion13 $ appToFFI npp ns

export
(npp : NPP FromFFI [a,b,c,d,e,f,g,h,i,j,k,l,a1] [m,n,o,p,q,r,s,t,u,v,w,x,y]) =>
NP SafeCast [m,n,o,p,q,r,s,t,u,v,w,x,y] =>
  FromFFI (NS I [a,b,c,d,e,f,g,h,i,j,k,l,a1]) (Union13 m n o p q r s t u v w x y) where
    fromFFI ns = fromUnion13 ns >>= appFromFFI npp

export
FromFFI (Union13 a b c d e f g h i j k l m) (Union13 a b c d e f g h i j k l m) where
  fromFFI = Just

export
ToFFI (Union13 a b c d e f g h i j k l m) (Union13 a b c d e f g h i j k l m) where
  toFFI = id

--------------------------------------------------------------------------------
--          Union14
--------------------------------------------------------------------------------

export
data Union14 : Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type where [external]

export
toUnion14 : NS I [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2] -> Union14 a b c d e f g h i j k l a1 a2
toUnion14 = collapseNS . mapNS believe_me

export
fromUnion14 : NP SafeCast [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2] =>
             Union14 a b c d e f g h i j k l a1 a2 -> Maybe $ NS I [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2]
fromUnion14 = safeCastNS

export
(npp : NPP ToFFI [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2] [m,n,o,p,q,r,s,t,u,v,w,x,y,z]) =>
  ToFFI (NS I [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2]) (Union14 m n o p q r s t u v w x y z) where
    toFFI ns = toUnion14 $ appToFFI npp ns

export
(npp : NPP FromFFI [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2] [m,n,o,p,q,r,s,t,u,v,w,x,y,z]) =>
NP SafeCast [m,n,o,p,q,r,s,t,u,v,w,x,y,z] =>
  FromFFI (NS I [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2]) (Union14 m n o p q r s t u v w x y z) where
    fromFFI ns = fromUnion14 ns >>= appFromFFI npp

export
FromFFI (Union14 a b c d e f g h i j k l m n) (Union14 a b c d e f g h i j k l m n) where
  fromFFI = Just

export
ToFFI (Union14 a b c d e f g h i j k l m n) (Union14 a b c d e f g h i j k l m n) where
  toFFI = id

--------------------------------------------------------------------------------
--          Union15
--------------------------------------------------------------------------------

export
data Union15 : Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type where [external]

export
toUnion15 : NS I [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2,a3] -> Union15 a b c d e f g h i j k l a1 a2 a3
toUnion15 = collapseNS . mapNS believe_me

export
fromUnion15 : NP SafeCast [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2,a3] =>
             Union15 a b c d e f g h i j k l a1 a2 a3 -> Maybe $ NS I [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2,a3]
fromUnion15 = safeCastNS

export
(npp : NPP ToFFI [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2,a3] [m,n,o,p,q,r,s,t,u,v,w,x,y,z,z1]) =>
  ToFFI (NS I [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2,a3]) (Union15 m n o p q r s t u v w x y z z1) where
    toFFI ns = toUnion15 $ appToFFI npp ns

export
(npp : NPP FromFFI [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2,a3] [m,n,o,p,q,r,s,t,u,v,w,x,y,z,z1]) =>
NP SafeCast [m,n,o,p,q,r,s,t,u,v,w,x,y,z,z1] =>
  FromFFI (NS I [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2,a3]) (Union15 m n o p q r s t u v w x y z z1) where
    fromFFI ns = fromUnion15 ns >>= appFromFFI npp

export
FromFFI (Union15 a b c d e f g h i j k l m n o) (Union15 a b c d e f g h i j k l m n o) where
  fromFFI = Just

export
ToFFI (Union15 a b c d e f g h i j k l m n o) (Union15 a b c d e f g h i j k l m n o) where
  toFFI = id

--------------------------------------------------------------------------------
--          Union16
--------------------------------------------------------------------------------

export
data Union16 : Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type where [external]

export
toUnion16 : NS I [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2,a3,a4] -> Union16 a b c d e f g h i j k l a1 a2 a3 a4
toUnion16 = collapseNS . mapNS believe_me

export
fromUnion16 : NP SafeCast [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2,a3,a4] =>
             Union16 a b c d e f g h i j k l a1 a2 a3 a4 -> Maybe $ NS I [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2,a3,a4]
fromUnion16 = safeCastNS

export
(npp : NPP ToFFI [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2,a3,a4] [m,n,o,p,q,r,s,t,u,v,w,x,y,z,z1,z2]) =>
  ToFFI (NS I [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2,a3,a4]) (Union16 m n o p q r s t u v w x y z z1 z2) where
    toFFI ns = toUnion16 $ appToFFI npp ns

export
(npp : NPP FromFFI [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2,a3,a4] [m,n,o,p,q,r,s,t,u,v,w,x,y,z,z1,z2]) =>
NP SafeCast [m,n,o,p,q,r,s,t,u,v,w,x,y,z,z1,z2] =>
  FromFFI (NS I [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2,a3,a4]) (Union16 m n o p q r s t u v w x y z z1 z2) where
    fromFFI ns = fromUnion16 ns >>= appFromFFI npp

export
FromFFI (Union16 a b c d e f g h i j k l m n o p) (Union16 a b c d e f g h i j k l m n o p) where
  fromFFI = Just

export
ToFFI (Union16 a b c d e f g h i j k l m n o p) (Union16 a b c d e f g h i j k l m n o p) where
  toFFI = id
