module Web.Types.ByteLengthQueuingStrategy

import JS


%default total

export data ByteLengthQueuingStrategy : Type where [external]

export
ToFFI ByteLengthQueuingStrategy ByteLengthQueuingStrategy where toFFI = id

export
FromFFI ByteLengthQueuingStrategy ByteLengthQueuingStrategy where fromFFI = Just

export
SafeCast ByteLengthQueuingStrategy where
  safeCast = unsafeCastOnPrototypeName "ByteLengthQueuingStrategy"


export %inline
Cast ByteLengthQueuingStrategy Object where cast = believe_me
