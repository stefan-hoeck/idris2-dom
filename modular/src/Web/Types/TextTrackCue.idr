module Web.Types.TextTrackCue

import JS
import Web.Types.EventTarget


%default total

export data TextTrackCue : Type where [external]

export
ToFFI TextTrackCue TextTrackCue where toFFI = id

export
FromFFI TextTrackCue TextTrackCue where fromFFI = Just

export
SafeCast TextTrackCue where
  safeCast = unsafeCastOnPrototypeName "TextTrackCue"


export %inline
Cast TextTrackCue EventTarget where cast = believe_me


export %inline
Cast TextTrackCue Object where cast = believe_me

