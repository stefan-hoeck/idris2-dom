module Main

import Array
import JSON
import Object
import Util

main : IO ()
main = do Array.test
          Util.test
          Object.test
          JSON.test
