module Web.Raw.HTMLFieldSetElement

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
import Web.Types.HTMLCollection
import Web.Types.HTMLElement
import Web.Types.HTMLFieldSetElement
import Web.Types.HTMLFormElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable
import Web.Types.ValidityState


%default total


export
%foreign "browser:lambda:()=> new HTMLFieldSetElement()"
prim__new : PrimIO HTMLFieldSetElement


export
%foreign "browser:lambda:x=>x.disabled"
prim__disabled : HTMLFieldSetElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.disabled = v}"
prim__setDisabled : HTMLFieldSetElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.elements"
prim__elements : HTMLFieldSetElement -> PrimIO HTMLCollection


export
%foreign "browser:lambda:x=>x.form"
prim__form : HTMLFieldSetElement -> PrimIO (Nullable HTMLFormElement)


export
%foreign "browser:lambda:x=>x.name"
prim__name : HTMLFieldSetElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.name = v}"
prim__setName : HTMLFieldSetElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.type"
prim__type : HTMLFieldSetElement -> PrimIO String


export
%foreign "browser:lambda:x=>x.validationMessage"
prim__validationMessage : HTMLFieldSetElement -> PrimIO String


export
%foreign "browser:lambda:x=>x.validity"
prim__validity : HTMLFieldSetElement -> PrimIO ValidityState


export
%foreign "browser:lambda:x=>x.willValidate"
prim__willValidate : HTMLFieldSetElement -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.checkValidity()"
prim__checkValidity : HTMLFieldSetElement -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.reportValidity()"
prim__reportValidity : HTMLFieldSetElement -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a)=>x.setCustomValidity(a)"
prim__setCustomValidity : HTMLFieldSetElement -> String -> PrimIO ()


export
new : JSIO HTMLFieldSetElement
new = primJS $ HTMLFieldSetElement.prim__new


export
disabled : HTMLFieldSetElement -> Attribute True Prelude.id Bool
disabled v = fromPrim
               "HTMLFieldSetElement.getdisabled"
               prim__disabled
               prim__setDisabled
               v


export
elements : (obj : HTMLFieldSetElement) -> JSIO HTMLCollection
elements a = primJS $ HTMLFieldSetElement.prim__elements a


export
form : (obj : HTMLFieldSetElement) -> JSIO (Maybe HTMLFormElement)
form a = tryJS "HTMLFieldSetElement.form" $ HTMLFieldSetElement.prim__form a


export
name : HTMLFieldSetElement -> Attribute True Prelude.id String
name v = fromPrim "HTMLFieldSetElement.getname" prim__name prim__setName v


export
type : (obj : HTMLFieldSetElement) -> JSIO String
type a = primJS $ HTMLFieldSetElement.prim__type a


export
validationMessage : (obj : HTMLFieldSetElement) -> JSIO String
validationMessage a = primJS $ HTMLFieldSetElement.prim__validationMessage a


export
validity : (obj : HTMLFieldSetElement) -> JSIO ValidityState
validity a = primJS $ HTMLFieldSetElement.prim__validity a


export
willValidate : (obj : HTMLFieldSetElement) -> JSIO Bool
willValidate a = tryJS "HTMLFieldSetElement.willValidate" $
  HTMLFieldSetElement.prim__willValidate a


export
checkValidity : (obj : HTMLFieldSetElement) -> JSIO Bool
checkValidity a = tryJS "HTMLFieldSetElement.checkValidity" $
  HTMLFieldSetElement.prim__checkValidity a


export
reportValidity : (obj : HTMLFieldSetElement) -> JSIO Bool
reportValidity a = tryJS "HTMLFieldSetElement.reportValidity" $
  HTMLFieldSetElement.prim__reportValidity a


export
setCustomValidity : (obj : HTMLFieldSetElement) -> (error : String) -> JSIO ()
setCustomValidity a b = primJS $ HTMLFieldSetElement.prim__setCustomValidity a b
