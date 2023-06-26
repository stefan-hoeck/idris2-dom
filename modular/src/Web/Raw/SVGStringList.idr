module Web.Raw.SVGStringList

import JS
import Web.Types.SVGStringList


%default total


export
%foreign "browser:lambda:(o,x,v)=>o[x] = v"
prim__set : SVGStringList -> Bits32 -> String -> PrimIO ()


export
%foreign "browser:lambda:x=>x.length"
prim__length : SVGStringList -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.numberOfItems"
prim__numberOfItems : SVGStringList -> PrimIO Bits32


export
%foreign "browser:lambda:(x,a)=>x.appendItem(a)"
prim__appendItem : SVGStringList -> String -> PrimIO String


export
%foreign "browser:lambda:x=>x.clear()"
prim__clear : SVGStringList -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.getItem(a)"
prim__getItem : SVGStringList -> Bits32 -> PrimIO String


export
%foreign "browser:lambda:(x,a)=>x.initialize(a)"
prim__initialize : SVGStringList -> String -> PrimIO String


export
%foreign "browser:lambda:(x,a,b)=>x.insertItemBefore(a,b)"
prim__insertItemBefore : SVGStringList -> String -> Bits32 -> PrimIO String


export
%foreign "browser:lambda:(x,a)=>x.removeItem(a)"
prim__removeItem : SVGStringList -> Bits32 -> PrimIO String


export
%foreign "browser:lambda:(x,a,b)=>x.replaceItem(a,b)"
prim__replaceItem : SVGStringList -> String -> Bits32 -> PrimIO String


export
set : (obj : SVGStringList) -> (index : Bits32) -> (newItem : String) -> JSIO ()
set a b c = primJS $ SVGStringList.prim__set a b c


export
length : (obj : SVGStringList) -> JSIO Bits32
length a = primJS $ SVGStringList.prim__length a


export
numberOfItems : (obj : SVGStringList) -> JSIO Bits32
numberOfItems a = primJS $ SVGStringList.prim__numberOfItems a


export
appendItem : (obj : SVGStringList) -> (newItem : String) -> JSIO String
appendItem a b = primJS $ SVGStringList.prim__appendItem a b


export
clear : (obj : SVGStringList) -> JSIO ()
clear a = primJS $ SVGStringList.prim__clear a


export
getItem : (obj : SVGStringList) -> (index : Bits32) -> JSIO String
getItem a b = primJS $ SVGStringList.prim__getItem a b


export
initialize : (obj : SVGStringList) -> (newItem : String) -> JSIO String
initialize a b = primJS $ SVGStringList.prim__initialize a b


export
insertItemBefore :
     (obj : SVGStringList)
  -> (newItem : String)
  -> (index : Bits32)
  -> JSIO String
insertItemBefore a b c = primJS $ SVGStringList.prim__insertItemBefore a b c


export
removeItem : (obj : SVGStringList) -> (index : Bits32) -> JSIO String
removeItem a b = primJS $ SVGStringList.prim__removeItem a b


export
replaceItem :
     (obj : SVGStringList)
  -> (newItem : String)
  -> (index : Bits32)
  -> JSIO String
replaceItem a b c = primJS $ SVGStringList.prim__replaceItem a b c
