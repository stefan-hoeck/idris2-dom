module Web.Raw.HTMLLinkElement

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
import Web.Types.HTMLLinkElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.LinkStyle
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLLinkElement()"
prim__new : PrimIO HTMLLinkElement


export
%foreign "browser:lambda:x=>x.as"
prim__as : HTMLLinkElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.as = v}"
prim__setAs : HTMLLinkElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.charset"
prim__charset : HTMLLinkElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.charset = v}"
prim__setCharset : HTMLLinkElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.crossOrigin"
prim__crossOrigin : HTMLLinkElement -> PrimIO (Nullable String)



export
%foreign "browser:lambda:(x,v)=>{x.crossOrigin = v}"
prim__setCrossOrigin : HTMLLinkElement -> Nullable String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.disabled"
prim__disabled : HTMLLinkElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.disabled = v}"
prim__setDisabled : HTMLLinkElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.href"
prim__href : HTMLLinkElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.href = v}"
prim__setHref : HTMLLinkElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.hreflang"
prim__hreflang : HTMLLinkElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.hreflang = v}"
prim__setHreflang : HTMLLinkElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.imageSizes"
prim__imageSizes : HTMLLinkElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.imageSizes = v}"
prim__setImageSizes : HTMLLinkElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.imageSrcset"
prim__imageSrcset : HTMLLinkElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.imageSrcset = v}"
prim__setImageSrcset : HTMLLinkElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.integrity"
prim__integrity : HTMLLinkElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.integrity = v}"
prim__setIntegrity : HTMLLinkElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.media"
prim__media : HTMLLinkElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.media = v}"
prim__setMedia : HTMLLinkElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.referrerPolicy"
prim__referrerPolicy : HTMLLinkElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.referrerPolicy = v}"
prim__setReferrerPolicy : HTMLLinkElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.rel"
prim__rel : HTMLLinkElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.rel = v}"
prim__setRel : HTMLLinkElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.relList"
prim__relList : HTMLLinkElement -> PrimIO DOMTokenList


export
%foreign "browser:lambda:x=>x.rev"
prim__rev : HTMLLinkElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.rev = v}"
prim__setRev : HTMLLinkElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.sizes"
prim__sizes : HTMLLinkElement -> PrimIO DOMTokenList


export
%foreign "browser:lambda:x=>x.target"
prim__target : HTMLLinkElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.target = v}"
prim__setTarget : HTMLLinkElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.type"
prim__type : HTMLLinkElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.type = v}"
prim__setType : HTMLLinkElement -> String -> PrimIO ()



export
new : JSIO HTMLLinkElement
new = primJS $ HTMLLinkElement.prim__new


export
as : HTMLLinkElement -> Attribute True Prelude.id String
as v = fromPrim "HTMLLinkElement.getas" prim__as prim__setAs v


export
charset : HTMLLinkElement -> Attribute True Prelude.id String
charset v = fromPrim
              "HTMLLinkElement.getcharset"
              prim__charset
              prim__setCharset
              v


export
crossOrigin : HTMLLinkElement -> Attribute False Maybe String
crossOrigin v = fromNullablePrim
                  "HTMLLinkElement.getcrossOrigin"
                  prim__crossOrigin
                  prim__setCrossOrigin
                  v


export
disabled : HTMLLinkElement -> Attribute True Prelude.id Bool
disabled v = fromPrim
               "HTMLLinkElement.getdisabled"
               prim__disabled
               prim__setDisabled
               v


export
href : HTMLLinkElement -> Attribute True Prelude.id String
href v = fromPrim "HTMLLinkElement.gethref" prim__href prim__setHref v


export
hreflang : HTMLLinkElement -> Attribute True Prelude.id String
hreflang v = fromPrim
               "HTMLLinkElement.gethreflang"
               prim__hreflang
               prim__setHreflang
               v


export
imageSizes : HTMLLinkElement -> Attribute True Prelude.id String
imageSizes v = fromPrim
                 "HTMLLinkElement.getimageSizes"
                 prim__imageSizes
                 prim__setImageSizes
                 v


export
imageSrcset : HTMLLinkElement -> Attribute True Prelude.id String
imageSrcset v = fromPrim
                  "HTMLLinkElement.getimageSrcset"
                  prim__imageSrcset
                  prim__setImageSrcset
                  v


export
integrity : HTMLLinkElement -> Attribute True Prelude.id String
integrity v = fromPrim
                "HTMLLinkElement.getintegrity"
                prim__integrity
                prim__setIntegrity
                v


export
media : HTMLLinkElement -> Attribute True Prelude.id String
media v = fromPrim "HTMLLinkElement.getmedia" prim__media prim__setMedia v


export
referrerPolicy : HTMLLinkElement -> Attribute True Prelude.id String
referrerPolicy v = fromPrim
                     "HTMLLinkElement.getreferrerPolicy"
                     prim__referrerPolicy
                     prim__setReferrerPolicy
                     v


export
rel : HTMLLinkElement -> Attribute True Prelude.id String
rel v = fromPrim "HTMLLinkElement.getrel" prim__rel prim__setRel v


export
relList : (obj : HTMLLinkElement) -> JSIO DOMTokenList
relList a = primJS $ HTMLLinkElement.prim__relList a


export
rev : HTMLLinkElement -> Attribute True Prelude.id String
rev v = fromPrim "HTMLLinkElement.getrev" prim__rev prim__setRev v


export
sizes : (obj : HTMLLinkElement) -> JSIO DOMTokenList
sizes a = primJS $ HTMLLinkElement.prim__sizes a


export
target : HTMLLinkElement -> Attribute True Prelude.id String
target v = fromPrim "HTMLLinkElement.gettarget" prim__target prim__setTarget v


export
type : HTMLLinkElement -> Attribute True Prelude.id String
type v = fromPrim "HTMLLinkElement.gettype" prim__type prim__setType v

