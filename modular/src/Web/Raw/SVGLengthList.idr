module Web.Raw.SVGLengthList

import JS
import Web.Types.SVGLength
import Web.Types.SVGLengthList


%default total


export
%foreign "browser:lambda:(o,x,v)=>o[x] = v"
prim__set : SVGLengthList -> Bits32 -> SVGLength -> PrimIO ()


export
%foreign "browser:lambda:x=>x.length"
prim__length : SVGLengthList -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.numberOfItems"
prim__numberOfItems : SVGLengthList -> PrimIO Bits32


export
%foreign "browser:lambda:(x,a)=>x.appendItem(a)"
prim__appendItem : SVGLengthList -> SVGLength -> PrimIO SVGLength


export
%foreign "browser:lambda:x=>x.clear()"
prim__clear : SVGLengthList -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.getItem(a)"
prim__getItem : SVGLengthList -> Bits32 -> PrimIO SVGLength


export
%foreign "browser:lambda:(x,a)=>x.initialize(a)"
prim__initialize : SVGLengthList -> SVGLength -> PrimIO SVGLength


export
%foreign "browser:lambda:(x,a,b)=>x.insertItemBefore(a,b)"
prim__insertItemBefore :
     SVGLengthList
  -> SVGLength
  -> Bits32
  -> PrimIO SVGLength


export
%foreign "browser:lambda:(x,a)=>x.removeItem(a)"
prim__removeItem : SVGLengthList -> Bits32 -> PrimIO SVGLength


export
%foreign "browser:lambda:(x,a,b)=>x.replaceItem(a,b)"
prim__replaceItem : SVGLengthList -> SVGLength -> Bits32 -> PrimIO SVGLength


export
set :
     (obj : SVGLengthList)
  -> (index : Bits32)
  -> (newItem : SVGLength)
  -> JSIO ()
set a b c = primJS $ SVGLengthList.prim__set a b c


export
length : (obj : SVGLengthList) -> JSIO Bits32
length a = primJS $ SVGLengthList.prim__length a


export
numberOfItems : (obj : SVGLengthList) -> JSIO Bits32
numberOfItems a = primJS $ SVGLengthList.prim__numberOfItems a


export
appendItem : (obj : SVGLengthList) -> (newItem : SVGLength) -> JSIO SVGLength
appendItem a b = primJS $ SVGLengthList.prim__appendItem a b


export
clear : (obj : SVGLengthList) -> JSIO ()
clear a = primJS $ SVGLengthList.prim__clear a


export
getItem : (obj : SVGLengthList) -> (index : Bits32) -> JSIO SVGLength
getItem a b = primJS $ SVGLengthList.prim__getItem a b


export
initialize : (obj : SVGLengthList) -> (newItem : SVGLength) -> JSIO SVGLength
initialize a b = primJS $ SVGLengthList.prim__initialize a b


export
insertItemBefore :
     (obj : SVGLengthList)
  -> (newItem : SVGLength)
  -> (index : Bits32)
  -> JSIO SVGLength
insertItemBefore a b c = primJS $ SVGLengthList.prim__insertItemBefore a b c


export
removeItem : (obj : SVGLengthList) -> (index : Bits32) -> JSIO SVGLength
removeItem a b = primJS $ SVGLengthList.prim__removeItem a b


export
replaceItem :
     (obj : SVGLengthList)
  -> (newItem : SVGLength)
  -> (index : Bits32)
  -> JSIO SVGLength
replaceItem a b c = primJS $ SVGLengthList.prim__replaceItem a b c

