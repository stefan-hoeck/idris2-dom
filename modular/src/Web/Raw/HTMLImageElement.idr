module Web.Raw.HTMLImageElement

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
import Web.Types.HTMLImageElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLImageElement()"
prim__new : PrimIO HTMLImageElement


export
%foreign "browser:lambda:x=>x.align"
prim__align : HTMLImageElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.align = v}"
prim__setAlign : HTMLImageElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.alt"
prim__alt : HTMLImageElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.alt = v}"
prim__setAlt : HTMLImageElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.border"
prim__border : HTMLImageElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.border = v}"
prim__setBorder : HTMLImageElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.complete"
prim__complete : HTMLImageElement -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.crossOrigin"
prim__crossOrigin : HTMLImageElement -> PrimIO (Nullable String)



export
%foreign "browser:lambda:(x,v)=>{x.crossOrigin = v}"
prim__setCrossOrigin : HTMLImageElement -> Nullable String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.currentSrc"
prim__currentSrc : HTMLImageElement -> PrimIO String


export
%foreign "browser:lambda:x=>x.decoding"
prim__decoding : HTMLImageElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.decoding = v}"
prim__setDecoding : HTMLImageElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.height"
prim__height : HTMLImageElement -> PrimIO Bits32



export
%foreign "browser:lambda:(x,v)=>{x.height = v}"
prim__setHeight : HTMLImageElement -> Bits32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.hspace"
prim__hspace : HTMLImageElement -> PrimIO Bits32



export
%foreign "browser:lambda:(x,v)=>{x.hspace = v}"
prim__setHspace : HTMLImageElement -> Bits32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.isMap"
prim__isMap : HTMLImageElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.isMap = v}"
prim__setIsMap : HTMLImageElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.loading"
prim__loading : HTMLImageElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.loading = v}"
prim__setLoading : HTMLImageElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.longDesc"
prim__longDesc : HTMLImageElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.longDesc = v}"
prim__setLongDesc : HTMLImageElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.lowsrc"
prim__lowsrc : HTMLImageElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.lowsrc = v}"
prim__setLowsrc : HTMLImageElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.name"
prim__name : HTMLImageElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.name = v}"
prim__setName : HTMLImageElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.naturalHeight"
prim__naturalHeight : HTMLImageElement -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.naturalWidth"
prim__naturalWidth : HTMLImageElement -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.referrerPolicy"
prim__referrerPolicy : HTMLImageElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.referrerPolicy = v}"
prim__setReferrerPolicy : HTMLImageElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.sizes"
prim__sizes : HTMLImageElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.sizes = v}"
prim__setSizes : HTMLImageElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.src"
prim__src : HTMLImageElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.src = v}"
prim__setSrc : HTMLImageElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.srcset"
prim__srcset : HTMLImageElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.srcset = v}"
prim__setSrcset : HTMLImageElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.useMap"
prim__useMap : HTMLImageElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.useMap = v}"
prim__setUseMap : HTMLImageElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.vspace"
prim__vspace : HTMLImageElement -> PrimIO Bits32



export
%foreign "browser:lambda:(x,v)=>{x.vspace = v}"
prim__setVspace : HTMLImageElement -> Bits32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.width"
prim__width : HTMLImageElement -> PrimIO Bits32



export
%foreign "browser:lambda:(x,v)=>{x.width = v}"
prim__setWidth : HTMLImageElement -> Bits32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.x"
prim__x : HTMLImageElement -> PrimIO Int32


export
%foreign "browser:lambda:x=>x.y"
prim__y : HTMLImageElement -> PrimIO Int32


export
%foreign "browser:lambda:x=>x.decode()"
prim__decode : HTMLImageElement -> PrimIO (Promise Undefined)


export
new : JSIO HTMLImageElement
new = primJS $ HTMLImageElement.prim__new


export
align : HTMLImageElement -> Attribute True Prelude.id String
align v = fromPrim "HTMLImageElement.getalign" prim__align prim__setAlign v


export
alt : HTMLImageElement -> Attribute True Prelude.id String
alt v = fromPrim "HTMLImageElement.getalt" prim__alt prim__setAlt v


export
border : HTMLImageElement -> Attribute True Prelude.id String
border v = fromPrim "HTMLImageElement.getborder" prim__border prim__setBorder v


export
complete : (obj : HTMLImageElement) -> JSIO Bool
complete a = tryJS "HTMLImageElement.complete" $
  HTMLImageElement.prim__complete a


export
crossOrigin : HTMLImageElement -> Attribute False Maybe String
crossOrigin v = fromNullablePrim
                  "HTMLImageElement.getcrossOrigin"
                  prim__crossOrigin
                  prim__setCrossOrigin
                  v


export
currentSrc : (obj : HTMLImageElement) -> JSIO String
currentSrc a = primJS $ HTMLImageElement.prim__currentSrc a


export
decoding : HTMLImageElement -> Attribute True Prelude.id String
decoding v = fromPrim
               "HTMLImageElement.getdecoding"
               prim__decoding
               prim__setDecoding
               v


export
height : HTMLImageElement -> Attribute True Prelude.id Bits32
height v = fromPrim "HTMLImageElement.getheight" prim__height prim__setHeight v


export
hspace : HTMLImageElement -> Attribute True Prelude.id Bits32
hspace v = fromPrim "HTMLImageElement.gethspace" prim__hspace prim__setHspace v


export
isMap : HTMLImageElement -> Attribute True Prelude.id Bool
isMap v = fromPrim "HTMLImageElement.getisMap" prim__isMap prim__setIsMap v


export
loading : HTMLImageElement -> Attribute True Prelude.id String
loading v = fromPrim
              "HTMLImageElement.getloading"
              prim__loading
              prim__setLoading
              v


export
longDesc : HTMLImageElement -> Attribute True Prelude.id String
longDesc v = fromPrim
               "HTMLImageElement.getlongDesc"
               prim__longDesc
               prim__setLongDesc
               v


export
lowsrc : HTMLImageElement -> Attribute True Prelude.id String
lowsrc v = fromPrim "HTMLImageElement.getlowsrc" prim__lowsrc prim__setLowsrc v


export
name : HTMLImageElement -> Attribute True Prelude.id String
name v = fromPrim "HTMLImageElement.getname" prim__name prim__setName v


export
naturalHeight : (obj : HTMLImageElement) -> JSIO Bits32
naturalHeight a = primJS $ HTMLImageElement.prim__naturalHeight a


export
naturalWidth : (obj : HTMLImageElement) -> JSIO Bits32
naturalWidth a = primJS $ HTMLImageElement.prim__naturalWidth a


export
referrerPolicy : HTMLImageElement -> Attribute True Prelude.id String
referrerPolicy v = fromPrim
                     "HTMLImageElement.getreferrerPolicy"
                     prim__referrerPolicy
                     prim__setReferrerPolicy
                     v


export
sizes : HTMLImageElement -> Attribute True Prelude.id String
sizes v = fromPrim "HTMLImageElement.getsizes" prim__sizes prim__setSizes v


export
src : HTMLImageElement -> Attribute True Prelude.id String
src v = fromPrim "HTMLImageElement.getsrc" prim__src prim__setSrc v


export
srcset : HTMLImageElement -> Attribute True Prelude.id String
srcset v = fromPrim "HTMLImageElement.getsrcset" prim__srcset prim__setSrcset v


export
useMap : HTMLImageElement -> Attribute True Prelude.id String
useMap v = fromPrim "HTMLImageElement.getuseMap" prim__useMap prim__setUseMap v


export
vspace : HTMLImageElement -> Attribute True Prelude.id Bits32
vspace v = fromPrim "HTMLImageElement.getvspace" prim__vspace prim__setVspace v


export
width : HTMLImageElement -> Attribute True Prelude.id Bits32
width v = fromPrim "HTMLImageElement.getwidth" prim__width prim__setWidth v


export
x : (obj : HTMLImageElement) -> JSIO Int32
x a = primJS $ HTMLImageElement.prim__x a


export
y : (obj : HTMLImageElement) -> JSIO Int32
y a = primJS $ HTMLImageElement.prim__y a


export
decode : (obj : HTMLImageElement) -> JSIO (Promise Undefined)
decode a = primJS $ HTMLImageElement.prim__decode a
