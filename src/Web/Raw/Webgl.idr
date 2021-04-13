module Web.Raw.Webgl
 
import JS
import Web.Internal.WebglPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace WebGL2RenderingContext
  
  public export
  JSType WebGL2RenderingContext where
    parents =  [ Object ]

    mixins =  [ WebGL2RenderingContextBase
              , WebGL2RenderingContextOverloads
              , WebGLRenderingContextBase
              ]

namespace WebGLActiveInfo
  
  public export
  JSType WebGLActiveInfo where
    parents =  [ Object ]

    mixins =  []
  
  export
  name : (obj : WebGLActiveInfo) -> JSIO String
  name a = primJS $ WebGLActiveInfo.prim__name a
  
  export
  size : (obj : WebGLActiveInfo) -> JSIO Int32
  size a = primJS $ WebGLActiveInfo.prim__size a
  
  export
  type : (obj : WebGLActiveInfo) -> JSIO UInt32
  type a = primJS $ WebGLActiveInfo.prim__type a

namespace WebGLBuffer
  
  public export
  JSType WebGLBuffer where
    parents =  [ WebGLObject , Object ]

    mixins =  []

namespace WebGLFramebuffer
  
  public export
  JSType WebGLFramebuffer where
    parents =  [ WebGLObject , Object ]

    mixins =  []

namespace WebGLObject
  
  public export
  JSType WebGLObject where
    parents =  [ Object ]

    mixins =  []

namespace WebGLProgram
  
  public export
  JSType WebGLProgram where
    parents =  [ WebGLObject , Object ]

    mixins =  []

namespace WebGLQuery
  
  public export
  JSType WebGLQuery where
    parents =  [ WebGLObject , Object ]

    mixins =  []

namespace WebGLRenderbuffer
  
  public export
  JSType WebGLRenderbuffer where
    parents =  [ WebGLObject , Object ]

    mixins =  []

namespace WebGLRenderingContext
  
  public export
  JSType WebGLRenderingContext where
    parents =  [ Object ]

    mixins =  [ WebGLRenderingContextBase , WebGLRenderingContextOverloads ]

namespace WebGLSampler
  
  public export
  JSType WebGLSampler where
    parents =  [ WebGLObject , Object ]

    mixins =  []

namespace WebGLShader
  
  public export
  JSType WebGLShader where
    parents =  [ WebGLObject , Object ]

    mixins =  []

namespace WebGLShaderPrecisionFormat
  
  public export
  JSType WebGLShaderPrecisionFormat where
    parents =  [ Object ]

    mixins =  []
  
  export
  precision : (obj : WebGLShaderPrecisionFormat) -> JSIO Int32
  precision a = primJS $ WebGLShaderPrecisionFormat.prim__precision a
  
  export
  rangeMax : (obj : WebGLShaderPrecisionFormat) -> JSIO Int32
  rangeMax a = primJS $ WebGLShaderPrecisionFormat.prim__rangeMax a
  
  export
  rangeMin : (obj : WebGLShaderPrecisionFormat) -> JSIO Int32
  rangeMin a = primJS $ WebGLShaderPrecisionFormat.prim__rangeMin a

namespace WebGLSync
  
  public export
  JSType WebGLSync where
    parents =  [ WebGLObject , Object ]

    mixins =  []

namespace WebGLTexture
  
  public export
  JSType WebGLTexture where
    parents =  [ WebGLObject , Object ]

    mixins =  []

namespace WebGLTransformFeedback
  
  public export
  JSType WebGLTransformFeedback where
    parents =  [ WebGLObject , Object ]

    mixins =  []

namespace WebGLUniformLocation
  
  public export
  JSType WebGLUniformLocation where
    parents =  [ Object ]

    mixins =  []

namespace WebGLVertexArrayObject
  
  public export
  JSType WebGLVertexArrayObject where
    parents =  [ WebGLObject , Object ]

    mixins =  []

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace WebGL2RenderingContextBase
  
  public export
  ACTIVE_UNIFORM_BLOCKS : UInt32
  ACTIVE_UNIFORM_BLOCKS = 0x8A36
  
  public export
  ALREADY_SIGNALED : UInt32
  ALREADY_SIGNALED = 0x911A
  
  public export
  ANY_SAMPLES_PASSED : UInt32
  ANY_SAMPLES_PASSED = 0x8C2F
  
  public export
  ANY_SAMPLES_PASSED_CONSERVATIVE : UInt32
  ANY_SAMPLES_PASSED_CONSERVATIVE = 0x8D6A
  
  public export
  COLOR : UInt32
  COLOR = 0x1800
  
  public export
  COLOR_ATTACHMENT1 : UInt32
  COLOR_ATTACHMENT1 = 0x8CE1
  
  public export
  COLOR_ATTACHMENT10 : UInt32
  COLOR_ATTACHMENT10 = 0x8CEA
  
  public export
  COLOR_ATTACHMENT11 : UInt32
  COLOR_ATTACHMENT11 = 0x8CEB
  
  public export
  COLOR_ATTACHMENT12 : UInt32
  COLOR_ATTACHMENT12 = 0x8CEC
  
  public export
  COLOR_ATTACHMENT13 : UInt32
  COLOR_ATTACHMENT13 = 0x8CED
  
  public export
  COLOR_ATTACHMENT14 : UInt32
  COLOR_ATTACHMENT14 = 0x8CEE
  
  public export
  COLOR_ATTACHMENT15 : UInt32
  COLOR_ATTACHMENT15 = 0x8CEF
  
  public export
  COLOR_ATTACHMENT2 : UInt32
  COLOR_ATTACHMENT2 = 0x8CE2
  
  public export
  COLOR_ATTACHMENT3 : UInt32
  COLOR_ATTACHMENT3 = 0x8CE3
  
  public export
  COLOR_ATTACHMENT4 : UInt32
  COLOR_ATTACHMENT4 = 0x8CE4
  
  public export
  COLOR_ATTACHMENT5 : UInt32
  COLOR_ATTACHMENT5 = 0x8CE5
  
  public export
  COLOR_ATTACHMENT6 : UInt32
  COLOR_ATTACHMENT6 = 0x8CE6
  
  public export
  COLOR_ATTACHMENT7 : UInt32
  COLOR_ATTACHMENT7 = 0x8CE7
  
  public export
  COLOR_ATTACHMENT8 : UInt32
  COLOR_ATTACHMENT8 = 0x8CE8
  
  public export
  COLOR_ATTACHMENT9 : UInt32
  COLOR_ATTACHMENT9 = 0x8CE9
  
  public export
  COMPARE_REF_TO_TEXTURE : UInt32
  COMPARE_REF_TO_TEXTURE = 0x884E
  
  public export
  CONDITION_SATISFIED : UInt32
  CONDITION_SATISFIED = 0x911C
  
  public export
  COPY_READ_BUFFER : UInt32
  COPY_READ_BUFFER = 0x8F36
  
  public export
  COPY_READ_BUFFER_BINDING : UInt32
  COPY_READ_BUFFER_BINDING = 0x8F36
  
  public export
  COPY_WRITE_BUFFER : UInt32
  COPY_WRITE_BUFFER = 0x8F37
  
  public export
  COPY_WRITE_BUFFER_BINDING : UInt32
  COPY_WRITE_BUFFER_BINDING = 0x8F37
  
  public export
  CURRENT_QUERY : UInt32
  CURRENT_QUERY = 0x8865
  
  public export
  DEPTH : UInt32
  DEPTH = 0x1801
  
  public export
  DEPTH24_STENCIL8 : UInt32
  DEPTH24_STENCIL8 = 0x88F0
  
  public export
  DEPTH32F_STENCIL8 : UInt32
  DEPTH32F_STENCIL8 = 0x8CAD
  
  public export
  DEPTH_COMPONENT24 : UInt32
  DEPTH_COMPONENT24 = 0x81A6
  
  public export
  DEPTH_COMPONENT32F : UInt32
  DEPTH_COMPONENT32F = 0x8CAC
  
  public export
  DRAW_BUFFER0 : UInt32
  DRAW_BUFFER0 = 0x8825
  
  public export
  DRAW_BUFFER1 : UInt32
  DRAW_BUFFER1 = 0x8826
  
  public export
  DRAW_BUFFER10 : UInt32
  DRAW_BUFFER10 = 0x882F
  
  public export
  DRAW_BUFFER11 : UInt32
  DRAW_BUFFER11 = 0x8830
  
  public export
  DRAW_BUFFER12 : UInt32
  DRAW_BUFFER12 = 0x8831
  
  public export
  DRAW_BUFFER13 : UInt32
  DRAW_BUFFER13 = 0x8832
  
  public export
  DRAW_BUFFER14 : UInt32
  DRAW_BUFFER14 = 0x8833
  
  public export
  DRAW_BUFFER15 : UInt32
  DRAW_BUFFER15 = 0x8834
  
  public export
  DRAW_BUFFER2 : UInt32
  DRAW_BUFFER2 = 0x8827
  
  public export
  DRAW_BUFFER3 : UInt32
  DRAW_BUFFER3 = 0x8828
  
  public export
  DRAW_BUFFER4 : UInt32
  DRAW_BUFFER4 = 0x8829
  
  public export
  DRAW_BUFFER5 : UInt32
  DRAW_BUFFER5 = 0x882A
  
  public export
  DRAW_BUFFER6 : UInt32
  DRAW_BUFFER6 = 0x882B
  
  public export
  DRAW_BUFFER7 : UInt32
  DRAW_BUFFER7 = 0x882C
  
  public export
  DRAW_BUFFER8 : UInt32
  DRAW_BUFFER8 = 0x882D
  
  public export
  DRAW_BUFFER9 : UInt32
  DRAW_BUFFER9 = 0x882E
  
  public export
  DRAW_FRAMEBUFFER : UInt32
  DRAW_FRAMEBUFFER = 0x8CA9
  
  public export
  DRAW_FRAMEBUFFER_BINDING : UInt32
  DRAW_FRAMEBUFFER_BINDING = 0x8CA6
  
  public export
  DYNAMIC_COPY : UInt32
  DYNAMIC_COPY = 0x88EA
  
  public export
  DYNAMIC_READ : UInt32
  DYNAMIC_READ = 0x88E9
  
  public export
  FLOAT_32_UNSIGNED_INT_24_8_REV : UInt32
  FLOAT_32_UNSIGNED_INT_24_8_REV = 0x8DAD
  
  public export
  FLOAT_MAT2x3 : UInt32
  FLOAT_MAT2x3 = 0x8B65
  
  public export
  FLOAT_MAT2x4 : UInt32
  FLOAT_MAT2x4 = 0x8B66
  
  public export
  FLOAT_MAT3x2 : UInt32
  FLOAT_MAT3x2 = 0x8B67
  
  public export
  FLOAT_MAT3x4 : UInt32
  FLOAT_MAT3x4 = 0x8B68
  
  public export
  FLOAT_MAT4x2 : UInt32
  FLOAT_MAT4x2 = 0x8B69
  
  public export
  FLOAT_MAT4x3 : UInt32
  FLOAT_MAT4x3 = 0x8B6A
  
  public export
  FRAGMENT_SHADER_DERIVATIVE_HINT : UInt32
  FRAGMENT_SHADER_DERIVATIVE_HINT = 0x8B8B
  
  public export
  FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE : UInt32
  FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE = 0x8215
  
  public export
  FRAMEBUFFER_ATTACHMENT_BLUE_SIZE : UInt32
  FRAMEBUFFER_ATTACHMENT_BLUE_SIZE = 0x8214
  
  public export
  FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING : UInt32
  FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING = 0x8210
  
  public export
  FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE : UInt32
  FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE = 0x8211
  
  public export
  FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE : UInt32
  FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE = 0x8216
  
  public export
  FRAMEBUFFER_ATTACHMENT_GREEN_SIZE : UInt32
  FRAMEBUFFER_ATTACHMENT_GREEN_SIZE = 0x8213
  
  public export
  FRAMEBUFFER_ATTACHMENT_RED_SIZE : UInt32
  FRAMEBUFFER_ATTACHMENT_RED_SIZE = 0x8212
  
  public export
  FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE : UInt32
  FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE = 0x8217
  
  public export
  FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER : UInt32
  FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER = 0x8CD4
  
  public export
  FRAMEBUFFER_DEFAULT : UInt32
  FRAMEBUFFER_DEFAULT = 0x8218
  
  public export
  FRAMEBUFFER_INCOMPLETE_MULTISAMPLE : UInt32
  FRAMEBUFFER_INCOMPLETE_MULTISAMPLE = 0x8D56
  
  public export
  HALF_FLOAT : UInt32
  HALF_FLOAT = 0x140B
  
  public export
  INTERLEAVED_ATTRIBS : UInt32
  INTERLEAVED_ATTRIBS = 0x8C8C
  
  public export
  INT_2_10_10_10_REV : UInt32
  INT_2_10_10_10_REV = 0x8D9F
  
  public export
  INT_SAMPLER_2D : UInt32
  INT_SAMPLER_2D = 0x8DCA
  
  public export
  INT_SAMPLER_2D_ARRAY : UInt32
  INT_SAMPLER_2D_ARRAY = 0x8DCF
  
  public export
  INT_SAMPLER_3D : UInt32
  INT_SAMPLER_3D = 0x8DCB
  
  public export
  INT_SAMPLER_CUBE : UInt32
  INT_SAMPLER_CUBE = 0x8DCC
  
  public export
  INVALID_INDEX : UInt32
  INVALID_INDEX = 0xFFFFFFFF
  
  public export
  MAX : UInt32
  MAX = 0x8008
  
  public export
  MAX_3D_TEXTURE_SIZE : UInt32
  MAX_3D_TEXTURE_SIZE = 0x8073
  
  public export
  MAX_ARRAY_TEXTURE_LAYERS : UInt32
  MAX_ARRAY_TEXTURE_LAYERS = 0x88FF
  
  public export
  MAX_CLIENT_WAIT_TIMEOUT_WEBGL : UInt32
  MAX_CLIENT_WAIT_TIMEOUT_WEBGL = 0x9247
  
  public export
  MAX_COLOR_ATTACHMENTS : UInt32
  MAX_COLOR_ATTACHMENTS = 0x8CDF
  
  public export
  MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS : UInt32
  MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS = 0x8A33
  
  public export
  MAX_COMBINED_UNIFORM_BLOCKS : UInt32
  MAX_COMBINED_UNIFORM_BLOCKS = 0x8A2E
  
  public export
  MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS : UInt32
  MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS = 0x8A31
  
  public export
  MAX_DRAW_BUFFERS : UInt32
  MAX_DRAW_BUFFERS = 0x8824
  
  public export
  MAX_ELEMENTS_INDICES : UInt32
  MAX_ELEMENTS_INDICES = 0x80E9
  
  public export
  MAX_ELEMENTS_VERTICES : UInt32
  MAX_ELEMENTS_VERTICES = 0x80E8
  
  public export
  MAX_ELEMENT_INDEX : UInt32
  MAX_ELEMENT_INDEX = 0x8D6B
  
  public export
  MAX_FRAGMENT_INPUT_COMPONENTS : UInt32
  MAX_FRAGMENT_INPUT_COMPONENTS = 0x9125
  
  public export
  MAX_FRAGMENT_UNIFORM_BLOCKS : UInt32
  MAX_FRAGMENT_UNIFORM_BLOCKS = 0x8A2D
  
  public export
  MAX_FRAGMENT_UNIFORM_COMPONENTS : UInt32
  MAX_FRAGMENT_UNIFORM_COMPONENTS = 0x8B49
  
  public export
  MAX_PROGRAM_TEXEL_OFFSET : UInt32
  MAX_PROGRAM_TEXEL_OFFSET = 0x8905
  
  public export
  MAX_SAMPLES : UInt32
  MAX_SAMPLES = 0x8D57
  
  public export
  MAX_SERVER_WAIT_TIMEOUT : UInt32
  MAX_SERVER_WAIT_TIMEOUT = 0x9111
  
  public export
  MAX_TEXTURE_LOD_BIAS : UInt32
  MAX_TEXTURE_LOD_BIAS = 0x84FD
  
  public export
  MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS : UInt32
  MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS = 0x8C8A
  
  public export
  MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS : UInt32
  MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS = 0x8C8B
  
  public export
  MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS : UInt32
  MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS = 0x8C80
  
  public export
  MAX_UNIFORM_BLOCK_SIZE : UInt32
  MAX_UNIFORM_BLOCK_SIZE = 0x8A30
  
  public export
  MAX_UNIFORM_BUFFER_BINDINGS : UInt32
  MAX_UNIFORM_BUFFER_BINDINGS = 0x8A2F
  
  public export
  MAX_VARYING_COMPONENTS : UInt32
  MAX_VARYING_COMPONENTS = 0x8B4B
  
  public export
  MAX_VERTEX_OUTPUT_COMPONENTS : UInt32
  MAX_VERTEX_OUTPUT_COMPONENTS = 0x9122
  
  public export
  MAX_VERTEX_UNIFORM_BLOCKS : UInt32
  MAX_VERTEX_UNIFORM_BLOCKS = 0x8A2B
  
  public export
  MAX_VERTEX_UNIFORM_COMPONENTS : UInt32
  MAX_VERTEX_UNIFORM_COMPONENTS = 0x8B4A
  
  public export
  MIN : UInt32
  MIN = 0x8007
  
  public export
  MIN_PROGRAM_TEXEL_OFFSET : UInt32
  MIN_PROGRAM_TEXEL_OFFSET = 0x8904
  
  public export
  OBJECT_TYPE : UInt32
  OBJECT_TYPE = 0x9112
  
  public export
  PACK_ROW_LENGTH : UInt32
  PACK_ROW_LENGTH = 0xD02
  
  public export
  PACK_SKIP_PIXELS : UInt32
  PACK_SKIP_PIXELS = 0xD04
  
  public export
  PACK_SKIP_ROWS : UInt32
  PACK_SKIP_ROWS = 0xD03
  
  public export
  PIXEL_PACK_BUFFER : UInt32
  PIXEL_PACK_BUFFER = 0x88EB
  
  public export
  PIXEL_PACK_BUFFER_BINDING : UInt32
  PIXEL_PACK_BUFFER_BINDING = 0x88ED
  
  public export
  PIXEL_UNPACK_BUFFER : UInt32
  PIXEL_UNPACK_BUFFER = 0x88EC
  
  public export
  PIXEL_UNPACK_BUFFER_BINDING : UInt32
  PIXEL_UNPACK_BUFFER_BINDING = 0x88EF
  
  public export
  QUERY_RESULT : UInt32
  QUERY_RESULT = 0x8866
  
  public export
  QUERY_RESULT_AVAILABLE : UInt32
  QUERY_RESULT_AVAILABLE = 0x8867
  
  public export
  R11F_G11F_B10F : UInt32
  R11F_G11F_B10F = 0x8C3A
  
  public export
  R16F : UInt32
  R16F = 0x822D
  
  public export
  R16I : UInt32
  R16I = 0x8233
  
  public export
  R16UI : UInt32
  R16UI = 0x8234
  
  public export
  R32F : UInt32
  R32F = 0x822E
  
  public export
  R32I : UInt32
  R32I = 0x8235
  
  public export
  R32UI : UInt32
  R32UI = 0x8236
  
  public export
  R8 : UInt32
  R8 = 0x8229
  
  public export
  R8I : UInt32
  R8I = 0x8231
  
  public export
  R8UI : UInt32
  R8UI = 0x8232
  
  public export
  R8_SNORM : UInt32
  R8_SNORM = 0x8F94
  
  public export
  RASTERIZER_DISCARD : UInt32
  RASTERIZER_DISCARD = 0x8C89
  
  public export
  READ_BUFFER : UInt32
  READ_BUFFER = 0xC02
  
  public export
  READ_FRAMEBUFFER : UInt32
  READ_FRAMEBUFFER = 0x8CA8
  
  public export
  READ_FRAMEBUFFER_BINDING : UInt32
  READ_FRAMEBUFFER_BINDING = 0x8CAA
  
  public export
  RED : UInt32
  RED = 0x1903
  
  public export
  RED_INTEGER : UInt32
  RED_INTEGER = 0x8D94
  
  public export
  RENDERBUFFER_SAMPLES : UInt32
  RENDERBUFFER_SAMPLES = 0x8CAB
  
  public export
  RG : UInt32
  RG = 0x8227
  
  public export
  RG16F : UInt32
  RG16F = 0x822F
  
  public export
  RG16I : UInt32
  RG16I = 0x8239
  
  public export
  RG16UI : UInt32
  RG16UI = 0x823A
  
  public export
  RG32F : UInt32
  RG32F = 0x8230
  
  public export
  RG32I : UInt32
  RG32I = 0x823B
  
  public export
  RG32UI : UInt32
  RG32UI = 0x823C
  
  public export
  RG8 : UInt32
  RG8 = 0x822B
  
  public export
  RG8I : UInt32
  RG8I = 0x8237
  
  public export
  RG8UI : UInt32
  RG8UI = 0x8238
  
  public export
  RG8_SNORM : UInt32
  RG8_SNORM = 0x8F95
  
  public export
  RGB10_A2 : UInt32
  RGB10_A2 = 0x8059
  
  public export
  RGB10_A2UI : UInt32
  RGB10_A2UI = 0x906F
  
  public export
  RGB16F : UInt32
  RGB16F = 0x881B
  
  public export
  RGB16I : UInt32
  RGB16I = 0x8D89
  
  public export
  RGB16UI : UInt32
  RGB16UI = 0x8D77
  
  public export
  RGB32F : UInt32
  RGB32F = 0x8815
  
  public export
  RGB32I : UInt32
  RGB32I = 0x8D83
  
  public export
  RGB32UI : UInt32
  RGB32UI = 0x8D71
  
  public export
  RGB8 : UInt32
  RGB8 = 0x8051
  
  public export
  RGB8I : UInt32
  RGB8I = 0x8D8F
  
  public export
  RGB8UI : UInt32
  RGB8UI = 0x8D7D
  
  public export
  RGB8_SNORM : UInt32
  RGB8_SNORM = 0x8F96
  
  public export
  RGB9_E5 : UInt32
  RGB9_E5 = 0x8C3D
  
  public export
  RGBA16F : UInt32
  RGBA16F = 0x881A
  
  public export
  RGBA16I : UInt32
  RGBA16I = 0x8D88
  
  public export
  RGBA16UI : UInt32
  RGBA16UI = 0x8D76
  
  public export
  RGBA32F : UInt32
  RGBA32F = 0x8814
  
  public export
  RGBA32I : UInt32
  RGBA32I = 0x8D82
  
  public export
  RGBA32UI : UInt32
  RGBA32UI = 0x8D70
  
  public export
  RGBA8 : UInt32
  RGBA8 = 0x8058
  
  public export
  RGBA8I : UInt32
  RGBA8I = 0x8D8E
  
  public export
  RGBA8UI : UInt32
  RGBA8UI = 0x8D7C
  
  public export
  RGBA8_SNORM : UInt32
  RGBA8_SNORM = 0x8F97
  
  public export
  RGBA_INTEGER : UInt32
  RGBA_INTEGER = 0x8D99
  
  public export
  RGB_INTEGER : UInt32
  RGB_INTEGER = 0x8D98
  
  public export
  RG_INTEGER : UInt32
  RG_INTEGER = 0x8228
  
  public export
  SAMPLER_2D_ARRAY : UInt32
  SAMPLER_2D_ARRAY = 0x8DC1
  
  public export
  SAMPLER_2D_ARRAY_SHADOW : UInt32
  SAMPLER_2D_ARRAY_SHADOW = 0x8DC4
  
  public export
  SAMPLER_2D_SHADOW : UInt32
  SAMPLER_2D_SHADOW = 0x8B62
  
  public export
  SAMPLER_3D : UInt32
  SAMPLER_3D = 0x8B5F
  
  public export
  SAMPLER_BINDING : UInt32
  SAMPLER_BINDING = 0x8919
  
  public export
  SAMPLER_CUBE_SHADOW : UInt32
  SAMPLER_CUBE_SHADOW = 0x8DC5
  
  public export
  SEPARATE_ATTRIBS : UInt32
  SEPARATE_ATTRIBS = 0x8C8D
  
  public export
  SIGNALED : UInt32
  SIGNALED = 0x9119
  
  public export
  SIGNED_NORMALIZED : UInt32
  SIGNED_NORMALIZED = 0x8F9C
  
  public export
  SRGB : UInt32
  SRGB = 0x8C40
  
  public export
  SRGB8 : UInt32
  SRGB8 = 0x8C41
  
  public export
  SRGB8_ALPHA8 : UInt32
  SRGB8_ALPHA8 = 0x8C43
  
  public export
  STATIC_COPY : UInt32
  STATIC_COPY = 0x88E6
  
  public export
  STATIC_READ : UInt32
  STATIC_READ = 0x88E5
  
  public export
  STENCIL : UInt32
  STENCIL = 0x1802
  
  public export
  STREAM_COPY : UInt32
  STREAM_COPY = 0x88E2
  
  public export
  STREAM_READ : UInt32
  STREAM_READ = 0x88E1
  
  public export
  SYNC_CONDITION : UInt32
  SYNC_CONDITION = 0x9113
  
  public export
  SYNC_FENCE : UInt32
  SYNC_FENCE = 0x9116
  
  public export
  SYNC_FLAGS : UInt32
  SYNC_FLAGS = 0x9115
  
  public export
  SYNC_FLUSH_COMMANDS_BIT : UInt32
  SYNC_FLUSH_COMMANDS_BIT = 0x1
  
  public export
  SYNC_GPU_COMMANDS_COMPLETE : UInt32
  SYNC_GPU_COMMANDS_COMPLETE = 0x9117
  
  public export
  SYNC_STATUS : UInt32
  SYNC_STATUS = 0x9114
  
  public export
  TEXTURE_2D_ARRAY : UInt32
  TEXTURE_2D_ARRAY = 0x8C1A
  
  public export
  TEXTURE_3D : UInt32
  TEXTURE_3D = 0x806F
  
  public export
  TEXTURE_BASE_LEVEL : UInt32
  TEXTURE_BASE_LEVEL = 0x813C
  
  public export
  TEXTURE_BINDING_2D_ARRAY : UInt32
  TEXTURE_BINDING_2D_ARRAY = 0x8C1D
  
  public export
  TEXTURE_BINDING_3D : UInt32
  TEXTURE_BINDING_3D = 0x806A
  
  public export
  TEXTURE_COMPARE_FUNC : UInt32
  TEXTURE_COMPARE_FUNC = 0x884D
  
  public export
  TEXTURE_COMPARE_MODE : UInt32
  TEXTURE_COMPARE_MODE = 0x884C
  
  public export
  TEXTURE_IMMUTABLE_FORMAT : UInt32
  TEXTURE_IMMUTABLE_FORMAT = 0x912F
  
  public export
  TEXTURE_IMMUTABLE_LEVELS : UInt32
  TEXTURE_IMMUTABLE_LEVELS = 0x82DF
  
  public export
  TEXTURE_MAX_LEVEL : UInt32
  TEXTURE_MAX_LEVEL = 0x813D
  
  public export
  TEXTURE_MAX_LOD : UInt32
  TEXTURE_MAX_LOD = 0x813B
  
  public export
  TEXTURE_MIN_LOD : UInt32
  TEXTURE_MIN_LOD = 0x813A
  
  public export
  TEXTURE_WRAP_R : UInt32
  TEXTURE_WRAP_R = 0x8072
  
  public export
  TIMEOUT_EXPIRED : UInt32
  TIMEOUT_EXPIRED = 0x911B
  
  public export
  TIMEOUT_IGNORED : Int64
  TIMEOUT_IGNORED = -1
  
  public export
  TRANSFORM_FEEDBACK : UInt32
  TRANSFORM_FEEDBACK = 0x8E22
  
  public export
  TRANSFORM_FEEDBACK_ACTIVE : UInt32
  TRANSFORM_FEEDBACK_ACTIVE = 0x8E24
  
  public export
  TRANSFORM_FEEDBACK_BINDING : UInt32
  TRANSFORM_FEEDBACK_BINDING = 0x8E25
  
  public export
  TRANSFORM_FEEDBACK_BUFFER : UInt32
  TRANSFORM_FEEDBACK_BUFFER = 0x8C8E
  
  public export
  TRANSFORM_FEEDBACK_BUFFER_BINDING : UInt32
  TRANSFORM_FEEDBACK_BUFFER_BINDING = 0x8C8F
  
  public export
  TRANSFORM_FEEDBACK_BUFFER_MODE : UInt32
  TRANSFORM_FEEDBACK_BUFFER_MODE = 0x8C7F
  
  public export
  TRANSFORM_FEEDBACK_BUFFER_SIZE : UInt32
  TRANSFORM_FEEDBACK_BUFFER_SIZE = 0x8C85
  
  public export
  TRANSFORM_FEEDBACK_BUFFER_START : UInt32
  TRANSFORM_FEEDBACK_BUFFER_START = 0x8C84
  
  public export
  TRANSFORM_FEEDBACK_PAUSED : UInt32
  TRANSFORM_FEEDBACK_PAUSED = 0x8E23
  
  public export
  TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN : UInt32
  TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN = 0x8C88
  
  public export
  TRANSFORM_FEEDBACK_VARYINGS : UInt32
  TRANSFORM_FEEDBACK_VARYINGS = 0x8C83
  
  public export
  UNIFORM_ARRAY_STRIDE : UInt32
  UNIFORM_ARRAY_STRIDE = 0x8A3C
  
  public export
  UNIFORM_BLOCK_ACTIVE_UNIFORMS : UInt32
  UNIFORM_BLOCK_ACTIVE_UNIFORMS = 0x8A42
  
  public export
  UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES : UInt32
  UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES = 0x8A43
  
  public export
  UNIFORM_BLOCK_BINDING : UInt32
  UNIFORM_BLOCK_BINDING = 0x8A3F
  
  public export
  UNIFORM_BLOCK_DATA_SIZE : UInt32
  UNIFORM_BLOCK_DATA_SIZE = 0x8A40
  
  public export
  UNIFORM_BLOCK_INDEX : UInt32
  UNIFORM_BLOCK_INDEX = 0x8A3A
  
  public export
  UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER : UInt32
  UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER = 0x8A46
  
  public export
  UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER : UInt32
  UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER = 0x8A44
  
  public export
  UNIFORM_BUFFER : UInt32
  UNIFORM_BUFFER = 0x8A11
  
  public export
  UNIFORM_BUFFER_BINDING : UInt32
  UNIFORM_BUFFER_BINDING = 0x8A28
  
  public export
  UNIFORM_BUFFER_OFFSET_ALIGNMENT : UInt32
  UNIFORM_BUFFER_OFFSET_ALIGNMENT = 0x8A34
  
  public export
  UNIFORM_BUFFER_SIZE : UInt32
  UNIFORM_BUFFER_SIZE = 0x8A2A
  
  public export
  UNIFORM_BUFFER_START : UInt32
  UNIFORM_BUFFER_START = 0x8A29
  
  public export
  UNIFORM_IS_ROW_MAJOR : UInt32
  UNIFORM_IS_ROW_MAJOR = 0x8A3E
  
  public export
  UNIFORM_MATRIX_STRIDE : UInt32
  UNIFORM_MATRIX_STRIDE = 0x8A3D
  
  public export
  UNIFORM_OFFSET : UInt32
  UNIFORM_OFFSET = 0x8A3B
  
  public export
  UNIFORM_SIZE : UInt32
  UNIFORM_SIZE = 0x8A38
  
  public export
  UNIFORM_TYPE : UInt32
  UNIFORM_TYPE = 0x8A37
  
  public export
  UNPACK_IMAGE_HEIGHT : UInt32
  UNPACK_IMAGE_HEIGHT = 0x806E
  
  public export
  UNPACK_ROW_LENGTH : UInt32
  UNPACK_ROW_LENGTH = 0xCF2
  
  public export
  UNPACK_SKIP_IMAGES : UInt32
  UNPACK_SKIP_IMAGES = 0x806D
  
  public export
  UNPACK_SKIP_PIXELS : UInt32
  UNPACK_SKIP_PIXELS = 0xCF4
  
  public export
  UNPACK_SKIP_ROWS : UInt32
  UNPACK_SKIP_ROWS = 0xCF3
  
  public export
  UNSIGNALED : UInt32
  UNSIGNALED = 0x9118
  
  public export
  UNSIGNED_INT_10F_11F_11F_REV : UInt32
  UNSIGNED_INT_10F_11F_11F_REV = 0x8C3B
  
  public export
  UNSIGNED_INT_24_8 : UInt32
  UNSIGNED_INT_24_8 = 0x84FA
  
  public export
  UNSIGNED_INT_2_10_10_10_REV : UInt32
  UNSIGNED_INT_2_10_10_10_REV = 0x8368
  
  public export
  UNSIGNED_INT_5_9_9_9_REV : UInt32
  UNSIGNED_INT_5_9_9_9_REV = 0x8C3E
  
  public export
  UNSIGNED_INT_SAMPLER_2D : UInt32
  UNSIGNED_INT_SAMPLER_2D = 0x8DD2
  
  public export
  UNSIGNED_INT_SAMPLER_2D_ARRAY : UInt32
  UNSIGNED_INT_SAMPLER_2D_ARRAY = 0x8DD7
  
  public export
  UNSIGNED_INT_SAMPLER_3D : UInt32
  UNSIGNED_INT_SAMPLER_3D = 0x8DD3
  
  public export
  UNSIGNED_INT_SAMPLER_CUBE : UInt32
  UNSIGNED_INT_SAMPLER_CUBE = 0x8DD4
  
  public export
  UNSIGNED_INT_VEC2 : UInt32
  UNSIGNED_INT_VEC2 = 0x8DC6
  
  public export
  UNSIGNED_INT_VEC3 : UInt32
  UNSIGNED_INT_VEC3 = 0x8DC7
  
  public export
  UNSIGNED_INT_VEC4 : UInt32
  UNSIGNED_INT_VEC4 = 0x8DC8
  
  public export
  UNSIGNED_NORMALIZED : UInt32
  UNSIGNED_NORMALIZED = 0x8C17
  
  public export
  VERTEX_ARRAY_BINDING : UInt32
  VERTEX_ARRAY_BINDING = 0x85B5
  
  public export
  VERTEX_ATTRIB_ARRAY_DIVISOR : UInt32
  VERTEX_ATTRIB_ARRAY_DIVISOR = 0x88FE
  
  public export
  VERTEX_ATTRIB_ARRAY_INTEGER : UInt32
  VERTEX_ATTRIB_ARRAY_INTEGER = 0x88FD
  
  public export
  WAIT_FAILED : UInt32
  WAIT_FAILED = 0x911D
  
  export
  beginQuery :  (obj : WebGL2RenderingContextBase)
             -> (target : UInt32)
             -> (query : WebGLQuery)
             -> JSIO ()
  beginQuery a b c = primJS $ WebGL2RenderingContextBase.prim__beginQuery a b c
  
  export
  beginTransformFeedback :  (obj : WebGL2RenderingContextBase)
                         -> (primitiveMode : UInt32)
                         -> JSIO ()
  beginTransformFeedback a b = primJS
                             $ WebGL2RenderingContextBase.prim__beginTransformFeedback a
                                                                                       b
  
  export
  bindBufferBase :  (obj : WebGL2RenderingContextBase)
                 -> (target : UInt32)
                 -> (index : UInt32)
                 -> (buffer : Maybe WebGLBuffer)
                 -> JSIO ()
  bindBufferBase a b c d = primJS
                         $ WebGL2RenderingContextBase.prim__bindBufferBase a
                                                                           b
                                                                           c
                                                                           (toFFI d)
  
  export
  bindBufferRange :  (obj : WebGL2RenderingContextBase)
                  -> (target : UInt32)
                  -> (index : UInt32)
                  -> (buffer : Maybe WebGLBuffer)
                  -> (offset : Int64)
                  -> (size : Int64)
                  -> JSIO ()
  bindBufferRange a b c d e f = primJS
                              $ WebGL2RenderingContextBase.prim__bindBufferRange a
                                                                                 b
                                                                                 c
                                                                                 (toFFI d)
                                                                                 e
                                                                                 f
  
  export
  bindSampler :  (obj : WebGL2RenderingContextBase)
              -> (unit : UInt32)
              -> (sampler : Maybe WebGLSampler)
              -> JSIO ()
  bindSampler a b c = primJS
                    $ WebGL2RenderingContextBase.prim__bindSampler a b (toFFI c)
  
  export
  bindTransformFeedback :  (obj : WebGL2RenderingContextBase)
                        -> (target : UInt32)
                        -> (tf : Maybe WebGLTransformFeedback)
                        -> JSIO ()
  bindTransformFeedback a b c = primJS
                              $ WebGL2RenderingContextBase.prim__bindTransformFeedback a
                                                                                       b
                                                                                       (toFFI c)
  
  export
  bindVertexArray :  (obj : WebGL2RenderingContextBase)
                  -> (array : Maybe WebGLVertexArrayObject)
                  -> JSIO ()
  bindVertexArray a b = primJS
                      $ WebGL2RenderingContextBase.prim__bindVertexArray a
                                                                         (toFFI b)
  
  export
  blitFramebuffer :  (obj : WebGL2RenderingContextBase)
                  -> (srcX0 : Int32)
                  -> (srcY0 : Int32)
                  -> (srcX1 : Int32)
                  -> (srcY1 : Int32)
                  -> (dstX0 : Int32)
                  -> (dstY0 : Int32)
                  -> (dstX1 : Int32)
                  -> (dstY1 : Int32)
                  -> (mask : UInt32)
                  -> (filter : UInt32)
                  -> JSIO ()
  blitFramebuffer a b c d e f g h i j k = primJS
                                        $ WebGL2RenderingContextBase.prim__blitFramebuffer a
                                                                                           b
                                                                                           c
                                                                                           d
                                                                                           e
                                                                                           f
                                                                                           g
                                                                                           h
                                                                                           i
                                                                                           j
                                                                                           k
  
  export
  clearBufferfi :  (obj : WebGL2RenderingContextBase)
                -> (buffer : UInt32)
                -> (drawbuffer : Int32)
                -> (depth : Double)
                -> (stencil : Int32)
                -> JSIO ()
  clearBufferfi a b c d e = primJS
                          $ WebGL2RenderingContextBase.prim__clearBufferfi a
                                                                           b
                                                                           c
                                                                           d
                                                                           e
  
  export
  clearBufferfv :  (obj : WebGL2RenderingContextBase)
                -> (buffer : UInt32)
                -> (drawbuffer : Int32)
                -> (values : NS I [ Float32Array , Array Double ])
                -> (srcOffset : Optional UInt32)
                -> JSIO ()
  clearBufferfv a b c d e = primJS
                          $ WebGL2RenderingContextBase.prim__clearBufferfv a
                                                                           b
                                                                           c
                                                                           (toFFI d)
                                                                           (toFFI e)

  export
  clearBufferfv' :  (obj : WebGL2RenderingContextBase)
                 -> (buffer : UInt32)
                 -> (drawbuffer : Int32)
                 -> (values : NS I [ Float32Array , Array Double ])
                 -> JSIO ()
  clearBufferfv' a b c d = primJS
                         $ WebGL2RenderingContextBase.prim__clearBufferfv a
                                                                          b
                                                                          c
                                                                          (toFFI d)
                                                                          undef
  
  export
  clearBufferiv :  (obj : WebGL2RenderingContextBase)
                -> (buffer : UInt32)
                -> (drawbuffer : Int32)
                -> (values : NS I [ Int32Array , Array Int32 ])
                -> (srcOffset : Optional UInt32)
                -> JSIO ()
  clearBufferiv a b c d e = primJS
                          $ WebGL2RenderingContextBase.prim__clearBufferiv a
                                                                           b
                                                                           c
                                                                           (toFFI d)
                                                                           (toFFI e)

  export
  clearBufferiv' :  (obj : WebGL2RenderingContextBase)
                 -> (buffer : UInt32)
                 -> (drawbuffer : Int32)
                 -> (values : NS I [ Int32Array , Array Int32 ])
                 -> JSIO ()
  clearBufferiv' a b c d = primJS
                         $ WebGL2RenderingContextBase.prim__clearBufferiv a
                                                                          b
                                                                          c
                                                                          (toFFI d)
                                                                          undef
  
  export
  clearBufferuiv :  (obj : WebGL2RenderingContextBase)
                 -> (buffer : UInt32)
                 -> (drawbuffer : Int32)
                 -> (values : NS I [ UInt8Array , Array UInt32 ])
                 -> (srcOffset : Optional UInt32)
                 -> JSIO ()
  clearBufferuiv a b c d e = primJS
                           $ WebGL2RenderingContextBase.prim__clearBufferuiv a
                                                                             b
                                                                             c
                                                                             (toFFI d)
                                                                             (toFFI e)

  export
  clearBufferuiv' :  (obj : WebGL2RenderingContextBase)
                  -> (buffer : UInt32)
                  -> (drawbuffer : Int32)
                  -> (values : NS I [ UInt8Array , Array UInt32 ])
                  -> JSIO ()
  clearBufferuiv' a b c d = primJS
                          $ WebGL2RenderingContextBase.prim__clearBufferuiv a
                                                                            b
                                                                            c
                                                                            (toFFI d)
                                                                            undef
  
  export
  clientWaitSync :  (obj : WebGL2RenderingContextBase)
                 -> (sync : WebGLSync)
                 -> (flags : UInt32)
                 -> (timeout : UInt64)
                 -> JSIO UInt32
  clientWaitSync a b c d = primJS
                         $ WebGL2RenderingContextBase.prim__clientWaitSync a
                                                                           b
                                                                           c
                                                                           d
  
  export
  compressedTexImage3D :  (obj : WebGL2RenderingContextBase)
                       -> (target : UInt32)
                       -> (level : Int32)
                       -> (internalformat : UInt32)
                       -> (width : Int32)
                       -> (height : Int32)
                       -> (depth : Int32)
                       -> (border : Int32)
                       -> (imageSize : Int32)
                       -> (offset : Int64)
                       -> JSIO ()
  compressedTexImage3D a b c d e f g h i j = primJS
                                           $ WebGL2RenderingContextBase.prim__compressedTexImage3D a
                                                                                                   b
                                                                                                   c
                                                                                                   d
                                                                                                   e
                                                                                                   f
                                                                                                   g
                                                                                                   h
                                                                                                   i
                                                                                                   j
  
  export
  compressedTexImage3D1 :  (obj : WebGL2RenderingContextBase)
                        -> (target : UInt32)
                        -> (level : Int32)
                        -> (internalformat : UInt32)
                        -> (width : Int32)
                        -> (height : Int32)
                        -> (depth : Int32)
                        -> (border : Int32)
                        -> (srcData : NS I [ Int8Array
                                           , Int16Array
                                           , Int32Array
                                           , UInt8Array
                                           , UInt8Array
                                           , UInt8Array
                                           , UInt8ClampedArray
                                           , Float32Array
                                           , Float64Array
                                           , DataView
                                           ])
                        -> (srcOffset : Optional UInt32)
                        -> (srcLengthOverride : Optional UInt32)
                        -> JSIO ()
  compressedTexImage3D1 a b c d e f g h i j k = primJS
                                              $ WebGL2RenderingContextBase.prim__compressedTexImage3D1 a
                                                                                                       b
                                                                                                       c
                                                                                                       d
                                                                                                       e
                                                                                                       f
                                                                                                       g
                                                                                                       h
                                                                                                       (toFFI i)
                                                                                                       (toFFI j)
                                                                                                       (toFFI k)

  export
  compressedTexImage3D1' :  (obj : WebGL2RenderingContextBase)
                         -> (target : UInt32)
                         -> (level : Int32)
                         -> (internalformat : UInt32)
                         -> (width : Int32)
                         -> (height : Int32)
                         -> (depth : Int32)
                         -> (border : Int32)
                         -> (srcData : NS I [ Int8Array
                                            , Int16Array
                                            , Int32Array
                                            , UInt8Array
                                            , UInt8Array
                                            , UInt8Array
                                            , UInt8ClampedArray
                                            , Float32Array
                                            , Float64Array
                                            , DataView
                                            ])
                         -> JSIO ()
  compressedTexImage3D1' a b c d e f g h i = primJS
                                           $ WebGL2RenderingContextBase.prim__compressedTexImage3D1 a
                                                                                                    b
                                                                                                    c
                                                                                                    d
                                                                                                    e
                                                                                                    f
                                                                                                    g
                                                                                                    h
                                                                                                    (toFFI i)
                                                                                                    undef
                                                                                                    undef
  
  export
  compressedTexSubImage3D :  (obj : WebGL2RenderingContextBase)
                          -> (target : UInt32)
                          -> (level : Int32)
                          -> (xoffset : Int32)
                          -> (yoffset : Int32)
                          -> (zoffset : Int32)
                          -> (width : Int32)
                          -> (height : Int32)
                          -> (depth : Int32)
                          -> (format : UInt32)
                          -> (imageSize : Int32)
                          -> (offset : Int64)
                          -> JSIO ()
  compressedTexSubImage3D a b c d e f g h i j k l = primJS
                                                  $ WebGL2RenderingContextBase.prim__compressedTexSubImage3D a
                                                                                                             b
                                                                                                             c
                                                                                                             d
                                                                                                             e
                                                                                                             f
                                                                                                             g
                                                                                                             h
                                                                                                             i
                                                                                                             j
                                                                                                             k
                                                                                                             l
  
  export
  compressedTexSubImage3D1 :  (obj : WebGL2RenderingContextBase)
                           -> (target : UInt32)
                           -> (level : Int32)
                           -> (xoffset : Int32)
                           -> (yoffset : Int32)
                           -> (zoffset : Int32)
                           -> (width : Int32)
                           -> (height : Int32)
                           -> (depth : Int32)
                           -> (format : UInt32)
                           -> (srcData : NS I [ Int8Array
                                              , Int16Array
                                              , Int32Array
                                              , UInt8Array
                                              , UInt8Array
                                              , UInt8Array
                                              , UInt8ClampedArray
                                              , Float32Array
                                              , Float64Array
                                              , DataView
                                              ])
                           -> (srcOffset : Optional UInt32)
                           -> (srcLengthOverride : Optional UInt32)
                           -> JSIO ()
  compressedTexSubImage3D1 a b c d e f g h i j k l m = primJS
                                                     $ WebGL2RenderingContextBase.prim__compressedTexSubImage3D1 a
                                                                                                                 b
                                                                                                                 c
                                                                                                                 d
                                                                                                                 e
                                                                                                                 f
                                                                                                                 g
                                                                                                                 h
                                                                                                                 i
                                                                                                                 j
                                                                                                                 (toFFI k)
                                                                                                                 (toFFI l)
                                                                                                                 (toFFI m)

  export
  compressedTexSubImage3D1' :  (obj : WebGL2RenderingContextBase)
                            -> (target : UInt32)
                            -> (level : Int32)
                            -> (xoffset : Int32)
                            -> (yoffset : Int32)
                            -> (zoffset : Int32)
                            -> (width : Int32)
                            -> (height : Int32)
                            -> (depth : Int32)
                            -> (format : UInt32)
                            -> (srcData : NS I [ Int8Array
                                               , Int16Array
                                               , Int32Array
                                               , UInt8Array
                                               , UInt8Array
                                               , UInt8Array
                                               , UInt8ClampedArray
                                               , Float32Array
                                               , Float64Array
                                               , DataView
                                               ])
                            -> JSIO ()
  compressedTexSubImage3D1' a b c d e f g h i j k = primJS
                                                  $ WebGL2RenderingContextBase.prim__compressedTexSubImage3D1 a
                                                                                                              b
                                                                                                              c
                                                                                                              d
                                                                                                              e
                                                                                                              f
                                                                                                              g
                                                                                                              h
                                                                                                              i
                                                                                                              j
                                                                                                              (toFFI k)
                                                                                                              undef
                                                                                                              undef
  
  export
  copyBufferSubData :  (obj : WebGL2RenderingContextBase)
                    -> (readTarget : UInt32)
                    -> (writeTarget : UInt32)
                    -> (readOffset : Int64)
                    -> (writeOffset : Int64)
                    -> (size : Int64)
                    -> JSIO ()
  copyBufferSubData a b c d e f = primJS
                                $ WebGL2RenderingContextBase.prim__copyBufferSubData a
                                                                                     b
                                                                                     c
                                                                                     d
                                                                                     e
                                                                                     f
  
  export
  copyTexSubImage3D :  (obj : WebGL2RenderingContextBase)
                    -> (target : UInt32)
                    -> (level : Int32)
                    -> (xoffset : Int32)
                    -> (yoffset : Int32)
                    -> (zoffset : Int32)
                    -> (x : Int32)
                    -> (y : Int32)
                    -> (width : Int32)
                    -> (height : Int32)
                    -> JSIO ()
  copyTexSubImage3D a b c d e f g h i j = primJS
                                        $ WebGL2RenderingContextBase.prim__copyTexSubImage3D a
                                                                                             b
                                                                                             c
                                                                                             d
                                                                                             e
                                                                                             f
                                                                                             g
                                                                                             h
                                                                                             i
                                                                                             j
  
  export
  createQuery : (obj : WebGL2RenderingContextBase) -> JSIO (Maybe WebGLQuery)
  createQuery a = tryJS "WebGL2RenderingContextBase.createQuery"
                $ WebGL2RenderingContextBase.prim__createQuery a
  
  export
  createSampler :  (obj : WebGL2RenderingContextBase)
                -> JSIO (Maybe WebGLSampler)
  createSampler a = tryJS "WebGL2RenderingContextBase.createSampler"
                  $ WebGL2RenderingContextBase.prim__createSampler a
  
  export
  createTransformFeedback :  (obj : WebGL2RenderingContextBase)
                          -> JSIO (Maybe WebGLTransformFeedback)
  createTransformFeedback a = tryJS "WebGL2RenderingContextBase.createTransformFeedback"
                            $ WebGL2RenderingContextBase.prim__createTransformFeedback a
  
  export
  createVertexArray :  (obj : WebGL2RenderingContextBase)
                    -> JSIO (Maybe WebGLVertexArrayObject)
  createVertexArray a = tryJS "WebGL2RenderingContextBase.createVertexArray"
                      $ WebGL2RenderingContextBase.prim__createVertexArray a
  
  export
  deleteQuery :  (obj : WebGL2RenderingContextBase)
              -> (query : Maybe WebGLQuery)
              -> JSIO ()
  deleteQuery a b = primJS
                  $ WebGL2RenderingContextBase.prim__deleteQuery a (toFFI b)
  
  export
  deleteSampler :  (obj : WebGL2RenderingContextBase)
                -> (sampler : Maybe WebGLSampler)
                -> JSIO ()
  deleteSampler a b = primJS
                    $ WebGL2RenderingContextBase.prim__deleteSampler a (toFFI b)
  
  export
  deleteSync :  (obj : WebGL2RenderingContextBase)
             -> (sync : Maybe WebGLSync)
             -> JSIO ()
  deleteSync a b = primJS
                 $ WebGL2RenderingContextBase.prim__deleteSync a (toFFI b)
  
  export
  deleteTransformFeedback :  (obj : WebGL2RenderingContextBase)
                          -> (tf : Maybe WebGLTransformFeedback)
                          -> JSIO ()
  deleteTransformFeedback a b = primJS
                              $ WebGL2RenderingContextBase.prim__deleteTransformFeedback a
                                                                                         (toFFI b)
  
  export
  deleteVertexArray :  (obj : WebGL2RenderingContextBase)
                    -> (vertexArray : Maybe WebGLVertexArrayObject)
                    -> JSIO ()
  deleteVertexArray a b = primJS
                        $ WebGL2RenderingContextBase.prim__deleteVertexArray a
                                                                             (toFFI b)
  
  export
  drawArraysInstanced :  (obj : WebGL2RenderingContextBase)
                      -> (mode : UInt32)
                      -> (first : Int32)
                      -> (count : Int32)
                      -> (instanceCount : Int32)
                      -> JSIO ()
  drawArraysInstanced a b c d e = primJS
                                $ WebGL2RenderingContextBase.prim__drawArraysInstanced a
                                                                                       b
                                                                                       c
                                                                                       d
                                                                                       e
  
  export
  drawBuffers :  (obj : WebGL2RenderingContextBase)
              -> (buffers : Array UInt32)
              -> JSIO ()
  drawBuffers a b = primJS $ WebGL2RenderingContextBase.prim__drawBuffers a b
  
  export
  drawElementsInstanced :  (obj : WebGL2RenderingContextBase)
                        -> (mode : UInt32)
                        -> (count : Int32)
                        -> (type : UInt32)
                        -> (offset : Int64)
                        -> (instanceCount : Int32)
                        -> JSIO ()
  drawElementsInstanced a b c d e f = primJS
                                    $ WebGL2RenderingContextBase.prim__drawElementsInstanced a
                                                                                             b
                                                                                             c
                                                                                             d
                                                                                             e
                                                                                             f
  
  export
  drawRangeElements :  (obj : WebGL2RenderingContextBase)
                    -> (mode : UInt32)
                    -> (start : UInt32)
                    -> (end : UInt32)
                    -> (count : Int32)
                    -> (type : UInt32)
                    -> (offset : Int64)
                    -> JSIO ()
  drawRangeElements a b c d e f g = primJS
                                  $ WebGL2RenderingContextBase.prim__drawRangeElements a
                                                                                       b
                                                                                       c
                                                                                       d
                                                                                       e
                                                                                       f
                                                                                       g
  
  export
  endQuery : (obj : WebGL2RenderingContextBase) -> (target : UInt32) -> JSIO ()
  endQuery a b = primJS $ WebGL2RenderingContextBase.prim__endQuery a b
  
  export
  endTransformFeedback : (obj : WebGL2RenderingContextBase) -> JSIO ()
  endTransformFeedback a = primJS
                         $ WebGL2RenderingContextBase.prim__endTransformFeedback a
  
  export
  fenceSync :  (obj : WebGL2RenderingContextBase)
            -> (condition : UInt32)
            -> (flags : UInt32)
            -> JSIO (Maybe WebGLSync)
  fenceSync a b c = tryJS "WebGL2RenderingContextBase.fenceSync"
                  $ WebGL2RenderingContextBase.prim__fenceSync a b c
  
  export
  framebufferTextureLayer :  (obj : WebGL2RenderingContextBase)
                          -> (target : UInt32)
                          -> (attachment : UInt32)
                          -> (texture : Maybe WebGLTexture)
                          -> (level : Int32)
                          -> (layer : Int32)
                          -> JSIO ()
  framebufferTextureLayer a b c d e f = primJS
                                      $ WebGL2RenderingContextBase.prim__framebufferTextureLayer a
                                                                                                 b
                                                                                                 c
                                                                                                 (toFFI d)
                                                                                                 e
                                                                                                 f
  
  export
  getActiveUniformBlockName :  (obj : WebGL2RenderingContextBase)
                            -> (program : WebGLProgram)
                            -> (uniformBlockIndex : UInt32)
                            -> JSIO (Maybe String)
  getActiveUniformBlockName a b c = tryJS "WebGL2RenderingContextBase.getActiveUniformBlockName"
                                  $ WebGL2RenderingContextBase.prim__getActiveUniformBlockName a
                                                                                               b
                                                                                               c
  
  export
  getActiveUniformBlockParameter :  (obj : WebGL2RenderingContextBase)
                                 -> (program : WebGLProgram)
                                 -> (uniformBlockIndex : UInt32)
                                 -> (pname : UInt32)
                                 -> JSIO Any
  getActiveUniformBlockParameter a b c d = tryJS "WebGL2RenderingContextBase.getActiveUniformBlockParameter"
                                         $ WebGL2RenderingContextBase.prim__getActiveUniformBlockParameter a
                                                                                                           b
                                                                                                           c
                                                                                                           d
  
  export
  getActiveUniforms :  (obj : WebGL2RenderingContextBase)
                    -> (program : WebGLProgram)
                    -> (uniformIndices : Array UInt32)
                    -> (pname : UInt32)
                    -> JSIO Any
  getActiveUniforms a b c d = tryJS "WebGL2RenderingContextBase.getActiveUniforms"
                            $ WebGL2RenderingContextBase.prim__getActiveUniforms a
                                                                                 b
                                                                                 c
                                                                                 d
  
  export
  getBufferSubData :  (obj : WebGL2RenderingContextBase)
                   -> (target : UInt32)
                   -> (srcByteOffset : Int64)
                   -> (dstBuffer : NS I [ Int8Array
                                        , Int16Array
                                        , Int32Array
                                        , UInt8Array
                                        , UInt8Array
                                        , UInt8Array
                                        , UInt8ClampedArray
                                        , Float32Array
                                        , Float64Array
                                        , DataView
                                        ])
                   -> (dstOffset : Optional UInt32)
                   -> (length : Optional UInt32)
                   -> JSIO ()
  getBufferSubData a b c d e f = primJS
                               $ WebGL2RenderingContextBase.prim__getBufferSubData a
                                                                                   b
                                                                                   c
                                                                                   (toFFI d)
                                                                                   (toFFI e)
                                                                                   (toFFI f)

  export
  getBufferSubData' :  (obj : WebGL2RenderingContextBase)
                    -> (target : UInt32)
                    -> (srcByteOffset : Int64)
                    -> (dstBuffer : NS I [ Int8Array
                                         , Int16Array
                                         , Int32Array
                                         , UInt8Array
                                         , UInt8Array
                                         , UInt8Array
                                         , UInt8ClampedArray
                                         , Float32Array
                                         , Float64Array
                                         , DataView
                                         ])
                    -> JSIO ()
  getBufferSubData' a b c d = primJS
                            $ WebGL2RenderingContextBase.prim__getBufferSubData a
                                                                                b
                                                                                c
                                                                                (toFFI d)
                                                                                undef
                                                                                undef
  
  export
  getFragDataLocation :  (obj : WebGL2RenderingContextBase)
                      -> (program : WebGLProgram)
                      -> (name : String)
                      -> JSIO Int32
  getFragDataLocation a b c = primJS
                            $ WebGL2RenderingContextBase.prim__getFragDataLocation a
                                                                                   b
                                                                                   c
  
  export
  getIndexedParameter :  (obj : WebGL2RenderingContextBase)
                      -> (target : UInt32)
                      -> (index : UInt32)
                      -> JSIO Any
  getIndexedParameter a b c = tryJS "WebGL2RenderingContextBase.getIndexedParameter"
                            $ WebGL2RenderingContextBase.prim__getIndexedParameter a
                                                                                   b
                                                                                   c
  
  export
  getInternalformatParameter :  (obj : WebGL2RenderingContextBase)
                             -> (target : UInt32)
                             -> (internalformat : UInt32)
                             -> (pname : UInt32)
                             -> JSIO Any
  getInternalformatParameter a b c d = tryJS "WebGL2RenderingContextBase.getInternalformatParameter"
                                     $ WebGL2RenderingContextBase.prim__getInternalformatParameter a
                                                                                                   b
                                                                                                   c
                                                                                                   d
  
  export
  getQueryParameter :  (obj : WebGL2RenderingContextBase)
                    -> (query : WebGLQuery)
                    -> (pname : UInt32)
                    -> JSIO Any
  getQueryParameter a b c = tryJS "WebGL2RenderingContextBase.getQueryParameter"
                          $ WebGL2RenderingContextBase.prim__getQueryParameter a
                                                                               b
                                                                               c
  
  export
  getQuery :  (obj : WebGL2RenderingContextBase)
           -> (target : UInt32)
           -> (pname : UInt32)
           -> JSIO (Maybe WebGLQuery)
  getQuery a b c = tryJS "WebGL2RenderingContextBase.getQuery"
                 $ WebGL2RenderingContextBase.prim__getQuery a b c
  
  export
  getSamplerParameter :  (obj : WebGL2RenderingContextBase)
                      -> (sampler : WebGLSampler)
                      -> (pname : UInt32)
                      -> JSIO Any
  getSamplerParameter a b c = tryJS "WebGL2RenderingContextBase.getSamplerParameter"
                            $ WebGL2RenderingContextBase.prim__getSamplerParameter a
                                                                                   b
                                                                                   c
  
  export
  getSyncParameter :  (obj : WebGL2RenderingContextBase)
                   -> (sync : WebGLSync)
                   -> (pname : UInt32)
                   -> JSIO Any
  getSyncParameter a b c = tryJS "WebGL2RenderingContextBase.getSyncParameter"
                         $ WebGL2RenderingContextBase.prim__getSyncParameter a
                                                                             b
                                                                             c
  
  export
  getTransformFeedbackVarying :  (obj : WebGL2RenderingContextBase)
                              -> (program : WebGLProgram)
                              -> (index : UInt32)
                              -> JSIO (Maybe WebGLActiveInfo)
  getTransformFeedbackVarying a b c = tryJS "WebGL2RenderingContextBase.getTransformFeedbackVarying"
                                    $ WebGL2RenderingContextBase.prim__getTransformFeedbackVarying a
                                                                                                   b
                                                                                                   c
  
  export
  getUniformBlockIndex :  (obj : WebGL2RenderingContextBase)
                       -> (program : WebGLProgram)
                       -> (uniformBlockName : String)
                       -> JSIO UInt32
  getUniformBlockIndex a b c = primJS
                             $ WebGL2RenderingContextBase.prim__getUniformBlockIndex a
                                                                                     b
                                                                                     c
  
  export
  getUniformIndices :  (obj : WebGL2RenderingContextBase)
                    -> (program : WebGLProgram)
                    -> (uniformNames : Array String)
                    -> JSIO (Maybe (Array UInt32))
  getUniformIndices a b c = tryJS "WebGL2RenderingContextBase.getUniformIndices"
                          $ WebGL2RenderingContextBase.prim__getUniformIndices a
                                                                               b
                                                                               c
  
  export
  invalidateFramebuffer :  (obj : WebGL2RenderingContextBase)
                        -> (target : UInt32)
                        -> (attachments : Array UInt32)
                        -> JSIO ()
  invalidateFramebuffer a b c = primJS
                              $ WebGL2RenderingContextBase.prim__invalidateFramebuffer a
                                                                                       b
                                                                                       c
  
  export
  invalidateSubFramebuffer :  (obj : WebGL2RenderingContextBase)
                           -> (target : UInt32)
                           -> (attachments : Array UInt32)
                           -> (x : Int32)
                           -> (y : Int32)
                           -> (width : Int32)
                           -> (height : Int32)
                           -> JSIO ()
  invalidateSubFramebuffer a b c d e f g = primJS
                                         $ WebGL2RenderingContextBase.prim__invalidateSubFramebuffer a
                                                                                                     b
                                                                                                     c
                                                                                                     d
                                                                                                     e
                                                                                                     f
                                                                                                     g
  
  export
  isQuery :  (obj : WebGL2RenderingContextBase)
          -> (query : Maybe WebGLQuery)
          -> JSIO Bool
  isQuery a b = tryJS "WebGL2RenderingContextBase.isQuery"
              $ WebGL2RenderingContextBase.prim__isQuery a (toFFI b)
  
  export
  isSampler :  (obj : WebGL2RenderingContextBase)
            -> (sampler : Maybe WebGLSampler)
            -> JSIO Bool
  isSampler a b = tryJS "WebGL2RenderingContextBase.isSampler"
                $ WebGL2RenderingContextBase.prim__isSampler a (toFFI b)
  
  export
  isSync :  (obj : WebGL2RenderingContextBase)
         -> (sync : Maybe WebGLSync)
         -> JSIO Bool
  isSync a b = tryJS "WebGL2RenderingContextBase.isSync"
             $ WebGL2RenderingContextBase.prim__isSync a (toFFI b)
  
  export
  isTransformFeedback :  (obj : WebGL2RenderingContextBase)
                      -> (tf : Maybe WebGLTransformFeedback)
                      -> JSIO Bool
  isTransformFeedback a b = tryJS "WebGL2RenderingContextBase.isTransformFeedback"
                          $ WebGL2RenderingContextBase.prim__isTransformFeedback a
                                                                                 (toFFI b)
  
  export
  isVertexArray :  (obj : WebGL2RenderingContextBase)
                -> (vertexArray : Maybe WebGLVertexArrayObject)
                -> JSIO Bool
  isVertexArray a b = tryJS "WebGL2RenderingContextBase.isVertexArray"
                    $ WebGL2RenderingContextBase.prim__isVertexArray a (toFFI b)
  
  export
  pauseTransformFeedback : (obj : WebGL2RenderingContextBase) -> JSIO ()
  pauseTransformFeedback a = primJS
                           $ WebGL2RenderingContextBase.prim__pauseTransformFeedback a
  
  export
  readBuffer : (obj : WebGL2RenderingContextBase) -> (src : UInt32) -> JSIO ()
  readBuffer a b = primJS $ WebGL2RenderingContextBase.prim__readBuffer a b
  
  export
  renderbufferStorageMultisample :  (obj : WebGL2RenderingContextBase)
                                 -> (target : UInt32)
                                 -> (samples : Int32)
                                 -> (internalformat : UInt32)
                                 -> (width : Int32)
                                 -> (height : Int32)
                                 -> JSIO ()
  renderbufferStorageMultisample a b c d e f = primJS
                                             $ WebGL2RenderingContextBase.prim__renderbufferStorageMultisample a
                                                                                                               b
                                                                                                               c
                                                                                                               d
                                                                                                               e
                                                                                                               f
  
  export
  resumeTransformFeedback : (obj : WebGL2RenderingContextBase) -> JSIO ()
  resumeTransformFeedback a = primJS
                            $ WebGL2RenderingContextBase.prim__resumeTransformFeedback a
  
  export
  samplerParameterf :  (obj : WebGL2RenderingContextBase)
                    -> (sampler : WebGLSampler)
                    -> (pname : UInt32)
                    -> (param : Double)
                    -> JSIO ()
  samplerParameterf a b c d = primJS
                            $ WebGL2RenderingContextBase.prim__samplerParameterf a
                                                                                 b
                                                                                 c
                                                                                 d
  
  export
  samplerParameteri :  (obj : WebGL2RenderingContextBase)
                    -> (sampler : WebGLSampler)
                    -> (pname : UInt32)
                    -> (param : Int32)
                    -> JSIO ()
  samplerParameteri a b c d = primJS
                            $ WebGL2RenderingContextBase.prim__samplerParameteri a
                                                                                 b
                                                                                 c
                                                                                 d
  
  export
  texImage3D :  (obj : WebGL2RenderingContextBase)
             -> (target : UInt32)
             -> (level : Int32)
             -> (internalformat : Int32)
             -> (width : Int32)
             -> (height : Int32)
             -> (depth : Int32)
             -> (border : Int32)
             -> (format : UInt32)
             -> (type : UInt32)
             -> (pboOffset : Int64)
             -> JSIO ()
  texImage3D a b c d e f g h i j k = primJS
                                   $ WebGL2RenderingContextBase.prim__texImage3D a
                                                                                 b
                                                                                 c
                                                                                 d
                                                                                 e
                                                                                 f
                                                                                 g
                                                                                 h
                                                                                 i
                                                                                 j
                                                                                 k
  
  export
  texImage3D1 :  (obj : WebGL2RenderingContextBase)
              -> (target : UInt32)
              -> (level : Int32)
              -> (internalformat : Int32)
              -> (width : Int32)
              -> (height : Int32)
              -> (depth : Int32)
              -> (border : Int32)
              -> (format : UInt32)
              -> (type : UInt32)
              -> (source : NS I [ ImageBitmap
                                , ImageData
                                , HTMLImageElement
                                , HTMLCanvasElement
                                , HTMLVideoElement
                                , OffscreenCanvas
                                ])
              -> JSIO ()
  texImage3D1 a b c d e f g h i j k = primJS
                                    $ WebGL2RenderingContextBase.prim__texImage3D1 a
                                                                                   b
                                                                                   c
                                                                                   d
                                                                                   e
                                                                                   f
                                                                                   g
                                                                                   h
                                                                                   i
                                                                                   j
                                                                                   (toFFI k)
  
  export
  texImage3D2 :  (obj : WebGL2RenderingContextBase)
              -> (target : UInt32)
              -> (level : Int32)
              -> (internalformat : Int32)
              -> (width : Int32)
              -> (height : Int32)
              -> (depth : Int32)
              -> (border : Int32)
              -> (format : UInt32)
              -> (type : UInt32)
              -> (srcData : Maybe (NS I [ Int8Array
                                        , Int16Array
                                        , Int32Array
                                        , UInt8Array
                                        , UInt8Array
                                        , UInt8Array
                                        , UInt8ClampedArray
                                        , Float32Array
                                        , Float64Array
                                        , DataView
                                        ]))
              -> JSIO ()
  texImage3D2 a b c d e f g h i j k = primJS
                                    $ WebGL2RenderingContextBase.prim__texImage3D2 a
                                                                                   b
                                                                                   c
                                                                                   d
                                                                                   e
                                                                                   f
                                                                                   g
                                                                                   h
                                                                                   i
                                                                                   j
                                                                                   (toFFI k)
  
  export
  texImage3D3 :  (obj : WebGL2RenderingContextBase)
              -> (target : UInt32)
              -> (level : Int32)
              -> (internalformat : Int32)
              -> (width : Int32)
              -> (height : Int32)
              -> (depth : Int32)
              -> (border : Int32)
              -> (format : UInt32)
              -> (type : UInt32)
              -> (srcData : NS I [ Int8Array
                                 , Int16Array
                                 , Int32Array
                                 , UInt8Array
                                 , UInt8Array
                                 , UInt8Array
                                 , UInt8ClampedArray
                                 , Float32Array
                                 , Float64Array
                                 , DataView
                                 ])
              -> (srcOffset : UInt32)
              -> JSIO ()
  texImage3D3 a b c d e f g h i j k l = primJS
                                      $ WebGL2RenderingContextBase.prim__texImage3D3 a
                                                                                     b
                                                                                     c
                                                                                     d
                                                                                     e
                                                                                     f
                                                                                     g
                                                                                     h
                                                                                     i
                                                                                     j
                                                                                     (toFFI k)
                                                                                     l
  
  export
  texStorage2D :  (obj : WebGL2RenderingContextBase)
               -> (target : UInt32)
               -> (levels : Int32)
               -> (internalformat : UInt32)
               -> (width : Int32)
               -> (height : Int32)
               -> JSIO ()
  texStorage2D a b c d e f = primJS
                           $ WebGL2RenderingContextBase.prim__texStorage2D a
                                                                           b
                                                                           c
                                                                           d
                                                                           e
                                                                           f
  
  export
  texStorage3D :  (obj : WebGL2RenderingContextBase)
               -> (target : UInt32)
               -> (levels : Int32)
               -> (internalformat : UInt32)
               -> (width : Int32)
               -> (height : Int32)
               -> (depth : Int32)
               -> JSIO ()
  texStorage3D a b c d e f g = primJS
                             $ WebGL2RenderingContextBase.prim__texStorage3D a
                                                                             b
                                                                             c
                                                                             d
                                                                             e
                                                                             f
                                                                             g
  
  export
  texSubImage3D :  (obj : WebGL2RenderingContextBase)
                -> (target : UInt32)
                -> (level : Int32)
                -> (xoffset : Int32)
                -> (yoffset : Int32)
                -> (zoffset : Int32)
                -> (width : Int32)
                -> (height : Int32)
                -> (depth : Int32)
                -> (format : UInt32)
                -> (type : UInt32)
                -> (pboOffset : Int64)
                -> JSIO ()
  texSubImage3D a b c d e f g h i j k l = primJS
                                        $ WebGL2RenderingContextBase.prim__texSubImage3D a
                                                                                         b
                                                                                         c
                                                                                         d
                                                                                         e
                                                                                         f
                                                                                         g
                                                                                         h
                                                                                         i
                                                                                         j
                                                                                         k
                                                                                         l
  
  export
  texSubImage3D1 :  (obj : WebGL2RenderingContextBase)
                 -> (target : UInt32)
                 -> (level : Int32)
                 -> (xoffset : Int32)
                 -> (yoffset : Int32)
                 -> (zoffset : Int32)
                 -> (width : Int32)
                 -> (height : Int32)
                 -> (depth : Int32)
                 -> (format : UInt32)
                 -> (type : UInt32)
                 -> (source : NS I [ ImageBitmap
                                   , ImageData
                                   , HTMLImageElement
                                   , HTMLCanvasElement
                                   , HTMLVideoElement
                                   , OffscreenCanvas
                                   ])
                 -> JSIO ()
  texSubImage3D1 a b c d e f g h i j k l = primJS
                                         $ WebGL2RenderingContextBase.prim__texSubImage3D1 a
                                                                                           b
                                                                                           c
                                                                                           d
                                                                                           e
                                                                                           f
                                                                                           g
                                                                                           h
                                                                                           i
                                                                                           j
                                                                                           k
                                                                                           (toFFI l)
  
  export
  texSubImage3D2 :  (obj : WebGL2RenderingContextBase)
                 -> (target : UInt32)
                 -> (level : Int32)
                 -> (xoffset : Int32)
                 -> (yoffset : Int32)
                 -> (zoffset : Int32)
                 -> (width : Int32)
                 -> (height : Int32)
                 -> (depth : Int32)
                 -> (format : UInt32)
                 -> (type : UInt32)
                 -> (srcData : Maybe (NS I [ Int8Array
                                           , Int16Array
                                           , Int32Array
                                           , UInt8Array
                                           , UInt8Array
                                           , UInt8Array
                                           , UInt8ClampedArray
                                           , Float32Array
                                           , Float64Array
                                           , DataView
                                           ]))
                 -> (srcOffset : Optional UInt32)
                 -> JSIO ()
  texSubImage3D2 a b c d e f g h i j k l m = primJS
                                           $ WebGL2RenderingContextBase.prim__texSubImage3D2 a
                                                                                             b
                                                                                             c
                                                                                             d
                                                                                             e
                                                                                             f
                                                                                             g
                                                                                             h
                                                                                             i
                                                                                             j
                                                                                             k
                                                                                             (toFFI l)
                                                                                             (toFFI m)

  export
  texSubImage3D2' :  (obj : WebGL2RenderingContextBase)
                  -> (target : UInt32)
                  -> (level : Int32)
                  -> (xoffset : Int32)
                  -> (yoffset : Int32)
                  -> (zoffset : Int32)
                  -> (width : Int32)
                  -> (height : Int32)
                  -> (depth : Int32)
                  -> (format : UInt32)
                  -> (type : UInt32)
                  -> (srcData : Maybe (NS I [ Int8Array
                                            , Int16Array
                                            , Int32Array
                                            , UInt8Array
                                            , UInt8Array
                                            , UInt8Array
                                            , UInt8ClampedArray
                                            , Float32Array
                                            , Float64Array
                                            , DataView
                                            ]))
                  -> JSIO ()
  texSubImage3D2' a b c d e f g h i j k l = primJS
                                          $ WebGL2RenderingContextBase.prim__texSubImage3D2 a
                                                                                            b
                                                                                            c
                                                                                            d
                                                                                            e
                                                                                            f
                                                                                            g
                                                                                            h
                                                                                            i
                                                                                            j
                                                                                            k
                                                                                            (toFFI l)
                                                                                            undef
  
  export
  transformFeedbackVaryings :  (obj : WebGL2RenderingContextBase)
                            -> (program : WebGLProgram)
                            -> (varyings : Array String)
                            -> (bufferMode : UInt32)
                            -> JSIO ()
  transformFeedbackVaryings a b c d = primJS
                                    $ WebGL2RenderingContextBase.prim__transformFeedbackVaryings a
                                                                                                 b
                                                                                                 c
                                                                                                 d
  
  export
  uniform1ui :  (obj : WebGL2RenderingContextBase)
             -> (location : Maybe WebGLUniformLocation)
             -> (v0 : UInt32)
             -> JSIO ()
  uniform1ui a b c = primJS
                   $ WebGL2RenderingContextBase.prim__uniform1ui a (toFFI b) c
  
  export
  uniform1uiv :  (obj : WebGL2RenderingContextBase)
              -> (location : Maybe WebGLUniformLocation)
              -> (data_ : NS I [ UInt8Array , Array UInt32 ])
              -> (srcOffset : Optional UInt32)
              -> (srcLength : Optional UInt32)
              -> JSIO ()
  uniform1uiv a b c d e = primJS
                        $ WebGL2RenderingContextBase.prim__uniform1uiv a
                                                                       (toFFI b)
                                                                       (toFFI c)
                                                                       (toFFI d)
                                                                       (toFFI e)

  export
  uniform1uiv' :  (obj : WebGL2RenderingContextBase)
               -> (location : Maybe WebGLUniformLocation)
               -> (data_ : NS I [ UInt8Array , Array UInt32 ])
               -> JSIO ()
  uniform1uiv' a b c = primJS
                     $ WebGL2RenderingContextBase.prim__uniform1uiv a
                                                                    (toFFI b)
                                                                    (toFFI c)
                                                                    undef
                                                                    undef
  
  export
  uniform2ui :  (obj : WebGL2RenderingContextBase)
             -> (location : Maybe WebGLUniformLocation)
             -> (v0 : UInt32)
             -> (v1 : UInt32)
             -> JSIO ()
  uniform2ui a b c d = primJS
                     $ WebGL2RenderingContextBase.prim__uniform2ui a
                                                                   (toFFI b)
                                                                   c
                                                                   d
  
  export
  uniform2uiv :  (obj : WebGL2RenderingContextBase)
              -> (location : Maybe WebGLUniformLocation)
              -> (data_ : NS I [ UInt8Array , Array UInt32 ])
              -> (srcOffset : Optional UInt32)
              -> (srcLength : Optional UInt32)
              -> JSIO ()
  uniform2uiv a b c d e = primJS
                        $ WebGL2RenderingContextBase.prim__uniform2uiv a
                                                                       (toFFI b)
                                                                       (toFFI c)
                                                                       (toFFI d)
                                                                       (toFFI e)

  export
  uniform2uiv' :  (obj : WebGL2RenderingContextBase)
               -> (location : Maybe WebGLUniformLocation)
               -> (data_ : NS I [ UInt8Array , Array UInt32 ])
               -> JSIO ()
  uniform2uiv' a b c = primJS
                     $ WebGL2RenderingContextBase.prim__uniform2uiv a
                                                                    (toFFI b)
                                                                    (toFFI c)
                                                                    undef
                                                                    undef
  
  export
  uniform3ui :  (obj : WebGL2RenderingContextBase)
             -> (location : Maybe WebGLUniformLocation)
             -> (v0 : UInt32)
             -> (v1 : UInt32)
             -> (v2 : UInt32)
             -> JSIO ()
  uniform3ui a b c d e = primJS
                       $ WebGL2RenderingContextBase.prim__uniform3ui a
                                                                     (toFFI b)
                                                                     c
                                                                     d
                                                                     e
  
  export
  uniform3uiv :  (obj : WebGL2RenderingContextBase)
              -> (location : Maybe WebGLUniformLocation)
              -> (data_ : NS I [ UInt8Array , Array UInt32 ])
              -> (srcOffset : Optional UInt32)
              -> (srcLength : Optional UInt32)
              -> JSIO ()
  uniform3uiv a b c d e = primJS
                        $ WebGL2RenderingContextBase.prim__uniform3uiv a
                                                                       (toFFI b)
                                                                       (toFFI c)
                                                                       (toFFI d)
                                                                       (toFFI e)

  export
  uniform3uiv' :  (obj : WebGL2RenderingContextBase)
               -> (location : Maybe WebGLUniformLocation)
               -> (data_ : NS I [ UInt8Array , Array UInt32 ])
               -> JSIO ()
  uniform3uiv' a b c = primJS
                     $ WebGL2RenderingContextBase.prim__uniform3uiv a
                                                                    (toFFI b)
                                                                    (toFFI c)
                                                                    undef
                                                                    undef
  
  export
  uniform4ui :  (obj : WebGL2RenderingContextBase)
             -> (location : Maybe WebGLUniformLocation)
             -> (v0 : UInt32)
             -> (v1 : UInt32)
             -> (v2 : UInt32)
             -> (v3 : UInt32)
             -> JSIO ()
  uniform4ui a b c d e f = primJS
                         $ WebGL2RenderingContextBase.prim__uniform4ui a
                                                                       (toFFI b)
                                                                       c
                                                                       d
                                                                       e
                                                                       f
  
  export
  uniform4uiv :  (obj : WebGL2RenderingContextBase)
              -> (location : Maybe WebGLUniformLocation)
              -> (data_ : NS I [ UInt8Array , Array UInt32 ])
              -> (srcOffset : Optional UInt32)
              -> (srcLength : Optional UInt32)
              -> JSIO ()
  uniform4uiv a b c d e = primJS
                        $ WebGL2RenderingContextBase.prim__uniform4uiv a
                                                                       (toFFI b)
                                                                       (toFFI c)
                                                                       (toFFI d)
                                                                       (toFFI e)

  export
  uniform4uiv' :  (obj : WebGL2RenderingContextBase)
               -> (location : Maybe WebGLUniformLocation)
               -> (data_ : NS I [ UInt8Array , Array UInt32 ])
               -> JSIO ()
  uniform4uiv' a b c = primJS
                     $ WebGL2RenderingContextBase.prim__uniform4uiv a
                                                                    (toFFI b)
                                                                    (toFFI c)
                                                                    undef
                                                                    undef
  
  export
  uniformBlockBinding :  (obj : WebGL2RenderingContextBase)
                      -> (program : WebGLProgram)
                      -> (uniformBlockIndex : UInt32)
                      -> (uniformBlockBinding : UInt32)
                      -> JSIO ()
  uniformBlockBinding a b c d = primJS
                              $ WebGL2RenderingContextBase.prim__uniformBlockBinding a
                                                                                     b
                                                                                     c
                                                                                     d
  
  export
  uniformMatrix2x3fv :  (obj : WebGL2RenderingContextBase)
                     -> (location : Maybe WebGLUniformLocation)
                     -> (transpose : Bool)
                     -> (data_ : NS I [ Float32Array , Array Double ])
                     -> (srcOffset : Optional UInt32)
                     -> (srcLength : Optional UInt32)
                     -> JSIO ()
  uniformMatrix2x3fv a b c d e f = primJS
                                 $ WebGL2RenderingContextBase.prim__uniformMatrix2x3fv a
                                                                                       (toFFI b)
                                                                                       (toFFI c)
                                                                                       (toFFI d)
                                                                                       (toFFI e)
                                                                                       (toFFI f)

  export
  uniformMatrix2x3fv' :  (obj : WebGL2RenderingContextBase)
                      -> (location : Maybe WebGLUniformLocation)
                      -> (transpose : Bool)
                      -> (data_ : NS I [ Float32Array , Array Double ])
                      -> JSIO ()
  uniformMatrix2x3fv' a b c d = primJS
                              $ WebGL2RenderingContextBase.prim__uniformMatrix2x3fv a
                                                                                    (toFFI b)
                                                                                    (toFFI c)
                                                                                    (toFFI d)
                                                                                    undef
                                                                                    undef
  
  export
  uniformMatrix2x4fv :  (obj : WebGL2RenderingContextBase)
                     -> (location : Maybe WebGLUniformLocation)
                     -> (transpose : Bool)
                     -> (data_ : NS I [ Float32Array , Array Double ])
                     -> (srcOffset : Optional UInt32)
                     -> (srcLength : Optional UInt32)
                     -> JSIO ()
  uniformMatrix2x4fv a b c d e f = primJS
                                 $ WebGL2RenderingContextBase.prim__uniformMatrix2x4fv a
                                                                                       (toFFI b)
                                                                                       (toFFI c)
                                                                                       (toFFI d)
                                                                                       (toFFI e)
                                                                                       (toFFI f)

  export
  uniformMatrix2x4fv' :  (obj : WebGL2RenderingContextBase)
                      -> (location : Maybe WebGLUniformLocation)
                      -> (transpose : Bool)
                      -> (data_ : NS I [ Float32Array , Array Double ])
                      -> JSIO ()
  uniformMatrix2x4fv' a b c d = primJS
                              $ WebGL2RenderingContextBase.prim__uniformMatrix2x4fv a
                                                                                    (toFFI b)
                                                                                    (toFFI c)
                                                                                    (toFFI d)
                                                                                    undef
                                                                                    undef
  
  export
  uniformMatrix3x2fv :  (obj : WebGL2RenderingContextBase)
                     -> (location : Maybe WebGLUniformLocation)
                     -> (transpose : Bool)
                     -> (data_ : NS I [ Float32Array , Array Double ])
                     -> (srcOffset : Optional UInt32)
                     -> (srcLength : Optional UInt32)
                     -> JSIO ()
  uniformMatrix3x2fv a b c d e f = primJS
                                 $ WebGL2RenderingContextBase.prim__uniformMatrix3x2fv a
                                                                                       (toFFI b)
                                                                                       (toFFI c)
                                                                                       (toFFI d)
                                                                                       (toFFI e)
                                                                                       (toFFI f)

  export
  uniformMatrix3x2fv' :  (obj : WebGL2RenderingContextBase)
                      -> (location : Maybe WebGLUniformLocation)
                      -> (transpose : Bool)
                      -> (data_ : NS I [ Float32Array , Array Double ])
                      -> JSIO ()
  uniformMatrix3x2fv' a b c d = primJS
                              $ WebGL2RenderingContextBase.prim__uniformMatrix3x2fv a
                                                                                    (toFFI b)
                                                                                    (toFFI c)
                                                                                    (toFFI d)
                                                                                    undef
                                                                                    undef
  
  export
  uniformMatrix3x4fv :  (obj : WebGL2RenderingContextBase)
                     -> (location : Maybe WebGLUniformLocation)
                     -> (transpose : Bool)
                     -> (data_ : NS I [ Float32Array , Array Double ])
                     -> (srcOffset : Optional UInt32)
                     -> (srcLength : Optional UInt32)
                     -> JSIO ()
  uniformMatrix3x4fv a b c d e f = primJS
                                 $ WebGL2RenderingContextBase.prim__uniformMatrix3x4fv a
                                                                                       (toFFI b)
                                                                                       (toFFI c)
                                                                                       (toFFI d)
                                                                                       (toFFI e)
                                                                                       (toFFI f)

  export
  uniformMatrix3x4fv' :  (obj : WebGL2RenderingContextBase)
                      -> (location : Maybe WebGLUniformLocation)
                      -> (transpose : Bool)
                      -> (data_ : NS I [ Float32Array , Array Double ])
                      -> JSIO ()
  uniformMatrix3x4fv' a b c d = primJS
                              $ WebGL2RenderingContextBase.prim__uniformMatrix3x4fv a
                                                                                    (toFFI b)
                                                                                    (toFFI c)
                                                                                    (toFFI d)
                                                                                    undef
                                                                                    undef
  
  export
  uniformMatrix4x2fv :  (obj : WebGL2RenderingContextBase)
                     -> (location : Maybe WebGLUniformLocation)
                     -> (transpose : Bool)
                     -> (data_ : NS I [ Float32Array , Array Double ])
                     -> (srcOffset : Optional UInt32)
                     -> (srcLength : Optional UInt32)
                     -> JSIO ()
  uniformMatrix4x2fv a b c d e f = primJS
                                 $ WebGL2RenderingContextBase.prim__uniformMatrix4x2fv a
                                                                                       (toFFI b)
                                                                                       (toFFI c)
                                                                                       (toFFI d)
                                                                                       (toFFI e)
                                                                                       (toFFI f)

  export
  uniformMatrix4x2fv' :  (obj : WebGL2RenderingContextBase)
                      -> (location : Maybe WebGLUniformLocation)
                      -> (transpose : Bool)
                      -> (data_ : NS I [ Float32Array , Array Double ])
                      -> JSIO ()
  uniformMatrix4x2fv' a b c d = primJS
                              $ WebGL2RenderingContextBase.prim__uniformMatrix4x2fv a
                                                                                    (toFFI b)
                                                                                    (toFFI c)
                                                                                    (toFFI d)
                                                                                    undef
                                                                                    undef
  
  export
  uniformMatrix4x3fv :  (obj : WebGL2RenderingContextBase)
                     -> (location : Maybe WebGLUniformLocation)
                     -> (transpose : Bool)
                     -> (data_ : NS I [ Float32Array , Array Double ])
                     -> (srcOffset : Optional UInt32)
                     -> (srcLength : Optional UInt32)
                     -> JSIO ()
  uniformMatrix4x3fv a b c d e f = primJS
                                 $ WebGL2RenderingContextBase.prim__uniformMatrix4x3fv a
                                                                                       (toFFI b)
                                                                                       (toFFI c)
                                                                                       (toFFI d)
                                                                                       (toFFI e)
                                                                                       (toFFI f)

  export
  uniformMatrix4x3fv' :  (obj : WebGL2RenderingContextBase)
                      -> (location : Maybe WebGLUniformLocation)
                      -> (transpose : Bool)
                      -> (data_ : NS I [ Float32Array , Array Double ])
                      -> JSIO ()
  uniformMatrix4x3fv' a b c d = primJS
                              $ WebGL2RenderingContextBase.prim__uniformMatrix4x3fv a
                                                                                    (toFFI b)
                                                                                    (toFFI c)
                                                                                    (toFFI d)
                                                                                    undef
                                                                                    undef
  
  export
  vertexAttribDivisor :  (obj : WebGL2RenderingContextBase)
                      -> (index : UInt32)
                      -> (divisor : UInt32)
                      -> JSIO ()
  vertexAttribDivisor a b c = primJS
                            $ WebGL2RenderingContextBase.prim__vertexAttribDivisor a
                                                                                   b
                                                                                   c
  
  export
  vertexAttribI4i :  (obj : WebGL2RenderingContextBase)
                  -> (index : UInt32)
                  -> (x : Int32)
                  -> (y : Int32)
                  -> (z : Int32)
                  -> (w : Int32)
                  -> JSIO ()
  vertexAttribI4i a b c d e f = primJS
                              $ WebGL2RenderingContextBase.prim__vertexAttribI4i a
                                                                                 b
                                                                                 c
                                                                                 d
                                                                                 e
                                                                                 f
  
  export
  vertexAttribI4iv :  (obj : WebGL2RenderingContextBase)
                   -> (index : UInt32)
                   -> (values : NS I [ Int32Array , Array Int32 ])
                   -> JSIO ()
  vertexAttribI4iv a b c = primJS
                         $ WebGL2RenderingContextBase.prim__vertexAttribI4iv a
                                                                             b
                                                                             (toFFI c)
  
  export
  vertexAttribI4ui :  (obj : WebGL2RenderingContextBase)
                   -> (index : UInt32)
                   -> (x : UInt32)
                   -> (y : UInt32)
                   -> (z : UInt32)
                   -> (w : UInt32)
                   -> JSIO ()
  vertexAttribI4ui a b c d e f = primJS
                               $ WebGL2RenderingContextBase.prim__vertexAttribI4ui a
                                                                                   b
                                                                                   c
                                                                                   d
                                                                                   e
                                                                                   f
  
  export
  vertexAttribI4uiv :  (obj : WebGL2RenderingContextBase)
                    -> (index : UInt32)
                    -> (values : NS I [ UInt8Array , Array UInt32 ])
                    -> JSIO ()
  vertexAttribI4uiv a b c = primJS
                          $ WebGL2RenderingContextBase.prim__vertexAttribI4uiv a
                                                                               b
                                                                               (toFFI c)
  
  export
  vertexAttribIPointer :  (obj : WebGL2RenderingContextBase)
                       -> (index : UInt32)
                       -> (size : Int32)
                       -> (type : UInt32)
                       -> (stride : Int32)
                       -> (offset : Int64)
                       -> JSIO ()
  vertexAttribIPointer a b c d e f = primJS
                                   $ WebGL2RenderingContextBase.prim__vertexAttribIPointer a
                                                                                           b
                                                                                           c
                                                                                           d
                                                                                           e
                                                                                           f
  
  export
  waitSync :  (obj : WebGL2RenderingContextBase)
           -> (sync : WebGLSync)
           -> (flags : UInt32)
           -> (timeout : Int64)
           -> JSIO ()
  waitSync a b c d = primJS $ WebGL2RenderingContextBase.prim__waitSync a b c d

namespace WebGL2RenderingContextOverloads
  
  export
  bufferData :  (obj : WebGL2RenderingContextOverloads)
             -> (target : UInt32)
             -> (size : Int64)
             -> (usage : UInt32)
             -> JSIO ()
  bufferData a b c d = primJS
                     $ WebGL2RenderingContextOverloads.prim__bufferData a b c d
  
  export
  bufferData1 :  (obj : WebGL2RenderingContextOverloads)
              -> (target : UInt32)
              -> (srcData : Maybe (NS I [ Int8Array
                                        , Int16Array
                                        , Int32Array
                                        , UInt8Array
                                        , UInt8Array
                                        , UInt8Array
                                        , UInt8ClampedArray
                                        , Float32Array
                                        , Float64Array
                                        , DataView
                                        , ArrayBuffer
                                        ]))
              -> (usage : UInt32)
              -> JSIO ()
  bufferData1 a b c d = primJS
                      $ WebGL2RenderingContextOverloads.prim__bufferData1 a
                                                                          b
                                                                          (toFFI c)
                                                                          d
  
  export
  bufferData2 :  (obj : WebGL2RenderingContextOverloads)
              -> (target : UInt32)
              -> (srcData : NS I [ Int8Array
                                 , Int16Array
                                 , Int32Array
                                 , UInt8Array
                                 , UInt8Array
                                 , UInt8Array
                                 , UInt8ClampedArray
                                 , Float32Array
                                 , Float64Array
                                 , DataView
                                 ])
              -> (usage : UInt32)
              -> (srcOffset : UInt32)
              -> (length : Optional UInt32)
              -> JSIO ()
  bufferData2 a b c d e f = primJS
                          $ WebGL2RenderingContextOverloads.prim__bufferData2 a
                                                                              b
                                                                              (toFFI c)
                                                                              d
                                                                              e
                                                                              (toFFI f)

  export
  bufferData2' :  (obj : WebGL2RenderingContextOverloads)
               -> (target : UInt32)
               -> (srcData : NS I [ Int8Array
                                  , Int16Array
                                  , Int32Array
                                  , UInt8Array
                                  , UInt8Array
                                  , UInt8Array
                                  , UInt8ClampedArray
                                  , Float32Array
                                  , Float64Array
                                  , DataView
                                  ])
               -> (usage : UInt32)
               -> (srcOffset : UInt32)
               -> JSIO ()
  bufferData2' a b c d e = primJS
                         $ WebGL2RenderingContextOverloads.prim__bufferData2 a
                                                                             b
                                                                             (toFFI c)
                                                                             d
                                                                             e
                                                                             undef
  
  export
  bufferSubData :  (obj : WebGL2RenderingContextOverloads)
                -> (target : UInt32)
                -> (dstByteOffset : Int64)
                -> (srcData : NS I [ Int8Array
                                   , Int16Array
                                   , Int32Array
                                   , UInt8Array
                                   , UInt8Array
                                   , UInt8Array
                                   , UInt8ClampedArray
                                   , Float32Array
                                   , Float64Array
                                   , DataView
                                   , ArrayBuffer
                                   ])
                -> JSIO ()
  bufferSubData a b c d = primJS
                        $ WebGL2RenderingContextOverloads.prim__bufferSubData a
                                                                              b
                                                                              c
                                                                              (toFFI d)
  
  export
  bufferSubData1 :  (obj : WebGL2RenderingContextOverloads)
                 -> (target : UInt32)
                 -> (dstByteOffset : Int64)
                 -> (srcData : NS I [ Int8Array
                                    , Int16Array
                                    , Int32Array
                                    , UInt8Array
                                    , UInt8Array
                                    , UInt8Array
                                    , UInt8ClampedArray
                                    , Float32Array
                                    , Float64Array
                                    , DataView
                                    ])
                 -> (srcOffset : UInt32)
                 -> (length : Optional UInt32)
                 -> JSIO ()
  bufferSubData1 a b c d e f = primJS
                             $ WebGL2RenderingContextOverloads.prim__bufferSubData1 a
                                                                                    b
                                                                                    c
                                                                                    (toFFI d)
                                                                                    e
                                                                                    (toFFI f)

  export
  bufferSubData1' :  (obj : WebGL2RenderingContextOverloads)
                  -> (target : UInt32)
                  -> (dstByteOffset : Int64)
                  -> (srcData : NS I [ Int8Array
                                     , Int16Array
                                     , Int32Array
                                     , UInt8Array
                                     , UInt8Array
                                     , UInt8Array
                                     , UInt8ClampedArray
                                     , Float32Array
                                     , Float64Array
                                     , DataView
                                     ])
                  -> (srcOffset : UInt32)
                  -> JSIO ()
  bufferSubData1' a b c d e = primJS
                            $ WebGL2RenderingContextOverloads.prim__bufferSubData1 a
                                                                                   b
                                                                                   c
                                                                                   (toFFI d)
                                                                                   e
                                                                                   undef
  
  export
  compressedTexImage2D :  (obj : WebGL2RenderingContextOverloads)
                       -> (target : UInt32)
                       -> (level : Int32)
                       -> (internalformat : UInt32)
                       -> (width : Int32)
                       -> (height : Int32)
                       -> (border : Int32)
                       -> (imageSize : Int32)
                       -> (offset : Int64)
                       -> JSIO ()
  compressedTexImage2D a b c d e f g h i = primJS
                                         $ WebGL2RenderingContextOverloads.prim__compressedTexImage2D a
                                                                                                      b
                                                                                                      c
                                                                                                      d
                                                                                                      e
                                                                                                      f
                                                                                                      g
                                                                                                      h
                                                                                                      i
  
  export
  compressedTexImage2D1 :  (obj : WebGL2RenderingContextOverloads)
                        -> (target : UInt32)
                        -> (level : Int32)
                        -> (internalformat : UInt32)
                        -> (width : Int32)
                        -> (height : Int32)
                        -> (border : Int32)
                        -> (srcData : NS I [ Int8Array
                                           , Int16Array
                                           , Int32Array
                                           , UInt8Array
                                           , UInt8Array
                                           , UInt8Array
                                           , UInt8ClampedArray
                                           , Float32Array
                                           , Float64Array
                                           , DataView
                                           ])
                        -> (srcOffset : Optional UInt32)
                        -> (srcLengthOverride : Optional UInt32)
                        -> JSIO ()
  compressedTexImage2D1 a b c d e f g h i j = primJS
                                            $ WebGL2RenderingContextOverloads.prim__compressedTexImage2D1 a
                                                                                                          b
                                                                                                          c
                                                                                                          d
                                                                                                          e
                                                                                                          f
                                                                                                          g
                                                                                                          (toFFI h)
                                                                                                          (toFFI i)
                                                                                                          (toFFI j)

  export
  compressedTexImage2D1' :  (obj : WebGL2RenderingContextOverloads)
                         -> (target : UInt32)
                         -> (level : Int32)
                         -> (internalformat : UInt32)
                         -> (width : Int32)
                         -> (height : Int32)
                         -> (border : Int32)
                         -> (srcData : NS I [ Int8Array
                                            , Int16Array
                                            , Int32Array
                                            , UInt8Array
                                            , UInt8Array
                                            , UInt8Array
                                            , UInt8ClampedArray
                                            , Float32Array
                                            , Float64Array
                                            , DataView
                                            ])
                         -> JSIO ()
  compressedTexImage2D1' a b c d e f g h = primJS
                                         $ WebGL2RenderingContextOverloads.prim__compressedTexImage2D1 a
                                                                                                       b
                                                                                                       c
                                                                                                       d
                                                                                                       e
                                                                                                       f
                                                                                                       g
                                                                                                       (toFFI h)
                                                                                                       undef
                                                                                                       undef
  
  export
  compressedTexSubImage2D :  (obj : WebGL2RenderingContextOverloads)
                          -> (target : UInt32)
                          -> (level : Int32)
                          -> (xoffset : Int32)
                          -> (yoffset : Int32)
                          -> (width : Int32)
                          -> (height : Int32)
                          -> (format : UInt32)
                          -> (imageSize : Int32)
                          -> (offset : Int64)
                          -> JSIO ()
  compressedTexSubImage2D a b c d e f g h i j = primJS
                                              $ WebGL2RenderingContextOverloads.prim__compressedTexSubImage2D a
                                                                                                              b
                                                                                                              c
                                                                                                              d
                                                                                                              e
                                                                                                              f
                                                                                                              g
                                                                                                              h
                                                                                                              i
                                                                                                              j
  
  export
  compressedTexSubImage2D1 :  (obj : WebGL2RenderingContextOverloads)
                           -> (target : UInt32)
                           -> (level : Int32)
                           -> (xoffset : Int32)
                           -> (yoffset : Int32)
                           -> (width : Int32)
                           -> (height : Int32)
                           -> (format : UInt32)
                           -> (srcData : NS I [ Int8Array
                                              , Int16Array
                                              , Int32Array
                                              , UInt8Array
                                              , UInt8Array
                                              , UInt8Array
                                              , UInt8ClampedArray
                                              , Float32Array
                                              , Float64Array
                                              , DataView
                                              ])
                           -> (srcOffset : Optional UInt32)
                           -> (srcLengthOverride : Optional UInt32)
                           -> JSIO ()
  compressedTexSubImage2D1 a b c d e f g h i j k = primJS
                                                 $ WebGL2RenderingContextOverloads.prim__compressedTexSubImage2D1 a
                                                                                                                  b
                                                                                                                  c
                                                                                                                  d
                                                                                                                  e
                                                                                                                  f
                                                                                                                  g
                                                                                                                  h
                                                                                                                  (toFFI i)
                                                                                                                  (toFFI j)
                                                                                                                  (toFFI k)

  export
  compressedTexSubImage2D1' :  (obj : WebGL2RenderingContextOverloads)
                            -> (target : UInt32)
                            -> (level : Int32)
                            -> (xoffset : Int32)
                            -> (yoffset : Int32)
                            -> (width : Int32)
                            -> (height : Int32)
                            -> (format : UInt32)
                            -> (srcData : NS I [ Int8Array
                                               , Int16Array
                                               , Int32Array
                                               , UInt8Array
                                               , UInt8Array
                                               , UInt8Array
                                               , UInt8ClampedArray
                                               , Float32Array
                                               , Float64Array
                                               , DataView
                                               ])
                            -> JSIO ()
  compressedTexSubImage2D1' a b c d e f g h i = primJS
                                              $ WebGL2RenderingContextOverloads.prim__compressedTexSubImage2D1 a
                                                                                                               b
                                                                                                               c
                                                                                                               d
                                                                                                               e
                                                                                                               f
                                                                                                               g
                                                                                                               h
                                                                                                               (toFFI i)
                                                                                                               undef
                                                                                                               undef
  
  export
  readPixels :  (obj : WebGL2RenderingContextOverloads)
             -> (x : Int32)
             -> (y : Int32)
             -> (width : Int32)
             -> (height : Int32)
             -> (format : UInt32)
             -> (type : UInt32)
             -> (dstData : Maybe (NS I [ Int8Array
                                       , Int16Array
                                       , Int32Array
                                       , UInt8Array
                                       , UInt8Array
                                       , UInt8Array
                                       , UInt8ClampedArray
                                       , Float32Array
                                       , Float64Array
                                       , DataView
                                       ]))
             -> JSIO ()
  readPixels a b c d e f g h = primJS
                             $ WebGL2RenderingContextOverloads.prim__readPixels a
                                                                                b
                                                                                c
                                                                                d
                                                                                e
                                                                                f
                                                                                g
                                                                                (toFFI h)
  
  export
  readPixels1 :  (obj : WebGL2RenderingContextOverloads)
              -> (x : Int32)
              -> (y : Int32)
              -> (width : Int32)
              -> (height : Int32)
              -> (format : UInt32)
              -> (type : UInt32)
              -> (offset : Int64)
              -> JSIO ()
  readPixels1 a b c d e f g h = primJS
                              $ WebGL2RenderingContextOverloads.prim__readPixels1 a
                                                                                  b
                                                                                  c
                                                                                  d
                                                                                  e
                                                                                  f
                                                                                  g
                                                                                  h
  
  export
  readPixels2 :  (obj : WebGL2RenderingContextOverloads)
              -> (x : Int32)
              -> (y : Int32)
              -> (width : Int32)
              -> (height : Int32)
              -> (format : UInt32)
              -> (type : UInt32)
              -> (dstData : NS I [ Int8Array
                                 , Int16Array
                                 , Int32Array
                                 , UInt8Array
                                 , UInt8Array
                                 , UInt8Array
                                 , UInt8ClampedArray
                                 , Float32Array
                                 , Float64Array
                                 , DataView
                                 ])
              -> (dstOffset : UInt32)
              -> JSIO ()
  readPixels2 a b c d e f g h i = primJS
                                $ WebGL2RenderingContextOverloads.prim__readPixels2 a
                                                                                    b
                                                                                    c
                                                                                    d
                                                                                    e
                                                                                    f
                                                                                    g
                                                                                    (toFFI h)
                                                                                    i
  
  export
  texImage2D :  (obj : WebGL2RenderingContextOverloads)
             -> (target : UInt32)
             -> (level : Int32)
             -> (internalformat : Int32)
             -> (width : Int32)
             -> (height : Int32)
             -> (border : Int32)
             -> (format : UInt32)
             -> (type : UInt32)
             -> (pixels : Maybe (NS I [ Int8Array
                                      , Int16Array
                                      , Int32Array
                                      , UInt8Array
                                      , UInt8Array
                                      , UInt8Array
                                      , UInt8ClampedArray
                                      , Float32Array
                                      , Float64Array
                                      , DataView
                                      ]))
             -> JSIO ()
  texImage2D a b c d e f g h i j = primJS
                                 $ WebGL2RenderingContextOverloads.prim__texImage2D a
                                                                                    b
                                                                                    c
                                                                                    d
                                                                                    e
                                                                                    f
                                                                                    g
                                                                                    h
                                                                                    i
                                                                                    (toFFI j)
  
  export
  texImage2D1 :  (obj : WebGL2RenderingContextOverloads)
              -> (target : UInt32)
              -> (level : Int32)
              -> (internalformat : Int32)
              -> (format : UInt32)
              -> (type : UInt32)
              -> (source : NS I [ ImageBitmap
                                , ImageData
                                , HTMLImageElement
                                , HTMLCanvasElement
                                , HTMLVideoElement
                                , OffscreenCanvas
                                ])
              -> JSIO ()
  texImage2D1 a b c d e f g = primJS
                            $ WebGL2RenderingContextOverloads.prim__texImage2D1 a
                                                                                b
                                                                                c
                                                                                d
                                                                                e
                                                                                f
                                                                                (toFFI g)
  
  export
  texImage2D2 :  (obj : WebGL2RenderingContextOverloads)
              -> (target : UInt32)
              -> (level : Int32)
              -> (internalformat : Int32)
              -> (width : Int32)
              -> (height : Int32)
              -> (border : Int32)
              -> (format : UInt32)
              -> (type : UInt32)
              -> (pboOffset : Int64)
              -> JSIO ()
  texImage2D2 a b c d e f g h i j = primJS
                                  $ WebGL2RenderingContextOverloads.prim__texImage2D2 a
                                                                                      b
                                                                                      c
                                                                                      d
                                                                                      e
                                                                                      f
                                                                                      g
                                                                                      h
                                                                                      i
                                                                                      j
  
  export
  texImage2D3 :  (obj : WebGL2RenderingContextOverloads)
              -> (target : UInt32)
              -> (level : Int32)
              -> (internalformat : Int32)
              -> (width : Int32)
              -> (height : Int32)
              -> (border : Int32)
              -> (format : UInt32)
              -> (type : UInt32)
              -> (source : NS I [ ImageBitmap
                                , ImageData
                                , HTMLImageElement
                                , HTMLCanvasElement
                                , HTMLVideoElement
                                , OffscreenCanvas
                                ])
              -> JSIO ()
  texImage2D3 a b c d e f g h i j = primJS
                                  $ WebGL2RenderingContextOverloads.prim__texImage2D3 a
                                                                                      b
                                                                                      c
                                                                                      d
                                                                                      e
                                                                                      f
                                                                                      g
                                                                                      h
                                                                                      i
                                                                                      (toFFI j)
  
  export
  texImage2D4 :  (obj : WebGL2RenderingContextOverloads)
              -> (target : UInt32)
              -> (level : Int32)
              -> (internalformat : Int32)
              -> (width : Int32)
              -> (height : Int32)
              -> (border : Int32)
              -> (format : UInt32)
              -> (type : UInt32)
              -> (srcData : NS I [ Int8Array
                                 , Int16Array
                                 , Int32Array
                                 , UInt8Array
                                 , UInt8Array
                                 , UInt8Array
                                 , UInt8ClampedArray
                                 , Float32Array
                                 , Float64Array
                                 , DataView
                                 ])
              -> (srcOffset : UInt32)
              -> JSIO ()
  texImage2D4 a b c d e f g h i j k = primJS
                                    $ WebGL2RenderingContextOverloads.prim__texImage2D4 a
                                                                                        b
                                                                                        c
                                                                                        d
                                                                                        e
                                                                                        f
                                                                                        g
                                                                                        h
                                                                                        i
                                                                                        (toFFI j)
                                                                                        k
  
  export
  texSubImage2D :  (obj : WebGL2RenderingContextOverloads)
                -> (target : UInt32)
                -> (level : Int32)
                -> (xoffset : Int32)
                -> (yoffset : Int32)
                -> (width : Int32)
                -> (height : Int32)
                -> (format : UInt32)
                -> (type : UInt32)
                -> (pixels : Maybe (NS I [ Int8Array
                                         , Int16Array
                                         , Int32Array
                                         , UInt8Array
                                         , UInt8Array
                                         , UInt8Array
                                         , UInt8ClampedArray
                                         , Float32Array
                                         , Float64Array
                                         , DataView
                                         ]))
                -> JSIO ()
  texSubImage2D a b c d e f g h i j = primJS
                                    $ WebGL2RenderingContextOverloads.prim__texSubImage2D a
                                                                                          b
                                                                                          c
                                                                                          d
                                                                                          e
                                                                                          f
                                                                                          g
                                                                                          h
                                                                                          i
                                                                                          (toFFI j)
  
  export
  texSubImage2D1 :  (obj : WebGL2RenderingContextOverloads)
                 -> (target : UInt32)
                 -> (level : Int32)
                 -> (xoffset : Int32)
                 -> (yoffset : Int32)
                 -> (format : UInt32)
                 -> (type : UInt32)
                 -> (source : NS I [ ImageBitmap
                                   , ImageData
                                   , HTMLImageElement
                                   , HTMLCanvasElement
                                   , HTMLVideoElement
                                   , OffscreenCanvas
                                   ])
                 -> JSIO ()
  texSubImage2D1 a b c d e f g h = primJS
                                 $ WebGL2RenderingContextOverloads.prim__texSubImage2D1 a
                                                                                        b
                                                                                        c
                                                                                        d
                                                                                        e
                                                                                        f
                                                                                        g
                                                                                        (toFFI h)
  
  export
  texSubImage2D2 :  (obj : WebGL2RenderingContextOverloads)
                 -> (target : UInt32)
                 -> (level : Int32)
                 -> (xoffset : Int32)
                 -> (yoffset : Int32)
                 -> (width : Int32)
                 -> (height : Int32)
                 -> (format : UInt32)
                 -> (type : UInt32)
                 -> (pboOffset : Int64)
                 -> JSIO ()
  texSubImage2D2 a b c d e f g h i j = primJS
                                     $ WebGL2RenderingContextOverloads.prim__texSubImage2D2 a
                                                                                            b
                                                                                            c
                                                                                            d
                                                                                            e
                                                                                            f
                                                                                            g
                                                                                            h
                                                                                            i
                                                                                            j
  
  export
  texSubImage2D3 :  (obj : WebGL2RenderingContextOverloads)
                 -> (target : UInt32)
                 -> (level : Int32)
                 -> (xoffset : Int32)
                 -> (yoffset : Int32)
                 -> (width : Int32)
                 -> (height : Int32)
                 -> (format : UInt32)
                 -> (type : UInt32)
                 -> (source : NS I [ ImageBitmap
                                   , ImageData
                                   , HTMLImageElement
                                   , HTMLCanvasElement
                                   , HTMLVideoElement
                                   , OffscreenCanvas
                                   ])
                 -> JSIO ()
  texSubImage2D3 a b c d e f g h i j = primJS
                                     $ WebGL2RenderingContextOverloads.prim__texSubImage2D3 a
                                                                                            b
                                                                                            c
                                                                                            d
                                                                                            e
                                                                                            f
                                                                                            g
                                                                                            h
                                                                                            i
                                                                                            (toFFI j)
  
  export
  texSubImage2D4 :  (obj : WebGL2RenderingContextOverloads)
                 -> (target : UInt32)
                 -> (level : Int32)
                 -> (xoffset : Int32)
                 -> (yoffset : Int32)
                 -> (width : Int32)
                 -> (height : Int32)
                 -> (format : UInt32)
                 -> (type : UInt32)
                 -> (srcData : NS I [ Int8Array
                                    , Int16Array
                                    , Int32Array
                                    , UInt8Array
                                    , UInt8Array
                                    , UInt8Array
                                    , UInt8ClampedArray
                                    , Float32Array
                                    , Float64Array
                                    , DataView
                                    ])
                 -> (srcOffset : UInt32)
                 -> JSIO ()
  texSubImage2D4 a b c d e f g h i j k = primJS
                                       $ WebGL2RenderingContextOverloads.prim__texSubImage2D4 a
                                                                                              b
                                                                                              c
                                                                                              d
                                                                                              e
                                                                                              f
                                                                                              g
                                                                                              h
                                                                                              i
                                                                                              (toFFI j)
                                                                                              k
  
  export
  uniform1fv :  (obj : WebGL2RenderingContextOverloads)
             -> (location : Maybe WebGLUniformLocation)
             -> (data_ : NS I [ Float32Array , Array Double ])
             -> (srcOffset : Optional UInt32)
             -> (srcLength : Optional UInt32)
             -> JSIO ()
  uniform1fv a b c d e = primJS
                       $ WebGL2RenderingContextOverloads.prim__uniform1fv a
                                                                          (toFFI b)
                                                                          (toFFI c)
                                                                          (toFFI d)
                                                                          (toFFI e)

  export
  uniform1fv' :  (obj : WebGL2RenderingContextOverloads)
              -> (location : Maybe WebGLUniformLocation)
              -> (data_ : NS I [ Float32Array , Array Double ])
              -> JSIO ()
  uniform1fv' a b c = primJS
                    $ WebGL2RenderingContextOverloads.prim__uniform1fv a
                                                                       (toFFI b)
                                                                       (toFFI c)
                                                                       undef
                                                                       undef
  
  export
  uniform1iv :  (obj : WebGL2RenderingContextOverloads)
             -> (location : Maybe WebGLUniformLocation)
             -> (data_ : NS I [ Int32Array , Array Int32 ])
             -> (srcOffset : Optional UInt32)
             -> (srcLength : Optional UInt32)
             -> JSIO ()
  uniform1iv a b c d e = primJS
                       $ WebGL2RenderingContextOverloads.prim__uniform1iv a
                                                                          (toFFI b)
                                                                          (toFFI c)
                                                                          (toFFI d)
                                                                          (toFFI e)

  export
  uniform1iv' :  (obj : WebGL2RenderingContextOverloads)
              -> (location : Maybe WebGLUniformLocation)
              -> (data_ : NS I [ Int32Array , Array Int32 ])
              -> JSIO ()
  uniform1iv' a b c = primJS
                    $ WebGL2RenderingContextOverloads.prim__uniform1iv a
                                                                       (toFFI b)
                                                                       (toFFI c)
                                                                       undef
                                                                       undef
  
  export
  uniform2fv :  (obj : WebGL2RenderingContextOverloads)
             -> (location : Maybe WebGLUniformLocation)
             -> (data_ : NS I [ Float32Array , Array Double ])
             -> (srcOffset : Optional UInt32)
             -> (srcLength : Optional UInt32)
             -> JSIO ()
  uniform2fv a b c d e = primJS
                       $ WebGL2RenderingContextOverloads.prim__uniform2fv a
                                                                          (toFFI b)
                                                                          (toFFI c)
                                                                          (toFFI d)
                                                                          (toFFI e)

  export
  uniform2fv' :  (obj : WebGL2RenderingContextOverloads)
              -> (location : Maybe WebGLUniformLocation)
              -> (data_ : NS I [ Float32Array , Array Double ])
              -> JSIO ()
  uniform2fv' a b c = primJS
                    $ WebGL2RenderingContextOverloads.prim__uniform2fv a
                                                                       (toFFI b)
                                                                       (toFFI c)
                                                                       undef
                                                                       undef
  
  export
  uniform2iv :  (obj : WebGL2RenderingContextOverloads)
             -> (location : Maybe WebGLUniformLocation)
             -> (data_ : NS I [ Int32Array , Array Int32 ])
             -> (srcOffset : Optional UInt32)
             -> (srcLength : Optional UInt32)
             -> JSIO ()
  uniform2iv a b c d e = primJS
                       $ WebGL2RenderingContextOverloads.prim__uniform2iv a
                                                                          (toFFI b)
                                                                          (toFFI c)
                                                                          (toFFI d)
                                                                          (toFFI e)

  export
  uniform2iv' :  (obj : WebGL2RenderingContextOverloads)
              -> (location : Maybe WebGLUniformLocation)
              -> (data_ : NS I [ Int32Array , Array Int32 ])
              -> JSIO ()
  uniform2iv' a b c = primJS
                    $ WebGL2RenderingContextOverloads.prim__uniform2iv a
                                                                       (toFFI b)
                                                                       (toFFI c)
                                                                       undef
                                                                       undef
  
  export
  uniform3fv :  (obj : WebGL2RenderingContextOverloads)
             -> (location : Maybe WebGLUniformLocation)
             -> (data_ : NS I [ Float32Array , Array Double ])
             -> (srcOffset : Optional UInt32)
             -> (srcLength : Optional UInt32)
             -> JSIO ()
  uniform3fv a b c d e = primJS
                       $ WebGL2RenderingContextOverloads.prim__uniform3fv a
                                                                          (toFFI b)
                                                                          (toFFI c)
                                                                          (toFFI d)
                                                                          (toFFI e)

  export
  uniform3fv' :  (obj : WebGL2RenderingContextOverloads)
              -> (location : Maybe WebGLUniformLocation)
              -> (data_ : NS I [ Float32Array , Array Double ])
              -> JSIO ()
  uniform3fv' a b c = primJS
                    $ WebGL2RenderingContextOverloads.prim__uniform3fv a
                                                                       (toFFI b)
                                                                       (toFFI c)
                                                                       undef
                                                                       undef
  
  export
  uniform3iv :  (obj : WebGL2RenderingContextOverloads)
             -> (location : Maybe WebGLUniformLocation)
             -> (data_ : NS I [ Int32Array , Array Int32 ])
             -> (srcOffset : Optional UInt32)
             -> (srcLength : Optional UInt32)
             -> JSIO ()
  uniform3iv a b c d e = primJS
                       $ WebGL2RenderingContextOverloads.prim__uniform3iv a
                                                                          (toFFI b)
                                                                          (toFFI c)
                                                                          (toFFI d)
                                                                          (toFFI e)

  export
  uniform3iv' :  (obj : WebGL2RenderingContextOverloads)
              -> (location : Maybe WebGLUniformLocation)
              -> (data_ : NS I [ Int32Array , Array Int32 ])
              -> JSIO ()
  uniform3iv' a b c = primJS
                    $ WebGL2RenderingContextOverloads.prim__uniform3iv a
                                                                       (toFFI b)
                                                                       (toFFI c)
                                                                       undef
                                                                       undef
  
  export
  uniform4fv :  (obj : WebGL2RenderingContextOverloads)
             -> (location : Maybe WebGLUniformLocation)
             -> (data_ : NS I [ Float32Array , Array Double ])
             -> (srcOffset : Optional UInt32)
             -> (srcLength : Optional UInt32)
             -> JSIO ()
  uniform4fv a b c d e = primJS
                       $ WebGL2RenderingContextOverloads.prim__uniform4fv a
                                                                          (toFFI b)
                                                                          (toFFI c)
                                                                          (toFFI d)
                                                                          (toFFI e)

  export
  uniform4fv' :  (obj : WebGL2RenderingContextOverloads)
              -> (location : Maybe WebGLUniformLocation)
              -> (data_ : NS I [ Float32Array , Array Double ])
              -> JSIO ()
  uniform4fv' a b c = primJS
                    $ WebGL2RenderingContextOverloads.prim__uniform4fv a
                                                                       (toFFI b)
                                                                       (toFFI c)
                                                                       undef
                                                                       undef
  
  export
  uniform4iv :  (obj : WebGL2RenderingContextOverloads)
             -> (location : Maybe WebGLUniformLocation)
             -> (data_ : NS I [ Int32Array , Array Int32 ])
             -> (srcOffset : Optional UInt32)
             -> (srcLength : Optional UInt32)
             -> JSIO ()
  uniform4iv a b c d e = primJS
                       $ WebGL2RenderingContextOverloads.prim__uniform4iv a
                                                                          (toFFI b)
                                                                          (toFFI c)
                                                                          (toFFI d)
                                                                          (toFFI e)

  export
  uniform4iv' :  (obj : WebGL2RenderingContextOverloads)
              -> (location : Maybe WebGLUniformLocation)
              -> (data_ : NS I [ Int32Array , Array Int32 ])
              -> JSIO ()
  uniform4iv' a b c = primJS
                    $ WebGL2RenderingContextOverloads.prim__uniform4iv a
                                                                       (toFFI b)
                                                                       (toFFI c)
                                                                       undef
                                                                       undef
  
  export
  uniformMatrix2fv :  (obj : WebGL2RenderingContextOverloads)
                   -> (location : Maybe WebGLUniformLocation)
                   -> (transpose : Bool)
                   -> (data_ : NS I [ Float32Array , Array Double ])
                   -> (srcOffset : Optional UInt32)
                   -> (srcLength : Optional UInt32)
                   -> JSIO ()
  uniformMatrix2fv a b c d e f = primJS
                               $ WebGL2RenderingContextOverloads.prim__uniformMatrix2fv a
                                                                                        (toFFI b)
                                                                                        (toFFI c)
                                                                                        (toFFI d)
                                                                                        (toFFI e)
                                                                                        (toFFI f)

  export
  uniformMatrix2fv' :  (obj : WebGL2RenderingContextOverloads)
                    -> (location : Maybe WebGLUniformLocation)
                    -> (transpose : Bool)
                    -> (data_ : NS I [ Float32Array , Array Double ])
                    -> JSIO ()
  uniformMatrix2fv' a b c d = primJS
                            $ WebGL2RenderingContextOverloads.prim__uniformMatrix2fv a
                                                                                     (toFFI b)
                                                                                     (toFFI c)
                                                                                     (toFFI d)
                                                                                     undef
                                                                                     undef
  
  export
  uniformMatrix3fv :  (obj : WebGL2RenderingContextOverloads)
                   -> (location : Maybe WebGLUniformLocation)
                   -> (transpose : Bool)
                   -> (data_ : NS I [ Float32Array , Array Double ])
                   -> (srcOffset : Optional UInt32)
                   -> (srcLength : Optional UInt32)
                   -> JSIO ()
  uniformMatrix3fv a b c d e f = primJS
                               $ WebGL2RenderingContextOverloads.prim__uniformMatrix3fv a
                                                                                        (toFFI b)
                                                                                        (toFFI c)
                                                                                        (toFFI d)
                                                                                        (toFFI e)
                                                                                        (toFFI f)

  export
  uniformMatrix3fv' :  (obj : WebGL2RenderingContextOverloads)
                    -> (location : Maybe WebGLUniformLocation)
                    -> (transpose : Bool)
                    -> (data_ : NS I [ Float32Array , Array Double ])
                    -> JSIO ()
  uniformMatrix3fv' a b c d = primJS
                            $ WebGL2RenderingContextOverloads.prim__uniformMatrix3fv a
                                                                                     (toFFI b)
                                                                                     (toFFI c)
                                                                                     (toFFI d)
                                                                                     undef
                                                                                     undef
  
  export
  uniformMatrix4fv :  (obj : WebGL2RenderingContextOverloads)
                   -> (location : Maybe WebGLUniformLocation)
                   -> (transpose : Bool)
                   -> (data_ : NS I [ Float32Array , Array Double ])
                   -> (srcOffset : Optional UInt32)
                   -> (srcLength : Optional UInt32)
                   -> JSIO ()
  uniformMatrix4fv a b c d e f = primJS
                               $ WebGL2RenderingContextOverloads.prim__uniformMatrix4fv a
                                                                                        (toFFI b)
                                                                                        (toFFI c)
                                                                                        (toFFI d)
                                                                                        (toFFI e)
                                                                                        (toFFI f)

  export
  uniformMatrix4fv' :  (obj : WebGL2RenderingContextOverloads)
                    -> (location : Maybe WebGLUniformLocation)
                    -> (transpose : Bool)
                    -> (data_ : NS I [ Float32Array , Array Double ])
                    -> JSIO ()
  uniformMatrix4fv' a b c d = primJS
                            $ WebGL2RenderingContextOverloads.prim__uniformMatrix4fv a
                                                                                     (toFFI b)
                                                                                     (toFFI c)
                                                                                     (toFFI d)
                                                                                     undef
                                                                                     undef

namespace WebGLRenderingContextBase
  
  public export
  ACTIVE_ATTRIBUTES : UInt32
  ACTIVE_ATTRIBUTES = 0x8B89
  
  public export
  ACTIVE_TEXTURE : UInt32
  ACTIVE_TEXTURE = 0x84E0
  
  public export
  ACTIVE_UNIFORMS : UInt32
  ACTIVE_UNIFORMS = 0x8B86
  
  public export
  ALIASED_LINE_WIDTH_RANGE : UInt32
  ALIASED_LINE_WIDTH_RANGE = 0x846E
  
  public export
  ALIASED_POINT_SIZE_RANGE : UInt32
  ALIASED_POINT_SIZE_RANGE = 0x846D
  
  public export
  ALPHA : UInt32
  ALPHA = 0x1906
  
  public export
  ALPHA_BITS : UInt32
  ALPHA_BITS = 0xD55
  
  public export
  ALWAYS : UInt32
  ALWAYS = 0x207
  
  public export
  ARRAY_BUFFER : UInt32
  ARRAY_BUFFER = 0x8892
  
  public export
  ARRAY_BUFFER_BINDING : UInt32
  ARRAY_BUFFER_BINDING = 0x8894
  
  public export
  ATTACHED_SHADERS : UInt32
  ATTACHED_SHADERS = 0x8B85
  
  public export
  BACK : UInt32
  BACK = 0x405
  
  public export
  BLEND : UInt32
  BLEND = 0xBE2
  
  public export
  BLEND_COLOR : UInt32
  BLEND_COLOR = 0x8005
  
  public export
  BLEND_DST_ALPHA : UInt32
  BLEND_DST_ALPHA = 0x80CA
  
  public export
  BLEND_DST_RGB : UInt32
  BLEND_DST_RGB = 0x80C8
  
  public export
  BLEND_EQUATION : UInt32
  BLEND_EQUATION = 0x8009
  
  public export
  BLEND_EQUATION_ALPHA : UInt32
  BLEND_EQUATION_ALPHA = 0x883D
  
  public export
  BLEND_EQUATION_RGB : UInt32
  BLEND_EQUATION_RGB = 0x8009
  
  public export
  BLEND_SRC_ALPHA : UInt32
  BLEND_SRC_ALPHA = 0x80CB
  
  public export
  BLEND_SRC_RGB : UInt32
  BLEND_SRC_RGB = 0x80C9
  
  public export
  BLUE_BITS : UInt32
  BLUE_BITS = 0xD54
  
  public export
  BOOL : UInt32
  BOOL = 0x8B56
  
  public export
  BOOL_VEC2 : UInt32
  BOOL_VEC2 = 0x8B57
  
  public export
  BOOL_VEC3 : UInt32
  BOOL_VEC3 = 0x8B58
  
  public export
  BOOL_VEC4 : UInt32
  BOOL_VEC4 = 0x8B59
  
  public export
  BROWSER_DEFAULT_WEBGL : UInt32
  BROWSER_DEFAULT_WEBGL = 0x9244
  
  public export
  BUFFER_SIZE : UInt32
  BUFFER_SIZE = 0x8764
  
  public export
  BUFFER_USAGE : UInt32
  BUFFER_USAGE = 0x8765
  
  public export
  BYTE : UInt32
  BYTE = 0x1400
  
  public export
  CCW : UInt32
  CCW = 0x901
  
  public export
  CLAMP_TO_EDGE : UInt32
  CLAMP_TO_EDGE = 0x812F
  
  public export
  COLOR_ATTACHMENT0 : UInt32
  COLOR_ATTACHMENT0 = 0x8CE0
  
  public export
  COLOR_BUFFER_BIT : UInt32
  COLOR_BUFFER_BIT = 0x4000
  
  public export
  COLOR_CLEAR_VALUE : UInt32
  COLOR_CLEAR_VALUE = 0xC22
  
  public export
  COLOR_WRITEMASK : UInt32
  COLOR_WRITEMASK = 0xC23
  
  public export
  COMPILE_STATUS : UInt32
  COMPILE_STATUS = 0x8B81
  
  public export
  COMPRESSED_TEXTURE_FORMATS : UInt32
  COMPRESSED_TEXTURE_FORMATS = 0x86A3
  
  public export
  CONSTANT_ALPHA : UInt32
  CONSTANT_ALPHA = 0x8003
  
  public export
  CONSTANT_COLOR : UInt32
  CONSTANT_COLOR = 0x8001
  
  public export
  CONTEXT_LOST_WEBGL : UInt32
  CONTEXT_LOST_WEBGL = 0x9242
  
  public export
  CULL_FACE : UInt32
  CULL_FACE = 0xB44
  
  public export
  CULL_FACE_MODE : UInt32
  CULL_FACE_MODE = 0xB45
  
  public export
  CURRENT_PROGRAM : UInt32
  CURRENT_PROGRAM = 0x8B8D
  
  public export
  CURRENT_VERTEX_ATTRIB : UInt32
  CURRENT_VERTEX_ATTRIB = 0x8626
  
  public export
  CW : UInt32
  CW = 0x900
  
  public export
  DECR : UInt32
  DECR = 0x1E03
  
  public export
  DECR_WRAP : UInt32
  DECR_WRAP = 0x8508
  
  public export
  DELETE_STATUS : UInt32
  DELETE_STATUS = 0x8B80
  
  public export
  DEPTH_ATTACHMENT : UInt32
  DEPTH_ATTACHMENT = 0x8D00
  
  public export
  DEPTH_BITS : UInt32
  DEPTH_BITS = 0xD56
  
  public export
  DEPTH_BUFFER_BIT : UInt32
  DEPTH_BUFFER_BIT = 0x100
  
  public export
  DEPTH_CLEAR_VALUE : UInt32
  DEPTH_CLEAR_VALUE = 0xB73
  
  public export
  DEPTH_COMPONENT : UInt32
  DEPTH_COMPONENT = 0x1902
  
  public export
  DEPTH_COMPONENT16 : UInt32
  DEPTH_COMPONENT16 = 0x81A5
  
  public export
  DEPTH_FUNC : UInt32
  DEPTH_FUNC = 0xB74
  
  public export
  DEPTH_RANGE : UInt32
  DEPTH_RANGE = 0xB70
  
  public export
  DEPTH_STENCIL : UInt32
  DEPTH_STENCIL = 0x84F9
  
  public export
  DEPTH_STENCIL_ATTACHMENT : UInt32
  DEPTH_STENCIL_ATTACHMENT = 0x821A
  
  public export
  DEPTH_TEST : UInt32
  DEPTH_TEST = 0xB71
  
  public export
  DEPTH_WRITEMASK : UInt32
  DEPTH_WRITEMASK = 0xB72
  
  public export
  DITHER : UInt32
  DITHER = 0xBD0
  
  public export
  DONT_CARE : UInt32
  DONT_CARE = 0x1100
  
  public export
  DST_ALPHA : UInt32
  DST_ALPHA = 0x304
  
  public export
  DST_COLOR : UInt32
  DST_COLOR = 0x306
  
  public export
  DYNAMIC_DRAW : UInt32
  DYNAMIC_DRAW = 0x88E8
  
  public export
  ELEMENT_ARRAY_BUFFER : UInt32
  ELEMENT_ARRAY_BUFFER = 0x8893
  
  public export
  ELEMENT_ARRAY_BUFFER_BINDING : UInt32
  ELEMENT_ARRAY_BUFFER_BINDING = 0x8895
  
  public export
  EQUAL : UInt32
  EQUAL = 0x202
  
  public export
  FASTEST : UInt32
  FASTEST = 0x1101
  
  public export
  FLOAT : UInt32
  FLOAT = 0x1406
  
  public export
  FLOAT_MAT2 : UInt32
  FLOAT_MAT2 = 0x8B5A
  
  public export
  FLOAT_MAT3 : UInt32
  FLOAT_MAT3 = 0x8B5B
  
  public export
  FLOAT_MAT4 : UInt32
  FLOAT_MAT4 = 0x8B5C
  
  public export
  FLOAT_VEC2 : UInt32
  FLOAT_VEC2 = 0x8B50
  
  public export
  FLOAT_VEC3 : UInt32
  FLOAT_VEC3 = 0x8B51
  
  public export
  FLOAT_VEC4 : UInt32
  FLOAT_VEC4 = 0x8B52
  
  public export
  FRAGMENT_SHADER : UInt32
  FRAGMENT_SHADER = 0x8B30
  
  public export
  FRAMEBUFFER : UInt32
  FRAMEBUFFER = 0x8D40
  
  public export
  FRAMEBUFFER_ATTACHMENT_OBJECT_NAME : UInt32
  FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = 0x8CD1
  
  public export
  FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE : UInt32
  FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 0x8CD0
  
  public export
  FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE : UInt32
  FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = 0x8CD3
  
  public export
  FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL : UInt32
  FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = 0x8CD2
  
  public export
  FRAMEBUFFER_BINDING : UInt32
  FRAMEBUFFER_BINDING = 0x8CA6
  
  public export
  FRAMEBUFFER_COMPLETE : UInt32
  FRAMEBUFFER_COMPLETE = 0x8CD5
  
  public export
  FRAMEBUFFER_INCOMPLETE_ATTACHMENT : UInt32
  FRAMEBUFFER_INCOMPLETE_ATTACHMENT = 0x8CD6
  
  public export
  FRAMEBUFFER_INCOMPLETE_DIMENSIONS : UInt32
  FRAMEBUFFER_INCOMPLETE_DIMENSIONS = 0x8CD9
  
  public export
  FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT : UInt32
  FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = 0x8CD7
  
  public export
  FRAMEBUFFER_UNSUPPORTED : UInt32
  FRAMEBUFFER_UNSUPPORTED = 0x8CDD
  
  public export
  FRONT : UInt32
  FRONT = 0x404
  
  public export
  FRONT_AND_BACK : UInt32
  FRONT_AND_BACK = 0x408
  
  public export
  FRONT_FACE : UInt32
  FRONT_FACE = 0xB46
  
  public export
  FUNC_ADD : UInt32
  FUNC_ADD = 0x8006
  
  public export
  FUNC_REVERSE_SUBTRACT : UInt32
  FUNC_REVERSE_SUBTRACT = 0x800B
  
  public export
  FUNC_SUBTRACT : UInt32
  FUNC_SUBTRACT = 0x800A
  
  public export
  GENERATE_MIPMAP_HINT : UInt32
  GENERATE_MIPMAP_HINT = 0x8192
  
  public export
  GEQUAL : UInt32
  GEQUAL = 0x206
  
  public export
  GREATER : UInt32
  GREATER = 0x204
  
  public export
  GREEN_BITS : UInt32
  GREEN_BITS = 0xD53
  
  public export
  HIGH_FLOAT : UInt32
  HIGH_FLOAT = 0x8DF2
  
  public export
  HIGH_INT : UInt32
  HIGH_INT = 0x8DF5
  
  public export
  IMPLEMENTATION_COLOR_READ_FORMAT : UInt32
  IMPLEMENTATION_COLOR_READ_FORMAT = 0x8B9B
  
  public export
  IMPLEMENTATION_COLOR_READ_TYPE : UInt32
  IMPLEMENTATION_COLOR_READ_TYPE = 0x8B9A
  
  public export
  INCR : UInt32
  INCR = 0x1E02
  
  public export
  INCR_WRAP : UInt32
  INCR_WRAP = 0x8507
  
  public export
  INT : UInt32
  INT = 0x1404
  
  public export
  INT_VEC2 : UInt32
  INT_VEC2 = 0x8B53
  
  public export
  INT_VEC3 : UInt32
  INT_VEC3 = 0x8B54
  
  public export
  INT_VEC4 : UInt32
  INT_VEC4 = 0x8B55
  
  public export
  INVALID_ENUM : UInt32
  INVALID_ENUM = 0x500
  
  public export
  INVALID_FRAMEBUFFER_OPERATION : UInt32
  INVALID_FRAMEBUFFER_OPERATION = 0x506
  
  public export
  INVALID_OPERATION : UInt32
  INVALID_OPERATION = 0x502
  
  public export
  INVALID_VALUE : UInt32
  INVALID_VALUE = 0x501
  
  public export
  INVERT : UInt32
  INVERT = 0x150A
  
  public export
  KEEP : UInt32
  KEEP = 0x1E00
  
  public export
  LEQUAL : UInt32
  LEQUAL = 0x203
  
  public export
  LESS : UInt32
  LESS = 0x201
  
  public export
  LINEAR : UInt32
  LINEAR = 0x2601
  
  public export
  LINEAR_MIPMAP_LINEAR : UInt32
  LINEAR_MIPMAP_LINEAR = 0x2703
  
  public export
  LINEAR_MIPMAP_NEAREST : UInt32
  LINEAR_MIPMAP_NEAREST = 0x2701
  
  public export
  LINES : UInt32
  LINES = 0x1
  
  public export
  LINE_LOOP : UInt32
  LINE_LOOP = 0x2
  
  public export
  LINE_STRIP : UInt32
  LINE_STRIP = 0x3
  
  public export
  LINE_WIDTH : UInt32
  LINE_WIDTH = 0xB21
  
  public export
  LINK_STATUS : UInt32
  LINK_STATUS = 0x8B82
  
  public export
  LOW_FLOAT : UInt32
  LOW_FLOAT = 0x8DF0
  
  public export
  LOW_INT : UInt32
  LOW_INT = 0x8DF3
  
  public export
  LUMINANCE : UInt32
  LUMINANCE = 0x1909
  
  public export
  LUMINANCE_ALPHA : UInt32
  LUMINANCE_ALPHA = 0x190A
  
  public export
  MAX_COMBINED_TEXTURE_IMAGE_UNITS : UInt32
  MAX_COMBINED_TEXTURE_IMAGE_UNITS = 0x8B4D
  
  public export
  MAX_CUBE_MAP_TEXTURE_SIZE : UInt32
  MAX_CUBE_MAP_TEXTURE_SIZE = 0x851C
  
  public export
  MAX_FRAGMENT_UNIFORM_VECTORS : UInt32
  MAX_FRAGMENT_UNIFORM_VECTORS = 0x8DFD
  
  public export
  MAX_RENDERBUFFER_SIZE : UInt32
  MAX_RENDERBUFFER_SIZE = 0x84E8
  
  public export
  MAX_TEXTURE_IMAGE_UNITS : UInt32
  MAX_TEXTURE_IMAGE_UNITS = 0x8872
  
  public export
  MAX_TEXTURE_SIZE : UInt32
  MAX_TEXTURE_SIZE = 0xD33
  
  public export
  MAX_VARYING_VECTORS : UInt32
  MAX_VARYING_VECTORS = 0x8DFC
  
  public export
  MAX_VERTEX_ATTRIBS : UInt32
  MAX_VERTEX_ATTRIBS = 0x8869
  
  public export
  MAX_VERTEX_TEXTURE_IMAGE_UNITS : UInt32
  MAX_VERTEX_TEXTURE_IMAGE_UNITS = 0x8B4C
  
  public export
  MAX_VERTEX_UNIFORM_VECTORS : UInt32
  MAX_VERTEX_UNIFORM_VECTORS = 0x8DFB
  
  public export
  MAX_VIEWPORT_DIMS : UInt32
  MAX_VIEWPORT_DIMS = 0xD3A
  
  public export
  MEDIUM_FLOAT : UInt32
  MEDIUM_FLOAT = 0x8DF1
  
  public export
  MEDIUM_INT : UInt32
  MEDIUM_INT = 0x8DF4
  
  public export
  MIRRORED_REPEAT : UInt32
  MIRRORED_REPEAT = 0x8370
  
  public export
  NEAREST : UInt32
  NEAREST = 0x2600
  
  public export
  NEAREST_MIPMAP_LINEAR : UInt32
  NEAREST_MIPMAP_LINEAR = 0x2702
  
  public export
  NEAREST_MIPMAP_NEAREST : UInt32
  NEAREST_MIPMAP_NEAREST = 0x2700
  
  public export
  NEVER : UInt32
  NEVER = 0x200
  
  public export
  NICEST : UInt32
  NICEST = 0x1102
  
  public export
  NONE : UInt32
  NONE = 0
  
  public export
  NOTEQUAL : UInt32
  NOTEQUAL = 0x205
  
  public export
  NO_ERROR : UInt32
  NO_ERROR = 0
  
  public export
  ONE : UInt32
  ONE = 1
  
  public export
  ONE_MINUS_CONSTANT_ALPHA : UInt32
  ONE_MINUS_CONSTANT_ALPHA = 0x8004
  
  public export
  ONE_MINUS_CONSTANT_COLOR : UInt32
  ONE_MINUS_CONSTANT_COLOR = 0x8002
  
  public export
  ONE_MINUS_DST_ALPHA : UInt32
  ONE_MINUS_DST_ALPHA = 0x305
  
  public export
  ONE_MINUS_DST_COLOR : UInt32
  ONE_MINUS_DST_COLOR = 0x307
  
  public export
  ONE_MINUS_SRC_ALPHA : UInt32
  ONE_MINUS_SRC_ALPHA = 0x303
  
  public export
  ONE_MINUS_SRC_COLOR : UInt32
  ONE_MINUS_SRC_COLOR = 0x301
  
  public export
  OUT_OF_MEMORY : UInt32
  OUT_OF_MEMORY = 0x505
  
  public export
  PACK_ALIGNMENT : UInt32
  PACK_ALIGNMENT = 0xD05
  
  public export
  POINTS : UInt32
  POINTS = 0x0
  
  public export
  POLYGON_OFFSET_FACTOR : UInt32
  POLYGON_OFFSET_FACTOR = 0x8038
  
  public export
  POLYGON_OFFSET_FILL : UInt32
  POLYGON_OFFSET_FILL = 0x8037
  
  public export
  POLYGON_OFFSET_UNITS : UInt32
  POLYGON_OFFSET_UNITS = 0x2A00
  
  public export
  RED_BITS : UInt32
  RED_BITS = 0xD52
  
  public export
  RENDERBUFFER : UInt32
  RENDERBUFFER = 0x8D41
  
  public export
  RENDERBUFFER_ALPHA_SIZE : UInt32
  RENDERBUFFER_ALPHA_SIZE = 0x8D53
  
  public export
  RENDERBUFFER_BINDING : UInt32
  RENDERBUFFER_BINDING = 0x8CA7
  
  public export
  RENDERBUFFER_BLUE_SIZE : UInt32
  RENDERBUFFER_BLUE_SIZE = 0x8D52
  
  public export
  RENDERBUFFER_DEPTH_SIZE : UInt32
  RENDERBUFFER_DEPTH_SIZE = 0x8D54
  
  public export
  RENDERBUFFER_GREEN_SIZE : UInt32
  RENDERBUFFER_GREEN_SIZE = 0x8D51
  
  public export
  RENDERBUFFER_HEIGHT : UInt32
  RENDERBUFFER_HEIGHT = 0x8D43
  
  public export
  RENDERBUFFER_INTERNAL_FORMAT : UInt32
  RENDERBUFFER_INTERNAL_FORMAT = 0x8D44
  
  public export
  RENDERBUFFER_RED_SIZE : UInt32
  RENDERBUFFER_RED_SIZE = 0x8D50
  
  public export
  RENDERBUFFER_STENCIL_SIZE : UInt32
  RENDERBUFFER_STENCIL_SIZE = 0x8D55
  
  public export
  RENDERBUFFER_WIDTH : UInt32
  RENDERBUFFER_WIDTH = 0x8D42
  
  public export
  RENDERER : UInt32
  RENDERER = 0x1F01
  
  public export
  REPEAT : UInt32
  REPEAT = 0x2901
  
  public export
  REPLACE : UInt32
  REPLACE = 0x1E01
  
  public export
  RGB : UInt32
  RGB = 0x1907
  
  public export
  RGB565 : UInt32
  RGB565 = 0x8D62
  
  public export
  RGB5_A1 : UInt32
  RGB5_A1 = 0x8057
  
  public export
  RGBA : UInt32
  RGBA = 0x1908
  
  public export
  RGBA4 : UInt32
  RGBA4 = 0x8056
  
  public export
  SAMPLER_2D : UInt32
  SAMPLER_2D = 0x8B5E
  
  public export
  SAMPLER_CUBE : UInt32
  SAMPLER_CUBE = 0x8B60
  
  public export
  SAMPLES : UInt32
  SAMPLES = 0x80A9
  
  public export
  SAMPLE_ALPHA_TO_COVERAGE : UInt32
  SAMPLE_ALPHA_TO_COVERAGE = 0x809E
  
  public export
  SAMPLE_BUFFERS : UInt32
  SAMPLE_BUFFERS = 0x80A8
  
  public export
  SAMPLE_COVERAGE : UInt32
  SAMPLE_COVERAGE = 0x80A0
  
  public export
  SAMPLE_COVERAGE_INVERT : UInt32
  SAMPLE_COVERAGE_INVERT = 0x80AB
  
  public export
  SAMPLE_COVERAGE_VALUE : UInt32
  SAMPLE_COVERAGE_VALUE = 0x80AA
  
  public export
  SCISSOR_BOX : UInt32
  SCISSOR_BOX = 0xC10
  
  public export
  SCISSOR_TEST : UInt32
  SCISSOR_TEST = 0xC11
  
  public export
  SHADER_TYPE : UInt32
  SHADER_TYPE = 0x8B4F
  
  public export
  SHADING_LANGUAGE_VERSION : UInt32
  SHADING_LANGUAGE_VERSION = 0x8B8C
  
  public export
  SHORT : UInt32
  SHORT = 0x1402
  
  public export
  SRC_ALPHA : UInt32
  SRC_ALPHA = 0x302
  
  public export
  SRC_ALPHA_SATURATE : UInt32
  SRC_ALPHA_SATURATE = 0x308
  
  public export
  SRC_COLOR : UInt32
  SRC_COLOR = 0x300
  
  public export
  STATIC_DRAW : UInt32
  STATIC_DRAW = 0x88E4
  
  public export
  STENCIL_ATTACHMENT : UInt32
  STENCIL_ATTACHMENT = 0x8D20
  
  public export
  STENCIL_BACK_FAIL : UInt32
  STENCIL_BACK_FAIL = 0x8801
  
  public export
  STENCIL_BACK_FUNC : UInt32
  STENCIL_BACK_FUNC = 0x8800
  
  public export
  STENCIL_BACK_PASS_DEPTH_FAIL : UInt32
  STENCIL_BACK_PASS_DEPTH_FAIL = 0x8802
  
  public export
  STENCIL_BACK_PASS_DEPTH_PASS : UInt32
  STENCIL_BACK_PASS_DEPTH_PASS = 0x8803
  
  public export
  STENCIL_BACK_REF : UInt32
  STENCIL_BACK_REF = 0x8CA3
  
  public export
  STENCIL_BACK_VALUE_MASK : UInt32
  STENCIL_BACK_VALUE_MASK = 0x8CA4
  
  public export
  STENCIL_BACK_WRITEMASK : UInt32
  STENCIL_BACK_WRITEMASK = 0x8CA5
  
  public export
  STENCIL_BITS : UInt32
  STENCIL_BITS = 0xD57
  
  public export
  STENCIL_BUFFER_BIT : UInt32
  STENCIL_BUFFER_BIT = 0x400
  
  public export
  STENCIL_CLEAR_VALUE : UInt32
  STENCIL_CLEAR_VALUE = 0xB91
  
  public export
  STENCIL_FAIL : UInt32
  STENCIL_FAIL = 0xB94
  
  public export
  STENCIL_FUNC : UInt32
  STENCIL_FUNC = 0xB92
  
  public export
  STENCIL_INDEX8 : UInt32
  STENCIL_INDEX8 = 0x8D48
  
  public export
  STENCIL_PASS_DEPTH_FAIL : UInt32
  STENCIL_PASS_DEPTH_FAIL = 0xB95
  
  public export
  STENCIL_PASS_DEPTH_PASS : UInt32
  STENCIL_PASS_DEPTH_PASS = 0xB96
  
  public export
  STENCIL_REF : UInt32
  STENCIL_REF = 0xB97
  
  public export
  STENCIL_TEST : UInt32
  STENCIL_TEST = 0xB90
  
  public export
  STENCIL_VALUE_MASK : UInt32
  STENCIL_VALUE_MASK = 0xB93
  
  public export
  STENCIL_WRITEMASK : UInt32
  STENCIL_WRITEMASK = 0xB98
  
  public export
  STREAM_DRAW : UInt32
  STREAM_DRAW = 0x88E0
  
  public export
  SUBPIXEL_BITS : UInt32
  SUBPIXEL_BITS = 0xD50
  
  public export
  TEXTURE : UInt32
  TEXTURE = 0x1702
  
  public export
  TEXTURE0 : UInt32
  TEXTURE0 = 0x84C0
  
  public export
  TEXTURE1 : UInt32
  TEXTURE1 = 0x84C1
  
  public export
  TEXTURE10 : UInt32
  TEXTURE10 = 0x84CA
  
  public export
  TEXTURE11 : UInt32
  TEXTURE11 = 0x84CB
  
  public export
  TEXTURE12 : UInt32
  TEXTURE12 = 0x84CC
  
  public export
  TEXTURE13 : UInt32
  TEXTURE13 = 0x84CD
  
  public export
  TEXTURE14 : UInt32
  TEXTURE14 = 0x84CE
  
  public export
  TEXTURE15 : UInt32
  TEXTURE15 = 0x84CF
  
  public export
  TEXTURE16 : UInt32
  TEXTURE16 = 0x84D0
  
  public export
  TEXTURE17 : UInt32
  TEXTURE17 = 0x84D1
  
  public export
  TEXTURE18 : UInt32
  TEXTURE18 = 0x84D2
  
  public export
  TEXTURE19 : UInt32
  TEXTURE19 = 0x84D3
  
  public export
  TEXTURE2 : UInt32
  TEXTURE2 = 0x84C2
  
  public export
  TEXTURE20 : UInt32
  TEXTURE20 = 0x84D4
  
  public export
  TEXTURE21 : UInt32
  TEXTURE21 = 0x84D5
  
  public export
  TEXTURE22 : UInt32
  TEXTURE22 = 0x84D6
  
  public export
  TEXTURE23 : UInt32
  TEXTURE23 = 0x84D7
  
  public export
  TEXTURE24 : UInt32
  TEXTURE24 = 0x84D8
  
  public export
  TEXTURE25 : UInt32
  TEXTURE25 = 0x84D9
  
  public export
  TEXTURE26 : UInt32
  TEXTURE26 = 0x84DA
  
  public export
  TEXTURE27 : UInt32
  TEXTURE27 = 0x84DB
  
  public export
  TEXTURE28 : UInt32
  TEXTURE28 = 0x84DC
  
  public export
  TEXTURE29 : UInt32
  TEXTURE29 = 0x84DD
  
  public export
  TEXTURE3 : UInt32
  TEXTURE3 = 0x84C3
  
  public export
  TEXTURE30 : UInt32
  TEXTURE30 = 0x84DE
  
  public export
  TEXTURE31 : UInt32
  TEXTURE31 = 0x84DF
  
  public export
  TEXTURE4 : UInt32
  TEXTURE4 = 0x84C4
  
  public export
  TEXTURE5 : UInt32
  TEXTURE5 = 0x84C5
  
  public export
  TEXTURE6 : UInt32
  TEXTURE6 = 0x84C6
  
  public export
  TEXTURE7 : UInt32
  TEXTURE7 = 0x84C7
  
  public export
  TEXTURE8 : UInt32
  TEXTURE8 = 0x84C8
  
  public export
  TEXTURE9 : UInt32
  TEXTURE9 = 0x84C9
  
  public export
  TEXTURE_2D : UInt32
  TEXTURE_2D = 0xDE1
  
  public export
  TEXTURE_BINDING_2D : UInt32
  TEXTURE_BINDING_2D = 0x8069
  
  public export
  TEXTURE_BINDING_CUBE_MAP : UInt32
  TEXTURE_BINDING_CUBE_MAP = 0x8514
  
  public export
  TEXTURE_CUBE_MAP : UInt32
  TEXTURE_CUBE_MAP = 0x8513
  
  public export
  TEXTURE_CUBE_MAP_NEGATIVE_X : UInt32
  TEXTURE_CUBE_MAP_NEGATIVE_X = 0x8516
  
  public export
  TEXTURE_CUBE_MAP_NEGATIVE_Y : UInt32
  TEXTURE_CUBE_MAP_NEGATIVE_Y = 0x8518
  
  public export
  TEXTURE_CUBE_MAP_NEGATIVE_Z : UInt32
  TEXTURE_CUBE_MAP_NEGATIVE_Z = 0x851A
  
  public export
  TEXTURE_CUBE_MAP_POSITIVE_X : UInt32
  TEXTURE_CUBE_MAP_POSITIVE_X = 0x8515
  
  public export
  TEXTURE_CUBE_MAP_POSITIVE_Y : UInt32
  TEXTURE_CUBE_MAP_POSITIVE_Y = 0x8517
  
  public export
  TEXTURE_CUBE_MAP_POSITIVE_Z : UInt32
  TEXTURE_CUBE_MAP_POSITIVE_Z = 0x8519
  
  public export
  TEXTURE_MAG_FILTER : UInt32
  TEXTURE_MAG_FILTER = 0x2800
  
  public export
  TEXTURE_MIN_FILTER : UInt32
  TEXTURE_MIN_FILTER = 0x2801
  
  public export
  TEXTURE_WRAP_S : UInt32
  TEXTURE_WRAP_S = 0x2802
  
  public export
  TEXTURE_WRAP_T : UInt32
  TEXTURE_WRAP_T = 0x2803
  
  public export
  TRIANGLES : UInt32
  TRIANGLES = 0x4
  
  public export
  TRIANGLE_FAN : UInt32
  TRIANGLE_FAN = 0x6
  
  public export
  TRIANGLE_STRIP : UInt32
  TRIANGLE_STRIP = 0x5
  
  public export
  UNPACK_ALIGNMENT : UInt32
  UNPACK_ALIGNMENT = 0xCF5
  
  public export
  UNPACK_COLORSPACE_CONVERSION_WEBGL : UInt32
  UNPACK_COLORSPACE_CONVERSION_WEBGL = 0x9243
  
  public export
  UNPACK_FLIP_Y_WEBGL : UInt32
  UNPACK_FLIP_Y_WEBGL = 0x9240
  
  public export
  UNPACK_PREMULTIPLY_ALPHA_WEBGL : UInt32
  UNPACK_PREMULTIPLY_ALPHA_WEBGL = 0x9241
  
  public export
  UNSIGNED_BYTE : UInt32
  UNSIGNED_BYTE = 0x1401
  
  public export
  UNSIGNED_INT : UInt32
  UNSIGNED_INT = 0x1405
  
  public export
  UNSIGNED_SHORT : UInt32
  UNSIGNED_SHORT = 0x1403
  
  public export
  UNSIGNED_SHORT_4_4_4_4 : UInt32
  UNSIGNED_SHORT_4_4_4_4 = 0x8033
  
  public export
  UNSIGNED_SHORT_5_5_5_1 : UInt32
  UNSIGNED_SHORT_5_5_5_1 = 0x8034
  
  public export
  UNSIGNED_SHORT_5_6_5 : UInt32
  UNSIGNED_SHORT_5_6_5 = 0x8363
  
  public export
  VALIDATE_STATUS : UInt32
  VALIDATE_STATUS = 0x8B83
  
  public export
  VENDOR : UInt32
  VENDOR = 0x1F00
  
  public export
  VERSION : UInt32
  VERSION = 0x1F02
  
  public export
  VERTEX_ATTRIB_ARRAY_BUFFER_BINDING : UInt32
  VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 0x889F
  
  public export
  VERTEX_ATTRIB_ARRAY_ENABLED : UInt32
  VERTEX_ATTRIB_ARRAY_ENABLED = 0x8622
  
  public export
  VERTEX_ATTRIB_ARRAY_NORMALIZED : UInt32
  VERTEX_ATTRIB_ARRAY_NORMALIZED = 0x886A
  
  public export
  VERTEX_ATTRIB_ARRAY_POINTER : UInt32
  VERTEX_ATTRIB_ARRAY_POINTER = 0x8645
  
  public export
  VERTEX_ATTRIB_ARRAY_SIZE : UInt32
  VERTEX_ATTRIB_ARRAY_SIZE = 0x8623
  
  public export
  VERTEX_ATTRIB_ARRAY_STRIDE : UInt32
  VERTEX_ATTRIB_ARRAY_STRIDE = 0x8624
  
  public export
  VERTEX_ATTRIB_ARRAY_TYPE : UInt32
  VERTEX_ATTRIB_ARRAY_TYPE = 0x8625
  
  public export
  VERTEX_SHADER : UInt32
  VERTEX_SHADER = 0x8B31
  
  public export
  VIEWPORT : UInt32
  VIEWPORT = 0xBA2
  
  public export
  ZERO : UInt32
  ZERO = 0
  
  export
  canvas :  (obj : WebGLRenderingContextBase)
         -> JSIO (NS I [ HTMLCanvasElement , OffscreenCanvas ])
  canvas a = tryJS "WebGLRenderingContextBase.canvas"
           $ WebGLRenderingContextBase.prim__canvas a
  
  export
  drawingBufferHeight : (obj : WebGLRenderingContextBase) -> JSIO Int32
  drawingBufferHeight a = primJS
                        $ WebGLRenderingContextBase.prim__drawingBufferHeight a
  
  export
  drawingBufferWidth : (obj : WebGLRenderingContextBase) -> JSIO Int32
  drawingBufferWidth a = primJS
                       $ WebGLRenderingContextBase.prim__drawingBufferWidth a
  
  export
  activeTexture :  (obj : WebGLRenderingContextBase)
                -> (texture : UInt32)
                -> JSIO ()
  activeTexture a b = primJS $ WebGLRenderingContextBase.prim__activeTexture a b
  
  export
  attachShader :  (obj : WebGLRenderingContextBase)
               -> (program : WebGLProgram)
               -> (shader : WebGLShader)
               -> JSIO ()
  attachShader a b c = primJS
                     $ WebGLRenderingContextBase.prim__attachShader a b c
  
  export
  bindAttribLocation :  (obj : WebGLRenderingContextBase)
                     -> (program : WebGLProgram)
                     -> (index : UInt32)
                     -> (name : String)
                     -> JSIO ()
  bindAttribLocation a b c d = primJS
                             $ WebGLRenderingContextBase.prim__bindAttribLocation a
                                                                                  b
                                                                                  c
                                                                                  d
  
  export
  bindBuffer :  (obj : WebGLRenderingContextBase)
             -> (target : UInt32)
             -> (buffer : Maybe WebGLBuffer)
             -> JSIO ()
  bindBuffer a b c = primJS
                   $ WebGLRenderingContextBase.prim__bindBuffer a b (toFFI c)
  
  export
  bindFramebuffer :  (obj : WebGLRenderingContextBase)
                  -> (target : UInt32)
                  -> (framebuffer : Maybe WebGLFramebuffer)
                  -> JSIO ()
  bindFramebuffer a b c = primJS
                        $ WebGLRenderingContextBase.prim__bindFramebuffer a
                                                                          b
                                                                          (toFFI c)
  
  export
  bindRenderbuffer :  (obj : WebGLRenderingContextBase)
                   -> (target : UInt32)
                   -> (renderbuffer : Maybe WebGLRenderbuffer)
                   -> JSIO ()
  bindRenderbuffer a b c = primJS
                         $ WebGLRenderingContextBase.prim__bindRenderbuffer a
                                                                            b
                                                                            (toFFI c)
  
  export
  bindTexture :  (obj : WebGLRenderingContextBase)
              -> (target : UInt32)
              -> (texture : Maybe WebGLTexture)
              -> JSIO ()
  bindTexture a b c = primJS
                    $ WebGLRenderingContextBase.prim__bindTexture a b (toFFI c)
  
  export
  blendColor :  (obj : WebGLRenderingContextBase)
             -> (red : Double)
             -> (green : Double)
             -> (blue : Double)
             -> (alpha : Double)
             -> JSIO ()
  blendColor a b c d e = primJS
                       $ WebGLRenderingContextBase.prim__blendColor a b c d e
  
  export
  blendEquationSeparate :  (obj : WebGLRenderingContextBase)
                        -> (modeRGB : UInt32)
                        -> (modeAlpha : UInt32)
                        -> JSIO ()
  blendEquationSeparate a b c = primJS
                              $ WebGLRenderingContextBase.prim__blendEquationSeparate a
                                                                                      b
                                                                                      c
  
  export
  blendEquation :  (obj : WebGLRenderingContextBase)
                -> (mode : UInt32)
                -> JSIO ()
  blendEquation a b = primJS $ WebGLRenderingContextBase.prim__blendEquation a b
  
  export
  blendFuncSeparate :  (obj : WebGLRenderingContextBase)
                    -> (srcRGB : UInt32)
                    -> (dstRGB : UInt32)
                    -> (srcAlpha : UInt32)
                    -> (dstAlpha : UInt32)
                    -> JSIO ()
  blendFuncSeparate a b c d e = primJS
                              $ WebGLRenderingContextBase.prim__blendFuncSeparate a
                                                                                  b
                                                                                  c
                                                                                  d
                                                                                  e
  
  export
  blendFunc :  (obj : WebGLRenderingContextBase)
            -> (sfactor : UInt32)
            -> (dfactor : UInt32)
            -> JSIO ()
  blendFunc a b c = primJS $ WebGLRenderingContextBase.prim__blendFunc a b c
  
  export
  checkFramebufferStatus :  (obj : WebGLRenderingContextBase)
                         -> (target : UInt32)
                         -> JSIO UInt32
  checkFramebufferStatus a b = primJS
                             $ WebGLRenderingContextBase.prim__checkFramebufferStatus a
                                                                                      b
  
  export
  clearColor :  (obj : WebGLRenderingContextBase)
             -> (red : Double)
             -> (green : Double)
             -> (blue : Double)
             -> (alpha : Double)
             -> JSIO ()
  clearColor a b c d e = primJS
                       $ WebGLRenderingContextBase.prim__clearColor a b c d e
  
  export
  clearDepth : (obj : WebGLRenderingContextBase) -> (depth : Double) -> JSIO ()
  clearDepth a b = primJS $ WebGLRenderingContextBase.prim__clearDepth a b
  
  export
  clearStencil : (obj : WebGLRenderingContextBase) -> (s : Int32) -> JSIO ()
  clearStencil a b = primJS $ WebGLRenderingContextBase.prim__clearStencil a b
  
  export
  clear : (obj : WebGLRenderingContextBase) -> (mask : UInt32) -> JSIO ()
  clear a b = primJS $ WebGLRenderingContextBase.prim__clear a b
  
  export
  colorMask :  (obj : WebGLRenderingContextBase)
            -> (red : Bool)
            -> (green : Bool)
            -> (blue : Bool)
            -> (alpha : Bool)
            -> JSIO ()
  colorMask a b c d e = primJS
                      $ WebGLRenderingContextBase.prim__colorMask a
                                                                  (toFFI b)
                                                                  (toFFI c)
                                                                  (toFFI d)
                                                                  (toFFI e)
  
  export
  compileShader :  (obj : WebGLRenderingContextBase)
                -> (shader : WebGLShader)
                -> JSIO ()
  compileShader a b = primJS $ WebGLRenderingContextBase.prim__compileShader a b
  
  export
  copyTexImage2D :  (obj : WebGLRenderingContextBase)
                 -> (target : UInt32)
                 -> (level : Int32)
                 -> (internalformat : UInt32)
                 -> (x : Int32)
                 -> (y : Int32)
                 -> (width : Int32)
                 -> (height : Int32)
                 -> (border : Int32)
                 -> JSIO ()
  copyTexImage2D a b c d e f g h i = primJS
                                   $ WebGLRenderingContextBase.prim__copyTexImage2D a
                                                                                    b
                                                                                    c
                                                                                    d
                                                                                    e
                                                                                    f
                                                                                    g
                                                                                    h
                                                                                    i
  
  export
  copyTexSubImage2D :  (obj : WebGLRenderingContextBase)
                    -> (target : UInt32)
                    -> (level : Int32)
                    -> (xoffset : Int32)
                    -> (yoffset : Int32)
                    -> (x : Int32)
                    -> (y : Int32)
                    -> (width : Int32)
                    -> (height : Int32)
                    -> JSIO ()
  copyTexSubImage2D a b c d e f g h i = primJS
                                      $ WebGLRenderingContextBase.prim__copyTexSubImage2D a
                                                                                          b
                                                                                          c
                                                                                          d
                                                                                          e
                                                                                          f
                                                                                          g
                                                                                          h
                                                                                          i
  
  export
  createBuffer : (obj : WebGLRenderingContextBase) -> JSIO (Maybe WebGLBuffer)
  createBuffer a = tryJS "WebGLRenderingContextBase.createBuffer"
                 $ WebGLRenderingContextBase.prim__createBuffer a
  
  export
  createFramebuffer :  (obj : WebGLRenderingContextBase)
                    -> JSIO (Maybe WebGLFramebuffer)
  createFramebuffer a = tryJS "WebGLRenderingContextBase.createFramebuffer"
                      $ WebGLRenderingContextBase.prim__createFramebuffer a
  
  export
  createProgram : (obj : WebGLRenderingContextBase) -> JSIO (Maybe WebGLProgram)
  createProgram a = tryJS "WebGLRenderingContextBase.createProgram"
                  $ WebGLRenderingContextBase.prim__createProgram a
  
  export
  createRenderbuffer :  (obj : WebGLRenderingContextBase)
                     -> JSIO (Maybe WebGLRenderbuffer)
  createRenderbuffer a = tryJS "WebGLRenderingContextBase.createRenderbuffer"
                       $ WebGLRenderingContextBase.prim__createRenderbuffer a
  
  export
  createShader :  (obj : WebGLRenderingContextBase)
               -> (type : UInt32)
               -> JSIO (Maybe WebGLShader)
  createShader a b = tryJS "WebGLRenderingContextBase.createShader"
                   $ WebGLRenderingContextBase.prim__createShader a b
  
  export
  createTexture : (obj : WebGLRenderingContextBase) -> JSIO (Maybe WebGLTexture)
  createTexture a = tryJS "WebGLRenderingContextBase.createTexture"
                  $ WebGLRenderingContextBase.prim__createTexture a
  
  export
  cullFace : (obj : WebGLRenderingContextBase) -> (mode : UInt32) -> JSIO ()
  cullFace a b = primJS $ WebGLRenderingContextBase.prim__cullFace a b
  
  export
  deleteBuffer :  (obj : WebGLRenderingContextBase)
               -> (buffer : Maybe WebGLBuffer)
               -> JSIO ()
  deleteBuffer a b = primJS
                   $ WebGLRenderingContextBase.prim__deleteBuffer a (toFFI b)
  
  export
  deleteFramebuffer :  (obj : WebGLRenderingContextBase)
                    -> (framebuffer : Maybe WebGLFramebuffer)
                    -> JSIO ()
  deleteFramebuffer a b = primJS
                        $ WebGLRenderingContextBase.prim__deleteFramebuffer a
                                                                            (toFFI b)
  
  export
  deleteProgram :  (obj : WebGLRenderingContextBase)
                -> (program : Maybe WebGLProgram)
                -> JSIO ()
  deleteProgram a b = primJS
                    $ WebGLRenderingContextBase.prim__deleteProgram a (toFFI b)
  
  export
  deleteRenderbuffer :  (obj : WebGLRenderingContextBase)
                     -> (renderbuffer : Maybe WebGLRenderbuffer)
                     -> JSIO ()
  deleteRenderbuffer a b = primJS
                         $ WebGLRenderingContextBase.prim__deleteRenderbuffer a
                                                                              (toFFI b)
  
  export
  deleteShader :  (obj : WebGLRenderingContextBase)
               -> (shader : Maybe WebGLShader)
               -> JSIO ()
  deleteShader a b = primJS
                   $ WebGLRenderingContextBase.prim__deleteShader a (toFFI b)
  
  export
  deleteTexture :  (obj : WebGLRenderingContextBase)
                -> (texture : Maybe WebGLTexture)
                -> JSIO ()
  deleteTexture a b = primJS
                    $ WebGLRenderingContextBase.prim__deleteTexture a (toFFI b)
  
  export
  depthFunc : (obj : WebGLRenderingContextBase) -> (func : UInt32) -> JSIO ()
  depthFunc a b = primJS $ WebGLRenderingContextBase.prim__depthFunc a b
  
  export
  depthMask : (obj : WebGLRenderingContextBase) -> (flag : Bool) -> JSIO ()
  depthMask a b = primJS $ WebGLRenderingContextBase.prim__depthMask a (toFFI b)
  
  export
  depthRange :  (obj : WebGLRenderingContextBase)
             -> (zNear : Double)
             -> (zFar : Double)
             -> JSIO ()
  depthRange a b c = primJS $ WebGLRenderingContextBase.prim__depthRange a b c
  
  export
  detachShader :  (obj : WebGLRenderingContextBase)
               -> (program : WebGLProgram)
               -> (shader : WebGLShader)
               -> JSIO ()
  detachShader a b c = primJS
                     $ WebGLRenderingContextBase.prim__detachShader a b c
  
  export
  disableVertexAttribArray :  (obj : WebGLRenderingContextBase)
                           -> (index : UInt32)
                           -> JSIO ()
  disableVertexAttribArray a b = primJS
                               $ WebGLRenderingContextBase.prim__disableVertexAttribArray a
                                                                                          b
  
  export
  disable : (obj : WebGLRenderingContextBase) -> (cap : UInt32) -> JSIO ()
  disable a b = primJS $ WebGLRenderingContextBase.prim__disable a b
  
  export
  drawArrays :  (obj : WebGLRenderingContextBase)
             -> (mode : UInt32)
             -> (first : Int32)
             -> (count : Int32)
             -> JSIO ()
  drawArrays a b c d = primJS
                     $ WebGLRenderingContextBase.prim__drawArrays a b c d
  
  export
  drawElements :  (obj : WebGLRenderingContextBase)
               -> (mode : UInt32)
               -> (count : Int32)
               -> (type : UInt32)
               -> (offset : Int64)
               -> JSIO ()
  drawElements a b c d e = primJS
                         $ WebGLRenderingContextBase.prim__drawElements a
                                                                        b
                                                                        c
                                                                        d
                                                                        e
  
  export
  enableVertexAttribArray :  (obj : WebGLRenderingContextBase)
                          -> (index : UInt32)
                          -> JSIO ()
  enableVertexAttribArray a b = primJS
                              $ WebGLRenderingContextBase.prim__enableVertexAttribArray a
                                                                                        b
  
  export
  enable : (obj : WebGLRenderingContextBase) -> (cap : UInt32) -> JSIO ()
  enable a b = primJS $ WebGLRenderingContextBase.prim__enable a b
  
  export
  finish : (obj : WebGLRenderingContextBase) -> JSIO ()
  finish a = primJS $ WebGLRenderingContextBase.prim__finish a
  
  export
  flush : (obj : WebGLRenderingContextBase) -> JSIO ()
  flush a = primJS $ WebGLRenderingContextBase.prim__flush a
  
  export
  framebufferRenderbuffer :  (obj : WebGLRenderingContextBase)
                          -> (target : UInt32)
                          -> (attachment : UInt32)
                          -> (renderbuffertarget : UInt32)
                          -> (renderbuffer : Maybe WebGLRenderbuffer)
                          -> JSIO ()
  framebufferRenderbuffer a b c d e = primJS
                                    $ WebGLRenderingContextBase.prim__framebufferRenderbuffer a
                                                                                              b
                                                                                              c
                                                                                              d
                                                                                              (toFFI e)
  
  export
  framebufferTexture2D :  (obj : WebGLRenderingContextBase)
                       -> (target : UInt32)
                       -> (attachment : UInt32)
                       -> (textarget : UInt32)
                       -> (texture : Maybe WebGLTexture)
                       -> (level : Int32)
                       -> JSIO ()
  framebufferTexture2D a b c d e f = primJS
                                   $ WebGLRenderingContextBase.prim__framebufferTexture2D a
                                                                                          b
                                                                                          c
                                                                                          d
                                                                                          (toFFI e)
                                                                                          f
  
  export
  frontFace : (obj : WebGLRenderingContextBase) -> (mode : UInt32) -> JSIO ()
  frontFace a b = primJS $ WebGLRenderingContextBase.prim__frontFace a b
  
  export
  generateMipmap :  (obj : WebGLRenderingContextBase)
                 -> (target : UInt32)
                 -> JSIO ()
  generateMipmap a b = primJS
                     $ WebGLRenderingContextBase.prim__generateMipmap a b
  
  export
  getActiveAttrib :  (obj : WebGLRenderingContextBase)
                  -> (program : WebGLProgram)
                  -> (index : UInt32)
                  -> JSIO (Maybe WebGLActiveInfo)
  getActiveAttrib a b c = tryJS "WebGLRenderingContextBase.getActiveAttrib"
                        $ WebGLRenderingContextBase.prim__getActiveAttrib a b c
  
  export
  getActiveUniform :  (obj : WebGLRenderingContextBase)
                   -> (program : WebGLProgram)
                   -> (index : UInt32)
                   -> JSIO (Maybe WebGLActiveInfo)
  getActiveUniform a b c = tryJS "WebGLRenderingContextBase.getActiveUniform"
                         $ WebGLRenderingContextBase.prim__getActiveUniform a
                                                                            b
                                                                            c
  
  export
  getAttachedShaders :  (obj : WebGLRenderingContextBase)
                     -> (program : WebGLProgram)
                     -> JSIO (Maybe (Array WebGLShader))
  getAttachedShaders a b = tryJS "WebGLRenderingContextBase.getAttachedShaders"
                         $ WebGLRenderingContextBase.prim__getAttachedShaders a
                                                                              b
  
  export
  getAttribLocation :  (obj : WebGLRenderingContextBase)
                    -> (program : WebGLProgram)
                    -> (name : String)
                    -> JSIO Int32
  getAttribLocation a b c = primJS
                          $ WebGLRenderingContextBase.prim__getAttribLocation a
                                                                              b
                                                                              c
  
  export
  getBufferParameter :  (obj : WebGLRenderingContextBase)
                     -> (target : UInt32)
                     -> (pname : UInt32)
                     -> JSIO Any
  getBufferParameter a b c = tryJS "WebGLRenderingContextBase.getBufferParameter"
                           $ WebGLRenderingContextBase.prim__getBufferParameter a
                                                                                b
                                                                                c
  
  export
  getContextAttributes :  (obj : WebGLRenderingContextBase)
                       -> JSIO (Maybe WebGLContextAttributes)
  getContextAttributes a = tryJS "WebGLRenderingContextBase.getContextAttributes"
                         $ WebGLRenderingContextBase.prim__getContextAttributes a
  
  export
  getError : (obj : WebGLRenderingContextBase) -> JSIO UInt32
  getError a = primJS $ WebGLRenderingContextBase.prim__getError a
  
  export
  getExtension :  (obj : WebGLRenderingContextBase)
               -> (name : String)
               -> JSIO (Maybe Object)
  getExtension a b = tryJS "WebGLRenderingContextBase.getExtension"
                   $ WebGLRenderingContextBase.prim__getExtension a b
  
  export
  getFramebufferAttachmentParameter :  (obj : WebGLRenderingContextBase)
                                    -> (target : UInt32)
                                    -> (attachment : UInt32)
                                    -> (pname : UInt32)
                                    -> JSIO Any
  getFramebufferAttachmentParameter a b c d = tryJS "WebGLRenderingContextBase.getFramebufferAttachmentParameter"
                                            $ WebGLRenderingContextBase.prim__getFramebufferAttachmentParameter a
                                                                                                                b
                                                                                                                c
                                                                                                                d
  
  export
  getParameter :  (obj : WebGLRenderingContextBase)
               -> (pname : UInt32)
               -> JSIO Any
  getParameter a b = tryJS "WebGLRenderingContextBase.getParameter"
                   $ WebGLRenderingContextBase.prim__getParameter a b
  
  export
  getProgramInfoLog :  (obj : WebGLRenderingContextBase)
                    -> (program : WebGLProgram)
                    -> JSIO (Maybe String)
  getProgramInfoLog a b = tryJS "WebGLRenderingContextBase.getProgramInfoLog"
                        $ WebGLRenderingContextBase.prim__getProgramInfoLog a b
  
  export
  getProgramParameter :  (obj : WebGLRenderingContextBase)
                      -> (program : WebGLProgram)
                      -> (pname : UInt32)
                      -> JSIO Any
  getProgramParameter a b c = tryJS "WebGLRenderingContextBase.getProgramParameter"
                            $ WebGLRenderingContextBase.prim__getProgramParameter a
                                                                                  b
                                                                                  c
  
  export
  getRenderbufferParameter :  (obj : WebGLRenderingContextBase)
                           -> (target : UInt32)
                           -> (pname : UInt32)
                           -> JSIO Any
  getRenderbufferParameter a b c = tryJS "WebGLRenderingContextBase.getRenderbufferParameter"
                                 $ WebGLRenderingContextBase.prim__getRenderbufferParameter a
                                                                                            b
                                                                                            c
  
  export
  getShaderInfoLog :  (obj : WebGLRenderingContextBase)
                   -> (shader : WebGLShader)
                   -> JSIO (Maybe String)
  getShaderInfoLog a b = tryJS "WebGLRenderingContextBase.getShaderInfoLog"
                       $ WebGLRenderingContextBase.prim__getShaderInfoLog a b
  
  export
  getShaderParameter :  (obj : WebGLRenderingContextBase)
                     -> (shader : WebGLShader)
                     -> (pname : UInt32)
                     -> JSIO Any
  getShaderParameter a b c = tryJS "WebGLRenderingContextBase.getShaderParameter"
                           $ WebGLRenderingContextBase.prim__getShaderParameter a
                                                                                b
                                                                                c
  
  export
  getShaderPrecisionFormat :  (obj : WebGLRenderingContextBase)
                           -> (shadertype : UInt32)
                           -> (precisiontype : UInt32)
                           -> JSIO (Maybe WebGLShaderPrecisionFormat)
  getShaderPrecisionFormat a b c = tryJS "WebGLRenderingContextBase.getShaderPrecisionFormat"
                                 $ WebGLRenderingContextBase.prim__getShaderPrecisionFormat a
                                                                                            b
                                                                                            c
  
  export
  getShaderSource :  (obj : WebGLRenderingContextBase)
                  -> (shader : WebGLShader)
                  -> JSIO (Maybe String)
  getShaderSource a b = tryJS "WebGLRenderingContextBase.getShaderSource"
                      $ WebGLRenderingContextBase.prim__getShaderSource a b
  
  export
  getSupportedExtensions :  (obj : WebGLRenderingContextBase)
                         -> JSIO (Maybe (Array String))
  getSupportedExtensions a = tryJS "WebGLRenderingContextBase.getSupportedExtensions"
                           $ WebGLRenderingContextBase.prim__getSupportedExtensions a
  
  export
  getTexParameter :  (obj : WebGLRenderingContextBase)
                  -> (target : UInt32)
                  -> (pname : UInt32)
                  -> JSIO Any
  getTexParameter a b c = tryJS "WebGLRenderingContextBase.getTexParameter"
                        $ WebGLRenderingContextBase.prim__getTexParameter a b c
  
  export
  getUniformLocation :  (obj : WebGLRenderingContextBase)
                     -> (program : WebGLProgram)
                     -> (name : String)
                     -> JSIO (Maybe WebGLUniformLocation)
  getUniformLocation a b c = tryJS "WebGLRenderingContextBase.getUniformLocation"
                           $ WebGLRenderingContextBase.prim__getUniformLocation a
                                                                                b
                                                                                c
  
  export
  getUniform :  (obj : WebGLRenderingContextBase)
             -> (program : WebGLProgram)
             -> (location : WebGLUniformLocation)
             -> JSIO Any
  getUniform a b c = tryJS "WebGLRenderingContextBase.getUniform"
                   $ WebGLRenderingContextBase.prim__getUniform a b c
  
  export
  getVertexAttribOffset :  (obj : WebGLRenderingContextBase)
                        -> (index : UInt32)
                        -> (pname : UInt32)
                        -> JSIO Int64
  getVertexAttribOffset a b c = primJS
                              $ WebGLRenderingContextBase.prim__getVertexAttribOffset a
                                                                                      b
                                                                                      c
  
  export
  getVertexAttrib :  (obj : WebGLRenderingContextBase)
                  -> (index : UInt32)
                  -> (pname : UInt32)
                  -> JSIO Any
  getVertexAttrib a b c = tryJS "WebGLRenderingContextBase.getVertexAttrib"
                        $ WebGLRenderingContextBase.prim__getVertexAttrib a b c
  
  export
  hint :  (obj : WebGLRenderingContextBase)
       -> (target : UInt32)
       -> (mode : UInt32)
       -> JSIO ()
  hint a b c = primJS $ WebGLRenderingContextBase.prim__hint a b c
  
  export
  isBuffer :  (obj : WebGLRenderingContextBase)
           -> (buffer : Maybe WebGLBuffer)
           -> JSIO Bool
  isBuffer a b = tryJS "WebGLRenderingContextBase.isBuffer"
               $ WebGLRenderingContextBase.prim__isBuffer a (toFFI b)
  
  export
  isContextLost : (obj : WebGLRenderingContextBase) -> JSIO Bool
  isContextLost a = tryJS "WebGLRenderingContextBase.isContextLost"
                  $ WebGLRenderingContextBase.prim__isContextLost a
  
  export
  isEnabled : (obj : WebGLRenderingContextBase) -> (cap : UInt32) -> JSIO Bool
  isEnabled a b = tryJS "WebGLRenderingContextBase.isEnabled"
                $ WebGLRenderingContextBase.prim__isEnabled a b
  
  export
  isFramebuffer :  (obj : WebGLRenderingContextBase)
                -> (framebuffer : Maybe WebGLFramebuffer)
                -> JSIO Bool
  isFramebuffer a b = tryJS "WebGLRenderingContextBase.isFramebuffer"
                    $ WebGLRenderingContextBase.prim__isFramebuffer a (toFFI b)
  
  export
  isProgram :  (obj : WebGLRenderingContextBase)
            -> (program : Maybe WebGLProgram)
            -> JSIO Bool
  isProgram a b = tryJS "WebGLRenderingContextBase.isProgram"
                $ WebGLRenderingContextBase.prim__isProgram a (toFFI b)
  
  export
  isRenderbuffer :  (obj : WebGLRenderingContextBase)
                 -> (renderbuffer : Maybe WebGLRenderbuffer)
                 -> JSIO Bool
  isRenderbuffer a b = tryJS "WebGLRenderingContextBase.isRenderbuffer"
                     $ WebGLRenderingContextBase.prim__isRenderbuffer a
                                                                      (toFFI b)
  
  export
  isShader :  (obj : WebGLRenderingContextBase)
           -> (shader : Maybe WebGLShader)
           -> JSIO Bool
  isShader a b = tryJS "WebGLRenderingContextBase.isShader"
               $ WebGLRenderingContextBase.prim__isShader a (toFFI b)
  
  export
  isTexture :  (obj : WebGLRenderingContextBase)
            -> (texture : Maybe WebGLTexture)
            -> JSIO Bool
  isTexture a b = tryJS "WebGLRenderingContextBase.isTexture"
                $ WebGLRenderingContextBase.prim__isTexture a (toFFI b)
  
  export
  lineWidth : (obj : WebGLRenderingContextBase) -> (width : Double) -> JSIO ()
  lineWidth a b = primJS $ WebGLRenderingContextBase.prim__lineWidth a b
  
  export
  linkProgram :  (obj : WebGLRenderingContextBase)
              -> (program : WebGLProgram)
              -> JSIO ()
  linkProgram a b = primJS $ WebGLRenderingContextBase.prim__linkProgram a b
  
  export
  pixelStorei :  (obj : WebGLRenderingContextBase)
              -> (pname : UInt32)
              -> (param : Int32)
              -> JSIO ()
  pixelStorei a b c = primJS $ WebGLRenderingContextBase.prim__pixelStorei a b c
  
  export
  polygonOffset :  (obj : WebGLRenderingContextBase)
                -> (factor : Double)
                -> (units : Double)
                -> JSIO ()
  polygonOffset a b c = primJS
                      $ WebGLRenderingContextBase.prim__polygonOffset a b c
  
  export
  renderbufferStorage :  (obj : WebGLRenderingContextBase)
                      -> (target : UInt32)
                      -> (internalformat : UInt32)
                      -> (width : Int32)
                      -> (height : Int32)
                      -> JSIO ()
  renderbufferStorage a b c d e = primJS
                                $ WebGLRenderingContextBase.prim__renderbufferStorage a
                                                                                      b
                                                                                      c
                                                                                      d
                                                                                      e
  
  export
  sampleCoverage :  (obj : WebGLRenderingContextBase)
                 -> (value : Double)
                 -> (invert : Bool)
                 -> JSIO ()
  sampleCoverage a b c = primJS
                       $ WebGLRenderingContextBase.prim__sampleCoverage a
                                                                        b
                                                                        (toFFI c)
  
  export
  scissor :  (obj : WebGLRenderingContextBase)
          -> (x : Int32)
          -> (y : Int32)
          -> (width : Int32)
          -> (height : Int32)
          -> JSIO ()
  scissor a b c d e = primJS $ WebGLRenderingContextBase.prim__scissor a b c d e
  
  export
  shaderSource :  (obj : WebGLRenderingContextBase)
               -> (shader : WebGLShader)
               -> (source : String)
               -> JSIO ()
  shaderSource a b c = primJS
                     $ WebGLRenderingContextBase.prim__shaderSource a b c
  
  export
  stencilFuncSeparate :  (obj : WebGLRenderingContextBase)
                      -> (face : UInt32)
                      -> (func : UInt32)
                      -> (ref : Int32)
                      -> (mask : UInt32)
                      -> JSIO ()
  stencilFuncSeparate a b c d e = primJS
                                $ WebGLRenderingContextBase.prim__stencilFuncSeparate a
                                                                                      b
                                                                                      c
                                                                                      d
                                                                                      e
  
  export
  stencilFunc :  (obj : WebGLRenderingContextBase)
              -> (func : UInt32)
              -> (ref : Int32)
              -> (mask : UInt32)
              -> JSIO ()
  stencilFunc a b c d = primJS
                      $ WebGLRenderingContextBase.prim__stencilFunc a b c d
  
  export
  stencilMaskSeparate :  (obj : WebGLRenderingContextBase)
                      -> (face : UInt32)
                      -> (mask : UInt32)
                      -> JSIO ()
  stencilMaskSeparate a b c = primJS
                            $ WebGLRenderingContextBase.prim__stencilMaskSeparate a
                                                                                  b
                                                                                  c
  
  export
  stencilMask : (obj : WebGLRenderingContextBase) -> (mask : UInt32) -> JSIO ()
  stencilMask a b = primJS $ WebGLRenderingContextBase.prim__stencilMask a b
  
  export
  stencilOpSeparate :  (obj : WebGLRenderingContextBase)
                    -> (face : UInt32)
                    -> (fail : UInt32)
                    -> (zfail : UInt32)
                    -> (zpass : UInt32)
                    -> JSIO ()
  stencilOpSeparate a b c d e = primJS
                              $ WebGLRenderingContextBase.prim__stencilOpSeparate a
                                                                                  b
                                                                                  c
                                                                                  d
                                                                                  e
  
  export
  stencilOp :  (obj : WebGLRenderingContextBase)
            -> (fail : UInt32)
            -> (zfail : UInt32)
            -> (zpass : UInt32)
            -> JSIO ()
  stencilOp a b c d = primJS $ WebGLRenderingContextBase.prim__stencilOp a b c d
  
  export
  texParameterf :  (obj : WebGLRenderingContextBase)
                -> (target : UInt32)
                -> (pname : UInt32)
                -> (param : Double)
                -> JSIO ()
  texParameterf a b c d = primJS
                        $ WebGLRenderingContextBase.prim__texParameterf a b c d
  
  export
  texParameteri :  (obj : WebGLRenderingContextBase)
                -> (target : UInt32)
                -> (pname : UInt32)
                -> (param : Int32)
                -> JSIO ()
  texParameteri a b c d = primJS
                        $ WebGLRenderingContextBase.prim__texParameteri a b c d
  
  export
  uniform1f :  (obj : WebGLRenderingContextBase)
            -> (location : Maybe WebGLUniformLocation)
            -> (x : Double)
            -> JSIO ()
  uniform1f a b c = primJS
                  $ WebGLRenderingContextBase.prim__uniform1f a (toFFI b) c
  
  export
  uniform1i :  (obj : WebGLRenderingContextBase)
            -> (location : Maybe WebGLUniformLocation)
            -> (x : Int32)
            -> JSIO ()
  uniform1i a b c = primJS
                  $ WebGLRenderingContextBase.prim__uniform1i a (toFFI b) c
  
  export
  uniform2f :  (obj : WebGLRenderingContextBase)
            -> (location : Maybe WebGLUniformLocation)
            -> (x : Double)
            -> (y : Double)
            -> JSIO ()
  uniform2f a b c d = primJS
                    $ WebGLRenderingContextBase.prim__uniform2f a (toFFI b) c d
  
  export
  uniform2i :  (obj : WebGLRenderingContextBase)
            -> (location : Maybe WebGLUniformLocation)
            -> (x : Int32)
            -> (y : Int32)
            -> JSIO ()
  uniform2i a b c d = primJS
                    $ WebGLRenderingContextBase.prim__uniform2i a (toFFI b) c d
  
  export
  uniform3f :  (obj : WebGLRenderingContextBase)
            -> (location : Maybe WebGLUniformLocation)
            -> (x : Double)
            -> (y : Double)
            -> (z : Double)
            -> JSIO ()
  uniform3f a b c d e = primJS
                      $ WebGLRenderingContextBase.prim__uniform3f a
                                                                  (toFFI b)
                                                                  c
                                                                  d
                                                                  e
  
  export
  uniform3i :  (obj : WebGLRenderingContextBase)
            -> (location : Maybe WebGLUniformLocation)
            -> (x : Int32)
            -> (y : Int32)
            -> (z : Int32)
            -> JSIO ()
  uniform3i a b c d e = primJS
                      $ WebGLRenderingContextBase.prim__uniform3i a
                                                                  (toFFI b)
                                                                  c
                                                                  d
                                                                  e
  
  export
  uniform4f :  (obj : WebGLRenderingContextBase)
            -> (location : Maybe WebGLUniformLocation)
            -> (x : Double)
            -> (y : Double)
            -> (z : Double)
            -> (w : Double)
            -> JSIO ()
  uniform4f a b c d e f = primJS
                        $ WebGLRenderingContextBase.prim__uniform4f a
                                                                    (toFFI b)
                                                                    c
                                                                    d
                                                                    e
                                                                    f
  
  export
  uniform4i :  (obj : WebGLRenderingContextBase)
            -> (location : Maybe WebGLUniformLocation)
            -> (x : Int32)
            -> (y : Int32)
            -> (z : Int32)
            -> (w : Int32)
            -> JSIO ()
  uniform4i a b c d e f = primJS
                        $ WebGLRenderingContextBase.prim__uniform4i a
                                                                    (toFFI b)
                                                                    c
                                                                    d
                                                                    e
                                                                    f
  
  export
  useProgram :  (obj : WebGLRenderingContextBase)
             -> (program : Maybe WebGLProgram)
             -> JSIO ()
  useProgram a b = primJS
                 $ WebGLRenderingContextBase.prim__useProgram a (toFFI b)
  
  export
  validateProgram :  (obj : WebGLRenderingContextBase)
                  -> (program : WebGLProgram)
                  -> JSIO ()
  validateProgram a b = primJS
                      $ WebGLRenderingContextBase.prim__validateProgram a b
  
  export
  vertexAttrib1f :  (obj : WebGLRenderingContextBase)
                 -> (index : UInt32)
                 -> (x : Double)
                 -> JSIO ()
  vertexAttrib1f a b c = primJS
                       $ WebGLRenderingContextBase.prim__vertexAttrib1f a b c
  
  export
  vertexAttrib1fv :  (obj : WebGLRenderingContextBase)
                  -> (index : UInt32)
                  -> (values : NS I [ Float32Array , Array Double ])
                  -> JSIO ()
  vertexAttrib1fv a b c = primJS
                        $ WebGLRenderingContextBase.prim__vertexAttrib1fv a
                                                                          b
                                                                          (toFFI c)
  
  export
  vertexAttrib2f :  (obj : WebGLRenderingContextBase)
                 -> (index : UInt32)
                 -> (x : Double)
                 -> (y : Double)
                 -> JSIO ()
  vertexAttrib2f a b c d = primJS
                         $ WebGLRenderingContextBase.prim__vertexAttrib2f a
                                                                          b
                                                                          c
                                                                          d
  
  export
  vertexAttrib2fv :  (obj : WebGLRenderingContextBase)
                  -> (index : UInt32)
                  -> (values : NS I [ Float32Array , Array Double ])
                  -> JSIO ()
  vertexAttrib2fv a b c = primJS
                        $ WebGLRenderingContextBase.prim__vertexAttrib2fv a
                                                                          b
                                                                          (toFFI c)
  
  export
  vertexAttrib3f :  (obj : WebGLRenderingContextBase)
                 -> (index : UInt32)
                 -> (x : Double)
                 -> (y : Double)
                 -> (z : Double)
                 -> JSIO ()
  vertexAttrib3f a b c d e = primJS
                           $ WebGLRenderingContextBase.prim__vertexAttrib3f a
                                                                            b
                                                                            c
                                                                            d
                                                                            e
  
  export
  vertexAttrib3fv :  (obj : WebGLRenderingContextBase)
                  -> (index : UInt32)
                  -> (values : NS I [ Float32Array , Array Double ])
                  -> JSIO ()
  vertexAttrib3fv a b c = primJS
                        $ WebGLRenderingContextBase.prim__vertexAttrib3fv a
                                                                          b
                                                                          (toFFI c)
  
  export
  vertexAttrib4f :  (obj : WebGLRenderingContextBase)
                 -> (index : UInt32)
                 -> (x : Double)
                 -> (y : Double)
                 -> (z : Double)
                 -> (w : Double)
                 -> JSIO ()
  vertexAttrib4f a b c d e f = primJS
                             $ WebGLRenderingContextBase.prim__vertexAttrib4f a
                                                                              b
                                                                              c
                                                                              d
                                                                              e
                                                                              f
  
  export
  vertexAttrib4fv :  (obj : WebGLRenderingContextBase)
                  -> (index : UInt32)
                  -> (values : NS I [ Float32Array , Array Double ])
                  -> JSIO ()
  vertexAttrib4fv a b c = primJS
                        $ WebGLRenderingContextBase.prim__vertexAttrib4fv a
                                                                          b
                                                                          (toFFI c)
  
  export
  vertexAttribPointer :  (obj : WebGLRenderingContextBase)
                      -> (index : UInt32)
                      -> (size : Int32)
                      -> (type : UInt32)
                      -> (normalized : Bool)
                      -> (stride : Int32)
                      -> (offset : Int64)
                      -> JSIO ()
  vertexAttribPointer a b c d e f g = primJS
                                    $ WebGLRenderingContextBase.prim__vertexAttribPointer a
                                                                                          b
                                                                                          c
                                                                                          d
                                                                                          (toFFI e)
                                                                                          f
                                                                                          g
  
  export
  viewport :  (obj : WebGLRenderingContextBase)
           -> (x : Int32)
           -> (y : Int32)
           -> (width : Int32)
           -> (height : Int32)
           -> JSIO ()
  viewport a b c d e = primJS
                     $ WebGLRenderingContextBase.prim__viewport a b c d e

namespace WebGLRenderingContextOverloads
  
  export
  bufferData :  (obj : WebGLRenderingContextOverloads)
             -> (target : UInt32)
             -> (size : Int64)
             -> (usage : UInt32)
             -> JSIO ()
  bufferData a b c d = primJS
                     $ WebGLRenderingContextOverloads.prim__bufferData a b c d
  
  export
  bufferData1 :  (obj : WebGLRenderingContextOverloads)
              -> (target : UInt32)
              -> (data_ : Maybe (NS I [ Int8Array
                                      , Int16Array
                                      , Int32Array
                                      , UInt8Array
                                      , UInt8Array
                                      , UInt8Array
                                      , UInt8ClampedArray
                                      , Float32Array
                                      , Float64Array
                                      , DataView
                                      , ArrayBuffer
                                      ]))
              -> (usage : UInt32)
              -> JSIO ()
  bufferData1 a b c d = primJS
                      $ WebGLRenderingContextOverloads.prim__bufferData1 a
                                                                         b
                                                                         (toFFI c)
                                                                         d
  
  export
  bufferSubData :  (obj : WebGLRenderingContextOverloads)
                -> (target : UInt32)
                -> (offset : Int64)
                -> (data_ : NS I [ Int8Array
                                 , Int16Array
                                 , Int32Array
                                 , UInt8Array
                                 , UInt8Array
                                 , UInt8Array
                                 , UInt8ClampedArray
                                 , Float32Array
                                 , Float64Array
                                 , DataView
                                 , ArrayBuffer
                                 ])
                -> JSIO ()
  bufferSubData a b c d = primJS
                        $ WebGLRenderingContextOverloads.prim__bufferSubData a
                                                                             b
                                                                             c
                                                                             (toFFI d)
  
  export
  compressedTexImage2D :  (obj : WebGLRenderingContextOverloads)
                       -> (target : UInt32)
                       -> (level : Int32)
                       -> (internalformat : UInt32)
                       -> (width : Int32)
                       -> (height : Int32)
                       -> (border : Int32)
                       -> (data_ : NS I [ Int8Array
                                        , Int16Array
                                        , Int32Array
                                        , UInt8Array
                                        , UInt8Array
                                        , UInt8Array
                                        , UInt8ClampedArray
                                        , Float32Array
                                        , Float64Array
                                        , DataView
                                        ])
                       -> JSIO ()
  compressedTexImage2D a b c d e f g h = primJS
                                       $ WebGLRenderingContextOverloads.prim__compressedTexImage2D a
                                                                                                   b
                                                                                                   c
                                                                                                   d
                                                                                                   e
                                                                                                   f
                                                                                                   g
                                                                                                   (toFFI h)
  
  export
  compressedTexSubImage2D :  (obj : WebGLRenderingContextOverloads)
                          -> (target : UInt32)
                          -> (level : Int32)
                          -> (xoffset : Int32)
                          -> (yoffset : Int32)
                          -> (width : Int32)
                          -> (height : Int32)
                          -> (format : UInt32)
                          -> (data_ : NS I [ Int8Array
                                           , Int16Array
                                           , Int32Array
                                           , UInt8Array
                                           , UInt8Array
                                           , UInt8Array
                                           , UInt8ClampedArray
                                           , Float32Array
                                           , Float64Array
                                           , DataView
                                           ])
                          -> JSIO ()
  compressedTexSubImage2D a b c d e f g h i = primJS
                                            $ WebGLRenderingContextOverloads.prim__compressedTexSubImage2D a
                                                                                                           b
                                                                                                           c
                                                                                                           d
                                                                                                           e
                                                                                                           f
                                                                                                           g
                                                                                                           h
                                                                                                           (toFFI i)
  
  export
  readPixels :  (obj : WebGLRenderingContextOverloads)
             -> (x : Int32)
             -> (y : Int32)
             -> (width : Int32)
             -> (height : Int32)
             -> (format : UInt32)
             -> (type : UInt32)
             -> (pixels : Maybe (NS I [ Int8Array
                                      , Int16Array
                                      , Int32Array
                                      , UInt8Array
                                      , UInt8Array
                                      , UInt8Array
                                      , UInt8ClampedArray
                                      , Float32Array
                                      , Float64Array
                                      , DataView
                                      ]))
             -> JSIO ()
  readPixels a b c d e f g h = primJS
                             $ WebGLRenderingContextOverloads.prim__readPixels a
                                                                               b
                                                                               c
                                                                               d
                                                                               e
                                                                               f
                                                                               g
                                                                               (toFFI h)
  
  export
  texImage2D :  (obj : WebGLRenderingContextOverloads)
             -> (target : UInt32)
             -> (level : Int32)
             -> (internalformat : Int32)
             -> (width : Int32)
             -> (height : Int32)
             -> (border : Int32)
             -> (format : UInt32)
             -> (type : UInt32)
             -> (pixels : Maybe (NS I [ Int8Array
                                      , Int16Array
                                      , Int32Array
                                      , UInt8Array
                                      , UInt8Array
                                      , UInt8Array
                                      , UInt8ClampedArray
                                      , Float32Array
                                      , Float64Array
                                      , DataView
                                      ]))
             -> JSIO ()
  texImage2D a b c d e f g h i j = primJS
                                 $ WebGLRenderingContextOverloads.prim__texImage2D a
                                                                                   b
                                                                                   c
                                                                                   d
                                                                                   e
                                                                                   f
                                                                                   g
                                                                                   h
                                                                                   i
                                                                                   (toFFI j)
  
  export
  texImage2D1 :  (obj : WebGLRenderingContextOverloads)
              -> (target : UInt32)
              -> (level : Int32)
              -> (internalformat : Int32)
              -> (format : UInt32)
              -> (type : UInt32)
              -> (source : NS I [ ImageBitmap
                                , ImageData
                                , HTMLImageElement
                                , HTMLCanvasElement
                                , HTMLVideoElement
                                , OffscreenCanvas
                                ])
              -> JSIO ()
  texImage2D1 a b c d e f g = primJS
                            $ WebGLRenderingContextOverloads.prim__texImage2D1 a
                                                                               b
                                                                               c
                                                                               d
                                                                               e
                                                                               f
                                                                               (toFFI g)
  
  export
  texSubImage2D :  (obj : WebGLRenderingContextOverloads)
                -> (target : UInt32)
                -> (level : Int32)
                -> (xoffset : Int32)
                -> (yoffset : Int32)
                -> (width : Int32)
                -> (height : Int32)
                -> (format : UInt32)
                -> (type : UInt32)
                -> (pixels : Maybe (NS I [ Int8Array
                                         , Int16Array
                                         , Int32Array
                                         , UInt8Array
                                         , UInt8Array
                                         , UInt8Array
                                         , UInt8ClampedArray
                                         , Float32Array
                                         , Float64Array
                                         , DataView
                                         ]))
                -> JSIO ()
  texSubImage2D a b c d e f g h i j = primJS
                                    $ WebGLRenderingContextOverloads.prim__texSubImage2D a
                                                                                         b
                                                                                         c
                                                                                         d
                                                                                         e
                                                                                         f
                                                                                         g
                                                                                         h
                                                                                         i
                                                                                         (toFFI j)
  
  export
  texSubImage2D1 :  (obj : WebGLRenderingContextOverloads)
                 -> (target : UInt32)
                 -> (level : Int32)
                 -> (xoffset : Int32)
                 -> (yoffset : Int32)
                 -> (format : UInt32)
                 -> (type : UInt32)
                 -> (source : NS I [ ImageBitmap
                                   , ImageData
                                   , HTMLImageElement
                                   , HTMLCanvasElement
                                   , HTMLVideoElement
                                   , OffscreenCanvas
                                   ])
                 -> JSIO ()
  texSubImage2D1 a b c d e f g h = primJS
                                 $ WebGLRenderingContextOverloads.prim__texSubImage2D1 a
                                                                                       b
                                                                                       c
                                                                                       d
                                                                                       e
                                                                                       f
                                                                                       g
                                                                                       (toFFI h)
  
  export
  uniform1fv :  (obj : WebGLRenderingContextOverloads)
             -> (location : Maybe WebGLUniformLocation)
             -> (v : NS I [ Float32Array , Array Double ])
             -> JSIO ()
  uniform1fv a b c = primJS
                   $ WebGLRenderingContextOverloads.prim__uniform1fv a
                                                                     (toFFI b)
                                                                     (toFFI c)
  
  export
  uniform1iv :  (obj : WebGLRenderingContextOverloads)
             -> (location : Maybe WebGLUniformLocation)
             -> (v : NS I [ Int32Array , Array Int32 ])
             -> JSIO ()
  uniform1iv a b c = primJS
                   $ WebGLRenderingContextOverloads.prim__uniform1iv a
                                                                     (toFFI b)
                                                                     (toFFI c)
  
  export
  uniform2fv :  (obj : WebGLRenderingContextOverloads)
             -> (location : Maybe WebGLUniformLocation)
             -> (v : NS I [ Float32Array , Array Double ])
             -> JSIO ()
  uniform2fv a b c = primJS
                   $ WebGLRenderingContextOverloads.prim__uniform2fv a
                                                                     (toFFI b)
                                                                     (toFFI c)
  
  export
  uniform2iv :  (obj : WebGLRenderingContextOverloads)
             -> (location : Maybe WebGLUniformLocation)
             -> (v : NS I [ Int32Array , Array Int32 ])
             -> JSIO ()
  uniform2iv a b c = primJS
                   $ WebGLRenderingContextOverloads.prim__uniform2iv a
                                                                     (toFFI b)
                                                                     (toFFI c)
  
  export
  uniform3fv :  (obj : WebGLRenderingContextOverloads)
             -> (location : Maybe WebGLUniformLocation)
             -> (v : NS I [ Float32Array , Array Double ])
             -> JSIO ()
  uniform3fv a b c = primJS
                   $ WebGLRenderingContextOverloads.prim__uniform3fv a
                                                                     (toFFI b)
                                                                     (toFFI c)
  
  export
  uniform3iv :  (obj : WebGLRenderingContextOverloads)
             -> (location : Maybe WebGLUniformLocation)
             -> (v : NS I [ Int32Array , Array Int32 ])
             -> JSIO ()
  uniform3iv a b c = primJS
                   $ WebGLRenderingContextOverloads.prim__uniform3iv a
                                                                     (toFFI b)
                                                                     (toFFI c)
  
  export
  uniform4fv :  (obj : WebGLRenderingContextOverloads)
             -> (location : Maybe WebGLUniformLocation)
             -> (v : NS I [ Float32Array , Array Double ])
             -> JSIO ()
  uniform4fv a b c = primJS
                   $ WebGLRenderingContextOverloads.prim__uniform4fv a
                                                                     (toFFI b)
                                                                     (toFFI c)
  
  export
  uniform4iv :  (obj : WebGLRenderingContextOverloads)
             -> (location : Maybe WebGLUniformLocation)
             -> (v : NS I [ Int32Array , Array Int32 ])
             -> JSIO ()
  uniform4iv a b c = primJS
                   $ WebGLRenderingContextOverloads.prim__uniform4iv a
                                                                     (toFFI b)
                                                                     (toFFI c)
  
  export
  uniformMatrix2fv :  (obj : WebGLRenderingContextOverloads)
                   -> (location : Maybe WebGLUniformLocation)
                   -> (transpose : Bool)
                   -> (value : NS I [ Float32Array , Array Double ])
                   -> JSIO ()
  uniformMatrix2fv a b c d = primJS
                           $ WebGLRenderingContextOverloads.prim__uniformMatrix2fv a
                                                                                   (toFFI b)
                                                                                   (toFFI c)
                                                                                   (toFFI d)
  
  export
  uniformMatrix3fv :  (obj : WebGLRenderingContextOverloads)
                   -> (location : Maybe WebGLUniformLocation)
                   -> (transpose : Bool)
                   -> (value : NS I [ Float32Array , Array Double ])
                   -> JSIO ()
  uniformMatrix3fv a b c d = primJS
                           $ WebGLRenderingContextOverloads.prim__uniformMatrix3fv a
                                                                                   (toFFI b)
                                                                                   (toFFI c)
                                                                                   (toFFI d)
  
  export
  uniformMatrix4fv :  (obj : WebGLRenderingContextOverloads)
                   -> (location : Maybe WebGLUniformLocation)
                   -> (transpose : Bool)
                   -> (value : NS I [ Float32Array , Array Double ])
                   -> JSIO ()
  uniformMatrix4fv a b c d = primJS
                           $ WebGLRenderingContextOverloads.prim__uniformMatrix4fv a
                                                                                   (toFFI b)
                                                                                   (toFFI c)
                                                                                   (toFFI d)

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace WebGLContextAttributes
  
  public export
  JSType WebGLContextAttributes where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (alpha : Optional Bool)
      -> (depth : Optional Bool)
      -> (stencil : Optional Bool)
      -> (antialias : Optional Bool)
      -> (premultipliedAlpha : Optional Bool)
      -> (preserveDrawingBuffer : Optional Bool)
      -> (powerPreference : Optional WebGLPowerPreference)
      -> (failIfMajorPerformanceCaveat : Optional Bool)
      -> (desynchronized : Optional Bool)
      -> JSIO WebGLContextAttributes
  new a b c d e f g h i = primJS
                        $ WebGLContextAttributes.prim__new (toFFI a)
                                                           (toFFI b)
                                                           (toFFI c)
                                                           (toFFI d)
                                                           (toFFI e)
                                                           (toFFI f)
                                                           (toFFI g)
                                                           (toFFI h)
                                                           (toFFI i)

  export
  new' : JSIO WebGLContextAttributes
  new' = primJS
       $ WebGLContextAttributes.prim__new undef
                                          undef
                                          undef
                                          undef
                                          undef
                                          undef
                                          undef
                                          undef
                                          undef
  
  export
  alpha : WebGLContextAttributes -> Attribute True Optional Bool
  alpha = fromUndefOrPrim "WebGLContextAttributes.getalpha"
                          prim__alpha
                          prim__setAlpha
                          True
  
  export
  antialias : WebGLContextAttributes -> Attribute True Optional Bool
  antialias = fromUndefOrPrim "WebGLContextAttributes.getantialias"
                              prim__antialias
                              prim__setAntialias
                              True
  
  export
  depth : WebGLContextAttributes -> Attribute True Optional Bool
  depth = fromUndefOrPrim "WebGLContextAttributes.getdepth"
                          prim__depth
                          prim__setDepth
                          True
  
  export
  desynchronized : WebGLContextAttributes -> Attribute True Optional Bool
  desynchronized = fromUndefOrPrim "WebGLContextAttributes.getdesynchronized"
                                   prim__desynchronized
                                   prim__setDesynchronized
                                   False
  
  export
  failIfMajorPerformanceCaveat : WebGLContextAttributes -> Attribute True Optional Bool
  failIfMajorPerformanceCaveat = fromUndefOrPrim "WebGLContextAttributes.getfailIfMajorPerformanceCaveat"
                                                 prim__failIfMajorPerformanceCaveat
                                                 prim__setFailIfMajorPerformanceCaveat
                                                 False
  
  export
  powerPreference : WebGLContextAttributes -> Attribute False Optional WebGLPowerPreference
  powerPreference = fromUndefOrPrimNoDefault "WebGLContextAttributes.getpowerPreference"
                                             prim__powerPreference
                                             prim__setPowerPreference
  
  export
  premultipliedAlpha : WebGLContextAttributes -> Attribute True Optional Bool
  premultipliedAlpha = fromUndefOrPrim "WebGLContextAttributes.getpremultipliedAlpha"
                                       prim__premultipliedAlpha
                                       prim__setPremultipliedAlpha
                                       True
  
  export
  preserveDrawingBuffer : WebGLContextAttributes -> Attribute True Optional Bool
  preserveDrawingBuffer = fromUndefOrPrim "WebGLContextAttributes.getpreserveDrawingBuffer"
                                          prim__preserveDrawingBuffer
                                          prim__setPreserveDrawingBuffer
                                          False
  
  export
  stencil : WebGLContextAttributes -> Attribute True Optional Bool
  stencil = fromUndefOrPrim "WebGLContextAttributes.getstencil"
                            prim__stencil
                            prim__setStencil
                            False
