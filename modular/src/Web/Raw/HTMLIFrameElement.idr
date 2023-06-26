module Web.Raw.HTMLIFrameElement

import JS
import Web.Types.Animatable
import Web.Types.ChildNode
import Web.Types.DOMTokenList
import Web.Types.Document
import Web.Types.DocumentAndElementEventHandlers
import Web.Types.Element
import Web.Types.ElementCSSInlineStyle
import Web.Types.ElementContentEditable
import Web.Types.EventTarget
import Web.Types.GeometryUtils
import Web.Types.GlobalEventHandlers
import Web.Types.HTMLElement
import Web.Types.HTMLIFrameElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLIFrameElement()"
prim__new : PrimIO HTMLIFrameElement


export
%foreign "browser:lambda:x=>x.align"
prim__align : HTMLIFrameElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.align = v}"
prim__setAlign : HTMLIFrameElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.allow"
prim__allow : HTMLIFrameElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.allow = v}"
prim__setAllow : HTMLIFrameElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.allowFullscreen"
prim__allowFullscreen : HTMLIFrameElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.allowFullscreen = v}"
prim__setAllowFullscreen : HTMLIFrameElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.contentDocument"
prim__contentDocument : HTMLIFrameElement -> PrimIO (Nullable Document)


export
%foreign "browser:lambda:x=>x.contentWindow"
prim__contentWindow : HTMLIFrameElement -> PrimIO (Nullable WindowProxy)


export
%foreign "browser:lambda:x=>x.frameBorder"
prim__frameBorder : HTMLIFrameElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.frameBorder = v}"
prim__setFrameBorder : HTMLIFrameElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.height"
prim__height : HTMLIFrameElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.height = v}"
prim__setHeight : HTMLIFrameElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.loading"
prim__loading : HTMLIFrameElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.loading = v}"
prim__setLoading : HTMLIFrameElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.longDesc"
prim__longDesc : HTMLIFrameElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.longDesc = v}"
prim__setLongDesc : HTMLIFrameElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.marginHeight"
prim__marginHeight : HTMLIFrameElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.marginHeight = v}"
prim__setMarginHeight : HTMLIFrameElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.marginWidth"
prim__marginWidth : HTMLIFrameElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.marginWidth = v}"
prim__setMarginWidth : HTMLIFrameElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.name"
prim__name : HTMLIFrameElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.name = v}"
prim__setName : HTMLIFrameElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.referrerPolicy"
prim__referrerPolicy : HTMLIFrameElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.referrerPolicy = v}"
prim__setReferrerPolicy : HTMLIFrameElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.sandbox"
prim__sandbox : HTMLIFrameElement -> PrimIO DOMTokenList


export
%foreign "browser:lambda:x=>x.scrolling"
prim__scrolling : HTMLIFrameElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.scrolling = v}"
prim__setScrolling : HTMLIFrameElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.src"
prim__src : HTMLIFrameElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.src = v}"
prim__setSrc : HTMLIFrameElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.srcdoc"
prim__srcdoc : HTMLIFrameElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.srcdoc = v}"
prim__setSrcdoc : HTMLIFrameElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.width"
prim__width : HTMLIFrameElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.width = v}"
prim__setWidth : HTMLIFrameElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.getSVGDocument()"
prim__getSVGDocument : HTMLIFrameElement -> PrimIO (Nullable Document)


export
new : JSIO HTMLIFrameElement
new = primJS $ HTMLIFrameElement.prim__new


export
align : HTMLIFrameElement -> Attribute True Prelude.id String
align v = fromPrim "HTMLIFrameElement.getalign" prim__align prim__setAlign v


export
allow : HTMLIFrameElement -> Attribute True Prelude.id String
allow v = fromPrim "HTMLIFrameElement.getallow" prim__allow prim__setAllow v


export
allowFullscreen : HTMLIFrameElement -> Attribute True Prelude.id Bool
allowFullscreen v = fromPrim
                      "HTMLIFrameElement.getallowFullscreen"
                      prim__allowFullscreen
                      prim__setAllowFullscreen
                      v


export
contentDocument : (obj : HTMLIFrameElement) -> JSIO (Maybe Document)
contentDocument a = tryJS "HTMLIFrameElement.contentDocument" $
  HTMLIFrameElement.prim__contentDocument a


export
contentWindow : (obj : HTMLIFrameElement) -> JSIO (Maybe WindowProxy)
contentWindow a = tryJS "HTMLIFrameElement.contentWindow" $
  HTMLIFrameElement.prim__contentWindow a


export
frameBorder : HTMLIFrameElement -> Attribute True Prelude.id String
frameBorder v = fromPrim
                  "HTMLIFrameElement.getframeBorder"
                  prim__frameBorder
                  prim__setFrameBorder
                  v


export
height : HTMLIFrameElement -> Attribute True Prelude.id String
height v = fromPrim "HTMLIFrameElement.getheight" prim__height prim__setHeight v


export
loading : HTMLIFrameElement -> Attribute True Prelude.id String
loading v = fromPrim
              "HTMLIFrameElement.getloading"
              prim__loading
              prim__setLoading
              v


export
longDesc : HTMLIFrameElement -> Attribute True Prelude.id String
longDesc v = fromPrim
               "HTMLIFrameElement.getlongDesc"
               prim__longDesc
               prim__setLongDesc
               v


export
marginHeight : HTMLIFrameElement -> Attribute True Prelude.id String
marginHeight v = fromPrim
                   "HTMLIFrameElement.getmarginHeight"
                   prim__marginHeight
                   prim__setMarginHeight
                   v


export
marginWidth : HTMLIFrameElement -> Attribute True Prelude.id String
marginWidth v = fromPrim
                  "HTMLIFrameElement.getmarginWidth"
                  prim__marginWidth
                  prim__setMarginWidth
                  v


export
name : HTMLIFrameElement -> Attribute True Prelude.id String
name v = fromPrim "HTMLIFrameElement.getname" prim__name prim__setName v


export
referrerPolicy : HTMLIFrameElement -> Attribute True Prelude.id String
referrerPolicy v = fromPrim
                     "HTMLIFrameElement.getreferrerPolicy"
                     prim__referrerPolicy
                     prim__setReferrerPolicy
                     v


export
sandbox : (obj : HTMLIFrameElement) -> JSIO DOMTokenList
sandbox a = primJS $ HTMLIFrameElement.prim__sandbox a


export
scrolling : HTMLIFrameElement -> Attribute True Prelude.id String
scrolling v = fromPrim
                "HTMLIFrameElement.getscrolling"
                prim__scrolling
                prim__setScrolling
                v


export
src : HTMLIFrameElement -> Attribute True Prelude.id String
src v = fromPrim "HTMLIFrameElement.getsrc" prim__src prim__setSrc v


export
srcdoc : HTMLIFrameElement -> Attribute True Prelude.id String
srcdoc v = fromPrim "HTMLIFrameElement.getsrcdoc" prim__srcdoc prim__setSrcdoc v


export
width : HTMLIFrameElement -> Attribute True Prelude.id String
width v = fromPrim "HTMLIFrameElement.getwidth" prim__width prim__setWidth v


export
getSVGDocument : (obj : HTMLIFrameElement) -> JSIO (Maybe Document)
getSVGDocument a = tryJS "HTMLIFrameElement.getSVGDocument" $
  HTMLIFrameElement.prim__getSVGDocument a
