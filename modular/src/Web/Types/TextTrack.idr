module Web.Types.TextTrack

import JS
import Web.Types.EventTarget


%default total

export data TextTrack : Type where [external]

export
ToFFI TextTrack TextTrack where toFFI = id

export
FromFFI TextTrack TextTrack where fromFFI = Just

export
SafeCast TextTrack where
  safeCast = unsafeCastOnPrototypeName "TextTrack"


export %inline
Cast TextTrack EventTarget where cast = believe_me


export %inline
Cast TextTrack Object where cast = believe_me
