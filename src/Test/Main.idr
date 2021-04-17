module Test.Main

import Test.Array
import Test.Number
import Test.Util

main : IO ()
main = do Test.Array.test
          Test.Number.test
          Test.Util.test
