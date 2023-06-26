module Web.Raw.HTMLMarqueeElement

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
import Web.Types.HTMLMarqueeElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLMarqueeElement()"
prim__new : PrimIO HTMLMarqueeElement


export
%foreign "browser:lambda:x=>x.behavior"
prim__behavior : HTMLMarqueeElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.behavior = v}"
prim__setBehavior : HTMLMarqueeElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.bgColor"
prim__bgColor : HTMLMarqueeElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.bgColor = v}"
prim__setBgColor : HTMLMarqueeElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.direction"
prim__direction : HTMLMarqueeElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.direction = v}"
prim__setDirection : HTMLMarqueeElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.height"
prim__height : HTMLMarqueeElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.height = v}"
prim__setHeight : HTMLMarqueeElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.hspace"
prim__hspace : HTMLMarqueeElement -> PrimIO Bits32



export
%foreign "browser:lambda:(x,v)=>{x.hspace = v}"
prim__setHspace : HTMLMarqueeElement -> Bits32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.loop"
prim__loop : HTMLMarqueeElement -> PrimIO Int32



export
%foreign "browser:lambda:(x,v)=>{x.loop = v}"
prim__setLoop : HTMLMarqueeElement -> Int32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.scrollAmount"
prim__scrollAmount : HTMLMarqueeElement -> PrimIO Bits32



export
%foreign "browser:lambda:(x,v)=>{x.scrollAmount = v}"
prim__setScrollAmount : HTMLMarqueeElement -> Bits32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.scrollDelay"
prim__scrollDelay : HTMLMarqueeElement -> PrimIO Bits32



export
%foreign "browser:lambda:(x,v)=>{x.scrollDelay = v}"
prim__setScrollDelay : HTMLMarqueeElement -> Bits32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.trueSpeed"
prim__trueSpeed : HTMLMarqueeElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.trueSpeed = v}"
prim__setTrueSpeed : HTMLMarqueeElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.vspace"
prim__vspace : HTMLMarqueeElement -> PrimIO Bits32



export
%foreign "browser:lambda:(x,v)=>{x.vspace = v}"
prim__setVspace : HTMLMarqueeElement -> Bits32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.width"
prim__width : HTMLMarqueeElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.width = v}"
prim__setWidth : HTMLMarqueeElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.start()"
prim__start : HTMLMarqueeElement -> PrimIO ()


export
%foreign "browser:lambda:x=>x.stop()"
prim__stop : HTMLMarqueeElement -> PrimIO ()


export
new : JSIO HTMLMarqueeElement
new = primJS $ HTMLMarqueeElement.prim__new


export
behavior : HTMLMarqueeElement -> Attribute True Prelude.id String
behavior v = fromPrim
               "HTMLMarqueeElement.getbehavior"
               prim__behavior
               prim__setBehavior
               v


export
bgColor : HTMLMarqueeElement -> Attribute True Prelude.id String
bgColor v = fromPrim
              "HTMLMarqueeElement.getbgColor"
              prim__bgColor
              prim__setBgColor
              v


export
direction : HTMLMarqueeElement -> Attribute True Prelude.id String
direction v = fromPrim
                "HTMLMarqueeElement.getdirection"
                prim__direction
                prim__setDirection
                v


export
height : HTMLMarqueeElement -> Attribute True Prelude.id String
height v = fromPrim
             "HTMLMarqueeElement.getheight"
             prim__height
             prim__setHeight
             v


export
hspace : HTMLMarqueeElement -> Attribute True Prelude.id Bits32
hspace v = fromPrim
             "HTMLMarqueeElement.gethspace"
             prim__hspace
             prim__setHspace
             v


export
loop : HTMLMarqueeElement -> Attribute True Prelude.id Int32
loop v = fromPrim "HTMLMarqueeElement.getloop" prim__loop prim__setLoop v


export
scrollAmount : HTMLMarqueeElement -> Attribute True Prelude.id Bits32
scrollAmount v = fromPrim
                   "HTMLMarqueeElement.getscrollAmount"
                   prim__scrollAmount
                   prim__setScrollAmount
                   v


export
scrollDelay : HTMLMarqueeElement -> Attribute True Prelude.id Bits32
scrollDelay v = fromPrim
                  "HTMLMarqueeElement.getscrollDelay"
                  prim__scrollDelay
                  prim__setScrollDelay
                  v


export
trueSpeed : HTMLMarqueeElement -> Attribute True Prelude.id Bool
trueSpeed v = fromPrim
                "HTMLMarqueeElement.gettrueSpeed"
                prim__trueSpeed
                prim__setTrueSpeed
                v


export
vspace : HTMLMarqueeElement -> Attribute True Prelude.id Bits32
vspace v = fromPrim
             "HTMLMarqueeElement.getvspace"
             prim__vspace
             prim__setVspace
             v


export
width : HTMLMarqueeElement -> Attribute True Prelude.id String
width v = fromPrim "HTMLMarqueeElement.getwidth" prim__width prim__setWidth v


export
start : (obj : HTMLMarqueeElement) -> JSIO ()
start a = primJS $ HTMLMarqueeElement.prim__start a


export
stop : (obj : HTMLMarqueeElement) -> JSIO ()
stop a = primJS $ HTMLMarqueeElement.prim__stop a

