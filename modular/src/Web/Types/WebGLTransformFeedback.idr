module Web.Types.WebGLTransformFeedback

import JS
import Web.Types.WebGLObject


%default total

export data WebGLTransformFeedback : Type where [external]

export
ToFFI WebGLTransformFeedback WebGLTransformFeedback where toFFI = id

export
FromFFI WebGLTransformFeedback WebGLTransformFeedback where fromFFI = Just

export
SafeCast WebGLTransformFeedback where
  safeCast = unsafeCastOnPrototypeName "WebGLTransformFeedback"


export %inline
Cast WebGLTransformFeedback WebGLObject where cast = believe_me


export %inline
Cast WebGLTransformFeedback Object where cast = believe_me
