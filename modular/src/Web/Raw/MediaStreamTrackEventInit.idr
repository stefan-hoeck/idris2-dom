module Web.Raw.MediaStreamTrackEventInit

import JS
import Web.Types.EventInit
import Web.Types.MediaStreamTrack
import Web.Types.MediaStreamTrackEventInit


%default total


export
%foreign "browser:lambda:(a)=> ({track: a})"
prim__new : MediaStreamTrack -> PrimIO MediaStreamTrackEventInit


export
%foreign "browser:lambda:x=>x.track"
prim__track : MediaStreamTrackEventInit -> PrimIO MediaStreamTrack



export
%foreign "browser:lambda:(x,v)=>{x.track = v}"
prim__setTrack : MediaStreamTrackEventInit -> MediaStreamTrack -> PrimIO ()



export
new : (track : MediaStreamTrack) -> JSIO MediaStreamTrackEventInit
new a = primJS $ MediaStreamTrackEventInit.prim__new a


export
track :
     {auto _ : Cast t MediaStreamTrackEventInit}
  -> t
  -> Attribute True Prelude.id MediaStreamTrack
track v = fromPrim
            "MediaStreamTrackEventInit.gettrack"
            prim__track
            prim__setTrack
            (cast {to = MediaStreamTrackEventInit} v)
