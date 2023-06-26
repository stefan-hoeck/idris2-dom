module Web.Raw.HTMLTableCaptionElement

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
import Web.Types.HTMLTableCaptionElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLTableCaptionElement()"
prim__new : PrimIO HTMLTableCaptionElement


export
%foreign "browser:lambda:x=>x.align"
prim__align : HTMLTableCaptionElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.align = v}"
prim__setAlign : HTMLTableCaptionElement -> String -> PrimIO ()



export
new : JSIO HTMLTableCaptionElement
new = primJS $ HTMLTableCaptionElement.prim__new


export
align : HTMLTableCaptionElement -> Attribute True Prelude.id String
align v = fromPrim
            "HTMLTableCaptionElement.getalign"
            prim__align
            prim__setAlign
            v
