module Web.Raw.HTMLInputElement

import JS
import Web.Types.Animatable
import Web.Types.ChildNode
import Web.Types.DocumentAndElementEventHandlers
import Web.Types.Element
import Web.Types.ElementCSSInlineStyle
import Web.Types.ElementContentEditable
import Web.Types.EventTarget
import Web.Types.FileList
import Web.Types.GeometryUtils
import Web.Types.GlobalEventHandlers
import Web.Types.HTMLElement
import Web.Types.HTMLFormElement
import Web.Types.HTMLInputElement
import Web.Types.HTMLOrSVGElement
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
%foreign "browser:lambda:()=> new HTMLInputElement()"
prim__new : PrimIO HTMLInputElement


export
%foreign "browser:lambda:x=>x.accept"
prim__accept : HTMLInputElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.accept = v}"
prim__setAccept : HTMLInputElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.align"
prim__align : HTMLInputElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.align = v}"
prim__setAlign : HTMLInputElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.alt"
prim__alt : HTMLInputElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.alt = v}"
prim__setAlt : HTMLInputElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.autocomplete"
prim__autocomplete : HTMLInputElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.autocomplete = v}"
prim__setAutocomplete : HTMLInputElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.checked"
prim__checked : HTMLInputElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.checked = v}"
prim__setChecked : HTMLInputElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.defaultChecked"
prim__defaultChecked : HTMLInputElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.defaultChecked = v}"
prim__setDefaultChecked : HTMLInputElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.defaultValue"
prim__defaultValue : HTMLInputElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.defaultValue = v}"
prim__setDefaultValue : HTMLInputElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.dirName"
prim__dirName : HTMLInputElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.dirName = v}"
prim__setDirName : HTMLInputElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.disabled"
prim__disabled : HTMLInputElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.disabled = v}"
prim__setDisabled : HTMLInputElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.files"
prim__files : HTMLInputElement -> PrimIO (Nullable FileList)



export
%foreign "browser:lambda:(x,v)=>{x.files = v}"
prim__setFiles : HTMLInputElement -> Nullable FileList -> PrimIO ()



export
%foreign "browser:lambda:x=>x.form"
prim__form : HTMLInputElement -> PrimIO (Nullable HTMLFormElement)


export
%foreign "browser:lambda:x=>x.formAction"
prim__formAction : HTMLInputElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.formAction = v}"
prim__setFormAction : HTMLInputElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.formEnctype"
prim__formEnctype : HTMLInputElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.formEnctype = v}"
prim__setFormEnctype : HTMLInputElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.formMethod"
prim__formMethod : HTMLInputElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.formMethod = v}"
prim__setFormMethod : HTMLInputElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.formNoValidate"
prim__formNoValidate : HTMLInputElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.formNoValidate = v}"
prim__setFormNoValidate : HTMLInputElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.formTarget"
prim__formTarget : HTMLInputElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.formTarget = v}"
prim__setFormTarget : HTMLInputElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.height"
prim__height : HTMLInputElement -> PrimIO Bits32



export
%foreign "browser:lambda:(x,v)=>{x.height = v}"
prim__setHeight : HTMLInputElement -> Bits32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.indeterminate"
prim__indeterminate : HTMLInputElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.indeterminate = v}"
prim__setIndeterminate : HTMLInputElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.labels"
prim__labels : HTMLInputElement -> PrimIO (Nullable NodeList)


export
%foreign "browser:lambda:x=>x.list"
prim__list : HTMLInputElement -> PrimIO (Nullable HTMLElement)


export
%foreign "browser:lambda:x=>x.max"
prim__max : HTMLInputElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.max = v}"
prim__setMax : HTMLInputElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.maxLength"
prim__maxLength : HTMLInputElement -> PrimIO Int32



export
%foreign "browser:lambda:(x,v)=>{x.maxLength = v}"
prim__setMaxLength : HTMLInputElement -> Int32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.min"
prim__min : HTMLInputElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.min = v}"
prim__setMin : HTMLInputElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.minLength"
prim__minLength : HTMLInputElement -> PrimIO Int32



export
%foreign "browser:lambda:(x,v)=>{x.minLength = v}"
prim__setMinLength : HTMLInputElement -> Int32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.multiple"
prim__multiple : HTMLInputElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.multiple = v}"
prim__setMultiple : HTMLInputElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.name"
prim__name : HTMLInputElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.name = v}"
prim__setName : HTMLInputElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.pattern"
prim__pattern : HTMLInputElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.pattern = v}"
prim__setPattern : HTMLInputElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.placeholder"
prim__placeholder : HTMLInputElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.placeholder = v}"
prim__setPlaceholder : HTMLInputElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.readOnly"
prim__readOnly : HTMLInputElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.readOnly = v}"
prim__setReadOnly : HTMLInputElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.required"
prim__required : HTMLInputElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.required = v}"
prim__setRequired : HTMLInputElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.selectionDirection"
prim__selectionDirection : HTMLInputElement -> PrimIO (Nullable String)



export
%foreign "browser:lambda:(x,v)=>{x.selectionDirection = v}"
prim__setSelectionDirection : HTMLInputElement -> Nullable String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.selectionEnd"
prim__selectionEnd : HTMLInputElement -> PrimIO (Nullable Bits32)



export
%foreign "browser:lambda:(x,v)=>{x.selectionEnd = v}"
prim__setSelectionEnd : HTMLInputElement -> Nullable Bits32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.selectionStart"
prim__selectionStart : HTMLInputElement -> PrimIO (Nullable Bits32)



export
%foreign "browser:lambda:(x,v)=>{x.selectionStart = v}"
prim__setSelectionStart : HTMLInputElement -> Nullable Bits32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.size"
prim__size : HTMLInputElement -> PrimIO Bits32



export
%foreign "browser:lambda:(x,v)=>{x.size = v}"
prim__setSize : HTMLInputElement -> Bits32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.src"
prim__src : HTMLInputElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.src = v}"
prim__setSrc : HTMLInputElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.step"
prim__step : HTMLInputElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.step = v}"
prim__setStep : HTMLInputElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.type"
prim__type : HTMLInputElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.type = v}"
prim__setType : HTMLInputElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.useMap"
prim__useMap : HTMLInputElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.useMap = v}"
prim__setUseMap : HTMLInputElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.validationMessage"
prim__validationMessage : HTMLInputElement -> PrimIO String


export
%foreign "browser:lambda:x=>x.validity"
prim__validity : HTMLInputElement -> PrimIO ValidityState


export
%foreign "browser:lambda:x=>x.value"
prim__value : HTMLInputElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.value = v}"
prim__setValue : HTMLInputElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.valueAsDate"
prim__valueAsDate : HTMLInputElement -> PrimIO (Nullable Object)



export
%foreign "browser:lambda:(x,v)=>{x.valueAsDate = v}"
prim__setValueAsDate : HTMLInputElement -> Nullable Object -> PrimIO ()



export
%foreign "browser:lambda:x=>x.valueAsNumber"
prim__valueAsNumber : HTMLInputElement -> PrimIO Double



export
%foreign "browser:lambda:(x,v)=>{x.valueAsNumber = v}"
prim__setValueAsNumber : HTMLInputElement -> Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.width"
prim__width : HTMLInputElement -> PrimIO Bits32



export
%foreign "browser:lambda:(x,v)=>{x.width = v}"
prim__setWidth : HTMLInputElement -> Bits32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.willValidate"
prim__willValidate : HTMLInputElement -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.checkValidity()"
prim__checkValidity : HTMLInputElement -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.reportValidity()"
prim__reportValidity : HTMLInputElement -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.select()"
prim__select : HTMLInputElement -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.setCustomValidity(a)"
prim__setCustomValidity : HTMLInputElement -> String -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.setRangeText(a)"
prim__setRangeText : HTMLInputElement -> String -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.setRangeText(a,b,c,d)"
prim__setRangeText1 :
     HTMLInputElement
  -> String
  -> Bits32
  -> Bits32
  -> UndefOr String
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c)=>x.setSelectionRange(a,b,c)"
prim__setSelectionRange :
     HTMLInputElement
  -> Bits32
  -> Bits32
  -> UndefOr String
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.stepDown(a)"
prim__stepDown : HTMLInputElement -> UndefOr Int32 -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.stepUp(a)"
prim__stepUp : HTMLInputElement -> UndefOr Int32 -> PrimIO ()


export
new : JSIO HTMLInputElement
new = primJS $ HTMLInputElement.prim__new


export
accept : HTMLInputElement -> Attribute True Prelude.id String
accept v = fromPrim "HTMLInputElement.getaccept" prim__accept prim__setAccept v


export
align : HTMLInputElement -> Attribute True Prelude.id String
align v = fromPrim "HTMLInputElement.getalign" prim__align prim__setAlign v


export
alt : HTMLInputElement -> Attribute True Prelude.id String
alt v = fromPrim "HTMLInputElement.getalt" prim__alt prim__setAlt v


export
autocomplete : HTMLInputElement -> Attribute True Prelude.id String
autocomplete v = fromPrim
                   "HTMLInputElement.getautocomplete"
                   prim__autocomplete
                   prim__setAutocomplete
                   v


export
checked : HTMLInputElement -> Attribute True Prelude.id Bool
checked v = fromPrim
              "HTMLInputElement.getchecked"
              prim__checked
              prim__setChecked
              v


export
defaultChecked : HTMLInputElement -> Attribute True Prelude.id Bool
defaultChecked v = fromPrim
                     "HTMLInputElement.getdefaultChecked"
                     prim__defaultChecked
                     prim__setDefaultChecked
                     v


export
defaultValue : HTMLInputElement -> Attribute True Prelude.id String
defaultValue v = fromPrim
                   "HTMLInputElement.getdefaultValue"
                   prim__defaultValue
                   prim__setDefaultValue
                   v


export
dirName : HTMLInputElement -> Attribute True Prelude.id String
dirName v = fromPrim
              "HTMLInputElement.getdirName"
              prim__dirName
              prim__setDirName
              v


export
disabled : HTMLInputElement -> Attribute True Prelude.id Bool
disabled v = fromPrim
               "HTMLInputElement.getdisabled"
               prim__disabled
               prim__setDisabled
               v


export
files : HTMLInputElement -> Attribute False Maybe FileList
files v = fromNullablePrim
            "HTMLInputElement.getfiles"
            prim__files
            prim__setFiles
            v


export
form : (obj : HTMLInputElement) -> JSIO (Maybe HTMLFormElement)
form a = tryJS "HTMLInputElement.form" $ HTMLInputElement.prim__form a


export
formAction : HTMLInputElement -> Attribute True Prelude.id String
formAction v = fromPrim
                 "HTMLInputElement.getformAction"
                 prim__formAction
                 prim__setFormAction
                 v


export
formEnctype : HTMLInputElement -> Attribute True Prelude.id String
formEnctype v = fromPrim
                  "HTMLInputElement.getformEnctype"
                  prim__formEnctype
                  prim__setFormEnctype
                  v


export
formMethod : HTMLInputElement -> Attribute True Prelude.id String
formMethod v = fromPrim
                 "HTMLInputElement.getformMethod"
                 prim__formMethod
                 prim__setFormMethod
                 v


export
formNoValidate : HTMLInputElement -> Attribute True Prelude.id Bool
formNoValidate v = fromPrim
                     "HTMLInputElement.getformNoValidate"
                     prim__formNoValidate
                     prim__setFormNoValidate
                     v


export
formTarget : HTMLInputElement -> Attribute True Prelude.id String
formTarget v = fromPrim
                 "HTMLInputElement.getformTarget"
                 prim__formTarget
                 prim__setFormTarget
                 v


export
height : HTMLInputElement -> Attribute True Prelude.id Bits32
height v = fromPrim "HTMLInputElement.getheight" prim__height prim__setHeight v


export
indeterminate : HTMLInputElement -> Attribute True Prelude.id Bool
indeterminate v = fromPrim
                    "HTMLInputElement.getindeterminate"
                    prim__indeterminate
                    prim__setIndeterminate
                    v


export
labels : (obj : HTMLInputElement) -> JSIO (Maybe NodeList)
labels a = tryJS "HTMLInputElement.labels" $ HTMLInputElement.prim__labels a


export
list : (obj : HTMLInputElement) -> JSIO (Maybe HTMLElement)
list a = tryJS "HTMLInputElement.list" $ HTMLInputElement.prim__list a


export
max : HTMLInputElement -> Attribute True Prelude.id String
max v = fromPrim "HTMLInputElement.getmax" prim__max prim__setMax v


export
maxLength : HTMLInputElement -> Attribute True Prelude.id Int32
maxLength v = fromPrim
                "HTMLInputElement.getmaxLength"
                prim__maxLength
                prim__setMaxLength
                v


export
min : HTMLInputElement -> Attribute True Prelude.id String
min v = fromPrim "HTMLInputElement.getmin" prim__min prim__setMin v


export
minLength : HTMLInputElement -> Attribute True Prelude.id Int32
minLength v = fromPrim
                "HTMLInputElement.getminLength"
                prim__minLength
                prim__setMinLength
                v


export
multiple : HTMLInputElement -> Attribute True Prelude.id Bool
multiple v = fromPrim
               "HTMLInputElement.getmultiple"
               prim__multiple
               prim__setMultiple
               v


export
name : HTMLInputElement -> Attribute True Prelude.id String
name v = fromPrim "HTMLInputElement.getname" prim__name prim__setName v


export
pattern : HTMLInputElement -> Attribute True Prelude.id String
pattern v = fromPrim
              "HTMLInputElement.getpattern"
              prim__pattern
              prim__setPattern
              v


export
placeholder : HTMLInputElement -> Attribute True Prelude.id String
placeholder v = fromPrim
                  "HTMLInputElement.getplaceholder"
                  prim__placeholder
                  prim__setPlaceholder
                  v


export
readOnly : HTMLInputElement -> Attribute True Prelude.id Bool
readOnly v = fromPrim
               "HTMLInputElement.getreadOnly"
               prim__readOnly
               prim__setReadOnly
               v


export
required : HTMLInputElement -> Attribute True Prelude.id Bool
required v = fromPrim
               "HTMLInputElement.getrequired"
               prim__required
               prim__setRequired
               v


export
selectionDirection : HTMLInputElement -> Attribute False Maybe String
selectionDirection v = fromNullablePrim
                         "HTMLInputElement.getselectionDirection"
                         prim__selectionDirection
                         prim__setSelectionDirection
                         v


export
selectionEnd : HTMLInputElement -> Attribute False Maybe Bits32
selectionEnd v = fromNullablePrim
                   "HTMLInputElement.getselectionEnd"
                   prim__selectionEnd
                   prim__setSelectionEnd
                   v


export
selectionStart : HTMLInputElement -> Attribute False Maybe Bits32
selectionStart v = fromNullablePrim
                     "HTMLInputElement.getselectionStart"
                     prim__selectionStart
                     prim__setSelectionStart
                     v


export
size : HTMLInputElement -> Attribute True Prelude.id Bits32
size v = fromPrim "HTMLInputElement.getsize" prim__size prim__setSize v


export
src : HTMLInputElement -> Attribute True Prelude.id String
src v = fromPrim "HTMLInputElement.getsrc" prim__src prim__setSrc v


export
step : HTMLInputElement -> Attribute True Prelude.id String
step v = fromPrim "HTMLInputElement.getstep" prim__step prim__setStep v


export
type : HTMLInputElement -> Attribute True Prelude.id String
type v = fromPrim "HTMLInputElement.gettype" prim__type prim__setType v


export
useMap : HTMLInputElement -> Attribute True Prelude.id String
useMap v = fromPrim "HTMLInputElement.getuseMap" prim__useMap prim__setUseMap v


export
validationMessage : (obj : HTMLInputElement) -> JSIO String
validationMessage a = primJS $ HTMLInputElement.prim__validationMessage a


export
validity : (obj : HTMLInputElement) -> JSIO ValidityState
validity a = primJS $ HTMLInputElement.prim__validity a


export
value : HTMLInputElement -> Attribute True Prelude.id String
value v = fromPrim "HTMLInputElement.getvalue" prim__value prim__setValue v


export
valueAsDate : HTMLInputElement -> Attribute False Maybe Object
valueAsDate v = fromNullablePrim
                  "HTMLInputElement.getvalueAsDate"
                  prim__valueAsDate
                  prim__setValueAsDate
                  v


export
valueAsNumber : HTMLInputElement -> Attribute True Prelude.id Double
valueAsNumber v = fromPrim
                    "HTMLInputElement.getvalueAsNumber"
                    prim__valueAsNumber
                    prim__setValueAsNumber
                    v


export
width : HTMLInputElement -> Attribute True Prelude.id Bits32
width v = fromPrim "HTMLInputElement.getwidth" prim__width prim__setWidth v


export
willValidate : (obj : HTMLInputElement) -> JSIO Bool
willValidate a = tryJS "HTMLInputElement.willValidate" $
  HTMLInputElement.prim__willValidate a


export
checkValidity : (obj : HTMLInputElement) -> JSIO Bool
checkValidity a = tryJS "HTMLInputElement.checkValidity" $
  HTMLInputElement.prim__checkValidity a


export
reportValidity : (obj : HTMLInputElement) -> JSIO Bool
reportValidity a = tryJS "HTMLInputElement.reportValidity" $
  HTMLInputElement.prim__reportValidity a


export
select : (obj : HTMLInputElement) -> JSIO ()
select a = primJS $ HTMLInputElement.prim__select a


export
setCustomValidity : (obj : HTMLInputElement) -> (error : String) -> JSIO ()
setCustomValidity a b = primJS $ HTMLInputElement.prim__setCustomValidity a b


export
setRangeText : (obj : HTMLInputElement) -> (replacement : String) -> JSIO ()
setRangeText a b = primJS $ HTMLInputElement.prim__setRangeText a b


export
setRangeText1' :
     (obj : HTMLInputElement)
  -> (replacement : String)
  -> (start : Bits32)
  -> (end : Bits32)
  -> (selectionMode : Optional SelectionMode)
  -> JSIO ()
setRangeText1' a b c d e = primJS $
  HTMLInputElement.prim__setRangeText1 a b c d (toFFI e)

export
setRangeText1 :
     (obj : HTMLInputElement)
  -> (replacement : String)
  -> (start : Bits32)
  -> (end : Bits32)
  -> JSIO ()
setRangeText1 a b c d = primJS $
  HTMLInputElement.prim__setRangeText1 a b c d undef


export
setSelectionRange' :
     (obj : HTMLInputElement)
  -> (start : Bits32)
  -> (end : Bits32)
  -> (direction : Optional String)
  -> JSIO ()
setSelectionRange' a b c d = primJS $
  HTMLInputElement.prim__setSelectionRange a b c (toFFI d)

export
setSelectionRange :
     (obj : HTMLInputElement)
  -> (start : Bits32)
  -> (end : Bits32)
  -> JSIO ()
setSelectionRange a b c = primJS $
  HTMLInputElement.prim__setSelectionRange a b c undef


export
stepDown' : (obj : HTMLInputElement) -> (n : Optional Int32) -> JSIO ()
stepDown' a b = primJS $ HTMLInputElement.prim__stepDown a (toFFI b)

export
stepDown : (obj : HTMLInputElement) -> JSIO ()
stepDown a = primJS $ HTMLInputElement.prim__stepDown a undef


export
stepUp' : (obj : HTMLInputElement) -> (n : Optional Int32) -> JSIO ()
stepUp' a b = primJS $ HTMLInputElement.prim__stepUp a (toFFI b)

export
stepUp : (obj : HTMLInputElement) -> JSIO ()
stepUp a = primJS $ HTMLInputElement.prim__stepUp a undef

