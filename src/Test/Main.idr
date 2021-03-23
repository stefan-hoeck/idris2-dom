module Test.Main

import Test.Number
import Test.Util

main : IO ()
main = do Test.Util.test
          Test.Number.test
