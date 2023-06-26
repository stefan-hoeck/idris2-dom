module Web.Types.MessageChannel

import JS


%default total

export data MessageChannel : Type where [external]

export
ToFFI MessageChannel MessageChannel where toFFI = id

export
FromFFI MessageChannel MessageChannel where fromFFI = Just

export
SafeCast MessageChannel where
  safeCast = unsafeCastOnPrototypeName "MessageChannel"


export %inline
Cast MessageChannel Object where cast = believe_me
