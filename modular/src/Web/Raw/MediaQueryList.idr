module Web.Raw.MediaQueryList

import JS
import Web.Types.EventHandlerNonNull
import Web.Types.EventListener
import Web.Types.EventTarget
import Web.Types.MediaQueryList


%default total


export
%foreign "browser:lambda:x=>x.matches"
prim__matches : MediaQueryList -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.media"
prim__media : MediaQueryList -> PrimIO String


export
%foreign "browser:lambda:x=>x.onchange"
prim__onchange : MediaQueryList -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onchange = v}"
prim__setOnchange : MediaQueryList -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:(x,a)=>x.addListener(a)"
prim__addListener : MediaQueryList -> Nullable EventListener -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.removeListener(a)"
prim__removeListener : MediaQueryList -> Nullable EventListener -> PrimIO ()


export
matches : (obj : MediaQueryList) -> JSIO Bool
matches a = tryJS "MediaQueryList.matches" $ MediaQueryList.prim__matches a


export
media : (obj : MediaQueryList) -> JSIO String
media a = primJS $ MediaQueryList.prim__media a


export
onchange : MediaQueryList -> Attribute False Maybe EventHandlerNonNull
onchange v = fromNullablePrim
               "MediaQueryList.getonchange"
               prim__onchange
               prim__setOnchange
               v


export
addListener :
     (obj : MediaQueryList)
  -> (callback : Maybe EventListener)
  -> JSIO ()
addListener a b = primJS $ MediaQueryList.prim__addListener a (toFFI b)


export
removeListener :
     (obj : MediaQueryList)
  -> (callback : Maybe EventListener)
  -> JSIO ()
removeListener a b = primJS $ MediaQueryList.prim__removeListener a (toFFI b)

