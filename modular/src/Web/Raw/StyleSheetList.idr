module Web.Raw.StyleSheetList

import JS
import Web.Types.CSSStyleSheet
import Web.Types.StyleSheetList


%default total


export
%foreign "browser:lambda:x=>x.length"
prim__length : StyleSheetList -> PrimIO Bits32


export
%foreign "browser:lambda:(x,a)=>x.item(a)"
prim__item : StyleSheetList -> Bits32 -> PrimIO (Nullable CSSStyleSheet)


export
length : (obj : StyleSheetList) -> JSIO Bits32
length a = primJS $ StyleSheetList.prim__length a


export
item : (obj : StyleSheetList) -> (index : Bits32) -> JSIO (Maybe CSSStyleSheet)
item a b = tryJS "StyleSheetList.item" $ StyleSheetList.prim__item a b

