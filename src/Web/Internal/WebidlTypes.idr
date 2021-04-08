module Web.Internal.WebidlTypes
 
import JS


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data DOMException : Type where [external]

export
SafeCast DOMException where
  safeCast = unsafeCastOnPrototypeName "DOMException"



--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------

export data Function : Type where [external]

export data VoidFunction : Type where [external]