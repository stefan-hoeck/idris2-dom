module Web.Raw.HTMLVideoElement

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
import Web.Types.HTMLMediaElement
import Web.Types.HTMLOrSVGElement
import Web.Types.HTMLVideoElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLVideoElement()"
prim__new : PrimIO HTMLVideoElement


export
%foreign "browser:lambda:x=>x.height"
prim__height : HTMLVideoElement -> PrimIO Bits32



export
%foreign "browser:lambda:(x,v)=>{x.height = v}"
prim__setHeight : HTMLVideoElement -> Bits32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.playsInline"
prim__playsInline : HTMLVideoElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.playsInline = v}"
prim__setPlaysInline : HTMLVideoElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.poster"
prim__poster : HTMLVideoElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.poster = v}"
prim__setPoster : HTMLVideoElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.videoHeight"
prim__videoHeight : HTMLVideoElement -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.videoWidth"
prim__videoWidth : HTMLVideoElement -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.width"
prim__width : HTMLVideoElement -> PrimIO Bits32



export
%foreign "browser:lambda:(x,v)=>{x.width = v}"
prim__setWidth : HTMLVideoElement -> Bits32 -> PrimIO ()



export
new : JSIO HTMLVideoElement
new = primJS $ HTMLVideoElement.prim__new


export
height : HTMLVideoElement -> Attribute True Prelude.id Bits32
height v = fromPrim "HTMLVideoElement.getheight" prim__height prim__setHeight v


export
playsInline : HTMLVideoElement -> Attribute True Prelude.id Bool
playsInline v = fromPrim
                  "HTMLVideoElement.getplaysInline"
                  prim__playsInline
                  prim__setPlaysInline
                  v


export
poster : HTMLVideoElement -> Attribute True Prelude.id String
poster v = fromPrim "HTMLVideoElement.getposter" prim__poster prim__setPoster v


export
videoHeight : (obj : HTMLVideoElement) -> JSIO Bits32
videoHeight a = primJS $ HTMLVideoElement.prim__videoHeight a


export
videoWidth : (obj : HTMLVideoElement) -> JSIO Bits32
videoWidth a = primJS $ HTMLVideoElement.prim__videoWidth a


export
width : HTMLVideoElement -> Attribute True Prelude.id Bits32
width v = fromPrim "HTMLVideoElement.getwidth" prim__width prim__setWidth v

