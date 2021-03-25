module Web.Webgl

import Web.Types

--------------------------------------------------------------------------------
--          Casts
--------------------------------------------------------------------------------

export
Cast WebGL2RenderingContext WebGL2RenderingContextBase where
  cast = believe_me

export
Cast WebGL2RenderingContext WebGL2RenderingContextOverloads where
  cast = believe_me

export
Cast WebGL2RenderingContext WebGLRenderingContextBase where
  cast = believe_me

export
Cast WebGLBuffer WebGLObject where
  cast = believe_me

export
Cast WebGLFramebuffer WebGLObject where
  cast = believe_me

export
Cast WebGLProgram WebGLObject where
  cast = believe_me

export
Cast WebGLQuery WebGLObject where
  cast = believe_me

export
Cast WebGLRenderbuffer WebGLObject where
  cast = believe_me

export
Cast WebGLRenderingContext WebGLRenderingContextBase where
  cast = believe_me

export
Cast WebGLRenderingContext WebGLRenderingContextOverloads where
  cast = believe_me

export
Cast WebGLSampler WebGLObject where
  cast = believe_me

export
Cast WebGLShader WebGLObject where
  cast = believe_me

export
Cast WebGLSync WebGLObject where
  cast = believe_me

export
Cast WebGLTexture WebGLObject where
  cast = believe_me

export
Cast WebGLTransformFeedback WebGLObject where
  cast = believe_me

export
Cast WebGLVertexArrayObject WebGLObject where
  cast = believe_me