module Web.Types.AbstractRange

import JS


%default total

export data AbstractRange : Type where [external]

export
ToFFI AbstractRange AbstractRange where toFFI = id

export
FromFFI AbstractRange AbstractRange where fromFFI = Just

export
SafeCast AbstractRange where
  safeCast = unsafeCastOnPrototypeName "AbstractRange"


export %inline
Cast AbstractRange Object where cast = believe_me

