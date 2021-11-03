module Test.JSON

import JS
import JS.JSON
import Hedgehog
import Test.Object

import Generics.Derive

%language ElabReflection

%runElab derive "Test.Object.Address" [ToJSON1,FromJSON1]

roundTrip : Eq a => FromJSON a => ToJSON a => Show a => Gen a -> Property
roundTrip g = property $ do v <- forAll g
                            let enc = encode v
                            footnote enc
                            Right v === decode enc

--------------------------------------------------------------------------------
--          Fast Eq for Nat
--------------------------------------------------------------------------------

||| The default Eq for Nat runs in O(n), which leads to stack overflows
||| for large Nats
export
[FastNatEq] Eq Nat where
  (==) = (==) `on` natToInteger

||| The default Ord for Nat runs in O(n), which leads to stack overflows
||| for large Nats
export
[FastNatOrd] Ord Nat using FastNatEq where
  compare = compare `on` natToInteger

--------------------------------------------------------------------------------
--          Sum Type
--------------------------------------------------------------------------------

data Sum : (a : Type) -> Type where
  Con1 : (name : String) -> (age : Bits32) -> (female : Bool) -> Sum a
  Con2 : (treasure : List a) -> (weight : Bits64) -> Sum a
  Con3 : (foo : Maybe a) -> (bar : Either Bool a) -> Sum a

%runElab derive "Sum" [Generic,Meta,Show,Eq,ToJSON,FromJSON]

--------------------------------------------------------------------------------
--          Generators
--------------------------------------------------------------------------------

bits8All : Gen Bits8
bits8All = bits8 $ linear 0 255

bits16All : Gen Bits16
bits16All = bits16 $ exponential 0 65535

bits32All : Gen Bits32
bits32All = bits32 $ exponential 0 4294967295

bits64All : Gen Bits64
bits64All = bits64 $ exponential 0 18446744073709551615

unicode16 : Gen Char
unicode16 = charc '\0' '\65535'

doubleE100 : Gen Double
doubleE100 = double $ exponentialFrom 0 (-1.0e100) 1.0e100

intAll : Gen Int
intAll = int $ exponential (-9223372036854775808) 9223372036854775807

integer128 : Gen Integer
integer128 = integer $ exponentialFrom 0 (-0x100000000000000000000000000000000) 0x100000000000000000000000000000000

nat128 : Gen Nat
nat128 = nat $ exponential @{FastNatOrd} 0 0x100000000000000000000000000000000

list20 : Gen a -> Gen (List a)
list20 = list (linear 0 20)

list1_20 : Gen a -> Gen (List1 a)
list1_20 = list1 (linear 1 20)

optional : Gen a -> Gen (Optional a)
optional = map maybeToOptional . maybe

string20 : Gen Char -> Gen String
string20 = string $ linear 0 20

string20Ascii : Gen String
string20Ascii = string20 ascii

string20Unicode16 : Gen String
string20Unicode16 = string20 unicode16

array20 : Gen a -> Gen (IArray a)
array20 = map fromList . list20

vect13 : Gen a -> Gen (Vect 13 a)
vect13 = vect 13

sum : Gen (Sum Int)
sum = map to $ sop $ MkPOP [ [ string20 alphaNum, bits32All, bool ]
                           , [ list20 intAll, bits64All ]
                           , [ maybe intAll, either bool intAll ]
                           ]

--------------------------------------------------------------------------------
--          Properties
--------------------------------------------------------------------------------

prop_unit : Property
prop_unit = roundTrip $ pure ()

prop_array : Property
prop_array = roundTrip $ array20 bits8All

prop_bits8 : Property
prop_bits8 = roundTrip bits8All

prop_bits16 : Property
prop_bits16 = roundTrip bits16All

prop_bits32 : Property
prop_bits32 = roundTrip bits32All

prop_bits64 : Property
prop_bits64 = roundTrip bits64All

prop_bool : Property
prop_bool = roundTrip bool

prop_char : Property
prop_char = roundTrip unicode16

prop_double : Property
prop_double = roundTrip doubleE100

prop_either : Property
prop_either = roundTrip $ either bits8All ascii

prop_int : Property
prop_int = roundTrip intAll

prop_integer : Property
prop_integer = roundTrip integer128

prop_list : Property
prop_list = roundTrip $ list20 bits8All

prop_list1 : Property
prop_list1 = roundTrip $ list1_20 unicode16

prop_maybe : Property
prop_maybe = roundTrip $ maybe (either bool bits32All)

prop_nat : Property
prop_nat = roundTrip @{FastNatEq} nat128

prop_np : Property
prop_np = roundTrip $ np [ integer128, bool, unicode16, maybe string20Ascii ]

prop_ns : Property
prop_ns = roundTrip $ ns [ integer128, bool, unicode16, maybe string20Ascii ]

prop_optional : Property
prop_optional = roundTrip $ optional bits64All

prop_pair : Property
prop_pair = roundTrip [| (,) (list1_20 bool) (maybe ascii) |]

prop_string : Property
prop_string = roundTrip $ string20 unicode

prop_sum : Property
prop_sum = roundTrip sum

prop_vect : Property
prop_vect = roundTrip $ vect13 intAll

prop_address : Property
prop_address = roundTrip addresses

export
test : IO ()
test = ignore . checkGroup . withTests 1000 $ MkGroup "JSON" [
            ("prop_address", prop_address)
          , ("prop_array", prop_array)
          , ("prop_bits8", prop_bits8)
          , ("prop_bits16", prop_bits16)
          , ("prop_bits32", prop_bits32)
          , ("prop_bits64", prop_bits64)
          , ("prop_bool", prop_bool)
          , ("prop_char", prop_char)
          , ("prop_double", prop_double)
          , ("prop_either", prop_either)
          , ("prop_int", prop_int)
          , ("prop_integer", prop_integer)
          , ("prop_list", prop_list)
          , ("prop_list1", prop_list1)
          , ("prop_maybe", prop_maybe)
          , ("prop_nat", prop_nat)
          , ("prop_np", prop_np)
          , ("prop_ns", prop_ns)
          , ("prop_optional", prop_optional)
          , ("prop_pair", prop_pair)
          , ("prop_string", prop_string)
          , ("prop_sum", prop_sum)
          , ("prop_unit", prop_unit)
          , ("prop_vect", prop_vect)
          ]
