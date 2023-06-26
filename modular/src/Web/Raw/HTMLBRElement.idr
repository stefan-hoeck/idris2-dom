module Web.Raw.HTMLBRElement

import JS
import Web.Types.Animatable
import Web.Types.ChildNode
import Web.Types.DocumentAndElementEventHandlers
import Web.Types.Element
import Web.Types.ElementCSSInlineStyle
import Web.Types.ElementContentEditable
import Web.Types.EventTarget
import Web.Types.GeometryUtils
import Web.Types.GlobalEventHandlers
import Web.Types.HTMLBRElement
import Web.Types.HTMLElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLBRElement()"
prim__new : PrimIO HTMLBRElement


export
%foreign "browser:lambda:x=>x.clear"
prim__clear : HTMLBRElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.clear = v}"
prim__setClear : HTMLBRElement -> String -> PrimIO ()



export
new : JSIO HTMLBRElement
new = primJS $ HTMLBRElement.prim__new


export
clear : HTMLBRElement -> Attribute True Prelude.id String
clear v = fromPrim "HTMLBRElement.getclear" prim__clear prim__setClear v
