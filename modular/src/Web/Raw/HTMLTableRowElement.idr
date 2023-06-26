module Web.Raw.HTMLTableRowElement

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
import Web.Types.HTMLCollection
import Web.Types.HTMLElement
import Web.Types.HTMLOrSVGElement
import Web.Types.HTMLTableCellElement
import Web.Types.HTMLTableRowElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLTableRowElement()"
prim__new : PrimIO HTMLTableRowElement


export
%foreign "browser:lambda:x=>x.align"
prim__align : HTMLTableRowElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.align = v}"
prim__setAlign : HTMLTableRowElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.bgColor"
prim__bgColor : HTMLTableRowElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.bgColor = v}"
prim__setBgColor : HTMLTableRowElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.cells"
prim__cells : HTMLTableRowElement -> PrimIO HTMLCollection


export
%foreign "browser:lambda:x=>x.ch"
prim__ch : HTMLTableRowElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ch = v}"
prim__setCh : HTMLTableRowElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.chOff"
prim__chOff : HTMLTableRowElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.chOff = v}"
prim__setChOff : HTMLTableRowElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.rowIndex"
prim__rowIndex : HTMLTableRowElement -> PrimIO Int32


export
%foreign "browser:lambda:x=>x.sectionRowIndex"
prim__sectionRowIndex : HTMLTableRowElement -> PrimIO Int32


export
%foreign "browser:lambda:x=>x.vAlign"
prim__vAlign : HTMLTableRowElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.vAlign = v}"
prim__setVAlign : HTMLTableRowElement -> String -> PrimIO ()



export
%foreign "browser:lambda:(x,a)=>x.deleteCell(a)"
prim__deleteCell : HTMLTableRowElement -> Int32 -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.insertCell(a)"
prim__insertCell :
     HTMLTableRowElement
  -> UndefOr Int32
  -> PrimIO HTMLTableCellElement


export
new : JSIO HTMLTableRowElement
new = primJS $ HTMLTableRowElement.prim__new


export
align : HTMLTableRowElement -> Attribute True Prelude.id String
align v = fromPrim "HTMLTableRowElement.getalign" prim__align prim__setAlign v


export
bgColor : HTMLTableRowElement -> Attribute True Prelude.id String
bgColor v = fromPrim
              "HTMLTableRowElement.getbgColor"
              prim__bgColor
              prim__setBgColor
              v


export
cells : (obj : HTMLTableRowElement) -> JSIO HTMLCollection
cells a = primJS $ HTMLTableRowElement.prim__cells a


export
ch : HTMLTableRowElement -> Attribute True Prelude.id String
ch v = fromPrim "HTMLTableRowElement.getch" prim__ch prim__setCh v


export
chOff : HTMLTableRowElement -> Attribute True Prelude.id String
chOff v = fromPrim "HTMLTableRowElement.getchOff" prim__chOff prim__setChOff v


export
rowIndex : (obj : HTMLTableRowElement) -> JSIO Int32
rowIndex a = primJS $ HTMLTableRowElement.prim__rowIndex a


export
sectionRowIndex : (obj : HTMLTableRowElement) -> JSIO Int32
sectionRowIndex a = primJS $ HTMLTableRowElement.prim__sectionRowIndex a


export
vAlign : HTMLTableRowElement -> Attribute True Prelude.id String
vAlign v = fromPrim
             "HTMLTableRowElement.getvAlign"
             prim__vAlign
             prim__setVAlign
             v


export
deleteCell : (obj : HTMLTableRowElement) -> (index : Int32) -> JSIO ()
deleteCell a b = primJS $ HTMLTableRowElement.prim__deleteCell a b


export
insertCell' :
     (obj : HTMLTableRowElement)
  -> (index : Optional Int32)
  -> JSIO HTMLTableCellElement
insertCell' a b = primJS $ HTMLTableRowElement.prim__insertCell a (toFFI b)

export
insertCell : (obj : HTMLTableRowElement) -> JSIO HTMLTableCellElement
insertCell a = primJS $ HTMLTableRowElement.prim__insertCell a undef

