module JS.Number

import Data.Bits
import JS.Marshall

--------------------------------------------------------------------------------
--          Numbers
--------------------------------------------------------------------------------

%foreign "javascript:lambda:(a,b)=>a % b"
prim__doubleMod : Double -> Double -> Double

%foreign "javascript:lambda:(a,b)=>Math.trunc(a / b)"
prim__doubleDiv : Double -> Double -> Double

%foreign "javascript:lambda:(v,b)=>v >= b || v < (-b)?v%b:v"
prim__truncSigned : Double -> Double -> Double

||| An 8-bit signed integer in the range [-128,127].
|||
||| This corresponds to the `Byte` WebIDL type.
||| Internally, the number is represented by a `Double`
||| leading to the usual numeric perfomance. Note, however,
||| that bounds are being checked after each arithmetic
||| operation and when aquiring such a value form
||| an external source.
export
record Int8 where
  constructor MkInt8
  value : Double

doubleToInt8 : Double -> Int8
doubleToInt8 v = MkInt8 $ prim__truncSigned v 128.0

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
  a `div` b = doubleToInt8 $ prim__doubleDiv a.value b.value
  a `mod` b = doubleToInt8 $ prim__doubleMod a.value b.value

export
Bits Int8 where



export
data UInt8 : Type where [external]

export
data Int16 : Type where [external]

export
data UInt16 : Type where [external]

export
data Int32 : Type where [external]

export
data UInt32 : Type where [external]

export
data Int64 : Type where [external]

export
data UInt64 : Type where [external]
