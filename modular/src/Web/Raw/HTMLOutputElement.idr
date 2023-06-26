module Web.Raw.HTMLOutputElement

import JS
import Web.Types.Animatable
import Web.Types.ChildNode
import Web.Types.DOMTokenList
import Web.Types.DocumentAndElementEventHandlers
import Web.Types.Element
import Web.Types.ElementCSSInlineStyle
import Web.Types.ElementContentEditable
import Web.Types.EventTarget
import Web.Types.GeometryUtils
import Web.Types.GlobalEventHandlers
import Web.Types.HTMLElement
import Web.Types.HTMLFormElement
import Web.Types.HTMLOrSVGElement
import Web.Types.HTMLOutputElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NodeList
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable
import Web.Types.ValidityState


%default total


export
%foreign "browser:lambda:()=> new HTMLOutputElement()"
prim__new : PrimIO HTMLOutputElement


export
%foreign "browser:lambda:x=>x.defaultValue"
prim__defaultValue : HTMLOutputElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.defaultValue = v}"
prim__setDefaultValue : HTMLOutputElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.form"
prim__form : HTMLOutputElement -> PrimIO (Nullable HTMLFormElement)


export
%foreign "browser:lambda:x=>x.htmlFor"
prim__htmlFor : HTMLOutputElement -> PrimIO DOMTokenList


export
%foreign "browser:lambda:x=>x.labels"
prim__labels : HTMLOutputElement -> PrimIO NodeList


export
%foreign "browser:lambda:x=>x.name"
prim__name : HTMLOutputElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.name = v}"
prim__setName : HTMLOutputElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.type"
prim__type : HTMLOutputElement -> PrimIO String


export
%foreign "browser:lambda:x=>x.validationMessage"
prim__validationMessage : HTMLOutputElement -> PrimIO String


export
%foreign "browser:lambda:x=>x.validity"
prim__validity : HTMLOutputElement -> PrimIO ValidityState


export
%foreign "browser:lambda:x=>x.value"
prim__value : HTMLOutputElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.value = v}"
prim__setValue : HTMLOutputElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.willValidate"
prim__willValidate : HTMLOutputElement -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.checkValidity()"
prim__checkValidity : HTMLOutputElement -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.reportValidity()"
prim__reportValidity : HTMLOutputElement -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a)=>x.setCustomValidity(a)"
prim__setCustomValidity : HTMLOutputElement -> String -> PrimIO ()


export
new : JSIO HTMLOutputElement
new = primJS $ HTMLOutputElement.prim__new


export
defaultValue : HTMLOutputElement -> Attribute True Prelude.id String
defaultValue v = fromPrim
                   "HTMLOutputElement.getdefaultValue"
                   prim__defaultValue
                   prim__setDefaultValue
                   v


export
form : (obj : HTMLOutputElement) -> JSIO (Maybe HTMLFormElement)
form a = tryJS "HTMLOutputElement.form" $ HTMLOutputElement.prim__form a


export
htmlFor : (obj : HTMLOutputElement) -> JSIO DOMTokenList
htmlFor a = primJS $ HTMLOutputElement.prim__htmlFor a


export
labels : (obj : HTMLOutputElement) -> JSIO NodeList
labels a = primJS $ HTMLOutputElement.prim__labels a


export
name : HTMLOutputElement -> Attribute True Prelude.id String
name v = fromPrim "HTMLOutputElement.getname" prim__name prim__setName v


export
type : (obj : HTMLOutputElement) -> JSIO String
type a = primJS $ HTMLOutputElement.prim__type a


export
validationMessage : (obj : HTMLOutputElement) -> JSIO String
validationMessage a = primJS $ HTMLOutputElement.prim__validationMessage a


export
validity : (obj : HTMLOutputElement) -> JSIO ValidityState
validity a = primJS $ HTMLOutputElement.prim__validity a


export
value : HTMLOutputElement -> Attribute True Prelude.id String
value v = fromPrim "HTMLOutputElement.getvalue" prim__value prim__setValue v


export
willValidate : (obj : HTMLOutputElement) -> JSIO Bool
willValidate a = tryJS "HTMLOutputElement.willValidate" $
  HTMLOutputElement.prim__willValidate a


export
checkValidity : (obj : HTMLOutputElement) -> JSIO Bool
checkValidity a = tryJS "HTMLOutputElement.checkValidity" $
  HTMLOutputElement.prim__checkValidity a


export
reportValidity : (obj : HTMLOutputElement) -> JSIO Bool
reportValidity a = tryJS "HTMLOutputElement.reportValidity" $
  HTMLOutputElement.prim__reportValidity a


export
setCustomValidity : (obj : HTMLOutputElement) -> (error : String) -> JSIO ()
setCustomValidity a b = primJS $ HTMLOutputElement.prim__setCustomValidity a b
