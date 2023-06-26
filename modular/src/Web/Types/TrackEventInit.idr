module Web.Types.TrackEventInit

import JS
import Web.Types.EventInit


%default total

export data TrackEventInit : Type where [external]

export
ToFFI TrackEventInit TrackEventInit where toFFI = id

export
FromFFI TrackEventInit TrackEventInit where fromFFI = Just


export %inline
Cast TrackEventInit EventInit where cast = believe_me


export %inline
Cast TrackEventInit Object where cast = believe_me
