module Web.Raw.HTMLDirectoryElement

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
import Web.Types.HTMLDirectoryElement
import Web.Types.HTMLElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLDirectoryElement()"
prim__new : PrimIO HTMLDirectoryElement


export
%foreign "browser:lambda:x=>x.compact"
prim__compact : HTMLDirectoryElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.compact = v}"
prim__setCompact : HTMLDirectoryElement -> Boolean -> PrimIO ()



export
new : JSIO HTMLDirectoryElement
new = primJS $ HTMLDirectoryElement.prim__new


export
compact : HTMLDirectoryElement -> Attribute True Prelude.id Bool
compact v = fromPrim
              "HTMLDirectoryElement.getcompact"
              prim__compact
              prim__setCompact
              v
