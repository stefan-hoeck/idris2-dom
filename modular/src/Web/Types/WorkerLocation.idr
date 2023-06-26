module Web.Types.WorkerLocation

import JS


%default total

export data WorkerLocation : Type where [external]

export
ToFFI WorkerLocation WorkerLocation where toFFI = id

export
FromFFI WorkerLocation WorkerLocation where fromFFI = Just

export
SafeCast WorkerLocation where
  safeCast = unsafeCastOnPrototypeName "WorkerLocation"


export %inline
Cast WorkerLocation Object where cast = believe_me
