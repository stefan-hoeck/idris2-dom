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

handle : (Event -> JSIO ()) -> JSIO EventHandlerNonNull
handle f = toEventHandlerNonNull (\v => believe_me (runJS $ f v))

handle' : JSIO () -> JSIO EventHandlerNonNull
handle' = handle . const

button : JSIO HTMLButtonElement
button = castingTo "button" $ document >>= (`createElement'` "button")

prog : JSIO ()
prog = do btn <- button
          textContent (up btn) `set` "Click me!"
          handler <- handle' $ textContent (up btn) `set` "Yeah!"
          onclick (up btn) ::= handler
          bd  <- document >>= (`get'` body)
          traverse_ (\b => up b `appendChild` up btn) bd

main : IO ()
main = runJS prog
