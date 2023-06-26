module Web.Raw.HTMLMenuElement

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
import Web.Types.HTMLMenuElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLMenuElement()"
prim__new : PrimIO HTMLMenuElement


export
%foreign "browser:lambda:x=>x.compact"
prim__compact : HTMLMenuElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.compact = v}"
prim__setCompact : HTMLMenuElement -> Boolean -> PrimIO ()



export
new : JSIO HTMLMenuElement
new = primJS $ HTMLMenuElement.prim__new


export
compact : HTMLMenuElement -> Attribute True Prelude.id Bool
compact v = fromPrim
              "HTMLMenuElement.getcompact"
              prim__compact
              prim__setCompact
              v
