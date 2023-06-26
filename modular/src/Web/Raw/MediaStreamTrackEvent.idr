module Web.Raw.MediaStreamTrackEvent

import JS
import Web.Types.Event
import Web.Types.MediaStreamTrack
import Web.Types.MediaStreamTrackEvent
import Web.Types.MediaStreamTrackEventInit


%default total


export
%foreign "browser:lambda:(a,b)=> new MediaStreamTrackEvent(a,b)"
prim__new : String -> MediaStreamTrackEventInit -> PrimIO MediaStreamTrackEvent


export
%foreign "browser:lambda:x=>x.track"
prim__track : MediaStreamTrackEvent -> PrimIO MediaStreamTrack


export
new :
     {auto _ : Cast t2 MediaStreamTrackEventInit}
  -> (type : String)
  -> (eventInitDict : t2)
  -> JSIO MediaStreamTrackEvent
new a b = primJS $ MediaStreamTrackEvent.prim__new a (cast b)


export
track : (obj : MediaStreamTrackEvent) -> JSIO MediaStreamTrack
track a = primJS $ MediaStreamTrackEvent.prim__track a

