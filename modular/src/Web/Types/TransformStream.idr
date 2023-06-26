module Web.Types.TransformStream

import JS


%default total

export data TransformStream : Type where [external]

export
ToFFI TransformStream TransformStream where toFFI = id

export
FromFFI TransformStream TransformStream where fromFFI = Just

export
SafeCast TransformStream where
  safeCast = unsafeCastOnPrototypeName "TransformStream"


export %inline
Cast TransformStream Object where cast = believe_me
