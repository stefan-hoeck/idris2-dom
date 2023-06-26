module Web.Raw.HTMLTableCellElement

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
import Web.Types.HTMLTableCellElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLTableCellElement()"
prim__new : PrimIO HTMLTableCellElement


export
%foreign "browser:lambda:x=>x.abbr"
prim__abbr : HTMLTableCellElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.abbr = v}"
prim__setAbbr : HTMLTableCellElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.align"
prim__align : HTMLTableCellElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.align = v}"
prim__setAlign : HTMLTableCellElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.axis"
prim__axis : HTMLTableCellElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.axis = v}"
prim__setAxis : HTMLTableCellElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.bgColor"
prim__bgColor : HTMLTableCellElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.bgColor = v}"
prim__setBgColor : HTMLTableCellElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.cellIndex"
prim__cellIndex : HTMLTableCellElement -> PrimIO Int32


export
%foreign "browser:lambda:x=>x.ch"
prim__ch : HTMLTableCellElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ch = v}"
prim__setCh : HTMLTableCellElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.chOff"
prim__chOff : HTMLTableCellElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.chOff = v}"
prim__setChOff : HTMLTableCellElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.colSpan"
prim__colSpan : HTMLTableCellElement -> PrimIO Bits32



export
%foreign "browser:lambda:(x,v)=>{x.colSpan = v}"
prim__setColSpan : HTMLTableCellElement -> Bits32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.headers"
prim__headers : HTMLTableCellElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.headers = v}"
prim__setHeaders : HTMLTableCellElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.height"
prim__height : HTMLTableCellElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.height = v}"
prim__setHeight : HTMLTableCellElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.noWrap"
prim__noWrap : HTMLTableCellElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.noWrap = v}"
prim__setNoWrap : HTMLTableCellElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.rowSpan"
prim__rowSpan : HTMLTableCellElement -> PrimIO Bits32



export
%foreign "browser:lambda:(x,v)=>{x.rowSpan = v}"
prim__setRowSpan : HTMLTableCellElement -> Bits32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.scope"
prim__scope : HTMLTableCellElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.scope = v}"
prim__setScope : HTMLTableCellElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.vAlign"
prim__vAlign : HTMLTableCellElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.vAlign = v}"
prim__setVAlign : HTMLTableCellElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.width"
prim__width : HTMLTableCellElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.width = v}"
prim__setWidth : HTMLTableCellElement -> String -> PrimIO ()



export
new : JSIO HTMLTableCellElement
new = primJS $ HTMLTableCellElement.prim__new


export
abbr : HTMLTableCellElement -> Attribute True Prelude.id String
abbr v = fromPrim "HTMLTableCellElement.getabbr" prim__abbr prim__setAbbr v


export
align : HTMLTableCellElement -> Attribute True Prelude.id String
align v = fromPrim "HTMLTableCellElement.getalign" prim__align prim__setAlign v


export
axis : HTMLTableCellElement -> Attribute True Prelude.id String
axis v = fromPrim "HTMLTableCellElement.getaxis" prim__axis prim__setAxis v


export
bgColor : HTMLTableCellElement -> Attribute True Prelude.id String
bgColor v = fromPrim
              "HTMLTableCellElement.getbgColor"
              prim__bgColor
              prim__setBgColor
              v


export
cellIndex : (obj : HTMLTableCellElement) -> JSIO Int32
cellIndex a = primJS $ HTMLTableCellElement.prim__cellIndex a


export
ch : HTMLTableCellElement -> Attribute True Prelude.id String
ch v = fromPrim "HTMLTableCellElement.getch" prim__ch prim__setCh v


export
chOff : HTMLTableCellElement -> Attribute True Prelude.id String
chOff v = fromPrim "HTMLTableCellElement.getchOff" prim__chOff prim__setChOff v


export
colSpan : HTMLTableCellElement -> Attribute True Prelude.id Bits32
colSpan v = fromPrim
              "HTMLTableCellElement.getcolSpan"
              prim__colSpan
              prim__setColSpan
              v


export
headers : HTMLTableCellElement -> Attribute True Prelude.id String
headers v = fromPrim
              "HTMLTableCellElement.getheaders"
              prim__headers
              prim__setHeaders
              v


export
height : HTMLTableCellElement -> Attribute True Prelude.id String
height v = fromPrim
             "HTMLTableCellElement.getheight"
             prim__height
             prim__setHeight
             v


export
noWrap : HTMLTableCellElement -> Attribute True Prelude.id Bool
noWrap v = fromPrim
             "HTMLTableCellElement.getnoWrap"
             prim__noWrap
             prim__setNoWrap
             v


export
rowSpan : HTMLTableCellElement -> Attribute True Prelude.id Bits32
rowSpan v = fromPrim
              "HTMLTableCellElement.getrowSpan"
              prim__rowSpan
              prim__setRowSpan
              v


export
scope : HTMLTableCellElement -> Attribute True Prelude.id String
scope v = fromPrim "HTMLTableCellElement.getscope" prim__scope prim__setScope v


export
vAlign : HTMLTableCellElement -> Attribute True Prelude.id String
vAlign v = fromPrim
             "HTMLTableCellElement.getvAlign"
             prim__vAlign
             prim__setVAlign
             v


export
width : HTMLTableCellElement -> Attribute True Prelude.id String
width v = fromPrim "HTMLTableCellElement.getwidth" prim__width prim__setWidth v

