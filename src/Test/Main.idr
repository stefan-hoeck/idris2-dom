module Test.Main

import Test.Array
import Test.JSON
import Test.Object
import Test.Util

main : IO ()
main = do Test.Array.test
          Test.Util.test
          Test.Object.test
          Test.JSON.test
