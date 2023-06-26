module Web.Raw.HTMLFrameElement

import JS
import Web.Types.Animatable
import Web.Types.ChildNode
import Web.Types.Document
import Web.Types.DocumentAndElementEventHandlers
import Web.Types.Element
import Web.Types.ElementCSSInlineStyle
import Web.Types.ElementContentEditable
import Web.Types.EventTarget
import Web.Types.GeometryUtils
import Web.Types.GlobalEventHandlers
import Web.Types.HTMLElement
import Web.Types.HTMLFrameElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLFrameElement()"
prim__new : PrimIO HTMLFrameElement


export
%foreign "browser:lambda:x=>x.contentDocument"
prim__contentDocument : HTMLFrameElement -> PrimIO (Nullable Document)


export
%foreign "browser:lambda:x=>x.contentWindow"
prim__contentWindow : HTMLFrameElement -> PrimIO (Nullable WindowProxy)


export
%foreign "browser:lambda:x=>x.frameBorder"
prim__frameBorder : HTMLFrameElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.frameBorder = v}"
prim__setFrameBorder : HTMLFrameElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.longDesc"
prim__longDesc : HTMLFrameElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.longDesc = v}"
prim__setLongDesc : HTMLFrameElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.marginHeight"
prim__marginHeight : HTMLFrameElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.marginHeight = v}"
prim__setMarginHeight : HTMLFrameElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.marginWidth"
prim__marginWidth : HTMLFrameElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.marginWidth = v}"
prim__setMarginWidth : HTMLFrameElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.name"
prim__name : HTMLFrameElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.name = v}"
prim__setName : HTMLFrameElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.noResize"
prim__noResize : HTMLFrameElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.noResize = v}"
prim__setNoResize : HTMLFrameElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.scrolling"
prim__scrolling : HTMLFrameElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.scrolling = v}"
prim__setScrolling : HTMLFrameElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.src"
prim__src : HTMLFrameElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.src = v}"
prim__setSrc : HTMLFrameElement -> String -> PrimIO ()



export
new : JSIO HTMLFrameElement
new = primJS $ HTMLFrameElement.prim__new


export
contentDocument : (obj : HTMLFrameElement) -> JSIO (Maybe Document)
contentDocument a = tryJS "HTMLFrameElement.contentDocument" $
  HTMLFrameElement.prim__contentDocument a


export
contentWindow : (obj : HTMLFrameElement) -> JSIO (Maybe WindowProxy)
contentWindow a = tryJS "HTMLFrameElement.contentWindow" $
  HTMLFrameElement.prim__contentWindow a


export
frameBorder : HTMLFrameElement -> Attribute True Prelude.id String
frameBorder v = fromPrim
                  "HTMLFrameElement.getframeBorder"
                  prim__frameBorder
                  prim__setFrameBorder
                  v


export
longDesc : HTMLFrameElement -> Attribute True Prelude.id String
longDesc v = fromPrim
               "HTMLFrameElement.getlongDesc"
               prim__longDesc
               prim__setLongDesc
               v


export
marginHeight : HTMLFrameElement -> Attribute True Prelude.id String
marginHeight v = fromPrim
                   "HTMLFrameElement.getmarginHeight"
                   prim__marginHeight
                   prim__setMarginHeight
                   v


export
marginWidth : HTMLFrameElement -> Attribute True Prelude.id String
marginWidth v = fromPrim
                  "HTMLFrameElement.getmarginWidth"
                  prim__marginWidth
                  prim__setMarginWidth
                  v


export
name : HTMLFrameElement -> Attribute True Prelude.id String
name v = fromPrim "HTMLFrameElement.getname" prim__name prim__setName v


export
noResize : HTMLFrameElement -> Attribute True Prelude.id Bool
noResize v = fromPrim
               "HTMLFrameElement.getnoResize"
               prim__noResize
               prim__setNoResize
               v


export
scrolling : HTMLFrameElement -> Attribute True Prelude.id String
scrolling v = fromPrim
                "HTMLFrameElement.getscrolling"
                prim__scrolling
                prim__setScrolling
                v


export
src : HTMLFrameElement -> Attribute True Prelude.id String
src v = fromPrim "HTMLFrameElement.getsrc" prim__src prim__setSrc v
