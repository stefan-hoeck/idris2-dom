module Test.Object

import Hedgehog
import Generics.Derive

import JS

%language ElabReflection

record Address where
  constructor MkAddress
  street : String
  nr     : Nat
  zip    : String
  city   : String

%runElab derive "Address" [Generic,Meta,Show,Eq]

-- Direct JSON encoding
toStr : Address -> String
toStr s = #"{"street":\#{show s.street},"nr":\#{show s.nr},"zip":\#{show s.zip},"city":\#{show s.city}}"#

-- Encoding via `stringify`.
toJSON : Address -> String
toJSON a = let ps = [ ("street",str a.street)
                    , ("nr", num $ cast a.nr)
                    , ("zip", str a.zip)
                    , ("city", str a.city)
                    ]
            in pairs ps \x => stringify (obj x)

fromJSON : String -> Maybe Address
fromJSON s =
  do val <- decodeMaybe s
     obj <- getObject val
     [| MkAddress (valueAt obj "street" >>= getStr)
                  (valueAt obj "nr" >>= map (fromInteger . cast) . getNum)
                  (valueAt obj "zip" >>= getStr)
                  (valueAt obj "city" >>= getStr) |]

--------------------------------------------------------------------------------
--          Generators
--------------------------------------------------------------------------------

plainString : Gen String
plainString = string (linear 1 10) alphaNum


addresses : Gen Address
addresses = [| MkAddress plainString
                         (nat $ linear 0 50)
                         plainString
                         plainString |]

--------------------------------------------------------------------------------
--          Properties
--------------------------------------------------------------------------------

prop_toJSON : Property
prop_toJSON = property $ do a <- forAll addresses
                            toStr a === toJSON a

prop_decode : Property
prop_decode = property $ do a <- forAll addresses
                            case decode (toJSON a) of
                                 Left e => do footnote (dispErr e)
                                              assert False
                                 Right _ => assert True

prop_roundTrip : Property
prop_roundTrip = property $ do a <- forAll addresses
                               Just a === fromJSON (toJSON a)

export
test : IO ()
test = ignore . checkGroup . withTests 1000 $ MkGroup "Object" [
         ("prop_toJSON", prop_toJSON)
       , ("prop_decode", prop_decode)
       , ("prop_roundTrip", prop_roundTrip)
       ]
