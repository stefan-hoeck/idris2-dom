||| Interface and utilities for encoding Idris2 values to JSON
||| by using the functionality from JS.Object and Javascript's
||| internal JSON stringifier.
|||
||| For regular algebraic data types, implementations can automatically
||| be derived using elaborator reflection.
|||
||| Operators and functionality strongly influenced by Haskell's aeson
||| library
|||
||| Note: This should eventually be generalized for different
||| `Value` types and be moved to its own library.
module JS.JSON.ToJSON

import Data.Vect
import Data.List1
import JS.Array
import JS.Number
import JS.Object
import JS.Undefined

import Generics.Derive

%language ElabReflection

public export
interface ToJSON a where
  toJSON : a -> Value

infixr 8 .=

export
(.=) : ToJSON a => String -> a -> (String,Value)
s .= v = (s, toJSON v)

export
encode : ToJSON a => a -> String
encode v = stringify $ toJSON v

--------------------------------------------------------------------------------
--          Implementations
--------------------------------------------------------------------------------

export
ToJSON Void where
  toJSON x impossible

export
ToJSON Value where toJSON = id

export
ToJSON String where toJSON = Str

export
ToJSON Char where toJSON = Str . singleton

export
ToJSON Double where toJSON = Num

export
ToJSON Bits8 where toJSON = Num . cast

export
ToJSON Bits16 where toJSON = Num . cast

export
ToJSON Bits32 where toJSON = Num . cast

export
ToJSON Bits64 where toJSON = toJSON . show

export
ToJSON Int where toJSON = toJSON . show

export
ToJSON Integer where toJSON = toJSON . show

export
ToJSON Nat where toJSON = toJSON . show

export
ToJSON Bool where toJSON = Boolean

export
ToJSON Int8 where toJSON = Num . cast

export
ToJSON Int16 where toJSON = Num . cast

export
ToJSON Int32 where toJSON = Num . cast

export
ToJSON Int64 where toJSON = Num . cast


export
ToJSON a => ToJSON (Maybe a) where
  toJSON Nothing  = Null
  toJSON (Just a) = toJSON a

export
ToJSON a => ToJSON (Optional a) where
  toJSON Undef  = Null
  toJSON (Def a) = toJSON a

export
ToJSON a => ToJSON (IArray a) where
  toJSON = Arr . map toJSON

export
ToJSON a => ToJSON (List a) where
  toJSON = toJSON . JS.Array.fromList

export
ToJSON a => ToJSON (List1 a) where
  toJSON = toJSON . forget

export
ToJSON a => ToJSON (Vect n a) where
  toJSON = toJSON . toList

export
ToJSON () where
  toJSON () = Arr neutral

export
(ToJSON a, ToJSON b) => ToJSON (Either a b) where
  toJSON (Left a)  = pairs ["Left"  .= a]
  toJSON (Right b) = pairs ["Right" .= b]

--------------------------------------------------------------------------------
--          SOP Implementations
--------------------------------------------------------------------------------

np : NP (ToJSON . f) ks => NP f ks -> List Value
np = collapseNP . hcmap (ToJSON . f) toJSON

export
NP (ToJSON . f) ks => ToJSON (NP f ks) where
  toJSON = toJSON . np

export
(ToJSON a, ToJSON b) => ToJSON (a,b) where
  toJSON (a,b) = toJSON $ the (NP I _) [a,b]

-- TODO: This should go as a utility or interface to idris2-sop
export
unfoldNP : NP f ks -> (a -> a) -> a -> NP (K a) ks
unfoldNP []     _ _ = []
unfoldNP (_::t) f x = x :: unfoldNP t f (f x)

export
indices : NP f ks ->  NP (K Bits32) ks
indices np = unfoldNP np (+1) (the Bits32 0)

ns : (all : NP (ToJSON . f) ks) => NS f ks -> Value
ns = collapseNS . hcliftA2 (ToJSON . f) enc (indices all)
  where enc : ToJSON (f a) => Bits32 -> f a -> Value
        enc ix v = pairs [show ix .= v]

export
NP (ToJSON . f) ks => ToJSON (NS f ks) where
  toJSON = ns

--------------------------------------------------------------------------------
--          Elab Deriving
--------------------------------------------------------------------------------

-- Converts a single applied constructor, without pairing it
-- with its name.
toJSONC1 : NP (ToJSON . f) ks => ConInfo ks -> NP f ks -> Value
toJSONC1 info args = maybe (toJSON args) encRecord (argNames info)

  where encRecord : NP (K String) ks -> Value
        encRecord ns = pairs (collapseNP $ hcliftA2 (ToJSON . f) (.=) ns args)

toJSONSOP1 : NP (ToJSON . f) ks => TypeInfo [ks] -> SOP f [ks] -> Value
toJSONSOP1 (MkTypeInfo _ _ (v :: [])) (MkSOP (Z x)) = toJSONC1 v x
toJSONSOP1 (MkTypeInfo _ _ (v :: [])) (MkSOP (S x)) impossible

-- Converts a single applied constructor, pairing it with its name
toJSONC : NP (ToJSON . f) ks => ConInfo ks -> NP f ks -> Value
toJSONC i@(MkConInfo _ n _) np = pairs [(n, toJSONC1 i np)]

toJSONSOP :  (all : POP (ToJSON . f) kss)
        => TypeInfo kss -> SOP f kss -> Value
toJSONSOP {all = MkPOP _} (MkTypeInfo _ _ cons) =
  collapseNS . hcliftA2 (NP $ ToJSON . f) toJSONC cons . unSOP

export
genToJSON1 : Meta a [ks] => NP ToJSON ks => a -> Value
genToJSON1 = toJSONSOP1 (metaFor a) . from

export
genToJSON : Meta a code => POP ToJSON code => a -> Value
genToJSON = toJSONSOP (metaFor a) . from

public export
mkToJSON : (toJSON : a -> Value) -> ToJSON a
mkToJSON = %runElab check (var $ singleCon "ToJSON")

namespace Derive

  ||| Derives a `ToJSON` implementation for the given data type
  export
  ToJSON : DeriveUtil -> InterfaceImpl
  ToJSON g = MkInterfaceImpl "ToJSON" Export []
                    `(mkToJSON genToJSON)
                    (implementationType `(ToJSON) g)

  ||| Derives a `ToJSON` implementation for the given single-constructor
  ||| data type
  export
  ToJSON1 : DeriveUtil -> InterfaceImpl
  ToJSON1 g = MkInterfaceImpl "ToJSON" Export []
                    `(mkToJSON genToJSON1)
                    (implementationType `(ToJSON) g)
