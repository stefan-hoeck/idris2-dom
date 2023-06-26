module Web.Types.NamedNodeMap

import JS


%default total

export data NamedNodeMap : Type where [external]

export
ToFFI NamedNodeMap NamedNodeMap where toFFI = id

export
FromFFI NamedNodeMap NamedNodeMap where fromFFI = Just

export
SafeCast NamedNodeMap where
  safeCast = unsafeCastOnPrototypeName "NamedNodeMap"


export %inline
Cast NamedNodeMap Object where cast = believe_me

