module Web.Types.BarProp

import JS


%default total

export data BarProp : Type where [external]

export
ToFFI BarProp BarProp where toFFI = id

export
FromFFI BarProp BarProp where fromFFI = Just

export
SafeCast BarProp where
  safeCast = unsafeCastOnPrototypeName "BarProp"


export %inline
Cast BarProp Object where cast = believe_me
