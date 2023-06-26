module Web.Types.DocumentTimelineOptions

import JS


%default total

export data DocumentTimelineOptions : Type where [external]

export
ToFFI DocumentTimelineOptions DocumentTimelineOptions where toFFI = id

export
FromFFI DocumentTimelineOptions DocumentTimelineOptions where fromFFI = Just


export %inline
Cast DocumentTimelineOptions Object where cast = believe_me
