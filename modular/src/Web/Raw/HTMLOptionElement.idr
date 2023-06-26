module Web.Raw.HTMLOptionElement

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
import Web.Types.HTMLOptionElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLOptionElement()"
prim__new : PrimIO HTMLOptionElement


export
%foreign "browser:lambda:x=>x.defaultSelected"
prim__defaultSelected : HTMLOptionElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.defaultSelected = v}"
prim__setDefaultSelected : HTMLOptionElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.disabled"
prim__disabled : HTMLOptionElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.disabled = v}"
prim__setDisabled : HTMLOptionElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.form"
prim__form : HTMLOptionElement -> PrimIO (Nullable HTMLFormElement)


export
%foreign "browser:lambda:x=>x.index"
prim__index : HTMLOptionElement -> PrimIO Int32


export
%foreign "browser:lambda:x=>x.label"
prim__label : HTMLOptionElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.label = v}"
prim__setLabel : HTMLOptionElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.selected"
prim__selected : HTMLOptionElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.selected = v}"
prim__setSelected : HTMLOptionElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.text"
prim__text : HTMLOptionElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.text = v}"
prim__setText : HTMLOptionElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.value"
prim__value : HTMLOptionElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.value = v}"
prim__setValue : HTMLOptionElement -> String -> PrimIO ()



export
new : JSIO HTMLOptionElement
new = primJS $ HTMLOptionElement.prim__new


export
defaultSelected : HTMLOptionElement -> Attribute True Prelude.id Bool
defaultSelected v = fromPrim
                      "HTMLOptionElement.getdefaultSelected"
                      prim__defaultSelected
                      prim__setDefaultSelected
                      v


export
disabled : HTMLOptionElement -> Attribute True Prelude.id Bool
disabled v = fromPrim
               "HTMLOptionElement.getdisabled"
               prim__disabled
               prim__setDisabled
               v


export
form : (obj : HTMLOptionElement) -> JSIO (Maybe HTMLFormElement)
form a = tryJS "HTMLOptionElement.form" $ HTMLOptionElement.prim__form a


export
index : (obj : HTMLOptionElement) -> JSIO Int32
index a = primJS $ HTMLOptionElement.prim__index a


export
label : HTMLOptionElement -> Attribute True Prelude.id String
label v = fromPrim "HTMLOptionElement.getlabel" prim__label prim__setLabel v


export
selected : HTMLOptionElement -> Attribute True Prelude.id Bool
selected v = fromPrim
               "HTMLOptionElement.getselected"
               prim__selected
               prim__setSelected
               v


export
text : HTMLOptionElement -> Attribute True Prelude.id String
text v = fromPrim "HTMLOptionElement.gettext" prim__text prim__setText v


export
value : HTMLOptionElement -> Attribute True Prelude.id String
value v = fromPrim "HTMLOptionElement.getvalue" prim__value prim__setValue v
