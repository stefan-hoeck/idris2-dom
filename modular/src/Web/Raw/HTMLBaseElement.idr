module Web.Raw.HTMLBaseElement

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
import Web.Types.HTMLBaseElement
import Web.Types.HTMLElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLBaseElement()"
prim__new : PrimIO HTMLBaseElement


export
%foreign "browser:lambda:x=>x.href"
prim__href : HTMLBaseElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.href = v}"
prim__setHref : HTMLBaseElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.target"
prim__target : HTMLBaseElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.target = v}"
prim__setTarget : HTMLBaseElement -> String -> PrimIO ()



export
new : JSIO HTMLBaseElement
new = primJS $ HTMLBaseElement.prim__new


export
href : HTMLBaseElement -> Attribute True Prelude.id String
href v = fromPrim "HTMLBaseElement.gethref" prim__href prim__setHref v


export
target : HTMLBaseElement -> Attribute True Prelude.id String
target v = fromPrim "HTMLBaseElement.gettarget" prim__target prim__setTarget v

