module Web.Raw.SVGTextContentElement

import JS
import Web.Types.Animatable
import Web.Types.ChildNode
import Web.Types.DOMPoint
import Web.Types.DOMPointInit
import Web.Types.DOMRect
import Web.Types.DocumentAndElementEventHandlers
import Web.Types.Element
import Web.Types.ElementCSSInlineStyle
import Web.Types.EventTarget
import Web.Types.GeometryUtils
import Web.Types.GlobalEventHandlers
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.SVGAnimatedEnumeration
import Web.Types.SVGAnimatedLength
import Web.Types.SVGElement
import Web.Types.SVGElementInstance
import Web.Types.SVGGraphicsElement
import Web.Types.SVGTests
import Web.Types.SVGTextContentElement
import Web.Types.Slottable


%default total


export
LENGTHADJUST_SPACING : Bits16
LENGTHADJUST_SPACING = 1


export
LENGTHADJUST_SPACINGANDGLYPHS : Bits16
LENGTHADJUST_SPACINGANDGLYPHS = 2


export
LENGTHADJUST_UNKNOWN : Bits16
LENGTHADJUST_UNKNOWN = 0


export
%foreign "browser:lambda:x=>x.lengthAdjust"
prim__lengthAdjust : SVGTextContentElement -> PrimIO SVGAnimatedEnumeration


export
%foreign "browser:lambda:x=>x.textLength"
prim__textLength : SVGTextContentElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:(x,a)=>x.getCharNumAtPosition(a)"
prim__getCharNumAtPosition :
     SVGTextContentElement
  -> UndefOr DOMPointInit
  -> PrimIO Int32


export
%foreign "browser:lambda:x=>x.getComputedTextLength()"
prim__getComputedTextLength : SVGTextContentElement -> PrimIO Double


export
%foreign "browser:lambda:(x,a)=>x.getEndPositionOfChar(a)"
prim__getEndPositionOfChar : SVGTextContentElement -> Bits32 -> PrimIO DOMPoint


export
%foreign "browser:lambda:(x,a)=>x.getExtentOfChar(a)"
prim__getExtentOfChar : SVGTextContentElement -> Bits32 -> PrimIO DOMRect


export
%foreign "browser:lambda:x=>x.getNumberOfChars()"
prim__getNumberOfChars : SVGTextContentElement -> PrimIO Int32


export
%foreign "browser:lambda:(x,a)=>x.getRotationOfChar(a)"
prim__getRotationOfChar : SVGTextContentElement -> Bits32 -> PrimIO Double


export
%foreign "browser:lambda:(x,a)=>x.getStartPositionOfChar(a)"
prim__getStartPositionOfChar :
     SVGTextContentElement
  -> Bits32
  -> PrimIO DOMPoint


export
%foreign "browser:lambda:(x,a,b)=>x.getSubStringLength(a,b)"
prim__getSubStringLength :
     SVGTextContentElement
  -> Bits32
  -> Bits32
  -> PrimIO Double


export
%foreign "browser:lambda:(x,a,b)=>x.selectSubString(a,b)"
prim__selectSubString : SVGTextContentElement -> Bits32 -> Bits32 -> PrimIO ()


export
lengthAdjust :
     {auto _ : Cast t1 SVGTextContentElement}
  -> (obj : t1)
  -> JSIO SVGAnimatedEnumeration
lengthAdjust a = primJS $ SVGTextContentElement.prim__lengthAdjust (cast a)


export
textLength :
     {auto _ : Cast t1 SVGTextContentElement}
  -> (obj : t1)
  -> JSIO SVGAnimatedLength
textLength a = primJS $ SVGTextContentElement.prim__textLength (cast a)


export
getCharNumAtPosition' :
     {auto _ : Cast t1 SVGTextContentElement}
  -> {auto _ : Cast t2 DOMPointInit}
  -> (obj : t1)
  -> (point : Optional t2)
  -> JSIO Int32
getCharNumAtPosition' a b = primJS $
  SVGTextContentElement.prim__getCharNumAtPosition (cast a) (optUp b)

export
getCharNumAtPosition :
     {auto _ : Cast t1 SVGTextContentElement}
  -> (obj : t1)
  -> JSIO Int32
getCharNumAtPosition a = primJS $
  SVGTextContentElement.prim__getCharNumAtPosition (cast a) undef


export
getComputedTextLength :
     {auto _ : Cast t1 SVGTextContentElement}
  -> (obj : t1)
  -> JSIO Double
getComputedTextLength a = primJS $
  SVGTextContentElement.prim__getComputedTextLength (cast a)


export
getEndPositionOfChar :
     {auto _ : Cast t1 SVGTextContentElement}
  -> (obj : t1)
  -> (charnum : Bits32)
  -> JSIO DOMPoint
getEndPositionOfChar a b = primJS $
  SVGTextContentElement.prim__getEndPositionOfChar (cast a) b


export
getExtentOfChar :
     {auto _ : Cast t1 SVGTextContentElement}
  -> (obj : t1)
  -> (charnum : Bits32)
  -> JSIO DOMRect
getExtentOfChar a b = primJS $
  SVGTextContentElement.prim__getExtentOfChar (cast a) b


export
getNumberOfChars :
     {auto _ : Cast t1 SVGTextContentElement}
  -> (obj : t1)
  -> JSIO Int32
getNumberOfChars a = primJS $
  SVGTextContentElement.prim__getNumberOfChars (cast a)


export
getRotationOfChar :
     {auto _ : Cast t1 SVGTextContentElement}
  -> (obj : t1)
  -> (charnum : Bits32)
  -> JSIO Double
getRotationOfChar a b = primJS $
  SVGTextContentElement.prim__getRotationOfChar (cast a) b


export
getStartPositionOfChar :
     {auto _ : Cast t1 SVGTextContentElement}
  -> (obj : t1)
  -> (charnum : Bits32)
  -> JSIO DOMPoint
getStartPositionOfChar a b = primJS $
  SVGTextContentElement.prim__getStartPositionOfChar (cast a) b


export
getSubStringLength :
     {auto _ : Cast t1 SVGTextContentElement}
  -> (obj : t1)
  -> (charnum : Bits32)
  -> (nchars : Bits32)
  -> JSIO Double
getSubStringLength a b c = primJS $
  SVGTextContentElement.prim__getSubStringLength (cast a) b c


export
selectSubString :
     {auto _ : Cast t1 SVGTextContentElement}
  -> (obj : t1)
  -> (charnum : Bits32)
  -> (nchars : Bits32)
  -> JSIO ()
selectSubString a b c = primJS $
  SVGTextContentElement.prim__selectSubString (cast a) b c

