module JS.Inheritance

import JS.Util
import Data.List.Elem

--------------------------------------------------------------------------------
--          Upcasting
--------------------------------------------------------------------------------

public export
interface JSVal a where
  parents : List Type
  mixins : List Type

public export
Parents : (a : Type) -> JSVal a => List Type
Parents a = parents {a}

public export
Mixins : (a : Type) -> JSVal a => List Type
Mixins a = mixins {a}

public export %inline
up :  JSVal a
   => a
   -> {auto 0 _ : Either (Elem b (Parents a)) (Elem b (Mixins a))}
   -> b
up = believe_me

infixl 1 :>

public export %inline
(:>) :  JSVal a
     => a
     -> (0 b : Type)
     -> {auto 0 _ : Either (Elem b (Parents a)) (Elem b (Mixins a))}
     -> b
a :> _ = up a

--------------------------------------------------------------------------------
--          Downcasting
--------------------------------------------------------------------------------

public export
interface SafeCast a where
  safeCast : any -> Maybe a

||| Tries to cast one value to another by comparing the
||| passed string against the return value of `typeOf`.
export
unsafeCastOnTypeString : String -> a -> Maybe b
unsafeCastOnTypeString s a =
  if typeOf a == s then Just (believe_me a) else Nothing

||| Interface supporting the safe casting of one JS type
||| to another. This is mainly used during foreign function
||| calls or when otherwise processing values of unknown origin.
export
SafeCast () where
  safeCast _ = Just ()

export
SafeCast Integer where
  safeCast = unsafeCastOnTypeString "[object BigInt]"

export
SafeCast Double where
  safeCast = unsafeCastOnTypeString "[object Number]"

export
SafeCast String where
  safeCast = unsafeCastOnTypeString "[object String]"

export
SafeCast Bits8 where
  safeCast = map fromInteger . safeCast

export
SafeCast Bits16 where
  safeCast = map fromInteger . safeCast

export
SafeCast Bits32 where
  safeCast = map fromInteger . safeCast

export
SafeCast Bits64 where
  safeCast = map fromInteger . safeCast

export
SafeCast Int where
  safeCast = map fromInteger . safeCast
