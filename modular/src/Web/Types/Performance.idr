module Web.Types.Performance

import JS
import Web.Types.EventTarget


%default total

export data Performance : Type where [external]

export
ToFFI Performance Performance where toFFI = id

export
FromFFI Performance Performance where fromFFI = Just

export
SafeCast Performance where
  safeCast = unsafeCastOnPrototypeName "Performance"


export %inline
Cast Performance EventTarget where cast = believe_me


export %inline
Cast Performance Object where cast = believe_me

