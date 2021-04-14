module Test.Main

import Data.String
import JS
import Web.Internal.Types
import Web.Dom
import Web.Html

checkPalindrome : String -> String
checkPalindrome s =
  let s' = toLower s
   in if s' == reverse s'
         then "Cool! Your name is a palindrome."
         else "Your name is rather mundane..."


prog : JSIO ()
prog = do btn <- createElement Button
          textContent btn .= "Click me!"

          txt <- createElement Input
          type txt .= the String "text"
          placeholder txt .= "Enter your name here."

          txtDiv <- createElement Div
          lenDiv <- createElement Div
          outDiv <- createElement Div

          onclick btn ?> do name <- txt `get` value
                            textContent outDiv .= #"Hello \#{name}!"#

          oninput txt ?> do reply <- checkPalindrome `over` value txt
                            textContent lenDiv .= reply

          ignore $ (!body `appendChild` btn)    *>
                   (!body `appendChild` txtDiv) *>
                   (!body `appendChild` outDiv) *>
                   (!body `appendChild` lenDiv) *>
                   (txtDiv `appendChild` txt)

main : IO ()
main = runJS prog
