module Web.Types.WorkletGlobalScope

import JS


%default total

export data WorkletGlobalScope : Type where [external]

export
ToFFI WorkletGlobalScope WorkletGlobalScope where toFFI = id

export
FromFFI WorkletGlobalScope WorkletGlobalScope where fromFFI = Just

export
SafeCast WorkletGlobalScope where
  safeCast = unsafeCastOnPrototypeName "WorkletGlobalScope"


export %inline
Cast WorkletGlobalScope Object where cast = believe_me
