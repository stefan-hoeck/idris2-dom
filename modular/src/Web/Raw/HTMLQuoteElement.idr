module Web.Raw.HTMLQuoteElement

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
import Web.Types.HTMLQuoteElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLQuoteElement()"
prim__new : PrimIO HTMLQuoteElement


export
%foreign "browser:lambda:x=>x.cite"
prim__cite : HTMLQuoteElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.cite = v}"
prim__setCite : HTMLQuoteElement -> String -> PrimIO ()



export
new : JSIO HTMLQuoteElement
new = primJS $ HTMLQuoteElement.prim__new


export
cite : HTMLQuoteElement -> Attribute True Prelude.id String
cite v = fromPrim "HTMLQuoteElement.getcite" prim__cite prim__setCite v

