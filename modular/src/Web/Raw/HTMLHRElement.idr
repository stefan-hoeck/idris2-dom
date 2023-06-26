module Web.Raw.HTMLHRElement

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
import Web.Types.HTMLHRElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLHRElement()"
prim__new : PrimIO HTMLHRElement


export
%foreign "browser:lambda:x=>x.align"
prim__align : HTMLHRElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.align = v}"
prim__setAlign : HTMLHRElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.color"
prim__color : HTMLHRElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.color = v}"
prim__setColor : HTMLHRElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.noShade"
prim__noShade : HTMLHRElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.noShade = v}"
prim__setNoShade : HTMLHRElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.size"
prim__size : HTMLHRElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.size = v}"
prim__setSize : HTMLHRElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.width"
prim__width : HTMLHRElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.width = v}"
prim__setWidth : HTMLHRElement -> String -> PrimIO ()



export
new : JSIO HTMLHRElement
new = primJS $ HTMLHRElement.prim__new


export
align : HTMLHRElement -> Attribute True Prelude.id String
align v = fromPrim "HTMLHRElement.getalign" prim__align prim__setAlign v


export
color : HTMLHRElement -> Attribute True Prelude.id String
color v = fromPrim "HTMLHRElement.getcolor" prim__color prim__setColor v


export
noShade : HTMLHRElement -> Attribute True Prelude.id Bool
noShade v = fromPrim "HTMLHRElement.getnoShade" prim__noShade prim__setNoShade v


export
size : HTMLHRElement -> Attribute True Prelude.id String
size v = fromPrim "HTMLHRElement.getsize" prim__size prim__setSize v


export
width : HTMLHRElement -> Attribute True Prelude.id String
width v = fromPrim "HTMLHRElement.getwidth" prim__width prim__setWidth v

