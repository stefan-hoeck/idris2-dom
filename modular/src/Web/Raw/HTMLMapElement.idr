module Web.Raw.HTMLMapElement

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
import Web.Types.HTMLElement
import Web.Types.HTMLMapElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLMapElement()"
prim__new : PrimIO HTMLMapElement


export
%foreign "browser:lambda:x=>x.areas"
prim__areas : HTMLMapElement -> PrimIO HTMLCollection


export
%foreign "browser:lambda:x=>x.name"
prim__name : HTMLMapElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.name = v}"
prim__setName : HTMLMapElement -> String -> PrimIO ()



export
new : JSIO HTMLMapElement
new = primJS $ HTMLMapElement.prim__new


export
areas : (obj : HTMLMapElement) -> JSIO HTMLCollection
areas a = primJS $ HTMLMapElement.prim__areas a


export
name : HTMLMapElement -> Attribute True Prelude.id String
name v = fromPrim "HTMLMapElement.getname" prim__name prim__setName v
