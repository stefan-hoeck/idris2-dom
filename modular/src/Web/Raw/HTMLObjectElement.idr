module Web.Raw.HTMLObjectElement

import JS
import Web.Types.Animatable
import Web.Types.ChildNode
import Web.Types.Document
import Web.Types.DocumentAndElementEventHandlers
import Web.Types.Element
import Web.Types.ElementCSSInlineStyle
import Web.Types.ElementContentEditable
import Web.Types.EventTarget
import Web.Types.GeometryUtils
import Web.Types.GlobalEventHandlers
import Web.Types.HTMLElement
import Web.Types.HTMLFormElement
import Web.Types.HTMLObjectElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable
import Web.Types.ValidityState


%default total


export
%foreign "browser:lambda:()=> new HTMLObjectElement()"
prim__new : PrimIO HTMLObjectElement


export
%foreign "browser:lambda:x=>x.align"
prim__align : HTMLObjectElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.align = v}"
prim__setAlign : HTMLObjectElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.archive"
prim__archive : HTMLObjectElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.archive = v}"
prim__setArchive : HTMLObjectElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.border"
prim__border : HTMLObjectElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.border = v}"
prim__setBorder : HTMLObjectElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.code"
prim__code : HTMLObjectElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.code = v}"
prim__setCode : HTMLObjectElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.codeBase"
prim__codeBase : HTMLObjectElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.codeBase = v}"
prim__setCodeBase : HTMLObjectElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.codeType"
prim__codeType : HTMLObjectElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.codeType = v}"
prim__setCodeType : HTMLObjectElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.contentDocument"
prim__contentDocument : HTMLObjectElement -> PrimIO (Nullable Document)


export
%foreign "browser:lambda:x=>x.contentWindow"
prim__contentWindow : HTMLObjectElement -> PrimIO (Nullable WindowProxy)


export
%foreign "browser:lambda:x=>x.data"
prim__data : HTMLObjectElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.data = v}"
prim__setData : HTMLObjectElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.declare"
prim__declare : HTMLObjectElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.declare = v}"
prim__setDeclare : HTMLObjectElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.form"
prim__form : HTMLObjectElement -> PrimIO (Nullable HTMLFormElement)


export
%foreign "browser:lambda:x=>x.height"
prim__height : HTMLObjectElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.height = v}"
prim__setHeight : HTMLObjectElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.hspace"
prim__hspace : HTMLObjectElement -> PrimIO Bits32



export
%foreign "browser:lambda:(x,v)=>{x.hspace = v}"
prim__setHspace : HTMLObjectElement -> Bits32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.name"
prim__name : HTMLObjectElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.name = v}"
prim__setName : HTMLObjectElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.standby"
prim__standby : HTMLObjectElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.standby = v}"
prim__setStandby : HTMLObjectElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.type"
prim__type : HTMLObjectElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.type = v}"
prim__setType : HTMLObjectElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.useMap"
prim__useMap : HTMLObjectElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.useMap = v}"
prim__setUseMap : HTMLObjectElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.validationMessage"
prim__validationMessage : HTMLObjectElement -> PrimIO String


export
%foreign "browser:lambda:x=>x.validity"
prim__validity : HTMLObjectElement -> PrimIO ValidityState


export
%foreign "browser:lambda:x=>x.vspace"
prim__vspace : HTMLObjectElement -> PrimIO Bits32



export
%foreign "browser:lambda:(x,v)=>{x.vspace = v}"
prim__setVspace : HTMLObjectElement -> Bits32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.width"
prim__width : HTMLObjectElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.width = v}"
prim__setWidth : HTMLObjectElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.willValidate"
prim__willValidate : HTMLObjectElement -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.checkValidity()"
prim__checkValidity : HTMLObjectElement -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.getSVGDocument()"
prim__getSVGDocument : HTMLObjectElement -> PrimIO (Nullable Document)


export
%foreign "browser:lambda:x=>x.reportValidity()"
prim__reportValidity : HTMLObjectElement -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a)=>x.setCustomValidity(a)"
prim__setCustomValidity : HTMLObjectElement -> String -> PrimIO ()


export
new : JSIO HTMLObjectElement
new = primJS $ HTMLObjectElement.prim__new


export
align : HTMLObjectElement -> Attribute True Prelude.id String
align v = fromPrim "HTMLObjectElement.getalign" prim__align prim__setAlign v


export
archive : HTMLObjectElement -> Attribute True Prelude.id String
archive v = fromPrim
              "HTMLObjectElement.getarchive"
              prim__archive
              prim__setArchive
              v


export
border : HTMLObjectElement -> Attribute True Prelude.id String
border v = fromPrim "HTMLObjectElement.getborder" prim__border prim__setBorder v


export
code : HTMLObjectElement -> Attribute True Prelude.id String
code v = fromPrim "HTMLObjectElement.getcode" prim__code prim__setCode v


export
codeBase : HTMLObjectElement -> Attribute True Prelude.id String
codeBase v = fromPrim
               "HTMLObjectElement.getcodeBase"
               prim__codeBase
               prim__setCodeBase
               v


export
codeType : HTMLObjectElement -> Attribute True Prelude.id String
codeType v = fromPrim
               "HTMLObjectElement.getcodeType"
               prim__codeType
               prim__setCodeType
               v


export
contentDocument : (obj : HTMLObjectElement) -> JSIO (Maybe Document)
contentDocument a = tryJS "HTMLObjectElement.contentDocument" $
  HTMLObjectElement.prim__contentDocument a


export
contentWindow : (obj : HTMLObjectElement) -> JSIO (Maybe WindowProxy)
contentWindow a = tryJS "HTMLObjectElement.contentWindow" $
  HTMLObjectElement.prim__contentWindow a


export
data_ : HTMLObjectElement -> Attribute True Prelude.id String
data_ v = fromPrim "HTMLObjectElement.getdata" prim__data prim__setData v


export
declare : HTMLObjectElement -> Attribute True Prelude.id Bool
declare v = fromPrim
              "HTMLObjectElement.getdeclare"
              prim__declare
              prim__setDeclare
              v


export
form : (obj : HTMLObjectElement) -> JSIO (Maybe HTMLFormElement)
form a = tryJS "HTMLObjectElement.form" $ HTMLObjectElement.prim__form a


export
height : HTMLObjectElement -> Attribute True Prelude.id String
height v = fromPrim "HTMLObjectElement.getheight" prim__height prim__setHeight v


export
hspace : HTMLObjectElement -> Attribute True Prelude.id Bits32
hspace v = fromPrim "HTMLObjectElement.gethspace" prim__hspace prim__setHspace v


export
name : HTMLObjectElement -> Attribute True Prelude.id String
name v = fromPrim "HTMLObjectElement.getname" prim__name prim__setName v


export
standby : HTMLObjectElement -> Attribute True Prelude.id String
standby v = fromPrim
              "HTMLObjectElement.getstandby"
              prim__standby
              prim__setStandby
              v


export
type : HTMLObjectElement -> Attribute True Prelude.id String
type v = fromPrim "HTMLObjectElement.gettype" prim__type prim__setType v


export
useMap : HTMLObjectElement -> Attribute True Prelude.id String
useMap v = fromPrim "HTMLObjectElement.getuseMap" prim__useMap prim__setUseMap v


export
validationMessage : (obj : HTMLObjectElement) -> JSIO String
validationMessage a = primJS $ HTMLObjectElement.prim__validationMessage a


export
validity : (obj : HTMLObjectElement) -> JSIO ValidityState
validity a = primJS $ HTMLObjectElement.prim__validity a


export
vspace : HTMLObjectElement -> Attribute True Prelude.id Bits32
vspace v = fromPrim "HTMLObjectElement.getvspace" prim__vspace prim__setVspace v


export
width : HTMLObjectElement -> Attribute True Prelude.id String
width v = fromPrim "HTMLObjectElement.getwidth" prim__width prim__setWidth v


export
willValidate : (obj : HTMLObjectElement) -> JSIO Bool
willValidate a = tryJS "HTMLObjectElement.willValidate" $
  HTMLObjectElement.prim__willValidate a


export
checkValidity : (obj : HTMLObjectElement) -> JSIO Bool
checkValidity a = tryJS "HTMLObjectElement.checkValidity" $
  HTMLObjectElement.prim__checkValidity a


export
getSVGDocument : (obj : HTMLObjectElement) -> JSIO (Maybe Document)
getSVGDocument a = tryJS "HTMLObjectElement.getSVGDocument" $
  HTMLObjectElement.prim__getSVGDocument a


export
reportValidity : (obj : HTMLObjectElement) -> JSIO Bool
reportValidity a = tryJS "HTMLObjectElement.reportValidity" $
  HTMLObjectElement.prim__reportValidity a


export
setCustomValidity : (obj : HTMLObjectElement) -> (error : String) -> JSIO ()
setCustomValidity a b = primJS $ HTMLObjectElement.prim__setCustomValidity a b
