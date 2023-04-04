||| Union types (= sum types) in the FFI.
module JS.Union

import Data.List.Quantifiers.Extra
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

appToFFI : NPP ToFFI ps1 ps2 -> HSum ps1 -> HSum ps2
appToFFI (_ :: _) (Here v)  = Here $ toFFI v
appToFFI (_ :: t) (There y) = There $ appToFFI t y
appToFFI [] x = absurd x

appFromFFI : NPP FromFFI ps1 ps2 -> HSum ps2 -> Maybe $ HSum ps1
appFromFFI (_ :: _) (Here v)  = Here <$> fromFFI v
appFromFFI (_ :: t) (There y) = There <$> appFromFFI t y
appFromFFI []       x         = absurd x

--------------------------------------------------------------------------------
--          Union2
--------------------------------------------------------------------------------

export
data Union2 : Type -> Type -> Type where [external]

export
toUnion2 : HSum [a,b] -> Union2 a b
toUnion2 = collapse' . hmap believe_me

export
fromUnion2 : All SafeCast [a,b] => Union2 a b -> Maybe $ HSum [a,b]
fromUnion2 = safeCastAny

export
(npp : NPP ToFFI [a,b] [m,n]) =>
  ToFFI (HSum [a,b]) (Union2 m n) where
    toFFI ns = toUnion2 $ appToFFI npp ns

export
(npp : NPP FromFFI [a,b] [m,n]) => All SafeCast [m,n] =>
  FromFFI (HSum [a,b]) (Union2 m n) where
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
toUnion3 : HSum [a,b,c] -> Union3 a b c
toUnion3 = collapse' . hmap believe_me

export
fromUnion3 : All SafeCast [a,b,c] => Union3 a b c -> Maybe $ HSum [a,b,c]
fromUnion3 = safeCastAny

export
(npp : NPP ToFFI [a,b,c] [m,n,o]) =>
  ToFFI (HSum [a,b,c]) (Union3 m n o) where
    toFFI ns = toUnion3 $ appToFFI npp ns

export
(npp : NPP FromFFI [a,b,c] [m,n,o]) => All SafeCast [m,n,o] =>
  FromFFI (HSum [a,b,c]) (Union3 m n o) where
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
toUnion4 : HSum [a,b,c,d] -> Union4 a b c d
toUnion4 = collapse' . hmap believe_me

export
fromUnion4 : All SafeCast [a,b,c,d] => Union4 a b c d -> Maybe $ HSum [a,b,c,d]
fromUnion4 = safeCastAny

export
(npp : NPP ToFFI [a,b,c,d] [m,n,o,p]) =>
  ToFFI (HSum [a,b,c,d]) (Union4 m n o p) where
    toFFI ns = toUnion4 $ appToFFI npp ns

export
(npp : NPP FromFFI [a,b,c,d] [m,n,o,p]) => All SafeCast [m,n,o,p] =>
  FromFFI (HSum [a,b,c,d]) (Union4 m n o p) where
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
toUnion5 : HSum [a,b,c,d,e] -> Union5 a b c d e
toUnion5 = collapse' . hmap believe_me

export
fromUnion5 : All SafeCast [a,b,c,d,e] =>
             Union5 a b c d e -> Maybe $ HSum [a,b,c,d,e]
fromUnion5 = safeCastAny

export
(npp : NPP ToFFI [a,b,c,d,e] [m,n,o,p,q]) =>
  ToFFI (HSum [a,b,c,d,e]) (Union5 m n o p q) where
    toFFI ns = toUnion5 $ appToFFI npp ns

export
(npp : NPP FromFFI [a,b,c,d,e] [m,n,o,p,r]) => All SafeCast [m,n,o,p,r] =>
  FromFFI (HSum [a,b,c,d,e]) (Union5 m n o p r) where
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
toUnion6 : HSum [a,b,c,d,e,f] -> Union6 a b c d e f
toUnion6 = collapse' . hmap believe_me

export
fromUnion6 : All SafeCast [a,b,c,d,e,f] =>
             Union6 a b c d e f -> Maybe $ HSum [a,b,c,d,e,f]
fromUnion6 = safeCastAny

export
(npp : NPP ToFFI [a,b,c,d,e,f] [m,n,o,p,q,r]) =>
  ToFFI (HSum [a,b,c,d,e,f]) (Union6 m n o p q r) where
    toFFI ns = toUnion6 $ appToFFI npp ns

export
(npp : NPP FromFFI [a,b,c,d,e,f] [m,n,o,p,r,s]) =>
All SafeCast [m,n,o,p,r,s] =>
  FromFFI (HSum [a,b,c,d,e,f]) (Union6 m n o p r s) where
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
toUnion7 : HSum [a,b,c,d,e,f,g] -> Union7 a b c d e f g
toUnion7 = collapse' . hmap believe_me

export
fromUnion7 : All SafeCast [a,b,c,d,e,f,g] =>
             Union7 a b c d e f g -> Maybe $ HSum [a,b,c,d,e,f,g]
fromUnion7 = safeCastAny

export
(npp : NPP ToFFI [a,b,c,d,e,f,g] [m,n,o,p,q,r,s]) =>
  ToFFI (HSum [a,b,c,d,e,f,g]) (Union7 m n o p q r s) where
    toFFI ns = toUnion7 $ appToFFI npp ns

export
(npp : NPP FromFFI [a,b,c,d,e,f,g] [m,n,o,p,r,s,t]) =>
All SafeCast [m,n,o,p,r,s,t] =>
  FromFFI (HSum [a,b,c,d,e,f,g]) (Union7 m n o p r s t) where
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
toUnion8 : HSum [a,b,c,d,e,f,g,h] -> Union8 a b c d e f g h
toUnion8 = collapse' . hmap believe_me

export
fromUnion8 : All SafeCast [a,b,c,d,e,f,g,h] =>
             Union8 a b c d e f g h -> Maybe $ HSum [a,b,c,d,e,f,g,h]
fromUnion8 = safeCastAny

export
(npp : NPP ToFFI [a,b,c,d,e,f,g,h] [m,n,o,p,q,r,s,t]) =>
  ToFFI (HSum [a,b,c,d,e,f,g,h]) (Union8 m n o p q r s t) where
    toFFI ns = toUnion8 $ appToFFI npp ns

export
(npp : NPP FromFFI [a,b,c,d,e,f,g,h] [m,n,o,p,r,s,t,u]) =>
All SafeCast [m,n,o,p,r,s,t,u] =>
  FromFFI (HSum [a,b,c,d,e,f,g,h]) (Union8 m n o p r s t u) where
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
toUnion9 : HSum [a,b,c,d,e,f,g,h,i] -> Union9 a b c d e f g h i
toUnion9 = collapse' . hmap believe_me

export
fromUnion9 : All SafeCast [a,b,c,d,e,f,g,h,i] =>
             Union9 a b c d e f g h i -> Maybe $ HSum [a,b,c,d,e,f,g,h,i]
fromUnion9 = safeCastAny

export
(npp : NPP ToFFI [a,b,c,d,e,f,g,h,i] [m,n,o,p,q,r,s,t,u]) =>
  ToFFI (HSum [a,b,c,d,e,f,g,h,i]) (Union9 m n o p q r s t u) where
    toFFI ns = toUnion9 $ appToFFI npp ns

export
(npp : NPP FromFFI [a,b,c,d,e,f,g,h,i] [m,n,o,p,r,s,t,u,v]) =>
All SafeCast [m,n,o,p,r,s,t,u,v] =>
  FromFFI (HSum [a,b,c,d,e,f,g,h,i]) (Union9 m n o p r s t u v) where
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
toUnion10 : HSum [a,b,c,d,e,f,g,h,i,j] -> Union10 a b c d e f g h i j
toUnion10 = collapse' . hmap believe_me

export
fromUnion10 : All SafeCast [a,b,c,d,e,f,g,h,i,j] =>
             Union10 a b c d e f g h i j -> Maybe $ HSum [a,b,c,d,e,f,g,h,i,j]
fromUnion10 = safeCastAny

export
(npp : NPP ToFFI [a,b,c,d,e,f,g,h,i,j] [m,n,o,p,q,r,s,t,u,v]) =>
  ToFFI (HSum [a,b,c,d,e,f,g,h,i,j]) (Union10 m n o p q r s t u v) where
    toFFI ns = toUnion10 $ appToFFI npp ns

export
(npp : NPP FromFFI [a,b,c,d,e,f,g,h,i,j] [m,n,o,p,r,s,t,u,v,w]) =>
All SafeCast [m,n,o,p,r,s,t,u,v,w] =>
  FromFFI (HSum [a,b,c,d,e,f,g,h,i,j]) (Union10 m n o p r s t u v w) where
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
toUnion11 : HSum [a,b,c,d,e,f,g,h,i,j,k] -> Union11 a b c d e f g h i j k
toUnion11 = collapse' . hmap believe_me

export
fromUnion11 : All SafeCast [a,b,c,d,e,f,g,h,i,j,k] =>
             Union11 a b c d e f g h i j k -> Maybe $ HSum [a,b,c,d,e,f,g,h,i,j,k]
fromUnion11 = safeCastAny

export
(npp : NPP ToFFI [a,b,c,d,e,f,g,h,i,j,k] [m,n,o,p,q,r,s,t,u,v,w]) =>
  ToFFI (HSum [a,b,c,d,e,f,g,h,i,j,k]) (Union11 m n o p q r s t u v w) where
    toFFI ns = toUnion11 $ appToFFI npp ns

export
(npp : NPP FromFFI [a,b,c,d,e,f,g,h,i,j,k] [m,n,o,p,q,r,s,t,u,v,w]) =>
All SafeCast [m,n,o,p,q,r,s,t,u,v,w] =>
  FromFFI (HSum [a,b,c,d,e,f,g,h,i,j,k]) (Union11 m n o p q r s t u v w) where
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
toUnion12 : HSum [a,b,c,d,e,f,g,h,i,j,k,l] -> Union12 a b c d e f g h i j k l
toUnion12 = collapse' . hmap believe_me

export
fromUnion12 : All SafeCast [a,b,c,d,e,f,g,h,i,j,k,l] =>
             Union12 a b c d e f g h i j k l -> Maybe $ HSum [a,b,c,d,e,f,g,h,i,j,k,l]
fromUnion12 = safeCastAny

export
(npp : NPP ToFFI [a,b,c,d,e,f,g,h,i,j,k,l] [m,n,o,p,q,r,s,t,u,v,w,x]) =>
  ToFFI (HSum [a,b,c,d,e,f,g,h,i,j,k,l]) (Union12 m n o p q r s t u v w x) where
    toFFI ns = toUnion12 $ appToFFI npp ns

export
(npp : NPP FromFFI [a,b,c,d,e,f,g,h,i,j,k,l] [m,n,o,p,q,r,s,t,u,v,w,x]) =>
All SafeCast [m,n,o,p,q,r,s,t,u,v,w,x] =>
  FromFFI (HSum [a,b,c,d,e,f,g,h,i,j,k,l]) (Union12 m n o p q r s t u v w x) where
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
toUnion13 : HSum [a,b,c,d,e,f,g,h,i,j,k,l,a1] -> Union13 a b c d e f g h i j k l a1
toUnion13 = collapse' . hmap believe_me

export
fromUnion13 : All SafeCast [a,b,c,d,e,f,g,h,i,j,k,l,a1] =>
             Union13 a b c d e f g h i j k l a1 -> Maybe $ HSum [a,b,c,d,e,f,g,h,i,j,k,l,a1]
fromUnion13 = safeCastAny

export
(npp : NPP ToFFI [a,b,c,d,e,f,g,h,i,j,k,l,a1] [m,n,o,p,q,r,s,t,u,v,w,x,y]) =>
  ToFFI (HSum [a,b,c,d,e,f,g,h,i,j,k,l,a1]) (Union13 m n o p q r s t u v w x y) where
    toFFI ns = toUnion13 $ appToFFI npp ns

export
(npp : NPP FromFFI [a,b,c,d,e,f,g,h,i,j,k,l,a1] [m,n,o,p,q,r,s,t,u,v,w,x,y]) =>
All SafeCast [m,n,o,p,q,r,s,t,u,v,w,x,y] =>
  FromFFI (HSum [a,b,c,d,e,f,g,h,i,j,k,l,a1]) (Union13 m n o p q r s t u v w x y) where
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
toUnion14 : HSum [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2] -> Union14 a b c d e f g h i j k l a1 a2
toUnion14 = collapse' . hmap believe_me

export
fromUnion14 : All SafeCast [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2] =>
             Union14 a b c d e f g h i j k l a1 a2 -> Maybe $ HSum [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2]
fromUnion14 = safeCastAny

export
(npp : NPP ToFFI [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2] [m,n,o,p,q,r,s,t,u,v,w,x,y,z]) =>
  ToFFI (HSum [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2]) (Union14 m n o p q r s t u v w x y z) where
    toFFI ns = toUnion14 $ appToFFI npp ns

export
(npp : NPP FromFFI [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2] [m,n,o,p,q,r,s,t,u,v,w,x,y,z]) =>
All SafeCast [m,n,o,p,q,r,s,t,u,v,w,x,y,z] =>
  FromFFI (HSum [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2]) (Union14 m n o p q r s t u v w x y z) where
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
toUnion15 : HSum [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2,a3] -> Union15 a b c d e f g h i j k l a1 a2 a3
toUnion15 = collapse' . hmap believe_me

export
fromUnion15 : All SafeCast [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2,a3] =>
             Union15 a b c d e f g h i j k l a1 a2 a3 -> Maybe $ HSum [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2,a3]
fromUnion15 = safeCastAny

export
(npp : NPP ToFFI [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2,a3] [m,n,o,p,q,r,s,t,u,v,w,x,y,z,z1]) =>
  ToFFI (HSum [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2,a3]) (Union15 m n o p q r s t u v w x y z z1) where
    toFFI ns = toUnion15 $ appToFFI npp ns

export
(npp : NPP FromFFI [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2,a3] [m,n,o,p,q,r,s,t,u,v,w,x,y,z,z1]) =>
All SafeCast [m,n,o,p,q,r,s,t,u,v,w,x,y,z,z1] =>
  FromFFI (HSum [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2,a3]) (Union15 m n o p q r s t u v w x y z z1) where
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
toUnion16 : HSum [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2,a3,a4] -> Union16 a b c d e f g h i j k l a1 a2 a3 a4
toUnion16 = collapse' . hmap believe_me

export
fromUnion16 : All SafeCast [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2,a3,a4] =>
             Union16 a b c d e f g h i j k l a1 a2 a3 a4 -> Maybe $ HSum [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2,a3,a4]
fromUnion16 = safeCastAny

export
(npp : NPP ToFFI [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2,a3,a4] [m,n,o,p,q,r,s,t,u,v,w,x,y,z,z1,z2]) =>
  ToFFI (HSum [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2,a3,a4]) (Union16 m n o p q r s t u v w x y z z1 z2) where
    toFFI ns = toUnion16 $ appToFFI npp ns

export
(npp : NPP FromFFI [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2,a3,a4] [m,n,o,p,q,r,s,t,u,v,w,x,y,z,z1,z2]) =>
All SafeCast [m,n,o,p,q,r,s,t,u,v,w,x,y,z,z1,z2] =>
  FromFFI (HSum [a,b,c,d,e,f,g,h,i,j,k,l,a1,a2,a3,a4]) (Union16 m n o p q r s t u v w x y z z1 z2) where
    fromFFI ns = fromUnion16 ns >>= appFromFFI npp

export
FromFFI (Union16 a b c d e f g h i j k l m n o p) (Union16 a b c d e f g h i j k l m n o p) where
  fromFFI = Just

export
ToFFI (Union16 a b c d e f g h i j k l m n o p) (Union16 a b c d e f g h i j k l m n o p) where
  toFFI = id
