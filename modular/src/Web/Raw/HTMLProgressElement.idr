module Web.Raw.HTMLProgressElement

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
import Web.Types.HTMLProgressElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NodeList
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLProgressElement()"
prim__new : PrimIO HTMLProgressElement


export
%foreign "browser:lambda:x=>x.labels"
prim__labels : HTMLProgressElement -> PrimIO NodeList


export
%foreign "browser:lambda:x=>x.max"
prim__max : HTMLProgressElement -> PrimIO Double



export
%foreign "browser:lambda:(x,v)=>{x.max = v}"
prim__setMax : HTMLProgressElement -> Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.position"
prim__position : HTMLProgressElement -> PrimIO Double


export
%foreign "browser:lambda:x=>x.value"
prim__value : HTMLProgressElement -> PrimIO Double



export
%foreign "browser:lambda:(x,v)=>{x.value = v}"
prim__setValue : HTMLProgressElement -> Double -> PrimIO ()



export
new : JSIO HTMLProgressElement
new = primJS $ HTMLProgressElement.prim__new


export
labels : (obj : HTMLProgressElement) -> JSIO NodeList
labels a = primJS $ HTMLProgressElement.prim__labels a


export
max : HTMLProgressElement -> Attribute True Prelude.id Double
max v = fromPrim "HTMLProgressElement.getmax" prim__max prim__setMax v


export
position : (obj : HTMLProgressElement) -> JSIO Double
position a = primJS $ HTMLProgressElement.prim__position a


export
value : HTMLProgressElement -> Attribute True Prelude.id Double
value v = fromPrim "HTMLProgressElement.getvalue" prim__value prim__setValue v

