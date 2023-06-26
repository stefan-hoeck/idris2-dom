module Web.Raw.HTMLHtmlElement

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
import Web.Types.HTMLHtmlElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLHtmlElement()"
prim__new : PrimIO HTMLHtmlElement


export
%foreign "browser:lambda:x=>x.version"
prim__version : HTMLHtmlElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.version = v}"
prim__setVersion : HTMLHtmlElement -> String -> PrimIO ()



export
new : JSIO HTMLHtmlElement
new = primJS $ HTMLHtmlElement.prim__new


export
version : HTMLHtmlElement -> Attribute True Prelude.id String
version v = fromPrim
              "HTMLHtmlElement.getversion"
              prim__version
              prim__setVersion
              v
