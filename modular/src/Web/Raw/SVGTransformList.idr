module Web.Raw.SVGTransformList

import JS
import Web.Types.DOMMatrix2DInit
import Web.Types.SVGTransform
import Web.Types.SVGTransformList


%default total


export
%foreign "browser:lambda:(o,x,v)=>o[x] = v"
prim__set : SVGTransformList -> Bits32 -> SVGTransform -> PrimIO ()


export
%foreign "browser:lambda:x=>x.length"
prim__length : SVGTransformList -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.numberOfItems"
prim__numberOfItems : SVGTransformList -> PrimIO Bits32


export
%foreign "browser:lambda:(x,a)=>x.appendItem(a)"
prim__appendItem : SVGTransformList -> SVGTransform -> PrimIO SVGTransform


export
%foreign "browser:lambda:x=>x.clear()"
prim__clear : SVGTransformList -> PrimIO ()


export
%foreign "browser:lambda:x=>x.consolidate()"
prim__consolidate : SVGTransformList -> PrimIO (Nullable SVGTransform)


export
%foreign "browser:lambda:(x,a)=>x.createSVGTransformFromMatrix(a)"
prim__createSVGTransformFromMatrix :
     SVGTransformList
  -> UndefOr DOMMatrix2DInit
  -> PrimIO SVGTransform


export
%foreign "browser:lambda:(x,a)=>x.getItem(a)"
prim__getItem : SVGTransformList -> Bits32 -> PrimIO SVGTransform


export
%foreign "browser:lambda:(x,a)=>x.initialize(a)"
prim__initialize : SVGTransformList -> SVGTransform -> PrimIO SVGTransform


export
%foreign "browser:lambda:(x,a,b)=>x.insertItemBefore(a,b)"
prim__insertItemBefore :
     SVGTransformList
  -> SVGTransform
  -> Bits32
  -> PrimIO SVGTransform


export
%foreign "browser:lambda:(x,a)=>x.removeItem(a)"
prim__removeItem : SVGTransformList -> Bits32 -> PrimIO SVGTransform


export
%foreign "browser:lambda:(x,a,b)=>x.replaceItem(a,b)"
prim__replaceItem :
     SVGTransformList
  -> SVGTransform
  -> Bits32
  -> PrimIO SVGTransform


export
set :
     (obj : SVGTransformList)
  -> (index : Bits32)
  -> (newItem : SVGTransform)
  -> JSIO ()
set a b c = primJS $ SVGTransformList.prim__set a b c


export
length : (obj : SVGTransformList) -> JSIO Bits32
length a = primJS $ SVGTransformList.prim__length a


export
numberOfItems : (obj : SVGTransformList) -> JSIO Bits32
numberOfItems a = primJS $ SVGTransformList.prim__numberOfItems a


export
appendItem :
     (obj : SVGTransformList)
  -> (newItem : SVGTransform)
  -> JSIO SVGTransform
appendItem a b = primJS $ SVGTransformList.prim__appendItem a b


export
clear : (obj : SVGTransformList) -> JSIO ()
clear a = primJS $ SVGTransformList.prim__clear a


export
consolidate : (obj : SVGTransformList) -> JSIO (Maybe SVGTransform)
consolidate a = tryJS "SVGTransformList.consolidate" $
  SVGTransformList.prim__consolidate a


export
createSVGTransformFromMatrix' :
     {auto _ : Cast t2 DOMMatrix2DInit}
  -> (obj : SVGTransformList)
  -> (matrix : Optional t2)
  -> JSIO SVGTransform
createSVGTransformFromMatrix' a b = primJS $
  SVGTransformList.prim__createSVGTransformFromMatrix a (optUp b)

export
createSVGTransformFromMatrix : (obj : SVGTransformList) -> JSIO SVGTransform
createSVGTransformFromMatrix a = primJS $
  SVGTransformList.prim__createSVGTransformFromMatrix a undef


export
getItem : (obj : SVGTransformList) -> (index : Bits32) -> JSIO SVGTransform
getItem a b = primJS $ SVGTransformList.prim__getItem a b


export
initialize :
     (obj : SVGTransformList)
  -> (newItem : SVGTransform)
  -> JSIO SVGTransform
initialize a b = primJS $ SVGTransformList.prim__initialize a b


export
insertItemBefore :
     (obj : SVGTransformList)
  -> (newItem : SVGTransform)
  -> (index : Bits32)
  -> JSIO SVGTransform
insertItemBefore a b c = primJS $ SVGTransformList.prim__insertItemBefore a b c


export
removeItem : (obj : SVGTransformList) -> (index : Bits32) -> JSIO SVGTransform
removeItem a b = primJS $ SVGTransformList.prim__removeItem a b


export
replaceItem :
     (obj : SVGTransformList)
  -> (newItem : SVGTransform)
  -> (index : Bits32)
  -> JSIO SVGTransform
replaceItem a b c = primJS $ SVGTransformList.prim__replaceItem a b c
