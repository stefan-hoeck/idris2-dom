module Web.Raw.MediaQueryListEvent

import JS
import Web.Types.Event
import Web.Types.MediaQueryListEvent
import Web.Types.MediaQueryListEventInit


%default total


export
%foreign "browser:lambda:(a,b)=> new MediaQueryListEvent(a,b)"
prim__new :
     String
  -> UndefOr MediaQueryListEventInit
  -> PrimIO MediaQueryListEvent


export
%foreign "browser:lambda:x=>x.matches"
prim__matches : MediaQueryListEvent -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.media"
prim__media : MediaQueryListEvent -> PrimIO String


export
new' :
     {auto _ : Cast t2 MediaQueryListEventInit}
  -> (type : String)
  -> (eventInitDict : Optional t2)
  -> JSIO MediaQueryListEvent
new' a b = primJS $ MediaQueryListEvent.prim__new a (optUp b)

export
new : (type : String) -> JSIO MediaQueryListEvent
new a = primJS $ MediaQueryListEvent.prim__new a undef


export
matches : (obj : MediaQueryListEvent) -> JSIO Bool
matches a = tryJS "MediaQueryListEvent.matches" $
  MediaQueryListEvent.prim__matches a


export
media : (obj : MediaQueryListEvent) -> JSIO String
media a = primJS $ MediaQueryListEvent.prim__media a

