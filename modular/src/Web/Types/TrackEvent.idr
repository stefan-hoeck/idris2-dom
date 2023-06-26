module Web.Types.TrackEvent

import JS
import Web.Types.Event


%default total

export data TrackEvent : Type where [external]

export
ToFFI TrackEvent TrackEvent where toFFI = id

export
FromFFI TrackEvent TrackEvent where fromFFI = Just

export
SafeCast TrackEvent where
  safeCast = unsafeCastOnPrototypeName "TrackEvent"


export %inline
Cast TrackEvent Event where cast = believe_me


export %inline
Cast TrackEvent Object where cast = believe_me

