module Web.Types.TextTrackList

import JS
import Web.Types.EventTarget


%default total

export data TextTrackList : Type where [external]

export
ToFFI TextTrackList TextTrackList where toFFI = id

export
FromFFI TextTrackList TextTrackList where fromFFI = Just

export
SafeCast TextTrackList where
  safeCast = unsafeCastOnPrototypeName "TextTrackList"


export %inline
Cast TextTrackList EventTarget where cast = believe_me


export %inline
Cast TextTrackList Object where cast = believe_me

