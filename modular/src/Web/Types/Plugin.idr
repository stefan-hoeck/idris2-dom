module Web.Types.Plugin

import JS


%default total

export data Plugin : Type where [external]

export
ToFFI Plugin Plugin where toFFI = id

export
FromFFI Plugin Plugin where fromFFI = Just

export
SafeCast Plugin where
  safeCast = unsafeCastOnPrototypeName "Plugin"


export %inline
Cast Plugin Object where cast = believe_me
