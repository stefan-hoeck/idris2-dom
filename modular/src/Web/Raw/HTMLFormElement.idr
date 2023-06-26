module Web.Raw.HTMLFormElement

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
import Web.Types.HTMLFormControlsCollection
import Web.Types.HTMLFormElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.RadioNodeList
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLFormElement()"
prim__new : PrimIO HTMLFormElement


export
%foreign "browser:lambda:(o,x)=>o[x]"
prim__get : HTMLFormElement -> Bits32 -> PrimIO Element


export
%foreign "browser:lambda:(o,x)=>o[x]"
prim__get1 : HTMLFormElement -> String -> PrimIO (Union2 RadioNodeList Element)


export
%foreign "browser:lambda:x=>x.acceptCharset"
prim__acceptCharset : HTMLFormElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.acceptCharset = v}"
prim__setAcceptCharset : HTMLFormElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.action"
prim__action : HTMLFormElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.action = v}"
prim__setAction : HTMLFormElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.autocomplete"
prim__autocomplete : HTMLFormElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.autocomplete = v}"
prim__setAutocomplete : HTMLFormElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.elements"
prim__elements : HTMLFormElement -> PrimIO HTMLFormControlsCollection


export
%foreign "browser:lambda:x=>x.encoding"
prim__encoding : HTMLFormElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.encoding = v}"
prim__setEncoding : HTMLFormElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.enctype"
prim__enctype : HTMLFormElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.enctype = v}"
prim__setEnctype : HTMLFormElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.length"
prim__length : HTMLFormElement -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.method"
prim__method : HTMLFormElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.method = v}"
prim__setMethod : HTMLFormElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.name"
prim__name : HTMLFormElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.name = v}"
prim__setName : HTMLFormElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.noValidate"
prim__noValidate : HTMLFormElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.noValidate = v}"
prim__setNoValidate : HTMLFormElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.rel"
prim__rel : HTMLFormElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.rel = v}"
prim__setRel : HTMLFormElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.relList"
prim__relList : HTMLFormElement -> PrimIO DOMTokenList


export
%foreign "browser:lambda:x=>x.target"
prim__target : HTMLFormElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.target = v}"
prim__setTarget : HTMLFormElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.checkValidity()"
prim__checkValidity : HTMLFormElement -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.reportValidity()"
prim__reportValidity : HTMLFormElement -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a)=>x.requestSubmit(a)"
prim__requestSubmit :
     HTMLFormElement
  -> UndefOr (Nullable HTMLElement)
  -> PrimIO ()


export
%foreign "browser:lambda:x=>x.reset()"
prim__reset : HTMLFormElement -> PrimIO ()


export
%foreign "browser:lambda:x=>x.submit()"
prim__submit : HTMLFormElement -> PrimIO ()


export
new : JSIO HTMLFormElement
new = primJS $ HTMLFormElement.prim__new


export
get : (obj : HTMLFormElement) -> (index : Bits32) -> JSIO Element
get a b = primJS $ HTMLFormElement.prim__get a b


export
get1 :
     (obj : HTMLFormElement)
  -> (name : String)
  -> JSIO (HSum [RadioNodeList, Element])
get1 a b = tryJS "HTMLFormElement.get1" $ HTMLFormElement.prim__get1 a b


export
acceptCharset : HTMLFormElement -> Attribute True Prelude.id String
acceptCharset v = fromPrim
                    "HTMLFormElement.getacceptCharset"
                    prim__acceptCharset
                    prim__setAcceptCharset
                    v


export
action : HTMLFormElement -> Attribute True Prelude.id String
action v = fromPrim "HTMLFormElement.getaction" prim__action prim__setAction v


export
autocomplete : HTMLFormElement -> Attribute True Prelude.id String
autocomplete v = fromPrim
                   "HTMLFormElement.getautocomplete"
                   prim__autocomplete
                   prim__setAutocomplete
                   v


export
elements : (obj : HTMLFormElement) -> JSIO HTMLFormControlsCollection
elements a = primJS $ HTMLFormElement.prim__elements a


export
encoding : HTMLFormElement -> Attribute True Prelude.id String
encoding v = fromPrim
               "HTMLFormElement.getencoding"
               prim__encoding
               prim__setEncoding
               v


export
enctype : HTMLFormElement -> Attribute True Prelude.id String
enctype v = fromPrim
              "HTMLFormElement.getenctype"
              prim__enctype
              prim__setEnctype
              v


export
length : (obj : HTMLFormElement) -> JSIO Bits32
length a = primJS $ HTMLFormElement.prim__length a


export
method : HTMLFormElement -> Attribute True Prelude.id String
method v = fromPrim "HTMLFormElement.getmethod" prim__method prim__setMethod v


export
name : HTMLFormElement -> Attribute True Prelude.id String
name v = fromPrim "HTMLFormElement.getname" prim__name prim__setName v


export
noValidate : HTMLFormElement -> Attribute True Prelude.id Bool
noValidate v = fromPrim
                 "HTMLFormElement.getnoValidate"
                 prim__noValidate
                 prim__setNoValidate
                 v


export
rel : HTMLFormElement -> Attribute True Prelude.id String
rel v = fromPrim "HTMLFormElement.getrel" prim__rel prim__setRel v


export
relList : (obj : HTMLFormElement) -> JSIO DOMTokenList
relList a = primJS $ HTMLFormElement.prim__relList a


export
target : HTMLFormElement -> Attribute True Prelude.id String
target v = fromPrim "HTMLFormElement.gettarget" prim__target prim__setTarget v


export
checkValidity : (obj : HTMLFormElement) -> JSIO Bool
checkValidity a = tryJS "HTMLFormElement.checkValidity" $
  HTMLFormElement.prim__checkValidity a


export
reportValidity : (obj : HTMLFormElement) -> JSIO Bool
reportValidity a = tryJS "HTMLFormElement.reportValidity" $
  HTMLFormElement.prim__reportValidity a


export
requestSubmit' :
     {auto _ : Cast t2 HTMLElement}
  -> (obj : HTMLFormElement)
  -> (submitter : Optional (Maybe t2))
  -> JSIO ()
requestSubmit' a b = primJS $ HTMLFormElement.prim__requestSubmit a (omyUp b)

export
requestSubmit : (obj : HTMLFormElement) -> JSIO ()
requestSubmit a = primJS $ HTMLFormElement.prim__requestSubmit a undef


export
reset : (obj : HTMLFormElement) -> JSIO ()
reset a = primJS $ HTMLFormElement.prim__reset a


export
submit : (obj : HTMLFormElement) -> JSIO ()
submit a = primJS $ HTMLFormElement.prim__submit a
