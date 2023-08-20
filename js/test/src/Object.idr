module Object

import Hedgehog
import Derive.Prelude

import JS

%language ElabReflection

public export
record Address where
  constructor MkAddress
  street : String
  nr     : Bits32
  zip    : String
  city   : String

%runElab derive "Address" [Show,Eq]

-- Direct JSON encoding
toStr : Address -> String
toStr s = #"{"street":\#{show s.street},"nr":\#{show s.nr},"zip":\#{show s.zip},"city":\#{show s.city}}"#

-- Encoding via `stringify`.
toJSON : Address -> String
toJSON a =
  let ps :=
        [ ("street",Str a.street)
        , ("nr", Num . fromInteger $ cast a.nr)
        , ("zip", Str a.zip)
        , ("city", Str a.city)
        ]
   in stringify (pairs ps)

export
fromJSON : String -> Maybe Address
fromJSON s = do
  val <- parseMaybe s
  obj <- getObject val
  [| MkAddress
       (valueAt obj "street" >>= getStr)
       (valueAt obj "nr" >>= map (fromInteger . cast) . getNum)
       (valueAt obj "zip" >>= getStr)
       (valueAt obj "city" >>= getStr) |]

--------------------------------------------------------------------------------
--          Generators
--------------------------------------------------------------------------------

plainString : Gen String
plainString = string (linear 1 10) alphaNum


export
addresses : Gen Address
addresses =
  [| MkAddress
       plainString
       (bits32 $ linear 0 50)
       plainString
       plainString |]

--------------------------------------------------------------------------------
--          Properties
--------------------------------------------------------------------------------

prop_toJSON : Property
prop_toJSON = property $ do
  a <- forAll addresses
  toStr a === toJSON a

prop_decode : Property
prop_decode = property $ do
  a <- forAll addresses
  case parse (toJSON a) of
       Left e => do footnote (dispErr e)
                    assert False
       Right _ => assert True

prop_roundTrip : Property
prop_roundTrip = property $ do
  a <- forAll addresses
  Just a === fromJSON (toJSON a)

export
test : IO ()
test = ignore . checkGroup . withTests 100 $ MkGroup "Object"
  [ ("prop_toJSON", prop_toJSON)
  , ("prop_decode", prop_decode)
  , ("prop_roundTrip", prop_roundTrip)
  ]
