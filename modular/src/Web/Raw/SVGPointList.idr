module Web.Raw.SVGPointList

import JS
import Web.Types.DOMPoint
import Web.Types.SVGPointList


%default total


export
%foreign "browser:lambda:(o,x,v)=>o[x] = v"
prim__set : SVGPointList -> Bits32 -> DOMPoint -> PrimIO ()


export
%foreign "browser:lambda:x=>x.length"
prim__length : SVGPointList -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.numberOfItems"
prim__numberOfItems : SVGPointList -> PrimIO Bits32


export
%foreign "browser:lambda:(x,a)=>x.appendItem(a)"
prim__appendItem : SVGPointList -> DOMPoint -> PrimIO DOMPoint


export
%foreign "browser:lambda:x=>x.clear()"
prim__clear : SVGPointList -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.getItem(a)"
prim__getItem : SVGPointList -> Bits32 -> PrimIO DOMPoint


export
%foreign "browser:lambda:(x,a)=>x.initialize(a)"
prim__initialize : SVGPointList -> DOMPoint -> PrimIO DOMPoint


export
%foreign "browser:lambda:(x,a,b)=>x.insertItemBefore(a,b)"
prim__insertItemBefore : SVGPointList -> DOMPoint -> Bits32 -> PrimIO DOMPoint


export
%foreign "browser:lambda:(x,a)=>x.removeItem(a)"
prim__removeItem : SVGPointList -> Bits32 -> PrimIO DOMPoint


export
%foreign "browser:lambda:(x,a,b)=>x.replaceItem(a,b)"
prim__replaceItem : SVGPointList -> DOMPoint -> Bits32 -> PrimIO DOMPoint


export
set :
     (obj : SVGPointList)
  -> (index : Bits32)
  -> (newItem : DOMPoint)
  -> JSIO ()
set a b c = primJS $ SVGPointList.prim__set a b c


export
length : (obj : SVGPointList) -> JSIO Bits32
length a = primJS $ SVGPointList.prim__length a


export
numberOfItems : (obj : SVGPointList) -> JSIO Bits32
numberOfItems a = primJS $ SVGPointList.prim__numberOfItems a


export
appendItem : (obj : SVGPointList) -> (newItem : DOMPoint) -> JSIO DOMPoint
appendItem a b = primJS $ SVGPointList.prim__appendItem a b


export
clear : (obj : SVGPointList) -> JSIO ()
clear a = primJS $ SVGPointList.prim__clear a


export
getItem : (obj : SVGPointList) -> (index : Bits32) -> JSIO DOMPoint
getItem a b = primJS $ SVGPointList.prim__getItem a b


export
initialize : (obj : SVGPointList) -> (newItem : DOMPoint) -> JSIO DOMPoint
initialize a b = primJS $ SVGPointList.prim__initialize a b


export
insertItemBefore :
     (obj : SVGPointList)
  -> (newItem : DOMPoint)
  -> (index : Bits32)
  -> JSIO DOMPoint
insertItemBefore a b c = primJS $ SVGPointList.prim__insertItemBefore a b c


export
removeItem : (obj : SVGPointList) -> (index : Bits32) -> JSIO DOMPoint
removeItem a b = primJS $ SVGPointList.prim__removeItem a b


export
replaceItem :
     (obj : SVGPointList)
  -> (newItem : DOMPoint)
  -> (index : Bits32)
  -> JSIO DOMPoint
replaceItem a b c = primJS $ SVGPointList.prim__replaceItem a b c

