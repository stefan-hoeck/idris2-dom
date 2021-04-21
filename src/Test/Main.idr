module Test.Main

import Test.Array
import Test.JSON
import Test.Number
import Test.Object
import Test.Util

main : IO ()
main = Test.JSON.test

-- main = do Test.Array.test
--           Test.Util.test
--           Test.Number.test
--           Test.Object.test
--           Test.JSON.test
