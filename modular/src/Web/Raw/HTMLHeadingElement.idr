module Web.Raw.HTMLHeadingElement

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
import Web.Types.HTMLHeadingElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLHeadingElement()"
prim__new : PrimIO HTMLHeadingElement


export
%foreign "browser:lambda:x=>x.align"
prim__align : HTMLHeadingElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.align = v}"
prim__setAlign : HTMLHeadingElement -> String -> PrimIO ()



export
new : JSIO HTMLHeadingElement
new = primJS $ HTMLHeadingElement.prim__new


export
align : HTMLHeadingElement -> Attribute True Prelude.id String
align v = fromPrim "HTMLHeadingElement.getalign" prim__align prim__setAlign v
