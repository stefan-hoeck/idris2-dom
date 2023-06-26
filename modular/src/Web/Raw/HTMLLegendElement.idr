module Web.Raw.HTMLLegendElement

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
import Web.Types.HTMLFormElement
import Web.Types.HTMLLegendElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLLegendElement()"
prim__new : PrimIO HTMLLegendElement


export
%foreign "browser:lambda:x=>x.align"
prim__align : HTMLLegendElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.align = v}"
prim__setAlign : HTMLLegendElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.form"
prim__form : HTMLLegendElement -> PrimIO (Nullable HTMLFormElement)


export
new : JSIO HTMLLegendElement
new = primJS $ HTMLLegendElement.prim__new


export
align : HTMLLegendElement -> Attribute True Prelude.id String
align v = fromPrim "HTMLLegendElement.getalign" prim__align prim__setAlign v


export
form : (obj : HTMLLegendElement) -> JSIO (Maybe HTMLFormElement)
form a = tryJS "HTMLLegendElement.form" $ HTMLLegendElement.prim__form a
