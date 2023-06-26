module Web.Raw.DOMStringMap

import JS
import Web.Types.DOMStringMap


%default total


export
%foreign "browser:lambda:(o,x)=>o[x]"
prim__get : DOMStringMap -> String -> PrimIO String


export
%foreign "browser:lambda:(o,x,v)=>o[x] = v"
prim__set : DOMStringMap -> String -> String -> PrimIO ()


export
get : (obj : DOMStringMap) -> (name : String) -> JSIO String
get a b = primJS $ DOMStringMap.prim__get a b


export
set : (obj : DOMStringMap) -> (name : String) -> (value : String) -> JSIO ()
set a b c = primJS $ DOMStringMap.prim__set a b c

