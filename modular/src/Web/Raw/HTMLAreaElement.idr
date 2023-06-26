module Web.Raw.HTMLAreaElement

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
import Web.Types.HTMLAreaElement
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
%foreign "browser:lambda:()=> new HTMLAreaElement()"
prim__new : PrimIO HTMLAreaElement


export
%foreign "browser:lambda:x=>x.alt"
prim__alt : HTMLAreaElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.alt = v}"
prim__setAlt : HTMLAreaElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.coords"
prim__coords : HTMLAreaElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.coords = v}"
prim__setCoords : HTMLAreaElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.download"
prim__download : HTMLAreaElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.download = v}"
prim__setDownload : HTMLAreaElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.noHref"
prim__noHref : HTMLAreaElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.noHref = v}"
prim__setNoHref : HTMLAreaElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ping"
prim__ping : HTMLAreaElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ping = v}"
prim__setPing : HTMLAreaElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.referrerPolicy"
prim__referrerPolicy : HTMLAreaElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.referrerPolicy = v}"
prim__setReferrerPolicy : HTMLAreaElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.rel"
prim__rel : HTMLAreaElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.rel = v}"
prim__setRel : HTMLAreaElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.relList"
prim__relList : HTMLAreaElement -> PrimIO DOMTokenList


export
%foreign "browser:lambda:x=>x.shape"
prim__shape : HTMLAreaElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.shape = v}"
prim__setShape : HTMLAreaElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.target"
prim__target : HTMLAreaElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.target = v}"
prim__setTarget : HTMLAreaElement -> String -> PrimIO ()



export
new : JSIO HTMLAreaElement
new = primJS $ HTMLAreaElement.prim__new


export
alt : HTMLAreaElement -> Attribute True Prelude.id String
alt v = fromPrim "HTMLAreaElement.getalt" prim__alt prim__setAlt v


export
coords : HTMLAreaElement -> Attribute True Prelude.id String
coords v = fromPrim "HTMLAreaElement.getcoords" prim__coords prim__setCoords v


export
download : HTMLAreaElement -> Attribute True Prelude.id String
download v = fromPrim
               "HTMLAreaElement.getdownload"
               prim__download
               prim__setDownload
               v


export
noHref : HTMLAreaElement -> Attribute True Prelude.id Bool
noHref v = fromPrim "HTMLAreaElement.getnoHref" prim__noHref prim__setNoHref v


export
ping : HTMLAreaElement -> Attribute True Prelude.id String
ping v = fromPrim "HTMLAreaElement.getping" prim__ping prim__setPing v


export
referrerPolicy : HTMLAreaElement -> Attribute True Prelude.id String
referrerPolicy v = fromPrim
                     "HTMLAreaElement.getreferrerPolicy"
                     prim__referrerPolicy
                     prim__setReferrerPolicy
                     v


export
rel : HTMLAreaElement -> Attribute True Prelude.id String
rel v = fromPrim "HTMLAreaElement.getrel" prim__rel prim__setRel v


export
relList : (obj : HTMLAreaElement) -> JSIO DOMTokenList
relList a = primJS $ HTMLAreaElement.prim__relList a


export
shape : HTMLAreaElement -> Attribute True Prelude.id String
shape v = fromPrim "HTMLAreaElement.getshape" prim__shape prim__setShape v


export
target : HTMLAreaElement -> Attribute True Prelude.id String
target v = fromPrim "HTMLAreaElement.gettarget" prim__target prim__setTarget v

