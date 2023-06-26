module Web.Types.OverconstrainedError

import JS
import Web.Types.DOMException


%default total

export data OverconstrainedError : Type where [external]

export
ToFFI OverconstrainedError OverconstrainedError where toFFI = id

export
FromFFI OverconstrainedError OverconstrainedError where fromFFI = Just

export
SafeCast OverconstrainedError where
  safeCast = unsafeCastOnPrototypeName "OverconstrainedError"


export %inline
Cast OverconstrainedError DOMException where cast = believe_me


export %inline
Cast OverconstrainedError Object where cast = believe_me

