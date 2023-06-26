module Web.Raw.HTMLEmbedElement

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
import Web.Types.HTMLEmbedElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLEmbedElement()"
prim__new : PrimIO HTMLEmbedElement


export
%foreign "browser:lambda:x=>x.align"
prim__align : HTMLEmbedElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.align = v}"
prim__setAlign : HTMLEmbedElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.height"
prim__height : HTMLEmbedElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.height = v}"
prim__setHeight : HTMLEmbedElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.name"
prim__name : HTMLEmbedElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.name = v}"
prim__setName : HTMLEmbedElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.src"
prim__src : HTMLEmbedElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.src = v}"
prim__setSrc : HTMLEmbedElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.type"
prim__type : HTMLEmbedElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.type = v}"
prim__setType : HTMLEmbedElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.width"
prim__width : HTMLEmbedElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.width = v}"
prim__setWidth : HTMLEmbedElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.getSVGDocument()"
prim__getSVGDocument : HTMLEmbedElement -> PrimIO (Nullable Document)


export
new : JSIO HTMLEmbedElement
new = primJS $ HTMLEmbedElement.prim__new


export
align : HTMLEmbedElement -> Attribute True Prelude.id String
align v = fromPrim "HTMLEmbedElement.getalign" prim__align prim__setAlign v


export
height : HTMLEmbedElement -> Attribute True Prelude.id String
height v = fromPrim "HTMLEmbedElement.getheight" prim__height prim__setHeight v


export
name : HTMLEmbedElement -> Attribute True Prelude.id String
name v = fromPrim "HTMLEmbedElement.getname" prim__name prim__setName v


export
src : HTMLEmbedElement -> Attribute True Prelude.id String
src v = fromPrim "HTMLEmbedElement.getsrc" prim__src prim__setSrc v


export
type : HTMLEmbedElement -> Attribute True Prelude.id String
type v = fromPrim "HTMLEmbedElement.gettype" prim__type prim__setType v


export
width : HTMLEmbedElement -> Attribute True Prelude.id String
width v = fromPrim "HTMLEmbedElement.getwidth" prim__width prim__setWidth v


export
getSVGDocument : (obj : HTMLEmbedElement) -> JSIO (Maybe Document)
getSVGDocument a = tryJS "HTMLEmbedElement.getSVGDocument" $
  HTMLEmbedElement.prim__getSVGDocument a

