module Web.Internal.UrlTypes
 
import JS


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data URL : Type where [external]
  
export
ToFFI URL URL where toFFI = id
  
export
FromFFI URL URL where fromFFI = Just

export
SafeCast URL where
  safeCast = unsafeCastOnPrototypeName "URL"

export data URLSearchParams : Type where [external]
  
export
ToFFI URLSearchParams URLSearchParams where toFFI = id
  
export
FromFFI URLSearchParams URLSearchParams where fromFFI = Just

export
SafeCast URLSearchParams where
  safeCast = unsafeCastOnPrototypeName "URLSearchParams"


