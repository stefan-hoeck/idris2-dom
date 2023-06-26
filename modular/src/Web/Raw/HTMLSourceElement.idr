module Web.Raw.HTMLSourceElement

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
import Web.Types.HTMLOrSVGElement
import Web.Types.HTMLSourceElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLSourceElement()"
prim__new : PrimIO HTMLSourceElement


export
%foreign "browser:lambda:x=>x.height"
prim__height : HTMLSourceElement -> PrimIO Bits32



export
%foreign "browser:lambda:(x,v)=>{x.height = v}"
prim__setHeight : HTMLSourceElement -> Bits32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.media"
prim__media : HTMLSourceElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.media = v}"
prim__setMedia : HTMLSourceElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.sizes"
prim__sizes : HTMLSourceElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.sizes = v}"
prim__setSizes : HTMLSourceElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.src"
prim__src : HTMLSourceElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.src = v}"
prim__setSrc : HTMLSourceElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.srcset"
prim__srcset : HTMLSourceElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.srcset = v}"
prim__setSrcset : HTMLSourceElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.type"
prim__type : HTMLSourceElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.type = v}"
prim__setType : HTMLSourceElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.width"
prim__width : HTMLSourceElement -> PrimIO Bits32



export
%foreign "browser:lambda:(x,v)=>{x.width = v}"
prim__setWidth : HTMLSourceElement -> Bits32 -> PrimIO ()



export
new : JSIO HTMLSourceElement
new = primJS $ HTMLSourceElement.prim__new


export
height : HTMLSourceElement -> Attribute True Prelude.id Bits32
height v = fromPrim "HTMLSourceElement.getheight" prim__height prim__setHeight v


export
media : HTMLSourceElement -> Attribute True Prelude.id String
media v = fromPrim "HTMLSourceElement.getmedia" prim__media prim__setMedia v


export
sizes : HTMLSourceElement -> Attribute True Prelude.id String
sizes v = fromPrim "HTMLSourceElement.getsizes" prim__sizes prim__setSizes v


export
src : HTMLSourceElement -> Attribute True Prelude.id String
src v = fromPrim "HTMLSourceElement.getsrc" prim__src prim__setSrc v


export
srcset : HTMLSourceElement -> Attribute True Prelude.id String
srcset v = fromPrim "HTMLSourceElement.getsrcset" prim__srcset prim__setSrcset v


export
type : HTMLSourceElement -> Attribute True Prelude.id String
type v = fromPrim "HTMLSourceElement.gettype" prim__type prim__setType v


export
width : HTMLSourceElement -> Attribute True Prelude.id Bits32
width v = fromPrim "HTMLSourceElement.getwidth" prim__width prim__setWidth v
