module Web.Raw.HTMLOListElement

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
import Web.Types.HTMLOListElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLOListElement()"
prim__new : PrimIO HTMLOListElement


export
%foreign "browser:lambda:x=>x.compact"
prim__compact : HTMLOListElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.compact = v}"
prim__setCompact : HTMLOListElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.reversed"
prim__reversed : HTMLOListElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.reversed = v}"
prim__setReversed : HTMLOListElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.start"
prim__start : HTMLOListElement -> PrimIO Int32



export
%foreign "browser:lambda:(x,v)=>{x.start = v}"
prim__setStart : HTMLOListElement -> Int32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.type"
prim__type : HTMLOListElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.type = v}"
prim__setType : HTMLOListElement -> String -> PrimIO ()



export
new : JSIO HTMLOListElement
new = primJS $ HTMLOListElement.prim__new


export
compact : HTMLOListElement -> Attribute True Prelude.id Bool
compact v = fromPrim
              "HTMLOListElement.getcompact"
              prim__compact
              prim__setCompact
              v


export
reversed : HTMLOListElement -> Attribute True Prelude.id Bool
reversed v = fromPrim
               "HTMLOListElement.getreversed"
               prim__reversed
               prim__setReversed
               v


export
start : HTMLOListElement -> Attribute True Prelude.id Int32
start v = fromPrim "HTMLOListElement.getstart" prim__start prim__setStart v


export
type : HTMLOListElement -> Attribute True Prelude.id String
type v = fromPrim "HTMLOListElement.gettype" prim__type prim__setType v
