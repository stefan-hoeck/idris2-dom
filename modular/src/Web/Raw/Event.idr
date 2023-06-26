module Web.Raw.Event

import JS
import Web.Types.Event
import Web.Types.EventInit
import Web.Types.EventTarget


%default total


export
AT_TARGET : Bits16
AT_TARGET = 2


export
BUBBLING_PHASE : Bits16
BUBBLING_PHASE = 3


export
CAPTURING_PHASE : Bits16
CAPTURING_PHASE = 1


export
NONE : Bits16
NONE = 0


export
%foreign "browser:lambda:(a,b)=> new Event(a,b)"
prim__new : String -> UndefOr EventInit -> PrimIO Event


export
%foreign "browser:lambda:x=>x.bubbles"
prim__bubbles : Event -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.cancelBubble"
prim__cancelBubble : Event -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.cancelBubble = v}"
prim__setCancelBubble : Event -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.cancelable"
prim__cancelable : Event -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.composed"
prim__composed : Event -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.currentTarget"
prim__currentTarget : Event -> PrimIO (Nullable EventTarget)


export
%foreign "browser:lambda:x=>x.defaultPrevented"
prim__defaultPrevented : Event -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.eventPhase"
prim__eventPhase : Event -> PrimIO Bits16


export
%foreign "browser:lambda:x=>x.isTrusted"
prim__isTrusted : Event -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.returnValue"
prim__returnValue : Event -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.returnValue = v}"
prim__setReturnValue : Event -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.srcElement"
prim__srcElement : Event -> PrimIO (Nullable EventTarget)


export
%foreign "browser:lambda:x=>x.target"
prim__target : Event -> PrimIO (Nullable EventTarget)


export
%foreign "browser:lambda:x=>x.timeStamp"
prim__timeStamp : Event -> PrimIO Double


export
%foreign "browser:lambda:x=>x.type"
prim__type : Event -> PrimIO String


export
%foreign "browser:lambda:x=>x.composedPath()"
prim__composedPath : Event -> PrimIO (Array EventTarget)


export
%foreign "browser:lambda:(x,a,b,c)=>x.initEvent(a,b,c)"
prim__initEvent :
     Event
  -> String
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> PrimIO ()


export
%foreign "browser:lambda:x=>x.preventDefault()"
prim__preventDefault : Event -> PrimIO ()


export
%foreign "browser:lambda:x=>x.stopImmediatePropagation()"
prim__stopImmediatePropagation : Event -> PrimIO ()


export
%foreign "browser:lambda:x=>x.stopPropagation()"
prim__stopPropagation : Event -> PrimIO ()


export
new' :
     {auto _ : Cast t2 EventInit}
  -> (type : String)
  -> (eventInitDict : Optional t2)
  -> JSIO Event
new' a b = primJS $ Event.prim__new a (optUp b)

export
new : (type : String) -> JSIO Event
new a = primJS $ Event.prim__new a undef


export
bubbles : {auto _ : Cast t1 Event} -> (obj : t1) -> JSIO Bool
bubbles a = tryJS "Event.bubbles" $ Event.prim__bubbles (cast a)


export
cancelBubble : {auto _ : Cast t Event} -> t -> Attribute True Prelude.id Bool
cancelBubble v = fromPrim
                   "Event.getcancelBubble"
                   prim__cancelBubble
                   prim__setCancelBubble
                   (cast {to = Event} v)


export
cancelable : {auto _ : Cast t1 Event} -> (obj : t1) -> JSIO Bool
cancelable a = tryJS "Event.cancelable" $ Event.prim__cancelable (cast a)


export
composed : {auto _ : Cast t1 Event} -> (obj : t1) -> JSIO Bool
composed a = tryJS "Event.composed" $ Event.prim__composed (cast a)


export
currentTarget :
     {auto _ : Cast t1 Event}
  -> (obj : t1)
  -> JSIO (Maybe EventTarget)
currentTarget a = tryJS "Event.currentTarget" $
  Event.prim__currentTarget (cast a)


export
defaultPrevented : {auto _ : Cast t1 Event} -> (obj : t1) -> JSIO Bool
defaultPrevented a = tryJS "Event.defaultPrevented" $
  Event.prim__defaultPrevented (cast a)


export
eventPhase : {auto _ : Cast t1 Event} -> (obj : t1) -> JSIO Bits16
eventPhase a = primJS $ Event.prim__eventPhase (cast a)


export
isTrusted : {auto _ : Cast t1 Event} -> (obj : t1) -> JSIO Bool
isTrusted a = tryJS "Event.isTrusted" $ Event.prim__isTrusted (cast a)


export
returnValue : {auto _ : Cast t Event} -> t -> Attribute True Prelude.id Bool
returnValue v = fromPrim
                  "Event.getreturnValue"
                  prim__returnValue
                  prim__setReturnValue
                  (cast {to = Event} v)


export
srcElement : {auto _ : Cast t1 Event} -> (obj : t1) -> JSIO (Maybe EventTarget)
srcElement a = tryJS "Event.srcElement" $ Event.prim__srcElement (cast a)


export
target : {auto _ : Cast t1 Event} -> (obj : t1) -> JSIO (Maybe EventTarget)
target a = tryJS "Event.target" $ Event.prim__target (cast a)


export
timeStamp : {auto _ : Cast t1 Event} -> (obj : t1) -> JSIO Double
timeStamp a = primJS $ Event.prim__timeStamp (cast a)


export
type : {auto _ : Cast t1 Event} -> (obj : t1) -> JSIO String
type a = primJS $ Event.prim__type (cast a)


export
composedPath :
     {auto _ : Cast t1 Event}
  -> (obj : t1)
  -> JSIO (Array EventTarget)
composedPath a = primJS $ Event.prim__composedPath (cast a)


export
initEvent' :
     {auto _ : Cast t1 Event}
  -> (obj : t1)
  -> (type : String)
  -> (bubbles : Optional Bool)
  -> (cancelable : Optional Bool)
  -> JSIO ()
initEvent' a b c d = primJS $
  Event.prim__initEvent (cast a) b (toFFI c) (toFFI d)

export
initEvent : {auto _ : Cast t1 Event} -> (obj : t1) -> (type : String) -> JSIO ()
initEvent a b = primJS $ Event.prim__initEvent (cast a) b undef undef


export
preventDefault : {auto _ : Cast t1 Event} -> (obj : t1) -> JSIO ()
preventDefault a = primJS $ Event.prim__preventDefault (cast a)


export
stopImmediatePropagation : {auto _ : Cast t1 Event} -> (obj : t1) -> JSIO ()
stopImmediatePropagation a = primJS $
  Event.prim__stopImmediatePropagation (cast a)


export
stopPropagation : {auto _ : Cast t1 Event} -> (obj : t1) -> JSIO ()
stopPropagation a = primJS $ Event.prim__stopPropagation (cast a)

