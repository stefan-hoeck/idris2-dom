module Web.Raw.TrackEvent

import JS
import Web.Types.AudioTrack
import Web.Types.Event
import Web.Types.TextTrack
import Web.Types.TrackEvent
import Web.Types.TrackEventInit
import Web.Types.VideoTrack


%default total


export
%foreign "browser:lambda:(a,b)=> new TrackEvent(a,b)"
prim__new : String -> UndefOr TrackEventInit -> PrimIO TrackEvent


export
%foreign "browser:lambda:x=>x.track"
prim__track :
     TrackEvent
  -> PrimIO (Nullable (Union3 VideoTrack AudioTrack TextTrack))


export
new' :
     {auto _ : Cast t2 TrackEventInit}
  -> (type : String)
  -> (eventInitDict : Optional t2)
  -> JSIO TrackEvent
new' a b = primJS $ TrackEvent.prim__new a (optUp b)

export
new : (type : String) -> JSIO TrackEvent
new a = primJS $ TrackEvent.prim__new a undef


export
track :
     (obj : TrackEvent)
  -> JSIO (Maybe (HSum [VideoTrack, AudioTrack, TextTrack]))
track a = tryJS "TrackEvent.track" $ TrackEvent.prim__track a

