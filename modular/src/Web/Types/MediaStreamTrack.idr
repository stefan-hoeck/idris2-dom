module Web.Types.MediaStreamTrack

import JS
import Web.Types.EventTarget


%default total

export data MediaStreamTrack : Type where [external]

export
ToFFI MediaStreamTrack MediaStreamTrack where toFFI = id

export
FromFFI MediaStreamTrack MediaStreamTrack where fromFFI = Just

export
SafeCast MediaStreamTrack where
  safeCast = unsafeCastOnPrototypeName "MediaStreamTrack"


export %inline
Cast MediaStreamTrack EventTarget where cast = believe_me


export %inline
Cast MediaStreamTrack Object where cast = believe_me
