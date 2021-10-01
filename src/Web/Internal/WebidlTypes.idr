module Web.Internal.WebidlTypes
 
import JS


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data DOMException : Type where [external]
  
export
ToFFI DOMException DOMException where toFFI = id
  
export
FromFFI DOMException DOMException where fromFFI = Just

export
SafeCast DOMException where
  safeCast = unsafeCastOnPrototypeName "DOMException"




--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------

export data Function : Type where [external]
  
export
ToFFI Function Function where toFFI = id
  
export
FromFFI Function Function where fromFFI = Just

export data VoidFunction : Type where [external]
  
export
ToFFI VoidFunction VoidFunction where toFFI = id
  
export
FromFFI VoidFunction VoidFunction where fromFFI = Just

