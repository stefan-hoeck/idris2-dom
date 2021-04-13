module Test.Main

import JS
import Web.Internal.Types
import Web.Dom
import Web.Html
import Test.Number
import Test.Util

Callback EventHandlerNonNull (Event -> JSIO ()) where
  callback f = toEventHandlerNonNull (map (toFFI . MkAny) . runJS . f)

%foreign "browser:lambda:()=>window"
prim__window : PrimIO Window

%foreign "browser:lambda:()=>document"
prim__document : PrimIO Document

window : JSIO Window
window = primJS prim__window

document : JSIO Document
document = primJS prim__document

body : JSIO HTMLElement
body = unMaybe "Test.body" $ document >>= to body

createElement : (0 a : Type) -> SafeCast a => String -> JSIO a
createElement _ tag =
  castingTo #"Test.createElement [\#{tag}]"# $
  document >>= (`createElement'` tag)

prog : JSIO ()
prog = do btn <- createElement HTMLButtonElement "button"
          textContent (up btn) .= "Click me!"
          onclick (up btn) ?> textContent (up btn) .= "Yeah!"
          ignore $ !(map up body) `appendChild` up btn

main : IO ()
main = runJS prog
