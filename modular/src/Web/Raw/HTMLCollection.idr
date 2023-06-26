module Web.Raw.HTMLCollection

import JS
import Web.Types.Element
import Web.Types.HTMLCollection


%default total


export
%foreign "browser:lambda:x=>x.length"
prim__length : HTMLCollection -> PrimIO Bits32


export
%foreign "browser:lambda:(x,a)=>x.item(a)"
prim__item : HTMLCollection -> Bits32 -> PrimIO (Nullable Element)


export
%foreign "browser:lambda:(x,a)=>x.namedItem(a)"
prim__namedItem : HTMLCollection -> String -> PrimIO (Nullable Element)


export
length : {auto _ : Cast t1 HTMLCollection} -> (obj : t1) -> JSIO Bits32
length a = primJS $ HTMLCollection.prim__length (cast a)


export
item :
     {auto _ : Cast t1 HTMLCollection}
  -> (obj : t1)
  -> (index : Bits32)
  -> JSIO (Maybe Element)
item a b = tryJS "HTMLCollection.item" $ HTMLCollection.prim__item (cast a) b


export
namedItem :
     {auto _ : Cast t1 HTMLCollection}
  -> (obj : t1)
  -> (name : String)
  -> JSIO (Maybe Element)
namedItem a b = tryJS "HTMLCollection.namedItem" $
  HTMLCollection.prim__namedItem (cast a) b

