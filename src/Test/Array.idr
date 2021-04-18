module Test.Array

import Data.SOP
import Hedgehog
import JS

ints : Gen (List Int)
ints = list (linear 0 10) (int $ linearFrom 0 (-100) 100)

intss : Gen (List $ List Int)
intss = list (linear 0 10) ints

arrInt : Gen (IArray Int)
arrInt = map fromList ints

prop_sizeEmpty : Property
prop_sizeEmpty =
  property $ do ns <- forAll (pure $ the (List UInt32) Nil)
                size (JS.Array.fromList ns) === 0

prop_size : Property
prop_size =
  property $ do ns <- forAll ints
                size (JS.Array.fromList ns) ===
                fromInteger (natToInteger $ length ns)

prop_fromListToList : Property
prop_fromListToList =
  property $ do ns <- forAll ints
                ns === arrayToList (JS.Array.fromList ns)

prop_fromString : Property
prop_fromString =
  property $ do s <- forAll $ string (linear 0 20) ascii
                unpack s === arrayToList (JS.Array.fromString s)

prop_map : Property
prop_map = property $ do arr <- forAll arrInt
                         map id arr === arr

prop_join : Property
prop_join = property $ do iss <- forAll intss
                          join iss ===
                          (arrayToList . JS.Array.concat) (fromList $ map fromList iss)

export
test : IO ()
test = ignore . checkGroup . withTests 100 $ MkGroup "Arrays" [
         ("prop_sizeEmpty", prop_sizeEmpty)
       , ("prop_size", prop_size)
       , ("prop_fromListToList", prop_fromListToList)
       , ("prop_fromString", prop_fromString)
       , ("prop_map", prop_map)
       , ("prop_join", prop_join)
       ]
            
       
