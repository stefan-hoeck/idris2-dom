module Web.Types.CaretPosition

import JS


%default total

export data CaretPosition : Type where [external]

export
ToFFI CaretPosition CaretPosition where toFFI = id

export
FromFFI CaretPosition CaretPosition where fromFFI = Just

export
SafeCast CaretPosition where
  safeCast = unsafeCastOnPrototypeName "CaretPosition"


export %inline
Cast CaretPosition Object where cast = believe_me

