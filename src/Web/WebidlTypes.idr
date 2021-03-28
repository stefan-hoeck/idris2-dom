module Web.WebidlTypes
import JS


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data DOMException : Type where [external]

export
SafeCast DOMException where
  safeCast = unsafeCastOnPrototypeName "DOMException"

export ToJS DOMException where toJS = believe_me
export FromJS DOMException where fromJS = safeCast

