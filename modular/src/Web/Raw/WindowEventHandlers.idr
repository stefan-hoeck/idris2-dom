module Web.Raw.WindowEventHandlers

import JS
import Web.Types.EventHandlerNonNull
import Web.Types.OnBeforeUnloadEventHandlerNonNull
import Web.Types.UIEventHandler
import Web.Types.WindowEventHandlers


%default total


export
%foreign "browser:lambda:x=>x.onafterprint"
prim__onafterprint :
     WindowEventHandlers
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onafterprint = v}"
prim__setOnafterprint :
     WindowEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onbeforeprint"
prim__onbeforeprint :
     WindowEventHandlers
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onbeforeprint = v}"
prim__setOnbeforeprint :
     WindowEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onbeforeunload"
prim__onbeforeunload :
     WindowEventHandlers
  -> PrimIO (Nullable OnBeforeUnloadEventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onbeforeunload = v}"
prim__setOnbeforeunload :
     WindowEventHandlers
  -> Nullable OnBeforeUnloadEventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onhashchange"
prim__onhashchange :
     WindowEventHandlers
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onhashchange = v}"
prim__setOnhashchange :
     WindowEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onlanguagechange"
prim__onlanguagechange :
     WindowEventHandlers
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onlanguagechange = v}"
prim__setOnlanguagechange :
     WindowEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onmessage"
prim__onmessage : WindowEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onmessage = v}"
prim__setOnmessage :
     WindowEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onmessageerror"
prim__onmessageerror :
     WindowEventHandlers
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onmessageerror = v}"
prim__setOnmessageerror :
     WindowEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onoffline"
prim__onoffline : WindowEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onoffline = v}"
prim__setOnoffline :
     WindowEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ononline"
prim__ononline : WindowEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.ononline = v}"
prim__setOnonline :
     WindowEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onpagehide"
prim__onpagehide : WindowEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onpagehide = v}"
prim__setOnpagehide :
     WindowEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onpageshow"
prim__onpageshow : WindowEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onpageshow = v}"
prim__setOnpageshow :
     WindowEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onpopstate"
prim__onpopstate : WindowEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onpopstate = v}"
prim__setOnpopstate :
     WindowEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onrejectionhandled"
prim__onrejectionhandled :
     WindowEventHandlers
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onrejectionhandled = v}"
prim__setOnrejectionhandled :
     WindowEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onstorage"
prim__onstorage : WindowEventHandlers -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onstorage = v}"
prim__setOnstorage :
     WindowEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onunhandledrejection"
prim__onunhandledrejection :
     WindowEventHandlers
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onunhandledrejection = v}"
prim__setOnunhandledrejection :
     WindowEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onunload"
prim__onunload : WindowEventHandlers -> PrimIO (Nullable UIEventHandler)



export
%foreign "browser:lambda:(x,v)=>{x.onunload = v}"
prim__setOnunload : WindowEventHandlers -> Nullable UIEventHandler -> PrimIO ()



export
onafterprint :
     {auto _ : Cast t WindowEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onafterprint v = fromNullablePrim
                   "WindowEventHandlers.getonafterprint"
                   prim__onafterprint
                   prim__setOnafterprint
                   (cast {to = WindowEventHandlers} v)


export
onbeforeprint :
     {auto _ : Cast t WindowEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onbeforeprint v = fromNullablePrim
                    "WindowEventHandlers.getonbeforeprint"
                    prim__onbeforeprint
                    prim__setOnbeforeprint
                    (cast {to = WindowEventHandlers} v)


export
onbeforeunload :
     {auto _ : Cast t WindowEventHandlers}
  -> t
  -> Attribute False Maybe OnBeforeUnloadEventHandlerNonNull
onbeforeunload v = fromNullablePrim
                     "WindowEventHandlers.getonbeforeunload"
                     prim__onbeforeunload
                     prim__setOnbeforeunload
                     (cast {to = WindowEventHandlers} v)


export
onhashchange :
     {auto _ : Cast t WindowEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onhashchange v = fromNullablePrim
                   "WindowEventHandlers.getonhashchange"
                   prim__onhashchange
                   prim__setOnhashchange
                   (cast {to = WindowEventHandlers} v)


export
onlanguagechange :
     {auto _ : Cast t WindowEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onlanguagechange v = fromNullablePrim
                       "WindowEventHandlers.getonlanguagechange"
                       prim__onlanguagechange
                       prim__setOnlanguagechange
                       (cast {to = WindowEventHandlers} v)


export
onmessage :
     {auto _ : Cast t WindowEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onmessage v = fromNullablePrim
                "WindowEventHandlers.getonmessage"
                prim__onmessage
                prim__setOnmessage
                (cast {to = WindowEventHandlers} v)


export
onmessageerror :
     {auto _ : Cast t WindowEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onmessageerror v = fromNullablePrim
                     "WindowEventHandlers.getonmessageerror"
                     prim__onmessageerror
                     prim__setOnmessageerror
                     (cast {to = WindowEventHandlers} v)


export
onoffline :
     {auto _ : Cast t WindowEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onoffline v = fromNullablePrim
                "WindowEventHandlers.getonoffline"
                prim__onoffline
                prim__setOnoffline
                (cast {to = WindowEventHandlers} v)


export
ononline :
     {auto _ : Cast t WindowEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
ononline v = fromNullablePrim
               "WindowEventHandlers.getononline"
               prim__ononline
               prim__setOnonline
               (cast {to = WindowEventHandlers} v)


export
onpagehide :
     {auto _ : Cast t WindowEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onpagehide v = fromNullablePrim
                 "WindowEventHandlers.getonpagehide"
                 prim__onpagehide
                 prim__setOnpagehide
                 (cast {to = WindowEventHandlers} v)


export
onpageshow :
     {auto _ : Cast t WindowEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onpageshow v = fromNullablePrim
                 "WindowEventHandlers.getonpageshow"
                 prim__onpageshow
                 prim__setOnpageshow
                 (cast {to = WindowEventHandlers} v)


export
onpopstate :
     {auto _ : Cast t WindowEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onpopstate v = fromNullablePrim
                 "WindowEventHandlers.getonpopstate"
                 prim__onpopstate
                 prim__setOnpopstate
                 (cast {to = WindowEventHandlers} v)


export
onrejectionhandled :
     {auto _ : Cast t WindowEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onrejectionhandled v = fromNullablePrim
                         "WindowEventHandlers.getonrejectionhandled"
                         prim__onrejectionhandled
                         prim__setOnrejectionhandled
                         (cast {to = WindowEventHandlers} v)


export
onstorage :
     {auto _ : Cast t WindowEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onstorage v = fromNullablePrim
                "WindowEventHandlers.getonstorage"
                prim__onstorage
                prim__setOnstorage
                (cast {to = WindowEventHandlers} v)


export
onunhandledrejection :
     {auto _ : Cast t WindowEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onunhandledrejection v = fromNullablePrim
                           "WindowEventHandlers.getonunhandledrejection"
                           prim__onunhandledrejection
                           prim__setOnunhandledrejection
                           (cast {to = WindowEventHandlers} v)


export
onunload :
     {auto _ : Cast t WindowEventHandlers}
  -> t
  -> Attribute False Maybe UIEventHandler
onunload v = fromNullablePrim
               "WindowEventHandlers.getonunload"
               prim__onunload
               prim__setOnunload
               (cast {to = WindowEventHandlers} v)
