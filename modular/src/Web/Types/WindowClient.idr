module Web.Types.WindowClient

import JS
import Web.Types.Client


%default total

export data WindowClient : Type where [external]

export
ToFFI WindowClient WindowClient where toFFI = id

export
FromFFI WindowClient WindowClient where fromFFI = Just

export
SafeCast WindowClient where
  safeCast = unsafeCastOnPrototypeName "WindowClient"


export %inline
Cast WindowClient Client where cast = believe_me


export %inline
Cast WindowClient Object where cast = believe_me

