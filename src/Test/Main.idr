module Test.Main

import Test.Array
import Test.Number
import Test.Object
import Test.Util

main : IO ()
main = do Test.Array.test
          Test.Util.test
          Test.Number.test
          Test.Object.test
