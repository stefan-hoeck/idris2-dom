module Web.Types.VideoTrack

import JS


%default total

export data VideoTrack : Type where [external]

export
ToFFI VideoTrack VideoTrack where toFFI = id

export
FromFFI VideoTrack VideoTrack where fromFFI = Just

export
SafeCast VideoTrack where
  safeCast = unsafeCastOnPrototypeName "VideoTrack"


export %inline
Cast VideoTrack Object where cast = believe_me
