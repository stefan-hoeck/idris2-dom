module Web.Types.SourceBufferList

import JS
import Web.Types.EventTarget


%default total

export data SourceBufferList : Type where [external]

export
ToFFI SourceBufferList SourceBufferList where toFFI = id

export
FromFFI SourceBufferList SourceBufferList where fromFFI = Just

export
SafeCast SourceBufferList where
  safeCast = unsafeCastOnPrototypeName "SourceBufferList"


export %inline
Cast SourceBufferList EventTarget where cast = believe_me


export %inline
Cast SourceBufferList Object where cast = believe_me
