module Web.Raw.HTMLDialogElement

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
import Web.Types.HTMLDialogElement
import Web.Types.HTMLElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLDialogElement()"
prim__new : PrimIO HTMLDialogElement


export
%foreign "browser:lambda:x=>x.open"
prim__open : HTMLDialogElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.open = v}"
prim__setOpen : HTMLDialogElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.returnValue"
prim__returnValue : HTMLDialogElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.returnValue = v}"
prim__setReturnValue : HTMLDialogElement -> String -> PrimIO ()



export
%foreign "browser:lambda:(x,a)=>x.close(a)"
prim__close : HTMLDialogElement -> UndefOr String -> PrimIO ()


export
%foreign "browser:lambda:x=>x.show()"
prim__show : HTMLDialogElement -> PrimIO ()


export
%foreign "browser:lambda:x=>x.showModal()"
prim__showModal : HTMLDialogElement -> PrimIO ()


export
new : JSIO HTMLDialogElement
new = primJS $ HTMLDialogElement.prim__new


export
open_ : HTMLDialogElement -> Attribute True Prelude.id Bool
open_ v = fromPrim "HTMLDialogElement.getopen" prim__open prim__setOpen v


export
returnValue : HTMLDialogElement -> Attribute True Prelude.id String
returnValue v = fromPrim
                  "HTMLDialogElement.getreturnValue"
                  prim__returnValue
                  prim__setReturnValue
                  v


export
close' : (obj : HTMLDialogElement) -> (returnValue : Optional String) -> JSIO ()
close' a b = primJS $ HTMLDialogElement.prim__close a (toFFI b)

export
close : (obj : HTMLDialogElement) -> JSIO ()
close a = primJS $ HTMLDialogElement.prim__close a undef


export
show : (obj : HTMLDialogElement) -> JSIO ()
show a = primJS $ HTMLDialogElement.prim__show a


export
showModal : (obj : HTMLDialogElement) -> JSIO ()
showModal a = primJS $ HTMLDialogElement.prim__showModal a
