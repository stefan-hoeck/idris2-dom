module JS.Number

import Data.DPair
import Data.Bits
import JS.Marshall

--------------------------------------------------------------------------------
--          Primitives
--------------------------------------------------------------------------------

%foreign "javascript:lambda:(a,b)=>a % b"
prim__doubleMod : Double -> Double -> Double

%foreign "javascript:lambda:(a,b)=>Math.trunc(a / b)"
prim__doubleDiv : Double -> Double -> Double

%foreign "javascript:lambda:v=>Number.isInteger(v)?v:Math.trunc(v)"
prim__toIntegral : AnyPtr -> Double

%foreign "javascript:lambda:(v,b)=>v >= b || v < (-b)?v%b:v"
prim__truncSigned : Double -> Double -> Double

%foreign "javascript:lambda:(v,b)=>v >= b || v < 0)?Math.abs(v)%b:v"
prim__truncUnsigned : Double -> Double -> Double

%foreign "javascript:lambda:(a,b)=>a & b"
prim__andDbl : Double -> Double -> Double

%foreign "javascript:lambda:(a,b)=>a | b"
prim__orDbl : Double -> Double -> Double

%foreign "javascript:lambda:(a,b)=>a ^ b"
prim__xorDbl : Double -> Double -> Double

%foreign "javascript:lambda:(a,b)=>a >> b"
prim__shrDbl : Double -> Double -> Double

%foreign "javascript:lambda:(a,x,b)=>{ res = a << b; res & x ? res | (-x) : res & (x-1) }"
prim__shlDblSigned : Double -> Double -> Double -> Double

%foreign "javascript:lambda:(a,x,b)=> (a << b) & x"
prim__shlDblUnsigned : Double -> Double -> Double -> Double

--------------------------------------------------------------------------------
--          Int8
--------------------------------------------------------------------------------

||| An 8-bit signed integer in the range [-128,127].
|||
||| This corresponds to the `Byte` WebIDL type.
||| Internally, the number is represented by a `Double`
||| leading to the usual numeric perfomance. Note, however,
||| that bounds are being checked after each arithmetic
||| operation and also when aquiring such a value form
||| an external source.
export
record Int8 where
  constructor MkInt8
  value : Double

doubleToInt8 : Double -> Int8
doubleToInt8 v = MkInt8 $ prim__truncSigned v 128.0

export
int8ToDouble : Int8 -> Double
int8ToDouble = value

export
Show Int8 where
  show = show . value

export
Eq Int8 where
  (==) = (==) `on` value

export
Ord Int8 where
  compare = compare `on` value

export
Num Int8 where
  a + b = doubleToInt8 (a.value + b.value)
  a * b = doubleToInt8 (a.value * b.value)
  fromInteger = doubleToInt8 . fromInteger

export
Neg Int8 where
  negate a = doubleToInt8 $ negate a.value
  a - b    = doubleToInt8 $ a.value - b.value

export
Integral Int8 where
  a `div` b = MkInt8 $ prim__doubleDiv a.value b.value
  a `mod` b = MkInt8 $ prim__doubleMod a.value b.value

public export %inline
Bits Int8 where
  Index       = Subset Nat (`LT` 8)
  a .&. b     = MkInt8 $ prim__andDbl a.value b.value
  a .|. b     = MkInt8 $ prim__orDbl a.value b.value
  a `xor` b   = MkInt8 $ prim__xorDbl a.value b.value
  bit         = (1 `shiftL`)
  zeroBits    = 0
  testBit x i = (x .&. bit i) /= 0
  shiftR x    = MkInt8 . prim__shrDbl x.value . fromInteger . cast . fst

  shiftL x    = MkInt8 
              . prim__shlDblSigned x.value 128 
              . fromInteger 
              . cast 
              . fst

  complement  = xor (-1)
  oneBits     = (-1)

export
ToJS Int8 where toJS = toJS . value

export
FromJS Int8 where fromJS ptr = doubleToInt8 (prim__toIntegral ptr)

--------------------------------------------------------------------------------
--          Int16
--------------------------------------------------------------------------------

||| A 16-bit signed integer in the range [-32768,32767].
|||
||| This corresponds to the `Short` WebIDL type.
||| Internally, the number is represented by a `Double`
||| leading to the usual numeric perfomance. Note, however,
||| that bounds are being checked after each arithmetic
||| operation and also when aquiring such a value form
||| an external source.
export
record Int16 where
  constructor MkInt16
  value : Double

doubleToInt16 : Double -> Int16
doubleToInt16 v = MkInt16 $ prim__truncSigned v 32768.0

export
int16ToDouble : Int16 -> Double
int16ToDouble = value

export
Show Int16 where
  show = show . value

export
Eq Int16 where
  (==) = (==) `on` value

export
Ord Int16 where
  compare = compare `on` value

export
Num Int16 where
  a + b = doubleToInt16 (a.value + b.value)
  a * b = doubleToInt16 (a.value * b.value)
  fromInteger = doubleToInt16 . fromInteger

export
Neg Int16 where
  negate a = doubleToInt16 $ negate a.value
  a - b    = doubleToInt16 $ a.value - b.value

export
Integral Int16 where
  a `div` b = MkInt16 $ prim__doubleDiv a.value b.value
  a `mod` b = MkInt16 $ prim__doubleMod a.value b.value

public export %inline
Bits Int16 where
  Index       = Subset Nat (`LT` 16)
  a .&. b     = MkInt16 $ prim__andDbl a.value b.value
  a .|. b     = MkInt16 $ prim__orDbl a.value b.value
  a `xor` b   = MkInt16 $ prim__xorDbl a.value b.value
  bit         = (1 `shiftL`)
  zeroBits    = 0
  testBit x i = (x .&. bit i) /= 0
  shiftR x    = MkInt16 . prim__shrDbl x.value . fromInteger . cast . fst
  shiftL x    = MkInt16 
              . prim__shlDblSigned x.value 32768.0 
              . fromInteger 
              . cast 
              . fst

  complement  = xor (-1)
  oneBits     = (-1)

export
ToJS Int16 where toJS = toJS . value

export
FromJS Int16 where fromJS ptr = doubleToInt16 (prim__toIntegral ptr)

--------------------------------------------------------------------------------
--          Int32
--------------------------------------------------------------------------------

||| A 32-bit signed integer in the range [-2147483648,2147483647]
|||
||| This corresponds to the `Long` WebIDL type.
||| Internally, the number is represented by a `Double`
||| leading to the usual numeric perfomance. Note, however,
||| that bounds are being checked after each arithmetic
||| operation and also when aquiring such a value form
||| an external source.
|||
||| Warning: Multiplication of Int32 values might lead results
||| out of the safe zone of exact integer operations in Javascript
||| *before* they are being truncated. Use one of the Idris2
||| primitive types if you need exact integral arithmetics.
export
record Int32 where
  constructor MkInt32
  value : Double

doubleToInt32 : Double -> Int32
doubleToInt32 v = MkInt32 $ prim__truncSigned v 2147483648.0

export
int32ToDouble : Int32 -> Double
int32ToDouble = value

export
Show Int32 where
  show = show . value

export
Eq Int32 where
  (==) = (==) `on` value

export
Ord Int32 where
  compare = compare `on` value

export
Num Int32 where
  a + b = doubleToInt32 (a.value + b.value)
  a * b = doubleToInt32 (a.value * b.value)
  fromInteger = doubleToInt32 . fromInteger

export
Neg Int32 where
  negate a = doubleToInt32 $ negate a.value
  a - b    = doubleToInt32 $ a.value - b.value

export
Integral Int32 where
  a `div` b = MkInt32 $ prim__doubleDiv a.value b.value
  a `mod` b = MkInt32 $ prim__doubleMod a.value b.value

public export %inline
Bits Int32 where
  Index       = Subset Nat (`LT` 32)
  a .&. b     = MkInt32 $ prim__andDbl a.value b.value
  a .|. b     = MkInt32 $ prim__orDbl a.value b.value
  a `xor` b   = MkInt32 $ prim__xorDbl a.value b.value
  bit         = (1 `shiftL`)
  zeroBits    = 0
  testBit x i = (x .&. bit i) /= 0
  shiftR x    = MkInt32 . prim__shrDbl x.value . fromInteger . cast . fst
  shiftL x    = MkInt32 
              . prim__shlDblSigned x.value 2147483648.0
              . fromInteger 
              . cast 
              . fst

  complement  = xor (-1)
  oneBits     = (-1)

export
ToJS Int32 where toJS = toJS . value

export
FromJS Int32 where fromJS ptr = doubleToInt32 (prim__toIntegral ptr)

--------------------------------------------------------------------------------
--          Int64
--------------------------------------------------------------------------------

||| A 64-bit signed integer in the range [-9223372036854775808,9223372036854775808]
|||
||| This corresponds to the `Long Long` WebIDL type.
||| Internally, the number is represented by an `Int` but
||| during marshalling, the value will be converted to a
||| Javascript `Number`.
||| Note, that this conversion might result
||| in rounding errors, since values might be outside the range
||| of safe integral arithmetics (up to 2^53). Use this type only for
||| interacting with external API requiring values of this type.
public export
record Int64 where
  constructor MkInt64
  value : Int

export
Show Int64 where
  show = show . value

export
Eq Int64 where
  (==) = (==) `on` value

export
Ord Int64 where
  compare = compare `on` value

export
Num Int64 where
  a + b = MkInt64 (a.value + b.value)
  a * b = MkInt64 (a.value * b.value)
  fromInteger = MkInt64 . fromInteger

export
Neg Int64 where
  negate a = MkInt64 $ negate a.value
  a - b    = MkInt64 $ a.value - b.value

export
Integral Int64 where
  a `div` b = MkInt64 $ a.value `div` b.value
  a `mod` b = MkInt64 $ a.value `mod` b.value

export
ToJS Int64 where toJS = toJS . cast {to = Double} . value

export
FromJS Int64 where fromJS = MkInt64 . cast {from = Double} . fromJS

--------------------------------------------------------------------------------
--          UInt8
--------------------------------------------------------------------------------

||| An 8-bit unsigned integer in the range [0,255].
|||
||| This corresponds to the `Octet` WebIDL type.
||| Internally, the number is represented by a `Double`
||| leading to the usual numeric perfomance. Note, however,
||| that bounds are being checked after each arithmetic
||| operation and also when aquiring such a value form
||| an external source.
export
record UInt8 where
  constructor MkUInt8
  value : Double

doubleToUInt8 : Double -> UInt8
doubleToUInt8 v = MkUInt8 $ prim__truncUnsigned v 256.0

export
uint8ToDouble : UInt8 -> Double
uint8ToDouble = value

export
Show UInt8 where
  show = show . value

export
Eq UInt8 where
  (==) = (==) `on` value

export
Ord UInt8 where
  compare = compare `on` value

export
Num UInt8 where
  a + b = doubleToUInt8 (a.value + b.value)
  a * b = doubleToUInt8 (a.value * b.value)
  fromInteger = doubleToUInt8 . fromInteger

export
Integral UInt8 where
  a `div` b = MkUInt8 $ prim__doubleDiv a.value b.value
  a `mod` b = MkUInt8 $ prim__doubleMod a.value b.value

public export %inline
Bits UInt8 where
  Index       = Subset Nat (`LT` 8)
  a .&. b     = MkUInt8 $ prim__andDbl a.value b.value
  a .|. b     = MkUInt8 $ prim__orDbl a.value b.value
  a `xor` b   = MkUInt8 $ prim__xorDbl a.value b.value
  bit         = (1 `shiftL`)
  zeroBits    = 0
  testBit x i = (x .&. bit i) /= 0
  shiftR x    = MkUInt8 . prim__shrDbl x.value . fromInteger . cast . fst

  shiftL x    = MkUInt8 
              . prim__shlDblUnsigned x.value 255
              . fromInteger 
              . cast 
              . fst

  complement  = xor 255
  oneBits     = 255

export
ToJS UInt8 where toJS = toJS . value

export
FromJS UInt8 where fromJS ptr = doubleToUInt8 (prim__toIntegral ptr)

--------------------------------------------------------------------------------
--          UInt16
--------------------------------------------------------------------------------

||| A 16-bit unsigned integer in the range [0,65535].
|||
||| This corresponds to the `Unsigned Short` WebIDL type.
||| Internally, the number is represented by a `Double`
||| leading to the usual numeric perfomance. Note, however,
||| that bounds are being checked after each arithmetic
||| operation and also when aquiring such a value form
||| an external source.
export
record UInt16 where
  constructor MkUInt16
  value : Double

doubleToUInt16 : Double -> UInt16
doubleToUInt16 v = MkUInt16 $ prim__truncUnsigned v 65536.0

export
uint16ToDouble : UInt16 -> Double
uint16ToDouble = value

export
Show UInt16 where
  show = show . value

export
Eq UInt16 where
  (==) = (==) `on` value

export
Ord UInt16 where
  compare = compare `on` value

export
Num UInt16 where
  a + b = doubleToUInt16 (a.value + b.value)
  a * b = doubleToUInt16 (a.value * b.value)
  fromInteger = doubleToUInt16 . fromInteger

export
Integral UInt16 where
  a `div` b = MkUInt16 $ prim__doubleDiv a.value b.value
  a `mod` b = MkUInt16 $ prim__doubleMod a.value b.value

public export %inline
Bits UInt16 where
  Index       = Subset Nat (`LT` 16)
  a .&. b     = MkUInt16 $ prim__andDbl a.value b.value
  a .|. b     = MkUInt16 $ prim__orDbl a.value b.value
  a `xor` b   = MkUInt16 $ prim__xorDbl a.value b.value
  bit         = (1 `shiftL`)
  zeroBits    = 0
  testBit x i = (x .&. bit i) /= 0
  shiftR x    = MkUInt16 . prim__shrDbl x.value . fromInteger . cast . fst

  shiftL x    = MkUInt16 
              . prim__shlDblUnsigned x.value 65535
              . fromInteger 
              . cast 
              . fst

  complement  = xor 65535
  oneBits     = 65535

export
ToJS UInt16 where toJS = toJS . value

export
FromJS UInt16 where fromJS ptr = doubleToUInt16 (prim__toIntegral ptr)

--------------------------------------------------------------------------------
--          UInt32
--------------------------------------------------------------------------------

||| A 32-bit unsigned integer in the range [0,4294967296].
|||
||| This corresponds to the `Unsigned Long` WebIDL type.
||| Internally, the number is represented by a `Bits32` but
||| during marshalling, the value will be converted to a
||| Javascript `Number`.
public export
record UInt32 where
  constructor MkUInt32
  value : Bits32

export
Show UInt32 where
  show = show . value

export
Eq UInt32 where
  (==) = (==) `on` value

export
Ord UInt32 where
  compare = compare `on` value

export
Num UInt32 where
  a + b = MkUInt32 (a.value + b.value)
  a * b = MkUInt32 (a.value * b.value)
  fromInteger = MkUInt32 . fromInteger

public export %inline
Bits UInt32 where
  Index       = Subset Nat (`LT` 32)
  a .&. b     = MkUInt32 $ a.value .&. b.value
  a .|. b     = MkUInt32 $ a.value .|. b.value
  a `xor` b   = MkUInt32 $ a.value `xor` b.value
  bit         = (1 `shiftL`)
  zeroBits    = 0
  testBit x i = (x .&. bit i) /= 0
  shiftR x    = MkUInt32 . shiftR x.value

  shiftL x    = MkUInt32 . shiftL x.value

  complement  = MkUInt32 . complement . value
  oneBits     = MkUInt32 oneBits


bits32ToDbl : Bits32 -> Double
bits32ToDbl = fromInteger . cast

export
ToJS UInt32 where toJS = toJS . bits32ToDbl . value

export
FromJS UInt32 where
  fromJS = MkUInt32 . fromInteger . cast {from = Double} . fromJS

--------------------------------------------------------------------------------
--          UInt64
--------------------------------------------------------------------------------

||| A 64-bit unsigned integer in the range [0,18446744073709551615].
|||
||| This corresponds to the `Unsigned Long Long` WebIDL type.
||| Internally, the number is represented by a `Bits64` but
||| during marshalling, the value will be converted to a
||| Javascript `Number`.
||| Note, that this conversion might result
||| in rounding errors, since values might be outside the range
||| of safe integral arithmetics (up to 2^53). Use this type only for
||| interacting with external API requiring values of this type.
public export
record UInt64 where
  constructor MkUInt64
  value : Bits64

export
Show UInt64 where
  show = show . value

export
Eq UInt64 where
  (==) = (==) `on` value

export
Ord UInt64 where
  compare = compare `on` value

export
Num UInt64 where
  a + b = MkUInt64 (a.value + b.value)
  a * b = MkUInt64 (a.value * b.value)
  fromInteger = MkUInt64 . fromInteger

bits64ToDbl : Bits64 -> Double
bits64ToDbl = fromInteger . cast

export
ToJS UInt64 where toJS = toJS . bits64ToDbl . value

export
FromJS UInt64 where
  fromJS = MkUInt64 . fromInteger . cast {from = Double} . fromJS
