module Web.Types.Event

import JS


%default total

export data Event : Type where [external]

export
ToFFI Event Event where toFFI = id

export
FromFFI Event Event where fromFFI = Just

export
SafeCast Event where
  safeCast = unsafeCastOnPrototypeName "Event"


export %inline
Cast Event Object where cast = believe_me
