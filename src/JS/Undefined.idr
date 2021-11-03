module JS.Undefined

import Data.List.Elem
import JS.Util
import JS.Inheritance
import JS.Marshall
import JS.Nullable

%default total

--------------------------------------------------------------------------------
--          Undefined
--------------------------------------------------------------------------------

export
data Undefined : Type where [external]

||| The `undefined` constant
export
%foreign "javascript:lambda:()=>undefined"
undefined : Undefined

export
Eq Undefined where
  _ == _ = True

export
Show Undefined where
  show _ = "undefined"

%foreign "javascript:lambda:x=>x === undefined?1:0"
prim__isUndefined : AnyPtr -> Double

||| Tests, whether a value of questionable origin is undefined
export
isUndefined : a -> Bool
isUndefined v = doubleToBool $ prim__isUndefined (believe_me v)

export
ToFFI Undefined Undefined where
  toFFI = id

export
FromFFI Undefined Undefined where
  fromFFI = Just

export
SafeCast Undefined where
  safeCast ptr = if isUndefined ptr then Just undefined else Nothing

--------------------------------------------------------------------------------
--          UndefOr
--------------------------------------------------------------------------------

export
data UndefOr : Type -> Type where [external]

export
undef : UndefOr a
undef = believe_me undefined

export
def : a -> UndefOr a
def = believe_me

export
SafeCast a => SafeCast (UndefOr a) where
  safeCast ptr = if isUndefined ptr
                    then Just undef
                    else map def $ safeCast ptr

--------------------------------------------------------------------------------
--          Optional
--------------------------------------------------------------------------------

public export
data Optional : (a : Type) -> Type where
  Undef : Optional a
  Def   : a -> Optional a

export
Show a => Show (Optional a) where
  showPrec _ Undef   = "Undef"
  showPrec p (Def a) = showCon p "Def" (showArg a)

public export
Eq a => Eq (Optional a) where
  Undef == Undef = True
  Def x == Def y = x == y
  _     == _     = False

public export
Ord a => Ord (Optional a) where
  compare Undef Undef     = EQ
  compare Undef (Def _)   = LT
  compare (Def _) Undef   = GT
  compare (Def x) (Def y) = compare x y

public export
Functor Optional where
  map _ Undef   = Undef
  map f (Def x) = Def $ f x

public export
Applicative Optional where
  pure = Def
  Def f <*> Def a = Def $ f a
  _     <*>     _ = Undef

public export
Monad Optional where
  Undef >>= _ = Undef
  Def x >>= f = f x

public export
Alternative Optional where
  empty = Undef
  Undef <|> x = x
  Def v <|> _ = Def v

public export
Foldable Optional where
  foldr _ acc Undef   = acc
  foldr f acc (Def x) = f x acc

  foldl _ acc Undef   = acc
  foldl f acc (Def x) = f acc x

  null Undef   = True
  null (Def _) = False

public export
Traversable Optional where
  traverse f Undef   = pure Undef
  traverse f (Def x) = Def <$> f x

public export
optional : Lazy b -> (a -> b) -> Optional a -> b
optional x f Undef   = x
optional _ f (Def y) = f y

public export
fromOptional : Lazy a -> Optional a -> a
fromOptional a Undef   = a
fromOptional _ (Def a) = a

export
optionalToUndefOr : Optional a -> UndefOr a
optionalToUndefOr = optional undef def

export
optUp : (0 _ : JSType a) => Optional a -> {auto 0 _ : Elem b (Types a)} -> UndefOr b
optUp x = optional undef (\v => def $ up v) x

export
omyUp :  (0 _ : JSType a)
      => Optional (Maybe a)
      -> {auto 0 _ : Elem b (Types a)}
      -> UndefOr (Nullable b)
omyUp x = optionalToUndefOr $ map (\m => mayUp m) x

public export
maybeToOptional : Maybe a -> Optional a
maybeToOptional = maybe Undef Def

public export
optionalToMaybe : Optional a -> Maybe a
optionalToMaybe = optional Nothing Just

export
undeforToOptional : UndefOr a -> Optional a
undeforToOptional v = if isUndefined v then Undef else Def (believe_me v)

export
undeforToMaybe : UndefOr a -> Maybe a
undeforToMaybe v = if isUndefined v then Nothing else Just (believe_me v)

export
ToFFI a b => ToFFI (Optional a) (UndefOr b) where
  toFFI = optionalToUndefOr . map toFFI

export
FromFFI a b => FromFFI (Optional a) (UndefOr b) where
  fromFFI v = case undeforToOptional v of
                   Undef => Just Undef
                   Def x => map Def $ fromFFI x
