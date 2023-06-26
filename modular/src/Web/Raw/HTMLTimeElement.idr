module Web.Raw.HTMLTimeElement

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
import Web.Types.HTMLTimeElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLTimeElement()"
prim__new : PrimIO HTMLTimeElement


export
%foreign "browser:lambda:x=>x.dateTime"
prim__dateTime : HTMLTimeElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.dateTime = v}"
prim__setDateTime : HTMLTimeElement -> String -> PrimIO ()



export
new : JSIO HTMLTimeElement
new = primJS $ HTMLTimeElement.prim__new


export
dateTime : HTMLTimeElement -> Attribute True Prelude.id String
dateTime v = fromPrim
               "HTMLTimeElement.getdateTime"
               prim__dateTime
               prim__setDateTime
               v

