module Test.Main

import JS
import Web.Internal.Types
import Web.Dom
import Web.Html

prog : JSIO ()
prog = do btn <- createElement HTMLButtonElement "button"
          textContent btn .= "Click me!"
          onclick btn ?> textContent btn .= "Yeah!"
          ignore $ !body `appendChild` btn

main : IO ()
main = runJS prog
