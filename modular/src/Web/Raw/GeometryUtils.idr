module Web.Raw.GeometryUtils

import JS
import Web.Types.BoxQuadOptions
import Web.Types.CSSPseudoElement
import Web.Types.ConvertCoordinateOptions
import Web.Types.DOMPoint
import Web.Types.DOMPointInit
import Web.Types.DOMQuad
import Web.Types.DOMQuadInit
import Web.Types.DOMRectReadOnly
import Web.Types.Document
import Web.Types.Element
import Web.Types.GeometryUtils
import Web.Types.Text


%default total


export
%foreign "browser:lambda:(x,a,b,c)=>x.convertPointFromNode(a,b,c)"
prim__convertPointFromNode :
     GeometryUtils
  -> DOMPointInit
  -> Union4 Text Element CSSPseudoElement Document
  -> UndefOr ConvertCoordinateOptions
  -> PrimIO DOMPoint


export
%foreign "browser:lambda:(x,a,b,c)=>x.convertQuadFromNode(a,b,c)"
prim__convertQuadFromNode :
     GeometryUtils
  -> DOMQuadInit
  -> Union4 Text Element CSSPseudoElement Document
  -> UndefOr ConvertCoordinateOptions
  -> PrimIO DOMQuad


export
%foreign "browser:lambda:(x,a,b,c)=>x.convertRectFromNode(a,b,c)"
prim__convertRectFromNode :
     GeometryUtils
  -> DOMRectReadOnly
  -> Union4 Text Element CSSPseudoElement Document
  -> UndefOr ConvertCoordinateOptions
  -> PrimIO DOMQuad


export
%foreign "browser:lambda:(x,a)=>x.getBoxQuads(a)"
prim__getBoxQuads :
     GeometryUtils
  -> UndefOr BoxQuadOptions
  -> PrimIO (Array DOMQuad)


export
convertPointFromNode' :
     {auto _ : Cast t1 GeometryUtils}
  -> {auto _ : Cast t2 DOMPointInit}
  -> {auto _ : Cast t4 ConvertCoordinateOptions}
  -> (obj : t1)
  -> (point : t2)
  -> (from : HSum [Text, Element, CSSPseudoElement, Document])
  -> (options : Optional t4)
  -> JSIO DOMPoint
convertPointFromNode' a b c d = primJS $
  GeometryUtils.prim__convertPointFromNode (cast a) (cast b) (toFFI c) (optUp d)

export
convertPointFromNode :
     {auto _ : Cast t1 GeometryUtils}
  -> {auto _ : Cast t2 DOMPointInit}
  -> (obj : t1)
  -> (point : t2)
  -> (from : HSum [Text, Element, CSSPseudoElement, Document])
  -> JSIO DOMPoint
convertPointFromNode a b c = primJS $
  GeometryUtils.prim__convertPointFromNode (cast a) (cast b) (toFFI c) undef


export
convertQuadFromNode' :
     {auto _ : Cast t1 GeometryUtils}
  -> {auto _ : Cast t2 DOMQuadInit}
  -> {auto _ : Cast t4 ConvertCoordinateOptions}
  -> (obj : t1)
  -> (quad : t2)
  -> (from : HSum [Text, Element, CSSPseudoElement, Document])
  -> (options : Optional t4)
  -> JSIO DOMQuad
convertQuadFromNode' a b c d = primJS $
  GeometryUtils.prim__convertQuadFromNode (cast a) (cast b) (toFFI c) (optUp d)

export
convertQuadFromNode :
     {auto _ : Cast t1 GeometryUtils}
  -> {auto _ : Cast t2 DOMQuadInit}
  -> (obj : t1)
  -> (quad : t2)
  -> (from : HSum [Text, Element, CSSPseudoElement, Document])
  -> JSIO DOMQuad
convertQuadFromNode a b c = primJS $
  GeometryUtils.prim__convertQuadFromNode (cast a) (cast b) (toFFI c) undef


export
convertRectFromNode' :
     {auto _ : Cast t1 GeometryUtils}
  -> {auto _ : Cast t2 DOMRectReadOnly}
  -> {auto _ : Cast t4 ConvertCoordinateOptions}
  -> (obj : t1)
  -> (rect : t2)
  -> (from : HSum [Text, Element, CSSPseudoElement, Document])
  -> (options : Optional t4)
  -> JSIO DOMQuad
convertRectFromNode' a b c d = primJS $
  GeometryUtils.prim__convertRectFromNode (cast a) (cast b) (toFFI c) (optUp d)

export
convertRectFromNode :
     {auto _ : Cast t1 GeometryUtils}
  -> {auto _ : Cast t2 DOMRectReadOnly}
  -> (obj : t1)
  -> (rect : t2)
  -> (from : HSum [Text, Element, CSSPseudoElement, Document])
  -> JSIO DOMQuad
convertRectFromNode a b c = primJS $
  GeometryUtils.prim__convertRectFromNode (cast a) (cast b) (toFFI c) undef


export
getBoxQuads' :
     {auto _ : Cast t1 GeometryUtils}
  -> {auto _ : Cast t2 BoxQuadOptions}
  -> (obj : t1)
  -> (options : Optional t2)
  -> JSIO (Array DOMQuad)
getBoxQuads' a b = primJS $ GeometryUtils.prim__getBoxQuads (cast a) (optUp b)

export
getBoxQuads :
     {auto _ : Cast t1 GeometryUtils}
  -> (obj : t1)
  -> JSIO (Array DOMQuad)
getBoxQuads a = primJS $ GeometryUtils.prim__getBoxQuads (cast a) undef

