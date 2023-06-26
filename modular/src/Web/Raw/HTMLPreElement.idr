module Web.Raw.HTMLPreElement

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
import Web.Types.HTMLPreElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLPreElement()"
prim__new : PrimIO HTMLPreElement


export
%foreign "browser:lambda:x=>x.width"
prim__width : HTMLPreElement -> PrimIO Int32



export
%foreign "browser:lambda:(x,v)=>{x.width = v}"
prim__setWidth : HTMLPreElement -> Int32 -> PrimIO ()



export
new : JSIO HTMLPreElement
new = primJS $ HTMLPreElement.prim__new


export
width : HTMLPreElement -> Attribute True Prelude.id Int32
width v = fromPrim "HTMLPreElement.getwidth" prim__width prim__setWidth v

