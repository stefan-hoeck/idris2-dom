module Web.Types.MimeType

import JS


%default total

export data MimeType : Type where [external]

export
ToFFI MimeType MimeType where toFFI = id

export
FromFFI MimeType MimeType where fromFFI = Just

export
SafeCast MimeType where
  safeCast = unsafeCastOnPrototypeName "MimeType"


export %inline
Cast MimeType Object where cast = believe_me

