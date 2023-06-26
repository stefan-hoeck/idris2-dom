module Web.Raw.HTMLScriptElement

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
import Web.Types.HTMLScriptElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLScriptElement()"
prim__new : PrimIO HTMLScriptElement


export
%foreign "browser:lambda:x=>x.async"
prim__async : HTMLScriptElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.async = v}"
prim__setAsync : HTMLScriptElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.charset"
prim__charset : HTMLScriptElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.charset = v}"
prim__setCharset : HTMLScriptElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.crossOrigin"
prim__crossOrigin : HTMLScriptElement -> PrimIO (Nullable String)



export
%foreign "browser:lambda:(x,v)=>{x.crossOrigin = v}"
prim__setCrossOrigin : HTMLScriptElement -> Nullable String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.defer"
prim__defer : HTMLScriptElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.defer = v}"
prim__setDefer : HTMLScriptElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.event"
prim__event : HTMLScriptElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.event = v}"
prim__setEvent : HTMLScriptElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.htmlFor"
prim__htmlFor : HTMLScriptElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.htmlFor = v}"
prim__setHtmlFor : HTMLScriptElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.integrity"
prim__integrity : HTMLScriptElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.integrity = v}"
prim__setIntegrity : HTMLScriptElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.noModule"
prim__noModule : HTMLScriptElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.noModule = v}"
prim__setNoModule : HTMLScriptElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.referrerPolicy"
prim__referrerPolicy : HTMLScriptElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.referrerPolicy = v}"
prim__setReferrerPolicy : HTMLScriptElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.src"
prim__src : HTMLScriptElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.src = v}"
prim__setSrc : HTMLScriptElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.text"
prim__text : HTMLScriptElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.text = v}"
prim__setText : HTMLScriptElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.type"
prim__type : HTMLScriptElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.type = v}"
prim__setType : HTMLScriptElement -> String -> PrimIO ()



export
new : JSIO HTMLScriptElement
new = primJS $ HTMLScriptElement.prim__new


export
async : HTMLScriptElement -> Attribute True Prelude.id Bool
async v = fromPrim "HTMLScriptElement.getasync" prim__async prim__setAsync v


export
charset : HTMLScriptElement -> Attribute True Prelude.id String
charset v = fromPrim
              "HTMLScriptElement.getcharset"
              prim__charset
              prim__setCharset
              v


export
crossOrigin : HTMLScriptElement -> Attribute False Maybe String
crossOrigin v = fromNullablePrim
                  "HTMLScriptElement.getcrossOrigin"
                  prim__crossOrigin
                  prim__setCrossOrigin
                  v


export
defer : HTMLScriptElement -> Attribute True Prelude.id Bool
defer v = fromPrim "HTMLScriptElement.getdefer" prim__defer prim__setDefer v


export
event : HTMLScriptElement -> Attribute True Prelude.id String
event v = fromPrim "HTMLScriptElement.getevent" prim__event prim__setEvent v


export
htmlFor : HTMLScriptElement -> Attribute True Prelude.id String
htmlFor v = fromPrim
              "HTMLScriptElement.gethtmlFor"
              prim__htmlFor
              prim__setHtmlFor
              v


export
integrity : HTMLScriptElement -> Attribute True Prelude.id String
integrity v = fromPrim
                "HTMLScriptElement.getintegrity"
                prim__integrity
                prim__setIntegrity
                v


export
noModule : HTMLScriptElement -> Attribute True Prelude.id Bool
noModule v = fromPrim
               "HTMLScriptElement.getnoModule"
               prim__noModule
               prim__setNoModule
               v


export
referrerPolicy : HTMLScriptElement -> Attribute True Prelude.id String
referrerPolicy v = fromPrim
                     "HTMLScriptElement.getreferrerPolicy"
                     prim__referrerPolicy
                     prim__setReferrerPolicy
                     v


export
src : HTMLScriptElement -> Attribute True Prelude.id String
src v = fromPrim "HTMLScriptElement.getsrc" prim__src prim__setSrc v


export
text : HTMLScriptElement -> Attribute True Prelude.id String
text v = fromPrim "HTMLScriptElement.gettext" prim__text prim__setText v


export
type : HTMLScriptElement -> Attribute True Prelude.id String
type v = fromPrim "HTMLScriptElement.gettype" prim__type prim__setType v
