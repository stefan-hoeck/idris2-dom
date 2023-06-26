module Web.Types.WebGLVertexArrayObject

import JS
import Web.Types.WebGLObject


%default total

export data WebGLVertexArrayObject : Type where [external]

export
ToFFI WebGLVertexArrayObject WebGLVertexArrayObject where toFFI = id

export
FromFFI WebGLVertexArrayObject WebGLVertexArrayObject where fromFFI = Just

export
SafeCast WebGLVertexArrayObject where
  safeCast = unsafeCastOnPrototypeName "WebGLVertexArrayObject"


export %inline
Cast WebGLVertexArrayObject WebGLObject where cast = believe_me


export %inline
Cast WebGLVertexArrayObject Object where cast = believe_me
