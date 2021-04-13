module Test.Main

import JS
import Web.Internal.Types
import Web.Dom
import Web.Html
import Test.Number
import Test.Util

%foreign "browser:lambda:()=>window"
prim__window : PrimIO Window

%foreign "browser:lambda:()=>document"
prim__document : PrimIO Document

window : JSIO Window
window = primJS prim__window

document : JSIO Document
document = primJS prim__document

body : JSIO HTMLElement
body = unMaybe "Test.body" $ document >>= (`get'` body)

createElement : (0 a : Type) -> SafeCast a => String -> JSIO a
createElement _ tag =
  castingTo #"Test.createElement [\#{tag}]"# $
  document >>= (`createElement'` tag)

handle : (Event -> JSIO ()) -> JSIO EventHandlerNonNull
handle f = toEventHandlerNonNull (map (toFFI . MkAny) . runJS . f)

handle' : JSIO () -> JSIO EventHandlerNonNull
handle' = handle . const

button : JSIO HTMLButtonElement
button = createElement _ "button"

prog : JSIO ()
prog = do btn <- button
          textContent (up btn) .= "Click me!"
          onclick (up btn) .= !(handle' $ textContent (up btn) .= "Yeah!")
          bd  <- body
          ignore $ up bd `appendChild` up btn

main : IO ()
main = runJS prog
