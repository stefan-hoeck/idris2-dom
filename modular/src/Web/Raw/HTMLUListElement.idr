module Web.Raw.HTMLUListElement

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
import Web.Types.HTMLUListElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLUListElement()"
prim__new : PrimIO HTMLUListElement


export
%foreign "browser:lambda:x=>x.compact"
prim__compact : HTMLUListElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.compact = v}"
prim__setCompact : HTMLUListElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.type"
prim__type : HTMLUListElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.type = v}"
prim__setType : HTMLUListElement -> String -> PrimIO ()



export
new : JSIO HTMLUListElement
new = primJS $ HTMLUListElement.prim__new


export
compact : HTMLUListElement -> Attribute True Prelude.id Bool
compact v = fromPrim
              "HTMLUListElement.getcompact"
              prim__compact
              prim__setCompact
              v


export
type : HTMLUListElement -> Attribute True Prelude.id String
type v = fromPrim "HTMLUListElement.gettype" prim__type prim__setType v
