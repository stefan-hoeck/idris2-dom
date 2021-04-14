module Test.Main

import JS
import Web.Internal.Types
import Web.Dom
import Web.Html

prog : JSIO ()
prog = do btn <- createElement Button
          textContent btn .= "Click me!"

          txt <- createElement Input
          HTMLInputElement.type txt .= "text"
          placeholder txt .= "Please enter your name here."

          txtDiv <- createElement Div
          outDiv <- createElement Div

          onclick btn ?> do name <- txt `get` HTMLInputElement.value
                            textContent outDiv .= #"Hello \#{name}!"#

          ignore $ (!body `appendChild` btn)    *>
                   (!body `appendChild` txtDiv) *>
                   (!body `appendChild` outDiv) *>
                   (txtDiv `appendChild` txt)

main : IO ()
main = runJS prog
