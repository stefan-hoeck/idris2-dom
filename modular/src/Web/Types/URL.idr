module Web.Types.URL

import JS


%default total

export data URL : Type where [external]

export
ToFFI URL URL where toFFI = id

export
FromFFI URL URL where fromFFI = Just

export
SafeCast URL where
  safeCast = unsafeCastOnPrototypeName "URL"


export %inline
Cast URL Object where cast = believe_me
