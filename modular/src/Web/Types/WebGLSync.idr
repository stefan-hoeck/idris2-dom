module Web.Types.WebGLSync

import JS
import Web.Types.WebGLObject


%default total

export data WebGLSync : Type where [external]

export
ToFFI WebGLSync WebGLSync where toFFI = id

export
FromFFI WebGLSync WebGLSync where fromFFI = Just

export
SafeCast WebGLSync where
  safeCast = unsafeCastOnPrototypeName "WebGLSync"


export %inline
Cast WebGLSync WebGLObject where cast = believe_me


export %inline
Cast WebGLSync Object where cast = believe_me

