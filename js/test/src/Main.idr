module Main

import Array
import Object
import Promise
import Util

main : IO ()
main = do
  Array.test
  Util.test
  Object.test
  Promise.test
