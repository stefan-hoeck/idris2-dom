module Web.Raw.HTMLTrackElement

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
import Web.Types.HTMLTrackElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable
import Web.Types.TextTrack


%default total


export
ERROR : Bits16
ERROR = 3


export
LOADED : Bits16
LOADED = 2


export
LOADING : Bits16
LOADING = 1


export
NONE : Bits16
NONE = 0


export
%foreign "browser:lambda:()=> new HTMLTrackElement()"
prim__new : PrimIO HTMLTrackElement


export
%foreign "browser:lambda:x=>x.default"
prim__default : HTMLTrackElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.default = v}"
prim__setDefault : HTMLTrackElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.kind"
prim__kind : HTMLTrackElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.kind = v}"
prim__setKind : HTMLTrackElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.label"
prim__label : HTMLTrackElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.label = v}"
prim__setLabel : HTMLTrackElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.readyState"
prim__readyState : HTMLTrackElement -> PrimIO Bits16


export
%foreign "browser:lambda:x=>x.src"
prim__src : HTMLTrackElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.src = v}"
prim__setSrc : HTMLTrackElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.srclang"
prim__srclang : HTMLTrackElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.srclang = v}"
prim__setSrclang : HTMLTrackElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.track"
prim__track : HTMLTrackElement -> PrimIO TextTrack


export
new : JSIO HTMLTrackElement
new = primJS $ HTMLTrackElement.prim__new


export
default_ : HTMLTrackElement -> Attribute True Prelude.id Bool
default_ v = fromPrim
               "HTMLTrackElement.getdefault"
               prim__default
               prim__setDefault
               v


export
kind : HTMLTrackElement -> Attribute True Prelude.id String
kind v = fromPrim "HTMLTrackElement.getkind" prim__kind prim__setKind v


export
label : HTMLTrackElement -> Attribute True Prelude.id String
label v = fromPrim "HTMLTrackElement.getlabel" prim__label prim__setLabel v


export
readyState : (obj : HTMLTrackElement) -> JSIO Bits16
readyState a = primJS $ HTMLTrackElement.prim__readyState a


export
src : HTMLTrackElement -> Attribute True Prelude.id String
src v = fromPrim "HTMLTrackElement.getsrc" prim__src prim__setSrc v


export
srclang : HTMLTrackElement -> Attribute True Prelude.id String
srclang v = fromPrim
              "HTMLTrackElement.getsrclang"
              prim__srclang
              prim__setSrclang
              v


export
track : (obj : HTMLTrackElement) -> JSIO TextTrack
track a = primJS $ HTMLTrackElement.prim__track a

