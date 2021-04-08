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

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data WebGL2RenderingContext : Type where [external]

export
SafeCast WebGL2RenderingContext where
  safeCast = unsafeCastOnPrototypeName "WebGL2RenderingContext"

export data WebGLActiveInfo : Type where [external]

export
SafeCast WebGLActiveInfo where
  safeCast = unsafeCastOnPrototypeName "WebGLActiveInfo"

export data WebGLBuffer : Type where [external]

export
SafeCast WebGLBuffer where
  safeCast = unsafeCastOnPrototypeName "WebGLBuffer"

export data WebGLFramebuffer : Type where [external]

export
SafeCast WebGLFramebuffer where
  safeCast = unsafeCastOnPrototypeName "WebGLFramebuffer"

export data WebGLObject : Type where [external]

export
SafeCast WebGLObject where
  safeCast = unsafeCastOnPrototypeName "WebGLObject"

export data WebGLProgram : Type where [external]

export
SafeCast WebGLProgram where
  safeCast = unsafeCastOnPrototypeName "WebGLProgram"

export data WebGLQuery : Type where [external]

export
SafeCast WebGLQuery where
  safeCast = unsafeCastOnPrototypeName "WebGLQuery"

export data WebGLRenderbuffer : Type where [external]

export
SafeCast WebGLRenderbuffer where
  safeCast = unsafeCastOnPrototypeName "WebGLRenderbuffer"

export data WebGLRenderingContext : Type where [external]

export
SafeCast WebGLRenderingContext where
  safeCast = unsafeCastOnPrototypeName "WebGLRenderingContext"

export data WebGLSampler : Type where [external]

export
SafeCast WebGLSampler where
  safeCast = unsafeCastOnPrototypeName "WebGLSampler"

export data WebGLShader : Type where [external]

export
SafeCast WebGLShader where
  safeCast = unsafeCastOnPrototypeName "WebGLShader"

export data WebGLShaderPrecisionFormat : Type where [external]

export
SafeCast WebGLShaderPrecisionFormat where
  safeCast = unsafeCastOnPrototypeName "WebGLShaderPrecisionFormat"

export data WebGLSync : Type where [external]

export
SafeCast WebGLSync where
  safeCast = unsafeCastOnPrototypeName "WebGLSync"

export data WebGLTexture : Type where [external]

export
SafeCast WebGLTexture where
  safeCast = unsafeCastOnPrototypeName "WebGLTexture"

export data WebGLTransformFeedback : Type where [external]

export
SafeCast WebGLTransformFeedback where
  safeCast = unsafeCastOnPrototypeName "WebGLTransformFeedback"

export data WebGLUniformLocation : Type where [external]

export
SafeCast WebGLUniformLocation where
  safeCast = unsafeCastOnPrototypeName "WebGLUniformLocation"

export data WebGLVertexArrayObject : Type where [external]

export
SafeCast WebGLVertexArrayObject where
  safeCast = unsafeCastOnPrototypeName "WebGLVertexArrayObject"

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export data WebGLContextAttributes : Type where [external]

export
SafeCast WebGLContextAttributes where
  safeCast = unsafeCastOnPrototypeName "WebGLContextAttributes"

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

export data WebGL2RenderingContextBase : Type where [external]

export data WebGL2RenderingContextOverloads : Type where [external]

export data WebGLRenderingContextBase : Type where [external]

export data WebGLRenderingContextOverloads : Type where [external]
