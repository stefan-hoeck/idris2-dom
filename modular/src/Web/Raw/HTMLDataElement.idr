module Web.Raw.HTMLDataElement

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
import Web.Types.HTMLDataElement
import Web.Types.HTMLElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLDataElement()"
prim__new : PrimIO HTMLDataElement


export
%foreign "browser:lambda:x=>x.value"
prim__value : HTMLDataElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.value = v}"
prim__setValue : HTMLDataElement -> String -> PrimIO ()



export
new : JSIO HTMLDataElement
new = primJS $ HTMLDataElement.prim__new


export
value : HTMLDataElement -> Attribute True Prelude.id String
value v = fromPrim "HTMLDataElement.getvalue" prim__value prim__setValue v
