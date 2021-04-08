module Web.Internal.UrlTypes
 
import JS


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data URL : Type where [external]

export
SafeCast URL where
  safeCast = unsafeCastOnPrototypeName "URL"

export data URLSearchParams : Type where [external]

export
SafeCast URLSearchParams where
  safeCast = unsafeCastOnPrototypeName "URLSearchParams"


