module Web.Types.SourceBuffer

import JS
import Web.Types.EventTarget


%default total

export data SourceBuffer : Type where [external]

export
ToFFI SourceBuffer SourceBuffer where toFFI = id

export
FromFFI SourceBuffer SourceBuffer where fromFFI = Just

export
SafeCast SourceBuffer where
  safeCast = unsafeCastOnPrototypeName "SourceBuffer"


export %inline
Cast SourceBuffer EventTarget where cast = believe_me


export %inline
Cast SourceBuffer Object where cast = believe_me
