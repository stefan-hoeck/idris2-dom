module Web.WebglTypes
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
  ToJS WebGLPowerPreference where
    toJS = toJS . show

  export
  FromJS WebGLPowerPreference where
    fromJS ptr = fromJS ptr >>= read

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data WebGL2RenderingContext : Type where [external]

export
SafeCast WebGL2RenderingContext where
  safeCast = unsafeCastOnPrototypeName "WebGL2RenderingContext"

export ToJS WebGL2RenderingContext where toJS = believe_me
export FromJS WebGL2RenderingContext where fromJS = safeCast

export data WebGLActiveInfo : Type where [external]

export
SafeCast WebGLActiveInfo where
  safeCast = unsafeCastOnPrototypeName "WebGLActiveInfo"

export ToJS WebGLActiveInfo where toJS = believe_me
export FromJS WebGLActiveInfo where fromJS = safeCast

export data WebGLBuffer : Type where [external]

export
SafeCast WebGLBuffer where
  safeCast = unsafeCastOnPrototypeName "WebGLBuffer"

export ToJS WebGLBuffer where toJS = believe_me
export FromJS WebGLBuffer where fromJS = safeCast

export data WebGLFramebuffer : Type where [external]

export
SafeCast WebGLFramebuffer where
  safeCast = unsafeCastOnPrototypeName "WebGLFramebuffer"

export ToJS WebGLFramebuffer where toJS = believe_me
export FromJS WebGLFramebuffer where fromJS = safeCast

export data WebGLObject : Type where [external]

export
SafeCast WebGLObject where
  safeCast = unsafeCastOnPrototypeName "WebGLObject"

export ToJS WebGLObject where toJS = believe_me
export FromJS WebGLObject where fromJS = safeCast

export data WebGLProgram : Type where [external]

export
SafeCast WebGLProgram where
  safeCast = unsafeCastOnPrototypeName "WebGLProgram"

export ToJS WebGLProgram where toJS = believe_me
export FromJS WebGLProgram where fromJS = safeCast

export data WebGLQuery : Type where [external]

export
SafeCast WebGLQuery where
  safeCast = unsafeCastOnPrototypeName "WebGLQuery"

export ToJS WebGLQuery where toJS = believe_me
export FromJS WebGLQuery where fromJS = safeCast

export data WebGLRenderbuffer : Type where [external]

export
SafeCast WebGLRenderbuffer where
  safeCast = unsafeCastOnPrototypeName "WebGLRenderbuffer"

export ToJS WebGLRenderbuffer where toJS = believe_me
export FromJS WebGLRenderbuffer where fromJS = safeCast

export data WebGLRenderingContext : Type where [external]

export
SafeCast WebGLRenderingContext where
  safeCast = unsafeCastOnPrototypeName "WebGLRenderingContext"

export ToJS WebGLRenderingContext where toJS = believe_me
export FromJS WebGLRenderingContext where fromJS = safeCast

export data WebGLSampler : Type where [external]

export
SafeCast WebGLSampler where
  safeCast = unsafeCastOnPrototypeName "WebGLSampler"

export ToJS WebGLSampler where toJS = believe_me
export FromJS WebGLSampler where fromJS = safeCast

export data WebGLShader : Type where [external]

export
SafeCast WebGLShader where
  safeCast = unsafeCastOnPrototypeName "WebGLShader"

export ToJS WebGLShader where toJS = believe_me
export FromJS WebGLShader where fromJS = safeCast

export data WebGLShaderPrecisionFormat : Type where [external]

export
SafeCast WebGLShaderPrecisionFormat where
  safeCast = unsafeCastOnPrototypeName "WebGLShaderPrecisionFormat"

export ToJS WebGLShaderPrecisionFormat where toJS = believe_me
export FromJS WebGLShaderPrecisionFormat where fromJS = safeCast

export data WebGLSync : Type where [external]

export
SafeCast WebGLSync where
  safeCast = unsafeCastOnPrototypeName "WebGLSync"

export ToJS WebGLSync where toJS = believe_me
export FromJS WebGLSync where fromJS = safeCast

export data WebGLTexture : Type where [external]

export
SafeCast WebGLTexture where
  safeCast = unsafeCastOnPrototypeName "WebGLTexture"

export ToJS WebGLTexture where toJS = believe_me
export FromJS WebGLTexture where fromJS = safeCast

export data WebGLTransformFeedback : Type where [external]

export
SafeCast WebGLTransformFeedback where
  safeCast = unsafeCastOnPrototypeName "WebGLTransformFeedback"

export ToJS WebGLTransformFeedback where toJS = believe_me
export FromJS WebGLTransformFeedback where fromJS = safeCast

export data WebGLUniformLocation : Type where [external]

export
SafeCast WebGLUniformLocation where
  safeCast = unsafeCastOnPrototypeName "WebGLUniformLocation"

export ToJS WebGLUniformLocation where toJS = believe_me
export FromJS WebGLUniformLocation where fromJS = safeCast

export data WebGLVertexArrayObject : Type where [external]

export
SafeCast WebGLVertexArrayObject where
  safeCast = unsafeCastOnPrototypeName "WebGLVertexArrayObject"

export ToJS WebGLVertexArrayObject where toJS = believe_me
export FromJS WebGLVertexArrayObject where fromJS = safeCast

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

export data WebGL2RenderingContextBase : Type where [external]

export ToJS WebGL2RenderingContextBase where toJS = believe_me
export FromJS WebGL2RenderingContextBase where fromJS ptr = Just (believe_me ptr)

export data WebGL2RenderingContextOverloads : Type where [external]

export ToJS WebGL2RenderingContextOverloads where toJS = believe_me
export FromJS WebGL2RenderingContextOverloads where fromJS ptr = Just (believe_me ptr)

export data WebGLRenderingContextBase : Type where [external]

export ToJS WebGLRenderingContextBase where toJS = believe_me
export FromJS WebGLRenderingContextBase where fromJS ptr = Just (believe_me ptr)

export data WebGLRenderingContextOverloads : Type where [external]

export ToJS WebGLRenderingContextOverloads where toJS = believe_me
export FromJS WebGLRenderingContextOverloads where fromJS ptr = Just (believe_me ptr)

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export data WebGLContextAttributes : Type where [external]

export
SafeCast WebGLContextAttributes where
  safeCast = unsafeCastOnPrototypeName "WebGLContextAttributes"

export ToJS WebGLContextAttributes where toJS = believe_me
export FromJS WebGLContextAttributes where fromJS = safeCast