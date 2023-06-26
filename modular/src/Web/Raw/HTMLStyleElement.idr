module Web.Raw.HTMLStyleElement

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
import Web.Types.HTMLStyleElement
import Web.Types.InnerHTML
import Web.Types.LinkStyle
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLStyleElement()"
prim__new : PrimIO HTMLStyleElement


export
%foreign "browser:lambda:x=>x.media"
prim__media : HTMLStyleElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.media = v}"
prim__setMedia : HTMLStyleElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.type"
prim__type : HTMLStyleElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.type = v}"
prim__setType : HTMLStyleElement -> String -> PrimIO ()



export
new : JSIO HTMLStyleElement
new = primJS $ HTMLStyleElement.prim__new


export
media : HTMLStyleElement -> Attribute True Prelude.id String
media v = fromPrim "HTMLStyleElement.getmedia" prim__media prim__setMedia v


export
type : HTMLStyleElement -> Attribute True Prelude.id String
type v = fromPrim "HTMLStyleElement.gettype" prim__type prim__setType v

