module Web.Raw.HTMLOptGroupElement

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
import Web.Types.HTMLOptGroupElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLOptGroupElement()"
prim__new : PrimIO HTMLOptGroupElement


export
%foreign "browser:lambda:x=>x.disabled"
prim__disabled : HTMLOptGroupElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.disabled = v}"
prim__setDisabled : HTMLOptGroupElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.label"
prim__label : HTMLOptGroupElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.label = v}"
prim__setLabel : HTMLOptGroupElement -> String -> PrimIO ()



export
new : JSIO HTMLOptGroupElement
new = primJS $ HTMLOptGroupElement.prim__new


export
disabled : HTMLOptGroupElement -> Attribute True Prelude.id Bool
disabled v = fromPrim
               "HTMLOptGroupElement.getdisabled"
               prim__disabled
               prim__setDisabled
               v


export
label : HTMLOptGroupElement -> Attribute True Prelude.id String
label v = fromPrim "HTMLOptGroupElement.getlabel" prim__label prim__setLabel v

