module Web.Raw.HTMLAnchorElement

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
import Web.Types.HTMLAnchorElement
import Web.Types.HTMLElement
import Web.Types.HTMLHyperlinkElementUtils
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLAnchorElement()"
prim__new : PrimIO HTMLAnchorElement


export
%foreign "browser:lambda:x=>x.charset"
prim__charset : HTMLAnchorElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.charset = v}"
prim__setCharset : HTMLAnchorElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.coords"
prim__coords : HTMLAnchorElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.coords = v}"
prim__setCoords : HTMLAnchorElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.download"
prim__download : HTMLAnchorElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.download = v}"
prim__setDownload : HTMLAnchorElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.hreflang"
prim__hreflang : HTMLAnchorElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.hreflang = v}"
prim__setHreflang : HTMLAnchorElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.name"
prim__name : HTMLAnchorElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.name = v}"
prim__setName : HTMLAnchorElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ping"
prim__ping : HTMLAnchorElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ping = v}"
prim__setPing : HTMLAnchorElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.referrerPolicy"
prim__referrerPolicy : HTMLAnchorElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.referrerPolicy = v}"
prim__setReferrerPolicy : HTMLAnchorElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.rel"
prim__rel : HTMLAnchorElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.rel = v}"
prim__setRel : HTMLAnchorElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.relList"
prim__relList : HTMLAnchorElement -> PrimIO DOMTokenList


export
%foreign "browser:lambda:x=>x.rev"
prim__rev : HTMLAnchorElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.rev = v}"
prim__setRev : HTMLAnchorElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.shape"
prim__shape : HTMLAnchorElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.shape = v}"
prim__setShape : HTMLAnchorElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.target"
prim__target : HTMLAnchorElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.target = v}"
prim__setTarget : HTMLAnchorElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.text"
prim__text : HTMLAnchorElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.text = v}"
prim__setText : HTMLAnchorElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.type"
prim__type : HTMLAnchorElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.type = v}"
prim__setType : HTMLAnchorElement -> String -> PrimIO ()



export
new : JSIO HTMLAnchorElement
new = primJS $ HTMLAnchorElement.prim__new


export
charset : HTMLAnchorElement -> Attribute True Prelude.id String
charset v = fromPrim
              "HTMLAnchorElement.getcharset"
              prim__charset
              prim__setCharset
              v


export
coords : HTMLAnchorElement -> Attribute True Prelude.id String
coords v = fromPrim "HTMLAnchorElement.getcoords" prim__coords prim__setCoords v


export
download : HTMLAnchorElement -> Attribute True Prelude.id String
download v = fromPrim
               "HTMLAnchorElement.getdownload"
               prim__download
               prim__setDownload
               v


export
hreflang : HTMLAnchorElement -> Attribute True Prelude.id String
hreflang v = fromPrim
               "HTMLAnchorElement.gethreflang"
               prim__hreflang
               prim__setHreflang
               v


export
name : HTMLAnchorElement -> Attribute True Prelude.id String
name v = fromPrim "HTMLAnchorElement.getname" prim__name prim__setName v


export
ping : HTMLAnchorElement -> Attribute True Prelude.id String
ping v = fromPrim "HTMLAnchorElement.getping" prim__ping prim__setPing v


export
referrerPolicy : HTMLAnchorElement -> Attribute True Prelude.id String
referrerPolicy v = fromPrim
                     "HTMLAnchorElement.getreferrerPolicy"
                     prim__referrerPolicy
                     prim__setReferrerPolicy
                     v


export
rel : HTMLAnchorElement -> Attribute True Prelude.id String
rel v = fromPrim "HTMLAnchorElement.getrel" prim__rel prim__setRel v


export
relList : (obj : HTMLAnchorElement) -> JSIO DOMTokenList
relList a = primJS $ HTMLAnchorElement.prim__relList a


export
rev : HTMLAnchorElement -> Attribute True Prelude.id String
rev v = fromPrim "HTMLAnchorElement.getrev" prim__rev prim__setRev v


export
shape : HTMLAnchorElement -> Attribute True Prelude.id String
shape v = fromPrim "HTMLAnchorElement.getshape" prim__shape prim__setShape v


export
target : HTMLAnchorElement -> Attribute True Prelude.id String
target v = fromPrim "HTMLAnchorElement.gettarget" prim__target prim__setTarget v


export
text : HTMLAnchorElement -> Attribute True Prelude.id String
text v = fromPrim "HTMLAnchorElement.gettext" prim__text prim__setText v


export
type : HTMLAnchorElement -> Attribute True Prelude.id String
type v = fromPrim "HTMLAnchorElement.gettype" prim__type prim__setType v
