module Test.Main

import JS
import Web.Internal.Types
import Web.Dom
import Web.Html

prog : JSIO ()
prog = do btn <- createElement HTMLButtonElement "button"
          textContent (up btn) .= "Click me!"
          onclick (up btn) ?> textContent (up btn) .= "Yeah!"
          ignore $ !body `appendChild` btn

main : IO ()
main = runJS prog
