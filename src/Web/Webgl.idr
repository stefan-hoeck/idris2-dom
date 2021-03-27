module Web.Webgl
import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace WebGL2RenderingContext
  
  public export
  JSVal WebGL2RenderingContext where
    parents =  [ JSObject ]

    mixins =  [ WebGL2RenderingContextBase
              , WebGL2RenderingContextOverloads
              , WebGLRenderingContextBase
              ]

namespace WebGLActiveInfo
  
  public export
  JSVal WebGLActiveInfo where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : WebGLActiveInfo) -> IO String
  
  %foreign "browser:lambda:x=>x.size"
  prim__size : AnyPtr -> PrimIO AnyPtr

  export
  size : (obj : WebGLActiveInfo) -> IO GLint
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : WebGLActiveInfo) -> IO GLenum

namespace WebGLBuffer
  
  public export
  JSVal WebGLBuffer where
    parents =  [ WebGLObject , JSObject ]

    mixins =  []

namespace WebGLFramebuffer
  
  public export
  JSVal WebGLFramebuffer where
    parents =  [ WebGLObject , JSObject ]

    mixins =  []

namespace WebGLObject
  
  public export
  JSVal WebGLObject where
    parents =  [ JSObject ]

    mixins =  []

namespace WebGLProgram
  
  public export
  JSVal WebGLProgram where
    parents =  [ WebGLObject , JSObject ]

    mixins =  []

namespace WebGLQuery
  
  public export
  JSVal WebGLQuery where
    parents =  [ WebGLObject , JSObject ]

    mixins =  []

namespace WebGLRenderbuffer
  
  public export
  JSVal WebGLRenderbuffer where
    parents =  [ WebGLObject , JSObject ]

    mixins =  []

namespace WebGLRenderingContext
  
  public export
  JSVal WebGLRenderingContext where
    parents =  [ JSObject ]

    mixins =  [ WebGLRenderingContextBase , WebGLRenderingContextOverloads ]

namespace WebGLSampler
  
  public export
  JSVal WebGLSampler where
    parents =  [ WebGLObject , JSObject ]

    mixins =  []

namespace WebGLShader
  
  public export
  JSVal WebGLShader where
    parents =  [ WebGLObject , JSObject ]

    mixins =  []

namespace WebGLShaderPrecisionFormat
  
  public export
  JSVal WebGLShaderPrecisionFormat where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.precision"
  prim__precision : AnyPtr -> PrimIO AnyPtr

  export
  precision : (obj : WebGLShaderPrecisionFormat) -> IO GLint
  
  %foreign "browser:lambda:x=>x.rangeMax"
  prim__rangeMax : AnyPtr -> PrimIO AnyPtr

  export
  rangeMax : (obj : WebGLShaderPrecisionFormat) -> IO GLint
  
  %foreign "browser:lambda:x=>x.rangeMin"
  prim__rangeMin : AnyPtr -> PrimIO AnyPtr

  export
  rangeMin : (obj : WebGLShaderPrecisionFormat) -> IO GLint

namespace WebGLSync
  
  public export
  JSVal WebGLSync where
    parents =  [ WebGLObject , JSObject ]

    mixins =  []

namespace WebGLTexture
  
  public export
  JSVal WebGLTexture where
    parents =  [ WebGLObject , JSObject ]

    mixins =  []

namespace WebGLTransformFeedback
  
  public export
  JSVal WebGLTransformFeedback where
    parents =  [ WebGLObject , JSObject ]

    mixins =  []

namespace WebGLUniformLocation
  
  public export
  JSVal WebGLUniformLocation where
    parents =  [ JSObject ]

    mixins =  []

namespace WebGLVertexArrayObject
  
  public export
  JSVal WebGLVertexArrayObject where
    parents =  [ WebGLObject , JSObject ]

    mixins =  []

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace WebGL2RenderingContextBase
  
  public export
  ACTIVE_UNIFORM_BLOCKS : GLenum
  ACTIVE_UNIFORM_BLOCKS = 0x8A36
  
  public export
  ALREADY_SIGNALED : GLenum
  ALREADY_SIGNALED = 0x911A
  
  public export
  ANY_SAMPLES_PASSED : GLenum
  ANY_SAMPLES_PASSED = 0x8C2F
  
  public export
  ANY_SAMPLES_PASSED_CONSERVATIVE : GLenum
  ANY_SAMPLES_PASSED_CONSERVATIVE = 0x8D6A
  
  public export
  COLOR : GLenum
  COLOR = 0x1800
  
  public export
  COLOR_ATTACHMENT1 : GLenum
  COLOR_ATTACHMENT1 = 0x8CE1
  
  public export
  COLOR_ATTACHMENT10 : GLenum
  COLOR_ATTACHMENT10 = 0x8CEA
  
  public export
  COLOR_ATTACHMENT11 : GLenum
  COLOR_ATTACHMENT11 = 0x8CEB
  
  public export
  COLOR_ATTACHMENT12 : GLenum
  COLOR_ATTACHMENT12 = 0x8CEC
  
  public export
  COLOR_ATTACHMENT13 : GLenum
  COLOR_ATTACHMENT13 = 0x8CED
  
  public export
  COLOR_ATTACHMENT14 : GLenum
  COLOR_ATTACHMENT14 = 0x8CEE
  
  public export
  COLOR_ATTACHMENT15 : GLenum
  COLOR_ATTACHMENT15 = 0x8CEF
  
  public export
  COLOR_ATTACHMENT2 : GLenum
  COLOR_ATTACHMENT2 = 0x8CE2
  
  public export
  COLOR_ATTACHMENT3 : GLenum
  COLOR_ATTACHMENT3 = 0x8CE3
  
  public export
  COLOR_ATTACHMENT4 : GLenum
  COLOR_ATTACHMENT4 = 0x8CE4
  
  public export
  COLOR_ATTACHMENT5 : GLenum
  COLOR_ATTACHMENT5 = 0x8CE5
  
  public export
  COLOR_ATTACHMENT6 : GLenum
  COLOR_ATTACHMENT6 = 0x8CE6
  
  public export
  COLOR_ATTACHMENT7 : GLenum
  COLOR_ATTACHMENT7 = 0x8CE7
  
  public export
  COLOR_ATTACHMENT8 : GLenum
  COLOR_ATTACHMENT8 = 0x8CE8
  
  public export
  COLOR_ATTACHMENT9 : GLenum
  COLOR_ATTACHMENT9 = 0x8CE9
  
  public export
  COMPARE_REF_TO_TEXTURE : GLenum
  COMPARE_REF_TO_TEXTURE = 0x884E
  
  public export
  CONDITION_SATISFIED : GLenum
  CONDITION_SATISFIED = 0x911C
  
  public export
  COPY_READ_BUFFER : GLenum
  COPY_READ_BUFFER = 0x8F36
  
  public export
  COPY_READ_BUFFER_BINDING : GLenum
  COPY_READ_BUFFER_BINDING = 0x8F36
  
  public export
  COPY_WRITE_BUFFER : GLenum
  COPY_WRITE_BUFFER = 0x8F37
  
  public export
  COPY_WRITE_BUFFER_BINDING : GLenum
  COPY_WRITE_BUFFER_BINDING = 0x8F37
  
  public export
  CURRENT_QUERY : GLenum
  CURRENT_QUERY = 0x8865
  
  public export
  DEPTH : GLenum
  DEPTH = 0x1801
  
  public export
  DEPTH24_STENCIL8 : GLenum
  DEPTH24_STENCIL8 = 0x88F0
  
  public export
  DEPTH32F_STENCIL8 : GLenum
  DEPTH32F_STENCIL8 = 0x8CAD
  
  public export
  DEPTH_COMPONENT24 : GLenum
  DEPTH_COMPONENT24 = 0x81A6
  
  public export
  DEPTH_COMPONENT32F : GLenum
  DEPTH_COMPONENT32F = 0x8CAC
  
  public export
  DRAW_BUFFER0 : GLenum
  DRAW_BUFFER0 = 0x8825
  
  public export
  DRAW_BUFFER1 : GLenum
  DRAW_BUFFER1 = 0x8826
  
  public export
  DRAW_BUFFER10 : GLenum
  DRAW_BUFFER10 = 0x882F
  
  public export
  DRAW_BUFFER11 : GLenum
  DRAW_BUFFER11 = 0x8830
  
  public export
  DRAW_BUFFER12 : GLenum
  DRAW_BUFFER12 = 0x8831
  
  public export
  DRAW_BUFFER13 : GLenum
  DRAW_BUFFER13 = 0x8832
  
  public export
  DRAW_BUFFER14 : GLenum
  DRAW_BUFFER14 = 0x8833
  
  public export
  DRAW_BUFFER15 : GLenum
  DRAW_BUFFER15 = 0x8834
  
  public export
  DRAW_BUFFER2 : GLenum
  DRAW_BUFFER2 = 0x8827
  
  public export
  DRAW_BUFFER3 : GLenum
  DRAW_BUFFER3 = 0x8828
  
  public export
  DRAW_BUFFER4 : GLenum
  DRAW_BUFFER4 = 0x8829
  
  public export
  DRAW_BUFFER5 : GLenum
  DRAW_BUFFER5 = 0x882A
  
  public export
  DRAW_BUFFER6 : GLenum
  DRAW_BUFFER6 = 0x882B
  
  public export
  DRAW_BUFFER7 : GLenum
  DRAW_BUFFER7 = 0x882C
  
  public export
  DRAW_BUFFER8 : GLenum
  DRAW_BUFFER8 = 0x882D
  
  public export
  DRAW_BUFFER9 : GLenum
  DRAW_BUFFER9 = 0x882E
  
  public export
  DRAW_FRAMEBUFFER : GLenum
  DRAW_FRAMEBUFFER = 0x8CA9
  
  public export
  DRAW_FRAMEBUFFER_BINDING : GLenum
  DRAW_FRAMEBUFFER_BINDING = 0x8CA6
  
  public export
  DYNAMIC_COPY : GLenum
  DYNAMIC_COPY = 0x88EA
  
  public export
  DYNAMIC_READ : GLenum
  DYNAMIC_READ = 0x88E9
  
  public export
  FLOAT_32_UNSIGNED_INT_24_8_REV : GLenum
  FLOAT_32_UNSIGNED_INT_24_8_REV = 0x8DAD
  
  public export
  FLOAT_MAT2x3 : GLenum
  FLOAT_MAT2x3 = 0x8B65
  
  public export
  FLOAT_MAT2x4 : GLenum
  FLOAT_MAT2x4 = 0x8B66
  
  public export
  FLOAT_MAT3x2 : GLenum
  FLOAT_MAT3x2 = 0x8B67
  
  public export
  FLOAT_MAT3x4 : GLenum
  FLOAT_MAT3x4 = 0x8B68
  
  public export
  FLOAT_MAT4x2 : GLenum
  FLOAT_MAT4x2 = 0x8B69
  
  public export
  FLOAT_MAT4x3 : GLenum
  FLOAT_MAT4x3 = 0x8B6A
  
  public export
  FRAGMENT_SHADER_DERIVATIVE_HINT : GLenum
  FRAGMENT_SHADER_DERIVATIVE_HINT = 0x8B8B
  
  public export
  FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE : GLenum
  FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE = 0x8215
  
  public export
  FRAMEBUFFER_ATTACHMENT_BLUE_SIZE : GLenum
  FRAMEBUFFER_ATTACHMENT_BLUE_SIZE = 0x8214
  
  public export
  FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING : GLenum
  FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING = 0x8210
  
  public export
  FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE : GLenum
  FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE = 0x8211
  
  public export
  FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE : GLenum
  FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE = 0x8216
  
  public export
  FRAMEBUFFER_ATTACHMENT_GREEN_SIZE : GLenum
  FRAMEBUFFER_ATTACHMENT_GREEN_SIZE = 0x8213
  
  public export
  FRAMEBUFFER_ATTACHMENT_RED_SIZE : GLenum
  FRAMEBUFFER_ATTACHMENT_RED_SIZE = 0x8212
  
  public export
  FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE : GLenum
  FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE = 0x8217
  
  public export
  FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER : GLenum
  FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER = 0x8CD4
  
  public export
  FRAMEBUFFER_DEFAULT : GLenum
  FRAMEBUFFER_DEFAULT = 0x8218
  
  public export
  FRAMEBUFFER_INCOMPLETE_MULTISAMPLE : GLenum
  FRAMEBUFFER_INCOMPLETE_MULTISAMPLE = 0x8D56
  
  public export
  HALF_FLOAT : GLenum
  HALF_FLOAT = 0x140B
  
  public export
  INTERLEAVED_ATTRIBS : GLenum
  INTERLEAVED_ATTRIBS = 0x8C8C
  
  public export
  INT_2_10_10_10_REV : GLenum
  INT_2_10_10_10_REV = 0x8D9F
  
  public export
  INT_SAMPLER_2D : GLenum
  INT_SAMPLER_2D = 0x8DCA
  
  public export
  INT_SAMPLER_2D_ARRAY : GLenum
  INT_SAMPLER_2D_ARRAY = 0x8DCF
  
  public export
  INT_SAMPLER_3D : GLenum
  INT_SAMPLER_3D = 0x8DCB
  
  public export
  INT_SAMPLER_CUBE : GLenum
  INT_SAMPLER_CUBE = 0x8DCC
  
  public export
  INVALID_INDEX : GLenum
  INVALID_INDEX = 0xFFFFFFFF
  
  public export
  MAX : GLenum
  MAX = 0x8008
  
  public export
  MAX_3D_TEXTURE_SIZE : GLenum
  MAX_3D_TEXTURE_SIZE = 0x8073
  
  public export
  MAX_ARRAY_TEXTURE_LAYERS : GLenum
  MAX_ARRAY_TEXTURE_LAYERS = 0x88FF
  
  public export
  MAX_CLIENT_WAIT_TIMEOUT_WEBGL : GLenum
  MAX_CLIENT_WAIT_TIMEOUT_WEBGL = 0x9247
  
  public export
  MAX_COLOR_ATTACHMENTS : GLenum
  MAX_COLOR_ATTACHMENTS = 0x8CDF
  
  public export
  MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS : GLenum
  MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS = 0x8A33
  
  public export
  MAX_COMBINED_UNIFORM_BLOCKS : GLenum
  MAX_COMBINED_UNIFORM_BLOCKS = 0x8A2E
  
  public export
  MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS : GLenum
  MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS = 0x8A31
  
  public export
  MAX_DRAW_BUFFERS : GLenum
  MAX_DRAW_BUFFERS = 0x8824
  
  public export
  MAX_ELEMENTS_INDICES : GLenum
  MAX_ELEMENTS_INDICES = 0x80E9
  
  public export
  MAX_ELEMENTS_VERTICES : GLenum
  MAX_ELEMENTS_VERTICES = 0x80E8
  
  public export
  MAX_ELEMENT_INDEX : GLenum
  MAX_ELEMENT_INDEX = 0x8D6B
  
  public export
  MAX_FRAGMENT_INPUT_COMPONENTS : GLenum
  MAX_FRAGMENT_INPUT_COMPONENTS = 0x9125
  
  public export
  MAX_FRAGMENT_UNIFORM_BLOCKS : GLenum
  MAX_FRAGMENT_UNIFORM_BLOCKS = 0x8A2D
  
  public export
  MAX_FRAGMENT_UNIFORM_COMPONENTS : GLenum
  MAX_FRAGMENT_UNIFORM_COMPONENTS = 0x8B49
  
  public export
  MAX_PROGRAM_TEXEL_OFFSET : GLenum
  MAX_PROGRAM_TEXEL_OFFSET = 0x8905
  
  public export
  MAX_SAMPLES : GLenum
  MAX_SAMPLES = 0x8D57
  
  public export
  MAX_SERVER_WAIT_TIMEOUT : GLenum
  MAX_SERVER_WAIT_TIMEOUT = 0x9111
  
  public export
  MAX_TEXTURE_LOD_BIAS : GLenum
  MAX_TEXTURE_LOD_BIAS = 0x84FD
  
  public export
  MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS : GLenum
  MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS = 0x8C8A
  
  public export
  MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS : GLenum
  MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS = 0x8C8B
  
  public export
  MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS : GLenum
  MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS = 0x8C80
  
  public export
  MAX_UNIFORM_BLOCK_SIZE : GLenum
  MAX_UNIFORM_BLOCK_SIZE = 0x8A30
  
  public export
  MAX_UNIFORM_BUFFER_BINDINGS : GLenum
  MAX_UNIFORM_BUFFER_BINDINGS = 0x8A2F
  
  public export
  MAX_VARYING_COMPONENTS : GLenum
  MAX_VARYING_COMPONENTS = 0x8B4B
  
  public export
  MAX_VERTEX_OUTPUT_COMPONENTS : GLenum
  MAX_VERTEX_OUTPUT_COMPONENTS = 0x9122
  
  public export
  MAX_VERTEX_UNIFORM_BLOCKS : GLenum
  MAX_VERTEX_UNIFORM_BLOCKS = 0x8A2B
  
  public export
  MAX_VERTEX_UNIFORM_COMPONENTS : GLenum
  MAX_VERTEX_UNIFORM_COMPONENTS = 0x8B4A
  
  public export
  MIN : GLenum
  MIN = 0x8007
  
  public export
  MIN_PROGRAM_TEXEL_OFFSET : GLenum
  MIN_PROGRAM_TEXEL_OFFSET = 0x8904
  
  public export
  OBJECT_TYPE : GLenum
  OBJECT_TYPE = 0x9112
  
  public export
  PACK_ROW_LENGTH : GLenum
  PACK_ROW_LENGTH = 0xD02
  
  public export
  PACK_SKIP_PIXELS : GLenum
  PACK_SKIP_PIXELS = 0xD04
  
  public export
  PACK_SKIP_ROWS : GLenum
  PACK_SKIP_ROWS = 0xD03
  
  public export
  PIXEL_PACK_BUFFER : GLenum
  PIXEL_PACK_BUFFER = 0x88EB
  
  public export
  PIXEL_PACK_BUFFER_BINDING : GLenum
  PIXEL_PACK_BUFFER_BINDING = 0x88ED
  
  public export
  PIXEL_UNPACK_BUFFER : GLenum
  PIXEL_UNPACK_BUFFER = 0x88EC
  
  public export
  PIXEL_UNPACK_BUFFER_BINDING : GLenum
  PIXEL_UNPACK_BUFFER_BINDING = 0x88EF
  
  public export
  QUERY_RESULT : GLenum
  QUERY_RESULT = 0x8866
  
  public export
  QUERY_RESULT_AVAILABLE : GLenum
  QUERY_RESULT_AVAILABLE = 0x8867
  
  public export
  R11F_G11F_B10F : GLenum
  R11F_G11F_B10F = 0x8C3A
  
  public export
  R16F : GLenum
  R16F = 0x822D
  
  public export
  R16I : GLenum
  R16I = 0x8233
  
  public export
  R16UI : GLenum
  R16UI = 0x8234
  
  public export
  R32F : GLenum
  R32F = 0x822E
  
  public export
  R32I : GLenum
  R32I = 0x8235
  
  public export
  R32UI : GLenum
  R32UI = 0x8236
  
  public export
  R8 : GLenum
  R8 = 0x8229
  
  public export
  R8I : GLenum
  R8I = 0x8231
  
  public export
  R8UI : GLenum
  R8UI = 0x8232
  
  public export
  R8_SNORM : GLenum
  R8_SNORM = 0x8F94
  
  public export
  RASTERIZER_DISCARD : GLenum
  RASTERIZER_DISCARD = 0x8C89
  
  public export
  READ_BUFFER : GLenum
  READ_BUFFER = 0xC02
  
  public export
  READ_FRAMEBUFFER : GLenum
  READ_FRAMEBUFFER = 0x8CA8
  
  public export
  READ_FRAMEBUFFER_BINDING : GLenum
  READ_FRAMEBUFFER_BINDING = 0x8CAA
  
  public export
  RED : GLenum
  RED = 0x1903
  
  public export
  RED_INTEGER : GLenum
  RED_INTEGER = 0x8D94
  
  public export
  RENDERBUFFER_SAMPLES : GLenum
  RENDERBUFFER_SAMPLES = 0x8CAB
  
  public export
  RG : GLenum
  RG = 0x8227
  
  public export
  RG16F : GLenum
  RG16F = 0x822F
  
  public export
  RG16I : GLenum
  RG16I = 0x8239
  
  public export
  RG16UI : GLenum
  RG16UI = 0x823A
  
  public export
  RG32F : GLenum
  RG32F = 0x8230
  
  public export
  RG32I : GLenum
  RG32I = 0x823B
  
  public export
  RG32UI : GLenum
  RG32UI = 0x823C
  
  public export
  RG8 : GLenum
  RG8 = 0x822B
  
  public export
  RG8I : GLenum
  RG8I = 0x8237
  
  public export
  RG8UI : GLenum
  RG8UI = 0x8238
  
  public export
  RG8_SNORM : GLenum
  RG8_SNORM = 0x8F95
  
  public export
  RGB10_A2 : GLenum
  RGB10_A2 = 0x8059
  
  public export
  RGB10_A2UI : GLenum
  RGB10_A2UI = 0x906F
  
  public export
  RGB16F : GLenum
  RGB16F = 0x881B
  
  public export
  RGB16I : GLenum
  RGB16I = 0x8D89
  
  public export
  RGB16UI : GLenum
  RGB16UI = 0x8D77
  
  public export
  RGB32F : GLenum
  RGB32F = 0x8815
  
  public export
  RGB32I : GLenum
  RGB32I = 0x8D83
  
  public export
  RGB32UI : GLenum
  RGB32UI = 0x8D71
  
  public export
  RGB8 : GLenum
  RGB8 = 0x8051
  
  public export
  RGB8I : GLenum
  RGB8I = 0x8D8F
  
  public export
  RGB8UI : GLenum
  RGB8UI = 0x8D7D
  
  public export
  RGB8_SNORM : GLenum
  RGB8_SNORM = 0x8F96
  
  public export
  RGB9_E5 : GLenum
  RGB9_E5 = 0x8C3D
  
  public export
  RGBA16F : GLenum
  RGBA16F = 0x881A
  
  public export
  RGBA16I : GLenum
  RGBA16I = 0x8D88
  
  public export
  RGBA16UI : GLenum
  RGBA16UI = 0x8D76
  
  public export
  RGBA32F : GLenum
  RGBA32F = 0x8814
  
  public export
  RGBA32I : GLenum
  RGBA32I = 0x8D82
  
  public export
  RGBA32UI : GLenum
  RGBA32UI = 0x8D70
  
  public export
  RGBA8 : GLenum
  RGBA8 = 0x8058
  
  public export
  RGBA8I : GLenum
  RGBA8I = 0x8D8E
  
  public export
  RGBA8UI : GLenum
  RGBA8UI = 0x8D7C
  
  public export
  RGBA8_SNORM : GLenum
  RGBA8_SNORM = 0x8F97
  
  public export
  RGBA_INTEGER : GLenum
  RGBA_INTEGER = 0x8D99
  
  public export
  RGB_INTEGER : GLenum
  RGB_INTEGER = 0x8D98
  
  public export
  RG_INTEGER : GLenum
  RG_INTEGER = 0x8228
  
  public export
  SAMPLER_2D_ARRAY : GLenum
  SAMPLER_2D_ARRAY = 0x8DC1
  
  public export
  SAMPLER_2D_ARRAY_SHADOW : GLenum
  SAMPLER_2D_ARRAY_SHADOW = 0x8DC4
  
  public export
  SAMPLER_2D_SHADOW : GLenum
  SAMPLER_2D_SHADOW = 0x8B62
  
  public export
  SAMPLER_3D : GLenum
  SAMPLER_3D = 0x8B5F
  
  public export
  SAMPLER_BINDING : GLenum
  SAMPLER_BINDING = 0x8919
  
  public export
  SAMPLER_CUBE_SHADOW : GLenum
  SAMPLER_CUBE_SHADOW = 0x8DC5
  
  public export
  SEPARATE_ATTRIBS : GLenum
  SEPARATE_ATTRIBS = 0x8C8D
  
  public export
  SIGNALED : GLenum
  SIGNALED = 0x9119
  
  public export
  SIGNED_NORMALIZED : GLenum
  SIGNED_NORMALIZED = 0x8F9C
  
  public export
  SRGB : GLenum
  SRGB = 0x8C40
  
  public export
  SRGB8 : GLenum
  SRGB8 = 0x8C41
  
  public export
  SRGB8_ALPHA8 : GLenum
  SRGB8_ALPHA8 = 0x8C43
  
  public export
  STATIC_COPY : GLenum
  STATIC_COPY = 0x88E6
  
  public export
  STATIC_READ : GLenum
  STATIC_READ = 0x88E5
  
  public export
  STENCIL : GLenum
  STENCIL = 0x1802
  
  public export
  STREAM_COPY : GLenum
  STREAM_COPY = 0x88E2
  
  public export
  STREAM_READ : GLenum
  STREAM_READ = 0x88E1
  
  public export
  SYNC_CONDITION : GLenum
  SYNC_CONDITION = 0x9113
  
  public export
  SYNC_FENCE : GLenum
  SYNC_FENCE = 0x9116
  
  public export
  SYNC_FLAGS : GLenum
  SYNC_FLAGS = 0x9115
  
  public export
  SYNC_FLUSH_COMMANDS_BIT : GLenum
  SYNC_FLUSH_COMMANDS_BIT = 0x1
  
  public export
  SYNC_GPU_COMMANDS_COMPLETE : GLenum
  SYNC_GPU_COMMANDS_COMPLETE = 0x9117
  
  public export
  SYNC_STATUS : GLenum
  SYNC_STATUS = 0x9114
  
  public export
  TEXTURE_2D_ARRAY : GLenum
  TEXTURE_2D_ARRAY = 0x8C1A
  
  public export
  TEXTURE_3D : GLenum
  TEXTURE_3D = 0x806F
  
  public export
  TEXTURE_BASE_LEVEL : GLenum
  TEXTURE_BASE_LEVEL = 0x813C
  
  public export
  TEXTURE_BINDING_2D_ARRAY : GLenum
  TEXTURE_BINDING_2D_ARRAY = 0x8C1D
  
  public export
  TEXTURE_BINDING_3D : GLenum
  TEXTURE_BINDING_3D = 0x806A
  
  public export
  TEXTURE_COMPARE_FUNC : GLenum
  TEXTURE_COMPARE_FUNC = 0x884D
  
  public export
  TEXTURE_COMPARE_MODE : GLenum
  TEXTURE_COMPARE_MODE = 0x884C
  
  public export
  TEXTURE_IMMUTABLE_FORMAT : GLenum
  TEXTURE_IMMUTABLE_FORMAT = 0x912F
  
  public export
  TEXTURE_IMMUTABLE_LEVELS : GLenum
  TEXTURE_IMMUTABLE_LEVELS = 0x82DF
  
  public export
  TEXTURE_MAX_LEVEL : GLenum
  TEXTURE_MAX_LEVEL = 0x813D
  
  public export
  TEXTURE_MAX_LOD : GLenum
  TEXTURE_MAX_LOD = 0x813B
  
  public export
  TEXTURE_MIN_LOD : GLenum
  TEXTURE_MIN_LOD = 0x813A
  
  public export
  TEXTURE_WRAP_R : GLenum
  TEXTURE_WRAP_R = 0x8072
  
  public export
  TIMEOUT_EXPIRED : GLenum
  TIMEOUT_EXPIRED = 0x911B
  
  public export
  TIMEOUT_IGNORED : GLint64
  TIMEOUT_IGNORED = -1
  
  public export
  TRANSFORM_FEEDBACK : GLenum
  TRANSFORM_FEEDBACK = 0x8E22
  
  public export
  TRANSFORM_FEEDBACK_ACTIVE : GLenum
  TRANSFORM_FEEDBACK_ACTIVE = 0x8E24
  
  public export
  TRANSFORM_FEEDBACK_BINDING : GLenum
  TRANSFORM_FEEDBACK_BINDING = 0x8E25
  
  public export
  TRANSFORM_FEEDBACK_BUFFER : GLenum
  TRANSFORM_FEEDBACK_BUFFER = 0x8C8E
  
  public export
  TRANSFORM_FEEDBACK_BUFFER_BINDING : GLenum
  TRANSFORM_FEEDBACK_BUFFER_BINDING = 0x8C8F
  
  public export
  TRANSFORM_FEEDBACK_BUFFER_MODE : GLenum
  TRANSFORM_FEEDBACK_BUFFER_MODE = 0x8C7F
  
  public export
  TRANSFORM_FEEDBACK_BUFFER_SIZE : GLenum
  TRANSFORM_FEEDBACK_BUFFER_SIZE = 0x8C85
  
  public export
  TRANSFORM_FEEDBACK_BUFFER_START : GLenum
  TRANSFORM_FEEDBACK_BUFFER_START = 0x8C84
  
  public export
  TRANSFORM_FEEDBACK_PAUSED : GLenum
  TRANSFORM_FEEDBACK_PAUSED = 0x8E23
  
  public export
  TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN : GLenum
  TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN = 0x8C88
  
  public export
  TRANSFORM_FEEDBACK_VARYINGS : GLenum
  TRANSFORM_FEEDBACK_VARYINGS = 0x8C83
  
  public export
  UNIFORM_ARRAY_STRIDE : GLenum
  UNIFORM_ARRAY_STRIDE = 0x8A3C
  
  public export
  UNIFORM_BLOCK_ACTIVE_UNIFORMS : GLenum
  UNIFORM_BLOCK_ACTIVE_UNIFORMS = 0x8A42
  
  public export
  UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES : GLenum
  UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES = 0x8A43
  
  public export
  UNIFORM_BLOCK_BINDING : GLenum
  UNIFORM_BLOCK_BINDING = 0x8A3F
  
  public export
  UNIFORM_BLOCK_DATA_SIZE : GLenum
  UNIFORM_BLOCK_DATA_SIZE = 0x8A40
  
  public export
  UNIFORM_BLOCK_INDEX : GLenum
  UNIFORM_BLOCK_INDEX = 0x8A3A
  
  public export
  UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER : GLenum
  UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER = 0x8A46
  
  public export
  UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER : GLenum
  UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER = 0x8A44
  
  public export
  UNIFORM_BUFFER : GLenum
  UNIFORM_BUFFER = 0x8A11
  
  public export
  UNIFORM_BUFFER_BINDING : GLenum
  UNIFORM_BUFFER_BINDING = 0x8A28
  
  public export
  UNIFORM_BUFFER_OFFSET_ALIGNMENT : GLenum
  UNIFORM_BUFFER_OFFSET_ALIGNMENT = 0x8A34
  
  public export
  UNIFORM_BUFFER_SIZE : GLenum
  UNIFORM_BUFFER_SIZE = 0x8A2A
  
  public export
  UNIFORM_BUFFER_START : GLenum
  UNIFORM_BUFFER_START = 0x8A29
  
  public export
  UNIFORM_IS_ROW_MAJOR : GLenum
  UNIFORM_IS_ROW_MAJOR = 0x8A3E
  
  public export
  UNIFORM_MATRIX_STRIDE : GLenum
  UNIFORM_MATRIX_STRIDE = 0x8A3D
  
  public export
  UNIFORM_OFFSET : GLenum
  UNIFORM_OFFSET = 0x8A3B
  
  public export
  UNIFORM_SIZE : GLenum
  UNIFORM_SIZE = 0x8A38
  
  public export
  UNIFORM_TYPE : GLenum
  UNIFORM_TYPE = 0x8A37
  
  public export
  UNPACK_IMAGE_HEIGHT : GLenum
  UNPACK_IMAGE_HEIGHT = 0x806E
  
  public export
  UNPACK_ROW_LENGTH : GLenum
  UNPACK_ROW_LENGTH = 0xCF2
  
  public export
  UNPACK_SKIP_IMAGES : GLenum
  UNPACK_SKIP_IMAGES = 0x806D
  
  public export
  UNPACK_SKIP_PIXELS : GLenum
  UNPACK_SKIP_PIXELS = 0xCF4
  
  public export
  UNPACK_SKIP_ROWS : GLenum
  UNPACK_SKIP_ROWS = 0xCF3
  
  public export
  UNSIGNALED : GLenum
  UNSIGNALED = 0x9118
  
  public export
  UNSIGNED_INT_10F_11F_11F_REV : GLenum
  UNSIGNED_INT_10F_11F_11F_REV = 0x8C3B
  
  public export
  UNSIGNED_INT_24_8 : GLenum
  UNSIGNED_INT_24_8 = 0x84FA
  
  public export
  UNSIGNED_INT_2_10_10_10_REV : GLenum
  UNSIGNED_INT_2_10_10_10_REV = 0x8368
  
  public export
  UNSIGNED_INT_5_9_9_9_REV : GLenum
  UNSIGNED_INT_5_9_9_9_REV = 0x8C3E
  
  public export
  UNSIGNED_INT_SAMPLER_2D : GLenum
  UNSIGNED_INT_SAMPLER_2D = 0x8DD2
  
  public export
  UNSIGNED_INT_SAMPLER_2D_ARRAY : GLenum
  UNSIGNED_INT_SAMPLER_2D_ARRAY = 0x8DD7
  
  public export
  UNSIGNED_INT_SAMPLER_3D : GLenum
  UNSIGNED_INT_SAMPLER_3D = 0x8DD3
  
  public export
  UNSIGNED_INT_SAMPLER_CUBE : GLenum
  UNSIGNED_INT_SAMPLER_CUBE = 0x8DD4
  
  public export
  UNSIGNED_INT_VEC2 : GLenum
  UNSIGNED_INT_VEC2 = 0x8DC6
  
  public export
  UNSIGNED_INT_VEC3 : GLenum
  UNSIGNED_INT_VEC3 = 0x8DC7
  
  public export
  UNSIGNED_INT_VEC4 : GLenum
  UNSIGNED_INT_VEC4 = 0x8DC8
  
  public export
  UNSIGNED_NORMALIZED : GLenum
  UNSIGNED_NORMALIZED = 0x8C17
  
  public export
  VERTEX_ARRAY_BINDING : GLenum
  VERTEX_ARRAY_BINDING = 0x85B5
  
  public export
  VERTEX_ATTRIB_ARRAY_DIVISOR : GLenum
  VERTEX_ATTRIB_ARRAY_DIVISOR = 0x88FE
  
  public export
  VERTEX_ATTRIB_ARRAY_INTEGER : GLenum
  VERTEX_ATTRIB_ARRAY_INTEGER = 0x88FD
  
  public export
  WAIT_FAILED : GLenum
  WAIT_FAILED = 0x911D


namespace WebGLRenderingContextBase
  
  public export
  ACTIVE_ATTRIBUTES : GLenum
  ACTIVE_ATTRIBUTES = 0x8B89
  
  public export
  ACTIVE_TEXTURE : GLenum
  ACTIVE_TEXTURE = 0x84E0
  
  public export
  ACTIVE_UNIFORMS : GLenum
  ACTIVE_UNIFORMS = 0x8B86
  
  public export
  ALIASED_LINE_WIDTH_RANGE : GLenum
  ALIASED_LINE_WIDTH_RANGE = 0x846E
  
  public export
  ALIASED_POINT_SIZE_RANGE : GLenum
  ALIASED_POINT_SIZE_RANGE = 0x846D
  
  public export
  ALPHA : GLenum
  ALPHA = 0x1906
  
  public export
  ALPHA_BITS : GLenum
  ALPHA_BITS = 0xD55
  
  public export
  ALWAYS : GLenum
  ALWAYS = 0x207
  
  public export
  ARRAY_BUFFER : GLenum
  ARRAY_BUFFER = 0x8892
  
  public export
  ARRAY_BUFFER_BINDING : GLenum
  ARRAY_BUFFER_BINDING = 0x8894
  
  public export
  ATTACHED_SHADERS : GLenum
  ATTACHED_SHADERS = 0x8B85
  
  public export
  BACK : GLenum
  BACK = 0x405
  
  public export
  BLEND : GLenum
  BLEND = 0xBE2
  
  public export
  BLEND_COLOR : GLenum
  BLEND_COLOR = 0x8005
  
  public export
  BLEND_DST_ALPHA : GLenum
  BLEND_DST_ALPHA = 0x80CA
  
  public export
  BLEND_DST_RGB : GLenum
  BLEND_DST_RGB = 0x80C8
  
  public export
  BLEND_EQUATION : GLenum
  BLEND_EQUATION = 0x8009
  
  public export
  BLEND_EQUATION_ALPHA : GLenum
  BLEND_EQUATION_ALPHA = 0x883D
  
  public export
  BLEND_EQUATION_RGB : GLenum
  BLEND_EQUATION_RGB = 0x8009
  
  public export
  BLEND_SRC_ALPHA : GLenum
  BLEND_SRC_ALPHA = 0x80CB
  
  public export
  BLEND_SRC_RGB : GLenum
  BLEND_SRC_RGB = 0x80C9
  
  public export
  BLUE_BITS : GLenum
  BLUE_BITS = 0xD54
  
  public export
  BOOL : GLenum
  BOOL = 0x8B56
  
  public export
  BOOL_VEC2 : GLenum
  BOOL_VEC2 = 0x8B57
  
  public export
  BOOL_VEC3 : GLenum
  BOOL_VEC3 = 0x8B58
  
  public export
  BOOL_VEC4 : GLenum
  BOOL_VEC4 = 0x8B59
  
  public export
  BROWSER_DEFAULT_WEBGL : GLenum
  BROWSER_DEFAULT_WEBGL = 0x9244
  
  public export
  BUFFER_SIZE : GLenum
  BUFFER_SIZE = 0x8764
  
  public export
  BUFFER_USAGE : GLenum
  BUFFER_USAGE = 0x8765
  
  public export
  BYTE : GLenum
  BYTE = 0x1400
  
  public export
  CCW : GLenum
  CCW = 0x901
  
  public export
  CLAMP_TO_EDGE : GLenum
  CLAMP_TO_EDGE = 0x812F
  
  public export
  COLOR_ATTACHMENT0 : GLenum
  COLOR_ATTACHMENT0 = 0x8CE0
  
  public export
  COLOR_BUFFER_BIT : GLenum
  COLOR_BUFFER_BIT = 0x4000
  
  public export
  COLOR_CLEAR_VALUE : GLenum
  COLOR_CLEAR_VALUE = 0xC22
  
  public export
  COLOR_WRITEMASK : GLenum
  COLOR_WRITEMASK = 0xC23
  
  public export
  COMPILE_STATUS : GLenum
  COMPILE_STATUS = 0x8B81
  
  public export
  COMPRESSED_TEXTURE_FORMATS : GLenum
  COMPRESSED_TEXTURE_FORMATS = 0x86A3
  
  public export
  CONSTANT_ALPHA : GLenum
  CONSTANT_ALPHA = 0x8003
  
  public export
  CONSTANT_COLOR : GLenum
  CONSTANT_COLOR = 0x8001
  
  public export
  CONTEXT_LOST_WEBGL : GLenum
  CONTEXT_LOST_WEBGL = 0x9242
  
  public export
  CULL_FACE : GLenum
  CULL_FACE = 0xB44
  
  public export
  CULL_FACE_MODE : GLenum
  CULL_FACE_MODE = 0xB45
  
  public export
  CURRENT_PROGRAM : GLenum
  CURRENT_PROGRAM = 0x8B8D
  
  public export
  CURRENT_VERTEX_ATTRIB : GLenum
  CURRENT_VERTEX_ATTRIB = 0x8626
  
  public export
  CW : GLenum
  CW = 0x900
  
  public export
  DECR : GLenum
  DECR = 0x1E03
  
  public export
  DECR_WRAP : GLenum
  DECR_WRAP = 0x8508
  
  public export
  DELETE_STATUS : GLenum
  DELETE_STATUS = 0x8B80
  
  public export
  DEPTH_ATTACHMENT : GLenum
  DEPTH_ATTACHMENT = 0x8D00
  
  public export
  DEPTH_BITS : GLenum
  DEPTH_BITS = 0xD56
  
  public export
  DEPTH_BUFFER_BIT : GLenum
  DEPTH_BUFFER_BIT = 0x100
  
  public export
  DEPTH_CLEAR_VALUE : GLenum
  DEPTH_CLEAR_VALUE = 0xB73
  
  public export
  DEPTH_COMPONENT : GLenum
  DEPTH_COMPONENT = 0x1902
  
  public export
  DEPTH_COMPONENT16 : GLenum
  DEPTH_COMPONENT16 = 0x81A5
  
  public export
  DEPTH_FUNC : GLenum
  DEPTH_FUNC = 0xB74
  
  public export
  DEPTH_RANGE : GLenum
  DEPTH_RANGE = 0xB70
  
  public export
  DEPTH_STENCIL : GLenum
  DEPTH_STENCIL = 0x84F9
  
  public export
  DEPTH_STENCIL_ATTACHMENT : GLenum
  DEPTH_STENCIL_ATTACHMENT = 0x821A
  
  public export
  DEPTH_TEST : GLenum
  DEPTH_TEST = 0xB71
  
  public export
  DEPTH_WRITEMASK : GLenum
  DEPTH_WRITEMASK = 0xB72
  
  public export
  DITHER : GLenum
  DITHER = 0xBD0
  
  public export
  DONT_CARE : GLenum
  DONT_CARE = 0x1100
  
  public export
  DST_ALPHA : GLenum
  DST_ALPHA = 0x304
  
  public export
  DST_COLOR : GLenum
  DST_COLOR = 0x306
  
  public export
  DYNAMIC_DRAW : GLenum
  DYNAMIC_DRAW = 0x88E8
  
  public export
  ELEMENT_ARRAY_BUFFER : GLenum
  ELEMENT_ARRAY_BUFFER = 0x8893
  
  public export
  ELEMENT_ARRAY_BUFFER_BINDING : GLenum
  ELEMENT_ARRAY_BUFFER_BINDING = 0x8895
  
  public export
  EQUAL : GLenum
  EQUAL = 0x202
  
  public export
  FASTEST : GLenum
  FASTEST = 0x1101
  
  public export
  FLOAT : GLenum
  FLOAT = 0x1406
  
  public export
  FLOAT_MAT2 : GLenum
  FLOAT_MAT2 = 0x8B5A
  
  public export
  FLOAT_MAT3 : GLenum
  FLOAT_MAT3 = 0x8B5B
  
  public export
  FLOAT_MAT4 : GLenum
  FLOAT_MAT4 = 0x8B5C
  
  public export
  FLOAT_VEC2 : GLenum
  FLOAT_VEC2 = 0x8B50
  
  public export
  FLOAT_VEC3 : GLenum
  FLOAT_VEC3 = 0x8B51
  
  public export
  FLOAT_VEC4 : GLenum
  FLOAT_VEC4 = 0x8B52
  
  public export
  FRAGMENT_SHADER : GLenum
  FRAGMENT_SHADER = 0x8B30
  
  public export
  FRAMEBUFFER : GLenum
  FRAMEBUFFER = 0x8D40
  
  public export
  FRAMEBUFFER_ATTACHMENT_OBJECT_NAME : GLenum
  FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = 0x8CD1
  
  public export
  FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE : GLenum
  FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 0x8CD0
  
  public export
  FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE : GLenum
  FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = 0x8CD3
  
  public export
  FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL : GLenum
  FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = 0x8CD2
  
  public export
  FRAMEBUFFER_BINDING : GLenum
  FRAMEBUFFER_BINDING = 0x8CA6
  
  public export
  FRAMEBUFFER_COMPLETE : GLenum
  FRAMEBUFFER_COMPLETE = 0x8CD5
  
  public export
  FRAMEBUFFER_INCOMPLETE_ATTACHMENT : GLenum
  FRAMEBUFFER_INCOMPLETE_ATTACHMENT = 0x8CD6
  
  public export
  FRAMEBUFFER_INCOMPLETE_DIMENSIONS : GLenum
  FRAMEBUFFER_INCOMPLETE_DIMENSIONS = 0x8CD9
  
  public export
  FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT : GLenum
  FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = 0x8CD7
  
  public export
  FRAMEBUFFER_UNSUPPORTED : GLenum
  FRAMEBUFFER_UNSUPPORTED = 0x8CDD
  
  public export
  FRONT : GLenum
  FRONT = 0x404
  
  public export
  FRONT_AND_BACK : GLenum
  FRONT_AND_BACK = 0x408
  
  public export
  FRONT_FACE : GLenum
  FRONT_FACE = 0xB46
  
  public export
  FUNC_ADD : GLenum
  FUNC_ADD = 0x8006
  
  public export
  FUNC_REVERSE_SUBTRACT : GLenum
  FUNC_REVERSE_SUBTRACT = 0x800B
  
  public export
  FUNC_SUBTRACT : GLenum
  FUNC_SUBTRACT = 0x800A
  
  public export
  GENERATE_MIPMAP_HINT : GLenum
  GENERATE_MIPMAP_HINT = 0x8192
  
  public export
  GEQUAL : GLenum
  GEQUAL = 0x206
  
  public export
  GREATER : GLenum
  GREATER = 0x204
  
  public export
  GREEN_BITS : GLenum
  GREEN_BITS = 0xD53
  
  public export
  HIGH_FLOAT : GLenum
  HIGH_FLOAT = 0x8DF2
  
  public export
  HIGH_INT : GLenum
  HIGH_INT = 0x8DF5
  
  public export
  IMPLEMENTATION_COLOR_READ_FORMAT : GLenum
  IMPLEMENTATION_COLOR_READ_FORMAT = 0x8B9B
  
  public export
  IMPLEMENTATION_COLOR_READ_TYPE : GLenum
  IMPLEMENTATION_COLOR_READ_TYPE = 0x8B9A
  
  public export
  INCR : GLenum
  INCR = 0x1E02
  
  public export
  INCR_WRAP : GLenum
  INCR_WRAP = 0x8507
  
  public export
  INT : GLenum
  INT = 0x1404
  
  public export
  INT_VEC2 : GLenum
  INT_VEC2 = 0x8B53
  
  public export
  INT_VEC3 : GLenum
  INT_VEC3 = 0x8B54
  
  public export
  INT_VEC4 : GLenum
  INT_VEC4 = 0x8B55
  
  public export
  INVALID_ENUM : GLenum
  INVALID_ENUM = 0x500
  
  public export
  INVALID_FRAMEBUFFER_OPERATION : GLenum
  INVALID_FRAMEBUFFER_OPERATION = 0x506
  
  public export
  INVALID_OPERATION : GLenum
  INVALID_OPERATION = 0x502
  
  public export
  INVALID_VALUE : GLenum
  INVALID_VALUE = 0x501
  
  public export
  INVERT : GLenum
  INVERT = 0x150A
  
  public export
  KEEP : GLenum
  KEEP = 0x1E00
  
  public export
  LEQUAL : GLenum
  LEQUAL = 0x203
  
  public export
  LESS : GLenum
  LESS = 0x201
  
  public export
  LINEAR : GLenum
  LINEAR = 0x2601
  
  public export
  LINEAR_MIPMAP_LINEAR : GLenum
  LINEAR_MIPMAP_LINEAR = 0x2703
  
  public export
  LINEAR_MIPMAP_NEAREST : GLenum
  LINEAR_MIPMAP_NEAREST = 0x2701
  
  public export
  LINES : GLenum
  LINES = 0x1
  
  public export
  LINE_LOOP : GLenum
  LINE_LOOP = 0x2
  
  public export
  LINE_STRIP : GLenum
  LINE_STRIP = 0x3
  
  public export
  LINE_WIDTH : GLenum
  LINE_WIDTH = 0xB21
  
  public export
  LINK_STATUS : GLenum
  LINK_STATUS = 0x8B82
  
  public export
  LOW_FLOAT : GLenum
  LOW_FLOAT = 0x8DF0
  
  public export
  LOW_INT : GLenum
  LOW_INT = 0x8DF3
  
  public export
  LUMINANCE : GLenum
  LUMINANCE = 0x1909
  
  public export
  LUMINANCE_ALPHA : GLenum
  LUMINANCE_ALPHA = 0x190A
  
  public export
  MAX_COMBINED_TEXTURE_IMAGE_UNITS : GLenum
  MAX_COMBINED_TEXTURE_IMAGE_UNITS = 0x8B4D
  
  public export
  MAX_CUBE_MAP_TEXTURE_SIZE : GLenum
  MAX_CUBE_MAP_TEXTURE_SIZE = 0x851C
  
  public export
  MAX_FRAGMENT_UNIFORM_VECTORS : GLenum
  MAX_FRAGMENT_UNIFORM_VECTORS = 0x8DFD
  
  public export
  MAX_RENDERBUFFER_SIZE : GLenum
  MAX_RENDERBUFFER_SIZE = 0x84E8
  
  public export
  MAX_TEXTURE_IMAGE_UNITS : GLenum
  MAX_TEXTURE_IMAGE_UNITS = 0x8872
  
  public export
  MAX_TEXTURE_SIZE : GLenum
  MAX_TEXTURE_SIZE = 0xD33
  
  public export
  MAX_VARYING_VECTORS : GLenum
  MAX_VARYING_VECTORS = 0x8DFC
  
  public export
  MAX_VERTEX_ATTRIBS : GLenum
  MAX_VERTEX_ATTRIBS = 0x8869
  
  public export
  MAX_VERTEX_TEXTURE_IMAGE_UNITS : GLenum
  MAX_VERTEX_TEXTURE_IMAGE_UNITS = 0x8B4C
  
  public export
  MAX_VERTEX_UNIFORM_VECTORS : GLenum
  MAX_VERTEX_UNIFORM_VECTORS = 0x8DFB
  
  public export
  MAX_VIEWPORT_DIMS : GLenum
  MAX_VIEWPORT_DIMS = 0xD3A
  
  public export
  MEDIUM_FLOAT : GLenum
  MEDIUM_FLOAT = 0x8DF1
  
  public export
  MEDIUM_INT : GLenum
  MEDIUM_INT = 0x8DF4
  
  public export
  MIRRORED_REPEAT : GLenum
  MIRRORED_REPEAT = 0x8370
  
  public export
  NEAREST : GLenum
  NEAREST = 0x2600
  
  public export
  NEAREST_MIPMAP_LINEAR : GLenum
  NEAREST_MIPMAP_LINEAR = 0x2702
  
  public export
  NEAREST_MIPMAP_NEAREST : GLenum
  NEAREST_MIPMAP_NEAREST = 0x2700
  
  public export
  NEVER : GLenum
  NEVER = 0x200
  
  public export
  NICEST : GLenum
  NICEST = 0x1102
  
  public export
  NONE : GLenum
  NONE = 0o0
  
  public export
  NOTEQUAL : GLenum
  NOTEQUAL = 0x205
  
  public export
  NO_ERROR : GLenum
  NO_ERROR = 0o0
  
  public export
  ONE : GLenum
  ONE = 1
  
  public export
  ONE_MINUS_CONSTANT_ALPHA : GLenum
  ONE_MINUS_CONSTANT_ALPHA = 0x8004
  
  public export
  ONE_MINUS_CONSTANT_COLOR : GLenum
  ONE_MINUS_CONSTANT_COLOR = 0x8002
  
  public export
  ONE_MINUS_DST_ALPHA : GLenum
  ONE_MINUS_DST_ALPHA = 0x305
  
  public export
  ONE_MINUS_DST_COLOR : GLenum
  ONE_MINUS_DST_COLOR = 0x307
  
  public export
  ONE_MINUS_SRC_ALPHA : GLenum
  ONE_MINUS_SRC_ALPHA = 0x303
  
  public export
  ONE_MINUS_SRC_COLOR : GLenum
  ONE_MINUS_SRC_COLOR = 0x301
  
  public export
  OUT_OF_MEMORY : GLenum
  OUT_OF_MEMORY = 0x505
  
  public export
  PACK_ALIGNMENT : GLenum
  PACK_ALIGNMENT = 0xD05
  
  public export
  POINTS : GLenum
  POINTS = 0x0
  
  public export
  POLYGON_OFFSET_FACTOR : GLenum
  POLYGON_OFFSET_FACTOR = 0x8038
  
  public export
  POLYGON_OFFSET_FILL : GLenum
  POLYGON_OFFSET_FILL = 0x8037
  
  public export
  POLYGON_OFFSET_UNITS : GLenum
  POLYGON_OFFSET_UNITS = 0x2A00
  
  public export
  RED_BITS : GLenum
  RED_BITS = 0xD52
  
  public export
  RENDERBUFFER : GLenum
  RENDERBUFFER = 0x8D41
  
  public export
  RENDERBUFFER_ALPHA_SIZE : GLenum
  RENDERBUFFER_ALPHA_SIZE = 0x8D53
  
  public export
  RENDERBUFFER_BINDING : GLenum
  RENDERBUFFER_BINDING = 0x8CA7
  
  public export
  RENDERBUFFER_BLUE_SIZE : GLenum
  RENDERBUFFER_BLUE_SIZE = 0x8D52
  
  public export
  RENDERBUFFER_DEPTH_SIZE : GLenum
  RENDERBUFFER_DEPTH_SIZE = 0x8D54
  
  public export
  RENDERBUFFER_GREEN_SIZE : GLenum
  RENDERBUFFER_GREEN_SIZE = 0x8D51
  
  public export
  RENDERBUFFER_HEIGHT : GLenum
  RENDERBUFFER_HEIGHT = 0x8D43
  
  public export
  RENDERBUFFER_INTERNAL_FORMAT : GLenum
  RENDERBUFFER_INTERNAL_FORMAT = 0x8D44
  
  public export
  RENDERBUFFER_RED_SIZE : GLenum
  RENDERBUFFER_RED_SIZE = 0x8D50
  
  public export
  RENDERBUFFER_STENCIL_SIZE : GLenum
  RENDERBUFFER_STENCIL_SIZE = 0x8D55
  
  public export
  RENDERBUFFER_WIDTH : GLenum
  RENDERBUFFER_WIDTH = 0x8D42
  
  public export
  RENDERER : GLenum
  RENDERER = 0x1F01
  
  public export
  REPEAT : GLenum
  REPEAT = 0x2901
  
  public export
  REPLACE : GLenum
  REPLACE = 0x1E01
  
  public export
  RGB : GLenum
  RGB = 0x1907
  
  public export
  RGB565 : GLenum
  RGB565 = 0x8D62
  
  public export
  RGB5_A1 : GLenum
  RGB5_A1 = 0x8057
  
  public export
  RGBA : GLenum
  RGBA = 0x1908
  
  public export
  RGBA4 : GLenum
  RGBA4 = 0x8056
  
  public export
  SAMPLER_2D : GLenum
  SAMPLER_2D = 0x8B5E
  
  public export
  SAMPLER_CUBE : GLenum
  SAMPLER_CUBE = 0x8B60
  
  public export
  SAMPLES : GLenum
  SAMPLES = 0x80A9
  
  public export
  SAMPLE_ALPHA_TO_COVERAGE : GLenum
  SAMPLE_ALPHA_TO_COVERAGE = 0x809E
  
  public export
  SAMPLE_BUFFERS : GLenum
  SAMPLE_BUFFERS = 0x80A8
  
  public export
  SAMPLE_COVERAGE : GLenum
  SAMPLE_COVERAGE = 0x80A0
  
  public export
  SAMPLE_COVERAGE_INVERT : GLenum
  SAMPLE_COVERAGE_INVERT = 0x80AB
  
  public export
  SAMPLE_COVERAGE_VALUE : GLenum
  SAMPLE_COVERAGE_VALUE = 0x80AA
  
  public export
  SCISSOR_BOX : GLenum
  SCISSOR_BOX = 0xC10
  
  public export
  SCISSOR_TEST : GLenum
  SCISSOR_TEST = 0xC11
  
  public export
  SHADER_TYPE : GLenum
  SHADER_TYPE = 0x8B4F
  
  public export
  SHADING_LANGUAGE_VERSION : GLenum
  SHADING_LANGUAGE_VERSION = 0x8B8C
  
  public export
  SHORT : GLenum
  SHORT = 0x1402
  
  public export
  SRC_ALPHA : GLenum
  SRC_ALPHA = 0x302
  
  public export
  SRC_ALPHA_SATURATE : GLenum
  SRC_ALPHA_SATURATE = 0x308
  
  public export
  SRC_COLOR : GLenum
  SRC_COLOR = 0x300
  
  public export
  STATIC_DRAW : GLenum
  STATIC_DRAW = 0x88E4
  
  public export
  STENCIL_ATTACHMENT : GLenum
  STENCIL_ATTACHMENT = 0x8D20
  
  public export
  STENCIL_BACK_FAIL : GLenum
  STENCIL_BACK_FAIL = 0x8801
  
  public export
  STENCIL_BACK_FUNC : GLenum
  STENCIL_BACK_FUNC = 0x8800
  
  public export
  STENCIL_BACK_PASS_DEPTH_FAIL : GLenum
  STENCIL_BACK_PASS_DEPTH_FAIL = 0x8802
  
  public export
  STENCIL_BACK_PASS_DEPTH_PASS : GLenum
  STENCIL_BACK_PASS_DEPTH_PASS = 0x8803
  
  public export
  STENCIL_BACK_REF : GLenum
  STENCIL_BACK_REF = 0x8CA3
  
  public export
  STENCIL_BACK_VALUE_MASK : GLenum
  STENCIL_BACK_VALUE_MASK = 0x8CA4
  
  public export
  STENCIL_BACK_WRITEMASK : GLenum
  STENCIL_BACK_WRITEMASK = 0x8CA5
  
  public export
  STENCIL_BITS : GLenum
  STENCIL_BITS = 0xD57
  
  public export
  STENCIL_BUFFER_BIT : GLenum
  STENCIL_BUFFER_BIT = 0x400
  
  public export
  STENCIL_CLEAR_VALUE : GLenum
  STENCIL_CLEAR_VALUE = 0xB91
  
  public export
  STENCIL_FAIL : GLenum
  STENCIL_FAIL = 0xB94
  
  public export
  STENCIL_FUNC : GLenum
  STENCIL_FUNC = 0xB92
  
  public export
  STENCIL_INDEX8 : GLenum
  STENCIL_INDEX8 = 0x8D48
  
  public export
  STENCIL_PASS_DEPTH_FAIL : GLenum
  STENCIL_PASS_DEPTH_FAIL = 0xB95
  
  public export
  STENCIL_PASS_DEPTH_PASS : GLenum
  STENCIL_PASS_DEPTH_PASS = 0xB96
  
  public export
  STENCIL_REF : GLenum
  STENCIL_REF = 0xB97
  
  public export
  STENCIL_TEST : GLenum
  STENCIL_TEST = 0xB90
  
  public export
  STENCIL_VALUE_MASK : GLenum
  STENCIL_VALUE_MASK = 0xB93
  
  public export
  STENCIL_WRITEMASK : GLenum
  STENCIL_WRITEMASK = 0xB98
  
  public export
  STREAM_DRAW : GLenum
  STREAM_DRAW = 0x88E0
  
  public export
  SUBPIXEL_BITS : GLenum
  SUBPIXEL_BITS = 0xD50
  
  public export
  TEXTURE : GLenum
  TEXTURE = 0x1702
  
  public export
  TEXTURE0 : GLenum
  TEXTURE0 = 0x84C0
  
  public export
  TEXTURE1 : GLenum
  TEXTURE1 = 0x84C1
  
  public export
  TEXTURE10 : GLenum
  TEXTURE10 = 0x84CA
  
  public export
  TEXTURE11 : GLenum
  TEXTURE11 = 0x84CB
  
  public export
  TEXTURE12 : GLenum
  TEXTURE12 = 0x84CC
  
  public export
  TEXTURE13 : GLenum
  TEXTURE13 = 0x84CD
  
  public export
  TEXTURE14 : GLenum
  TEXTURE14 = 0x84CE
  
  public export
  TEXTURE15 : GLenum
  TEXTURE15 = 0x84CF
  
  public export
  TEXTURE16 : GLenum
  TEXTURE16 = 0x84D0
  
  public export
  TEXTURE17 : GLenum
  TEXTURE17 = 0x84D1
  
  public export
  TEXTURE18 : GLenum
  TEXTURE18 = 0x84D2
  
  public export
  TEXTURE19 : GLenum
  TEXTURE19 = 0x84D3
  
  public export
  TEXTURE2 : GLenum
  TEXTURE2 = 0x84C2
  
  public export
  TEXTURE20 : GLenum
  TEXTURE20 = 0x84D4
  
  public export
  TEXTURE21 : GLenum
  TEXTURE21 = 0x84D5
  
  public export
  TEXTURE22 : GLenum
  TEXTURE22 = 0x84D6
  
  public export
  TEXTURE23 : GLenum
  TEXTURE23 = 0x84D7
  
  public export
  TEXTURE24 : GLenum
  TEXTURE24 = 0x84D8
  
  public export
  TEXTURE25 : GLenum
  TEXTURE25 = 0x84D9
  
  public export
  TEXTURE26 : GLenum
  TEXTURE26 = 0x84DA
  
  public export
  TEXTURE27 : GLenum
  TEXTURE27 = 0x84DB
  
  public export
  TEXTURE28 : GLenum
  TEXTURE28 = 0x84DC
  
  public export
  TEXTURE29 : GLenum
  TEXTURE29 = 0x84DD
  
  public export
  TEXTURE3 : GLenum
  TEXTURE3 = 0x84C3
  
  public export
  TEXTURE30 : GLenum
  TEXTURE30 = 0x84DE
  
  public export
  TEXTURE31 : GLenum
  TEXTURE31 = 0x84DF
  
  public export
  TEXTURE4 : GLenum
  TEXTURE4 = 0x84C4
  
  public export
  TEXTURE5 : GLenum
  TEXTURE5 = 0x84C5
  
  public export
  TEXTURE6 : GLenum
  TEXTURE6 = 0x84C6
  
  public export
  TEXTURE7 : GLenum
  TEXTURE7 = 0x84C7
  
  public export
  TEXTURE8 : GLenum
  TEXTURE8 = 0x84C8
  
  public export
  TEXTURE9 : GLenum
  TEXTURE9 = 0x84C9
  
  public export
  TEXTURE_2D : GLenum
  TEXTURE_2D = 0xDE1
  
  public export
  TEXTURE_BINDING_2D : GLenum
  TEXTURE_BINDING_2D = 0x8069
  
  public export
  TEXTURE_BINDING_CUBE_MAP : GLenum
  TEXTURE_BINDING_CUBE_MAP = 0x8514
  
  public export
  TEXTURE_CUBE_MAP : GLenum
  TEXTURE_CUBE_MAP = 0x8513
  
  public export
  TEXTURE_CUBE_MAP_NEGATIVE_X : GLenum
  TEXTURE_CUBE_MAP_NEGATIVE_X = 0x8516
  
  public export
  TEXTURE_CUBE_MAP_NEGATIVE_Y : GLenum
  TEXTURE_CUBE_MAP_NEGATIVE_Y = 0x8518
  
  public export
  TEXTURE_CUBE_MAP_NEGATIVE_Z : GLenum
  TEXTURE_CUBE_MAP_NEGATIVE_Z = 0x851A
  
  public export
  TEXTURE_CUBE_MAP_POSITIVE_X : GLenum
  TEXTURE_CUBE_MAP_POSITIVE_X = 0x8515
  
  public export
  TEXTURE_CUBE_MAP_POSITIVE_Y : GLenum
  TEXTURE_CUBE_MAP_POSITIVE_Y = 0x8517
  
  public export
  TEXTURE_CUBE_MAP_POSITIVE_Z : GLenum
  TEXTURE_CUBE_MAP_POSITIVE_Z = 0x8519
  
  public export
  TEXTURE_MAG_FILTER : GLenum
  TEXTURE_MAG_FILTER = 0x2800
  
  public export
  TEXTURE_MIN_FILTER : GLenum
  TEXTURE_MIN_FILTER = 0x2801
  
  public export
  TEXTURE_WRAP_S : GLenum
  TEXTURE_WRAP_S = 0x2802
  
  public export
  TEXTURE_WRAP_T : GLenum
  TEXTURE_WRAP_T = 0x2803
  
  public export
  TRIANGLES : GLenum
  TRIANGLES = 0x4
  
  public export
  TRIANGLE_FAN : GLenum
  TRIANGLE_FAN = 0x6
  
  public export
  TRIANGLE_STRIP : GLenum
  TRIANGLE_STRIP = 0x5
  
  public export
  UNPACK_ALIGNMENT : GLenum
  UNPACK_ALIGNMENT = 0xCF5
  
  public export
  UNPACK_COLORSPACE_CONVERSION_WEBGL : GLenum
  UNPACK_COLORSPACE_CONVERSION_WEBGL = 0x9243
  
  public export
  UNPACK_FLIP_Y_WEBGL : GLenum
  UNPACK_FLIP_Y_WEBGL = 0x9240
  
  public export
  UNPACK_PREMULTIPLY_ALPHA_WEBGL : GLenum
  UNPACK_PREMULTIPLY_ALPHA_WEBGL = 0x9241
  
  public export
  UNSIGNED_BYTE : GLenum
  UNSIGNED_BYTE = 0x1401
  
  public export
  UNSIGNED_INT : GLenum
  UNSIGNED_INT = 0x1405
  
  public export
  UNSIGNED_SHORT : GLenum
  UNSIGNED_SHORT = 0x1403
  
  public export
  UNSIGNED_SHORT_4_4_4_4 : GLenum
  UNSIGNED_SHORT_4_4_4_4 = 0x8033
  
  public export
  UNSIGNED_SHORT_5_5_5_1 : GLenum
  UNSIGNED_SHORT_5_5_5_1 = 0x8034
  
  public export
  UNSIGNED_SHORT_5_6_5 : GLenum
  UNSIGNED_SHORT_5_6_5 = 0x8363
  
  public export
  VALIDATE_STATUS : GLenum
  VALIDATE_STATUS = 0x8B83
  
  public export
  VENDOR : GLenum
  VENDOR = 0x1F00
  
  public export
  VERSION : GLenum
  VERSION = 0x1F02
  
  public export
  VERTEX_ATTRIB_ARRAY_BUFFER_BINDING : GLenum
  VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 0x889F
  
  public export
  VERTEX_ATTRIB_ARRAY_ENABLED : GLenum
  VERTEX_ATTRIB_ARRAY_ENABLED = 0x8622
  
  public export
  VERTEX_ATTRIB_ARRAY_NORMALIZED : GLenum
  VERTEX_ATTRIB_ARRAY_NORMALIZED = 0x886A
  
  public export
  VERTEX_ATTRIB_ARRAY_POINTER : GLenum
  VERTEX_ATTRIB_ARRAY_POINTER = 0x8645
  
  public export
  VERTEX_ATTRIB_ARRAY_SIZE : GLenum
  VERTEX_ATTRIB_ARRAY_SIZE = 0x8623
  
  public export
  VERTEX_ATTRIB_ARRAY_STRIDE : GLenum
  VERTEX_ATTRIB_ARRAY_STRIDE = 0x8624
  
  public export
  VERTEX_ATTRIB_ARRAY_TYPE : GLenum
  VERTEX_ATTRIB_ARRAY_TYPE = 0x8625
  
  public export
  VERTEX_SHADER : GLenum
  VERTEX_SHADER = 0x8B31
  
  public export
  VIEWPORT : GLenum
  VIEWPORT = 0xBA2
  
  public export
  ZERO : GLenum
  ZERO = 0o0
  
  %foreign "browser:lambda:x=>x.canvas"
  prim__canvas : AnyPtr -> PrimIO AnyPtr

  export
  canvas :  (obj : WebGLRenderingContextBase)
         -> IO (NS I [ HTMLCanvasElement , OffscreenCanvas ])
  
  %foreign "browser:lambda:x=>x.drawingBufferHeight"
  prim__drawingBufferHeight : AnyPtr -> PrimIO AnyPtr

  export
  drawingBufferHeight : (obj : WebGLRenderingContextBase) -> IO GLsizei
  
  %foreign "browser:lambda:x=>x.drawingBufferWidth"
  prim__drawingBufferWidth : AnyPtr -> PrimIO AnyPtr

  export
  drawingBufferWidth : (obj : WebGLRenderingContextBase) -> IO GLsizei


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace WebGLContextAttributes
  
  public export
  JSVal WebGLContextAttributes where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.alpha"
  prim__alpha : AnyPtr -> PrimIO AnyPtr

  export
  alpha : (obj : WebGLContextAttributes) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.alpha  = v}"
  prim__setAlpha : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlpha : (obj : WebGLContextAttributes) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.antialias"
  prim__antialias : AnyPtr -> PrimIO AnyPtr

  export
  antialias : (obj : WebGLContextAttributes) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.antialias  = v}"
  prim__setAntialias : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAntialias : (obj : WebGLContextAttributes) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.depth"
  prim__depth : AnyPtr -> PrimIO AnyPtr

  export
  depth : (obj : WebGLContextAttributes) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.depth  = v}"
  prim__setDepth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDepth : (obj : WebGLContextAttributes) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.desynchronized"
  prim__desynchronized : AnyPtr -> PrimIO AnyPtr

  export
  desynchronized : (obj : WebGLContextAttributes) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.desynchronized  = v}"
  prim__setDesynchronized : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDesynchronized : (obj : WebGLContextAttributes) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.failIfMajorPerformanceCaveat"
  prim__failIfMajorPerformanceCaveat : AnyPtr -> PrimIO AnyPtr

  export
  failIfMajorPerformanceCaveat : (obj : WebGLContextAttributes) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.failIfMajorPerformanceCaveat  = v}"
  prim__setFailIfMajorPerformanceCaveat : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFailIfMajorPerformanceCaveat :  (obj : WebGLContextAttributes)
                                  -> (v : Bool)
                                  -> IO ()
  
  %foreign "browser:lambda:x=>x.powerPreference"
  prim__powerPreference : AnyPtr -> PrimIO AnyPtr

  export
  powerPreference : (obj : WebGLContextAttributes) -> IO WebGLPowerPreference

  %foreign "browser:lambda:(x,v)=>{x.powerPreference  = v}"
  prim__setPowerPreference : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPowerPreference :  (obj : WebGLContextAttributes)
                     -> (v : WebGLPowerPreference)
                     -> IO ()
  
  %foreign "browser:lambda:x=>x.premultipliedAlpha"
  prim__premultipliedAlpha : AnyPtr -> PrimIO AnyPtr

  export
  premultipliedAlpha : (obj : WebGLContextAttributes) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.premultipliedAlpha  = v}"
  prim__setPremultipliedAlpha : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPremultipliedAlpha : (obj : WebGLContextAttributes) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.preserveDrawingBuffer"
  prim__preserveDrawingBuffer : AnyPtr -> PrimIO AnyPtr

  export
  preserveDrawingBuffer : (obj : WebGLContextAttributes) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.preserveDrawingBuffer  = v}"
  prim__setPreserveDrawingBuffer : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPreserveDrawingBuffer :  (obj : WebGLContextAttributes)
                           -> (v : Bool)
                           -> IO ()
  
  %foreign "browser:lambda:x=>x.stencil"
  prim__stencil : AnyPtr -> PrimIO AnyPtr

  export
  stencil : (obj : WebGLContextAttributes) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.stencil  = v}"
  prim__setStencil : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStencil : (obj : WebGLContextAttributes) -> (v : Bool) -> IO ()

