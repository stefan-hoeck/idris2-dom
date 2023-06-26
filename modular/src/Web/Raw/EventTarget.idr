module Web.Raw.EventTarget

import JS
import Web.Types.AddEventListenerOptions
import Web.Types.Event
import Web.Types.EventListener
import Web.Types.EventListenerOptions
import Web.Types.EventTarget


%default total


export
%foreign "browser:lambda:()=> new EventTarget()"
prim__new : PrimIO EventTarget


export
%foreign "browser:lambda:(x,a,b,c)=>x.addEventListener(a,b,c)"
prim__addEventListener :
     EventTarget
  -> String
  -> Nullable EventListener
  -> UndefOr (Union2 AddEventListenerOptions Boolean)
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.dispatchEvent(a)"
prim__dispatchEvent : EventTarget -> Event -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a,b,c)=>x.removeEventListener(a,b,c)"
prim__removeEventListener :
     EventTarget
  -> String
  -> Nullable EventListener
  -> UndefOr (Union2 EventListenerOptions Boolean)
  -> PrimIO ()


export
new : JSIO EventTarget
new = primJS $ EventTarget.prim__new


export
addEventListener' :
     {auto _ : Cast t1 EventTarget}
  -> (obj : t1)
  -> (type : String)
  -> (callback : Maybe EventListener)
  -> (options : Optional (HSum [AddEventListenerOptions, Bool]))
  -> JSIO ()
addEventListener' a b c d = primJS $
  EventTarget.prim__addEventListener (cast a) b (toFFI c) (toFFI d)

export
addEventListener :
     {auto _ : Cast t1 EventTarget}
  -> (obj : t1)
  -> (type : String)
  -> (callback : Maybe EventListener)
  -> JSIO ()
addEventListener a b c = primJS $
  EventTarget.prim__addEventListener (cast a) b (toFFI c) undef


export
dispatchEvent :
     {auto _ : Cast t1 EventTarget}
  -> {auto _ : Cast t2 Event}
  -> (obj : t1)
  -> (event : t2)
  -> JSIO Bool
dispatchEvent a b = tryJS "EventTarget.dispatchEvent" $
  EventTarget.prim__dispatchEvent (cast a) (cast b)


export
removeEventListener' :
     {auto _ : Cast t1 EventTarget}
  -> (obj : t1)
  -> (type : String)
  -> (callback : Maybe EventListener)
  -> (options : Optional (HSum [EventListenerOptions, Bool]))
  -> JSIO ()
removeEventListener' a b c d = primJS $
  EventTarget.prim__removeEventListener (cast a) b (toFFI c) (toFFI d)

export
removeEventListener :
     {auto _ : Cast t1 EventTarget}
  -> (obj : t1)
  -> (type : String)
  -> (callback : Maybe EventListener)
  -> JSIO ()
removeEventListener a b c = primJS $
  EventTarget.prim__removeEventListener (cast a) b (toFFI c) undef

