module Web.Raw.HTMLDataListElement

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
import Web.Types.HTMLCollection
import Web.Types.HTMLDataListElement
import Web.Types.HTMLElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLDataListElement()"
prim__new : PrimIO HTMLDataListElement


export
%foreign "browser:lambda:x=>x.options"
prim__options : HTMLDataListElement -> PrimIO HTMLCollection


export
new : JSIO HTMLDataListElement
new = primJS $ HTMLDataListElement.prim__new


export
options : (obj : HTMLDataListElement) -> JSIO HTMLCollection
options a = primJS $ HTMLDataListElement.prim__options a

