module Web.Internal.WebglTypes

import JS

--------------------------------------------------------------------------------
--          Enums
--------------------------------------------------------------------------------

namespace WebGLPowerPreference
  
  public export
  data WebGLPowerPreference = Default | LowPower | HighPerformance

  public export
  Show WebGLPowerPreference where
    show Default = "default"
    show LowPower = "low-power"
    show HighPerformance = "high-performance"

  public export
  Eq WebGLPowerPreference where
    (==) = (==) `on` show

  public export
  Ord WebGLPowerPreference where
    compare = compare `on` show

  public export
  read : String -> Maybe WebGLPowerPreference
  read "default" = Just Default
  read "low-power" = Just LowPower
  read "high-performance" = Just HighPerformance
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (WebGLPowerPreference.read s)}
             -> WebGLPowerPreference
  fromString s = fromJust $ read s

  export
  ToFFI WebGLPowerPreference String where
    toFFI = show

  export
  FromFFI WebGLPowerPreference String where
    fromFFI = read


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data WebGL2RenderingContext : Type where [external]

export
ToFFI WebGL2RenderingContext WebGL2RenderingContext where toFFI = id

export
FromFFI WebGL2RenderingContext WebGL2RenderingContext where fromFFI = Just

export
SafeCast WebGL2RenderingContext where
  safeCast = unsafeCastOnPrototypeName "WebGL2RenderingContext"

export data WebGLActiveInfo : Type where [external]

export
ToFFI WebGLActiveInfo WebGLActiveInfo where toFFI = id

export
FromFFI WebGLActiveInfo WebGLActiveInfo where fromFFI = Just

export
SafeCast WebGLActiveInfo where
  safeCast = unsafeCastOnPrototypeName "WebGLActiveInfo"

export data WebGLBuffer : Type where [external]

export
ToFFI WebGLBuffer WebGLBuffer where toFFI = id

export
FromFFI WebGLBuffer WebGLBuffer where fromFFI = Just

export
SafeCast WebGLBuffer where
  safeCast = unsafeCastOnPrototypeName "WebGLBuffer"

export data WebGLFramebuffer : Type where [external]

export
ToFFI WebGLFramebuffer WebGLFramebuffer where toFFI = id

export
FromFFI WebGLFramebuffer WebGLFramebuffer where fromFFI = Just

export
SafeCast WebGLFramebuffer where
  safeCast = unsafeCastOnPrototypeName "WebGLFramebuffer"

export data WebGLObject : Type where [external]

export
ToFFI WebGLObject WebGLObject where toFFI = id

export
FromFFI WebGLObject WebGLObject where fromFFI = Just

export
SafeCast WebGLObject where
  safeCast = unsafeCastOnPrototypeName "WebGLObject"

export data WebGLProgram : Type where [external]

export
ToFFI WebGLProgram WebGLProgram where toFFI = id

export
FromFFI WebGLProgram WebGLProgram where fromFFI = Just

export
SafeCast WebGLProgram where
  safeCast = unsafeCastOnPrototypeName "WebGLProgram"

export data WebGLQuery : Type where [external]

export
ToFFI WebGLQuery WebGLQuery where toFFI = id

export
FromFFI WebGLQuery WebGLQuery where fromFFI = Just

export
SafeCast WebGLQuery where
  safeCast = unsafeCastOnPrototypeName "WebGLQuery"

export data WebGLRenderbuffer : Type where [external]

export
ToFFI WebGLRenderbuffer WebGLRenderbuffer where toFFI = id

export
FromFFI WebGLRenderbuffer WebGLRenderbuffer where fromFFI = Just

export
SafeCast WebGLRenderbuffer where
  safeCast = unsafeCastOnPrototypeName "WebGLRenderbuffer"

export data WebGLRenderingContext : Type where [external]

export
ToFFI WebGLRenderingContext WebGLRenderingContext where toFFI = id

export
FromFFI WebGLRenderingContext WebGLRenderingContext where fromFFI = Just

export
SafeCast WebGLRenderingContext where
  safeCast = unsafeCastOnPrototypeName "WebGLRenderingContext"

export data WebGLSampler : Type where [external]

export
ToFFI WebGLSampler WebGLSampler where toFFI = id

export
FromFFI WebGLSampler WebGLSampler where fromFFI = Just

export
SafeCast WebGLSampler where
  safeCast = unsafeCastOnPrototypeName "WebGLSampler"

export data WebGLShader : Type where [external]

export
ToFFI WebGLShader WebGLShader where toFFI = id

export
FromFFI WebGLShader WebGLShader where fromFFI = Just

export
SafeCast WebGLShader where
  safeCast = unsafeCastOnPrototypeName "WebGLShader"

export data WebGLShaderPrecisionFormat : Type where [external]

export
ToFFI WebGLShaderPrecisionFormat WebGLShaderPrecisionFormat where toFFI = id

export
FromFFI WebGLShaderPrecisionFormat WebGLShaderPrecisionFormat where fromFFI = Just

export
SafeCast WebGLShaderPrecisionFormat where
  safeCast = unsafeCastOnPrototypeName "WebGLShaderPrecisionFormat"

export data WebGLSync : Type where [external]

export
ToFFI WebGLSync WebGLSync where toFFI = id

export
FromFFI WebGLSync WebGLSync where fromFFI = Just

export
SafeCast WebGLSync where
  safeCast = unsafeCastOnPrototypeName "WebGLSync"

export data WebGLTexture : Type where [external]

export
ToFFI WebGLTexture WebGLTexture where toFFI = id

export
FromFFI WebGLTexture WebGLTexture where fromFFI = Just

export
SafeCast WebGLTexture where
  safeCast = unsafeCastOnPrototypeName "WebGLTexture"

export data WebGLTransformFeedback : Type where [external]

export
ToFFI WebGLTransformFeedback WebGLTransformFeedback where toFFI = id

export
FromFFI WebGLTransformFeedback WebGLTransformFeedback where fromFFI = Just

export
SafeCast WebGLTransformFeedback where
  safeCast = unsafeCastOnPrototypeName "WebGLTransformFeedback"

export data WebGLUniformLocation : Type where [external]

export
ToFFI WebGLUniformLocation WebGLUniformLocation where toFFI = id

export
FromFFI WebGLUniformLocation WebGLUniformLocation where fromFFI = Just

export
SafeCast WebGLUniformLocation where
  safeCast = unsafeCastOnPrototypeName "WebGLUniformLocation"

export data WebGLVertexArrayObject : Type where [external]

export
ToFFI WebGLVertexArrayObject WebGLVertexArrayObject where toFFI = id

export
FromFFI WebGLVertexArrayObject WebGLVertexArrayObject where fromFFI = Just

export
SafeCast WebGLVertexArrayObject where
  safeCast = unsafeCastOnPrototypeName "WebGLVertexArrayObject"


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export data WebGLContextAttributes : Type where [external]

export
ToFFI WebGLContextAttributes WebGLContextAttributes where toFFI = id

export
FromFFI WebGLContextAttributes WebGLContextAttributes where fromFFI = Just


--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

export data WebGL2RenderingContextBase : Type where [external]

export
ToFFI WebGL2RenderingContextBase WebGL2RenderingContextBase where toFFI = id

export
FromFFI WebGL2RenderingContextBase WebGL2RenderingContextBase where fromFFI = Just

export data WebGL2RenderingContextOverloads : Type where [external]

export
ToFFI WebGL2RenderingContextOverloads WebGL2RenderingContextOverloads where toFFI = id

export
FromFFI WebGL2RenderingContextOverloads WebGL2RenderingContextOverloads where fromFFI = Just

export data WebGLRenderingContextBase : Type where [external]

export
ToFFI WebGLRenderingContextBase WebGLRenderingContextBase where toFFI = id

export
FromFFI WebGLRenderingContextBase WebGLRenderingContextBase where fromFFI = Just

export data WebGLRenderingContextOverloads : Type where [external]

export
ToFFI WebGLRenderingContextOverloads WebGLRenderingContextOverloads where toFFI = id

export
FromFFI WebGLRenderingContextOverloads WebGLRenderingContextOverloads where fromFFI = Just


