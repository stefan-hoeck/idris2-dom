module Web.Types.WebGLQuery

import JS
import Web.Types.WebGLObject


%default total

export data WebGLQuery : Type where [external]

export
ToFFI WebGLQuery WebGLQuery where toFFI = id

export
FromFFI WebGLQuery WebGLQuery where fromFFI = Just

export
SafeCast WebGLQuery where
  safeCast = unsafeCastOnPrototypeName "WebGLQuery"


export %inline
Cast WebGLQuery WebGLObject where cast = believe_me


export %inline
Cast WebGLQuery Object where cast = believe_me
