module Web.Raw.HTMLTitleElement

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
import Web.Types.HTMLElement
import Web.Types.HTMLOrSVGElement
import Web.Types.HTMLTitleElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLTitleElement()"
prim__new : PrimIO HTMLTitleElement


export
%foreign "browser:lambda:x=>x.text"
prim__text : HTMLTitleElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.text = v}"
prim__setText : HTMLTitleElement -> String -> PrimIO ()



export
new : JSIO HTMLTitleElement
new = primJS $ HTMLTitleElement.prim__new


export
text : HTMLTitleElement -> Attribute True Prelude.id String
text v = fromPrim "HTMLTitleElement.gettext" prim__text prim__setText v
