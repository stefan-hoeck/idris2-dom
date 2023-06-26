module Web.Types.MediaStreamTrackEvent

import JS
import Web.Types.Event


%default total

export data MediaStreamTrackEvent : Type where [external]

export
ToFFI MediaStreamTrackEvent MediaStreamTrackEvent where toFFI = id

export
FromFFI MediaStreamTrackEvent MediaStreamTrackEvent where fromFFI = Just

export
SafeCast MediaStreamTrackEvent where
  safeCast = unsafeCastOnPrototypeName "MediaStreamTrackEvent"


export %inline
Cast MediaStreamTrackEvent Event where cast = believe_me


export %inline
Cast MediaStreamTrackEvent Object where cast = believe_me

