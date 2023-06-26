module Web.Types.AudioTrackList

import JS
import Web.Types.EventTarget


%default total

export data AudioTrackList : Type where [external]

export
ToFFI AudioTrackList AudioTrackList where toFFI = id

export
FromFFI AudioTrackList AudioTrackList where fromFFI = Just

export
SafeCast AudioTrackList where
  safeCast = unsafeCastOnPrototypeName "AudioTrackList"


export %inline
Cast AudioTrackList EventTarget where cast = believe_me


export %inline
Cast AudioTrackList Object where cast = believe_me
