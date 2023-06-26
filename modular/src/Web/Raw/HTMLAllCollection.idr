module Web.Raw.HTMLAllCollection

import JS
import Web.Types.Element
import Web.Types.HTMLAllCollection
import Web.Types.HTMLCollection


%default total


export
%foreign "browser:lambda:(o,x)=>o[x]"
prim__get : HTMLAllCollection -> Bits32 -> PrimIO Element


export
%foreign "browser:lambda:x=>x.length"
prim__length : HTMLAllCollection -> PrimIO Bits32


export
%foreign "browser:lambda:(x,a)=>x.item(a)"
prim__item :
     HTMLAllCollection
  -> UndefOr String
  -> PrimIO (Nullable (Union2 HTMLCollection Element))


export
%foreign "browser:lambda:(x,a)=>x.namedItem(a)"
prim__namedItem :
     HTMLAllCollection
  -> String
  -> PrimIO (Nullable (Union2 HTMLCollection Element))


export
get : (obj : HTMLAllCollection) -> (index : Bits32) -> JSIO Element
get a b = primJS $ HTMLAllCollection.prim__get a b


export
length : (obj : HTMLAllCollection) -> JSIO Bits32
length a = primJS $ HTMLAllCollection.prim__length a


export
item' :
     (obj : HTMLAllCollection)
  -> (nameOrIndex : Optional String)
  -> JSIO (Maybe (HSum [HTMLCollection, Element]))
item' a b = tryJS "HTMLAllCollection.item'" $
  HTMLAllCollection.prim__item a (toFFI b)

export
item :
     (obj : HTMLAllCollection)
  -> JSIO (Maybe (HSum [HTMLCollection, Element]))
item a = tryJS "HTMLAllCollection.item" $ HTMLAllCollection.prim__item a undef


export
namedItem :
     (obj : HTMLAllCollection)
  -> (name : String)
  -> JSIO (Maybe (HSum [HTMLCollection, Element]))
namedItem a b = tryJS "HTMLAllCollection.namedItem" $
  HTMLAllCollection.prim__namedItem a b

