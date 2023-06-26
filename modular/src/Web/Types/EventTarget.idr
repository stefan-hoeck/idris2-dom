module Web.Types.EventTarget

import JS


%default total

export data EventTarget : Type where [external]

export
ToFFI EventTarget EventTarget where toFFI = id

export
FromFFI EventTarget EventTarget where fromFFI = Just

export
SafeCast EventTarget where
  safeCast = unsafeCastOnPrototypeName "EventTarget"


export %inline
Cast EventTarget Object where cast = believe_me
