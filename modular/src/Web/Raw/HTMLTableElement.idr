module Web.Raw.HTMLTableElement

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
import Web.Types.HTMLTableCaptionElement
import Web.Types.HTMLTableElement
import Web.Types.HTMLTableRowElement
import Web.Types.HTMLTableSectionElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLTableElement()"
prim__new : PrimIO HTMLTableElement


export
%foreign "browser:lambda:x=>x.align"
prim__align : HTMLTableElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.align = v}"
prim__setAlign : HTMLTableElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.bgColor"
prim__bgColor : HTMLTableElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.bgColor = v}"
prim__setBgColor : HTMLTableElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.border"
prim__border : HTMLTableElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.border = v}"
prim__setBorder : HTMLTableElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.caption"
prim__caption : HTMLTableElement -> PrimIO (Nullable HTMLTableCaptionElement)



export
%foreign "browser:lambda:(x,v)=>{x.caption = v}"
prim__setCaption :
     HTMLTableElement
  -> Nullable HTMLTableCaptionElement
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.cellPadding"
prim__cellPadding : HTMLTableElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.cellPadding = v}"
prim__setCellPadding : HTMLTableElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.cellSpacing"
prim__cellSpacing : HTMLTableElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.cellSpacing = v}"
prim__setCellSpacing : HTMLTableElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.frame"
prim__frame : HTMLTableElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.frame = v}"
prim__setFrame : HTMLTableElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.rows"
prim__rows : HTMLTableElement -> PrimIO HTMLCollection


export
%foreign "browser:lambda:x=>x.rules"
prim__rules : HTMLTableElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.rules = v}"
prim__setRules : HTMLTableElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.summary"
prim__summary : HTMLTableElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.summary = v}"
prim__setSummary : HTMLTableElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.tBodies"
prim__tBodies : HTMLTableElement -> PrimIO HTMLCollection


export
%foreign "browser:lambda:x=>x.tFoot"
prim__tFoot : HTMLTableElement -> PrimIO (Nullable HTMLTableSectionElement)



export
%foreign "browser:lambda:(x,v)=>{x.tFoot = v}"
prim__setTFoot :
     HTMLTableElement
  -> Nullable HTMLTableSectionElement
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.tHead"
prim__tHead : HTMLTableElement -> PrimIO (Nullable HTMLTableSectionElement)



export
%foreign "browser:lambda:(x,v)=>{x.tHead = v}"
prim__setTHead :
     HTMLTableElement
  -> Nullable HTMLTableSectionElement
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.width"
prim__width : HTMLTableElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.width = v}"
prim__setWidth : HTMLTableElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.createCaption()"
prim__createCaption : HTMLTableElement -> PrimIO HTMLTableCaptionElement


export
%foreign "browser:lambda:x=>x.createTBody()"
prim__createTBody : HTMLTableElement -> PrimIO HTMLTableSectionElement


export
%foreign "browser:lambda:x=>x.createTFoot()"
prim__createTFoot : HTMLTableElement -> PrimIO HTMLTableSectionElement


export
%foreign "browser:lambda:x=>x.createTHead()"
prim__createTHead : HTMLTableElement -> PrimIO HTMLTableSectionElement


export
%foreign "browser:lambda:x=>x.deleteCaption()"
prim__deleteCaption : HTMLTableElement -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.deleteRow(a)"
prim__deleteRow : HTMLTableElement -> Int32 -> PrimIO ()


export
%foreign "browser:lambda:x=>x.deleteTFoot()"
prim__deleteTFoot : HTMLTableElement -> PrimIO ()


export
%foreign "browser:lambda:x=>x.deleteTHead()"
prim__deleteTHead : HTMLTableElement -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.insertRow(a)"
prim__insertRow :
     HTMLTableElement
  -> UndefOr Int32
  -> PrimIO HTMLTableRowElement


export
new : JSIO HTMLTableElement
new = primJS $ HTMLTableElement.prim__new


export
align : HTMLTableElement -> Attribute True Prelude.id String
align v = fromPrim "HTMLTableElement.getalign" prim__align prim__setAlign v


export
bgColor : HTMLTableElement -> Attribute True Prelude.id String
bgColor v = fromPrim
              "HTMLTableElement.getbgColor"
              prim__bgColor
              prim__setBgColor
              v


export
border : HTMLTableElement -> Attribute True Prelude.id String
border v = fromPrim "HTMLTableElement.getborder" prim__border prim__setBorder v


export
caption : HTMLTableElement -> Attribute False Maybe HTMLTableCaptionElement
caption v = fromNullablePrim
              "HTMLTableElement.getcaption"
              prim__caption
              prim__setCaption
              v


export
cellPadding : HTMLTableElement -> Attribute True Prelude.id String
cellPadding v = fromPrim
                  "HTMLTableElement.getcellPadding"
                  prim__cellPadding
                  prim__setCellPadding
                  v


export
cellSpacing : HTMLTableElement -> Attribute True Prelude.id String
cellSpacing v = fromPrim
                  "HTMLTableElement.getcellSpacing"
                  prim__cellSpacing
                  prim__setCellSpacing
                  v


export
frame : HTMLTableElement -> Attribute True Prelude.id String
frame v = fromPrim "HTMLTableElement.getframe" prim__frame prim__setFrame v


export
rows : (obj : HTMLTableElement) -> JSIO HTMLCollection
rows a = primJS $ HTMLTableElement.prim__rows a


export
rules : HTMLTableElement -> Attribute True Prelude.id String
rules v = fromPrim "HTMLTableElement.getrules" prim__rules prim__setRules v


export
summary : HTMLTableElement -> Attribute True Prelude.id String
summary v = fromPrim
              "HTMLTableElement.getsummary"
              prim__summary
              prim__setSummary
              v


export
tBodies : (obj : HTMLTableElement) -> JSIO HTMLCollection
tBodies a = primJS $ HTMLTableElement.prim__tBodies a


export
tFoot : HTMLTableElement -> Attribute False Maybe HTMLTableSectionElement
tFoot v = fromNullablePrim
            "HTMLTableElement.gettFoot"
            prim__tFoot
            prim__setTFoot
            v


export
tHead : HTMLTableElement -> Attribute False Maybe HTMLTableSectionElement
tHead v = fromNullablePrim
            "HTMLTableElement.gettHead"
            prim__tHead
            prim__setTHead
            v


export
width : HTMLTableElement -> Attribute True Prelude.id String
width v = fromPrim "HTMLTableElement.getwidth" prim__width prim__setWidth v


export
createCaption : (obj : HTMLTableElement) -> JSIO HTMLTableCaptionElement
createCaption a = primJS $ HTMLTableElement.prim__createCaption a


export
createTBody : (obj : HTMLTableElement) -> JSIO HTMLTableSectionElement
createTBody a = primJS $ HTMLTableElement.prim__createTBody a


export
createTFoot : (obj : HTMLTableElement) -> JSIO HTMLTableSectionElement
createTFoot a = primJS $ HTMLTableElement.prim__createTFoot a


export
createTHead : (obj : HTMLTableElement) -> JSIO HTMLTableSectionElement
createTHead a = primJS $ HTMLTableElement.prim__createTHead a


export
deleteCaption : (obj : HTMLTableElement) -> JSIO ()
deleteCaption a = primJS $ HTMLTableElement.prim__deleteCaption a


export
deleteRow : (obj : HTMLTableElement) -> (index : Int32) -> JSIO ()
deleteRow a b = primJS $ HTMLTableElement.prim__deleteRow a b


export
deleteTFoot : (obj : HTMLTableElement) -> JSIO ()
deleteTFoot a = primJS $ HTMLTableElement.prim__deleteTFoot a


export
deleteTHead : (obj : HTMLTableElement) -> JSIO ()
deleteTHead a = primJS $ HTMLTableElement.prim__deleteTHead a


export
insertRow' :
     (obj : HTMLTableElement)
  -> (index : Optional Int32)
  -> JSIO HTMLTableRowElement
insertRow' a b = primJS $ HTMLTableElement.prim__insertRow a (toFFI b)

export
insertRow : (obj : HTMLTableElement) -> JSIO HTMLTableRowElement
insertRow a = primJS $ HTMLTableElement.prim__insertRow a undef

