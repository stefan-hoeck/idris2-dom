module Web.Types.MediaTrackSettings

import JS


%default total

export data MediaTrackSettings : Type where [external]

export
ToFFI MediaTrackSettings MediaTrackSettings where toFFI = id

export
FromFFI MediaTrackSettings MediaTrackSettings where fromFFI = Just


export %inline
Cast MediaTrackSettings Object where cast = believe_me
