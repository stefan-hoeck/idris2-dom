module Web.Types.TextTrackCueList

import JS


%default total

export data TextTrackCueList : Type where [external]

export
ToFFI TextTrackCueList TextTrackCueList where toFFI = id

export
FromFFI TextTrackCueList TextTrackCueList where fromFFI = Just

export
SafeCast TextTrackCueList where
  safeCast = unsafeCastOnPrototypeName "TextTrackCueList"


export %inline
Cast TextTrackCueList Object where cast = believe_me

