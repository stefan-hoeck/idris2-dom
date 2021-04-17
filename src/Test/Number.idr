module Test.Number

import Data.SOP
import Hedgehog
import JS.Number

integral :  (Num a, Eq a, Show a, Integral a)
         => (name : String)
         -> (bits : Integer)
         -> (toInt : a -> Integer)
         -> Group
integral name bits toInt =
  let max      = prim__shl_Integer 1 (bits - 1)
      iroot    = prim__shl_Integer 1 ((bits `div` 2) - 1)
      int      = integer (linearFrom 0 (-iroot) (iroot-1))
      smallInt = integer (linearFrom 0 (-iroot) (iroot-1))
      inBounds = \x => x < max && x >= (-max)
   in MkGroup (MkTagged name) [
        ( "addInBounds"
        , property $ do [a,b] <- forAll $ np [int,int]
                        let res = toInt (fromInteger a + fromInteger b)
                        assert (inBounds res)
        )
      , ( "add"
        , property $ do [a,b] <- forAll $ np [smallInt,smallInt]
                        (a + b) === toInt (fromInteger a + fromInteger b)
        )
      , ( "multInBounds"
        , property $ do [a,b] <- forAll $ np [int,int]
                        let res = toInt (fromInteger a * fromInteger b)
                        assert (inBounds res)
        )
      , ( "mult"
        , property $ do [a,b] <- forAll $ np [smallInt,smallInt]
                        (a * b) === toInt (fromInteger a * fromInteger b)
        )
      , ( "divInBounds"
        , property $ do [a,b] <- forAll $ np [int,int]
                        let b2 = if b == 0 then 1 else b
                            res = toInt (fromInteger a `div` fromInteger b2)
                        assert (inBounds res)
        )
      , ( "div"
        , property $ do [a,b] <- forAll $ np [smallInt,smallInt]
                        let b2 = if b == 0 then 1 else b
                        (a `div` b2) === toInt (fromInteger a `div` fromInteger b2)
        )
      , ( "modInBounds"
        , property $ do [a,b] <- forAll $ np [int,int]
                        let b2 = if b == 0 then 1 else b
                            res = toInt (fromInteger a `mod` fromInteger b2)
                        assert (inBounds res)
        )
      , ( "mod"
        , property $ do [a,b] <- forAll $ np [smallInt,smallInt]
                        let b2 = if b == 0 then 1 else b
                        (a `mod` b2) === toInt (fromInteger a `mod` fromInteger b2)
        )
      ]

signedIntegral :  (Num a, Eq a, Show a, Neg a, Integral a)
               => (name : String)
               -> (bits : Integer)
               -> (toInt : a -> Integer)
               -> Group
signedIntegral name bits toInt =
  let max      = prim__shl_Integer 1 (bits - 1)
      iroot    = prim__shl_Integer 1 ((bits `div` 2) - 1)
      int      = integer (linearFrom 0 (-iroot) (iroot-1))
      smallInt = integer (linearFrom 0 (-iroot) (iroot-1))
      inBounds = \x => x < max && x >= (-max)

   in case integral name bits toInt of
           MkGroup n ps => MkGroup n $ ps ++ [
             ( "minusInBounds"
             , property $ do [a,b] <- forAll $ np [int,int]
                             let res = toInt (fromInteger a - fromInteger b)
                             assert (inBounds res)
             )
           , ( "minus"
             , property $ do [a,b] <- forAll $ np [smallInt,smallInt]
                             (a - b) === toInt (fromInteger a - fromInteger b)
             )
           , ( "negateInBounds"
             , property $ do a <- forAll int
                             let res = toInt (negate $ fromInteger a)
                             assert (inBounds res)
             )
           , ( "negate"
             , property $ do a <- forAll smallInt
                             negate a === toInt (negate $ fromInteger a)
             )
           ]

chck : Group -> IO ()
chck = ignore . checkGroup . withTests 100

export
test : IO ()
test = do chck (signedIntegral "Int8" 8 (cast . fromInt8))
          chck (signedIntegral "Int16" 16 (cast . fromInt16))
          chck (signedIntegral "Int32" 32 (cast . fromInt32))
          -- chck (signedIntegral "Int64" 64 (cast . fromInt64))
