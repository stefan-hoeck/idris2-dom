module Web.Raw.HTMLButtonElement

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
import Web.Types.HTMLButtonElement
import Web.Types.HTMLElement
import Web.Types.HTMLFormElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NodeList
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable
import Web.Types.ValidityState


%default total


export
%foreign "browser:lambda:()=> new HTMLButtonElement()"
prim__new : PrimIO HTMLButtonElement


export
%foreign "browser:lambda:x=>x.disabled"
prim__disabled : HTMLButtonElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.disabled = v}"
prim__setDisabled : HTMLButtonElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.form"
prim__form : HTMLButtonElement -> PrimIO (Nullable HTMLFormElement)


export
%foreign "browser:lambda:x=>x.formAction"
prim__formAction : HTMLButtonElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.formAction = v}"
prim__setFormAction : HTMLButtonElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.formEnctype"
prim__formEnctype : HTMLButtonElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.formEnctype = v}"
prim__setFormEnctype : HTMLButtonElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.formMethod"
prim__formMethod : HTMLButtonElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.formMethod = v}"
prim__setFormMethod : HTMLButtonElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.formNoValidate"
prim__formNoValidate : HTMLButtonElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.formNoValidate = v}"
prim__setFormNoValidate : HTMLButtonElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.formTarget"
prim__formTarget : HTMLButtonElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.formTarget = v}"
prim__setFormTarget : HTMLButtonElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.labels"
prim__labels : HTMLButtonElement -> PrimIO NodeList


export
%foreign "browser:lambda:x=>x.name"
prim__name : HTMLButtonElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.name = v}"
prim__setName : HTMLButtonElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.type"
prim__type : HTMLButtonElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.type = v}"
prim__setType : HTMLButtonElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.validationMessage"
prim__validationMessage : HTMLButtonElement -> PrimIO String


export
%foreign "browser:lambda:x=>x.validity"
prim__validity : HTMLButtonElement -> PrimIO ValidityState


export
%foreign "browser:lambda:x=>x.value"
prim__value : HTMLButtonElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.value = v}"
prim__setValue : HTMLButtonElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.willValidate"
prim__willValidate : HTMLButtonElement -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.checkValidity()"
prim__checkValidity : HTMLButtonElement -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.reportValidity()"
prim__reportValidity : HTMLButtonElement -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a)=>x.setCustomValidity(a)"
prim__setCustomValidity : HTMLButtonElement -> String -> PrimIO ()


export
new : JSIO HTMLButtonElement
new = primJS $ HTMLButtonElement.prim__new


export
disabled : HTMLButtonElement -> Attribute True Prelude.id Bool
disabled v = fromPrim
               "HTMLButtonElement.getdisabled"
               prim__disabled
               prim__setDisabled
               v


export
form : (obj : HTMLButtonElement) -> JSIO (Maybe HTMLFormElement)
form a = tryJS "HTMLButtonElement.form" $ HTMLButtonElement.prim__form a


export
formAction : HTMLButtonElement -> Attribute True Prelude.id String
formAction v = fromPrim
                 "HTMLButtonElement.getformAction"
                 prim__formAction
                 prim__setFormAction
                 v


export
formEnctype : HTMLButtonElement -> Attribute True Prelude.id String
formEnctype v = fromPrim
                  "HTMLButtonElement.getformEnctype"
                  prim__formEnctype
                  prim__setFormEnctype
                  v


export
formMethod : HTMLButtonElement -> Attribute True Prelude.id String
formMethod v = fromPrim
                 "HTMLButtonElement.getformMethod"
                 prim__formMethod
                 prim__setFormMethod
                 v


export
formNoValidate : HTMLButtonElement -> Attribute True Prelude.id Bool
formNoValidate v = fromPrim
                     "HTMLButtonElement.getformNoValidate"
                     prim__formNoValidate
                     prim__setFormNoValidate
                     v


export
formTarget : HTMLButtonElement -> Attribute True Prelude.id String
formTarget v = fromPrim
                 "HTMLButtonElement.getformTarget"
                 prim__formTarget
                 prim__setFormTarget
                 v


export
labels : (obj : HTMLButtonElement) -> JSIO NodeList
labels a = primJS $ HTMLButtonElement.prim__labels a


export
name : HTMLButtonElement -> Attribute True Prelude.id String
name v = fromPrim "HTMLButtonElement.getname" prim__name prim__setName v


export
type : HTMLButtonElement -> Attribute True Prelude.id String
type v = fromPrim "HTMLButtonElement.gettype" prim__type prim__setType v


export
validationMessage : (obj : HTMLButtonElement) -> JSIO String
validationMessage a = primJS $ HTMLButtonElement.prim__validationMessage a


export
validity : (obj : HTMLButtonElement) -> JSIO ValidityState
validity a = primJS $ HTMLButtonElement.prim__validity a


export
value : HTMLButtonElement -> Attribute True Prelude.id String
value v = fromPrim "HTMLButtonElement.getvalue" prim__value prim__setValue v


export
willValidate : (obj : HTMLButtonElement) -> JSIO Bool
willValidate a = tryJS "HTMLButtonElement.willValidate" $
  HTMLButtonElement.prim__willValidate a


export
checkValidity : (obj : HTMLButtonElement) -> JSIO Bool
checkValidity a = tryJS "HTMLButtonElement.checkValidity" $
  HTMLButtonElement.prim__checkValidity a


export
reportValidity : (obj : HTMLButtonElement) -> JSIO Bool
reportValidity a = tryJS "HTMLButtonElement.reportValidity" $
  HTMLButtonElement.prim__reportValidity a


export
setCustomValidity : (obj : HTMLButtonElement) -> (error : String) -> JSIO ()
setCustomValidity a b = primJS $ HTMLButtonElement.prim__setCustomValidity a b
