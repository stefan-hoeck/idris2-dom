module Web.Types.Worklet

import JS


%default total

export data Worklet : Type where [external]

export
ToFFI Worklet Worklet where toFFI = id

export
FromFFI Worklet Worklet where fromFFI = Just

export
SafeCast Worklet where
  safeCast = unsafeCastOnPrototypeName "Worklet"


export %inline
Cast Worklet Object where cast = believe_me

