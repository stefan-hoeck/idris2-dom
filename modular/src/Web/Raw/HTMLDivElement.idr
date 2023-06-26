module Web.Raw.HTMLDivElement

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
import Web.Types.HTMLDivElement
import Web.Types.HTMLElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLDivElement()"
prim__new : PrimIO HTMLDivElement


export
%foreign "browser:lambda:x=>x.align"
prim__align : HTMLDivElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.align = v}"
prim__setAlign : HTMLDivElement -> String -> PrimIO ()



export
new : JSIO HTMLDivElement
new = primJS $ HTMLDivElement.prim__new


export
align : HTMLDivElement -> Attribute True Prelude.id String
align v = fromPrim "HTMLDivElement.getalign" prim__align prim__setAlign v

