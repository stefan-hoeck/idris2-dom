module Web.UrlTypes
import JS


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------
export data URL : Type where [external]

export
SafeCast URL where
  safeCast = unsafeCastOnPrototypeName "URL"

export ToJS URL where toJS = believe_me
export FromJS URL where fromJS = safeCast
export data URLSearchParams : Type where [external]

export
SafeCast URLSearchParams where
  safeCast = unsafeCastOnPrototypeName "URLSearchParams"

export ToJS URLSearchParams where toJS = believe_me
export FromJS URLSearchParams where fromJS = safeCast

