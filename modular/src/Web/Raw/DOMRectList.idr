module Web.Raw.DOMRectList

import JS
import Web.Types.DOMRect
import Web.Types.DOMRectList


%default total


export
%foreign "browser:lambda:x=>x.length"
prim__length : DOMRectList -> PrimIO Bits32


export
%foreign "browser:lambda:(x,a)=>x.item(a)"
prim__item : DOMRectList -> Bits32 -> PrimIO (Nullable DOMRect)


export
length : (obj : DOMRectList) -> JSIO Bits32
length a = primJS $ DOMRectList.prim__length a


export
item : (obj : DOMRectList) -> (index : Bits32) -> JSIO (Maybe DOMRect)
item a b = tryJS "DOMRectList.item" $ DOMRectList.prim__item a b
