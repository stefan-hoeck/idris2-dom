module Test.Main

import Test.Number
import Test.Util

main : IO ()
main = do Test.Number.test
          Test.Util.test
