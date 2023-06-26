module Web.Types.DOMStringMap

import JS


%default total

export data DOMStringMap : Type where [external]

export
ToFFI DOMStringMap DOMStringMap where toFFI = id

export
FromFFI DOMStringMap DOMStringMap where fromFFI = Just

export
SafeCast DOMStringMap where
  safeCast = unsafeCastOnPrototypeName "DOMStringMap"


export %inline
Cast DOMStringMap Object where cast = believe_me

