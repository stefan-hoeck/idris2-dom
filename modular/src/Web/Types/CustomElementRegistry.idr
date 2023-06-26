module Web.Types.CustomElementRegistry

import JS


%default total

export data CustomElementRegistry : Type where [external]

export
ToFFI CustomElementRegistry CustomElementRegistry where toFFI = id

export
FromFFI CustomElementRegistry CustomElementRegistry where fromFFI = Just

export
SafeCast CustomElementRegistry where
  safeCast = unsafeCastOnPrototypeName "CustomElementRegistry"


export %inline
Cast CustomElementRegistry Object where cast = believe_me
