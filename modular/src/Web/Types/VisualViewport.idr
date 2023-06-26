module Web.Types.VisualViewport

import JS
import Web.Types.EventTarget


%default total

export data VisualViewport : Type where [external]

export
ToFFI VisualViewport VisualViewport where toFFI = id

export
FromFFI VisualViewport VisualViewport where fromFFI = Just

export
SafeCast VisualViewport where
  safeCast = unsafeCastOnPrototypeName "VisualViewport"


export %inline
Cast VisualViewport EventTarget where cast = believe_me


export %inline
Cast VisualViewport Object where cast = believe_me

