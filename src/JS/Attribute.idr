module JS.Attribute

import Control.Monad.Either
import Data.SOP
import JS.Marshall
import JS.Nullable
import JS.Undefined
import JS.Util

||| A read-write attribute of a JS object.
public export
data Attribute :  (alwaysReturns : Bool)
               -> (f : Type -> Type)
               -> (a : Type)
               -> Type where
  ||| A non-optional attribute.
  |||
  ||| This is for data types, which are guaranteed to always return
  ||| a value that is neither `null` nor `undefined`.
  Attr : (get : JSIO a) -> (set : a -> JSIO ()) -> Attribute True I a

  NullableAttr :  (get : JSIO (Maybe a))
               -> (set : Maybe a -> JSIO ())
               -> Attribute False Maybe a

  OptionalAttr :  (get : JSIO (Optional a))
               -> (set : Optional a -> JSIO ())
               -> (def : a)
               -> Attribute True Optional a

  OptionalAttrNoDefault :  (get : JSIO (Optional a))
                        -> (set : Optional a -> JSIO ())
                        -> Attribute False Optional a

export
get' : (o : obj) -> (attr : obj -> Attribute b f a) -> JSIO $ f a
get' o g = case g o of
                Attr                  gt _   => gt
                NullableAttr          gt _   => gt
                OptionalAttr          gt _ _ => gt
                OptionalAttrNoDefault gt _   => gt


export
set' : (attr : Attribute b f a) -> f a -> JSIO ()
set' (Attr                  _ s)   = s
set' (NullableAttr          _ s)   = s
set' (OptionalAttr          _ s _) = s
set' (OptionalAttrNoDefault _ s)   = s

export
get : (o : obj) -> (attr : obj -> Attribute True f a) -> JSIO a
get o g = case g o of
               Attr         gt _     => gt
               OptionalAttr gt _ def => map (fromOptional def) gt

export
set : Attribute b f a -> a -> JSIO ()
set (Attr         _ s)   y = s y
set (NullableAttr _ s)   y = s (Just y)
set (OptionalAttr _ s _) y = s (Def y)
set (OptionalAttrNoDefault _ s) y = s (Def y)

export
unset : Alternative f => (o : obj) -> (obj -> Attribute b f a) -> JSIO ()
unset o g = set' (g o) empty

infix 0 .=

export
(.=) : Attribute b f a -> a -> JSIO () 
(.=) = set

--------------------------------------------------------------------------------
--          Creating Attributes
--------------------------------------------------------------------------------

export
fromPrim :  (ToFFI a b, FromFFI a b)
         => String
         -> (obj -> PrimIO b)
         -> (obj -> b -> PrimIO ())
         -> obj
         -> Attribute True I a
fromPrim msg g s o =
  Attr (tryJS msg $ g o) (\a => primJS $ s o (toFFI a))

export
fromNullablePrim :  (ToFFI a b, FromFFI a b)
                 => String
                 -> (obj -> PrimIO $ Nullable b)
                 -> (obj -> Nullable b -> PrimIO ())
                 -> obj
                 -> Attribute False Maybe a
fromNullablePrim msg g s o =
  NullableAttr (tryJS msg $ g o) (\a => primJS $ s o (toFFI a))

export
fromUndefOrPrim :  (ToFFI a b, FromFFI a b)
                => String
                -> (obj -> PrimIO $ UndefOr b)
                -> (obj -> UndefOr b -> PrimIO ())
                -> a
                -> obj
                -> Attribute True Optional a
fromUndefOrPrim msg g s def o =
  OptionalAttr (tryJS msg $ g o) (\a => primJS $ s o (toFFI a)) def

export
fromUndefOrPrimNoDefault :  (ToFFI a b, FromFFI a b)
                         => String
                         -> (obj -> PrimIO $ UndefOr b)
                         -> (obj -> UndefOr b -> PrimIO ())
                         -> obj
                         -> Attribute False Optional a
fromUndefOrPrimNoDefault msg g s o =
  OptionalAttrNoDefault (tryJS msg $ g o) (\a => primJS $ s o (toFFI a))
