module Test.JSON

import JS
import JS.JSON
import Hedgehog
import Test.Object

import Generics.Derive

%language ElabReflection

%runElab derive "Test.Object.Address" [ToJSON1,FromJSON1]

prop_roundTrip : Property
prop_roundTrip = property $ do a <- forAll addresses
                               Right a === fromJSON (toJSON a)

export
test : IO ()
test = ignore . checkGroup . withTests 100 $ MkGroup "JSON" [
         ("prop_roundTrip", prop_roundTrip)
       ]
