module Web.Raw.HTMLTemplateElement

import JS
import Web.Types.Animatable
import Web.Types.ChildNode
import Web.Types.DocumentAndElementEventHandlers
import Web.Types.DocumentFragment
import Web.Types.Element
import Web.Types.ElementCSSInlineStyle
import Web.Types.ElementContentEditable
import Web.Types.EventTarget
import Web.Types.GeometryUtils
import Web.Types.GlobalEventHandlers
import Web.Types.HTMLElement
import Web.Types.HTMLOrSVGElement
import Web.Types.HTMLTemplateElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLTemplateElement()"
prim__new : PrimIO HTMLTemplateElement


export
%foreign "browser:lambda:x=>x.content"
prim__content : HTMLTemplateElement -> PrimIO DocumentFragment


export
new : JSIO HTMLTemplateElement
new = primJS $ HTMLTemplateElement.prim__new


export
content : (obj : HTMLTemplateElement) -> JSIO DocumentFragment
content a = primJS $ HTMLTemplateElement.prim__content a

