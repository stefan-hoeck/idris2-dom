module Web.Raw.HTMLTextAreaElement

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
import Web.Types.HTMLOrSVGElement
import Web.Types.HTMLTextAreaElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NodeList
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.SelectionMode
import Web.Types.Slottable
import Web.Types.ValidityState


%default total


export
%foreign "browser:lambda:()=> new HTMLTextAreaElement()"
prim__new : PrimIO HTMLTextAreaElement


export
%foreign "browser:lambda:x=>x.autocomplete"
prim__autocomplete : HTMLTextAreaElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.autocomplete = v}"
prim__setAutocomplete : HTMLTextAreaElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.cols"
prim__cols : HTMLTextAreaElement -> PrimIO Bits32



export
%foreign "browser:lambda:(x,v)=>{x.cols = v}"
prim__setCols : HTMLTextAreaElement -> Bits32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.defaultValue"
prim__defaultValue : HTMLTextAreaElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.defaultValue = v}"
prim__setDefaultValue : HTMLTextAreaElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.dirName"
prim__dirName : HTMLTextAreaElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.dirName = v}"
prim__setDirName : HTMLTextAreaElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.disabled"
prim__disabled : HTMLTextAreaElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.disabled = v}"
prim__setDisabled : HTMLTextAreaElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.form"
prim__form : HTMLTextAreaElement -> PrimIO (Nullable HTMLFormElement)


export
%foreign "browser:lambda:x=>x.labels"
prim__labels : HTMLTextAreaElement -> PrimIO NodeList


export
%foreign "browser:lambda:x=>x.maxLength"
prim__maxLength : HTMLTextAreaElement -> PrimIO Int32



export
%foreign "browser:lambda:(x,v)=>{x.maxLength = v}"
prim__setMaxLength : HTMLTextAreaElement -> Int32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.minLength"
prim__minLength : HTMLTextAreaElement -> PrimIO Int32



export
%foreign "browser:lambda:(x,v)=>{x.minLength = v}"
prim__setMinLength : HTMLTextAreaElement -> Int32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.name"
prim__name : HTMLTextAreaElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.name = v}"
prim__setName : HTMLTextAreaElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.placeholder"
prim__placeholder : HTMLTextAreaElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.placeholder = v}"
prim__setPlaceholder : HTMLTextAreaElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.readOnly"
prim__readOnly : HTMLTextAreaElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.readOnly = v}"
prim__setReadOnly : HTMLTextAreaElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.required"
prim__required : HTMLTextAreaElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.required = v}"
prim__setRequired : HTMLTextAreaElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.rows"
prim__rows : HTMLTextAreaElement -> PrimIO Bits32



export
%foreign "browser:lambda:(x,v)=>{x.rows = v}"
prim__setRows : HTMLTextAreaElement -> Bits32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.selectionDirection"
prim__selectionDirection : HTMLTextAreaElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.selectionDirection = v}"
prim__setSelectionDirection : HTMLTextAreaElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.selectionEnd"
prim__selectionEnd : HTMLTextAreaElement -> PrimIO Bits32



export
%foreign "browser:lambda:(x,v)=>{x.selectionEnd = v}"
prim__setSelectionEnd : HTMLTextAreaElement -> Bits32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.selectionStart"
prim__selectionStart : HTMLTextAreaElement -> PrimIO Bits32



export
%foreign "browser:lambda:(x,v)=>{x.selectionStart = v}"
prim__setSelectionStart : HTMLTextAreaElement -> Bits32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.textLength"
prim__textLength : HTMLTextAreaElement -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.type"
prim__type : HTMLTextAreaElement -> PrimIO String


export
%foreign "browser:lambda:x=>x.validationMessage"
prim__validationMessage : HTMLTextAreaElement -> PrimIO String


export
%foreign "browser:lambda:x=>x.validity"
prim__validity : HTMLTextAreaElement -> PrimIO ValidityState


export
%foreign "browser:lambda:x=>x.value"
prim__value : HTMLTextAreaElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.value = v}"
prim__setValue : HTMLTextAreaElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.willValidate"
prim__willValidate : HTMLTextAreaElement -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.wrap"
prim__wrap : HTMLTextAreaElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.wrap = v}"
prim__setWrap : HTMLTextAreaElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.checkValidity()"
prim__checkValidity : HTMLTextAreaElement -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.reportValidity()"
prim__reportValidity : HTMLTextAreaElement -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.select()"
prim__select : HTMLTextAreaElement -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.setCustomValidity(a)"
prim__setCustomValidity : HTMLTextAreaElement -> String -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.setRangeText(a)"
prim__setRangeText : HTMLTextAreaElement -> String -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.setRangeText(a,b,c,d)"
prim__setRangeText1 :
     HTMLTextAreaElement
  -> String
  -> Bits32
  -> Bits32
  -> UndefOr String
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c)=>x.setSelectionRange(a,b,c)"
prim__setSelectionRange :
     HTMLTextAreaElement
  -> Bits32
  -> Bits32
  -> UndefOr String
  -> PrimIO ()


export
new : JSIO HTMLTextAreaElement
new = primJS $ HTMLTextAreaElement.prim__new


export
autocomplete : HTMLTextAreaElement -> Attribute True Prelude.id String
autocomplete v = fromPrim
                   "HTMLTextAreaElement.getautocomplete"
                   prim__autocomplete
                   prim__setAutocomplete
                   v


export
cols : HTMLTextAreaElement -> Attribute True Prelude.id Bits32
cols v = fromPrim "HTMLTextAreaElement.getcols" prim__cols prim__setCols v


export
defaultValue : HTMLTextAreaElement -> Attribute True Prelude.id String
defaultValue v = fromPrim
                   "HTMLTextAreaElement.getdefaultValue"
                   prim__defaultValue
                   prim__setDefaultValue
                   v


export
dirName : HTMLTextAreaElement -> Attribute True Prelude.id String
dirName v = fromPrim
              "HTMLTextAreaElement.getdirName"
              prim__dirName
              prim__setDirName
              v


export
disabled : HTMLTextAreaElement -> Attribute True Prelude.id Bool
disabled v = fromPrim
               "HTMLTextAreaElement.getdisabled"
               prim__disabled
               prim__setDisabled
               v


export
form : (obj : HTMLTextAreaElement) -> JSIO (Maybe HTMLFormElement)
form a = tryJS "HTMLTextAreaElement.form" $ HTMLTextAreaElement.prim__form a


export
labels : (obj : HTMLTextAreaElement) -> JSIO NodeList
labels a = primJS $ HTMLTextAreaElement.prim__labels a


export
maxLength : HTMLTextAreaElement -> Attribute True Prelude.id Int32
maxLength v = fromPrim
                "HTMLTextAreaElement.getmaxLength"
                prim__maxLength
                prim__setMaxLength
                v


export
minLength : HTMLTextAreaElement -> Attribute True Prelude.id Int32
minLength v = fromPrim
                "HTMLTextAreaElement.getminLength"
                prim__minLength
                prim__setMinLength
                v


export
name : HTMLTextAreaElement -> Attribute True Prelude.id String
name v = fromPrim "HTMLTextAreaElement.getname" prim__name prim__setName v


export
placeholder : HTMLTextAreaElement -> Attribute True Prelude.id String
placeholder v = fromPrim
                  "HTMLTextAreaElement.getplaceholder"
                  prim__placeholder
                  prim__setPlaceholder
                  v


export
readOnly : HTMLTextAreaElement -> Attribute True Prelude.id Bool
readOnly v = fromPrim
               "HTMLTextAreaElement.getreadOnly"
               prim__readOnly
               prim__setReadOnly
               v


export
required : HTMLTextAreaElement -> Attribute True Prelude.id Bool
required v = fromPrim
               "HTMLTextAreaElement.getrequired"
               prim__required
               prim__setRequired
               v


export
rows : HTMLTextAreaElement -> Attribute True Prelude.id Bits32
rows v = fromPrim "HTMLTextAreaElement.getrows" prim__rows prim__setRows v


export
selectionDirection : HTMLTextAreaElement -> Attribute True Prelude.id String
selectionDirection v = fromPrim
                         "HTMLTextAreaElement.getselectionDirection"
                         prim__selectionDirection
                         prim__setSelectionDirection
                         v


export
selectionEnd : HTMLTextAreaElement -> Attribute True Prelude.id Bits32
selectionEnd v = fromPrim
                   "HTMLTextAreaElement.getselectionEnd"
                   prim__selectionEnd
                   prim__setSelectionEnd
                   v


export
selectionStart : HTMLTextAreaElement -> Attribute True Prelude.id Bits32
selectionStart v = fromPrim
                     "HTMLTextAreaElement.getselectionStart"
                     prim__selectionStart
                     prim__setSelectionStart
                     v


export
textLength : (obj : HTMLTextAreaElement) -> JSIO Bits32
textLength a = primJS $ HTMLTextAreaElement.prim__textLength a


export
type : (obj : HTMLTextAreaElement) -> JSIO String
type a = primJS $ HTMLTextAreaElement.prim__type a


export
validationMessage : (obj : HTMLTextAreaElement) -> JSIO String
validationMessage a = primJS $ HTMLTextAreaElement.prim__validationMessage a


export
validity : (obj : HTMLTextAreaElement) -> JSIO ValidityState
validity a = primJS $ HTMLTextAreaElement.prim__validity a


export
value : HTMLTextAreaElement -> Attribute True Prelude.id String
value v = fromPrim "HTMLTextAreaElement.getvalue" prim__value prim__setValue v


export
willValidate : (obj : HTMLTextAreaElement) -> JSIO Bool
willValidate a = tryJS "HTMLTextAreaElement.willValidate" $
  HTMLTextAreaElement.prim__willValidate a


export
wrap : HTMLTextAreaElement -> Attribute True Prelude.id String
wrap v = fromPrim "HTMLTextAreaElement.getwrap" prim__wrap prim__setWrap v


export
checkValidity : (obj : HTMLTextAreaElement) -> JSIO Bool
checkValidity a = tryJS "HTMLTextAreaElement.checkValidity" $
  HTMLTextAreaElement.prim__checkValidity a


export
reportValidity : (obj : HTMLTextAreaElement) -> JSIO Bool
reportValidity a = tryJS "HTMLTextAreaElement.reportValidity" $
  HTMLTextAreaElement.prim__reportValidity a


export
select : (obj : HTMLTextAreaElement) -> JSIO ()
select a = primJS $ HTMLTextAreaElement.prim__select a


export
setCustomValidity : (obj : HTMLTextAreaElement) -> (error : String) -> JSIO ()
setCustomValidity a b = primJS $ HTMLTextAreaElement.prim__setCustomValidity a b


export
setRangeText : (obj : HTMLTextAreaElement) -> (replacement : String) -> JSIO ()
setRangeText a b = primJS $ HTMLTextAreaElement.prim__setRangeText a b


export
setRangeText1' :
     (obj : HTMLTextAreaElement)
  -> (replacement : String)
  -> (start : Bits32)
  -> (end : Bits32)
  -> (selectionMode : Optional SelectionMode)
  -> JSIO ()
setRangeText1' a b c d e = primJS $
  HTMLTextAreaElement.prim__setRangeText1 a b c d (toFFI e)

export
setRangeText1 :
     (obj : HTMLTextAreaElement)
  -> (replacement : String)
  -> (start : Bits32)
  -> (end : Bits32)
  -> JSIO ()
setRangeText1 a b c d = primJS $
  HTMLTextAreaElement.prim__setRangeText1 a b c d undef


export
setSelectionRange' :
     (obj : HTMLTextAreaElement)
  -> (start : Bits32)
  -> (end : Bits32)
  -> (direction : Optional String)
  -> JSIO ()
setSelectionRange' a b c d = primJS $
  HTMLTextAreaElement.prim__setSelectionRange a b c (toFFI d)

export
setSelectionRange :
     (obj : HTMLTextAreaElement)
  -> (start : Bits32)
  -> (end : Bits32)
  -> JSIO ()
setSelectionRange a b c = primJS $
  HTMLTextAreaElement.prim__setSelectionRange a b c undef

