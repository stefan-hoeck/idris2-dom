module Web.Raw.HTMLTableSectionElement

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
import Web.Types.HTMLTableRowElement
import Web.Types.HTMLTableSectionElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLTableSectionElement()"
prim__new : PrimIO HTMLTableSectionElement


export
%foreign "browser:lambda:x=>x.align"
prim__align : HTMLTableSectionElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.align = v}"
prim__setAlign : HTMLTableSectionElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ch"
prim__ch : HTMLTableSectionElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ch = v}"
prim__setCh : HTMLTableSectionElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.chOff"
prim__chOff : HTMLTableSectionElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.chOff = v}"
prim__setChOff : HTMLTableSectionElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.rows"
prim__rows : HTMLTableSectionElement -> PrimIO HTMLCollection


export
%foreign "browser:lambda:x=>x.vAlign"
prim__vAlign : HTMLTableSectionElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.vAlign = v}"
prim__setVAlign : HTMLTableSectionElement -> String -> PrimIO ()



export
%foreign "browser:lambda:(x,a)=>x.deleteRow(a)"
prim__deleteRow : HTMLTableSectionElement -> Int32 -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.insertRow(a)"
prim__insertRow :
     HTMLTableSectionElement
  -> UndefOr Int32
  -> PrimIO HTMLTableRowElement


export
new : JSIO HTMLTableSectionElement
new = primJS $ HTMLTableSectionElement.prim__new


export
align : HTMLTableSectionElement -> Attribute True Prelude.id String
align v = fromPrim
            "HTMLTableSectionElement.getalign"
            prim__align
            prim__setAlign
            v


export
ch : HTMLTableSectionElement -> Attribute True Prelude.id String
ch v = fromPrim "HTMLTableSectionElement.getch" prim__ch prim__setCh v


export
chOff : HTMLTableSectionElement -> Attribute True Prelude.id String
chOff v = fromPrim
            "HTMLTableSectionElement.getchOff"
            prim__chOff
            prim__setChOff
            v


export
rows : (obj : HTMLTableSectionElement) -> JSIO HTMLCollection
rows a = primJS $ HTMLTableSectionElement.prim__rows a


export
vAlign : HTMLTableSectionElement -> Attribute True Prelude.id String
vAlign v = fromPrim
             "HTMLTableSectionElement.getvAlign"
             prim__vAlign
             prim__setVAlign
             v


export
deleteRow : (obj : HTMLTableSectionElement) -> (index : Int32) -> JSIO ()
deleteRow a b = primJS $ HTMLTableSectionElement.prim__deleteRow a b


export
insertRow' :
     (obj : HTMLTableSectionElement)
  -> (index : Optional Int32)
  -> JSIO HTMLTableRowElement
insertRow' a b = primJS $ HTMLTableSectionElement.prim__insertRow a (toFFI b)

export
insertRow : (obj : HTMLTableSectionElement) -> JSIO HTMLTableRowElement
insertRow a = primJS $ HTMLTableSectionElement.prim__insertRow a undef

