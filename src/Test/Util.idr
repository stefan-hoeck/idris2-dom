module Test.Util

import JS
import Hedgehog
import Data.Either

--------------------------------------------------------------------------------
--          Undefined
--------------------------------------------------------------------------------

prop_int_notUndefined : Property
prop_int_notUndefined =
  property $ do n <- forAll (int (linear 0 1000))
                assert (not $ isUndefined n)

prop_string_notUndefined : Property
prop_string_notUndefined =
  property $ do n <- forAll (string (linear 0 20) unicode)
                assert (not $ isUndefined n)

prop_undefinedIsUndefined : Property
prop_undefinedIsUndefined =
  withTests 1 . property $ do u <- forAll (pure undefined)
                              assert (isUndefined u)

prop_int_notNull : Property
prop_int_notNull =
  property $ do n <- forAll (int (linear 0 1000))
                assert (not $ isNull n)

prop_string_notNull : Property
prop_string_notNull =
  property $ do n <- forAll (string (linear 0 20) unicode)
                assert (not $ isNull n)

prop_undefinedIsNull : Property
prop_undefinedIsNull =
  withTests 1 . property $ do u <- forAllWith (const "null") (pure $ null {a = Int})
                              assert (isNull u)

invalidJSON : Gen String
invalidJSON = ("{" ++) <$> string (linear 0 10) alphaNum

%foreign "javascript:lambda:s => JSON.parse(s)"
prim__parse : String -> AnyPtr

prop_try : Property
prop_try = property $ do s <- forAll invalidJSON
                         assert $ isLeft (try prim__parse s)

undefinedProps : Group
undefinedProps = MkGroup "Undefined and Null"
                   [ ("prop_int_notUndefined", prop_int_notUndefined)
                   , ("prop_string_notUndefined", prop_string_notUndefined)
                   , ("prop_undefinedIsUndefined", prop_undefinedIsUndefined)
                   , ("prop_int_notNull", prop_int_notNull)
                   , ("prop_string_notNull", prop_string_notNull)
                   , ("prop_undefinedIsNull", prop_undefinedIsNull)
                   , ("prop_try", prop_try)
                   ]

export
test : IO ()
test = do ignore $ checkGroup undefinedProps
