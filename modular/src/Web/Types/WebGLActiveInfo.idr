module Web.Types.WebGLActiveInfo

import JS


%default total

export data WebGLActiveInfo : Type where [external]

export
ToFFI WebGLActiveInfo WebGLActiveInfo where toFFI = id

export
FromFFI WebGLActiveInfo WebGLActiveInfo where fromFFI = Just

export
SafeCast WebGLActiveInfo where
  safeCast = unsafeCastOnPrototypeName "WebGLActiveInfo"


export %inline
Cast WebGLActiveInfo Object where cast = believe_me

