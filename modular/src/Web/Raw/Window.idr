module Web.Raw.Window

import JS
import Web.Types.BarProp
import Web.Types.CSSStyleDeclaration
import Web.Types.CustomElementRegistry
import Web.Types.Document
import Web.Types.Element
import Web.Types.Event
import Web.Types.EventTarget
import Web.Types.External
import Web.Types.GlobalEventHandlers
import Web.Types.History
import Web.Types.Location
import Web.Types.MediaQueryList
import Web.Types.Navigator
import Web.Types.Screen
import Web.Types.ScrollToOptions
import Web.Types.VisualViewport
import Web.Types.Window
import Web.Types.WindowEventHandlers
import Web.Types.WindowLocalStorage
import Web.Types.WindowOrWorkerGlobalScope
import Web.Types.WindowPostMessageOptions


%default total


export
%foreign "browser:lambda:(o,x)=>o[x]"
prim__get : Window -> String -> PrimIO Object


export
%foreign "browser:lambda:x=>x.closed"
prim__closed : Window -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.customElements"
prim__customElements : Window -> PrimIO CustomElementRegistry


export
%foreign "browser:lambda:x=>x.devicePixelRatio"
prim__devicePixelRatio : Window -> PrimIO Double


export
%foreign "browser:lambda:x=>x.document"
prim__document : Window -> PrimIO Document


export
%foreign "browser:lambda:x=>x.event"
prim__event : Window -> PrimIO (Union2 Event Undefined)


export
%foreign "browser:lambda:x=>x.external"
prim__external : Window -> PrimIO External


export
%foreign "browser:lambda:x=>x.frameElement"
prim__frameElement : Window -> PrimIO (Nullable Element)


export
%foreign "browser:lambda:x=>x.frames"
prim__frames : Window -> PrimIO WindowProxy


export
%foreign "browser:lambda:x=>x.history"
prim__history : Window -> PrimIO History


export
%foreign "browser:lambda:x=>x.innerHeight"
prim__innerHeight : Window -> PrimIO Int32


export
%foreign "browser:lambda:x=>x.innerWidth"
prim__innerWidth : Window -> PrimIO Int32


export
%foreign "browser:lambda:x=>x.length"
prim__length : Window -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.location"
prim__location : Window -> PrimIO Location


export
%foreign "browser:lambda:x=>x.locationbar"
prim__locationbar : Window -> PrimIO BarProp


export
%foreign "browser:lambda:x=>x.menubar"
prim__menubar : Window -> PrimIO BarProp


export
%foreign "browser:lambda:x=>x.name"
prim__name : Window -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.name = v}"
prim__setName : Window -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.navigator"
prim__navigator : Window -> PrimIO Navigator


export
%foreign "browser:lambda:x=>x.opener"
prim__opener : Window -> PrimIO AnyPtr



export
%foreign "browser:lambda:(x,v)=>{x.opener = v}"
prim__setOpener : Window -> AnyPtr -> PrimIO ()



export
%foreign "browser:lambda:x=>x.originAgentCluster"
prim__originAgentCluster : Window -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.outerHeight"
prim__outerHeight : Window -> PrimIO Int32


export
%foreign "browser:lambda:x=>x.outerWidth"
prim__outerWidth : Window -> PrimIO Int32


export
%foreign "browser:lambda:x=>x.pageXOffset"
prim__pageXOffset : Window -> PrimIO Double


export
%foreign "browser:lambda:x=>x.pageYOffset"
prim__pageYOffset : Window -> PrimIO Double


export
%foreign "browser:lambda:x=>x.parent"
prim__parent : Window -> PrimIO (Nullable WindowProxy)


export
%foreign "browser:lambda:x=>x.personalbar"
prim__personalbar : Window -> PrimIO BarProp


export
%foreign "browser:lambda:x=>x.screen"
prim__screen : Window -> PrimIO Screen


export
%foreign "browser:lambda:x=>x.screenLeft"
prim__screenLeft : Window -> PrimIO Int32


export
%foreign "browser:lambda:x=>x.screenTop"
prim__screenTop : Window -> PrimIO Int32


export
%foreign "browser:lambda:x=>x.screenX"
prim__screenX : Window -> PrimIO Int32


export
%foreign "browser:lambda:x=>x.screenY"
prim__screenY : Window -> PrimIO Int32


export
%foreign "browser:lambda:x=>x.scrollX"
prim__scrollX : Window -> PrimIO Double


export
%foreign "browser:lambda:x=>x.scrollY"
prim__scrollY : Window -> PrimIO Double


export
%foreign "browser:lambda:x=>x.scrollbars"
prim__scrollbars : Window -> PrimIO BarProp


export
%foreign "browser:lambda:x=>x.self"
prim__self : Window -> PrimIO WindowProxy


export
%foreign "browser:lambda:x=>x.status"
prim__status : Window -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.status = v}"
prim__setStatus : Window -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.statusbar"
prim__statusbar : Window -> PrimIO BarProp


export
%foreign "browser:lambda:x=>x.toolbar"
prim__toolbar : Window -> PrimIO BarProp


export
%foreign "browser:lambda:x=>x.top"
prim__top : Window -> PrimIO (Nullable WindowProxy)


export
%foreign "browser:lambda:x=>x.visualViewport"
prim__visualViewport : Window -> PrimIO (Nullable VisualViewport)


export
%foreign "browser:lambda:x=>x.window"
prim__window : Window -> PrimIO WindowProxy


export
%foreign "browser:lambda:x=>x.alert()"
prim__alert : Window -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.alert(a)"
prim__alert1 : Window -> String -> PrimIO ()


export
%foreign "browser:lambda:x=>x.blur()"
prim__blur : Window -> PrimIO ()


export
%foreign "browser:lambda:x=>x.captureEvents()"
prim__captureEvents : Window -> PrimIO ()


export
%foreign "browser:lambda:x=>x.close()"
prim__close : Window -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.confirm(a)"
prim__confirm : Window -> UndefOr String -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.focus()"
prim__focus : Window -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.getComputedStyle(a,b)"
prim__getComputedStyle :
     Window
  -> Element
  -> UndefOr (Nullable String)
  -> PrimIO CSSStyleDeclaration


export
%foreign "browser:lambda:(x,a)=>x.matchMedia(a)"
prim__matchMedia : Window -> String -> PrimIO MediaQueryList


export
%foreign "browser:lambda:(x,a,b)=>x.moveBy(a,b)"
prim__moveBy : Window -> Int32 -> Int32 -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.moveTo(a,b)"
prim__moveTo : Window -> Int32 -> Int32 -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c)=>x.open(a,b,c)"
prim__open :
     Window
  -> UndefOr String
  -> UndefOr String
  -> UndefOr String
  -> PrimIO (Nullable WindowProxy)


export
%foreign "browser:lambda:(x,a,b,c)=>x.postMessage(a,b,c)"
prim__postMessage :
     Window
  -> AnyPtr
  -> String
  -> UndefOr (Array Object)
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.postMessage(a,b)"
prim__postMessage1 :
     Window
  -> AnyPtr
  -> UndefOr WindowPostMessageOptions
  -> PrimIO ()


export
%foreign "browser:lambda:x=>x.print()"
prim__print : Window -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.prompt(a,b)"
prim__prompt :
     Window
  -> UndefOr String
  -> UndefOr String
  -> PrimIO (Nullable String)


export
%foreign "browser:lambda:x=>x.releaseEvents()"
prim__releaseEvents : Window -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.resizeBy(a,b)"
prim__resizeBy : Window -> Int32 -> Int32 -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.resizeTo(a,b)"
prim__resizeTo : Window -> Int32 -> Int32 -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.scrollBy(a)"
prim__scrollBy : Window -> UndefOr ScrollToOptions -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.scrollBy(a,b)"
prim__scrollBy1 : Window -> Double -> Double -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.scrollTo(a)"
prim__scrollTo : Window -> UndefOr ScrollToOptions -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.scrollTo(a,b)"
prim__scrollTo1 : Window -> Double -> Double -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.scroll(a)"
prim__scroll : Window -> UndefOr ScrollToOptions -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.scroll(a,b)"
prim__scroll1 : Window -> Double -> Double -> PrimIO ()


export
%foreign "browser:lambda:x=>x.stop()"
prim__stop : Window -> PrimIO ()


export
get : (obj : Window) -> (name : String) -> JSIO Object
get a b = primJS $ Window.prim__get a b


export
closed : (obj : Window) -> JSIO Bool
closed a = tryJS "Window.closed" $ Window.prim__closed a


export
customElements : (obj : Window) -> JSIO CustomElementRegistry
customElements a = primJS $ Window.prim__customElements a


export
devicePixelRatio : (obj : Window) -> JSIO Double
devicePixelRatio a = primJS $ Window.prim__devicePixelRatio a


export
document : (obj : Window) -> JSIO Document
document a = primJS $ Window.prim__document a


export
event : (obj : Window) -> JSIO (HSum [Event, Undefined])
event a = tryJS "Window.event" $ Window.prim__event a


export
external : (obj : Window) -> JSIO External
external a = primJS $ Window.prim__external a


export
frameElement : (obj : Window) -> JSIO (Maybe Element)
frameElement a = tryJS "Window.frameElement" $ Window.prim__frameElement a


export
frames : (obj : Window) -> JSIO WindowProxy
frames a = primJS $ Window.prim__frames a


export
history : (obj : Window) -> JSIO History
history a = primJS $ Window.prim__history a


export
innerHeight : (obj : Window) -> JSIO Int32
innerHeight a = primJS $ Window.prim__innerHeight a


export
innerWidth : (obj : Window) -> JSIO Int32
innerWidth a = primJS $ Window.prim__innerWidth a


export
length : (obj : Window) -> JSIO Bits32
length a = primJS $ Window.prim__length a


export
location : (obj : Window) -> JSIO Location
location a = primJS $ Window.prim__location a


export
locationbar : (obj : Window) -> JSIO BarProp
locationbar a = primJS $ Window.prim__locationbar a


export
menubar : (obj : Window) -> JSIO BarProp
menubar a = primJS $ Window.prim__menubar a


export
name : Window -> Attribute True Prelude.id String
name v = fromPrim "Window.getname" prim__name prim__setName v


export
navigator : (obj : Window) -> JSIO Navigator
navigator a = primJS $ Window.prim__navigator a


export
opener : Window -> Attribute True Prelude.id Any
opener v = fromPrim "Window.getopener" prim__opener prim__setOpener v


export
originAgentCluster : (obj : Window) -> JSIO Bool
originAgentCluster a = tryJS "Window.originAgentCluster" $
  Window.prim__originAgentCluster a


export
outerHeight : (obj : Window) -> JSIO Int32
outerHeight a = primJS $ Window.prim__outerHeight a


export
outerWidth : (obj : Window) -> JSIO Int32
outerWidth a = primJS $ Window.prim__outerWidth a


export
pageXOffset : (obj : Window) -> JSIO Double
pageXOffset a = primJS $ Window.prim__pageXOffset a


export
pageYOffset : (obj : Window) -> JSIO Double
pageYOffset a = primJS $ Window.prim__pageYOffset a


export
parent : (obj : Window) -> JSIO (Maybe WindowProxy)
parent a = tryJS "Window.parent" $ Window.prim__parent a


export
personalbar : (obj : Window) -> JSIO BarProp
personalbar a = primJS $ Window.prim__personalbar a


export
screen : (obj : Window) -> JSIO Screen
screen a = primJS $ Window.prim__screen a


export
screenLeft : (obj : Window) -> JSIO Int32
screenLeft a = primJS $ Window.prim__screenLeft a


export
screenTop : (obj : Window) -> JSIO Int32
screenTop a = primJS $ Window.prim__screenTop a


export
screenX : (obj : Window) -> JSIO Int32
screenX a = primJS $ Window.prim__screenX a


export
screenY : (obj : Window) -> JSIO Int32
screenY a = primJS $ Window.prim__screenY a


export
scrollX : (obj : Window) -> JSIO Double
scrollX a = primJS $ Window.prim__scrollX a


export
scrollY : (obj : Window) -> JSIO Double
scrollY a = primJS $ Window.prim__scrollY a


export
scrollbars : (obj : Window) -> JSIO BarProp
scrollbars a = primJS $ Window.prim__scrollbars a


export
self : (obj : Window) -> JSIO WindowProxy
self a = primJS $ Window.prim__self a


export
status : Window -> Attribute True Prelude.id String
status v = fromPrim "Window.getstatus" prim__status prim__setStatus v


export
statusbar : (obj : Window) -> JSIO BarProp
statusbar a = primJS $ Window.prim__statusbar a


export
toolbar : (obj : Window) -> JSIO BarProp
toolbar a = primJS $ Window.prim__toolbar a


export
top : (obj : Window) -> JSIO (Maybe WindowProxy)
top a = tryJS "Window.top" $ Window.prim__top a


export
visualViewport : (obj : Window) -> JSIO (Maybe VisualViewport)
visualViewport a = tryJS "Window.visualViewport" $ Window.prim__visualViewport a


export
window : (obj : Window) -> JSIO WindowProxy
window a = primJS $ Window.prim__window a


export
alert : (obj : Window) -> JSIO ()
alert a = primJS $ Window.prim__alert a


export
alert1 : (obj : Window) -> (message : String) -> JSIO ()
alert1 a b = primJS $ Window.prim__alert1 a b


export
blur : (obj : Window) -> JSIO ()
blur a = primJS $ Window.prim__blur a


export
captureEvents : (obj : Window) -> JSIO ()
captureEvents a = primJS $ Window.prim__captureEvents a


export
close : (obj : Window) -> JSIO ()
close a = primJS $ Window.prim__close a


export
confirm' : (obj : Window) -> (message : Optional String) -> JSIO Bool
confirm' a b = tryJS "Window.confirm'" $ Window.prim__confirm a (toFFI b)

export
confirm : (obj : Window) -> JSIO Bool
confirm a = tryJS "Window.confirm" $ Window.prim__confirm a undef


export
focus : (obj : Window) -> JSIO ()
focus a = primJS $ Window.prim__focus a


export
getComputedStyle' :
     {auto _ : Cast t2 Element}
  -> (obj : Window)
  -> (elt : t2)
  -> (pseudoElt : Optional (Maybe String))
  -> JSIO CSSStyleDeclaration
getComputedStyle' a b c = primJS $
  Window.prim__getComputedStyle a (cast b) (toFFI c)

export
getComputedStyle :
     {auto _ : Cast t2 Element}
  -> (obj : Window)
  -> (elt : t2)
  -> JSIO CSSStyleDeclaration
getComputedStyle a b = primJS $ Window.prim__getComputedStyle a (cast b) undef


export
matchMedia : (obj : Window) -> (query : String) -> JSIO MediaQueryList
matchMedia a b = primJS $ Window.prim__matchMedia a b


export
moveBy : (obj : Window) -> (x : Int32) -> (y : Int32) -> JSIO ()
moveBy a b c = primJS $ Window.prim__moveBy a b c


export
moveTo : (obj : Window) -> (x : Int32) -> (y : Int32) -> JSIO ()
moveTo a b c = primJS $ Window.prim__moveTo a b c


export
open' :
     (obj : Window)
  -> (url : Optional String)
  -> (target : Optional String)
  -> (features : Optional String)
  -> JSIO (Maybe WindowProxy)
open' a b c d = tryJS "Window.open'" $
  Window.prim__open a (toFFI b) (toFFI c) (toFFI d)

export
open_ : (obj : Window) -> JSIO (Maybe WindowProxy)
open_ a = tryJS "Window.open_" $ Window.prim__open a undef undef undef


export
postMessage' :
     (obj : Window)
  -> (message : Any)
  -> (targetOrigin : String)
  -> (transfer : Optional (Array Object))
  -> JSIO ()
postMessage' a b c d = primJS $ Window.prim__postMessage a (toFFI b) c (toFFI d)

export
postMessage :
     (obj : Window)
  -> (message : Any)
  -> (targetOrigin : String)
  -> JSIO ()
postMessage a b c = primJS $ Window.prim__postMessage a (toFFI b) c undef


export
postMessage1' :
     {auto _ : Cast t3 WindowPostMessageOptions}
  -> (obj : Window)
  -> (message : Any)
  -> (options : Optional t3)
  -> JSIO ()
postMessage1' a b c = primJS $ Window.prim__postMessage1 a (toFFI b) (optUp c)

export
postMessage1 : (obj : Window) -> (message : Any) -> JSIO ()
postMessage1 a b = primJS $ Window.prim__postMessage1 a (toFFI b) undef


export
print : (obj : Window) -> JSIO ()
print a = primJS $ Window.prim__print a


export
prompt' :
     (obj : Window)
  -> (message : Optional String)
  -> (default_ : Optional String)
  -> JSIO (Maybe String)
prompt' a b c = tryJS "Window.prompt'" $
  Window.prim__prompt a (toFFI b) (toFFI c)

export
prompt : (obj : Window) -> JSIO (Maybe String)
prompt a = tryJS "Window.prompt" $ Window.prim__prompt a undef undef


export
releaseEvents : (obj : Window) -> JSIO ()
releaseEvents a = primJS $ Window.prim__releaseEvents a


export
resizeBy : (obj : Window) -> (x : Int32) -> (y : Int32) -> JSIO ()
resizeBy a b c = primJS $ Window.prim__resizeBy a b c


export
resizeTo : (obj : Window) -> (width : Int32) -> (height : Int32) -> JSIO ()
resizeTo a b c = primJS $ Window.prim__resizeTo a b c


export
scrollBy' :
     {auto _ : Cast t2 ScrollToOptions}
  -> (obj : Window)
  -> (options : Optional t2)
  -> JSIO ()
scrollBy' a b = primJS $ Window.prim__scrollBy a (optUp b)

export
scrollBy : (obj : Window) -> JSIO ()
scrollBy a = primJS $ Window.prim__scrollBy a undef


export
scrollBy1 : (obj : Window) -> (x : Double) -> (y : Double) -> JSIO ()
scrollBy1 a b c = primJS $ Window.prim__scrollBy1 a b c


export
scrollTo' :
     {auto _ : Cast t2 ScrollToOptions}
  -> (obj : Window)
  -> (options : Optional t2)
  -> JSIO ()
scrollTo' a b = primJS $ Window.prim__scrollTo a (optUp b)

export
scrollTo : (obj : Window) -> JSIO ()
scrollTo a = primJS $ Window.prim__scrollTo a undef


export
scrollTo1 : (obj : Window) -> (x : Double) -> (y : Double) -> JSIO ()
scrollTo1 a b c = primJS $ Window.prim__scrollTo1 a b c


export
scroll' :
     {auto _ : Cast t2 ScrollToOptions}
  -> (obj : Window)
  -> (options : Optional t2)
  -> JSIO ()
scroll' a b = primJS $ Window.prim__scroll a (optUp b)

export
scroll : (obj : Window) -> JSIO ()
scroll a = primJS $ Window.prim__scroll a undef


export
scroll1 : (obj : Window) -> (x : Double) -> (y : Double) -> JSIO ()
scroll1 a b c = primJS $ Window.prim__scroll1 a b c


export
stop : (obj : Window) -> JSIO ()
stop a = primJS $ Window.prim__stop a
