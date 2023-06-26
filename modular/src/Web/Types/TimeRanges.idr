module Web.Types.TimeRanges

import JS


%default total

export data TimeRanges : Type where [external]

export
ToFFI TimeRanges TimeRanges where toFFI = id

export
FromFFI TimeRanges TimeRanges where fromFFI = Just

export
SafeCast TimeRanges where
  safeCast = unsafeCastOnPrototypeName "TimeRanges"


export %inline
Cast TimeRanges Object where cast = believe_me
