module Web.Raw.DOMStringList

import JS
import Web.Types.DOMStringList


%default total


export
%foreign "browser:lambda:x=>x.length"
prim__length : DOMStringList -> PrimIO Bits32


export
%foreign "browser:lambda:(x,a)=>x.contains(a)"
prim__contains : DOMStringList -> String -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a)=>x.item(a)"
prim__item : DOMStringList -> Bits32 -> PrimIO (Nullable String)


export
length : (obj : DOMStringList) -> JSIO Bits32
length a = primJS $ DOMStringList.prim__length a


export
contains : (obj : DOMStringList) -> (string : String) -> JSIO Bool
contains a b = tryJS "DOMStringList.contains" $ DOMStringList.prim__contains a b


export
item : (obj : DOMStringList) -> (index : Bits32) -> JSIO (Maybe String)
item a b = tryJS "DOMStringList.item" $ DOMStringList.prim__item a b
