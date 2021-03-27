module Web.WebglTypes
import JS.Util

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
    fromJS = fromMaybe Default . read . fromJS

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------
export
data WebGL2RenderingContext  : Type where [external]

export
ToJS WebGL2RenderingContext where
  toJS = believe_me

export
FromJS WebGL2RenderingContext where
  fromJS = believe_me
export
data WebGLActiveInfo  : Type where [external]

export
ToJS WebGLActiveInfo where
  toJS = believe_me

export
FromJS WebGLActiveInfo where
  fromJS = believe_me
export
data WebGLBuffer  : Type where [external]

export
ToJS WebGLBuffer where
  toJS = believe_me

export
FromJS WebGLBuffer where
  fromJS = believe_me
export
data WebGLFramebuffer  : Type where [external]

export
ToJS WebGLFramebuffer where
  toJS = believe_me

export
FromJS WebGLFramebuffer where
  fromJS = believe_me
export
data WebGLObject  : Type where [external]

export
ToJS WebGLObject where
  toJS = believe_me

export
FromJS WebGLObject where
  fromJS = believe_me
export
data WebGLProgram  : Type where [external]

export
ToJS WebGLProgram where
  toJS = believe_me

export
FromJS WebGLProgram where
  fromJS = believe_me
export
data WebGLQuery  : Type where [external]

export
ToJS WebGLQuery where
  toJS = believe_me

export
FromJS WebGLQuery where
  fromJS = believe_me
export
data WebGLRenderbuffer  : Type where [external]

export
ToJS WebGLRenderbuffer where
  toJS = believe_me

export
FromJS WebGLRenderbuffer where
  fromJS = believe_me
export
data WebGLRenderingContext  : Type where [external]

export
ToJS WebGLRenderingContext where
  toJS = believe_me

export
FromJS WebGLRenderingContext where
  fromJS = believe_me
export
data WebGLSampler  : Type where [external]

export
ToJS WebGLSampler where
  toJS = believe_me

export
FromJS WebGLSampler where
  fromJS = believe_me
export
data WebGLShader  : Type where [external]

export
ToJS WebGLShader where
  toJS = believe_me

export
FromJS WebGLShader where
  fromJS = believe_me
export
data WebGLShaderPrecisionFormat  : Type where [external]

export
ToJS WebGLShaderPrecisionFormat where
  toJS = believe_me

export
FromJS WebGLShaderPrecisionFormat where
  fromJS = believe_me
export
data WebGLSync  : Type where [external]

export
ToJS WebGLSync where
  toJS = believe_me

export
FromJS WebGLSync where
  fromJS = believe_me
export
data WebGLTexture  : Type where [external]

export
ToJS WebGLTexture where
  toJS = believe_me

export
FromJS WebGLTexture where
  fromJS = believe_me
export
data WebGLTransformFeedback  : Type where [external]

export
ToJS WebGLTransformFeedback where
  toJS = believe_me

export
FromJS WebGLTransformFeedback where
  fromJS = believe_me
export
data WebGLUniformLocation  : Type where [external]

export
ToJS WebGLUniformLocation where
  toJS = believe_me

export
FromJS WebGLUniformLocation where
  fromJS = believe_me
export
data WebGLVertexArrayObject  : Type where [external]

export
ToJS WebGLVertexArrayObject where
  toJS = believe_me

export
FromJS WebGLVertexArrayObject where
  fromJS = believe_me

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------
export
data WebGL2RenderingContextBase  : Type where [external]

export
ToJS WebGL2RenderingContextBase where
  toJS = believe_me

export
FromJS WebGL2RenderingContextBase where
  fromJS = believe_me
export
data WebGL2RenderingContextOverloads  : Type where [external]

export
ToJS WebGL2RenderingContextOverloads where
  toJS = believe_me

export
FromJS WebGL2RenderingContextOverloads where
  fromJS = believe_me
export
data WebGLRenderingContextBase  : Type where [external]

export
ToJS WebGLRenderingContextBase where
  toJS = believe_me

export
FromJS WebGLRenderingContextBase where
  fromJS = believe_me
export
data WebGLRenderingContextOverloads  : Type where [external]

export
ToJS WebGLRenderingContextOverloads where
  toJS = believe_me

export
FromJS WebGLRenderingContextOverloads where
  fromJS = believe_me

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------
export
data WebGLContextAttributes  : Type where [external]

export
ToJS WebGLContextAttributes where
  toJS = believe_me

export
FromJS WebGLContextAttributes where
  fromJS = believe_me