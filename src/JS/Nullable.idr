module JS.Nullable

import Data.List.Elem
import JS.Inheritance
import JS.Marshall
import JS.Util

%default total

export
data Nullable : Type -> Type where [external]

%foreign "javascript:lambda:()=>null"
prim__null : AnyPtr

export
null : Nullable a
null = believe_me prim__null

export
nonNull : a -> Nullable a
nonNull = believe_me

||| Tests, whether a value of questionable origin is null
export
isNull : a -> Bool
isNull = eqv prim__null

export
maybeToNullable : Maybe a -> Nullable a
maybeToNullable = maybe null nonNull

export
mayUp : (0 _ : JSType a) => Maybe a -> {auto 0 _ : Elem b (Types a)} -> Nullable b
mayUp x = maybe null (\v => nonNull $ up v) x

export
nullableToMaybe : Nullable a -> Maybe a
nullableToMaybe v = if isNull v then Nothing else Just (believe_me v)

export
ToFFI a b => ToFFI (Maybe a) (Nullable b) where
  toFFI = maybeToNullable . map toFFI

export
FromFFI a b => FromFFI (Maybe a) (Nullable b) where
  fromFFI v = case nullableToMaybe v of
                   Nothing => Just Nothing
                   Just x  => map Just $ fromFFI x

export
SafeCast a => SafeCast (Nullable a) where
  safeCast ptr = if isNull ptr
                    then Just null
                    else map nonNull $ safeCast ptr
