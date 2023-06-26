module Web.Types.MimeTypeArray

import JS


%default total

export data MimeTypeArray : Type where [external]

export
ToFFI MimeTypeArray MimeTypeArray where toFFI = id

export
FromFFI MimeTypeArray MimeTypeArray where fromFFI = Just

export
SafeCast MimeTypeArray where
  safeCast = unsafeCastOnPrototypeName "MimeTypeArray"


export %inline
Cast MimeTypeArray Object where cast = believe_me

