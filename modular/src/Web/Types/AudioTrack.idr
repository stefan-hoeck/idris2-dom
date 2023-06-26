module Web.Types.AudioTrack

import JS


%default total

export data AudioTrack : Type where [external]

export
ToFFI AudioTrack AudioTrack where toFFI = id

export
FromFFI AudioTrack AudioTrack where fromFFI = Just

export
SafeCast AudioTrack where
  safeCast = unsafeCastOnPrototypeName "AudioTrack"


export %inline
Cast AudioTrack Object where cast = believe_me

