module JS.Marshall

import Control.Monad.Either
import Data.SOP
import JS.Inheritance
import JS.Util

%default total

--------------------------------------------------------------------------------
--          Marshalling from and to JS
--------------------------------------------------------------------------------

||| Interface supporting the use of a value as an
||| argument in a foreign function call.
|||
||| Implementations for primitives and external type should be
||| done using `believe_me`, as they are alredy in the correct
||| representation. Idris2 types should be converted to primitives
||| or external constants first.
public export
interface ToFFI a ffiRepr | a where
  toFFI : a -> ffiRepr

export
ToFFI AnyPtr AnyPtr where toFFI = id

export
ToFFI Bits8 Bits8 where toFFI = id

export
ToFFI Bits16 Bits16 where toFFI = id

export
ToFFI Bits32 Bits32 where toFFI = id

export
ToFFI Bits64 Bits64 where toFFI = id

export
ToFFI Int8 Int8 where toFFI = id

export
ToFFI Int16 Int16 where toFFI = id

export
ToFFI Int32 Int32 where toFFI = id

export
ToFFI Int64 Int64 where toFFI = id

export
ToFFI Int Int where toFFI = id

export
ToFFI Char Char where toFFI = id

export
ToFFI Integer Integer where toFFI = id

export
ToFFI Double Double where toFFI = id

export
ToFFI String String where toFFI = id

export
ToFFI WindowProxy WindowProxy where toFFI = id

||| Interface supporting the use of a value as a
||| return type in a foreign function call.
public export
interface FromFFI a ffiRepr | a where
  fromFFI : ffiRepr -> Maybe a

export
FromFFI AnyPtr AnyPtr where fromFFI = Just

export
FromFFI Bits8 Bits8 where fromFFI = Just

export
FromFFI Bits16 Bits16 where fromFFI = Just

export
FromFFI Bits32 Bits32 where fromFFI = Just

export
FromFFI Bits64 Bits64 where fromFFI = Just

export
FromFFI Int8 Int8 where fromFFI = Just

export
FromFFI Int16 Int16 where fromFFI = Just

export
FromFFI Int32 Int32 where fromFFI = Just

export
FromFFI Int64 Int64 where fromFFI = Just

export
FromFFI Char Char where fromFFI = Just

export
FromFFI Int Int where fromFFI = Just

export
FromFFI Integer Integer where fromFFI = Just

export
FromFFI Double Double where fromFFI = Just

export
FromFFI String String where fromFFI = Just

export
FromFFI WindowProxy WindowProxy where fromFFI = Just

export
tryFromFFI : FromFFI a ffiRepr => (fun : Lazy String) -> ffiRepr -> JSIO a
tryFromFFI fun ptr = case fromFFI ptr of
                          Nothing => throwError $ CastErr fun ptr
                          Just v  => pure v

export
tryJS : FromFFI a ffiRepr => (fun : Lazy String) -> PrimIO ffiRepr -> JSIO a
tryJS fun prim = primJS prim >>= tryFromFFI fun
