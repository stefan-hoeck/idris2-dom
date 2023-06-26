module Web.Raw.CustomElementConstructor

import JS
import Web.Types.CustomElementConstructor
import Web.Types.HTMLElement


%default total


export
%foreign "browser:lambda:x=>()=>x()()"
prim__toCustomElementConstructor :
     (() -> IO HTMLElement)
  -> PrimIO CustomElementConstructor


export
toCustomElementConstructor :
     (() -> IO HTMLElement)
  -> JSIO CustomElementConstructor
toCustomElementConstructor cb = primJS $ prim__toCustomElementConstructor cb
