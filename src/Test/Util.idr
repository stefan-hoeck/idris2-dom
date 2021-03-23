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

prop_undefinedIsUndefined : Property
prop_undefinedIsUndefined =
  withTests 1 . property $ do u <- forAll (pure undefined)
                              assert (isUndefined u)

undefinedProps : Group
undefinedProps = MkGroup "Undefined"
                   [ ("prop_int_notUndefined", prop_int_notUndefined)
                   , ("prop_undefinedIsUndefined", prop_undefinedIsUndefined)
                   ]

export
test : IO ()
test = do ignore $ checkGroup undefinedProps

