module Web.Raw.HTMLDListElement

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
import Web.Types.HTMLDListElement
import Web.Types.HTMLElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLDListElement()"
prim__new : PrimIO HTMLDListElement


export
%foreign "browser:lambda:x=>x.compact"
prim__compact : HTMLDListElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.compact = v}"
prim__setCompact : HTMLDListElement -> Boolean -> PrimIO ()



export
new : JSIO HTMLDListElement
new = primJS $ HTMLDListElement.prim__new


export
compact : HTMLDListElement -> Attribute True Prelude.id Bool
compact v = fromPrim
              "HTMLDListElement.getcompact"
              prim__compact
              prim__setCompact
              v
