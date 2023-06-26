module Web.Types.PluginArray

import JS


%default total

export data PluginArray : Type where [external]

export
ToFFI PluginArray PluginArray where toFFI = id

export
FromFFI PluginArray PluginArray where fromFFI = Just

export
SafeCast PluginArray where
  safeCast = unsafeCastOnPrototypeName "PluginArray"


export %inline
Cast PluginArray Object where cast = believe_me
