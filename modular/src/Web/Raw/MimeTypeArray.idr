module Web.Raw.MimeTypeArray

import JS
import Web.Types.MimeTypeArray


%default total


export
%foreign "browser:lambda:x=>x.length"
prim__length : MimeTypeArray -> PrimIO Bits32


export
%foreign "browser:lambda:(x,a)=>x.item(a)"
prim__item : MimeTypeArray -> Bits32 -> PrimIO (Nullable Object)


export
%foreign "browser:lambda:(x,a)=>x.namedItem(a)"
prim__namedItem : MimeTypeArray -> String -> PrimIO (Nullable Object)


export
length : (obj : MimeTypeArray) -> JSIO Bits32
length a = primJS $ MimeTypeArray.prim__length a


export
item : (obj : MimeTypeArray) -> (index : Bits32) -> JSIO (Maybe Object)
item a b = tryJS "MimeTypeArray.item" $ MimeTypeArray.prim__item a b


export
namedItem : (obj : MimeTypeArray) -> (name : String) -> JSIO (Maybe Object)
namedItem a b = tryJS "MimeTypeArray.namedItem" $
  MimeTypeArray.prim__namedItem a b

