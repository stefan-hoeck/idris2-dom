module Web.Raw.CSSPseudoElement

import JS
import Web.Types.Animatable
import Web.Types.CSSPseudoElement
import Web.Types.Element
import Web.Types.EventTarget
import Web.Types.GeometryUtils


%default total


export
%foreign "browser:lambda:x=>x.element"
prim__element : CSSPseudoElement -> PrimIO Element


export
%foreign "browser:lambda:x=>x.type"
prim__type : CSSPseudoElement -> PrimIO String


export
element : (obj : CSSPseudoElement) -> JSIO Element
element a = primJS $ CSSPseudoElement.prim__element a


export
type : (obj : CSSPseudoElement) -> JSIO String
type a = primJS $ CSSPseudoElement.prim__type a

