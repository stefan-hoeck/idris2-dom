module Web.Raw.HTMLDetailsElement

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
import Web.Types.HTMLDetailsElement
import Web.Types.HTMLElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLDetailsElement()"
prim__new : PrimIO HTMLDetailsElement


export
%foreign "browser:lambda:x=>x.open"
prim__open : HTMLDetailsElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.open = v}"
prim__setOpen : HTMLDetailsElement -> Boolean -> PrimIO ()



export
new : JSIO HTMLDetailsElement
new = primJS $ HTMLDetailsElement.prim__new


export
open_ : HTMLDetailsElement -> Attribute True Prelude.id Bool
open_ v = fromPrim "HTMLDetailsElement.getopen" prim__open prim__setOpen v
