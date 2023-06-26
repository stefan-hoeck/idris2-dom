module Web.Raw.HTMLBodyElement

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
import Web.Types.HTMLBodyElement
import Web.Types.HTMLElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable
import Web.Types.WindowEventHandlers


%default total


export
%foreign "browser:lambda:()=> new HTMLBodyElement()"
prim__new : PrimIO HTMLBodyElement


export
%foreign "browser:lambda:x=>x.aLink"
prim__aLink : HTMLBodyElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.aLink = v}"
prim__setALink : HTMLBodyElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.background"
prim__background : HTMLBodyElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.background = v}"
prim__setBackground : HTMLBodyElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.bgColor"
prim__bgColor : HTMLBodyElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.bgColor = v}"
prim__setBgColor : HTMLBodyElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.link"
prim__link : HTMLBodyElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.link = v}"
prim__setLink : HTMLBodyElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.text"
prim__text : HTMLBodyElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.text = v}"
prim__setText : HTMLBodyElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.vLink"
prim__vLink : HTMLBodyElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.vLink = v}"
prim__setVLink : HTMLBodyElement -> String -> PrimIO ()



export
new : JSIO HTMLBodyElement
new = primJS $ HTMLBodyElement.prim__new


export
aLink : HTMLBodyElement -> Attribute True Prelude.id String
aLink v = fromPrim "HTMLBodyElement.getaLink" prim__aLink prim__setALink v


export
background : HTMLBodyElement -> Attribute True Prelude.id String
background v = fromPrim
                 "HTMLBodyElement.getbackground"
                 prim__background
                 prim__setBackground
                 v


export
bgColor : HTMLBodyElement -> Attribute True Prelude.id String
bgColor v = fromPrim
              "HTMLBodyElement.getbgColor"
              prim__bgColor
              prim__setBgColor
              v


export
link : HTMLBodyElement -> Attribute True Prelude.id String
link v = fromPrim "HTMLBodyElement.getlink" prim__link prim__setLink v


export
text : HTMLBodyElement -> Attribute True Prelude.id String
text v = fromPrim "HTMLBodyElement.gettext" prim__text prim__setText v


export
vLink : HTMLBodyElement -> Attribute True Prelude.id String
vLink v = fromPrim "HTMLBodyElement.getvLink" prim__vLink prim__setVLink v
