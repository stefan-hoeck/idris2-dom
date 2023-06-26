module Web.Types.TransformStreamDefaultController

import JS


%default total

export data TransformStreamDefaultController : Type where [external]

export
ToFFI TransformStreamDefaultController TransformStreamDefaultController where toFFI = id

export
FromFFI TransformStreamDefaultController TransformStreamDefaultController where fromFFI = Just

export
SafeCast TransformStreamDefaultController where
  safeCast = unsafeCastOnPrototypeName "TransformStreamDefaultController"


export %inline
Cast TransformStreamDefaultController Object where cast = believe_me
