module Web.Types.WebGLContextAttributes

import JS


%default total

export data WebGLContextAttributes : Type where [external]

export
ToFFI WebGLContextAttributes WebGLContextAttributes where toFFI = id

export
FromFFI WebGLContextAttributes WebGLContextAttributes where fromFFI = Just


export %inline
Cast WebGLContextAttributes Object where cast = believe_me

