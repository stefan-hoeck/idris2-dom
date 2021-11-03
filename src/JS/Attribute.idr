module JS.Attribute

import Control.Monad.Either
import Data.SOP
import JS.Callback
import JS.Marshall
import JS.Nullable
import JS.Undefined
import JS.Util

%default total

||| A read-write attribute of a JS object.
|||
||| @alwaysReturns : Bool index if the attribute's getter can
|||                  always return a value that is neither
|||                  `null` nor `undefined`. This means, that the
|||                  attribute is non-nullable and either mandatory
|||                  or optional with a proper default value.
|||
||| @f             : Context of values represented by the attribute.
|||                  This is `Maybe` if the attribute is nullable,
|||                  `Optional` if it is an optional attribute on
|||                  a dictionary type, or `I` if it is mandatory
|||                  and non-nullable.
|||
||| @              : Type of values stored in the attribute
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

  ||| A nullable, non-optional attribute.
  NullableAttr :  (get : JSIO (Maybe a))
               -> (set : Maybe a -> JSIO ())
               -> Attribute False Maybe a

  ||| An optional attribute with a predefined default value.
  OptionalAttr :  (get : JSIO (Optional a))
               -> (set : Optional a -> JSIO ())
               -> (def : a)
               -> Attribute True Optional a

  ||| An optional attribute without default value.
  OptionalAttrNoDefault :  (get : JSIO (Optional a))
                        -> (set : Optional a -> JSIO ())
                        -> Attribute False Optional a

||| Returns the value of an attribute in its proper context.
||| Typically used in infix notation.
|||
||| ```idris example
||| textField `get` value
||| ```
export
get : (o : obj) -> (attr : obj -> Attribute b f a) -> JSIO $ f a
get o g = case g o of
               Attr                  gt _   => gt
               NullableAttr          gt _   => gt
               OptionalAttr          gt _ _ => gt
               OptionalAttrNoDefault gt _   => gt

||| Maps a function over the value retrieved from an `Attribute`.
export
over : (a -> b) -> (attr : Attribute x f a) -> JSIO $ f b
over f (Attr gt _)                  = map f gt
over f (NullableAttr gt _)          = map f <$> gt
over f (OptionalAttr gt _ _)        = map f <$> gt
over f (OptionalAttrNoDefault gt _) = map f <$> gt

||| Flipped version of `get`. This is useful when
||| combined with the bind operator:
|||
||| ```idris example
||| body >>= to className
||| ```
export
to : (attr : obj -> Attribute b f a) -> (o : obj) -> JSIO $ f a
to = flip get


||| Sets the value of an `Attribute`.
export
set' : (attr : Attribute b f a) -> f a -> JSIO ()
set' (Attr                  _ s)   = s
set' (NullableAttr          _ s)   = s
set' (OptionalAttr          _ s _) = s
set' (OptionalAttrNoDefault _ s)   = s

||| Gets the value of an `Attribute`. Since this operates
||| on an `Attribute True`, it is guaranteed to always yield
||| a non-nullable value.
export
getDef : (o : obj) -> (attr : obj -> Attribute True f a) -> JSIO a
getDef o g = case g o of
                  Attr         gt _     => gt
                  OptionalAttr gt _ def => map (fromOptional def) gt

||| Maps a function over the value retrieved from an `Attribute`.
||| Since this operates
||| on an `Attribute True`, it is guaranteed to always yield
||| a non-nullable value.
export
overDef : (a -> b) -> (attr : Attribute True f a) -> JSIO b
overDef f a = f <$> getDef () (const a)

||| Flipped version of `getDef`.
export
toDef : (attr : obj -> Attribute True f a) -> (o : obj) -> JSIO a
toDef = flip getDef

||| Sets the value of an `Attribute`.
|||
||| ```idris example
||| disabled btn `set` True
||| ```
export
set : Attribute b f a -> a -> JSIO ()
set (Attr         _ s)          y = s y
set (NullableAttr _ s)          y = s (Just y)
set (OptionalAttr _ s _)        y = s (Def y)
set (OptionalAttrNoDefault _ s) y = s (Def y)

||| Modifies the stored value of an `Attribute`.
|||
||| Please note, that this will NOT change the attribute's
||| values, if the attribute is unset or `null`.
export
mod : Attribute b f a -> (a -> a) -> JSIO ()
mod (Attr         g s)          f = g >>= s . f
mod (NullableAttr g s)          f = g >>= s . map f
mod (OptionalAttr g s _)        f = g >>= s . map f
mod (OptionalAttrNoDefault g s) f = g >>= s . map f

||| Unsets the value of an optional or nullable attribute.
export
unset : Alternative f => (o : obj) -> (obj -> Attribute b f a) -> JSIO ()
unset o g = set' (g o) empty

infix 1 .=, =., %=, =%

||| Operator version of `set`.
|||
||| ```idris example
||| disabled btn .= True
||| ```
export
(.=) : Attribute b f a -> a -> JSIO ()
(.=) = set

||| Operator version of `mod`.
|||
||| As with `mod`, this will NOT change the attribute's
||| values, if the attribute is unset or `null`.
|||
||| ```idris example
||| toggleCheckBox : HTMLInputElement -> JSIO ()
||| toggleCheckBox cbx = checked cbx %= not
||| ```
export
(%=) : Attribute b f a -> (a -> a) -> JSIO ()
(%=) = mod

||| Like `set`, but useful when the object, on which
||| an attribute should operate, is supposed to
||| be the last argument (for instance, when
||| iterating over a foldable):
|||
||| ```idris example
||| disableAll : List HTMLButtonElement -> JSIO ()
||| disableAll buttons = for_ buttons $ disabled =. True
||| ```
export
(=.) : (obj -> Attribute b f a) -> a -> obj -> JSIO ()
(=.) f v o = set (f o) v

||| Like `mod`, but useful when the object, on which
||| an attribute should operate, is supposed to
||| be the last argument (for instance, when
||| iterating over a foldable):
|||
||| ```idris example
||| toggleAll : List HTMLInputElement -> JSIO ()
||| toggleAll cbxs = for_ cbxs $ checked =% not
||| ```
export
(=%) : (obj -> Attribute b f a) -> (a -> a) -> obj -> JSIO ()
(=%) f g o = mod (f o) g

infixr 0 !>, ?>

||| Sets a callback function at an attribute.
|||
||| ```idris
||| onclick btn !> consoleLog . jsShow
||| ```
export
(!>) : Callback a fun => Attribute b f a -> fun -> JSIO ()
a !> cb = callback cb >>= set a

||| Sets a callback action at an attribute. This is like `(!>)`
||| but ignores its input.
|||
||| ```idris
||| onclick btn ?> consoleLog "Boom!"
||| ```
export
(?>) : Callback a (x -> y) => Attribute b f a -> y -> JSIO ()
a ?> v = a !> const v

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
