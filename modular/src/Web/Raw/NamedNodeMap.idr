module Web.Raw.NamedNodeMap

import JS
import Web.Types.Attr
import Web.Types.NamedNodeMap


%default total


export
%foreign "browser:lambda:x=>x.length"
prim__length : NamedNodeMap -> PrimIO Bits32


export
%foreign "browser:lambda:(x,a,b)=>x.getNamedItemNS(a,b)"
prim__getNamedItemNS :
     NamedNodeMap
  -> Nullable String
  -> String
  -> PrimIO (Nullable Attr)


export
%foreign "browser:lambda:(x,a)=>x.getNamedItem(a)"
prim__getNamedItem : NamedNodeMap -> String -> PrimIO (Nullable Attr)


export
%foreign "browser:lambda:(x,a)=>x.item(a)"
prim__item : NamedNodeMap -> Bits32 -> PrimIO (Nullable Attr)


export
%foreign "browser:lambda:(x,a,b)=>x.removeNamedItemNS(a,b)"
prim__removeNamedItemNS :
     NamedNodeMap
  -> Nullable String
  -> String
  -> PrimIO Attr


export
%foreign "browser:lambda:(x,a)=>x.removeNamedItem(a)"
prim__removeNamedItem : NamedNodeMap -> String -> PrimIO Attr


export
%foreign "browser:lambda:(x,a)=>x.setNamedItemNS(a)"
prim__setNamedItemNS : NamedNodeMap -> Attr -> PrimIO (Nullable Attr)


export
%foreign "browser:lambda:(x,a)=>x.setNamedItem(a)"
prim__setNamedItem : NamedNodeMap -> Attr -> PrimIO (Nullable Attr)


export
length : (obj : NamedNodeMap) -> JSIO Bits32
length a = primJS $ NamedNodeMap.prim__length a


export
getNamedItemNS :
     (obj : NamedNodeMap)
  -> (namespace_ : Maybe String)
  -> (localName : String)
  -> JSIO (Maybe Attr)
getNamedItemNS a b c = tryJS "NamedNodeMap.getNamedItemNS" $
  NamedNodeMap.prim__getNamedItemNS a (toFFI b) c


export
getNamedItem :
     (obj : NamedNodeMap)
  -> (qualifiedName : String)
  -> JSIO (Maybe Attr)
getNamedItem a b = tryJS "NamedNodeMap.getNamedItem" $
  NamedNodeMap.prim__getNamedItem a b


export
item : (obj : NamedNodeMap) -> (index : Bits32) -> JSIO (Maybe Attr)
item a b = tryJS "NamedNodeMap.item" $ NamedNodeMap.prim__item a b


export
removeNamedItemNS :
     (obj : NamedNodeMap)
  -> (namespace_ : Maybe String)
  -> (localName : String)
  -> JSIO Attr
removeNamedItemNS a b c = primJS $
  NamedNodeMap.prim__removeNamedItemNS a (toFFI b) c


export
removeNamedItem : (obj : NamedNodeMap) -> (qualifiedName : String) -> JSIO Attr
removeNamedItem a b = primJS $ NamedNodeMap.prim__removeNamedItem a b


export
setNamedItemNS : (obj : NamedNodeMap) -> (attr : Attr) -> JSIO (Maybe Attr)
setNamedItemNS a b = tryJS "NamedNodeMap.setNamedItemNS" $
  NamedNodeMap.prim__setNamedItemNS a b


export
setNamedItem : (obj : NamedNodeMap) -> (attr : Attr) -> JSIO (Maybe Attr)
setNamedItem a b = tryJS "NamedNodeMap.setNamedItem" $
  NamedNodeMap.prim__setNamedItem a b

