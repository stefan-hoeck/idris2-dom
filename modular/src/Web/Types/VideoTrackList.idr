module Web.Types.VideoTrackList

import JS
import Web.Types.EventTarget


%default total

export data VideoTrackList : Type where [external]

export
ToFFI VideoTrackList VideoTrackList where toFFI = id

export
FromFFI VideoTrackList VideoTrackList where fromFFI = Just

export
SafeCast VideoTrackList where
  safeCast = unsafeCastOnPrototypeName "VideoTrackList"


export %inline
Cast VideoTrackList EventTarget where cast = believe_me


export %inline
Cast VideoTrackList Object where cast = believe_me

