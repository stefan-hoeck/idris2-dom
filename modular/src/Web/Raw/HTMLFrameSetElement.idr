module Web.Raw.HTMLFrameSetElement

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
import Web.Types.HTMLFrameSetElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable
import Web.Types.WindowEventHandlers


%default total


export
%foreign "browser:lambda:()=> new HTMLFrameSetElement()"
prim__new : PrimIO HTMLFrameSetElement


export
%foreign "browser:lambda:x=>x.cols"
prim__cols : HTMLFrameSetElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.cols = v}"
prim__setCols : HTMLFrameSetElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.rows"
prim__rows : HTMLFrameSetElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.rows = v}"
prim__setRows : HTMLFrameSetElement -> String -> PrimIO ()



export
new : JSIO HTMLFrameSetElement
new = primJS $ HTMLFrameSetElement.prim__new


export
cols : HTMLFrameSetElement -> Attribute True Prelude.id String
cols v = fromPrim "HTMLFrameSetElement.getcols" prim__cols prim__setCols v


export
rows : HTMLFrameSetElement -> Attribute True Prelude.id String
rows v = fromPrim "HTMLFrameSetElement.getrows" prim__rows prim__setRows v

