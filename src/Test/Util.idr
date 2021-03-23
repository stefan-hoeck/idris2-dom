module Test.Util

import JS.Util
import Hedgehog

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
  withTests 1 . property $ do u <- forAllWith (const "null") (pure JS.Util.null)
                              assert (isNull u)

undefinedProps : Group
undefinedProps = MkGroup "Undefined and Null"
                   [ ("prop_int_notUndefined", prop_int_notUndefined)
                   , ("prop_string_notUndefined", prop_string_notUndefined)
                   , ("prop_undefinedIsUndefined", prop_undefinedIsUndefined)
                   , ("prop_int_notNull", prop_int_notNull)
                   , ("prop_string_notNull", prop_string_notNull)
                   , ("prop_undefinedIsNull", prop_undefinedIsNull)
                   ]

export
test : IO ()
test = do ignore $ checkGroup undefinedProps

