module Web.Raw.TrackEventInit

import JS
import Web.Types.AudioTrack
import Web.Types.EventInit
import Web.Types.TextTrack
import Web.Types.TrackEventInit
import Web.Types.VideoTrack


%default total


export
%foreign "browser:lambda:(a)=> ({track: a})"
prim__new :
     UndefOr (Nullable (Union3 VideoTrack AudioTrack TextTrack))
  -> PrimIO TrackEventInit


export
%foreign "browser:lambda:x=>x.track"
prim__track :
     TrackEventInit
  -> PrimIO (UndefOr (Nullable (Union3 VideoTrack AudioTrack TextTrack)))



export
%foreign "browser:lambda:(x,v)=>{x.track = v}"
prim__setTrack :
     TrackEventInit
  -> UndefOr (Nullable (Union3 VideoTrack AudioTrack TextTrack))
  -> PrimIO ()



export
new' :
     (track : Optional (Maybe (HSum [VideoTrack, AudioTrack, TextTrack])))
  -> JSIO TrackEventInit
new' a = primJS $ TrackEventInit.prim__new (toFFI a)

export
new : JSIO TrackEventInit
new = primJS $ TrackEventInit.prim__new undef


export
track :
     {auto _ : Cast t TrackEventInit}
  -> t
  -> Attribute True Optional (Maybe (HSum [VideoTrack, AudioTrack, TextTrack]))
track v = fromUndefOrPrim
            "TrackEventInit.gettrack"
            prim__track
            prim__setTrack
            Nothing
            (cast {to = TrackEventInit} v)
