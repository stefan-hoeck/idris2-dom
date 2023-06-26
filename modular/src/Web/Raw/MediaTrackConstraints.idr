module Web.Raw.MediaTrackConstraints

import JS
import Web.Types.MediaTrackConstraintSet
import Web.Types.MediaTrackConstraints


%default total


export
%foreign "browser:lambda:(a)=> ({advanced: a})"
prim__new :
     UndefOr (Array MediaTrackConstraintSet)
  -> PrimIO MediaTrackConstraints


export
%foreign "browser:lambda:x=>x.advanced"
prim__advanced :
     MediaTrackConstraints
  -> PrimIO (UndefOr (Array MediaTrackConstraintSet))



export
%foreign "browser:lambda:(x,v)=>{x.advanced = v}"
prim__setAdvanced :
     MediaTrackConstraints
  -> UndefOr (Array MediaTrackConstraintSet)
  -> PrimIO ()



export
new' :
     (advanced : Optional (Array MediaTrackConstraintSet))
  -> JSIO MediaTrackConstraints
new' a = primJS $ MediaTrackConstraints.prim__new (toFFI a)

export
new : JSIO MediaTrackConstraints
new = primJS $ MediaTrackConstraints.prim__new undef


export
advanced :
     {auto _ : Cast t MediaTrackConstraints}
  -> t
  -> Attribute False Optional (Array MediaTrackConstraintSet)
advanced v = fromUndefOrPrimNoDefault
               "MediaTrackConstraints.getadvanced"
               prim__advanced
               prim__setAdvanced
               (cast {to = MediaTrackConstraints} v)
