module Web.Raw.HTMLTableColElement

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
import Web.Types.HTMLTableColElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLTableColElement()"
prim__new : PrimIO HTMLTableColElement


export
%foreign "browser:lambda:x=>x.align"
prim__align : HTMLTableColElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.align = v}"
prim__setAlign : HTMLTableColElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ch"
prim__ch : HTMLTableColElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ch = v}"
prim__setCh : HTMLTableColElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.chOff"
prim__chOff : HTMLTableColElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.chOff = v}"
prim__setChOff : HTMLTableColElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.span"
prim__span : HTMLTableColElement -> PrimIO Bits32



export
%foreign "browser:lambda:(x,v)=>{x.span = v}"
prim__setSpan : HTMLTableColElement -> Bits32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.vAlign"
prim__vAlign : HTMLTableColElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.vAlign = v}"
prim__setVAlign : HTMLTableColElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.width"
prim__width : HTMLTableColElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.width = v}"
prim__setWidth : HTMLTableColElement -> String -> PrimIO ()



export
new : JSIO HTMLTableColElement
new = primJS $ HTMLTableColElement.prim__new


export
align : HTMLTableColElement -> Attribute True Prelude.id String
align v = fromPrim "HTMLTableColElement.getalign" prim__align prim__setAlign v


export
ch : HTMLTableColElement -> Attribute True Prelude.id String
ch v = fromPrim "HTMLTableColElement.getch" prim__ch prim__setCh v


export
chOff : HTMLTableColElement -> Attribute True Prelude.id String
chOff v = fromPrim "HTMLTableColElement.getchOff" prim__chOff prim__setChOff v


export
span : HTMLTableColElement -> Attribute True Prelude.id Bits32
span v = fromPrim "HTMLTableColElement.getspan" prim__span prim__setSpan v


export
vAlign : HTMLTableColElement -> Attribute True Prelude.id String
vAlign v = fromPrim
             "HTMLTableColElement.getvAlign"
             prim__vAlign
             prim__setVAlign
             v


export
width : HTMLTableColElement -> Attribute True Prelude.id String
width v = fromPrim "HTMLTableColElement.getwidth" prim__width prim__setWidth v

