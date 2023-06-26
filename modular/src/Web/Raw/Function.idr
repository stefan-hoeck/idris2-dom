module Web.Raw.Function

import JS
import Web.Types.Function


%default total


export
%foreign "browser:lambda:x=>(a)=>x(a)()"
prim__toFunction : (IO (Array AnyPtr) -> IO AnyPtr) -> PrimIO Function


export
toFunction : (IO (Array AnyPtr) -> IO AnyPtr) -> JSIO Function
toFunction cb = primJS $ prim__toFunction cb
