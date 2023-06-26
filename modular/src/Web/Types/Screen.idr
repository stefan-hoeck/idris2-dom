module Web.Types.Screen

import JS


%default total

export data Screen : Type where [external]

export
ToFFI Screen Screen where toFFI = id

export
FromFFI Screen Screen where fromFFI = Just

export
SafeCast Screen where
  safeCast = unsafeCastOnPrototypeName "Screen"


export %inline
Cast Screen Object where cast = believe_me
