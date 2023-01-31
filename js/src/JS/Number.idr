module JS.Number

import Data.DPair
import Data.Bits
import JS.Inheritance
import JS.Marshall
import JS.Util

%default total

--------------------------------------------------------------------------------
--          Primitives
--------------------------------------------------------------------------------

%foreign "javascript:lambda:(a,b)=>a % b"
prim__mod : Double -> Double -> Double

%foreign "javascript:lambda:(a,b)=>Math.trunc(a / b)"
prim__div : Double -> Double -> Double

%foreign "javascript:lambda:v=>Number.isInteger(v)?v:Math.trunc(v)"
prim__toIntegral : AnyPtr -> AnyPtr

%foreign "javascript:lambda:(v,b)=>v >= b || v < (-b)?v%b:v"
prim__truncSigned : Double -> Double -> Double

%foreign "javascript:lambda:(v,b)=>v >= b || v < 0?Math.abs(v)%b:v"
prim__truncUnsigned : Double -> Double -> Double

%foreign "javascript:lambda:(a,b)=>a & b"
prim__and : Double -> Double -> Double

%foreign "javascript:lambda:(a,b)=>a | b"
prim__or : Double -> Double -> Double

%foreign "javascript:lambda:(a,b)=>a ^ b"
prim__xor : Double -> Double -> Double

%foreign "javascript:lambda:(a,b)=>a >> b"
prim__shr : Double -> Double -> Double

%foreign "javascript:lambda:(a,x,b)=>{ res = a << b; res & x ? res | (-x) : res & (x-1) }"
prim__shlSigned : Double -> Double -> Double -> Double

%foreign "javascript:lambda:(a,x,b)=> (a << b) & x"
prim__shlUnsigned : Double -> Double -> Double -> Double

%foreign "javascript:lambda:x=> Number.isInteger(x)?1:0"
prim__isInteger : AnyPtr -> Double

--------------------------------------------------------------------------------
--          JSInt64
--------------------------------------------------------------------------------

||| A 64-bit signed integer in the range [-9223372036854775808,9223372036854775807]
|||
||| This corresponds to the `Long Long` WebIDL type.
||| Internally, the number is represented by a
||| Javascript `Number`.
||| Note, that arithmetic operations on this type might result
||| in rounding errors, since values might be outside the range
||| of safe integral arithmetics (up to 2^53). Use this type only for
||| interacting with external API requiring values of this type.
export
data JSInt64 : Type where [external]

export
fromJSInt64 : JSInt64 -> Double
fromJSInt64 = believe_me

-- internal precondition: v is an integer
toJSInt64 : Double -> JSInt64
toJSInt64 = believe_me

-- internal precondition: v is an integer
truncToJSInt64 : Double -> JSInt64
truncToJSInt64 v = toJSInt64 (prim__truncSigned v 9223372036854775808.0)

export
Show JSInt64 where
  show = jsShow

export
Eq JSInt64 where
  (==) = (==) `on` fromJSInt64

export
Ord JSInt64 where
  compare = compare `on` fromJSInt64

export
Num JSInt64 where
  a + b = truncToJSInt64 $ fromJSInt64 a + fromJSInt64 b
  a * b = truncToJSInt64 $ fromJSInt64 a * fromJSInt64 b
  fromInteger = truncToJSInt64 . fromInteger

export
Neg JSInt64 where
  negate = truncToJSInt64 . negate . fromJSInt64
  a - b  = truncToJSInt64 $ fromJSInt64 a - fromJSInt64 b

export
Integral JSInt64 where
  a `div` b = toJSInt64 $ prim__div (fromJSInt64 a) (fromJSInt64 b)
  a `mod` b = toJSInt64 $ prim__mod (fromJSInt64 a) (fromJSInt64 b)

export
ToFFI JSInt64 JSInt64 where toFFI = id

export
FromFFI JSInt64 JSInt64 where fromFFI = Just

export
SafeCast JSInt64 where
  safeCast = bounded (-9223372036854775808) 9223372036854775808


--------------------------------------------------------------------------------
--          JSBits64
--------------------------------------------------------------------------------

||| A 64-bit unsigned integer in the range [0,18446744073709551615].
|||
||| This corresponds to the `Unsigned Long Long` WebIDL type.
||| Internally, the number is represented by a Javascript `Number`.
||| Note, that this type is therefore susceptible to
||| rounding errors, since values might be outside the range
||| of safe integral arithmetics (up to 2^53). Use this type only for
||| interacting with external API requiring values of this type.
export
data JSBits64 : Type where [external]

export
fromUInt64 : JSBits64 -> Double
fromUInt64 = believe_me

-- internal precondition: v is a non-negative integer
toUInt64 : Double -> JSBits64
toUInt64 = believe_me

-- internal precondition: v is an integer
truncToUInt64 : Double -> JSBits64
truncToUInt64 v = toUInt64 (prim__truncUnsigned v 18446744073709551616.0)

export
Show JSBits64 where
  show = jsShow

export
Eq JSBits64 where
  (==) = (==) `on` fromUInt64

export
Ord JSBits64 where
  compare = compare `on` fromUInt64

export
Num JSBits64 where
  a + b = truncToUInt64 $ fromUInt64 a + fromUInt64 b
  a * b = truncToUInt64 $ fromUInt64 a * fromUInt64 b
  fromInteger = truncToUInt64 . fromInteger

export
Integral JSBits64 where
  a `div` b = toUInt64 $ prim__div (fromUInt64 a) (fromUInt64 b)
  a `mod` b = toUInt64 $ prim__mod (fromUInt64 a) (fromUInt64 b)

export
ToFFI JSBits64 JSBits64 where toFFI = id

export
FromFFI JSBits64 JSBits64 where fromFFI = Just

export
SafeCast JSBits64 where
  safeCast = bounded 0 18446744073709551615
