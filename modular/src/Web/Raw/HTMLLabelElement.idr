module Web.Raw.HTMLLabelElement

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
import Web.Types.HTMLFormElement
import Web.Types.HTMLLabelElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLLabelElement()"
prim__new : PrimIO HTMLLabelElement


export
%foreign "browser:lambda:x=>x.control"
prim__control : HTMLLabelElement -> PrimIO (Nullable HTMLElement)


export
%foreign "browser:lambda:x=>x.form"
prim__form : HTMLLabelElement -> PrimIO (Nullable HTMLFormElement)


export
%foreign "browser:lambda:x=>x.htmlFor"
prim__htmlFor : HTMLLabelElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.htmlFor = v}"
prim__setHtmlFor : HTMLLabelElement -> String -> PrimIO ()



export
new : JSIO HTMLLabelElement
new = primJS $ HTMLLabelElement.prim__new


export
control : (obj : HTMLLabelElement) -> JSIO (Maybe HTMLElement)
control a = tryJS "HTMLLabelElement.control" $ HTMLLabelElement.prim__control a


export
form : (obj : HTMLLabelElement) -> JSIO (Maybe HTMLFormElement)
form a = tryJS "HTMLLabelElement.form" $ HTMLLabelElement.prim__form a


export
htmlFor : HTMLLabelElement -> Attribute True Prelude.id String
htmlFor v = fromPrim
              "HTMLLabelElement.gethtmlFor"
              prim__htmlFor
              prim__setHtmlFor
              v

