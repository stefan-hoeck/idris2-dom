module Web.Raw.HTMLFontElement

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
import Web.Types.HTMLFontElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLFontElement()"
prim__new : PrimIO HTMLFontElement


export
%foreign "browser:lambda:x=>x.color"
prim__color : HTMLFontElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.color = v}"
prim__setColor : HTMLFontElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.face"
prim__face : HTMLFontElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.face = v}"
prim__setFace : HTMLFontElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.size"
prim__size : HTMLFontElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.size = v}"
prim__setSize : HTMLFontElement -> String -> PrimIO ()



export
new : JSIO HTMLFontElement
new = primJS $ HTMLFontElement.prim__new


export
color : HTMLFontElement -> Attribute True Prelude.id String
color v = fromPrim "HTMLFontElement.getcolor" prim__color prim__setColor v


export
face : HTMLFontElement -> Attribute True Prelude.id String
face v = fromPrim "HTMLFontElement.getface" prim__face prim__setFace v


export
size : HTMLFontElement -> Attribute True Prelude.id String
size v = fromPrim "HTMLFontElement.getsize" prim__size prim__setSize v
