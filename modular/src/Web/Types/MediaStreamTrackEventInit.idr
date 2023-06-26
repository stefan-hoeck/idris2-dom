module Web.Types.MediaStreamTrackEventInit

import JS
import Web.Types.EventInit


%default total

export data MediaStreamTrackEventInit : Type where [external]

export
ToFFI MediaStreamTrackEventInit MediaStreamTrackEventInit where toFFI = id

export
FromFFI MediaStreamTrackEventInit MediaStreamTrackEventInit where fromFFI = Just


export %inline
Cast MediaStreamTrackEventInit EventInit where cast = believe_me


export %inline
Cast MediaStreamTrackEventInit Object where cast = believe_me
