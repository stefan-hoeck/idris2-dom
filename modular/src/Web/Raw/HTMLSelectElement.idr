module Web.Raw.HTMLSelectElement

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
import Web.Types.HTMLFormElement
import Web.Types.HTMLOptGroupElement
import Web.Types.HTMLOptionElement
import Web.Types.HTMLOptionsCollection
import Web.Types.HTMLOrSVGElement
import Web.Types.HTMLSelectElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NodeList
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable
import Web.Types.ValidityState


%default total


export
%foreign "browser:lambda:()=> new HTMLSelectElement()"
prim__new : PrimIO HTMLSelectElement


export
%foreign "browser:lambda:(o,x,v)=>o[x] = v"
prim__set :
     HTMLSelectElement
  -> Bits32
  -> Nullable HTMLOptionElement
  -> PrimIO ()


export
%foreign "browser:lambda:x=>x.autocomplete"
prim__autocomplete : HTMLSelectElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.autocomplete = v}"
prim__setAutocomplete : HTMLSelectElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.disabled"
prim__disabled : HTMLSelectElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.disabled = v}"
prim__setDisabled : HTMLSelectElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.form"
prim__form : HTMLSelectElement -> PrimIO (Nullable HTMLFormElement)


export
%foreign "browser:lambda:x=>x.labels"
prim__labels : HTMLSelectElement -> PrimIO NodeList


export
%foreign "browser:lambda:x=>x.length"
prim__length : HTMLSelectElement -> PrimIO Bits32



export
%foreign "browser:lambda:(x,v)=>{x.length = v}"
prim__setLength : HTMLSelectElement -> Bits32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.multiple"
prim__multiple : HTMLSelectElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.multiple = v}"
prim__setMultiple : HTMLSelectElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.name"
prim__name : HTMLSelectElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.name = v}"
prim__setName : HTMLSelectElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.options"
prim__options : HTMLSelectElement -> PrimIO HTMLOptionsCollection


export
%foreign "browser:lambda:x=>x.required"
prim__required : HTMLSelectElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.required = v}"
prim__setRequired : HTMLSelectElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.selectedIndex"
prim__selectedIndex : HTMLSelectElement -> PrimIO Int32



export
%foreign "browser:lambda:(x,v)=>{x.selectedIndex = v}"
prim__setSelectedIndex : HTMLSelectElement -> Int32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.selectedOptions"
prim__selectedOptions : HTMLSelectElement -> PrimIO HTMLCollection


export
%foreign "browser:lambda:x=>x.size"
prim__size : HTMLSelectElement -> PrimIO Bits32



export
%foreign "browser:lambda:(x,v)=>{x.size = v}"
prim__setSize : HTMLSelectElement -> Bits32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.type"
prim__type : HTMLSelectElement -> PrimIO String


export
%foreign "browser:lambda:x=>x.validationMessage"
prim__validationMessage : HTMLSelectElement -> PrimIO String


export
%foreign "browser:lambda:x=>x.validity"
prim__validity : HTMLSelectElement -> PrimIO ValidityState


export
%foreign "browser:lambda:x=>x.value"
prim__value : HTMLSelectElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.value = v}"
prim__setValue : HTMLSelectElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.willValidate"
prim__willValidate : HTMLSelectElement -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a,b)=>x.add(a,b)"
prim__add :
     HTMLSelectElement
  -> Union2 HTMLOptionElement HTMLOptGroupElement
  -> UndefOr (Nullable (Union2 HTMLElement Int32))
  -> PrimIO ()


export
%foreign "browser:lambda:x=>x.checkValidity()"
prim__checkValidity : HTMLSelectElement -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a)=>x.item(a)"
prim__item : HTMLSelectElement -> Bits32 -> PrimIO (Nullable Element)


export
%foreign "browser:lambda:(x,a)=>x.namedItem(a)"
prim__namedItem :
     HTMLSelectElement
  -> String
  -> PrimIO (Nullable HTMLOptionElement)


export
%foreign "browser:lambda:x=>x.remove()"
prim__remove : HTMLSelectElement -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.remove(a)"
prim__remove1 : HTMLSelectElement -> Int32 -> PrimIO ()


export
%foreign "browser:lambda:x=>x.reportValidity()"
prim__reportValidity : HTMLSelectElement -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a)=>x.setCustomValidity(a)"
prim__setCustomValidity : HTMLSelectElement -> String -> PrimIO ()


export
new : JSIO HTMLSelectElement
new = primJS $ HTMLSelectElement.prim__new


export
set :
     (obj : HTMLSelectElement)
  -> (index : Bits32)
  -> (option : Maybe HTMLOptionElement)
  -> JSIO ()
set a b c = primJS $ HTMLSelectElement.prim__set a b (toFFI c)


export
autocomplete : HTMLSelectElement -> Attribute True Prelude.id String
autocomplete v = fromPrim
                   "HTMLSelectElement.getautocomplete"
                   prim__autocomplete
                   prim__setAutocomplete
                   v


export
disabled : HTMLSelectElement -> Attribute True Prelude.id Bool
disabled v = fromPrim
               "HTMLSelectElement.getdisabled"
               prim__disabled
               prim__setDisabled
               v


export
form : (obj : HTMLSelectElement) -> JSIO (Maybe HTMLFormElement)
form a = tryJS "HTMLSelectElement.form" $ HTMLSelectElement.prim__form a


export
labels : (obj : HTMLSelectElement) -> JSIO NodeList
labels a = primJS $ HTMLSelectElement.prim__labels a


export
length : HTMLSelectElement -> Attribute True Prelude.id Bits32
length v = fromPrim "HTMLSelectElement.getlength" prim__length prim__setLength v


export
multiple : HTMLSelectElement -> Attribute True Prelude.id Bool
multiple v = fromPrim
               "HTMLSelectElement.getmultiple"
               prim__multiple
               prim__setMultiple
               v


export
name : HTMLSelectElement -> Attribute True Prelude.id String
name v = fromPrim "HTMLSelectElement.getname" prim__name prim__setName v


export
options : (obj : HTMLSelectElement) -> JSIO HTMLOptionsCollection
options a = primJS $ HTMLSelectElement.prim__options a


export
required : HTMLSelectElement -> Attribute True Prelude.id Bool
required v = fromPrim
               "HTMLSelectElement.getrequired"
               prim__required
               prim__setRequired
               v


export
selectedIndex : HTMLSelectElement -> Attribute True Prelude.id Int32
selectedIndex v = fromPrim
                    "HTMLSelectElement.getselectedIndex"
                    prim__selectedIndex
                    prim__setSelectedIndex
                    v


export
selectedOptions : (obj : HTMLSelectElement) -> JSIO HTMLCollection
selectedOptions a = primJS $ HTMLSelectElement.prim__selectedOptions a


export
size : HTMLSelectElement -> Attribute True Prelude.id Bits32
size v = fromPrim "HTMLSelectElement.getsize" prim__size prim__setSize v


export
type : (obj : HTMLSelectElement) -> JSIO String
type a = primJS $ HTMLSelectElement.prim__type a


export
validationMessage : (obj : HTMLSelectElement) -> JSIO String
validationMessage a = primJS $ HTMLSelectElement.prim__validationMessage a


export
validity : (obj : HTMLSelectElement) -> JSIO ValidityState
validity a = primJS $ HTMLSelectElement.prim__validity a


export
value : HTMLSelectElement -> Attribute True Prelude.id String
value v = fromPrim "HTMLSelectElement.getvalue" prim__value prim__setValue v


export
willValidate : (obj : HTMLSelectElement) -> JSIO Bool
willValidate a = tryJS "HTMLSelectElement.willValidate" $
  HTMLSelectElement.prim__willValidate a


export
add' :
     (obj : HTMLSelectElement)
  -> (element : HSum [HTMLOptionElement, HTMLOptGroupElement])
  -> (before : Optional (Maybe (HSum [HTMLElement, Int32])))
  -> JSIO ()
add' a b c = primJS $ HTMLSelectElement.prim__add a (toFFI b) (toFFI c)

export
add :
     (obj : HTMLSelectElement)
  -> (element : HSum [HTMLOptionElement, HTMLOptGroupElement])
  -> JSIO ()
add a b = primJS $ HTMLSelectElement.prim__add a (toFFI b) undef


export
checkValidity : (obj : HTMLSelectElement) -> JSIO Bool
checkValidity a = tryJS "HTMLSelectElement.checkValidity" $
  HTMLSelectElement.prim__checkValidity a


export
item : (obj : HTMLSelectElement) -> (index : Bits32) -> JSIO (Maybe Element)
item a b = tryJS "HTMLSelectElement.item" $ HTMLSelectElement.prim__item a b


export
namedItem :
     (obj : HTMLSelectElement)
  -> (name : String)
  -> JSIO (Maybe HTMLOptionElement)
namedItem a b = tryJS "HTMLSelectElement.namedItem" $
  HTMLSelectElement.prim__namedItem a b


export
remove : (obj : HTMLSelectElement) -> JSIO ()
remove a = primJS $ HTMLSelectElement.prim__remove a


export
remove1 : (obj : HTMLSelectElement) -> (index : Int32) -> JSIO ()
remove1 a b = primJS $ HTMLSelectElement.prim__remove1 a b


export
reportValidity : (obj : HTMLSelectElement) -> JSIO Bool
reportValidity a = tryJS "HTMLSelectElement.reportValidity" $
  HTMLSelectElement.prim__reportValidity a


export
setCustomValidity : (obj : HTMLSelectElement) -> (error : String) -> JSIO ()
setCustomValidity a b = primJS $ HTMLSelectElement.prim__setCustomValidity a b

