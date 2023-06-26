module Web.Raw.HTMLModElement

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
import Web.Types.HTMLModElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLModElement()"
prim__new : PrimIO HTMLModElement


export
%foreign "browser:lambda:x=>x.cite"
prim__cite : HTMLModElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.cite = v}"
prim__setCite : HTMLModElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.dateTime"
prim__dateTime : HTMLModElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.dateTime = v}"
prim__setDateTime : HTMLModElement -> String -> PrimIO ()



export
new : JSIO HTMLModElement
new = primJS $ HTMLModElement.prim__new


export
cite : HTMLModElement -> Attribute True Prelude.id String
cite v = fromPrim "HTMLModElement.getcite" prim__cite prim__setCite v


export
dateTime : HTMLModElement -> Attribute True Prelude.id String
dateTime v = fromPrim
               "HTMLModElement.getdateTime"
               prim__dateTime
               prim__setDateTime
               v
