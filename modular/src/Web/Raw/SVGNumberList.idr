module Web.Raw.SVGNumberList

import JS
import Web.Types.SVGNumber
import Web.Types.SVGNumberList


%default total


export
%foreign "browser:lambda:(o,x,v)=>o[x] = v"
prim__set : SVGNumberList -> Bits32 -> SVGNumber -> PrimIO ()


export
%foreign "browser:lambda:x=>x.length"
prim__length : SVGNumberList -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.numberOfItems"
prim__numberOfItems : SVGNumberList -> PrimIO Bits32


export
%foreign "browser:lambda:(x,a)=>x.appendItem(a)"
prim__appendItem : SVGNumberList -> SVGNumber -> PrimIO SVGNumber


export
%foreign "browser:lambda:x=>x.clear()"
prim__clear : SVGNumberList -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.getItem(a)"
prim__getItem : SVGNumberList -> Bits32 -> PrimIO SVGNumber


export
%foreign "browser:lambda:(x,a)=>x.initialize(a)"
prim__initialize : SVGNumberList -> SVGNumber -> PrimIO SVGNumber


export
%foreign "browser:lambda:(x,a,b)=>x.insertItemBefore(a,b)"
prim__insertItemBefore :
     SVGNumberList
  -> SVGNumber
  -> Bits32
  -> PrimIO SVGNumber


export
%foreign "browser:lambda:(x,a)=>x.removeItem(a)"
prim__removeItem : SVGNumberList -> Bits32 -> PrimIO SVGNumber


export
%foreign "browser:lambda:(x,a,b)=>x.replaceItem(a,b)"
prim__replaceItem : SVGNumberList -> SVGNumber -> Bits32 -> PrimIO SVGNumber


export
set :
     (obj : SVGNumberList)
  -> (index : Bits32)
  -> (newItem : SVGNumber)
  -> JSIO ()
set a b c = primJS $ SVGNumberList.prim__set a b c


export
length : (obj : SVGNumberList) -> JSIO Bits32
length a = primJS $ SVGNumberList.prim__length a


export
numberOfItems : (obj : SVGNumberList) -> JSIO Bits32
numberOfItems a = primJS $ SVGNumberList.prim__numberOfItems a


export
appendItem : (obj : SVGNumberList) -> (newItem : SVGNumber) -> JSIO SVGNumber
appendItem a b = primJS $ SVGNumberList.prim__appendItem a b


export
clear : (obj : SVGNumberList) -> JSIO ()
clear a = primJS $ SVGNumberList.prim__clear a


export
getItem : (obj : SVGNumberList) -> (index : Bits32) -> JSIO SVGNumber
getItem a b = primJS $ SVGNumberList.prim__getItem a b


export
initialize : (obj : SVGNumberList) -> (newItem : SVGNumber) -> JSIO SVGNumber
initialize a b = primJS $ SVGNumberList.prim__initialize a b


export
insertItemBefore :
     (obj : SVGNumberList)
  -> (newItem : SVGNumber)
  -> (index : Bits32)
  -> JSIO SVGNumber
insertItemBefore a b c = primJS $ SVGNumberList.prim__insertItemBefore a b c


export
removeItem : (obj : SVGNumberList) -> (index : Bits32) -> JSIO SVGNumber
removeItem a b = primJS $ SVGNumberList.prim__removeItem a b


export
replaceItem :
     (obj : SVGNumberList)
  -> (newItem : SVGNumber)
  -> (index : Bits32)
  -> JSIO SVGNumber
replaceItem a b c = primJS $ SVGNumberList.prim__replaceItem a b c

