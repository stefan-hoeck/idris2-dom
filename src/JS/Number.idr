module JS.Number

import Data.DPair
import Data.Bits
import JS.Marshall
import JS.Util

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

%foreign "javascript:lambda:(v,b)=>v >= b || v < 0)?Math.abs(v)%b:v"
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
--          Int8
--------------------------------------------------------------------------------

||| An 8-bit signed integer in the range [-128,127].
|||
||| This corresponds to the `Byte` WebIDL type.
||| Internally, the number is represented by a Javascript `Number`
||| leading to the usual numeric perfomance. Note, however,
||| that bounds are being checked after each arithmetic
||| operation and also when aquiring such a value form
||| an external source.
export
data Int8 : Type where [external]

export
fromInt8 : Int8 -> Double
fromInt8 = believe_me

-- internal precondition: v is an integer
toInt8 : Double -> Int8
toInt8 = believe_me

-- internal precondition: v is an integer
truncToInt8 : Double -> Int8
truncToInt8 v = toInt8 (prim__truncSigned v 128.0)

export
Show Int8 where
  show = jsShow

export
Eq Int8 where
  (==) = (==) `on` fromInt8

export
Ord Int8 where
  compare = compare `on` fromInt8

export
Num Int8 where
  a + b = truncToInt8 $ fromInt8 a + fromInt8 b
  a * b = truncToInt8 $ fromInt8 a * fromInt8 b
  fromInteger = truncToInt8 . fromInteger

export
Neg Int8 where
  negate = truncToInt8 . negate . fromInt8
  a - b  = truncToInt8 $ fromInt8 a - fromInt8 b

export
Integral Int8 where
  a `div` b = toInt8 $ prim__div (fromInt8 a) (fromInt8 b)
  a `mod` b = toInt8 $ prim__mod (fromInt8 a) (fromInt8 b)

public export %inline
Bits Int8 where
  Index       = Subset Nat (`LT` 8)
  a .&. b     = toInt8 $ prim__and (fromInt8 a) (fromInt8 b)
  a .|. b     = toInt8 $ prim__or (fromInt8 a) (fromInt8 b)
  a `xor` b   = toInt8 $ prim__xor (fromInt8 a) (fromInt8 b)
  bit         = (1 `shiftL`)
  zeroBits    = 0
  testBit x i = (x .&. bit i) /= 0
  shiftR x    = toInt8 . prim__shr (fromInt8 x) . fromInteger . cast . fst

  shiftL x    = toInt8 
              . prim__shlSigned (fromInt8 x) 128 
              . fromInteger 
              . cast 
              . fst

  complement  = xor (-1)
  oneBits     = (-1)

--------------------------------------------------------------------------------
--          Int16
--------------------------------------------------------------------------------

||| A 16-bit signed integer in the range [-32768,32767].
|||
||| This corresponds to the `Short` WebIDL type.
||| Internally, the number is represented by a Javascript `Number`
||| leading to the usual numeric perfomance. Note, however,
||| that bounds are being checked after each arithmetic
||| operation and also when aquiring such a value form
||| an external source.
export
data Int16 : Type where [external]

export
fromInt16 : Int16 -> Double
fromInt16 = believe_me

-- internal precondition: v is an integer
toInt16 : Double -> Int16
toInt16 = believe_me

-- internal precondition: v is an integer
truncToInt16 : Double -> Int16
truncToInt16 v = toInt16 (prim__truncSigned v 32768.0)

export
Show Int16 where
  show = jsShow

export
Eq Int16 where
  (==) = (==) `on` fromInt16

export
Ord Int16 where
  compare = compare `on` fromInt16

export
Num Int16 where
  a + b = truncToInt16 $ fromInt16 a + fromInt16 b
  a * b = truncToInt16 $ fromInt16 a * fromInt16 b
  fromInteger = truncToInt16 . fromInteger

export
Neg Int16 where
  negate = truncToInt16 . negate . fromInt16
  a - b  = truncToInt16 $ fromInt16 a - fromInt16 b

export
Integral Int16 where
  a `div` b = toInt16 $ prim__div (fromInt16 a) (fromInt16 b)
  a `mod` b = toInt16 $ prim__mod (fromInt16 a) (fromInt16 b)

public export %inline
Bits Int16 where
  Index       = Subset Nat (`LT` 16)
  a .&. b     = toInt16 $ prim__and (fromInt16 a) (fromInt16 b)
  a .|. b     = toInt16 $ prim__or (fromInt16 a) (fromInt16 b)
  a `xor` b   = toInt16 $ prim__xor (fromInt16 a) (fromInt16 b)
  bit         = (1 `shiftL`)
  zeroBits    = 0
  testBit x i = (x .&. bit i) /= 0
  shiftR x    = toInt16 . prim__shr (fromInt16 x) . fromInteger . cast . fst

  shiftL x    = toInt16 
              . prim__shlSigned (fromInt16 x) 32768.0 
              . fromInteger 
              . cast 
              . fst

  complement  = xor (-1)
  oneBits     = (-1)

--------------------------------------------------------------------------------
--          Int32
--------------------------------------------------------------------------------

||| A 32-bit signed integer in the range [-2147483648,2147483647]
|||
||| This corresponds to the `Long` WebIDL type.
||| Internally, the number is represented by a Javascript `Number`
||| leading to the usual numeric perfomance. Note, however,
||| that bounds are being checked after each arithmetic
||| operation and also when aquiring such a value form
||| an external source.
export
data Int32 : Type where [external]

export
fromInt32 : Int32 -> Double
fromInt32 = believe_me

-- internal precondition: v is an integer
toInt32 : Double -> Int32
toInt32 = believe_me

-- internal precondition: v is an integer
truncToInt32 : Double -> Int32
truncToInt32 v = toInt32 (prim__truncSigned v  2147483648.0)

export
Show Int32 where
  show = jsShow

export
Eq Int32 where
  (==) = (==) `on` fromInt32

export
Ord Int32 where
  compare = compare `on` fromInt32

export
Num Int32 where
  a + b = truncToInt32 $ fromInt32 a + fromInt32 b
  a * b = truncToInt32 $ fromInt32 a * fromInt32 b
  fromInteger = truncToInt32 . fromInteger

export
Neg Int32 where
  negate = truncToInt32 . negate . fromInt32
  a - b  = truncToInt32 $ fromInt32 a - fromInt32 b

export
Integral Int32 where
  a `div` b = toInt32 $ prim__div (fromInt32 a) (fromInt32 b)
  a `mod` b = toInt32 $ prim__mod (fromInt32 a) (fromInt32 b)

public export %inline
Bits Int32 where
  Index       = Subset Nat (`LT` 32)
  a .&. b     = toInt32 $ prim__and (fromInt32 a) (fromInt32 b)
  a .|. b     = toInt32 $ prim__or (fromInt32 a) (fromInt32 b)
  a `xor` b   = toInt32 $ prim__xor (fromInt32 a) (fromInt32 b)
  bit         = (1 `shiftL`)
  zeroBits    = 0
  testBit x i = (x .&. bit i) /= 0
  shiftR x    = toInt32 . prim__shr (fromInt32 x) . fromInteger . cast . fst

  shiftL x    = toInt32 
              . prim__shlSigned (fromInt32 x) 2147483648.0
              . fromInteger 
              . cast 
              . fst

  complement  = xor (-1)
  oneBits     = (-1)

--------------------------------------------------------------------------------
--          Int64
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
data Int64 : Type where [external]

export
fromInt64 : Int64 -> Double
fromInt64 = believe_me

-- internal precondition: v is an integer
toInt64 : Double -> Int64
toInt64 = believe_me

-- internal precondition: v is an integer
truncToInt64 : Double -> Int64
truncToInt64 v = toInt64 (prim__truncSigned v 9223372036854775808.0)

export
Show Int64 where
  show = jsShow

export
Eq Int64 where
  (==) = (==) `on` fromInt64

export
Ord Int64 where
  compare = compare `on` fromInt64

export
Num Int64 where
  a + b = truncToInt64 $ fromInt64 a + fromInt64 b
  a * b = truncToInt64 $ fromInt64 a * fromInt64 b
  fromInteger = truncToInt64 . fromInteger

export
Neg Int64 where
  negate = truncToInt64 . negate . fromInt64
  a - b  = truncToInt64 $ fromInt64 a - fromInt64 b

export
Integral Int64 where
  a `div` b = toInt64 $ prim__div (fromInt64 a) (fromInt64 b)
  a `mod` b = toInt64 $ prim__mod (fromInt64 a) (fromInt64 b)


--------------------------------------------------------------------------------
--          UInt8
--------------------------------------------------------------------------------

||| An 8-bit unsigned integer in the range [0,255].
|||
||| This corresponds to the `Octet` WebIDL type.
||| Internally, the number is represented by a Javascript `Number`
||| leading to the usual numeric perfomance. Note, however,
||| that bounds are being checked after each arithmetic
||| operation and also when aquiring such a value form
||| an external source.
export
data UInt8 : Type where [external]

export
fromUInt8 : UInt8 -> Double
fromUInt8 = believe_me

-- internal precondition: v is a non-negative integer
toUInt8 : Double -> UInt8
toUInt8 = believe_me

-- internal precondition: v is an integer
truncToUInt8 : Double -> UInt8
truncToUInt8 v = toUInt8 (prim__truncUnsigned v 256.0)

export
Show UInt8 where
  show = jsShow

export
Eq UInt8 where
  (==) = (==) `on` fromUInt8

export
Ord UInt8 where
  compare = compare `on` fromUInt8

export
Num UInt8 where
  a + b = truncToUInt8 $ fromUInt8 a + fromUInt8 b
  a * b = truncToUInt8 $ fromUInt8 a * fromUInt8 b
  fromInteger = truncToUInt8 . fromInteger

export
Integral UInt8 where
  a `div` b = toUInt8 $ prim__div (fromUInt8 a) (fromUInt8 b)
  a `mod` b = toUInt8 $ prim__mod (fromUInt8 a) (fromUInt8 b)

public export %inline
Bits UInt8 where
  Index       = Subset Nat (`LT` 8)
  a .&. b     = toUInt8 $ prim__and (fromUInt8 a) (fromUInt8 b)
  a .|. b     = toUInt8 $ prim__or (fromUInt8 a) (fromUInt8 b)
  a `xor` b   = toUInt8 $ prim__xor (fromUInt8 a) (fromUInt8 b)
  bit         = (1 `shiftL`)
  zeroBits    = 0
  testBit x i = (x .&. bit i) /= 0
  shiftR x    = toUInt8 . prim__shr (fromUInt8 x) . fromInteger . cast . fst

  shiftL x    = toUInt8 
              . prim__shlUnsigned (fromUInt8 x) 256
              . fromInteger 
              . cast 
              . fst

  complement  = xor 255
  oneBits     = 255

--------------------------------------------------------------------------------
--          UInt16
--------------------------------------------------------------------------------

||| A 16-bit unsigned integer in the range [0,65535].
|||
||| This corresponds to the `Unsigned Short` WebIDL type.
||| Internally, the number is represented by a Javascript `Number`
||| leading to the usual numeric perfomance. Note, however,
||| that bounds are being checked after each arithmetic
||| operation and also when aquiring such a value form
||| an external source.
export
data UInt16 : Type where [external]

export
fromUInt16 : UInt16 -> Double
fromUInt16 = believe_me

-- internal precondition: v is a non-negative integer
toUInt16 : Double -> UInt16
toUInt16 = believe_me

-- internal precondition: v is an integer
truncToUInt16 : Double -> UInt16
truncToUInt16 v = toUInt16 (prim__truncUnsigned v 65536.0)

export
Show UInt16 where
  show = jsShow

export
Eq UInt16 where
  (==) = (==) `on` fromUInt16

export
Ord UInt16 where
  compare = compare `on` fromUInt16

export
Num UInt16 where
  a + b = truncToUInt16 $ fromUInt16 a + fromUInt16 b
  a * b = truncToUInt16 $ fromUInt16 a * fromUInt16 b
  fromInteger = truncToUInt16 . fromInteger

export
Integral UInt16 where
  a `div` b = toUInt16 $ prim__div (fromUInt16 a) (fromUInt16 b)
  a `mod` b = toUInt16 $ prim__mod (fromUInt16 a) (fromUInt16 b)

public export %inline
Bits UInt16 where
  Index       = Subset Nat (`LT` 16)
  a .&. b     = toUInt16 $ prim__and (fromUInt16 a) (fromUInt16 b)
  a .|. b     = toUInt16 $ prim__or (fromUInt16 a) (fromUInt16 b)
  a `xor` b   = toUInt16 $ prim__xor (fromUInt16 a) (fromUInt16 b)
  bit         = (1 `shiftL`)
  zeroBits    = 0
  testBit x i = (x .&. bit i) /= 0
  shiftR x    = toUInt16 . prim__shr (fromUInt16 x) . fromInteger . cast . fst

  shiftL x    = toUInt16 
              . prim__shlUnsigned (fromUInt16 x) 65536.0
              . fromInteger 
              . cast 
              . fst

  complement  = xor 65535
  oneBits     = 65535

--------------------------------------------------------------------------------
--          UInt32
--------------------------------------------------------------------------------

||| A 32-bit unsigned integer in the range [0,4294967296].
|||
||| This corresponds to the `Unsigned Long` WebIDL type.
||| Internally, the number is represented by a Javascript `Number`.
export
data UInt32 : Type where [external]

export
fromUInt32 : UInt32 -> Double
fromUInt32 = believe_me

-- internal precondition: v is a non-negative integer
toUInt32 : Double -> UInt32
toUInt32 = believe_me

-- internal precondition: v is an integer
truncToUInt32 : Double -> UInt32
truncToUInt32 v = toUInt32 (prim__truncUnsigned v 4294967296.0)

export
Show UInt32 where
  show = jsShow

export
Eq UInt32 where
  (==) = (==) `on` fromUInt32

export
Ord UInt32 where
  compare = compare `on` fromUInt32

export
Num UInt32 where
  a + b = truncToUInt32 $ fromUInt32 a + fromUInt32 b
  a * b = truncToUInt32 $ fromUInt32 a * fromUInt32 b
  fromInteger = truncToUInt32 . fromInteger

export
Integral UInt32 where
  a `div` b = toUInt32 $ prim__div (fromUInt32 a) (fromUInt32 b)
  a `mod` b = toUInt32 $ prim__mod (fromUInt32 a) (fromUInt32 b)

public export %inline
Bits UInt32 where
  Index       = Subset Nat (`LT` 32)
  a .&. b     = toUInt32 $ prim__and (fromUInt32 a) (fromUInt32 b)
  a .|. b     = toUInt32 $ prim__or (fromUInt32 a) (fromUInt32 b)
  a `xor` b   = toUInt32 $ prim__xor (fromUInt32 a) (fromUInt32 b)
  bit         = (1 `shiftL`)
  zeroBits    = 0
  testBit x i = (x .&. bit i) /= 0
  shiftR x    = toUInt32 . prim__shr (fromUInt32 x) . fromInteger . cast . fst

  shiftL x    = toUInt32 
              . prim__shlUnsigned (fromUInt32 x) 4294967296.0
              . fromInteger 
              . cast 
              . fst

  complement  = xor 4294967295
  oneBits     = 4294967295

--------------------------------------------------------------------------------
--          UInt64
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
data UInt64 : Type where [external]

-- export
-- Show UInt64 where
--   show = show . value
-- 
-- export
-- Eq UInt64 where
--   (==) = (==) `on` value
-- 
-- export
-- Ord UInt64 where
--   compare = compare `on` value
-- 
-- export
-- Num UInt64 where
--   a + b = MkUInt64 (a.value + b.value)
--   a * b = MkUInt64 (a.value * b.value)
--   fromInteger = MkUInt64 . fromInteger
-- 
-- bits64ToDbl : Bits64 -> Double
-- bits64ToDbl = fromInteger . cast
