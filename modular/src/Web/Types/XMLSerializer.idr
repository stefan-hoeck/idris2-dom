module Web.Types.XMLSerializer

import JS


%default total

export data XMLSerializer : Type where [external]

export
ToFFI XMLSerializer XMLSerializer where toFFI = id

export
FromFFI XMLSerializer XMLSerializer where fromFFI = Just

export
SafeCast XMLSerializer where
  safeCast = unsafeCastOnPrototypeName "XMLSerializer"


export %inline
Cast XMLSerializer Object where cast = believe_me

