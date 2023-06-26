module Web.Raw.HTMLLIElement

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
import Web.Types.HTMLLIElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLLIElement()"
prim__new : PrimIO HTMLLIElement


export
%foreign "browser:lambda:x=>x.type"
prim__type : HTMLLIElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.type = v}"
prim__setType : HTMLLIElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.value"
prim__value : HTMLLIElement -> PrimIO Int32



export
%foreign "browser:lambda:(x,v)=>{x.value = v}"
prim__setValue : HTMLLIElement -> Int32 -> PrimIO ()



export
new : JSIO HTMLLIElement
new = primJS $ HTMLLIElement.prim__new


export
type : HTMLLIElement -> Attribute True Prelude.id String
type v = fromPrim "HTMLLIElement.gettype" prim__type prim__setType v


export
value : HTMLLIElement -> Attribute True Prelude.id Int32
value v = fromPrim "HTMLLIElement.getvalue" prim__value prim__setValue v
