module Web.Raw.VoidFunction

import JS
import Web.Types.VoidFunction


%default total


export
%foreign "browser:lambda:x=>()=>x()()"
prim__toVoidFunction : (() -> IO ()) -> PrimIO VoidFunction


export
toVoidFunction : (() -> IO ()) -> JSIO VoidFunction
toVoidFunction cb = primJS $ prim__toVoidFunction cb
