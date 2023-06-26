module Web.Types.CountQueuingStrategy

import JS


%default total

export data CountQueuingStrategy : Type where [external]

export
ToFFI CountQueuingStrategy CountQueuingStrategy where toFFI = id

export
FromFFI CountQueuingStrategy CountQueuingStrategy where fromFFI = Just

export
SafeCast CountQueuingStrategy where
  safeCast = unsafeCastOnPrototypeName "CountQueuingStrategy"


export %inline
Cast CountQueuingStrategy Object where cast = believe_me

