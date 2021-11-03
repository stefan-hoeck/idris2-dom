module Web.Raw.Webgl

import JS
import Web.Internal.WebglPrim
import Web.Internal.Types

%default total


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------


namespace WebGLActiveInfo
  
  export
  name : (obj : WebGLActiveInfo) -> JSIO String
  name a = primJS $ WebGLActiveInfo.prim__name a
  
  export
  size : (obj : WebGLActiveInfo) -> JSIO Int32
  size a = primJS $ WebGLActiveInfo.prim__size a
  
  export
  type : (obj : WebGLActiveInfo) -> JSIO Bits32
  type a = primJS $ WebGLActiveInfo.prim__type a











namespace WebGLShaderPrecisionFormat
  
  export
  precision : (obj : WebGLShaderPrecisionFormat) -> JSIO Int32
  precision a = primJS $ WebGLShaderPrecisionFormat.prim__precision a
  
  export
  rangeMax : (obj : WebGLShaderPrecisionFormat) -> JSIO Int32
  rangeMax a = primJS $ WebGLShaderPrecisionFormat.prim__rangeMax a
  
  export
  rangeMin : (obj : WebGLShaderPrecisionFormat) -> JSIO Int32
  rangeMin a = primJS $ WebGLShaderPrecisionFormat.prim__rangeMin a








--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace WebGL2RenderingContextBase
  
  public export
  ACTIVE_UNIFORM_BLOCKS : Bits32
  ACTIVE_UNIFORM_BLOCKS = 0x8A36
  
  public export
  ALREADY_SIGNALED : Bits32
  ALREADY_SIGNALED = 0x911A
  
  public export
  ANY_SAMPLES_PASSED : Bits32
  ANY_SAMPLES_PASSED = 0x8C2F
  
  public export
  ANY_SAMPLES_PASSED_CONSERVATIVE : Bits32
  ANY_SAMPLES_PASSED_CONSERVATIVE = 0x8D6A
  
  public export
  COLOR : Bits32
  COLOR = 0x1800
  
  public export
  COLOR_ATTACHMENT1 : Bits32
  COLOR_ATTACHMENT1 = 0x8CE1
  
  public export
  COLOR_ATTACHMENT10 : Bits32
  COLOR_ATTACHMENT10 = 0x8CEA
  
  public export
  COLOR_ATTACHMENT11 : Bits32
  COLOR_ATTACHMENT11 = 0x8CEB
  
  public export
  COLOR_ATTACHMENT12 : Bits32
  COLOR_ATTACHMENT12 = 0x8CEC
  
  public export
  COLOR_ATTACHMENT13 : Bits32
  COLOR_ATTACHMENT13 = 0x8CED
  
  public export
  COLOR_ATTACHMENT14 : Bits32
  COLOR_ATTACHMENT14 = 0x8CEE
  
  public export
  COLOR_ATTACHMENT15 : Bits32
  COLOR_ATTACHMENT15 = 0x8CEF
  
  public export
  COLOR_ATTACHMENT2 : Bits32
  COLOR_ATTACHMENT2 = 0x8CE2
  
  public export
  COLOR_ATTACHMENT3 : Bits32
  COLOR_ATTACHMENT3 = 0x8CE3
  
  public export
  COLOR_ATTACHMENT4 : Bits32
  COLOR_ATTACHMENT4 = 0x8CE4
  
  public export
  COLOR_ATTACHMENT5 : Bits32
  COLOR_ATTACHMENT5 = 0x8CE5
  
  public export
  COLOR_ATTACHMENT6 : Bits32
  COLOR_ATTACHMENT6 = 0x8CE6
  
  public export
  COLOR_ATTACHMENT7 : Bits32
  COLOR_ATTACHMENT7 = 0x8CE7
  
  public export
  COLOR_ATTACHMENT8 : Bits32
  COLOR_ATTACHMENT8 = 0x8CE8
  
  public export
  COLOR_ATTACHMENT9 : Bits32
  COLOR_ATTACHMENT9 = 0x8CE9
  
  public export
  COMPARE_REF_TO_TEXTURE : Bits32
  COMPARE_REF_TO_TEXTURE = 0x884E
  
  public export
  CONDITION_SATISFIED : Bits32
  CONDITION_SATISFIED = 0x911C
  
  public export
  COPY_READ_BUFFER : Bits32
  COPY_READ_BUFFER = 0x8F36
  
  public export
  COPY_READ_BUFFER_BINDING : Bits32
  COPY_READ_BUFFER_BINDING = 0x8F36
  
  public export
  COPY_WRITE_BUFFER : Bits32
  COPY_WRITE_BUFFER = 0x8F37
  
  public export
  COPY_WRITE_BUFFER_BINDING : Bits32
  COPY_WRITE_BUFFER_BINDING = 0x8F37
  
  public export
  CURRENT_QUERY : Bits32
  CURRENT_QUERY = 0x8865
  
  public export
  DEPTH : Bits32
  DEPTH = 0x1801
  
  public export
  DEPTH24_STENCIL8 : Bits32
  DEPTH24_STENCIL8 = 0x88F0
  
  public export
  DEPTH32F_STENCIL8 : Bits32
  DEPTH32F_STENCIL8 = 0x8CAD
  
  public export
  DEPTH_COMPONENT24 : Bits32
  DEPTH_COMPONENT24 = 0x81A6
  
  public export
  DEPTH_COMPONENT32F : Bits32
  DEPTH_COMPONENT32F = 0x8CAC
  
  public export
  DRAW_BUFFER0 : Bits32
  DRAW_BUFFER0 = 0x8825
  
  public export
  DRAW_BUFFER1 : Bits32
  DRAW_BUFFER1 = 0x8826
  
  public export
  DRAW_BUFFER10 : Bits32
  DRAW_BUFFER10 = 0x882F
  
  public export
  DRAW_BUFFER11 : Bits32
  DRAW_BUFFER11 = 0x8830
  
  public export
  DRAW_BUFFER12 : Bits32
  DRAW_BUFFER12 = 0x8831
  
  public export
  DRAW_BUFFER13 : Bits32
  DRAW_BUFFER13 = 0x8832
  
  public export
  DRAW_BUFFER14 : Bits32
  DRAW_BUFFER14 = 0x8833
  
  public export
  DRAW_BUFFER15 : Bits32
  DRAW_BUFFER15 = 0x8834
  
  public export
  DRAW_BUFFER2 : Bits32
  DRAW_BUFFER2 = 0x8827
  
  public export
  DRAW_BUFFER3 : Bits32
  DRAW_BUFFER3 = 0x8828
  
  public export
  DRAW_BUFFER4 : Bits32
  DRAW_BUFFER4 = 0x8829
  
  public export
  DRAW_BUFFER5 : Bits32
  DRAW_BUFFER5 = 0x882A
  
  public export
  DRAW_BUFFER6 : Bits32
  DRAW_BUFFER6 = 0x882B
  
  public export
  DRAW_BUFFER7 : Bits32
  DRAW_BUFFER7 = 0x882C
  
  public export
  DRAW_BUFFER8 : Bits32
  DRAW_BUFFER8 = 0x882D
  
  public export
  DRAW_BUFFER9 : Bits32
  DRAW_BUFFER9 = 0x882E
  
  public export
  DRAW_FRAMEBUFFER : Bits32
  DRAW_FRAMEBUFFER = 0x8CA9
  
  public export
  DRAW_FRAMEBUFFER_BINDING : Bits32
  DRAW_FRAMEBUFFER_BINDING = 0x8CA6
  
  public export
  DYNAMIC_COPY : Bits32
  DYNAMIC_COPY = 0x88EA
  
  public export
  DYNAMIC_READ : Bits32
  DYNAMIC_READ = 0x88E9
  
  public export
  FLOAT_32_UNSIGNED_INT_24_8_REV : Bits32
  FLOAT_32_UNSIGNED_INT_24_8_REV = 0x8DAD
  
  public export
  FLOAT_MAT2x3 : Bits32
  FLOAT_MAT2x3 = 0x8B65
  
  public export
  FLOAT_MAT2x4 : Bits32
  FLOAT_MAT2x4 = 0x8B66
  
  public export
  FLOAT_MAT3x2 : Bits32
  FLOAT_MAT3x2 = 0x8B67
  
  public export
  FLOAT_MAT3x4 : Bits32
  FLOAT_MAT3x4 = 0x8B68
  
  public export
  FLOAT_MAT4x2 : Bits32
  FLOAT_MAT4x2 = 0x8B69
  
  public export
  FLOAT_MAT4x3 : Bits32
  FLOAT_MAT4x3 = 0x8B6A
  
  public export
  FRAGMENT_SHADER_DERIVATIVE_HINT : Bits32
  FRAGMENT_SHADER_DERIVATIVE_HINT = 0x8B8B
  
  public export
  FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE : Bits32
  FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE = 0x8215
  
  public export
  FRAMEBUFFER_ATTACHMENT_BLUE_SIZE : Bits32
  FRAMEBUFFER_ATTACHMENT_BLUE_SIZE = 0x8214
  
  public export
  FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING : Bits32
  FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING = 0x8210
  
  public export
  FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE : Bits32
  FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE = 0x8211
  
  public export
  FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE : Bits32
  FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE = 0x8216
  
  public export
  FRAMEBUFFER_ATTACHMENT_GREEN_SIZE : Bits32
  FRAMEBUFFER_ATTACHMENT_GREEN_SIZE = 0x8213
  
  public export
  FRAMEBUFFER_ATTACHMENT_RED_SIZE : Bits32
  FRAMEBUFFER_ATTACHMENT_RED_SIZE = 0x8212
  
  public export
  FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE : Bits32
  FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE = 0x8217
  
  public export
  FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER : Bits32
  FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER = 0x8CD4
  
  public export
  FRAMEBUFFER_DEFAULT : Bits32
  FRAMEBUFFER_DEFAULT = 0x8218
  
  public export
  FRAMEBUFFER_INCOMPLETE_MULTISAMPLE : Bits32
  FRAMEBUFFER_INCOMPLETE_MULTISAMPLE = 0x8D56
  
  public export
  HALF_FLOAT : Bits32
  HALF_FLOAT = 0x140B
  
  public export
  INTERLEAVED_ATTRIBS : Bits32
  INTERLEAVED_ATTRIBS = 0x8C8C
  
  public export
  INT_2_10_10_10_REV : Bits32
  INT_2_10_10_10_REV = 0x8D9F
  
  public export
  INT_SAMPLER_2D : Bits32
  INT_SAMPLER_2D = 0x8DCA
  
  public export
  INT_SAMPLER_2D_ARRAY : Bits32
  INT_SAMPLER_2D_ARRAY = 0x8DCF
  
  public export
  INT_SAMPLER_3D : Bits32
  INT_SAMPLER_3D = 0x8DCB
  
  public export
  INT_SAMPLER_CUBE : Bits32
  INT_SAMPLER_CUBE = 0x8DCC
  
  public export
  INVALID_INDEX : Bits32
  INVALID_INDEX = 0xFFFFFFFF
  
  public export
  MAX : Bits32
  MAX = 0x8008
  
  public export
  MAX_3D_TEXTURE_SIZE : Bits32
  MAX_3D_TEXTURE_SIZE = 0x8073
  
  public export
  MAX_ARRAY_TEXTURE_LAYERS : Bits32
  MAX_ARRAY_TEXTURE_LAYERS = 0x88FF
  
  public export
  MAX_CLIENT_WAIT_TIMEOUT_WEBGL : Bits32
  MAX_CLIENT_WAIT_TIMEOUT_WEBGL = 0x9247
  
  public export
  MAX_COLOR_ATTACHMENTS : Bits32
  MAX_COLOR_ATTACHMENTS = 0x8CDF
  
  public export
  MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS : Bits32
  MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS = 0x8A33
  
  public export
  MAX_COMBINED_UNIFORM_BLOCKS : Bits32
  MAX_COMBINED_UNIFORM_BLOCKS = 0x8A2E
  
  public export
  MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS : Bits32
  MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS = 0x8A31
  
  public export
  MAX_DRAW_BUFFERS : Bits32
  MAX_DRAW_BUFFERS = 0x8824
  
  public export
  MAX_ELEMENTS_INDICES : Bits32
  MAX_ELEMENTS_INDICES = 0x80E9
  
  public export
  MAX_ELEMENTS_VERTICES : Bits32
  MAX_ELEMENTS_VERTICES = 0x80E8
  
  public export
  MAX_ELEMENT_INDEX : Bits32
  MAX_ELEMENT_INDEX = 0x8D6B
  
  public export
  MAX_FRAGMENT_INPUT_COMPONENTS : Bits32
  MAX_FRAGMENT_INPUT_COMPONENTS = 0x9125
  
  public export
  MAX_FRAGMENT_UNIFORM_BLOCKS : Bits32
  MAX_FRAGMENT_UNIFORM_BLOCKS = 0x8A2D
  
  public export
  MAX_FRAGMENT_UNIFORM_COMPONENTS : Bits32
  MAX_FRAGMENT_UNIFORM_COMPONENTS = 0x8B49
  
  public export
  MAX_PROGRAM_TEXEL_OFFSET : Bits32
  MAX_PROGRAM_TEXEL_OFFSET = 0x8905
  
  public export
  MAX_SAMPLES : Bits32
  MAX_SAMPLES = 0x8D57
  
  public export
  MAX_SERVER_WAIT_TIMEOUT : Bits32
  MAX_SERVER_WAIT_TIMEOUT = 0x9111
  
  public export
  MAX_TEXTURE_LOD_BIAS : Bits32
  MAX_TEXTURE_LOD_BIAS = 0x84FD
  
  public export
  MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS : Bits32
  MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS = 0x8C8A
  
  public export
  MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS : Bits32
  MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS = 0x8C8B
  
  public export
  MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS : Bits32
  MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS = 0x8C80
  
  public export
  MAX_UNIFORM_BLOCK_SIZE : Bits32
  MAX_UNIFORM_BLOCK_SIZE = 0x8A30
  
  public export
  MAX_UNIFORM_BUFFER_BINDINGS : Bits32
  MAX_UNIFORM_BUFFER_BINDINGS = 0x8A2F
  
  public export
  MAX_VARYING_COMPONENTS : Bits32
  MAX_VARYING_COMPONENTS = 0x8B4B
  
  public export
  MAX_VERTEX_OUTPUT_COMPONENTS : Bits32
  MAX_VERTEX_OUTPUT_COMPONENTS = 0x9122
  
  public export
  MAX_VERTEX_UNIFORM_BLOCKS : Bits32
  MAX_VERTEX_UNIFORM_BLOCKS = 0x8A2B
  
  public export
  MAX_VERTEX_UNIFORM_COMPONENTS : Bits32
  MAX_VERTEX_UNIFORM_COMPONENTS = 0x8B4A
  
  public export
  MIN : Bits32
  MIN = 0x8007
  
  public export
  MIN_PROGRAM_TEXEL_OFFSET : Bits32
  MIN_PROGRAM_TEXEL_OFFSET = 0x8904
  
  public export
  OBJECT_TYPE : Bits32
  OBJECT_TYPE = 0x9112
  
  public export
  PACK_ROW_LENGTH : Bits32
  PACK_ROW_LENGTH = 0xD02
  
  public export
  PACK_SKIP_PIXELS : Bits32
  PACK_SKIP_PIXELS = 0xD04
  
  public export
  PACK_SKIP_ROWS : Bits32
  PACK_SKIP_ROWS = 0xD03
  
  public export
  PIXEL_PACK_BUFFER : Bits32
  PIXEL_PACK_BUFFER = 0x88EB
  
  public export
  PIXEL_PACK_BUFFER_BINDING : Bits32
  PIXEL_PACK_BUFFER_BINDING = 0x88ED
  
  public export
  PIXEL_UNPACK_BUFFER : Bits32
  PIXEL_UNPACK_BUFFER = 0x88EC
  
  public export
  PIXEL_UNPACK_BUFFER_BINDING : Bits32
  PIXEL_UNPACK_BUFFER_BINDING = 0x88EF
  
  public export
  QUERY_RESULT : Bits32
  QUERY_RESULT = 0x8866
  
  public export
  QUERY_RESULT_AVAILABLE : Bits32
  QUERY_RESULT_AVAILABLE = 0x8867
  
  public export
  R11F_G11F_B10F : Bits32
  R11F_G11F_B10F = 0x8C3A
  
  public export
  R16F : Bits32
  R16F = 0x822D
  
  public export
  R16I : Bits32
  R16I = 0x8233
  
  public export
  R16UI : Bits32
  R16UI = 0x8234
  
  public export
  R32F : Bits32
  R32F = 0x822E
  
  public export
  R32I : Bits32
  R32I = 0x8235
  
  public export
  R32UI : Bits32
  R32UI = 0x8236
  
  public export
  R8 : Bits32
  R8 = 0x8229
  
  public export
  R8I : Bits32
  R8I = 0x8231
  
  public export
  R8UI : Bits32
  R8UI = 0x8232
  
  public export
  R8_SNORM : Bits32
  R8_SNORM = 0x8F94
  
  public export
  RASTERIZER_DISCARD : Bits32
  RASTERIZER_DISCARD = 0x8C89
  
  public export
  READ_BUFFER : Bits32
  READ_BUFFER = 0xC02
  
  public export
  READ_FRAMEBUFFER : Bits32
  READ_FRAMEBUFFER = 0x8CA8
  
  public export
  READ_FRAMEBUFFER_BINDING : Bits32
  READ_FRAMEBUFFER_BINDING = 0x8CAA
  
  public export
  RED : Bits32
  RED = 0x1903
  
  public export
  RED_INTEGER : Bits32
  RED_INTEGER = 0x8D94
  
  public export
  RENDERBUFFER_SAMPLES : Bits32
  RENDERBUFFER_SAMPLES = 0x8CAB
  
  public export
  RG : Bits32
  RG = 0x8227
  
  public export
  RG16F : Bits32
  RG16F = 0x822F
  
  public export
  RG16I : Bits32
  RG16I = 0x8239
  
  public export
  RG16UI : Bits32
  RG16UI = 0x823A
  
  public export
  RG32F : Bits32
  RG32F = 0x8230
  
  public export
  RG32I : Bits32
  RG32I = 0x823B
  
  public export
  RG32UI : Bits32
  RG32UI = 0x823C
  
  public export
  RG8 : Bits32
  RG8 = 0x822B
  
  public export
  RG8I : Bits32
  RG8I = 0x8237
  
  public export
  RG8UI : Bits32
  RG8UI = 0x8238
  
  public export
  RG8_SNORM : Bits32
  RG8_SNORM = 0x8F95
  
  public export
  RGB10_A2 : Bits32
  RGB10_A2 = 0x8059
  
  public export
  RGB10_A2UI : Bits32
  RGB10_A2UI = 0x906F
  
  public export
  RGB16F : Bits32
  RGB16F = 0x881B
  
  public export
  RGB16I : Bits32
  RGB16I = 0x8D89
  
  public export
  RGB16UI : Bits32
  RGB16UI = 0x8D77
  
  public export
  RGB32F : Bits32
  RGB32F = 0x8815
  
  public export
  RGB32I : Bits32
  RGB32I = 0x8D83
  
  public export
  RGB32UI : Bits32
  RGB32UI = 0x8D71
  
  public export
  RGB8 : Bits32
  RGB8 = 0x8051
  
  public export
  RGB8I : Bits32
  RGB8I = 0x8D8F
  
  public export
  RGB8UI : Bits32
  RGB8UI = 0x8D7D
  
  public export
  RGB8_SNORM : Bits32
  RGB8_SNORM = 0x8F96
  
  public export
  RGB9_E5 : Bits32
  RGB9_E5 = 0x8C3D
  
  public export
  RGBA16F : Bits32
  RGBA16F = 0x881A
  
  public export
  RGBA16I : Bits32
  RGBA16I = 0x8D88
  
  public export
  RGBA16UI : Bits32
  RGBA16UI = 0x8D76
  
  public export
  RGBA32F : Bits32
  RGBA32F = 0x8814
  
  public export
  RGBA32I : Bits32
  RGBA32I = 0x8D82
  
  public export
  RGBA32UI : Bits32
  RGBA32UI = 0x8D70
  
  public export
  RGBA8 : Bits32
  RGBA8 = 0x8058
  
  public export
  RGBA8I : Bits32
  RGBA8I = 0x8D8E
  
  public export
  RGBA8UI : Bits32
  RGBA8UI = 0x8D7C
  
  public export
  RGBA8_SNORM : Bits32
  RGBA8_SNORM = 0x8F97
  
  public export
  RGBA_INTEGER : Bits32
  RGBA_INTEGER = 0x8D99
  
  public export
  RGB_INTEGER : Bits32
  RGB_INTEGER = 0x8D98
  
  public export
  RG_INTEGER : Bits32
  RG_INTEGER = 0x8228
  
  public export
  SAMPLER_2D_ARRAY : Bits32
  SAMPLER_2D_ARRAY = 0x8DC1
  
  public export
  SAMPLER_2D_ARRAY_SHADOW : Bits32
  SAMPLER_2D_ARRAY_SHADOW = 0x8DC4
  
  public export
  SAMPLER_2D_SHADOW : Bits32
  SAMPLER_2D_SHADOW = 0x8B62
  
  public export
  SAMPLER_3D : Bits32
  SAMPLER_3D = 0x8B5F
  
  public export
  SAMPLER_BINDING : Bits32
  SAMPLER_BINDING = 0x8919
  
  public export
  SAMPLER_CUBE_SHADOW : Bits32
  SAMPLER_CUBE_SHADOW = 0x8DC5
  
  public export
  SEPARATE_ATTRIBS : Bits32
  SEPARATE_ATTRIBS = 0x8C8D
  
  public export
  SIGNALED : Bits32
  SIGNALED = 0x9119
  
  public export
  SIGNED_NORMALIZED : Bits32
  SIGNED_NORMALIZED = 0x8F9C
  
  public export
  SRGB : Bits32
  SRGB = 0x8C40
  
  public export
  SRGB8 : Bits32
  SRGB8 = 0x8C41
  
  public export
  SRGB8_ALPHA8 : Bits32
  SRGB8_ALPHA8 = 0x8C43
  
  public export
  STATIC_COPY : Bits32
  STATIC_COPY = 0x88E6
  
  public export
  STATIC_READ : Bits32
  STATIC_READ = 0x88E5
  
  public export
  STENCIL : Bits32
  STENCIL = 0x1802
  
  public export
  STREAM_COPY : Bits32
  STREAM_COPY = 0x88E2
  
  public export
  STREAM_READ : Bits32
  STREAM_READ = 0x88E1
  
  public export
  SYNC_CONDITION : Bits32
  SYNC_CONDITION = 0x9113
  
  public export
  SYNC_FENCE : Bits32
  SYNC_FENCE = 0x9116
  
  public export
  SYNC_FLAGS : Bits32
  SYNC_FLAGS = 0x9115
  
  public export
  SYNC_FLUSH_COMMANDS_BIT : Bits32
  SYNC_FLUSH_COMMANDS_BIT = 0x1
  
  public export
  SYNC_GPU_COMMANDS_COMPLETE : Bits32
  SYNC_GPU_COMMANDS_COMPLETE = 0x9117
  
  public export
  SYNC_STATUS : Bits32
  SYNC_STATUS = 0x9114
  
  public export
  TEXTURE_2D_ARRAY : Bits32
  TEXTURE_2D_ARRAY = 0x8C1A
  
  public export
  TEXTURE_3D : Bits32
  TEXTURE_3D = 0x806F
  
  public export
  TEXTURE_BASE_LEVEL : Bits32
  TEXTURE_BASE_LEVEL = 0x813C
  
  public export
  TEXTURE_BINDING_2D_ARRAY : Bits32
  TEXTURE_BINDING_2D_ARRAY = 0x8C1D
  
  public export
  TEXTURE_BINDING_3D : Bits32
  TEXTURE_BINDING_3D = 0x806A
  
  public export
  TEXTURE_COMPARE_FUNC : Bits32
  TEXTURE_COMPARE_FUNC = 0x884D
  
  public export
  TEXTURE_COMPARE_MODE : Bits32
  TEXTURE_COMPARE_MODE = 0x884C
  
  public export
  TEXTURE_IMMUTABLE_FORMAT : Bits32
  TEXTURE_IMMUTABLE_FORMAT = 0x912F
  
  public export
  TEXTURE_IMMUTABLE_LEVELS : Bits32
  TEXTURE_IMMUTABLE_LEVELS = 0x82DF
  
  public export
  TEXTURE_MAX_LEVEL : Bits32
  TEXTURE_MAX_LEVEL = 0x813D
  
  public export
  TEXTURE_MAX_LOD : Bits32
  TEXTURE_MAX_LOD = 0x813B
  
  public export
  TEXTURE_MIN_LOD : Bits32
  TEXTURE_MIN_LOD = 0x813A
  
  public export
  TEXTURE_WRAP_R : Bits32
  TEXTURE_WRAP_R = 0x8072
  
  public export
  TIMEOUT_EXPIRED : Bits32
  TIMEOUT_EXPIRED = 0x911B
  
  public export
  TIMEOUT_IGNORED : JSInt64
  TIMEOUT_IGNORED = -1
  
  public export
  TRANSFORM_FEEDBACK : Bits32
  TRANSFORM_FEEDBACK = 0x8E22
  
  public export
  TRANSFORM_FEEDBACK_ACTIVE : Bits32
  TRANSFORM_FEEDBACK_ACTIVE = 0x8E24
  
  public export
  TRANSFORM_FEEDBACK_BINDING : Bits32
  TRANSFORM_FEEDBACK_BINDING = 0x8E25
  
  public export
  TRANSFORM_FEEDBACK_BUFFER : Bits32
  TRANSFORM_FEEDBACK_BUFFER = 0x8C8E
  
  public export
  TRANSFORM_FEEDBACK_BUFFER_BINDING : Bits32
  TRANSFORM_FEEDBACK_BUFFER_BINDING = 0x8C8F
  
  public export
  TRANSFORM_FEEDBACK_BUFFER_MODE : Bits32
  TRANSFORM_FEEDBACK_BUFFER_MODE = 0x8C7F
  
  public export
  TRANSFORM_FEEDBACK_BUFFER_SIZE : Bits32
  TRANSFORM_FEEDBACK_BUFFER_SIZE = 0x8C85
  
  public export
  TRANSFORM_FEEDBACK_BUFFER_START : Bits32
  TRANSFORM_FEEDBACK_BUFFER_START = 0x8C84
  
  public export
  TRANSFORM_FEEDBACK_PAUSED : Bits32
  TRANSFORM_FEEDBACK_PAUSED = 0x8E23
  
  public export
  TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN : Bits32
  TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN = 0x8C88
  
  public export
  TRANSFORM_FEEDBACK_VARYINGS : Bits32
  TRANSFORM_FEEDBACK_VARYINGS = 0x8C83
  
  public export
  UNIFORM_ARRAY_STRIDE : Bits32
  UNIFORM_ARRAY_STRIDE = 0x8A3C
  
  public export
  UNIFORM_BLOCK_ACTIVE_UNIFORMS : Bits32
  UNIFORM_BLOCK_ACTIVE_UNIFORMS = 0x8A42
  
  public export
  UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES : Bits32
  UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES = 0x8A43
  
  public export
  UNIFORM_BLOCK_BINDING : Bits32
  UNIFORM_BLOCK_BINDING = 0x8A3F
  
  public export
  UNIFORM_BLOCK_DATA_SIZE : Bits32
  UNIFORM_BLOCK_DATA_SIZE = 0x8A40
  
  public export
  UNIFORM_BLOCK_INDEX : Bits32
  UNIFORM_BLOCK_INDEX = 0x8A3A
  
  public export
  UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER : Bits32
  UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER = 0x8A46
  
  public export
  UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER : Bits32
  UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER = 0x8A44
  
  public export
  UNIFORM_BUFFER : Bits32
  UNIFORM_BUFFER = 0x8A11
  
  public export
  UNIFORM_BUFFER_BINDING : Bits32
  UNIFORM_BUFFER_BINDING = 0x8A28
  
  public export
  UNIFORM_BUFFER_OFFSET_ALIGNMENT : Bits32
  UNIFORM_BUFFER_OFFSET_ALIGNMENT = 0x8A34
  
  public export
  UNIFORM_BUFFER_SIZE : Bits32
  UNIFORM_BUFFER_SIZE = 0x8A2A
  
  public export
  UNIFORM_BUFFER_START : Bits32
  UNIFORM_BUFFER_START = 0x8A29
  
  public export
  UNIFORM_IS_ROW_MAJOR : Bits32
  UNIFORM_IS_ROW_MAJOR = 0x8A3E
  
  public export
  UNIFORM_MATRIX_STRIDE : Bits32
  UNIFORM_MATRIX_STRIDE = 0x8A3D
  
  public export
  UNIFORM_OFFSET : Bits32
  UNIFORM_OFFSET = 0x8A3B
  
  public export
  UNIFORM_SIZE : Bits32
  UNIFORM_SIZE = 0x8A38
  
  public export
  UNIFORM_TYPE : Bits32
  UNIFORM_TYPE = 0x8A37
  
  public export
  UNPACK_IMAGE_HEIGHT : Bits32
  UNPACK_IMAGE_HEIGHT = 0x806E
  
  public export
  UNPACK_ROW_LENGTH : Bits32
  UNPACK_ROW_LENGTH = 0xCF2
  
  public export
  UNPACK_SKIP_IMAGES : Bits32
  UNPACK_SKIP_IMAGES = 0x806D
  
  public export
  UNPACK_SKIP_PIXELS : Bits32
  UNPACK_SKIP_PIXELS = 0xCF4
  
  public export
  UNPACK_SKIP_ROWS : Bits32
  UNPACK_SKIP_ROWS = 0xCF3
  
  public export
  UNSIGNALED : Bits32
  UNSIGNALED = 0x9118
  
  public export
  UNSIGNED_INT_10F_11F_11F_REV : Bits32
  UNSIGNED_INT_10F_11F_11F_REV = 0x8C3B
  
  public export
  UNSIGNED_INT_24_8 : Bits32
  UNSIGNED_INT_24_8 = 0x84FA
  
  public export
  UNSIGNED_INT_2_10_10_10_REV : Bits32
  UNSIGNED_INT_2_10_10_10_REV = 0x8368
  
  public export
  UNSIGNED_INT_5_9_9_9_REV : Bits32
  UNSIGNED_INT_5_9_9_9_REV = 0x8C3E
  
  public export
  UNSIGNED_INT_SAMPLER_2D : Bits32
  UNSIGNED_INT_SAMPLER_2D = 0x8DD2
  
  public export
  UNSIGNED_INT_SAMPLER_2D_ARRAY : Bits32
  UNSIGNED_INT_SAMPLER_2D_ARRAY = 0x8DD7
  
  public export
  UNSIGNED_INT_SAMPLER_3D : Bits32
  UNSIGNED_INT_SAMPLER_3D = 0x8DD3
  
  public export
  UNSIGNED_INT_SAMPLER_CUBE : Bits32
  UNSIGNED_INT_SAMPLER_CUBE = 0x8DD4
  
  public export
  UNSIGNED_INT_VEC2 : Bits32
  UNSIGNED_INT_VEC2 = 0x8DC6
  
  public export
  UNSIGNED_INT_VEC3 : Bits32
  UNSIGNED_INT_VEC3 = 0x8DC7
  
  public export
  UNSIGNED_INT_VEC4 : Bits32
  UNSIGNED_INT_VEC4 = 0x8DC8
  
  public export
  UNSIGNED_NORMALIZED : Bits32
  UNSIGNED_NORMALIZED = 0x8C17
  
  public export
  VERTEX_ARRAY_BINDING : Bits32
  VERTEX_ARRAY_BINDING = 0x85B5
  
  public export
  VERTEX_ATTRIB_ARRAY_DIVISOR : Bits32
  VERTEX_ATTRIB_ARRAY_DIVISOR = 0x88FE
  
  public export
  VERTEX_ATTRIB_ARRAY_INTEGER : Bits32
  VERTEX_ATTRIB_ARRAY_INTEGER = 0x88FD
  
  public export
  WAIT_FAILED : Bits32
  WAIT_FAILED = 0x911D
  
  export
  beginQuery :  (0 _ : JSType t1)
             => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
             -> (obj : t1)
             -> (target : Bits32)
             -> (query : WebGLQuery)
             -> JSIO ()
  beginQuery a b c = primJS
                   $ WebGL2RenderingContextBase.prim__beginQuery (up a) b c
  
  export
  beginTransformFeedback :  (0 _ : JSType t1)
                         => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                         -> (obj : t1)
                         -> (primitiveMode : Bits32)
                         -> JSIO ()
  beginTransformFeedback a b = primJS
                             $ WebGL2RenderingContextBase.prim__beginTransformFeedback (up a)
                                                                                       b
  
  export
  bindBufferBase :  (0 _ : JSType t1)
                 => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                 -> (obj : t1)
                 -> (target : Bits32)
                 -> (index : Bits32)
                 -> (buffer : Maybe WebGLBuffer)
                 -> JSIO ()
  bindBufferBase a b c d = primJS
                         $ WebGL2RenderingContextBase.prim__bindBufferBase (up a)
                                                                           b
                                                                           c
                                                                           (toFFI d)
  
  export
  bindBufferRange :  (0 _ : JSType t1)
                  => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                  -> (obj : t1)
                  -> (target : Bits32)
                  -> (index : Bits32)
                  -> (buffer : Maybe WebGLBuffer)
                  -> (offset : JSInt64)
                  -> (size : JSInt64)
                  -> JSIO ()
  bindBufferRange a b c d e f = primJS
                              $ WebGL2RenderingContextBase.prim__bindBufferRange (up a)
                                                                                 b
                                                                                 c
                                                                                 (toFFI d)
                                                                                 e
                                                                                 f
  
  export
  bindSampler :  (0 _ : JSType t1)
              => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
              -> (obj : t1)
              -> (unit : Bits32)
              -> (sampler : Maybe WebGLSampler)
              -> JSIO ()
  bindSampler a b c = primJS
                    $ WebGL2RenderingContextBase.prim__bindSampler (up a)
                                                                   b
                                                                   (toFFI c)
  
  export
  bindTransformFeedback :  (0 _ : JSType t1)
                        => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                        -> (obj : t1)
                        -> (target : Bits32)
                        -> (tf : Maybe WebGLTransformFeedback)
                        -> JSIO ()
  bindTransformFeedback a b c = primJS
                              $ WebGL2RenderingContextBase.prim__bindTransformFeedback (up a)
                                                                                       b
                                                                                       (toFFI c)
  
  export
  bindVertexArray :  (0 _ : JSType t1)
                  => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                  -> (obj : t1)
                  -> (array : Maybe WebGLVertexArrayObject)
                  -> JSIO ()
  bindVertexArray a b = primJS
                      $ WebGL2RenderingContextBase.prim__bindVertexArray (up a)
                                                                         (toFFI b)
  
  export
  blitFramebuffer :  (0 _ : JSType t1)
                  => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                  -> (obj : t1)
                  -> (srcX0 : Int32)
                  -> (srcY0 : Int32)
                  -> (srcX1 : Int32)
                  -> (srcY1 : Int32)
                  -> (dstX0 : Int32)
                  -> (dstY0 : Int32)
                  -> (dstX1 : Int32)
                  -> (dstY1 : Int32)
                  -> (mask : Bits32)
                  -> (filter : Bits32)
                  -> JSIO ()
  blitFramebuffer a b c d e f g h i j k = primJS
                                        $ WebGL2RenderingContextBase.prim__blitFramebuffer (up a)
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
  clearBufferfi :  (0 _ : JSType t1)
                => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                -> (obj : t1)
                -> (buffer : Bits32)
                -> (drawbuffer : Int32)
                -> (depth : Double)
                -> (stencil : Int32)
                -> JSIO ()
  clearBufferfi a b c d e = primJS
                          $ WebGL2RenderingContextBase.prim__clearBufferfi (up a)
                                                                           b
                                                                           c
                                                                           d
                                                                           e
  
  export
  clearBufferfv :  (0 _ : JSType t1)
                => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                -> (obj : t1)
                -> (buffer : Bits32)
                -> (drawbuffer : Int32)
                -> (values : NS I [ Float32Array , Array Double ])
                -> (srcOffset : Optional Bits32)
                -> JSIO ()
  clearBufferfv a b c d e = primJS
                          $ WebGL2RenderingContextBase.prim__clearBufferfv (up a)
                                                                           b
                                                                           c
                                                                           (toFFI d)
                                                                           (toFFI e)

  export
  clearBufferfv' :  (0 _ : JSType t1)
                 => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                 -> (obj : t1)
                 -> (buffer : Bits32)
                 -> (drawbuffer : Int32)
                 -> (values : NS I [ Float32Array , Array Double ])
                 -> JSIO ()
  clearBufferfv' a b c d = primJS
                         $ WebGL2RenderingContextBase.prim__clearBufferfv (up a)
                                                                          b
                                                                          c
                                                                          (toFFI d)
                                                                          undef
  
  export
  clearBufferiv :  (0 _ : JSType t1)
                => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                -> (obj : t1)
                -> (buffer : Bits32)
                -> (drawbuffer : Int32)
                -> (values : NS I [ Int32Array , Array Int32 ])
                -> (srcOffset : Optional Bits32)
                -> JSIO ()
  clearBufferiv a b c d e = primJS
                          $ WebGL2RenderingContextBase.prim__clearBufferiv (up a)
                                                                           b
                                                                           c
                                                                           (toFFI d)
                                                                           (toFFI e)

  export
  clearBufferiv' :  (0 _ : JSType t1)
                 => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                 -> (obj : t1)
                 -> (buffer : Bits32)
                 -> (drawbuffer : Int32)
                 -> (values : NS I [ Int32Array , Array Int32 ])
                 -> JSIO ()
  clearBufferiv' a b c d = primJS
                         $ WebGL2RenderingContextBase.prim__clearBufferiv (up a)
                                                                          b
                                                                          c
                                                                          (toFFI d)
                                                                          undef
  
  export
  clearBufferuiv :  (0 _ : JSType t1)
                 => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                 -> (obj : t1)
                 -> (buffer : Bits32)
                 -> (drawbuffer : Int32)
                 -> (values : NS I [ UInt8Array , Array Bits32 ])
                 -> (srcOffset : Optional Bits32)
                 -> JSIO ()
  clearBufferuiv a b c d e = primJS
                           $ WebGL2RenderingContextBase.prim__clearBufferuiv (up a)
                                                                             b
                                                                             c
                                                                             (toFFI d)
                                                                             (toFFI e)

  export
  clearBufferuiv' :  (0 _ : JSType t1)
                  => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                  -> (obj : t1)
                  -> (buffer : Bits32)
                  -> (drawbuffer : Int32)
                  -> (values : NS I [ UInt8Array , Array Bits32 ])
                  -> JSIO ()
  clearBufferuiv' a b c d = primJS
                          $ WebGL2RenderingContextBase.prim__clearBufferuiv (up a)
                                                                            b
                                                                            c
                                                                            (toFFI d)
                                                                            undef
  
  export
  clientWaitSync :  (0 _ : JSType t1)
                 => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                 -> (obj : t1)
                 -> (sync : WebGLSync)
                 -> (flags : Bits32)
                 -> (timeout : JSBits64)
                 -> JSIO Bits32
  clientWaitSync a b c d = primJS
                         $ WebGL2RenderingContextBase.prim__clientWaitSync (up a)
                                                                           b
                                                                           c
                                                                           d
  
  export
  compressedTexImage3D :  (0 _ : JSType t1)
                       => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                       -> (obj : t1)
                       -> (target : Bits32)
                       -> (level : Int32)
                       -> (internalformat : Bits32)
                       -> (width : Int32)
                       -> (height : Int32)
                       -> (depth : Int32)
                       -> (border : Int32)
                       -> (imageSize : Int32)
                       -> (offset : JSInt64)
                       -> JSIO ()
  compressedTexImage3D a b c d e f g h i j = primJS
                                           $ WebGL2RenderingContextBase.prim__compressedTexImage3D (up a)
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
  compressedTexImage3D1 :  (0 _ : JSType t1)
                        => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                        -> (obj : t1)
                        -> (target : Bits32)
                        -> (level : Int32)
                        -> (internalformat : Bits32)
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
                        -> (srcOffset : Optional Bits32)
                        -> (srcLengthOverride : Optional Bits32)
                        -> JSIO ()
  compressedTexImage3D1 a b c d e f g h i j k = primJS
                                              $ WebGL2RenderingContextBase.prim__compressedTexImage3D1 (up a)
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
  compressedTexImage3D1' :  (0 _ : JSType t1)
                         => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                         -> (obj : t1)
                         -> (target : Bits32)
                         -> (level : Int32)
                         -> (internalformat : Bits32)
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
                                           $ WebGL2RenderingContextBase.prim__compressedTexImage3D1 (up a)
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
  compressedTexSubImage3D :  (0 _ : JSType t1)
                          => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                          -> (obj : t1)
                          -> (target : Bits32)
                          -> (level : Int32)
                          -> (xoffset : Int32)
                          -> (yoffset : Int32)
                          -> (zoffset : Int32)
                          -> (width : Int32)
                          -> (height : Int32)
                          -> (depth : Int32)
                          -> (format : Bits32)
                          -> (imageSize : Int32)
                          -> (offset : JSInt64)
                          -> JSIO ()
  compressedTexSubImage3D a b c d e f g h i j k l = primJS
                                                  $ WebGL2RenderingContextBase.prim__compressedTexSubImage3D (up a)
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
  compressedTexSubImage3D1 :  (0 _ : JSType t1)
                           => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                           -> (obj : t1)
                           -> (target : Bits32)
                           -> (level : Int32)
                           -> (xoffset : Int32)
                           -> (yoffset : Int32)
                           -> (zoffset : Int32)
                           -> (width : Int32)
                           -> (height : Int32)
                           -> (depth : Int32)
                           -> (format : Bits32)
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
                           -> (srcOffset : Optional Bits32)
                           -> (srcLengthOverride : Optional Bits32)
                           -> JSIO ()
  compressedTexSubImage3D1 a b c d e f g h i j k l m = primJS
                                                     $ WebGL2RenderingContextBase.prim__compressedTexSubImage3D1 (up a)
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
  compressedTexSubImage3D1' :  (0 _ : JSType t1)
                            => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                            -> (obj : t1)
                            -> (target : Bits32)
                            -> (level : Int32)
                            -> (xoffset : Int32)
                            -> (yoffset : Int32)
                            -> (zoffset : Int32)
                            -> (width : Int32)
                            -> (height : Int32)
                            -> (depth : Int32)
                            -> (format : Bits32)
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
                                                  $ WebGL2RenderingContextBase.prim__compressedTexSubImage3D1 (up a)
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
  copyBufferSubData :  (0 _ : JSType t1)
                    => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                    -> (obj : t1)
                    -> (readTarget : Bits32)
                    -> (writeTarget : Bits32)
                    -> (readOffset : JSInt64)
                    -> (writeOffset : JSInt64)
                    -> (size : JSInt64)
                    -> JSIO ()
  copyBufferSubData a b c d e f = primJS
                                $ WebGL2RenderingContextBase.prim__copyBufferSubData (up a)
                                                                                     b
                                                                                     c
                                                                                     d
                                                                                     e
                                                                                     f
  
  export
  copyTexSubImage3D :  (0 _ : JSType t1)
                    => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                    -> (obj : t1)
                    -> (target : Bits32)
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
                                        $ WebGL2RenderingContextBase.prim__copyTexSubImage3D (up a)
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
  createQuery :  (0 _ : JSType t1)
              => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
              -> (obj : t1)
              -> JSIO (Maybe WebGLQuery)
  createQuery a = tryJS "WebGL2RenderingContextBase.createQuery"
                $ WebGL2RenderingContextBase.prim__createQuery (up a)
  
  export
  createSampler :  (0 _ : JSType t1)
                => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                -> (obj : t1)
                -> JSIO (Maybe WebGLSampler)
  createSampler a = tryJS "WebGL2RenderingContextBase.createSampler"
                  $ WebGL2RenderingContextBase.prim__createSampler (up a)
  
  export
  createTransformFeedback :  (0 _ : JSType t1)
                          => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                          -> (obj : t1)
                          -> JSIO (Maybe WebGLTransformFeedback)
  createTransformFeedback a = tryJS "WebGL2RenderingContextBase.createTransformFeedback"
                            $ WebGL2RenderingContextBase.prim__createTransformFeedback (up a)
  
  export
  createVertexArray :  (0 _ : JSType t1)
                    => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                    -> (obj : t1)
                    -> JSIO (Maybe WebGLVertexArrayObject)
  createVertexArray a = tryJS "WebGL2RenderingContextBase.createVertexArray"
                      $ WebGL2RenderingContextBase.prim__createVertexArray (up a)
  
  export
  deleteQuery :  (0 _ : JSType t1)
              => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
              -> (obj : t1)
              -> (query : Maybe WebGLQuery)
              -> JSIO ()
  deleteQuery a b = primJS
                  $ WebGL2RenderingContextBase.prim__deleteQuery (up a)
                                                                 (toFFI b)
  
  export
  deleteSampler :  (0 _ : JSType t1)
                => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                -> (obj : t1)
                -> (sampler : Maybe WebGLSampler)
                -> JSIO ()
  deleteSampler a b = primJS
                    $ WebGL2RenderingContextBase.prim__deleteSampler (up a)
                                                                     (toFFI b)
  
  export
  deleteSync :  (0 _ : JSType t1)
             => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
             -> (obj : t1)
             -> (sync : Maybe WebGLSync)
             -> JSIO ()
  deleteSync a b = primJS
                 $ WebGL2RenderingContextBase.prim__deleteSync (up a) (toFFI b)
  
  export
  deleteTransformFeedback :  (0 _ : JSType t1)
                          => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                          -> (obj : t1)
                          -> (tf : Maybe WebGLTransformFeedback)
                          -> JSIO ()
  deleteTransformFeedback a b = primJS
                              $ WebGL2RenderingContextBase.prim__deleteTransformFeedback (up a)
                                                                                         (toFFI b)
  
  export
  deleteVertexArray :  (0 _ : JSType t1)
                    => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                    -> (obj : t1)
                    -> (vertexArray : Maybe WebGLVertexArrayObject)
                    -> JSIO ()
  deleteVertexArray a b = primJS
                        $ WebGL2RenderingContextBase.prim__deleteVertexArray (up a)
                                                                             (toFFI b)
  
  export
  drawArraysInstanced :  (0 _ : JSType t1)
                      => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                      -> (obj : t1)
                      -> (mode : Bits32)
                      -> (first : Int32)
                      -> (count : Int32)
                      -> (instanceCount : Int32)
                      -> JSIO ()
  drawArraysInstanced a b c d e = primJS
                                $ WebGL2RenderingContextBase.prim__drawArraysInstanced (up a)
                                                                                       b
                                                                                       c
                                                                                       d
                                                                                       e
  
  export
  drawBuffers :  (0 _ : JSType t1)
              => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
              -> (obj : t1)
              -> (buffers : Array Bits32)
              -> JSIO ()
  drawBuffers a b = primJS
                  $ WebGL2RenderingContextBase.prim__drawBuffers (up a) b
  
  export
  drawElementsInstanced :  (0 _ : JSType t1)
                        => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                        -> (obj : t1)
                        -> (mode : Bits32)
                        -> (count : Int32)
                        -> (type : Bits32)
                        -> (offset : JSInt64)
                        -> (instanceCount : Int32)
                        -> JSIO ()
  drawElementsInstanced a b c d e f = primJS
                                    $ WebGL2RenderingContextBase.prim__drawElementsInstanced (up a)
                                                                                             b
                                                                                             c
                                                                                             d
                                                                                             e
                                                                                             f
  
  export
  drawRangeElements :  (0 _ : JSType t1)
                    => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                    -> (obj : t1)
                    -> (mode : Bits32)
                    -> (start : Bits32)
                    -> (end : Bits32)
                    -> (count : Int32)
                    -> (type : Bits32)
                    -> (offset : JSInt64)
                    -> JSIO ()
  drawRangeElements a b c d e f g = primJS
                                  $ WebGL2RenderingContextBase.prim__drawRangeElements (up a)
                                                                                       b
                                                                                       c
                                                                                       d
                                                                                       e
                                                                                       f
                                                                                       g
  
  export
  endQuery :  (0 _ : JSType t1)
           => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
           -> (obj : t1)
           -> (target : Bits32)
           -> JSIO ()
  endQuery a b = primJS $ WebGL2RenderingContextBase.prim__endQuery (up a) b
  
  export
  endTransformFeedback :  (0 _ : JSType t1)
                       => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                       -> (obj : t1)
                       -> JSIO ()
  endTransformFeedback a = primJS
                         $ WebGL2RenderingContextBase.prim__endTransformFeedback (up a)
  
  export
  fenceSync :  (0 _ : JSType t1)
            => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
            -> (obj : t1)
            -> (condition : Bits32)
            -> (flags : Bits32)
            -> JSIO (Maybe WebGLSync)
  fenceSync a b c = tryJS "WebGL2RenderingContextBase.fenceSync"
                  $ WebGL2RenderingContextBase.prim__fenceSync (up a) b c
  
  export
  framebufferTextureLayer :  (0 _ : JSType t1)
                          => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                          -> (obj : t1)
                          -> (target : Bits32)
                          -> (attachment : Bits32)
                          -> (texture : Maybe WebGLTexture)
                          -> (level : Int32)
                          -> (layer : Int32)
                          -> JSIO ()
  framebufferTextureLayer a b c d e f = primJS
                                      $ WebGL2RenderingContextBase.prim__framebufferTextureLayer (up a)
                                                                                                 b
                                                                                                 c
                                                                                                 (toFFI d)
                                                                                                 e
                                                                                                 f
  
  export
  getActiveUniformBlockName :  (0 _ : JSType t1)
                            => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                            -> (obj : t1)
                            -> (program : WebGLProgram)
                            -> (uniformBlockIndex : Bits32)
                            -> JSIO (Maybe String)
  getActiveUniformBlockName a b c = tryJS "WebGL2RenderingContextBase.getActiveUniformBlockName"
                                  $ WebGL2RenderingContextBase.prim__getActiveUniformBlockName (up a)
                                                                                               b
                                                                                               c
  
  export
  getActiveUniformBlockParameter :  (0 _ : JSType t1)
                                 => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                                 -> (obj : t1)
                                 -> (program : WebGLProgram)
                                 -> (uniformBlockIndex : Bits32)
                                 -> (pname : Bits32)
                                 -> JSIO Any
  getActiveUniformBlockParameter a b c d = tryJS "WebGL2RenderingContextBase.getActiveUniformBlockParameter"
                                         $ WebGL2RenderingContextBase.prim__getActiveUniformBlockParameter (up a)
                                                                                                           b
                                                                                                           c
                                                                                                           d
  
  export
  getActiveUniforms :  (0 _ : JSType t1)
                    => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                    -> (obj : t1)
                    -> (program : WebGLProgram)
                    -> (uniformIndices : Array Bits32)
                    -> (pname : Bits32)
                    -> JSIO Any
  getActiveUniforms a b c d = tryJS "WebGL2RenderingContextBase.getActiveUniforms"
                            $ WebGL2RenderingContextBase.prim__getActiveUniforms (up a)
                                                                                 b
                                                                                 c
                                                                                 d
  
  export
  getBufferSubData :  (0 _ : JSType t1)
                   => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                   -> (obj : t1)
                   -> (target : Bits32)
                   -> (srcByteOffset : JSInt64)
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
                   -> (dstOffset : Optional Bits32)
                   -> (length : Optional Bits32)
                   -> JSIO ()
  getBufferSubData a b c d e f = primJS
                               $ WebGL2RenderingContextBase.prim__getBufferSubData (up a)
                                                                                   b
                                                                                   c
                                                                                   (toFFI d)
                                                                                   (toFFI e)
                                                                                   (toFFI f)

  export
  getBufferSubData' :  (0 _ : JSType t1)
                    => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                    -> (obj : t1)
                    -> (target : Bits32)
                    -> (srcByteOffset : JSInt64)
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
                            $ WebGL2RenderingContextBase.prim__getBufferSubData (up a)
                                                                                b
                                                                                c
                                                                                (toFFI d)
                                                                                undef
                                                                                undef
  
  export
  getFragDataLocation :  (0 _ : JSType t1)
                      => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                      -> (obj : t1)
                      -> (program : WebGLProgram)
                      -> (name : String)
                      -> JSIO Int32
  getFragDataLocation a b c = primJS
                            $ WebGL2RenderingContextBase.prim__getFragDataLocation (up a)
                                                                                   b
                                                                                   c
  
  export
  getIndexedParameter :  (0 _ : JSType t1)
                      => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                      -> (obj : t1)
                      -> (target : Bits32)
                      -> (index : Bits32)
                      -> JSIO Any
  getIndexedParameter a b c = tryJS "WebGL2RenderingContextBase.getIndexedParameter"
                            $ WebGL2RenderingContextBase.prim__getIndexedParameter (up a)
                                                                                   b
                                                                                   c
  
  export
  getInternalformatParameter :  (0 _ : JSType t1)
                             => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                             -> (obj : t1)
                             -> (target : Bits32)
                             -> (internalformat : Bits32)
                             -> (pname : Bits32)
                             -> JSIO Any
  getInternalformatParameter a b c d = tryJS "WebGL2RenderingContextBase.getInternalformatParameter"
                                     $ WebGL2RenderingContextBase.prim__getInternalformatParameter (up a)
                                                                                                   b
                                                                                                   c
                                                                                                   d
  
  export
  getQueryParameter :  (0 _ : JSType t1)
                    => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                    -> (obj : t1)
                    -> (query : WebGLQuery)
                    -> (pname : Bits32)
                    -> JSIO Any
  getQueryParameter a b c = tryJS "WebGL2RenderingContextBase.getQueryParameter"
                          $ WebGL2RenderingContextBase.prim__getQueryParameter (up a)
                                                                               b
                                                                               c
  
  export
  getQuery :  (0 _ : JSType t1)
           => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
           -> (obj : t1)
           -> (target : Bits32)
           -> (pname : Bits32)
           -> JSIO (Maybe WebGLQuery)
  getQuery a b c = tryJS "WebGL2RenderingContextBase.getQuery"
                 $ WebGL2RenderingContextBase.prim__getQuery (up a) b c
  
  export
  getSamplerParameter :  (0 _ : JSType t1)
                      => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                      -> (obj : t1)
                      -> (sampler : WebGLSampler)
                      -> (pname : Bits32)
                      -> JSIO Any
  getSamplerParameter a b c = tryJS "WebGL2RenderingContextBase.getSamplerParameter"
                            $ WebGL2RenderingContextBase.prim__getSamplerParameter (up a)
                                                                                   b
                                                                                   c
  
  export
  getSyncParameter :  (0 _ : JSType t1)
                   => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                   -> (obj : t1)
                   -> (sync : WebGLSync)
                   -> (pname : Bits32)
                   -> JSIO Any
  getSyncParameter a b c = tryJS "WebGL2RenderingContextBase.getSyncParameter"
                         $ WebGL2RenderingContextBase.prim__getSyncParameter (up a)
                                                                             b
                                                                             c
  
  export
  getTransformFeedbackVarying :  (0 _ : JSType t1)
                              => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                              -> (obj : t1)
                              -> (program : WebGLProgram)
                              -> (index : Bits32)
                              -> JSIO (Maybe WebGLActiveInfo)
  getTransformFeedbackVarying a b c = tryJS "WebGL2RenderingContextBase.getTransformFeedbackVarying"
                                    $ WebGL2RenderingContextBase.prim__getTransformFeedbackVarying (up a)
                                                                                                   b
                                                                                                   c
  
  export
  getUniformBlockIndex :  (0 _ : JSType t1)
                       => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                       -> (obj : t1)
                       -> (program : WebGLProgram)
                       -> (uniformBlockName : String)
                       -> JSIO Bits32
  getUniformBlockIndex a b c = primJS
                             $ WebGL2RenderingContextBase.prim__getUniformBlockIndex (up a)
                                                                                     b
                                                                                     c
  
  export
  getUniformIndices :  (0 _ : JSType t1)
                    => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                    -> (obj : t1)
                    -> (program : WebGLProgram)
                    -> (uniformNames : Array String)
                    -> JSIO (Maybe (Array Bits32))
  getUniformIndices a b c = tryJS "WebGL2RenderingContextBase.getUniformIndices"
                          $ WebGL2RenderingContextBase.prim__getUniformIndices (up a)
                                                                               b
                                                                               c
  
  export
  invalidateFramebuffer :  (0 _ : JSType t1)
                        => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                        -> (obj : t1)
                        -> (target : Bits32)
                        -> (attachments : Array Bits32)
                        -> JSIO ()
  invalidateFramebuffer a b c = primJS
                              $ WebGL2RenderingContextBase.prim__invalidateFramebuffer (up a)
                                                                                       b
                                                                                       c
  
  export
  invalidateSubFramebuffer :  (0 _ : JSType t1)
                           => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                           -> (obj : t1)
                           -> (target : Bits32)
                           -> (attachments : Array Bits32)
                           -> (x : Int32)
                           -> (y : Int32)
                           -> (width : Int32)
                           -> (height : Int32)
                           -> JSIO ()
  invalidateSubFramebuffer a b c d e f g = primJS
                                         $ WebGL2RenderingContextBase.prim__invalidateSubFramebuffer (up a)
                                                                                                     b
                                                                                                     c
                                                                                                     d
                                                                                                     e
                                                                                                     f
                                                                                                     g
  
  export
  isQuery :  (0 _ : JSType t1)
          => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
          -> (obj : t1)
          -> (query : Maybe WebGLQuery)
          -> JSIO Bool
  isQuery a b = tryJS "WebGL2RenderingContextBase.isQuery"
              $ WebGL2RenderingContextBase.prim__isQuery (up a) (toFFI b)
  
  export
  isSampler :  (0 _ : JSType t1)
            => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
            -> (obj : t1)
            -> (sampler : Maybe WebGLSampler)
            -> JSIO Bool
  isSampler a b = tryJS "WebGL2RenderingContextBase.isSampler"
                $ WebGL2RenderingContextBase.prim__isSampler (up a) (toFFI b)
  
  export
  isSync :  (0 _ : JSType t1)
         => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
         -> (obj : t1)
         -> (sync : Maybe WebGLSync)
         -> JSIO Bool
  isSync a b = tryJS "WebGL2RenderingContextBase.isSync"
             $ WebGL2RenderingContextBase.prim__isSync (up a) (toFFI b)
  
  export
  isTransformFeedback :  (0 _ : JSType t1)
                      => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                      -> (obj : t1)
                      -> (tf : Maybe WebGLTransformFeedback)
                      -> JSIO Bool
  isTransformFeedback a b = tryJS "WebGL2RenderingContextBase.isTransformFeedback"
                          $ WebGL2RenderingContextBase.prim__isTransformFeedback (up a)
                                                                                 (toFFI b)
  
  export
  isVertexArray :  (0 _ : JSType t1)
                => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                -> (obj : t1)
                -> (vertexArray : Maybe WebGLVertexArrayObject)
                -> JSIO Bool
  isVertexArray a b = tryJS "WebGL2RenderingContextBase.isVertexArray"
                    $ WebGL2RenderingContextBase.prim__isVertexArray (up a)
                                                                     (toFFI b)
  
  export
  pauseTransformFeedback :  (0 _ : JSType t1)
                         => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                         -> (obj : t1)
                         -> JSIO ()
  pauseTransformFeedback a = primJS
                           $ WebGL2RenderingContextBase.prim__pauseTransformFeedback (up a)
  
  export
  readBuffer :  (0 _ : JSType t1)
             => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
             -> (obj : t1)
             -> (src : Bits32)
             -> JSIO ()
  readBuffer a b = primJS $ WebGL2RenderingContextBase.prim__readBuffer (up a) b
  
  export
  renderbufferStorageMultisample :  (0 _ : JSType t1)
                                 => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                                 -> (obj : t1)
                                 -> (target : Bits32)
                                 -> (samples : Int32)
                                 -> (internalformat : Bits32)
                                 -> (width : Int32)
                                 -> (height : Int32)
                                 -> JSIO ()
  renderbufferStorageMultisample a b c d e f = primJS
                                             $ WebGL2RenderingContextBase.prim__renderbufferStorageMultisample (up a)
                                                                                                               b
                                                                                                               c
                                                                                                               d
                                                                                                               e
                                                                                                               f
  
  export
  resumeTransformFeedback :  (0 _ : JSType t1)
                          => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                          -> (obj : t1)
                          -> JSIO ()
  resumeTransformFeedback a = primJS
                            $ WebGL2RenderingContextBase.prim__resumeTransformFeedback (up a)
  
  export
  samplerParameterf :  (0 _ : JSType t1)
                    => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                    -> (obj : t1)
                    -> (sampler : WebGLSampler)
                    -> (pname : Bits32)
                    -> (param : Double)
                    -> JSIO ()
  samplerParameterf a b c d = primJS
                            $ WebGL2RenderingContextBase.prim__samplerParameterf (up a)
                                                                                 b
                                                                                 c
                                                                                 d
  
  export
  samplerParameteri :  (0 _ : JSType t1)
                    => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                    -> (obj : t1)
                    -> (sampler : WebGLSampler)
                    -> (pname : Bits32)
                    -> (param : Int32)
                    -> JSIO ()
  samplerParameteri a b c d = primJS
                            $ WebGL2RenderingContextBase.prim__samplerParameteri (up a)
                                                                                 b
                                                                                 c
                                                                                 d
  
  export
  texImage3D :  (0 _ : JSType t1)
             => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
             -> (obj : t1)
             -> (target : Bits32)
             -> (level : Int32)
             -> (internalformat : Int32)
             -> (width : Int32)
             -> (height : Int32)
             -> (depth : Int32)
             -> (border : Int32)
             -> (format : Bits32)
             -> (type : Bits32)
             -> (pboOffset : JSInt64)
             -> JSIO ()
  texImage3D a b c d e f g h i j k = primJS
                                   $ WebGL2RenderingContextBase.prim__texImage3D (up a)
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
  texImage3D1 :  (0 _ : JSType t1)
              => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
              -> (obj : t1)
              -> (target : Bits32)
              -> (level : Int32)
              -> (internalformat : Int32)
              -> (width : Int32)
              -> (height : Int32)
              -> (depth : Int32)
              -> (border : Int32)
              -> (format : Bits32)
              -> (type : Bits32)
              -> (source : NS I [ ImageBitmap
                                , ImageData
                                , HTMLImageElement
                                , HTMLCanvasElement
                                , HTMLVideoElement
                                , OffscreenCanvas
                                ])
              -> JSIO ()
  texImage3D1 a b c d e f g h i j k = primJS
                                    $ WebGL2RenderingContextBase.prim__texImage3D1 (up a)
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
  texImage3D2 :  (0 _ : JSType t1)
              => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
              -> (obj : t1)
              -> (target : Bits32)
              -> (level : Int32)
              -> (internalformat : Int32)
              -> (width : Int32)
              -> (height : Int32)
              -> (depth : Int32)
              -> (border : Int32)
              -> (format : Bits32)
              -> (type : Bits32)
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
                                    $ WebGL2RenderingContextBase.prim__texImage3D2 (up a)
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
  texImage3D3 :  (0 _ : JSType t1)
              => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
              -> (obj : t1)
              -> (target : Bits32)
              -> (level : Int32)
              -> (internalformat : Int32)
              -> (width : Int32)
              -> (height : Int32)
              -> (depth : Int32)
              -> (border : Int32)
              -> (format : Bits32)
              -> (type : Bits32)
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
              -> (srcOffset : Bits32)
              -> JSIO ()
  texImage3D3 a b c d e f g h i j k l = primJS
                                      $ WebGL2RenderingContextBase.prim__texImage3D3 (up a)
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
  texStorage2D :  (0 _ : JSType t1)
               => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
               -> (obj : t1)
               -> (target : Bits32)
               -> (levels : Int32)
               -> (internalformat : Bits32)
               -> (width : Int32)
               -> (height : Int32)
               -> JSIO ()
  texStorage2D a b c d e f = primJS
                           $ WebGL2RenderingContextBase.prim__texStorage2D (up a)
                                                                           b
                                                                           c
                                                                           d
                                                                           e
                                                                           f
  
  export
  texStorage3D :  (0 _ : JSType t1)
               => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
               -> (obj : t1)
               -> (target : Bits32)
               -> (levels : Int32)
               -> (internalformat : Bits32)
               -> (width : Int32)
               -> (height : Int32)
               -> (depth : Int32)
               -> JSIO ()
  texStorage3D a b c d e f g = primJS
                             $ WebGL2RenderingContextBase.prim__texStorage3D (up a)
                                                                             b
                                                                             c
                                                                             d
                                                                             e
                                                                             f
                                                                             g
  
  export
  texSubImage3D :  (0 _ : JSType t1)
                => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                -> (obj : t1)
                -> (target : Bits32)
                -> (level : Int32)
                -> (xoffset : Int32)
                -> (yoffset : Int32)
                -> (zoffset : Int32)
                -> (width : Int32)
                -> (height : Int32)
                -> (depth : Int32)
                -> (format : Bits32)
                -> (type : Bits32)
                -> (pboOffset : JSInt64)
                -> JSIO ()
  texSubImage3D a b c d e f g h i j k l = primJS
                                        $ WebGL2RenderingContextBase.prim__texSubImage3D (up a)
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
  texSubImage3D1 :  (0 _ : JSType t1)
                 => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                 -> (obj : t1)
                 -> (target : Bits32)
                 -> (level : Int32)
                 -> (xoffset : Int32)
                 -> (yoffset : Int32)
                 -> (zoffset : Int32)
                 -> (width : Int32)
                 -> (height : Int32)
                 -> (depth : Int32)
                 -> (format : Bits32)
                 -> (type : Bits32)
                 -> (source : NS I [ ImageBitmap
                                   , ImageData
                                   , HTMLImageElement
                                   , HTMLCanvasElement
                                   , HTMLVideoElement
                                   , OffscreenCanvas
                                   ])
                 -> JSIO ()
  texSubImage3D1 a b c d e f g h i j k l = primJS
                                         $ WebGL2RenderingContextBase.prim__texSubImage3D1 (up a)
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
  texSubImage3D2 :  (0 _ : JSType t1)
                 => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                 -> (obj : t1)
                 -> (target : Bits32)
                 -> (level : Int32)
                 -> (xoffset : Int32)
                 -> (yoffset : Int32)
                 -> (zoffset : Int32)
                 -> (width : Int32)
                 -> (height : Int32)
                 -> (depth : Int32)
                 -> (format : Bits32)
                 -> (type : Bits32)
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
                 -> (srcOffset : Optional Bits32)
                 -> JSIO ()
  texSubImage3D2 a b c d e f g h i j k l m = primJS
                                           $ WebGL2RenderingContextBase.prim__texSubImage3D2 (up a)
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
  texSubImage3D2' :  (0 _ : JSType t1)
                  => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                  -> (obj : t1)
                  -> (target : Bits32)
                  -> (level : Int32)
                  -> (xoffset : Int32)
                  -> (yoffset : Int32)
                  -> (zoffset : Int32)
                  -> (width : Int32)
                  -> (height : Int32)
                  -> (depth : Int32)
                  -> (format : Bits32)
                  -> (type : Bits32)
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
                                          $ WebGL2RenderingContextBase.prim__texSubImage3D2 (up a)
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
  transformFeedbackVaryings :  (0 _ : JSType t1)
                            => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                            -> (obj : t1)
                            -> (program : WebGLProgram)
                            -> (varyings : Array String)
                            -> (bufferMode : Bits32)
                            -> JSIO ()
  transformFeedbackVaryings a b c d = primJS
                                    $ WebGL2RenderingContextBase.prim__transformFeedbackVaryings (up a)
                                                                                                 b
                                                                                                 c
                                                                                                 d
  
  export
  uniform1ui :  (0 _ : JSType t1)
             => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
             -> (obj : t1)
             -> (location : Maybe WebGLUniformLocation)
             -> (v0 : Bits32)
             -> JSIO ()
  uniform1ui a b c = primJS
                   $ WebGL2RenderingContextBase.prim__uniform1ui (up a)
                                                                 (toFFI b)
                                                                 c
  
  export
  uniform1uiv :  (0 _ : JSType t1)
              => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
              -> (obj : t1)
              -> (location : Maybe WebGLUniformLocation)
              -> (data_ : NS I [ UInt8Array , Array Bits32 ])
              -> (srcOffset : Optional Bits32)
              -> (srcLength : Optional Bits32)
              -> JSIO ()
  uniform1uiv a b c d e = primJS
                        $ WebGL2RenderingContextBase.prim__uniform1uiv (up a)
                                                                       (toFFI b)
                                                                       (toFFI c)
                                                                       (toFFI d)
                                                                       (toFFI e)

  export
  uniform1uiv' :  (0 _ : JSType t1)
               => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
               -> (obj : t1)
               -> (location : Maybe WebGLUniformLocation)
               -> (data_ : NS I [ UInt8Array , Array Bits32 ])
               -> JSIO ()
  uniform1uiv' a b c = primJS
                     $ WebGL2RenderingContextBase.prim__uniform1uiv (up a)
                                                                    (toFFI b)
                                                                    (toFFI c)
                                                                    undef
                                                                    undef
  
  export
  uniform2ui :  (0 _ : JSType t1)
             => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
             -> (obj : t1)
             -> (location : Maybe WebGLUniformLocation)
             -> (v0 : Bits32)
             -> (v1 : Bits32)
             -> JSIO ()
  uniform2ui a b c d = primJS
                     $ WebGL2RenderingContextBase.prim__uniform2ui (up a)
                                                                   (toFFI b)
                                                                   c
                                                                   d
  
  export
  uniform2uiv :  (0 _ : JSType t1)
              => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
              -> (obj : t1)
              -> (location : Maybe WebGLUniformLocation)
              -> (data_ : NS I [ UInt8Array , Array Bits32 ])
              -> (srcOffset : Optional Bits32)
              -> (srcLength : Optional Bits32)
              -> JSIO ()
  uniform2uiv a b c d e = primJS
                        $ WebGL2RenderingContextBase.prim__uniform2uiv (up a)
                                                                       (toFFI b)
                                                                       (toFFI c)
                                                                       (toFFI d)
                                                                       (toFFI e)

  export
  uniform2uiv' :  (0 _ : JSType t1)
               => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
               -> (obj : t1)
               -> (location : Maybe WebGLUniformLocation)
               -> (data_ : NS I [ UInt8Array , Array Bits32 ])
               -> JSIO ()
  uniform2uiv' a b c = primJS
                     $ WebGL2RenderingContextBase.prim__uniform2uiv (up a)
                                                                    (toFFI b)
                                                                    (toFFI c)
                                                                    undef
                                                                    undef
  
  export
  uniform3ui :  (0 _ : JSType t1)
             => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
             -> (obj : t1)
             -> (location : Maybe WebGLUniformLocation)
             -> (v0 : Bits32)
             -> (v1 : Bits32)
             -> (v2 : Bits32)
             -> JSIO ()
  uniform3ui a b c d e = primJS
                       $ WebGL2RenderingContextBase.prim__uniform3ui (up a)
                                                                     (toFFI b)
                                                                     c
                                                                     d
                                                                     e
  
  export
  uniform3uiv :  (0 _ : JSType t1)
              => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
              -> (obj : t1)
              -> (location : Maybe WebGLUniformLocation)
              -> (data_ : NS I [ UInt8Array , Array Bits32 ])
              -> (srcOffset : Optional Bits32)
              -> (srcLength : Optional Bits32)
              -> JSIO ()
  uniform3uiv a b c d e = primJS
                        $ WebGL2RenderingContextBase.prim__uniform3uiv (up a)
                                                                       (toFFI b)
                                                                       (toFFI c)
                                                                       (toFFI d)
                                                                       (toFFI e)

  export
  uniform3uiv' :  (0 _ : JSType t1)
               => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
               -> (obj : t1)
               -> (location : Maybe WebGLUniformLocation)
               -> (data_ : NS I [ UInt8Array , Array Bits32 ])
               -> JSIO ()
  uniform3uiv' a b c = primJS
                     $ WebGL2RenderingContextBase.prim__uniform3uiv (up a)
                                                                    (toFFI b)
                                                                    (toFFI c)
                                                                    undef
                                                                    undef
  
  export
  uniform4ui :  (0 _ : JSType t1)
             => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
             -> (obj : t1)
             -> (location : Maybe WebGLUniformLocation)
             -> (v0 : Bits32)
             -> (v1 : Bits32)
             -> (v2 : Bits32)
             -> (v3 : Bits32)
             -> JSIO ()
  uniform4ui a b c d e f = primJS
                         $ WebGL2RenderingContextBase.prim__uniform4ui (up a)
                                                                       (toFFI b)
                                                                       c
                                                                       d
                                                                       e
                                                                       f
  
  export
  uniform4uiv :  (0 _ : JSType t1)
              => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
              -> (obj : t1)
              -> (location : Maybe WebGLUniformLocation)
              -> (data_ : NS I [ UInt8Array , Array Bits32 ])
              -> (srcOffset : Optional Bits32)
              -> (srcLength : Optional Bits32)
              -> JSIO ()
  uniform4uiv a b c d e = primJS
                        $ WebGL2RenderingContextBase.prim__uniform4uiv (up a)
                                                                       (toFFI b)
                                                                       (toFFI c)
                                                                       (toFFI d)
                                                                       (toFFI e)

  export
  uniform4uiv' :  (0 _ : JSType t1)
               => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
               -> (obj : t1)
               -> (location : Maybe WebGLUniformLocation)
               -> (data_ : NS I [ UInt8Array , Array Bits32 ])
               -> JSIO ()
  uniform4uiv' a b c = primJS
                     $ WebGL2RenderingContextBase.prim__uniform4uiv (up a)
                                                                    (toFFI b)
                                                                    (toFFI c)
                                                                    undef
                                                                    undef
  
  export
  uniformBlockBinding :  (0 _ : JSType t1)
                      => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                      -> (obj : t1)
                      -> (program : WebGLProgram)
                      -> (uniformBlockIndex : Bits32)
                      -> (uniformBlockBinding : Bits32)
                      -> JSIO ()
  uniformBlockBinding a b c d = primJS
                              $ WebGL2RenderingContextBase.prim__uniformBlockBinding (up a)
                                                                                     b
                                                                                     c
                                                                                     d
  
  export
  uniformMatrix2x3fv :  (0 _ : JSType t1)
                     => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                     -> (obj : t1)
                     -> (location : Maybe WebGLUniformLocation)
                     -> (transpose : Bool)
                     -> (data_ : NS I [ Float32Array , Array Double ])
                     -> (srcOffset : Optional Bits32)
                     -> (srcLength : Optional Bits32)
                     -> JSIO ()
  uniformMatrix2x3fv a b c d e f = primJS
                                 $ WebGL2RenderingContextBase.prim__uniformMatrix2x3fv (up a)
                                                                                       (toFFI b)
                                                                                       (toFFI c)
                                                                                       (toFFI d)
                                                                                       (toFFI e)
                                                                                       (toFFI f)

  export
  uniformMatrix2x3fv' :  (0 _ : JSType t1)
                      => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                      -> (obj : t1)
                      -> (location : Maybe WebGLUniformLocation)
                      -> (transpose : Bool)
                      -> (data_ : NS I [ Float32Array , Array Double ])
                      -> JSIO ()
  uniformMatrix2x3fv' a b c d = primJS
                              $ WebGL2RenderingContextBase.prim__uniformMatrix2x3fv (up a)
                                                                                    (toFFI b)
                                                                                    (toFFI c)
                                                                                    (toFFI d)
                                                                                    undef
                                                                                    undef
  
  export
  uniformMatrix2x4fv :  (0 _ : JSType t1)
                     => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                     -> (obj : t1)
                     -> (location : Maybe WebGLUniformLocation)
                     -> (transpose : Bool)
                     -> (data_ : NS I [ Float32Array , Array Double ])
                     -> (srcOffset : Optional Bits32)
                     -> (srcLength : Optional Bits32)
                     -> JSIO ()
  uniformMatrix2x4fv a b c d e f = primJS
                                 $ WebGL2RenderingContextBase.prim__uniformMatrix2x4fv (up a)
                                                                                       (toFFI b)
                                                                                       (toFFI c)
                                                                                       (toFFI d)
                                                                                       (toFFI e)
                                                                                       (toFFI f)

  export
  uniformMatrix2x4fv' :  (0 _ : JSType t1)
                      => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                      -> (obj : t1)
                      -> (location : Maybe WebGLUniformLocation)
                      -> (transpose : Bool)
                      -> (data_ : NS I [ Float32Array , Array Double ])
                      -> JSIO ()
  uniformMatrix2x4fv' a b c d = primJS
                              $ WebGL2RenderingContextBase.prim__uniformMatrix2x4fv (up a)
                                                                                    (toFFI b)
                                                                                    (toFFI c)
                                                                                    (toFFI d)
                                                                                    undef
                                                                                    undef
  
  export
  uniformMatrix3x2fv :  (0 _ : JSType t1)
                     => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                     -> (obj : t1)
                     -> (location : Maybe WebGLUniformLocation)
                     -> (transpose : Bool)
                     -> (data_ : NS I [ Float32Array , Array Double ])
                     -> (srcOffset : Optional Bits32)
                     -> (srcLength : Optional Bits32)
                     -> JSIO ()
  uniformMatrix3x2fv a b c d e f = primJS
                                 $ WebGL2RenderingContextBase.prim__uniformMatrix3x2fv (up a)
                                                                                       (toFFI b)
                                                                                       (toFFI c)
                                                                                       (toFFI d)
                                                                                       (toFFI e)
                                                                                       (toFFI f)

  export
  uniformMatrix3x2fv' :  (0 _ : JSType t1)
                      => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                      -> (obj : t1)
                      -> (location : Maybe WebGLUniformLocation)
                      -> (transpose : Bool)
                      -> (data_ : NS I [ Float32Array , Array Double ])
                      -> JSIO ()
  uniformMatrix3x2fv' a b c d = primJS
                              $ WebGL2RenderingContextBase.prim__uniformMatrix3x2fv (up a)
                                                                                    (toFFI b)
                                                                                    (toFFI c)
                                                                                    (toFFI d)
                                                                                    undef
                                                                                    undef
  
  export
  uniformMatrix3x4fv :  (0 _ : JSType t1)
                     => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                     -> (obj : t1)
                     -> (location : Maybe WebGLUniformLocation)
                     -> (transpose : Bool)
                     -> (data_ : NS I [ Float32Array , Array Double ])
                     -> (srcOffset : Optional Bits32)
                     -> (srcLength : Optional Bits32)
                     -> JSIO ()
  uniformMatrix3x4fv a b c d e f = primJS
                                 $ WebGL2RenderingContextBase.prim__uniformMatrix3x4fv (up a)
                                                                                       (toFFI b)
                                                                                       (toFFI c)
                                                                                       (toFFI d)
                                                                                       (toFFI e)
                                                                                       (toFFI f)

  export
  uniformMatrix3x4fv' :  (0 _ : JSType t1)
                      => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                      -> (obj : t1)
                      -> (location : Maybe WebGLUniformLocation)
                      -> (transpose : Bool)
                      -> (data_ : NS I [ Float32Array , Array Double ])
                      -> JSIO ()
  uniformMatrix3x4fv' a b c d = primJS
                              $ WebGL2RenderingContextBase.prim__uniformMatrix3x4fv (up a)
                                                                                    (toFFI b)
                                                                                    (toFFI c)
                                                                                    (toFFI d)
                                                                                    undef
                                                                                    undef
  
  export
  uniformMatrix4x2fv :  (0 _ : JSType t1)
                     => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                     -> (obj : t1)
                     -> (location : Maybe WebGLUniformLocation)
                     -> (transpose : Bool)
                     -> (data_ : NS I [ Float32Array , Array Double ])
                     -> (srcOffset : Optional Bits32)
                     -> (srcLength : Optional Bits32)
                     -> JSIO ()
  uniformMatrix4x2fv a b c d e f = primJS
                                 $ WebGL2RenderingContextBase.prim__uniformMatrix4x2fv (up a)
                                                                                       (toFFI b)
                                                                                       (toFFI c)
                                                                                       (toFFI d)
                                                                                       (toFFI e)
                                                                                       (toFFI f)

  export
  uniformMatrix4x2fv' :  (0 _ : JSType t1)
                      => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                      -> (obj : t1)
                      -> (location : Maybe WebGLUniformLocation)
                      -> (transpose : Bool)
                      -> (data_ : NS I [ Float32Array , Array Double ])
                      -> JSIO ()
  uniformMatrix4x2fv' a b c d = primJS
                              $ WebGL2RenderingContextBase.prim__uniformMatrix4x2fv (up a)
                                                                                    (toFFI b)
                                                                                    (toFFI c)
                                                                                    (toFFI d)
                                                                                    undef
                                                                                    undef
  
  export
  uniformMatrix4x3fv :  (0 _ : JSType t1)
                     => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                     -> (obj : t1)
                     -> (location : Maybe WebGLUniformLocation)
                     -> (transpose : Bool)
                     -> (data_ : NS I [ Float32Array , Array Double ])
                     -> (srcOffset : Optional Bits32)
                     -> (srcLength : Optional Bits32)
                     -> JSIO ()
  uniformMatrix4x3fv a b c d e f = primJS
                                 $ WebGL2RenderingContextBase.prim__uniformMatrix4x3fv (up a)
                                                                                       (toFFI b)
                                                                                       (toFFI c)
                                                                                       (toFFI d)
                                                                                       (toFFI e)
                                                                                       (toFFI f)

  export
  uniformMatrix4x3fv' :  (0 _ : JSType t1)
                      => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                      -> (obj : t1)
                      -> (location : Maybe WebGLUniformLocation)
                      -> (transpose : Bool)
                      -> (data_ : NS I [ Float32Array , Array Double ])
                      -> JSIO ()
  uniformMatrix4x3fv' a b c d = primJS
                              $ WebGL2RenderingContextBase.prim__uniformMatrix4x3fv (up a)
                                                                                    (toFFI b)
                                                                                    (toFFI c)
                                                                                    (toFFI d)
                                                                                    undef
                                                                                    undef
  
  export
  vertexAttribDivisor :  (0 _ : JSType t1)
                      => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                      -> (obj : t1)
                      -> (index : Bits32)
                      -> (divisor : Bits32)
                      -> JSIO ()
  vertexAttribDivisor a b c = primJS
                            $ WebGL2RenderingContextBase.prim__vertexAttribDivisor (up a)
                                                                                   b
                                                                                   c
  
  export
  vertexAttribI4i :  (0 _ : JSType t1)
                  => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                  -> (obj : t1)
                  -> (index : Bits32)
                  -> (x : Int32)
                  -> (y : Int32)
                  -> (z : Int32)
                  -> (w : Int32)
                  -> JSIO ()
  vertexAttribI4i a b c d e f = primJS
                              $ WebGL2RenderingContextBase.prim__vertexAttribI4i (up a)
                                                                                 b
                                                                                 c
                                                                                 d
                                                                                 e
                                                                                 f
  
  export
  vertexAttribI4iv :  (0 _ : JSType t1)
                   => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                   -> (obj : t1)
                   -> (index : Bits32)
                   -> (values : NS I [ Int32Array , Array Int32 ])
                   -> JSIO ()
  vertexAttribI4iv a b c = primJS
                         $ WebGL2RenderingContextBase.prim__vertexAttribI4iv (up a)
                                                                             b
                                                                             (toFFI c)
  
  export
  vertexAttribI4ui :  (0 _ : JSType t1)
                   => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                   -> (obj : t1)
                   -> (index : Bits32)
                   -> (x : Bits32)
                   -> (y : Bits32)
                   -> (z : Bits32)
                   -> (w : Bits32)
                   -> JSIO ()
  vertexAttribI4ui a b c d e f = primJS
                               $ WebGL2RenderingContextBase.prim__vertexAttribI4ui (up a)
                                                                                   b
                                                                                   c
                                                                                   d
                                                                                   e
                                                                                   f
  
  export
  vertexAttribI4uiv :  (0 _ : JSType t1)
                    => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                    -> (obj : t1)
                    -> (index : Bits32)
                    -> (values : NS I [ UInt8Array , Array Bits32 ])
                    -> JSIO ()
  vertexAttribI4uiv a b c = primJS
                          $ WebGL2RenderingContextBase.prim__vertexAttribI4uiv (up a)
                                                                               b
                                                                               (toFFI c)
  
  export
  vertexAttribIPointer :  (0 _ : JSType t1)
                       => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
                       -> (obj : t1)
                       -> (index : Bits32)
                       -> (size : Int32)
                       -> (type : Bits32)
                       -> (stride : Int32)
                       -> (offset : JSInt64)
                       -> JSIO ()
  vertexAttribIPointer a b c d e f = primJS
                                   $ WebGL2RenderingContextBase.prim__vertexAttribIPointer (up a)
                                                                                           b
                                                                                           c
                                                                                           d
                                                                                           e
                                                                                           f
  
  export
  waitSync :  (0 _ : JSType t1)
           => {auto 0 _ : Elem WebGL2RenderingContextBase (Types t1)}
           -> (obj : t1)
           -> (sync : WebGLSync)
           -> (flags : Bits32)
           -> (timeout : JSInt64)
           -> JSIO ()
  waitSync a b c d = primJS
                   $ WebGL2RenderingContextBase.prim__waitSync (up a) b c d


namespace WebGL2RenderingContextOverloads
  
  export
  bufferData :  (0 _ : JSType t1)
             => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
             -> (obj : t1)
             -> (target : Bits32)
             -> (size : JSInt64)
             -> (usage : Bits32)
             -> JSIO ()
  bufferData a b c d = primJS
                     $ WebGL2RenderingContextOverloads.prim__bufferData (up a)
                                                                        b
                                                                        c
                                                                        d
  
  export
  bufferData1 :  (0 _ : JSType t1)
              => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
              -> (obj : t1)
              -> (target : Bits32)
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
              -> (usage : Bits32)
              -> JSIO ()
  bufferData1 a b c d = primJS
                      $ WebGL2RenderingContextOverloads.prim__bufferData1 (up a)
                                                                          b
                                                                          (toFFI c)
                                                                          d
  
  export
  bufferData2 :  (0 _ : JSType t1)
              => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
              -> (obj : t1)
              -> (target : Bits32)
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
              -> (usage : Bits32)
              -> (srcOffset : Bits32)
              -> (length : Optional Bits32)
              -> JSIO ()
  bufferData2 a b c d e f = primJS
                          $ WebGL2RenderingContextOverloads.prim__bufferData2 (up a)
                                                                              b
                                                                              (toFFI c)
                                                                              d
                                                                              e
                                                                              (toFFI f)

  export
  bufferData2' :  (0 _ : JSType t1)
               => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
               -> (obj : t1)
               -> (target : Bits32)
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
               -> (usage : Bits32)
               -> (srcOffset : Bits32)
               -> JSIO ()
  bufferData2' a b c d e = primJS
                         $ WebGL2RenderingContextOverloads.prim__bufferData2 (up a)
                                                                             b
                                                                             (toFFI c)
                                                                             d
                                                                             e
                                                                             undef
  
  export
  bufferSubData :  (0 _ : JSType t1)
                => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
                -> (obj : t1)
                -> (target : Bits32)
                -> (dstByteOffset : JSInt64)
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
                        $ WebGL2RenderingContextOverloads.prim__bufferSubData (up a)
                                                                              b
                                                                              c
                                                                              (toFFI d)
  
  export
  bufferSubData1 :  (0 _ : JSType t1)
                 => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
                 -> (obj : t1)
                 -> (target : Bits32)
                 -> (dstByteOffset : JSInt64)
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
                 -> (srcOffset : Bits32)
                 -> (length : Optional Bits32)
                 -> JSIO ()
  bufferSubData1 a b c d e f = primJS
                             $ WebGL2RenderingContextOverloads.prim__bufferSubData1 (up a)
                                                                                    b
                                                                                    c
                                                                                    (toFFI d)
                                                                                    e
                                                                                    (toFFI f)

  export
  bufferSubData1' :  (0 _ : JSType t1)
                  => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
                  -> (obj : t1)
                  -> (target : Bits32)
                  -> (dstByteOffset : JSInt64)
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
                  -> (srcOffset : Bits32)
                  -> JSIO ()
  bufferSubData1' a b c d e = primJS
                            $ WebGL2RenderingContextOverloads.prim__bufferSubData1 (up a)
                                                                                   b
                                                                                   c
                                                                                   (toFFI d)
                                                                                   e
                                                                                   undef
  
  export
  compressedTexImage2D :  (0 _ : JSType t1)
                       => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
                       -> (obj : t1)
                       -> (target : Bits32)
                       -> (level : Int32)
                       -> (internalformat : Bits32)
                       -> (width : Int32)
                       -> (height : Int32)
                       -> (border : Int32)
                       -> (imageSize : Int32)
                       -> (offset : JSInt64)
                       -> JSIO ()
  compressedTexImage2D a b c d e f g h i = primJS
                                         $ WebGL2RenderingContextOverloads.prim__compressedTexImage2D (up a)
                                                                                                      b
                                                                                                      c
                                                                                                      d
                                                                                                      e
                                                                                                      f
                                                                                                      g
                                                                                                      h
                                                                                                      i
  
  export
  compressedTexImage2D1 :  (0 _ : JSType t1)
                        => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
                        -> (obj : t1)
                        -> (target : Bits32)
                        -> (level : Int32)
                        -> (internalformat : Bits32)
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
                        -> (srcOffset : Optional Bits32)
                        -> (srcLengthOverride : Optional Bits32)
                        -> JSIO ()
  compressedTexImage2D1 a b c d e f g h i j = primJS
                                            $ WebGL2RenderingContextOverloads.prim__compressedTexImage2D1 (up a)
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
  compressedTexImage2D1' :  (0 _ : JSType t1)
                         => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
                         -> (obj : t1)
                         -> (target : Bits32)
                         -> (level : Int32)
                         -> (internalformat : Bits32)
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
                                         $ WebGL2RenderingContextOverloads.prim__compressedTexImage2D1 (up a)
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
  compressedTexSubImage2D :  (0 _ : JSType t1)
                          => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
                          -> (obj : t1)
                          -> (target : Bits32)
                          -> (level : Int32)
                          -> (xoffset : Int32)
                          -> (yoffset : Int32)
                          -> (width : Int32)
                          -> (height : Int32)
                          -> (format : Bits32)
                          -> (imageSize : Int32)
                          -> (offset : JSInt64)
                          -> JSIO ()
  compressedTexSubImage2D a b c d e f g h i j = primJS
                                              $ WebGL2RenderingContextOverloads.prim__compressedTexSubImage2D (up a)
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
  compressedTexSubImage2D1 :  (0 _ : JSType t1)
                           => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
                           -> (obj : t1)
                           -> (target : Bits32)
                           -> (level : Int32)
                           -> (xoffset : Int32)
                           -> (yoffset : Int32)
                           -> (width : Int32)
                           -> (height : Int32)
                           -> (format : Bits32)
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
                           -> (srcOffset : Optional Bits32)
                           -> (srcLengthOverride : Optional Bits32)
                           -> JSIO ()
  compressedTexSubImage2D1 a b c d e f g h i j k = primJS
                                                 $ WebGL2RenderingContextOverloads.prim__compressedTexSubImage2D1 (up a)
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
  compressedTexSubImage2D1' :  (0 _ : JSType t1)
                            => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
                            -> (obj : t1)
                            -> (target : Bits32)
                            -> (level : Int32)
                            -> (xoffset : Int32)
                            -> (yoffset : Int32)
                            -> (width : Int32)
                            -> (height : Int32)
                            -> (format : Bits32)
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
                                              $ WebGL2RenderingContextOverloads.prim__compressedTexSubImage2D1 (up a)
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
  readPixels :  (0 _ : JSType t1)
             => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
             -> (obj : t1)
             -> (x : Int32)
             -> (y : Int32)
             -> (width : Int32)
             -> (height : Int32)
             -> (format : Bits32)
             -> (type : Bits32)
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
                             $ WebGL2RenderingContextOverloads.prim__readPixels (up a)
                                                                                b
                                                                                c
                                                                                d
                                                                                e
                                                                                f
                                                                                g
                                                                                (toFFI h)
  
  export
  readPixels1 :  (0 _ : JSType t1)
              => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
              -> (obj : t1)
              -> (x : Int32)
              -> (y : Int32)
              -> (width : Int32)
              -> (height : Int32)
              -> (format : Bits32)
              -> (type : Bits32)
              -> (offset : JSInt64)
              -> JSIO ()
  readPixels1 a b c d e f g h = primJS
                              $ WebGL2RenderingContextOverloads.prim__readPixels1 (up a)
                                                                                  b
                                                                                  c
                                                                                  d
                                                                                  e
                                                                                  f
                                                                                  g
                                                                                  h
  
  export
  readPixels2 :  (0 _ : JSType t1)
              => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
              -> (obj : t1)
              -> (x : Int32)
              -> (y : Int32)
              -> (width : Int32)
              -> (height : Int32)
              -> (format : Bits32)
              -> (type : Bits32)
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
              -> (dstOffset : Bits32)
              -> JSIO ()
  readPixels2 a b c d e f g h i = primJS
                                $ WebGL2RenderingContextOverloads.prim__readPixels2 (up a)
                                                                                    b
                                                                                    c
                                                                                    d
                                                                                    e
                                                                                    f
                                                                                    g
                                                                                    (toFFI h)
                                                                                    i
  
  export
  texImage2D :  (0 _ : JSType t1)
             => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
             -> (obj : t1)
             -> (target : Bits32)
             -> (level : Int32)
             -> (internalformat : Int32)
             -> (width : Int32)
             -> (height : Int32)
             -> (border : Int32)
             -> (format : Bits32)
             -> (type : Bits32)
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
                                 $ WebGL2RenderingContextOverloads.prim__texImage2D (up a)
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
  texImage2D1 :  (0 _ : JSType t1)
              => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
              -> (obj : t1)
              -> (target : Bits32)
              -> (level : Int32)
              -> (internalformat : Int32)
              -> (format : Bits32)
              -> (type : Bits32)
              -> (source : NS I [ ImageBitmap
                                , ImageData
                                , HTMLImageElement
                                , HTMLCanvasElement
                                , HTMLVideoElement
                                , OffscreenCanvas
                                ])
              -> JSIO ()
  texImage2D1 a b c d e f g = primJS
                            $ WebGL2RenderingContextOverloads.prim__texImage2D1 (up a)
                                                                                b
                                                                                c
                                                                                d
                                                                                e
                                                                                f
                                                                                (toFFI g)
  
  export
  texImage2D2 :  (0 _ : JSType t1)
              => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
              -> (obj : t1)
              -> (target : Bits32)
              -> (level : Int32)
              -> (internalformat : Int32)
              -> (width : Int32)
              -> (height : Int32)
              -> (border : Int32)
              -> (format : Bits32)
              -> (type : Bits32)
              -> (pboOffset : JSInt64)
              -> JSIO ()
  texImage2D2 a b c d e f g h i j = primJS
                                  $ WebGL2RenderingContextOverloads.prim__texImage2D2 (up a)
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
  texImage2D3 :  (0 _ : JSType t1)
              => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
              -> (obj : t1)
              -> (target : Bits32)
              -> (level : Int32)
              -> (internalformat : Int32)
              -> (width : Int32)
              -> (height : Int32)
              -> (border : Int32)
              -> (format : Bits32)
              -> (type : Bits32)
              -> (source : NS I [ ImageBitmap
                                , ImageData
                                , HTMLImageElement
                                , HTMLCanvasElement
                                , HTMLVideoElement
                                , OffscreenCanvas
                                ])
              -> JSIO ()
  texImage2D3 a b c d e f g h i j = primJS
                                  $ WebGL2RenderingContextOverloads.prim__texImage2D3 (up a)
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
  texImage2D4 :  (0 _ : JSType t1)
              => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
              -> (obj : t1)
              -> (target : Bits32)
              -> (level : Int32)
              -> (internalformat : Int32)
              -> (width : Int32)
              -> (height : Int32)
              -> (border : Int32)
              -> (format : Bits32)
              -> (type : Bits32)
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
              -> (srcOffset : Bits32)
              -> JSIO ()
  texImage2D4 a b c d e f g h i j k = primJS
                                    $ WebGL2RenderingContextOverloads.prim__texImage2D4 (up a)
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
  texSubImage2D :  (0 _ : JSType t1)
                => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
                -> (obj : t1)
                -> (target : Bits32)
                -> (level : Int32)
                -> (xoffset : Int32)
                -> (yoffset : Int32)
                -> (width : Int32)
                -> (height : Int32)
                -> (format : Bits32)
                -> (type : Bits32)
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
                                    $ WebGL2RenderingContextOverloads.prim__texSubImage2D (up a)
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
  texSubImage2D1 :  (0 _ : JSType t1)
                 => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
                 -> (obj : t1)
                 -> (target : Bits32)
                 -> (level : Int32)
                 -> (xoffset : Int32)
                 -> (yoffset : Int32)
                 -> (format : Bits32)
                 -> (type : Bits32)
                 -> (source : NS I [ ImageBitmap
                                   , ImageData
                                   , HTMLImageElement
                                   , HTMLCanvasElement
                                   , HTMLVideoElement
                                   , OffscreenCanvas
                                   ])
                 -> JSIO ()
  texSubImage2D1 a b c d e f g h = primJS
                                 $ WebGL2RenderingContextOverloads.prim__texSubImage2D1 (up a)
                                                                                        b
                                                                                        c
                                                                                        d
                                                                                        e
                                                                                        f
                                                                                        g
                                                                                        (toFFI h)
  
  export
  texSubImage2D2 :  (0 _ : JSType t1)
                 => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
                 -> (obj : t1)
                 -> (target : Bits32)
                 -> (level : Int32)
                 -> (xoffset : Int32)
                 -> (yoffset : Int32)
                 -> (width : Int32)
                 -> (height : Int32)
                 -> (format : Bits32)
                 -> (type : Bits32)
                 -> (pboOffset : JSInt64)
                 -> JSIO ()
  texSubImage2D2 a b c d e f g h i j = primJS
                                     $ WebGL2RenderingContextOverloads.prim__texSubImage2D2 (up a)
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
  texSubImage2D3 :  (0 _ : JSType t1)
                 => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
                 -> (obj : t1)
                 -> (target : Bits32)
                 -> (level : Int32)
                 -> (xoffset : Int32)
                 -> (yoffset : Int32)
                 -> (width : Int32)
                 -> (height : Int32)
                 -> (format : Bits32)
                 -> (type : Bits32)
                 -> (source : NS I [ ImageBitmap
                                   , ImageData
                                   , HTMLImageElement
                                   , HTMLCanvasElement
                                   , HTMLVideoElement
                                   , OffscreenCanvas
                                   ])
                 -> JSIO ()
  texSubImage2D3 a b c d e f g h i j = primJS
                                     $ WebGL2RenderingContextOverloads.prim__texSubImage2D3 (up a)
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
  texSubImage2D4 :  (0 _ : JSType t1)
                 => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
                 -> (obj : t1)
                 -> (target : Bits32)
                 -> (level : Int32)
                 -> (xoffset : Int32)
                 -> (yoffset : Int32)
                 -> (width : Int32)
                 -> (height : Int32)
                 -> (format : Bits32)
                 -> (type : Bits32)
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
                 -> (srcOffset : Bits32)
                 -> JSIO ()
  texSubImage2D4 a b c d e f g h i j k = primJS
                                       $ WebGL2RenderingContextOverloads.prim__texSubImage2D4 (up a)
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
  uniform1fv :  (0 _ : JSType t1)
             => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
             -> (obj : t1)
             -> (location : Maybe WebGLUniformLocation)
             -> (data_ : NS I [ Float32Array , Array Double ])
             -> (srcOffset : Optional Bits32)
             -> (srcLength : Optional Bits32)
             -> JSIO ()
  uniform1fv a b c d e = primJS
                       $ WebGL2RenderingContextOverloads.prim__uniform1fv (up a)
                                                                          (toFFI b)
                                                                          (toFFI c)
                                                                          (toFFI d)
                                                                          (toFFI e)

  export
  uniform1fv' :  (0 _ : JSType t1)
              => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
              -> (obj : t1)
              -> (location : Maybe WebGLUniformLocation)
              -> (data_ : NS I [ Float32Array , Array Double ])
              -> JSIO ()
  uniform1fv' a b c = primJS
                    $ WebGL2RenderingContextOverloads.prim__uniform1fv (up a)
                                                                       (toFFI b)
                                                                       (toFFI c)
                                                                       undef
                                                                       undef
  
  export
  uniform1iv :  (0 _ : JSType t1)
             => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
             -> (obj : t1)
             -> (location : Maybe WebGLUniformLocation)
             -> (data_ : NS I [ Int32Array , Array Int32 ])
             -> (srcOffset : Optional Bits32)
             -> (srcLength : Optional Bits32)
             -> JSIO ()
  uniform1iv a b c d e = primJS
                       $ WebGL2RenderingContextOverloads.prim__uniform1iv (up a)
                                                                          (toFFI b)
                                                                          (toFFI c)
                                                                          (toFFI d)
                                                                          (toFFI e)

  export
  uniform1iv' :  (0 _ : JSType t1)
              => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
              -> (obj : t1)
              -> (location : Maybe WebGLUniformLocation)
              -> (data_ : NS I [ Int32Array , Array Int32 ])
              -> JSIO ()
  uniform1iv' a b c = primJS
                    $ WebGL2RenderingContextOverloads.prim__uniform1iv (up a)
                                                                       (toFFI b)
                                                                       (toFFI c)
                                                                       undef
                                                                       undef
  
  export
  uniform2fv :  (0 _ : JSType t1)
             => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
             -> (obj : t1)
             -> (location : Maybe WebGLUniformLocation)
             -> (data_ : NS I [ Float32Array , Array Double ])
             -> (srcOffset : Optional Bits32)
             -> (srcLength : Optional Bits32)
             -> JSIO ()
  uniform2fv a b c d e = primJS
                       $ WebGL2RenderingContextOverloads.prim__uniform2fv (up a)
                                                                          (toFFI b)
                                                                          (toFFI c)
                                                                          (toFFI d)
                                                                          (toFFI e)

  export
  uniform2fv' :  (0 _ : JSType t1)
              => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
              -> (obj : t1)
              -> (location : Maybe WebGLUniformLocation)
              -> (data_ : NS I [ Float32Array , Array Double ])
              -> JSIO ()
  uniform2fv' a b c = primJS
                    $ WebGL2RenderingContextOverloads.prim__uniform2fv (up a)
                                                                       (toFFI b)
                                                                       (toFFI c)
                                                                       undef
                                                                       undef
  
  export
  uniform2iv :  (0 _ : JSType t1)
             => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
             -> (obj : t1)
             -> (location : Maybe WebGLUniformLocation)
             -> (data_ : NS I [ Int32Array , Array Int32 ])
             -> (srcOffset : Optional Bits32)
             -> (srcLength : Optional Bits32)
             -> JSIO ()
  uniform2iv a b c d e = primJS
                       $ WebGL2RenderingContextOverloads.prim__uniform2iv (up a)
                                                                          (toFFI b)
                                                                          (toFFI c)
                                                                          (toFFI d)
                                                                          (toFFI e)

  export
  uniform2iv' :  (0 _ : JSType t1)
              => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
              -> (obj : t1)
              -> (location : Maybe WebGLUniformLocation)
              -> (data_ : NS I [ Int32Array , Array Int32 ])
              -> JSIO ()
  uniform2iv' a b c = primJS
                    $ WebGL2RenderingContextOverloads.prim__uniform2iv (up a)
                                                                       (toFFI b)
                                                                       (toFFI c)
                                                                       undef
                                                                       undef
  
  export
  uniform3fv :  (0 _ : JSType t1)
             => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
             -> (obj : t1)
             -> (location : Maybe WebGLUniformLocation)
             -> (data_ : NS I [ Float32Array , Array Double ])
             -> (srcOffset : Optional Bits32)
             -> (srcLength : Optional Bits32)
             -> JSIO ()
  uniform3fv a b c d e = primJS
                       $ WebGL2RenderingContextOverloads.prim__uniform3fv (up a)
                                                                          (toFFI b)
                                                                          (toFFI c)
                                                                          (toFFI d)
                                                                          (toFFI e)

  export
  uniform3fv' :  (0 _ : JSType t1)
              => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
              -> (obj : t1)
              -> (location : Maybe WebGLUniformLocation)
              -> (data_ : NS I [ Float32Array , Array Double ])
              -> JSIO ()
  uniform3fv' a b c = primJS
                    $ WebGL2RenderingContextOverloads.prim__uniform3fv (up a)
                                                                       (toFFI b)
                                                                       (toFFI c)
                                                                       undef
                                                                       undef
  
  export
  uniform3iv :  (0 _ : JSType t1)
             => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
             -> (obj : t1)
             -> (location : Maybe WebGLUniformLocation)
             -> (data_ : NS I [ Int32Array , Array Int32 ])
             -> (srcOffset : Optional Bits32)
             -> (srcLength : Optional Bits32)
             -> JSIO ()
  uniform3iv a b c d e = primJS
                       $ WebGL2RenderingContextOverloads.prim__uniform3iv (up a)
                                                                          (toFFI b)
                                                                          (toFFI c)
                                                                          (toFFI d)
                                                                          (toFFI e)

  export
  uniform3iv' :  (0 _ : JSType t1)
              => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
              -> (obj : t1)
              -> (location : Maybe WebGLUniformLocation)
              -> (data_ : NS I [ Int32Array , Array Int32 ])
              -> JSIO ()
  uniform3iv' a b c = primJS
                    $ WebGL2RenderingContextOverloads.prim__uniform3iv (up a)
                                                                       (toFFI b)
                                                                       (toFFI c)
                                                                       undef
                                                                       undef
  
  export
  uniform4fv :  (0 _ : JSType t1)
             => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
             -> (obj : t1)
             -> (location : Maybe WebGLUniformLocation)
             -> (data_ : NS I [ Float32Array , Array Double ])
             -> (srcOffset : Optional Bits32)
             -> (srcLength : Optional Bits32)
             -> JSIO ()
  uniform4fv a b c d e = primJS
                       $ WebGL2RenderingContextOverloads.prim__uniform4fv (up a)
                                                                          (toFFI b)
                                                                          (toFFI c)
                                                                          (toFFI d)
                                                                          (toFFI e)

  export
  uniform4fv' :  (0 _ : JSType t1)
              => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
              -> (obj : t1)
              -> (location : Maybe WebGLUniformLocation)
              -> (data_ : NS I [ Float32Array , Array Double ])
              -> JSIO ()
  uniform4fv' a b c = primJS
                    $ WebGL2RenderingContextOverloads.prim__uniform4fv (up a)
                                                                       (toFFI b)
                                                                       (toFFI c)
                                                                       undef
                                                                       undef
  
  export
  uniform4iv :  (0 _ : JSType t1)
             => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
             -> (obj : t1)
             -> (location : Maybe WebGLUniformLocation)
             -> (data_ : NS I [ Int32Array , Array Int32 ])
             -> (srcOffset : Optional Bits32)
             -> (srcLength : Optional Bits32)
             -> JSIO ()
  uniform4iv a b c d e = primJS
                       $ WebGL2RenderingContextOverloads.prim__uniform4iv (up a)
                                                                          (toFFI b)
                                                                          (toFFI c)
                                                                          (toFFI d)
                                                                          (toFFI e)

  export
  uniform4iv' :  (0 _ : JSType t1)
              => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
              -> (obj : t1)
              -> (location : Maybe WebGLUniformLocation)
              -> (data_ : NS I [ Int32Array , Array Int32 ])
              -> JSIO ()
  uniform4iv' a b c = primJS
                    $ WebGL2RenderingContextOverloads.prim__uniform4iv (up a)
                                                                       (toFFI b)
                                                                       (toFFI c)
                                                                       undef
                                                                       undef
  
  export
  uniformMatrix2fv :  (0 _ : JSType t1)
                   => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
                   -> (obj : t1)
                   -> (location : Maybe WebGLUniformLocation)
                   -> (transpose : Bool)
                   -> (data_ : NS I [ Float32Array , Array Double ])
                   -> (srcOffset : Optional Bits32)
                   -> (srcLength : Optional Bits32)
                   -> JSIO ()
  uniformMatrix2fv a b c d e f = primJS
                               $ WebGL2RenderingContextOverloads.prim__uniformMatrix2fv (up a)
                                                                                        (toFFI b)
                                                                                        (toFFI c)
                                                                                        (toFFI d)
                                                                                        (toFFI e)
                                                                                        (toFFI f)

  export
  uniformMatrix2fv' :  (0 _ : JSType t1)
                    => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
                    -> (obj : t1)
                    -> (location : Maybe WebGLUniformLocation)
                    -> (transpose : Bool)
                    -> (data_ : NS I [ Float32Array , Array Double ])
                    -> JSIO ()
  uniformMatrix2fv' a b c d = primJS
                            $ WebGL2RenderingContextOverloads.prim__uniformMatrix2fv (up a)
                                                                                     (toFFI b)
                                                                                     (toFFI c)
                                                                                     (toFFI d)
                                                                                     undef
                                                                                     undef
  
  export
  uniformMatrix3fv :  (0 _ : JSType t1)
                   => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
                   -> (obj : t1)
                   -> (location : Maybe WebGLUniformLocation)
                   -> (transpose : Bool)
                   -> (data_ : NS I [ Float32Array , Array Double ])
                   -> (srcOffset : Optional Bits32)
                   -> (srcLength : Optional Bits32)
                   -> JSIO ()
  uniformMatrix3fv a b c d e f = primJS
                               $ WebGL2RenderingContextOverloads.prim__uniformMatrix3fv (up a)
                                                                                        (toFFI b)
                                                                                        (toFFI c)
                                                                                        (toFFI d)
                                                                                        (toFFI e)
                                                                                        (toFFI f)

  export
  uniformMatrix3fv' :  (0 _ : JSType t1)
                    => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
                    -> (obj : t1)
                    -> (location : Maybe WebGLUniformLocation)
                    -> (transpose : Bool)
                    -> (data_ : NS I [ Float32Array , Array Double ])
                    -> JSIO ()
  uniformMatrix3fv' a b c d = primJS
                            $ WebGL2RenderingContextOverloads.prim__uniformMatrix3fv (up a)
                                                                                     (toFFI b)
                                                                                     (toFFI c)
                                                                                     (toFFI d)
                                                                                     undef
                                                                                     undef
  
  export
  uniformMatrix4fv :  (0 _ : JSType t1)
                   => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
                   -> (obj : t1)
                   -> (location : Maybe WebGLUniformLocation)
                   -> (transpose : Bool)
                   -> (data_ : NS I [ Float32Array , Array Double ])
                   -> (srcOffset : Optional Bits32)
                   -> (srcLength : Optional Bits32)
                   -> JSIO ()
  uniformMatrix4fv a b c d e f = primJS
                               $ WebGL2RenderingContextOverloads.prim__uniformMatrix4fv (up a)
                                                                                        (toFFI b)
                                                                                        (toFFI c)
                                                                                        (toFFI d)
                                                                                        (toFFI e)
                                                                                        (toFFI f)

  export
  uniformMatrix4fv' :  (0 _ : JSType t1)
                    => {auto 0 _ : Elem WebGL2RenderingContextOverloads (Types t1)}
                    -> (obj : t1)
                    -> (location : Maybe WebGLUniformLocation)
                    -> (transpose : Bool)
                    -> (data_ : NS I [ Float32Array , Array Double ])
                    -> JSIO ()
  uniformMatrix4fv' a b c d = primJS
                            $ WebGL2RenderingContextOverloads.prim__uniformMatrix4fv (up a)
                                                                                     (toFFI b)
                                                                                     (toFFI c)
                                                                                     (toFFI d)
                                                                                     undef
                                                                                     undef


namespace WebGLRenderingContextBase
  
  public export
  ACTIVE_ATTRIBUTES : Bits32
  ACTIVE_ATTRIBUTES = 0x8B89
  
  public export
  ACTIVE_TEXTURE : Bits32
  ACTIVE_TEXTURE = 0x84E0
  
  public export
  ACTIVE_UNIFORMS : Bits32
  ACTIVE_UNIFORMS = 0x8B86
  
  public export
  ALIASED_LINE_WIDTH_RANGE : Bits32
  ALIASED_LINE_WIDTH_RANGE = 0x846E
  
  public export
  ALIASED_POINT_SIZE_RANGE : Bits32
  ALIASED_POINT_SIZE_RANGE = 0x846D
  
  public export
  ALPHA : Bits32
  ALPHA = 0x1906
  
  public export
  ALPHA_BITS : Bits32
  ALPHA_BITS = 0xD55
  
  public export
  ALWAYS : Bits32
  ALWAYS = 0x207
  
  public export
  ARRAY_BUFFER : Bits32
  ARRAY_BUFFER = 0x8892
  
  public export
  ARRAY_BUFFER_BINDING : Bits32
  ARRAY_BUFFER_BINDING = 0x8894
  
  public export
  ATTACHED_SHADERS : Bits32
  ATTACHED_SHADERS = 0x8B85
  
  public export
  BACK : Bits32
  BACK = 0x405
  
  public export
  BLEND : Bits32
  BLEND = 0xBE2
  
  public export
  BLEND_COLOR : Bits32
  BLEND_COLOR = 0x8005
  
  public export
  BLEND_DST_ALPHA : Bits32
  BLEND_DST_ALPHA = 0x80CA
  
  public export
  BLEND_DST_RGB : Bits32
  BLEND_DST_RGB = 0x80C8
  
  public export
  BLEND_EQUATION : Bits32
  BLEND_EQUATION = 0x8009
  
  public export
  BLEND_EQUATION_ALPHA : Bits32
  BLEND_EQUATION_ALPHA = 0x883D
  
  public export
  BLEND_EQUATION_RGB : Bits32
  BLEND_EQUATION_RGB = 0x8009
  
  public export
  BLEND_SRC_ALPHA : Bits32
  BLEND_SRC_ALPHA = 0x80CB
  
  public export
  BLEND_SRC_RGB : Bits32
  BLEND_SRC_RGB = 0x80C9
  
  public export
  BLUE_BITS : Bits32
  BLUE_BITS = 0xD54
  
  public export
  BOOL : Bits32
  BOOL = 0x8B56
  
  public export
  BOOL_VEC2 : Bits32
  BOOL_VEC2 = 0x8B57
  
  public export
  BOOL_VEC3 : Bits32
  BOOL_VEC3 = 0x8B58
  
  public export
  BOOL_VEC4 : Bits32
  BOOL_VEC4 = 0x8B59
  
  public export
  BROWSER_DEFAULT_WEBGL : Bits32
  BROWSER_DEFAULT_WEBGL = 0x9244
  
  public export
  BUFFER_SIZE : Bits32
  BUFFER_SIZE = 0x8764
  
  public export
  BUFFER_USAGE : Bits32
  BUFFER_USAGE = 0x8765
  
  public export
  BYTE : Bits32
  BYTE = 0x1400
  
  public export
  CCW : Bits32
  CCW = 0x901
  
  public export
  CLAMP_TO_EDGE : Bits32
  CLAMP_TO_EDGE = 0x812F
  
  public export
  COLOR_ATTACHMENT0 : Bits32
  COLOR_ATTACHMENT0 = 0x8CE0
  
  public export
  COLOR_BUFFER_BIT : Bits32
  COLOR_BUFFER_BIT = 0x4000
  
  public export
  COLOR_CLEAR_VALUE : Bits32
  COLOR_CLEAR_VALUE = 0xC22
  
  public export
  COLOR_WRITEMASK : Bits32
  COLOR_WRITEMASK = 0xC23
  
  public export
  COMPILE_STATUS : Bits32
  COMPILE_STATUS = 0x8B81
  
  public export
  COMPRESSED_TEXTURE_FORMATS : Bits32
  COMPRESSED_TEXTURE_FORMATS = 0x86A3
  
  public export
  CONSTANT_ALPHA : Bits32
  CONSTANT_ALPHA = 0x8003
  
  public export
  CONSTANT_COLOR : Bits32
  CONSTANT_COLOR = 0x8001
  
  public export
  CONTEXT_LOST_WEBGL : Bits32
  CONTEXT_LOST_WEBGL = 0x9242
  
  public export
  CULL_FACE : Bits32
  CULL_FACE = 0xB44
  
  public export
  CULL_FACE_MODE : Bits32
  CULL_FACE_MODE = 0xB45
  
  public export
  CURRENT_PROGRAM : Bits32
  CURRENT_PROGRAM = 0x8B8D
  
  public export
  CURRENT_VERTEX_ATTRIB : Bits32
  CURRENT_VERTEX_ATTRIB = 0x8626
  
  public export
  CW : Bits32
  CW = 0x900
  
  public export
  DECR : Bits32
  DECR = 0x1E03
  
  public export
  DECR_WRAP : Bits32
  DECR_WRAP = 0x8508
  
  public export
  DELETE_STATUS : Bits32
  DELETE_STATUS = 0x8B80
  
  public export
  DEPTH_ATTACHMENT : Bits32
  DEPTH_ATTACHMENT = 0x8D00
  
  public export
  DEPTH_BITS : Bits32
  DEPTH_BITS = 0xD56
  
  public export
  DEPTH_BUFFER_BIT : Bits32
  DEPTH_BUFFER_BIT = 0x100
  
  public export
  DEPTH_CLEAR_VALUE : Bits32
  DEPTH_CLEAR_VALUE = 0xB73
  
  public export
  DEPTH_COMPONENT : Bits32
  DEPTH_COMPONENT = 0x1902
  
  public export
  DEPTH_COMPONENT16 : Bits32
  DEPTH_COMPONENT16 = 0x81A5
  
  public export
  DEPTH_FUNC : Bits32
  DEPTH_FUNC = 0xB74
  
  public export
  DEPTH_RANGE : Bits32
  DEPTH_RANGE = 0xB70
  
  public export
  DEPTH_STENCIL : Bits32
  DEPTH_STENCIL = 0x84F9
  
  public export
  DEPTH_STENCIL_ATTACHMENT : Bits32
  DEPTH_STENCIL_ATTACHMENT = 0x821A
  
  public export
  DEPTH_TEST : Bits32
  DEPTH_TEST = 0xB71
  
  public export
  DEPTH_WRITEMASK : Bits32
  DEPTH_WRITEMASK = 0xB72
  
  public export
  DITHER : Bits32
  DITHER = 0xBD0
  
  public export
  DONT_CARE : Bits32
  DONT_CARE = 0x1100
  
  public export
  DST_ALPHA : Bits32
  DST_ALPHA = 0x304
  
  public export
  DST_COLOR : Bits32
  DST_COLOR = 0x306
  
  public export
  DYNAMIC_DRAW : Bits32
  DYNAMIC_DRAW = 0x88E8
  
  public export
  ELEMENT_ARRAY_BUFFER : Bits32
  ELEMENT_ARRAY_BUFFER = 0x8893
  
  public export
  ELEMENT_ARRAY_BUFFER_BINDING : Bits32
  ELEMENT_ARRAY_BUFFER_BINDING = 0x8895
  
  public export
  EQUAL : Bits32
  EQUAL = 0x202
  
  public export
  FASTEST : Bits32
  FASTEST = 0x1101
  
  public export
  FLOAT : Bits32
  FLOAT = 0x1406
  
  public export
  FLOAT_MAT2 : Bits32
  FLOAT_MAT2 = 0x8B5A
  
  public export
  FLOAT_MAT3 : Bits32
  FLOAT_MAT3 = 0x8B5B
  
  public export
  FLOAT_MAT4 : Bits32
  FLOAT_MAT4 = 0x8B5C
  
  public export
  FLOAT_VEC2 : Bits32
  FLOAT_VEC2 = 0x8B50
  
  public export
  FLOAT_VEC3 : Bits32
  FLOAT_VEC3 = 0x8B51
  
  public export
  FLOAT_VEC4 : Bits32
  FLOAT_VEC4 = 0x8B52
  
  public export
  FRAGMENT_SHADER : Bits32
  FRAGMENT_SHADER = 0x8B30
  
  public export
  FRAMEBUFFER : Bits32
  FRAMEBUFFER = 0x8D40
  
  public export
  FRAMEBUFFER_ATTACHMENT_OBJECT_NAME : Bits32
  FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = 0x8CD1
  
  public export
  FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE : Bits32
  FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 0x8CD0
  
  public export
  FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE : Bits32
  FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = 0x8CD3
  
  public export
  FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL : Bits32
  FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = 0x8CD2
  
  public export
  FRAMEBUFFER_BINDING : Bits32
  FRAMEBUFFER_BINDING = 0x8CA6
  
  public export
  FRAMEBUFFER_COMPLETE : Bits32
  FRAMEBUFFER_COMPLETE = 0x8CD5
  
  public export
  FRAMEBUFFER_INCOMPLETE_ATTACHMENT : Bits32
  FRAMEBUFFER_INCOMPLETE_ATTACHMENT = 0x8CD6
  
  public export
  FRAMEBUFFER_INCOMPLETE_DIMENSIONS : Bits32
  FRAMEBUFFER_INCOMPLETE_DIMENSIONS = 0x8CD9
  
  public export
  FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT : Bits32
  FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = 0x8CD7
  
  public export
  FRAMEBUFFER_UNSUPPORTED : Bits32
  FRAMEBUFFER_UNSUPPORTED = 0x8CDD
  
  public export
  FRONT : Bits32
  FRONT = 0x404
  
  public export
  FRONT_AND_BACK : Bits32
  FRONT_AND_BACK = 0x408
  
  public export
  FRONT_FACE : Bits32
  FRONT_FACE = 0xB46
  
  public export
  FUNC_ADD : Bits32
  FUNC_ADD = 0x8006
  
  public export
  FUNC_REVERSE_SUBTRACT : Bits32
  FUNC_REVERSE_SUBTRACT = 0x800B
  
  public export
  FUNC_SUBTRACT : Bits32
  FUNC_SUBTRACT = 0x800A
  
  public export
  GENERATE_MIPMAP_HINT : Bits32
  GENERATE_MIPMAP_HINT = 0x8192
  
  public export
  GEQUAL : Bits32
  GEQUAL = 0x206
  
  public export
  GREATER : Bits32
  GREATER = 0x204
  
  public export
  GREEN_BITS : Bits32
  GREEN_BITS = 0xD53
  
  public export
  HIGH_FLOAT : Bits32
  HIGH_FLOAT = 0x8DF2
  
  public export
  HIGH_INT : Bits32
  HIGH_INT = 0x8DF5
  
  public export
  IMPLEMENTATION_COLOR_READ_FORMAT : Bits32
  IMPLEMENTATION_COLOR_READ_FORMAT = 0x8B9B
  
  public export
  IMPLEMENTATION_COLOR_READ_TYPE : Bits32
  IMPLEMENTATION_COLOR_READ_TYPE = 0x8B9A
  
  public export
  INCR : Bits32
  INCR = 0x1E02
  
  public export
  INCR_WRAP : Bits32
  INCR_WRAP = 0x8507
  
  public export
  INT : Bits32
  INT = 0x1404
  
  public export
  INT_VEC2 : Bits32
  INT_VEC2 = 0x8B53
  
  public export
  INT_VEC3 : Bits32
  INT_VEC3 = 0x8B54
  
  public export
  INT_VEC4 : Bits32
  INT_VEC4 = 0x8B55
  
  public export
  INVALID_ENUM : Bits32
  INVALID_ENUM = 0x500
  
  public export
  INVALID_FRAMEBUFFER_OPERATION : Bits32
  INVALID_FRAMEBUFFER_OPERATION = 0x506
  
  public export
  INVALID_OPERATION : Bits32
  INVALID_OPERATION = 0x502
  
  public export
  INVALID_VALUE : Bits32
  INVALID_VALUE = 0x501
  
  public export
  INVERT : Bits32
  INVERT = 0x150A
  
  public export
  KEEP : Bits32
  KEEP = 0x1E00
  
  public export
  LEQUAL : Bits32
  LEQUAL = 0x203
  
  public export
  LESS : Bits32
  LESS = 0x201
  
  public export
  LINEAR : Bits32
  LINEAR = 0x2601
  
  public export
  LINEAR_MIPMAP_LINEAR : Bits32
  LINEAR_MIPMAP_LINEAR = 0x2703
  
  public export
  LINEAR_MIPMAP_NEAREST : Bits32
  LINEAR_MIPMAP_NEAREST = 0x2701
  
  public export
  LINES : Bits32
  LINES = 0x1
  
  public export
  LINE_LOOP : Bits32
  LINE_LOOP = 0x2
  
  public export
  LINE_STRIP : Bits32
  LINE_STRIP = 0x3
  
  public export
  LINE_WIDTH : Bits32
  LINE_WIDTH = 0xB21
  
  public export
  LINK_STATUS : Bits32
  LINK_STATUS = 0x8B82
  
  public export
  LOW_FLOAT : Bits32
  LOW_FLOAT = 0x8DF0
  
  public export
  LOW_INT : Bits32
  LOW_INT = 0x8DF3
  
  public export
  LUMINANCE : Bits32
  LUMINANCE = 0x1909
  
  public export
  LUMINANCE_ALPHA : Bits32
  LUMINANCE_ALPHA = 0x190A
  
  public export
  MAX_COMBINED_TEXTURE_IMAGE_UNITS : Bits32
  MAX_COMBINED_TEXTURE_IMAGE_UNITS = 0x8B4D
  
  public export
  MAX_CUBE_MAP_TEXTURE_SIZE : Bits32
  MAX_CUBE_MAP_TEXTURE_SIZE = 0x851C
  
  public export
  MAX_FRAGMENT_UNIFORM_VECTORS : Bits32
  MAX_FRAGMENT_UNIFORM_VECTORS = 0x8DFD
  
  public export
  MAX_RENDERBUFFER_SIZE : Bits32
  MAX_RENDERBUFFER_SIZE = 0x84E8
  
  public export
  MAX_TEXTURE_IMAGE_UNITS : Bits32
  MAX_TEXTURE_IMAGE_UNITS = 0x8872
  
  public export
  MAX_TEXTURE_SIZE : Bits32
  MAX_TEXTURE_SIZE = 0xD33
  
  public export
  MAX_VARYING_VECTORS : Bits32
  MAX_VARYING_VECTORS = 0x8DFC
  
  public export
  MAX_VERTEX_ATTRIBS : Bits32
  MAX_VERTEX_ATTRIBS = 0x8869
  
  public export
  MAX_VERTEX_TEXTURE_IMAGE_UNITS : Bits32
  MAX_VERTEX_TEXTURE_IMAGE_UNITS = 0x8B4C
  
  public export
  MAX_VERTEX_UNIFORM_VECTORS : Bits32
  MAX_VERTEX_UNIFORM_VECTORS = 0x8DFB
  
  public export
  MAX_VIEWPORT_DIMS : Bits32
  MAX_VIEWPORT_DIMS = 0xD3A
  
  public export
  MEDIUM_FLOAT : Bits32
  MEDIUM_FLOAT = 0x8DF1
  
  public export
  MEDIUM_INT : Bits32
  MEDIUM_INT = 0x8DF4
  
  public export
  MIRRORED_REPEAT : Bits32
  MIRRORED_REPEAT = 0x8370
  
  public export
  NEAREST : Bits32
  NEAREST = 0x2600
  
  public export
  NEAREST_MIPMAP_LINEAR : Bits32
  NEAREST_MIPMAP_LINEAR = 0x2702
  
  public export
  NEAREST_MIPMAP_NEAREST : Bits32
  NEAREST_MIPMAP_NEAREST = 0x2700
  
  public export
  NEVER : Bits32
  NEVER = 0x200
  
  public export
  NICEST : Bits32
  NICEST = 0x1102
  
  public export
  NONE : Bits32
  NONE = 0
  
  public export
  NOTEQUAL : Bits32
  NOTEQUAL = 0x205
  
  public export
  NO_ERROR : Bits32
  NO_ERROR = 0
  
  public export
  ONE : Bits32
  ONE = 1
  
  public export
  ONE_MINUS_CONSTANT_ALPHA : Bits32
  ONE_MINUS_CONSTANT_ALPHA = 0x8004
  
  public export
  ONE_MINUS_CONSTANT_COLOR : Bits32
  ONE_MINUS_CONSTANT_COLOR = 0x8002
  
  public export
  ONE_MINUS_DST_ALPHA : Bits32
  ONE_MINUS_DST_ALPHA = 0x305
  
  public export
  ONE_MINUS_DST_COLOR : Bits32
  ONE_MINUS_DST_COLOR = 0x307
  
  public export
  ONE_MINUS_SRC_ALPHA : Bits32
  ONE_MINUS_SRC_ALPHA = 0x303
  
  public export
  ONE_MINUS_SRC_COLOR : Bits32
  ONE_MINUS_SRC_COLOR = 0x301
  
  public export
  OUT_OF_MEMORY : Bits32
  OUT_OF_MEMORY = 0x505
  
  public export
  PACK_ALIGNMENT : Bits32
  PACK_ALIGNMENT = 0xD05
  
  public export
  POINTS : Bits32
  POINTS = 0x0
  
  public export
  POLYGON_OFFSET_FACTOR : Bits32
  POLYGON_OFFSET_FACTOR = 0x8038
  
  public export
  POLYGON_OFFSET_FILL : Bits32
  POLYGON_OFFSET_FILL = 0x8037
  
  public export
  POLYGON_OFFSET_UNITS : Bits32
  POLYGON_OFFSET_UNITS = 0x2A00
  
  public export
  RED_BITS : Bits32
  RED_BITS = 0xD52
  
  public export
  RENDERBUFFER : Bits32
  RENDERBUFFER = 0x8D41
  
  public export
  RENDERBUFFER_ALPHA_SIZE : Bits32
  RENDERBUFFER_ALPHA_SIZE = 0x8D53
  
  public export
  RENDERBUFFER_BINDING : Bits32
  RENDERBUFFER_BINDING = 0x8CA7
  
  public export
  RENDERBUFFER_BLUE_SIZE : Bits32
  RENDERBUFFER_BLUE_SIZE = 0x8D52
  
  public export
  RENDERBUFFER_DEPTH_SIZE : Bits32
  RENDERBUFFER_DEPTH_SIZE = 0x8D54
  
  public export
  RENDERBUFFER_GREEN_SIZE : Bits32
  RENDERBUFFER_GREEN_SIZE = 0x8D51
  
  public export
  RENDERBUFFER_HEIGHT : Bits32
  RENDERBUFFER_HEIGHT = 0x8D43
  
  public export
  RENDERBUFFER_INTERNAL_FORMAT : Bits32
  RENDERBUFFER_INTERNAL_FORMAT = 0x8D44
  
  public export
  RENDERBUFFER_RED_SIZE : Bits32
  RENDERBUFFER_RED_SIZE = 0x8D50
  
  public export
  RENDERBUFFER_STENCIL_SIZE : Bits32
  RENDERBUFFER_STENCIL_SIZE = 0x8D55
  
  public export
  RENDERBUFFER_WIDTH : Bits32
  RENDERBUFFER_WIDTH = 0x8D42
  
  public export
  RENDERER : Bits32
  RENDERER = 0x1F01
  
  public export
  REPEAT : Bits32
  REPEAT = 0x2901
  
  public export
  REPLACE : Bits32
  REPLACE = 0x1E01
  
  public export
  RGB : Bits32
  RGB = 0x1907
  
  public export
  RGB565 : Bits32
  RGB565 = 0x8D62
  
  public export
  RGB5_A1 : Bits32
  RGB5_A1 = 0x8057
  
  public export
  RGBA : Bits32
  RGBA = 0x1908
  
  public export
  RGBA4 : Bits32
  RGBA4 = 0x8056
  
  public export
  SAMPLER_2D : Bits32
  SAMPLER_2D = 0x8B5E
  
  public export
  SAMPLER_CUBE : Bits32
  SAMPLER_CUBE = 0x8B60
  
  public export
  SAMPLES : Bits32
  SAMPLES = 0x80A9
  
  public export
  SAMPLE_ALPHA_TO_COVERAGE : Bits32
  SAMPLE_ALPHA_TO_COVERAGE = 0x809E
  
  public export
  SAMPLE_BUFFERS : Bits32
  SAMPLE_BUFFERS = 0x80A8
  
  public export
  SAMPLE_COVERAGE : Bits32
  SAMPLE_COVERAGE = 0x80A0
  
  public export
  SAMPLE_COVERAGE_INVERT : Bits32
  SAMPLE_COVERAGE_INVERT = 0x80AB
  
  public export
  SAMPLE_COVERAGE_VALUE : Bits32
  SAMPLE_COVERAGE_VALUE = 0x80AA
  
  public export
  SCISSOR_BOX : Bits32
  SCISSOR_BOX = 0xC10
  
  public export
  SCISSOR_TEST : Bits32
  SCISSOR_TEST = 0xC11
  
  public export
  SHADER_TYPE : Bits32
  SHADER_TYPE = 0x8B4F
  
  public export
  SHADING_LANGUAGE_VERSION : Bits32
  SHADING_LANGUAGE_VERSION = 0x8B8C
  
  public export
  SHORT : Bits32
  SHORT = 0x1402
  
  public export
  SRC_ALPHA : Bits32
  SRC_ALPHA = 0x302
  
  public export
  SRC_ALPHA_SATURATE : Bits32
  SRC_ALPHA_SATURATE = 0x308
  
  public export
  SRC_COLOR : Bits32
  SRC_COLOR = 0x300
  
  public export
  STATIC_DRAW : Bits32
  STATIC_DRAW = 0x88E4
  
  public export
  STENCIL_ATTACHMENT : Bits32
  STENCIL_ATTACHMENT = 0x8D20
  
  public export
  STENCIL_BACK_FAIL : Bits32
  STENCIL_BACK_FAIL = 0x8801
  
  public export
  STENCIL_BACK_FUNC : Bits32
  STENCIL_BACK_FUNC = 0x8800
  
  public export
  STENCIL_BACK_PASS_DEPTH_FAIL : Bits32
  STENCIL_BACK_PASS_DEPTH_FAIL = 0x8802
  
  public export
  STENCIL_BACK_PASS_DEPTH_PASS : Bits32
  STENCIL_BACK_PASS_DEPTH_PASS = 0x8803
  
  public export
  STENCIL_BACK_REF : Bits32
  STENCIL_BACK_REF = 0x8CA3
  
  public export
  STENCIL_BACK_VALUE_MASK : Bits32
  STENCIL_BACK_VALUE_MASK = 0x8CA4
  
  public export
  STENCIL_BACK_WRITEMASK : Bits32
  STENCIL_BACK_WRITEMASK = 0x8CA5
  
  public export
  STENCIL_BITS : Bits32
  STENCIL_BITS = 0xD57
  
  public export
  STENCIL_BUFFER_BIT : Bits32
  STENCIL_BUFFER_BIT = 0x400
  
  public export
  STENCIL_CLEAR_VALUE : Bits32
  STENCIL_CLEAR_VALUE = 0xB91
  
  public export
  STENCIL_FAIL : Bits32
  STENCIL_FAIL = 0xB94
  
  public export
  STENCIL_FUNC : Bits32
  STENCIL_FUNC = 0xB92
  
  public export
  STENCIL_INDEX8 : Bits32
  STENCIL_INDEX8 = 0x8D48
  
  public export
  STENCIL_PASS_DEPTH_FAIL : Bits32
  STENCIL_PASS_DEPTH_FAIL = 0xB95
  
  public export
  STENCIL_PASS_DEPTH_PASS : Bits32
  STENCIL_PASS_DEPTH_PASS = 0xB96
  
  public export
  STENCIL_REF : Bits32
  STENCIL_REF = 0xB97
  
  public export
  STENCIL_TEST : Bits32
  STENCIL_TEST = 0xB90
  
  public export
  STENCIL_VALUE_MASK : Bits32
  STENCIL_VALUE_MASK = 0xB93
  
  public export
  STENCIL_WRITEMASK : Bits32
  STENCIL_WRITEMASK = 0xB98
  
  public export
  STREAM_DRAW : Bits32
  STREAM_DRAW = 0x88E0
  
  public export
  SUBPIXEL_BITS : Bits32
  SUBPIXEL_BITS = 0xD50
  
  public export
  TEXTURE : Bits32
  TEXTURE = 0x1702
  
  public export
  TEXTURE0 : Bits32
  TEXTURE0 = 0x84C0
  
  public export
  TEXTURE1 : Bits32
  TEXTURE1 = 0x84C1
  
  public export
  TEXTURE10 : Bits32
  TEXTURE10 = 0x84CA
  
  public export
  TEXTURE11 : Bits32
  TEXTURE11 = 0x84CB
  
  public export
  TEXTURE12 : Bits32
  TEXTURE12 = 0x84CC
  
  public export
  TEXTURE13 : Bits32
  TEXTURE13 = 0x84CD
  
  public export
  TEXTURE14 : Bits32
  TEXTURE14 = 0x84CE
  
  public export
  TEXTURE15 : Bits32
  TEXTURE15 = 0x84CF
  
  public export
  TEXTURE16 : Bits32
  TEXTURE16 = 0x84D0
  
  public export
  TEXTURE17 : Bits32
  TEXTURE17 = 0x84D1
  
  public export
  TEXTURE18 : Bits32
  TEXTURE18 = 0x84D2
  
  public export
  TEXTURE19 : Bits32
  TEXTURE19 = 0x84D3
  
  public export
  TEXTURE2 : Bits32
  TEXTURE2 = 0x84C2
  
  public export
  TEXTURE20 : Bits32
  TEXTURE20 = 0x84D4
  
  public export
  TEXTURE21 : Bits32
  TEXTURE21 = 0x84D5
  
  public export
  TEXTURE22 : Bits32
  TEXTURE22 = 0x84D6
  
  public export
  TEXTURE23 : Bits32
  TEXTURE23 = 0x84D7
  
  public export
  TEXTURE24 : Bits32
  TEXTURE24 = 0x84D8
  
  public export
  TEXTURE25 : Bits32
  TEXTURE25 = 0x84D9
  
  public export
  TEXTURE26 : Bits32
  TEXTURE26 = 0x84DA
  
  public export
  TEXTURE27 : Bits32
  TEXTURE27 = 0x84DB
  
  public export
  TEXTURE28 : Bits32
  TEXTURE28 = 0x84DC
  
  public export
  TEXTURE29 : Bits32
  TEXTURE29 = 0x84DD
  
  public export
  TEXTURE3 : Bits32
  TEXTURE3 = 0x84C3
  
  public export
  TEXTURE30 : Bits32
  TEXTURE30 = 0x84DE
  
  public export
  TEXTURE31 : Bits32
  TEXTURE31 = 0x84DF
  
  public export
  TEXTURE4 : Bits32
  TEXTURE4 = 0x84C4
  
  public export
  TEXTURE5 : Bits32
  TEXTURE5 = 0x84C5
  
  public export
  TEXTURE6 : Bits32
  TEXTURE6 = 0x84C6
  
  public export
  TEXTURE7 : Bits32
  TEXTURE7 = 0x84C7
  
  public export
  TEXTURE8 : Bits32
  TEXTURE8 = 0x84C8
  
  public export
  TEXTURE9 : Bits32
  TEXTURE9 = 0x84C9
  
  public export
  TEXTURE_2D : Bits32
  TEXTURE_2D = 0xDE1
  
  public export
  TEXTURE_BINDING_2D : Bits32
  TEXTURE_BINDING_2D = 0x8069
  
  public export
  TEXTURE_BINDING_CUBE_MAP : Bits32
  TEXTURE_BINDING_CUBE_MAP = 0x8514
  
  public export
  TEXTURE_CUBE_MAP : Bits32
  TEXTURE_CUBE_MAP = 0x8513
  
  public export
  TEXTURE_CUBE_MAP_NEGATIVE_X : Bits32
  TEXTURE_CUBE_MAP_NEGATIVE_X = 0x8516
  
  public export
  TEXTURE_CUBE_MAP_NEGATIVE_Y : Bits32
  TEXTURE_CUBE_MAP_NEGATIVE_Y = 0x8518
  
  public export
  TEXTURE_CUBE_MAP_NEGATIVE_Z : Bits32
  TEXTURE_CUBE_MAP_NEGATIVE_Z = 0x851A
  
  public export
  TEXTURE_CUBE_MAP_POSITIVE_X : Bits32
  TEXTURE_CUBE_MAP_POSITIVE_X = 0x8515
  
  public export
  TEXTURE_CUBE_MAP_POSITIVE_Y : Bits32
  TEXTURE_CUBE_MAP_POSITIVE_Y = 0x8517
  
  public export
  TEXTURE_CUBE_MAP_POSITIVE_Z : Bits32
  TEXTURE_CUBE_MAP_POSITIVE_Z = 0x8519
  
  public export
  TEXTURE_MAG_FILTER : Bits32
  TEXTURE_MAG_FILTER = 0x2800
  
  public export
  TEXTURE_MIN_FILTER : Bits32
  TEXTURE_MIN_FILTER = 0x2801
  
  public export
  TEXTURE_WRAP_S : Bits32
  TEXTURE_WRAP_S = 0x2802
  
  public export
  TEXTURE_WRAP_T : Bits32
  TEXTURE_WRAP_T = 0x2803
  
  public export
  TRIANGLES : Bits32
  TRIANGLES = 0x4
  
  public export
  TRIANGLE_FAN : Bits32
  TRIANGLE_FAN = 0x6
  
  public export
  TRIANGLE_STRIP : Bits32
  TRIANGLE_STRIP = 0x5
  
  public export
  UNPACK_ALIGNMENT : Bits32
  UNPACK_ALIGNMENT = 0xCF5
  
  public export
  UNPACK_COLORSPACE_CONVERSION_WEBGL : Bits32
  UNPACK_COLORSPACE_CONVERSION_WEBGL = 0x9243
  
  public export
  UNPACK_FLIP_Y_WEBGL : Bits32
  UNPACK_FLIP_Y_WEBGL = 0x9240
  
  public export
  UNPACK_PREMULTIPLY_ALPHA_WEBGL : Bits32
  UNPACK_PREMULTIPLY_ALPHA_WEBGL = 0x9241
  
  public export
  UNSIGNED_BYTE : Bits32
  UNSIGNED_BYTE = 0x1401
  
  public export
  UNSIGNED_INT : Bits32
  UNSIGNED_INT = 0x1405
  
  public export
  UNSIGNED_SHORT : Bits32
  UNSIGNED_SHORT = 0x1403
  
  public export
  UNSIGNED_SHORT_4_4_4_4 : Bits32
  UNSIGNED_SHORT_4_4_4_4 = 0x8033
  
  public export
  UNSIGNED_SHORT_5_5_5_1 : Bits32
  UNSIGNED_SHORT_5_5_5_1 = 0x8034
  
  public export
  UNSIGNED_SHORT_5_6_5 : Bits32
  UNSIGNED_SHORT_5_6_5 = 0x8363
  
  public export
  VALIDATE_STATUS : Bits32
  VALIDATE_STATUS = 0x8B83
  
  public export
  VENDOR : Bits32
  VENDOR = 0x1F00
  
  public export
  VERSION : Bits32
  VERSION = 0x1F02
  
  public export
  VERTEX_ATTRIB_ARRAY_BUFFER_BINDING : Bits32
  VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 0x889F
  
  public export
  VERTEX_ATTRIB_ARRAY_ENABLED : Bits32
  VERTEX_ATTRIB_ARRAY_ENABLED = 0x8622
  
  public export
  VERTEX_ATTRIB_ARRAY_NORMALIZED : Bits32
  VERTEX_ATTRIB_ARRAY_NORMALIZED = 0x886A
  
  public export
  VERTEX_ATTRIB_ARRAY_POINTER : Bits32
  VERTEX_ATTRIB_ARRAY_POINTER = 0x8645
  
  public export
  VERTEX_ATTRIB_ARRAY_SIZE : Bits32
  VERTEX_ATTRIB_ARRAY_SIZE = 0x8623
  
  public export
  VERTEX_ATTRIB_ARRAY_STRIDE : Bits32
  VERTEX_ATTRIB_ARRAY_STRIDE = 0x8624
  
  public export
  VERTEX_ATTRIB_ARRAY_TYPE : Bits32
  VERTEX_ATTRIB_ARRAY_TYPE = 0x8625
  
  public export
  VERTEX_SHADER : Bits32
  VERTEX_SHADER = 0x8B31
  
  public export
  VIEWPORT : Bits32
  VIEWPORT = 0xBA2
  
  public export
  ZERO : Bits32
  ZERO = 0
  
  export
  canvas :  (0 _ : JSType t1)
         => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
         -> (obj : t1)
         -> JSIO (NS I [ HTMLCanvasElement , OffscreenCanvas ])
  canvas a = tryJS "WebGLRenderingContextBase.canvas"
           $ WebGLRenderingContextBase.prim__canvas (up a)
  
  export
  drawingBufferHeight :  (0 _ : JSType t1)
                      => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                      -> (obj : t1)
                      -> JSIO Int32
  drawingBufferHeight a = primJS
                        $ WebGLRenderingContextBase.prim__drawingBufferHeight (up a)
  
  export
  drawingBufferWidth :  (0 _ : JSType t1)
                     => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                     -> (obj : t1)
                     -> JSIO Int32
  drawingBufferWidth a = primJS
                       $ WebGLRenderingContextBase.prim__drawingBufferWidth (up a)
  
  export
  activeTexture :  (0 _ : JSType t1)
                => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                -> (obj : t1)
                -> (texture : Bits32)
                -> JSIO ()
  activeTexture a b = primJS
                    $ WebGLRenderingContextBase.prim__activeTexture (up a) b
  
  export
  attachShader :  (0 _ : JSType t1)
               => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
               -> (obj : t1)
               -> (program : WebGLProgram)
               -> (shader : WebGLShader)
               -> JSIO ()
  attachShader a b c = primJS
                     $ WebGLRenderingContextBase.prim__attachShader (up a) b c
  
  export
  bindAttribLocation :  (0 _ : JSType t1)
                     => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                     -> (obj : t1)
                     -> (program : WebGLProgram)
                     -> (index : Bits32)
                     -> (name : String)
                     -> JSIO ()
  bindAttribLocation a b c d = primJS
                             $ WebGLRenderingContextBase.prim__bindAttribLocation (up a)
                                                                                  b
                                                                                  c
                                                                                  d
  
  export
  bindBuffer :  (0 _ : JSType t1)
             => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
             -> (obj : t1)
             -> (target : Bits32)
             -> (buffer : Maybe WebGLBuffer)
             -> JSIO ()
  bindBuffer a b c = primJS
                   $ WebGLRenderingContextBase.prim__bindBuffer (up a)
                                                                b
                                                                (toFFI c)
  
  export
  bindFramebuffer :  (0 _ : JSType t1)
                  => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                  -> (obj : t1)
                  -> (target : Bits32)
                  -> (framebuffer : Maybe WebGLFramebuffer)
                  -> JSIO ()
  bindFramebuffer a b c = primJS
                        $ WebGLRenderingContextBase.prim__bindFramebuffer (up a)
                                                                          b
                                                                          (toFFI c)
  
  export
  bindRenderbuffer :  (0 _ : JSType t1)
                   => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                   -> (obj : t1)
                   -> (target : Bits32)
                   -> (renderbuffer : Maybe WebGLRenderbuffer)
                   -> JSIO ()
  bindRenderbuffer a b c = primJS
                         $ WebGLRenderingContextBase.prim__bindRenderbuffer (up a)
                                                                            b
                                                                            (toFFI c)
  
  export
  bindTexture :  (0 _ : JSType t1)
              => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
              -> (obj : t1)
              -> (target : Bits32)
              -> (texture : Maybe WebGLTexture)
              -> JSIO ()
  bindTexture a b c = primJS
                    $ WebGLRenderingContextBase.prim__bindTexture (up a)
                                                                  b
                                                                  (toFFI c)
  
  export
  blendColor :  (0 _ : JSType t1)
             => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
             -> (obj : t1)
             -> (red : Double)
             -> (green : Double)
             -> (blue : Double)
             -> (alpha : Double)
             -> JSIO ()
  blendColor a b c d e = primJS
                       $ WebGLRenderingContextBase.prim__blendColor (up a)
                                                                    b
                                                                    c
                                                                    d
                                                                    e
  
  export
  blendEquationSeparate :  (0 _ : JSType t1)
                        => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                        -> (obj : t1)
                        -> (modeRGB : Bits32)
                        -> (modeAlpha : Bits32)
                        -> JSIO ()
  blendEquationSeparate a b c = primJS
                              $ WebGLRenderingContextBase.prim__blendEquationSeparate (up a)
                                                                                      b
                                                                                      c
  
  export
  blendEquation :  (0 _ : JSType t1)
                => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                -> (obj : t1)
                -> (mode : Bits32)
                -> JSIO ()
  blendEquation a b = primJS
                    $ WebGLRenderingContextBase.prim__blendEquation (up a) b
  
  export
  blendFuncSeparate :  (0 _ : JSType t1)
                    => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                    -> (obj : t1)
                    -> (srcRGB : Bits32)
                    -> (dstRGB : Bits32)
                    -> (srcAlpha : Bits32)
                    -> (dstAlpha : Bits32)
                    -> JSIO ()
  blendFuncSeparate a b c d e = primJS
                              $ WebGLRenderingContextBase.prim__blendFuncSeparate (up a)
                                                                                  b
                                                                                  c
                                                                                  d
                                                                                  e
  
  export
  blendFunc :  (0 _ : JSType t1)
            => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
            -> (obj : t1)
            -> (sfactor : Bits32)
            -> (dfactor : Bits32)
            -> JSIO ()
  blendFunc a b c = primJS
                  $ WebGLRenderingContextBase.prim__blendFunc (up a) b c
  
  export
  checkFramebufferStatus :  (0 _ : JSType t1)
                         => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                         -> (obj : t1)
                         -> (target : Bits32)
                         -> JSIO Bits32
  checkFramebufferStatus a b = primJS
                             $ WebGLRenderingContextBase.prim__checkFramebufferStatus (up a)
                                                                                      b
  
  export
  clearColor :  (0 _ : JSType t1)
             => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
             -> (obj : t1)
             -> (red : Double)
             -> (green : Double)
             -> (blue : Double)
             -> (alpha : Double)
             -> JSIO ()
  clearColor a b c d e = primJS
                       $ WebGLRenderingContextBase.prim__clearColor (up a)
                                                                    b
                                                                    c
                                                                    d
                                                                    e
  
  export
  clearDepth :  (0 _ : JSType t1)
             => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
             -> (obj : t1)
             -> (depth : Double)
             -> JSIO ()
  clearDepth a b = primJS $ WebGLRenderingContextBase.prim__clearDepth (up a) b
  
  export
  clearStencil :  (0 _ : JSType t1)
               => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
               -> (obj : t1)
               -> (s : Int32)
               -> JSIO ()
  clearStencil a b = primJS
                   $ WebGLRenderingContextBase.prim__clearStencil (up a) b
  
  export
  clear :  (0 _ : JSType t1)
        => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
        -> (obj : t1)
        -> (mask : Bits32)
        -> JSIO ()
  clear a b = primJS $ WebGLRenderingContextBase.prim__clear (up a) b
  
  export
  colorMask :  (0 _ : JSType t1)
            => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
            -> (obj : t1)
            -> (red : Bool)
            -> (green : Bool)
            -> (blue : Bool)
            -> (alpha : Bool)
            -> JSIO ()
  colorMask a b c d e = primJS
                      $ WebGLRenderingContextBase.prim__colorMask (up a)
                                                                  (toFFI b)
                                                                  (toFFI c)
                                                                  (toFFI d)
                                                                  (toFFI e)
  
  export
  compileShader :  (0 _ : JSType t1)
                => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                -> (obj : t1)
                -> (shader : WebGLShader)
                -> JSIO ()
  compileShader a b = primJS
                    $ WebGLRenderingContextBase.prim__compileShader (up a) b
  
  export
  copyTexImage2D :  (0 _ : JSType t1)
                 => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                 -> (obj : t1)
                 -> (target : Bits32)
                 -> (level : Int32)
                 -> (internalformat : Bits32)
                 -> (x : Int32)
                 -> (y : Int32)
                 -> (width : Int32)
                 -> (height : Int32)
                 -> (border : Int32)
                 -> JSIO ()
  copyTexImage2D a b c d e f g h i = primJS
                                   $ WebGLRenderingContextBase.prim__copyTexImage2D (up a)
                                                                                    b
                                                                                    c
                                                                                    d
                                                                                    e
                                                                                    f
                                                                                    g
                                                                                    h
                                                                                    i
  
  export
  copyTexSubImage2D :  (0 _ : JSType t1)
                    => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                    -> (obj : t1)
                    -> (target : Bits32)
                    -> (level : Int32)
                    -> (xoffset : Int32)
                    -> (yoffset : Int32)
                    -> (x : Int32)
                    -> (y : Int32)
                    -> (width : Int32)
                    -> (height : Int32)
                    -> JSIO ()
  copyTexSubImage2D a b c d e f g h i = primJS
                                      $ WebGLRenderingContextBase.prim__copyTexSubImage2D (up a)
                                                                                          b
                                                                                          c
                                                                                          d
                                                                                          e
                                                                                          f
                                                                                          g
                                                                                          h
                                                                                          i
  
  export
  createBuffer :  (0 _ : JSType t1)
               => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
               -> (obj : t1)
               -> JSIO (Maybe WebGLBuffer)
  createBuffer a = tryJS "WebGLRenderingContextBase.createBuffer"
                 $ WebGLRenderingContextBase.prim__createBuffer (up a)
  
  export
  createFramebuffer :  (0 _ : JSType t1)
                    => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                    -> (obj : t1)
                    -> JSIO (Maybe WebGLFramebuffer)
  createFramebuffer a = tryJS "WebGLRenderingContextBase.createFramebuffer"
                      $ WebGLRenderingContextBase.prim__createFramebuffer (up a)
  
  export
  createProgram :  (0 _ : JSType t1)
                => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                -> (obj : t1)
                -> JSIO (Maybe WebGLProgram)
  createProgram a = tryJS "WebGLRenderingContextBase.createProgram"
                  $ WebGLRenderingContextBase.prim__createProgram (up a)
  
  export
  createRenderbuffer :  (0 _ : JSType t1)
                     => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                     -> (obj : t1)
                     -> JSIO (Maybe WebGLRenderbuffer)
  createRenderbuffer a = tryJS "WebGLRenderingContextBase.createRenderbuffer"
                       $ WebGLRenderingContextBase.prim__createRenderbuffer (up a)
  
  export
  createShader :  (0 _ : JSType t1)
               => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
               -> (obj : t1)
               -> (type : Bits32)
               -> JSIO (Maybe WebGLShader)
  createShader a b = tryJS "WebGLRenderingContextBase.createShader"
                   $ WebGLRenderingContextBase.prim__createShader (up a) b
  
  export
  createTexture :  (0 _ : JSType t1)
                => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                -> (obj : t1)
                -> JSIO (Maybe WebGLTexture)
  createTexture a = tryJS "WebGLRenderingContextBase.createTexture"
                  $ WebGLRenderingContextBase.prim__createTexture (up a)
  
  export
  cullFace :  (0 _ : JSType t1)
           => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
           -> (obj : t1)
           -> (mode : Bits32)
           -> JSIO ()
  cullFace a b = primJS $ WebGLRenderingContextBase.prim__cullFace (up a) b
  
  export
  deleteBuffer :  (0 _ : JSType t1)
               => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
               -> (obj : t1)
               -> (buffer : Maybe WebGLBuffer)
               -> JSIO ()
  deleteBuffer a b = primJS
                   $ WebGLRenderingContextBase.prim__deleteBuffer (up a)
                                                                  (toFFI b)
  
  export
  deleteFramebuffer :  (0 _ : JSType t1)
                    => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                    -> (obj : t1)
                    -> (framebuffer : Maybe WebGLFramebuffer)
                    -> JSIO ()
  deleteFramebuffer a b = primJS
                        $ WebGLRenderingContextBase.prim__deleteFramebuffer (up a)
                                                                            (toFFI b)
  
  export
  deleteProgram :  (0 _ : JSType t1)
                => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                -> (obj : t1)
                -> (program : Maybe WebGLProgram)
                -> JSIO ()
  deleteProgram a b = primJS
                    $ WebGLRenderingContextBase.prim__deleteProgram (up a)
                                                                    (toFFI b)
  
  export
  deleteRenderbuffer :  (0 _ : JSType t1)
                     => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                     -> (obj : t1)
                     -> (renderbuffer : Maybe WebGLRenderbuffer)
                     -> JSIO ()
  deleteRenderbuffer a b = primJS
                         $ WebGLRenderingContextBase.prim__deleteRenderbuffer (up a)
                                                                              (toFFI b)
  
  export
  deleteShader :  (0 _ : JSType t1)
               => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
               -> (obj : t1)
               -> (shader : Maybe WebGLShader)
               -> JSIO ()
  deleteShader a b = primJS
                   $ WebGLRenderingContextBase.prim__deleteShader (up a)
                                                                  (toFFI b)
  
  export
  deleteTexture :  (0 _ : JSType t1)
                => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                -> (obj : t1)
                -> (texture : Maybe WebGLTexture)
                -> JSIO ()
  deleteTexture a b = primJS
                    $ WebGLRenderingContextBase.prim__deleteTexture (up a)
                                                                    (toFFI b)
  
  export
  depthFunc :  (0 _ : JSType t1)
            => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
            -> (obj : t1)
            -> (func : Bits32)
            -> JSIO ()
  depthFunc a b = primJS $ WebGLRenderingContextBase.prim__depthFunc (up a) b
  
  export
  depthMask :  (0 _ : JSType t1)
            => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
            -> (obj : t1)
            -> (flag : Bool)
            -> JSIO ()
  depthMask a b = primJS
                $ WebGLRenderingContextBase.prim__depthMask (up a) (toFFI b)
  
  export
  depthRange :  (0 _ : JSType t1)
             => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
             -> (obj : t1)
             -> (zNear : Double)
             -> (zFar : Double)
             -> JSIO ()
  depthRange a b c = primJS
                   $ WebGLRenderingContextBase.prim__depthRange (up a) b c
  
  export
  detachShader :  (0 _ : JSType t1)
               => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
               -> (obj : t1)
               -> (program : WebGLProgram)
               -> (shader : WebGLShader)
               -> JSIO ()
  detachShader a b c = primJS
                     $ WebGLRenderingContextBase.prim__detachShader (up a) b c
  
  export
  disableVertexAttribArray :  (0 _ : JSType t1)
                           => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                           -> (obj : t1)
                           -> (index : Bits32)
                           -> JSIO ()
  disableVertexAttribArray a b = primJS
                               $ WebGLRenderingContextBase.prim__disableVertexAttribArray (up a)
                                                                                          b
  
  export
  disable :  (0 _ : JSType t1)
          => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
          -> (obj : t1)
          -> (cap : Bits32)
          -> JSIO ()
  disable a b = primJS $ WebGLRenderingContextBase.prim__disable (up a) b
  
  export
  drawArrays :  (0 _ : JSType t1)
             => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
             -> (obj : t1)
             -> (mode : Bits32)
             -> (first : Int32)
             -> (count : Int32)
             -> JSIO ()
  drawArrays a b c d = primJS
                     $ WebGLRenderingContextBase.prim__drawArrays (up a) b c d
  
  export
  drawElements :  (0 _ : JSType t1)
               => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
               -> (obj : t1)
               -> (mode : Bits32)
               -> (count : Int32)
               -> (type : Bits32)
               -> (offset : JSInt64)
               -> JSIO ()
  drawElements a b c d e = primJS
                         $ WebGLRenderingContextBase.prim__drawElements (up a)
                                                                        b
                                                                        c
                                                                        d
                                                                        e
  
  export
  enableVertexAttribArray :  (0 _ : JSType t1)
                          => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                          -> (obj : t1)
                          -> (index : Bits32)
                          -> JSIO ()
  enableVertexAttribArray a b = primJS
                              $ WebGLRenderingContextBase.prim__enableVertexAttribArray (up a)
                                                                                        b
  
  export
  enable :  (0 _ : JSType t1)
         => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
         -> (obj : t1)
         -> (cap : Bits32)
         -> JSIO ()
  enable a b = primJS $ WebGLRenderingContextBase.prim__enable (up a) b
  
  export
  finish :  (0 _ : JSType t1)
         => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
         -> (obj : t1)
         -> JSIO ()
  finish a = primJS $ WebGLRenderingContextBase.prim__finish (up a)
  
  export
  flush :  (0 _ : JSType t1)
        => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
        -> (obj : t1)
        -> JSIO ()
  flush a = primJS $ WebGLRenderingContextBase.prim__flush (up a)
  
  export
  framebufferRenderbuffer :  (0 _ : JSType t1)
                          => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                          -> (obj : t1)
                          -> (target : Bits32)
                          -> (attachment : Bits32)
                          -> (renderbuffertarget : Bits32)
                          -> (renderbuffer : Maybe WebGLRenderbuffer)
                          -> JSIO ()
  framebufferRenderbuffer a b c d e = primJS
                                    $ WebGLRenderingContextBase.prim__framebufferRenderbuffer (up a)
                                                                                              b
                                                                                              c
                                                                                              d
                                                                                              (toFFI e)
  
  export
  framebufferTexture2D :  (0 _ : JSType t1)
                       => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                       -> (obj : t1)
                       -> (target : Bits32)
                       -> (attachment : Bits32)
                       -> (textarget : Bits32)
                       -> (texture : Maybe WebGLTexture)
                       -> (level : Int32)
                       -> JSIO ()
  framebufferTexture2D a b c d e f = primJS
                                   $ WebGLRenderingContextBase.prim__framebufferTexture2D (up a)
                                                                                          b
                                                                                          c
                                                                                          d
                                                                                          (toFFI e)
                                                                                          f
  
  export
  frontFace :  (0 _ : JSType t1)
            => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
            -> (obj : t1)
            -> (mode : Bits32)
            -> JSIO ()
  frontFace a b = primJS $ WebGLRenderingContextBase.prim__frontFace (up a) b
  
  export
  generateMipmap :  (0 _ : JSType t1)
                 => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                 -> (obj : t1)
                 -> (target : Bits32)
                 -> JSIO ()
  generateMipmap a b = primJS
                     $ WebGLRenderingContextBase.prim__generateMipmap (up a) b
  
  export
  getActiveAttrib :  (0 _ : JSType t1)
                  => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                  -> (obj : t1)
                  -> (program : WebGLProgram)
                  -> (index : Bits32)
                  -> JSIO (Maybe WebGLActiveInfo)
  getActiveAttrib a b c = tryJS "WebGLRenderingContextBase.getActiveAttrib"
                        $ WebGLRenderingContextBase.prim__getActiveAttrib (up a)
                                                                          b
                                                                          c
  
  export
  getActiveUniform :  (0 _ : JSType t1)
                   => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                   -> (obj : t1)
                   -> (program : WebGLProgram)
                   -> (index : Bits32)
                   -> JSIO (Maybe WebGLActiveInfo)
  getActiveUniform a b c = tryJS "WebGLRenderingContextBase.getActiveUniform"
                         $ WebGLRenderingContextBase.prim__getActiveUniform (up a)
                                                                            b
                                                                            c
  
  export
  getAttachedShaders :  (0 _ : JSType t1)
                     => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                     -> (obj : t1)
                     -> (program : WebGLProgram)
                     -> JSIO (Maybe (Array WebGLShader))
  getAttachedShaders a b = tryJS "WebGLRenderingContextBase.getAttachedShaders"
                         $ WebGLRenderingContextBase.prim__getAttachedShaders (up a)
                                                                              b
  
  export
  getAttribLocation :  (0 _ : JSType t1)
                    => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                    -> (obj : t1)
                    -> (program : WebGLProgram)
                    -> (name : String)
                    -> JSIO Int32
  getAttribLocation a b c = primJS
                          $ WebGLRenderingContextBase.prim__getAttribLocation (up a)
                                                                              b
                                                                              c
  
  export
  getBufferParameter :  (0 _ : JSType t1)
                     => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                     -> (obj : t1)
                     -> (target : Bits32)
                     -> (pname : Bits32)
                     -> JSIO Any
  getBufferParameter a b c = tryJS "WebGLRenderingContextBase.getBufferParameter"
                           $ WebGLRenderingContextBase.prim__getBufferParameter (up a)
                                                                                b
                                                                                c
  
  export
  getContextAttributes :  (0 _ : JSType t1)
                       => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                       -> (obj : t1)
                       -> JSIO (Maybe WebGLContextAttributes)
  getContextAttributes a = tryJS "WebGLRenderingContextBase.getContextAttributes"
                         $ WebGLRenderingContextBase.prim__getContextAttributes (up a)
  
  export
  getError :  (0 _ : JSType t1)
           => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
           -> (obj : t1)
           -> JSIO Bits32
  getError a = primJS $ WebGLRenderingContextBase.prim__getError (up a)
  
  export
  getExtension :  (0 _ : JSType t1)
               => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
               -> (obj : t1)
               -> (name : String)
               -> JSIO (Maybe Object)
  getExtension a b = tryJS "WebGLRenderingContextBase.getExtension"
                   $ WebGLRenderingContextBase.prim__getExtension (up a) b
  
  export
  getFramebufferAttachmentParameter :  (0 _ : JSType t1)
                                    => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                                    -> (obj : t1)
                                    -> (target : Bits32)
                                    -> (attachment : Bits32)
                                    -> (pname : Bits32)
                                    -> JSIO Any
  getFramebufferAttachmentParameter a b c d = tryJS "WebGLRenderingContextBase.getFramebufferAttachmentParameter"
                                            $ WebGLRenderingContextBase.prim__getFramebufferAttachmentParameter (up a)
                                                                                                                b
                                                                                                                c
                                                                                                                d
  
  export
  getParameter :  (0 _ : JSType t1)
               => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
               -> (obj : t1)
               -> (pname : Bits32)
               -> JSIO Any
  getParameter a b = tryJS "WebGLRenderingContextBase.getParameter"
                   $ WebGLRenderingContextBase.prim__getParameter (up a) b
  
  export
  getProgramInfoLog :  (0 _ : JSType t1)
                    => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                    -> (obj : t1)
                    -> (program : WebGLProgram)
                    -> JSIO (Maybe String)
  getProgramInfoLog a b = tryJS "WebGLRenderingContextBase.getProgramInfoLog"
                        $ WebGLRenderingContextBase.prim__getProgramInfoLog (up a)
                                                                            b
  
  export
  getProgramParameter :  (0 _ : JSType t1)
                      => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                      -> (obj : t1)
                      -> (program : WebGLProgram)
                      -> (pname : Bits32)
                      -> JSIO Any
  getProgramParameter a b c = tryJS "WebGLRenderingContextBase.getProgramParameter"
                            $ WebGLRenderingContextBase.prim__getProgramParameter (up a)
                                                                                  b
                                                                                  c
  
  export
  getRenderbufferParameter :  (0 _ : JSType t1)
                           => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                           -> (obj : t1)
                           -> (target : Bits32)
                           -> (pname : Bits32)
                           -> JSIO Any
  getRenderbufferParameter a b c = tryJS "WebGLRenderingContextBase.getRenderbufferParameter"
                                 $ WebGLRenderingContextBase.prim__getRenderbufferParameter (up a)
                                                                                            b
                                                                                            c
  
  export
  getShaderInfoLog :  (0 _ : JSType t1)
                   => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                   -> (obj : t1)
                   -> (shader : WebGLShader)
                   -> JSIO (Maybe String)
  getShaderInfoLog a b = tryJS "WebGLRenderingContextBase.getShaderInfoLog"
                       $ WebGLRenderingContextBase.prim__getShaderInfoLog (up a)
                                                                          b
  
  export
  getShaderParameter :  (0 _ : JSType t1)
                     => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                     -> (obj : t1)
                     -> (shader : WebGLShader)
                     -> (pname : Bits32)
                     -> JSIO Any
  getShaderParameter a b c = tryJS "WebGLRenderingContextBase.getShaderParameter"
                           $ WebGLRenderingContextBase.prim__getShaderParameter (up a)
                                                                                b
                                                                                c
  
  export
  getShaderPrecisionFormat :  (0 _ : JSType t1)
                           => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                           -> (obj : t1)
                           -> (shadertype : Bits32)
                           -> (precisiontype : Bits32)
                           -> JSIO (Maybe WebGLShaderPrecisionFormat)
  getShaderPrecisionFormat a b c = tryJS "WebGLRenderingContextBase.getShaderPrecisionFormat"
                                 $ WebGLRenderingContextBase.prim__getShaderPrecisionFormat (up a)
                                                                                            b
                                                                                            c
  
  export
  getShaderSource :  (0 _ : JSType t1)
                  => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                  -> (obj : t1)
                  -> (shader : WebGLShader)
                  -> JSIO (Maybe String)
  getShaderSource a b = tryJS "WebGLRenderingContextBase.getShaderSource"
                      $ WebGLRenderingContextBase.prim__getShaderSource (up a) b
  
  export
  getSupportedExtensions :  (0 _ : JSType t1)
                         => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                         -> (obj : t1)
                         -> JSIO (Maybe (Array String))
  getSupportedExtensions a = tryJS "WebGLRenderingContextBase.getSupportedExtensions"
                           $ WebGLRenderingContextBase.prim__getSupportedExtensions (up a)
  
  export
  getTexParameter :  (0 _ : JSType t1)
                  => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                  -> (obj : t1)
                  -> (target : Bits32)
                  -> (pname : Bits32)
                  -> JSIO Any
  getTexParameter a b c = tryJS "WebGLRenderingContextBase.getTexParameter"
                        $ WebGLRenderingContextBase.prim__getTexParameter (up a)
                                                                          b
                                                                          c
  
  export
  getUniformLocation :  (0 _ : JSType t1)
                     => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                     -> (obj : t1)
                     -> (program : WebGLProgram)
                     -> (name : String)
                     -> JSIO (Maybe WebGLUniformLocation)
  getUniformLocation a b c = tryJS "WebGLRenderingContextBase.getUniformLocation"
                           $ WebGLRenderingContextBase.prim__getUniformLocation (up a)
                                                                                b
                                                                                c
  
  export
  getUniform :  (0 _ : JSType t1)
             => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
             -> (obj : t1)
             -> (program : WebGLProgram)
             -> (location : WebGLUniformLocation)
             -> JSIO Any
  getUniform a b c = tryJS "WebGLRenderingContextBase.getUniform"
                   $ WebGLRenderingContextBase.prim__getUniform (up a) b c
  
  export
  getVertexAttribOffset :  (0 _ : JSType t1)
                        => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                        -> (obj : t1)
                        -> (index : Bits32)
                        -> (pname : Bits32)
                        -> JSIO JSInt64
  getVertexAttribOffset a b c = primJS
                              $ WebGLRenderingContextBase.prim__getVertexAttribOffset (up a)
                                                                                      b
                                                                                      c
  
  export
  getVertexAttrib :  (0 _ : JSType t1)
                  => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                  -> (obj : t1)
                  -> (index : Bits32)
                  -> (pname : Bits32)
                  -> JSIO Any
  getVertexAttrib a b c = tryJS "WebGLRenderingContextBase.getVertexAttrib"
                        $ WebGLRenderingContextBase.prim__getVertexAttrib (up a)
                                                                          b
                                                                          c
  
  export
  hint :  (0 _ : JSType t1)
       => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
       -> (obj : t1)
       -> (target : Bits32)
       -> (mode : Bits32)
       -> JSIO ()
  hint a b c = primJS $ WebGLRenderingContextBase.prim__hint (up a) b c
  
  export
  isBuffer :  (0 _ : JSType t1)
           => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
           -> (obj : t1)
           -> (buffer : Maybe WebGLBuffer)
           -> JSIO Bool
  isBuffer a b = tryJS "WebGLRenderingContextBase.isBuffer"
               $ WebGLRenderingContextBase.prim__isBuffer (up a) (toFFI b)
  
  export
  isContextLost :  (0 _ : JSType t1)
                => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                -> (obj : t1)
                -> JSIO Bool
  isContextLost a = tryJS "WebGLRenderingContextBase.isContextLost"
                  $ WebGLRenderingContextBase.prim__isContextLost (up a)
  
  export
  isEnabled :  (0 _ : JSType t1)
            => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
            -> (obj : t1)
            -> (cap : Bits32)
            -> JSIO Bool
  isEnabled a b = tryJS "WebGLRenderingContextBase.isEnabled"
                $ WebGLRenderingContextBase.prim__isEnabled (up a) b
  
  export
  isFramebuffer :  (0 _ : JSType t1)
                => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                -> (obj : t1)
                -> (framebuffer : Maybe WebGLFramebuffer)
                -> JSIO Bool
  isFramebuffer a b = tryJS "WebGLRenderingContextBase.isFramebuffer"
                    $ WebGLRenderingContextBase.prim__isFramebuffer (up a)
                                                                    (toFFI b)
  
  export
  isProgram :  (0 _ : JSType t1)
            => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
            -> (obj : t1)
            -> (program : Maybe WebGLProgram)
            -> JSIO Bool
  isProgram a b = tryJS "WebGLRenderingContextBase.isProgram"
                $ WebGLRenderingContextBase.prim__isProgram (up a) (toFFI b)
  
  export
  isRenderbuffer :  (0 _ : JSType t1)
                 => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                 -> (obj : t1)
                 -> (renderbuffer : Maybe WebGLRenderbuffer)
                 -> JSIO Bool
  isRenderbuffer a b = tryJS "WebGLRenderingContextBase.isRenderbuffer"
                     $ WebGLRenderingContextBase.prim__isRenderbuffer (up a)
                                                                      (toFFI b)
  
  export
  isShader :  (0 _ : JSType t1)
           => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
           -> (obj : t1)
           -> (shader : Maybe WebGLShader)
           -> JSIO Bool
  isShader a b = tryJS "WebGLRenderingContextBase.isShader"
               $ WebGLRenderingContextBase.prim__isShader (up a) (toFFI b)
  
  export
  isTexture :  (0 _ : JSType t1)
            => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
            -> (obj : t1)
            -> (texture : Maybe WebGLTexture)
            -> JSIO Bool
  isTexture a b = tryJS "WebGLRenderingContextBase.isTexture"
                $ WebGLRenderingContextBase.prim__isTexture (up a) (toFFI b)
  
  export
  lineWidth :  (0 _ : JSType t1)
            => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
            -> (obj : t1)
            -> (width : Double)
            -> JSIO ()
  lineWidth a b = primJS $ WebGLRenderingContextBase.prim__lineWidth (up a) b
  
  export
  linkProgram :  (0 _ : JSType t1)
              => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
              -> (obj : t1)
              -> (program : WebGLProgram)
              -> JSIO ()
  linkProgram a b = primJS
                  $ WebGLRenderingContextBase.prim__linkProgram (up a) b
  
  export
  pixelStorei :  (0 _ : JSType t1)
              => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
              -> (obj : t1)
              -> (pname : Bits32)
              -> (param : Int32)
              -> JSIO ()
  pixelStorei a b c = primJS
                    $ WebGLRenderingContextBase.prim__pixelStorei (up a) b c
  
  export
  polygonOffset :  (0 _ : JSType t1)
                => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                -> (obj : t1)
                -> (factor : Double)
                -> (units : Double)
                -> JSIO ()
  polygonOffset a b c = primJS
                      $ WebGLRenderingContextBase.prim__polygonOffset (up a) b c
  
  export
  renderbufferStorage :  (0 _ : JSType t1)
                      => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                      -> (obj : t1)
                      -> (target : Bits32)
                      -> (internalformat : Bits32)
                      -> (width : Int32)
                      -> (height : Int32)
                      -> JSIO ()
  renderbufferStorage a b c d e = primJS
                                $ WebGLRenderingContextBase.prim__renderbufferStorage (up a)
                                                                                      b
                                                                                      c
                                                                                      d
                                                                                      e
  
  export
  sampleCoverage :  (0 _ : JSType t1)
                 => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                 -> (obj : t1)
                 -> (value : Double)
                 -> (invert : Bool)
                 -> JSIO ()
  sampleCoverage a b c = primJS
                       $ WebGLRenderingContextBase.prim__sampleCoverage (up a)
                                                                        b
                                                                        (toFFI c)
  
  export
  scissor :  (0 _ : JSType t1)
          => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
          -> (obj : t1)
          -> (x : Int32)
          -> (y : Int32)
          -> (width : Int32)
          -> (height : Int32)
          -> JSIO ()
  scissor a b c d e = primJS
                    $ WebGLRenderingContextBase.prim__scissor (up a) b c d e
  
  export
  shaderSource :  (0 _ : JSType t1)
               => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
               -> (obj : t1)
               -> (shader : WebGLShader)
               -> (source : String)
               -> JSIO ()
  shaderSource a b c = primJS
                     $ WebGLRenderingContextBase.prim__shaderSource (up a) b c
  
  export
  stencilFuncSeparate :  (0 _ : JSType t1)
                      => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                      -> (obj : t1)
                      -> (face : Bits32)
                      -> (func : Bits32)
                      -> (ref : Int32)
                      -> (mask : Bits32)
                      -> JSIO ()
  stencilFuncSeparate a b c d e = primJS
                                $ WebGLRenderingContextBase.prim__stencilFuncSeparate (up a)
                                                                                      b
                                                                                      c
                                                                                      d
                                                                                      e
  
  export
  stencilFunc :  (0 _ : JSType t1)
              => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
              -> (obj : t1)
              -> (func : Bits32)
              -> (ref : Int32)
              -> (mask : Bits32)
              -> JSIO ()
  stencilFunc a b c d = primJS
                      $ WebGLRenderingContextBase.prim__stencilFunc (up a) b c d
  
  export
  stencilMaskSeparate :  (0 _ : JSType t1)
                      => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                      -> (obj : t1)
                      -> (face : Bits32)
                      -> (mask : Bits32)
                      -> JSIO ()
  stencilMaskSeparate a b c = primJS
                            $ WebGLRenderingContextBase.prim__stencilMaskSeparate (up a)
                                                                                  b
                                                                                  c
  
  export
  stencilMask :  (0 _ : JSType t1)
              => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
              -> (obj : t1)
              -> (mask : Bits32)
              -> JSIO ()
  stencilMask a b = primJS
                  $ WebGLRenderingContextBase.prim__stencilMask (up a) b
  
  export
  stencilOpSeparate :  (0 _ : JSType t1)
                    => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                    -> (obj : t1)
                    -> (face : Bits32)
                    -> (fail : Bits32)
                    -> (zfail : Bits32)
                    -> (zpass : Bits32)
                    -> JSIO ()
  stencilOpSeparate a b c d e = primJS
                              $ WebGLRenderingContextBase.prim__stencilOpSeparate (up a)
                                                                                  b
                                                                                  c
                                                                                  d
                                                                                  e
  
  export
  stencilOp :  (0 _ : JSType t1)
            => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
            -> (obj : t1)
            -> (fail : Bits32)
            -> (zfail : Bits32)
            -> (zpass : Bits32)
            -> JSIO ()
  stencilOp a b c d = primJS
                    $ WebGLRenderingContextBase.prim__stencilOp (up a) b c d
  
  export
  texParameterf :  (0 _ : JSType t1)
                => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                -> (obj : t1)
                -> (target : Bits32)
                -> (pname : Bits32)
                -> (param : Double)
                -> JSIO ()
  texParameterf a b c d = primJS
                        $ WebGLRenderingContextBase.prim__texParameterf (up a)
                                                                        b
                                                                        c
                                                                        d
  
  export
  texParameteri :  (0 _ : JSType t1)
                => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                -> (obj : t1)
                -> (target : Bits32)
                -> (pname : Bits32)
                -> (param : Int32)
                -> JSIO ()
  texParameteri a b c d = primJS
                        $ WebGLRenderingContextBase.prim__texParameteri (up a)
                                                                        b
                                                                        c
                                                                        d
  
  export
  uniform1f :  (0 _ : JSType t1)
            => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
            -> (obj : t1)
            -> (location : Maybe WebGLUniformLocation)
            -> (x : Double)
            -> JSIO ()
  uniform1f a b c = primJS
                  $ WebGLRenderingContextBase.prim__uniform1f (up a) (toFFI b) c
  
  export
  uniform1i :  (0 _ : JSType t1)
            => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
            -> (obj : t1)
            -> (location : Maybe WebGLUniformLocation)
            -> (x : Int32)
            -> JSIO ()
  uniform1i a b c = primJS
                  $ WebGLRenderingContextBase.prim__uniform1i (up a) (toFFI b) c
  
  export
  uniform2f :  (0 _ : JSType t1)
            => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
            -> (obj : t1)
            -> (location : Maybe WebGLUniformLocation)
            -> (x : Double)
            -> (y : Double)
            -> JSIO ()
  uniform2f a b c d = primJS
                    $ WebGLRenderingContextBase.prim__uniform2f (up a)
                                                                (toFFI b)
                                                                c
                                                                d
  
  export
  uniform2i :  (0 _ : JSType t1)
            => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
            -> (obj : t1)
            -> (location : Maybe WebGLUniformLocation)
            -> (x : Int32)
            -> (y : Int32)
            -> JSIO ()
  uniform2i a b c d = primJS
                    $ WebGLRenderingContextBase.prim__uniform2i (up a)
                                                                (toFFI b)
                                                                c
                                                                d
  
  export
  uniform3f :  (0 _ : JSType t1)
            => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
            -> (obj : t1)
            -> (location : Maybe WebGLUniformLocation)
            -> (x : Double)
            -> (y : Double)
            -> (z : Double)
            -> JSIO ()
  uniform3f a b c d e = primJS
                      $ WebGLRenderingContextBase.prim__uniform3f (up a)
                                                                  (toFFI b)
                                                                  c
                                                                  d
                                                                  e
  
  export
  uniform3i :  (0 _ : JSType t1)
            => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
            -> (obj : t1)
            -> (location : Maybe WebGLUniformLocation)
            -> (x : Int32)
            -> (y : Int32)
            -> (z : Int32)
            -> JSIO ()
  uniform3i a b c d e = primJS
                      $ WebGLRenderingContextBase.prim__uniform3i (up a)
                                                                  (toFFI b)
                                                                  c
                                                                  d
                                                                  e
  
  export
  uniform4f :  (0 _ : JSType t1)
            => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
            -> (obj : t1)
            -> (location : Maybe WebGLUniformLocation)
            -> (x : Double)
            -> (y : Double)
            -> (z : Double)
            -> (w : Double)
            -> JSIO ()
  uniform4f a b c d e f = primJS
                        $ WebGLRenderingContextBase.prim__uniform4f (up a)
                                                                    (toFFI b)
                                                                    c
                                                                    d
                                                                    e
                                                                    f
  
  export
  uniform4i :  (0 _ : JSType t1)
            => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
            -> (obj : t1)
            -> (location : Maybe WebGLUniformLocation)
            -> (x : Int32)
            -> (y : Int32)
            -> (z : Int32)
            -> (w : Int32)
            -> JSIO ()
  uniform4i a b c d e f = primJS
                        $ WebGLRenderingContextBase.prim__uniform4i (up a)
                                                                    (toFFI b)
                                                                    c
                                                                    d
                                                                    e
                                                                    f
  
  export
  useProgram :  (0 _ : JSType t1)
             => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
             -> (obj : t1)
             -> (program : Maybe WebGLProgram)
             -> JSIO ()
  useProgram a b = primJS
                 $ WebGLRenderingContextBase.prim__useProgram (up a) (toFFI b)
  
  export
  validateProgram :  (0 _ : JSType t1)
                  => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                  -> (obj : t1)
                  -> (program : WebGLProgram)
                  -> JSIO ()
  validateProgram a b = primJS
                      $ WebGLRenderingContextBase.prim__validateProgram (up a) b
  
  export
  vertexAttrib1f :  (0 _ : JSType t1)
                 => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                 -> (obj : t1)
                 -> (index : Bits32)
                 -> (x : Double)
                 -> JSIO ()
  vertexAttrib1f a b c = primJS
                       $ WebGLRenderingContextBase.prim__vertexAttrib1f (up a)
                                                                        b
                                                                        c
  
  export
  vertexAttrib1fv :  (0 _ : JSType t1)
                  => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                  -> (obj : t1)
                  -> (index : Bits32)
                  -> (values : NS I [ Float32Array , Array Double ])
                  -> JSIO ()
  vertexAttrib1fv a b c = primJS
                        $ WebGLRenderingContextBase.prim__vertexAttrib1fv (up a)
                                                                          b
                                                                          (toFFI c)
  
  export
  vertexAttrib2f :  (0 _ : JSType t1)
                 => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                 -> (obj : t1)
                 -> (index : Bits32)
                 -> (x : Double)
                 -> (y : Double)
                 -> JSIO ()
  vertexAttrib2f a b c d = primJS
                         $ WebGLRenderingContextBase.prim__vertexAttrib2f (up a)
                                                                          b
                                                                          c
                                                                          d
  
  export
  vertexAttrib2fv :  (0 _ : JSType t1)
                  => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                  -> (obj : t1)
                  -> (index : Bits32)
                  -> (values : NS I [ Float32Array , Array Double ])
                  -> JSIO ()
  vertexAttrib2fv a b c = primJS
                        $ WebGLRenderingContextBase.prim__vertexAttrib2fv (up a)
                                                                          b
                                                                          (toFFI c)
  
  export
  vertexAttrib3f :  (0 _ : JSType t1)
                 => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                 -> (obj : t1)
                 -> (index : Bits32)
                 -> (x : Double)
                 -> (y : Double)
                 -> (z : Double)
                 -> JSIO ()
  vertexAttrib3f a b c d e = primJS
                           $ WebGLRenderingContextBase.prim__vertexAttrib3f (up a)
                                                                            b
                                                                            c
                                                                            d
                                                                            e
  
  export
  vertexAttrib3fv :  (0 _ : JSType t1)
                  => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                  -> (obj : t1)
                  -> (index : Bits32)
                  -> (values : NS I [ Float32Array , Array Double ])
                  -> JSIO ()
  vertexAttrib3fv a b c = primJS
                        $ WebGLRenderingContextBase.prim__vertexAttrib3fv (up a)
                                                                          b
                                                                          (toFFI c)
  
  export
  vertexAttrib4f :  (0 _ : JSType t1)
                 => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                 -> (obj : t1)
                 -> (index : Bits32)
                 -> (x : Double)
                 -> (y : Double)
                 -> (z : Double)
                 -> (w : Double)
                 -> JSIO ()
  vertexAttrib4f a b c d e f = primJS
                             $ WebGLRenderingContextBase.prim__vertexAttrib4f (up a)
                                                                              b
                                                                              c
                                                                              d
                                                                              e
                                                                              f
  
  export
  vertexAttrib4fv :  (0 _ : JSType t1)
                  => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                  -> (obj : t1)
                  -> (index : Bits32)
                  -> (values : NS I [ Float32Array , Array Double ])
                  -> JSIO ()
  vertexAttrib4fv a b c = primJS
                        $ WebGLRenderingContextBase.prim__vertexAttrib4fv (up a)
                                                                          b
                                                                          (toFFI c)
  
  export
  vertexAttribPointer :  (0 _ : JSType t1)
                      => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
                      -> (obj : t1)
                      -> (index : Bits32)
                      -> (size : Int32)
                      -> (type : Bits32)
                      -> (normalized : Bool)
                      -> (stride : Int32)
                      -> (offset : JSInt64)
                      -> JSIO ()
  vertexAttribPointer a b c d e f g = primJS
                                    $ WebGLRenderingContextBase.prim__vertexAttribPointer (up a)
                                                                                          b
                                                                                          c
                                                                                          d
                                                                                          (toFFI e)
                                                                                          f
                                                                                          g
  
  export
  viewport :  (0 _ : JSType t1)
           => {auto 0 _ : Elem WebGLRenderingContextBase (Types t1)}
           -> (obj : t1)
           -> (x : Int32)
           -> (y : Int32)
           -> (width : Int32)
           -> (height : Int32)
           -> JSIO ()
  viewport a b c d e = primJS
                     $ WebGLRenderingContextBase.prim__viewport (up a) b c d e


namespace WebGLRenderingContextOverloads
  
  export
  bufferData :  (0 _ : JSType t1)
             => {auto 0 _ : Elem WebGLRenderingContextOverloads (Types t1)}
             -> (obj : t1)
             -> (target : Bits32)
             -> (size : JSInt64)
             -> (usage : Bits32)
             -> JSIO ()
  bufferData a b c d = primJS
                     $ WebGLRenderingContextOverloads.prim__bufferData (up a)
                                                                       b
                                                                       c
                                                                       d
  
  export
  bufferData1 :  (0 _ : JSType t1)
              => {auto 0 _ : Elem WebGLRenderingContextOverloads (Types t1)}
              -> (obj : t1)
              -> (target : Bits32)
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
              -> (usage : Bits32)
              -> JSIO ()
  bufferData1 a b c d = primJS
                      $ WebGLRenderingContextOverloads.prim__bufferData1 (up a)
                                                                         b
                                                                         (toFFI c)
                                                                         d
  
  export
  bufferSubData :  (0 _ : JSType t1)
                => {auto 0 _ : Elem WebGLRenderingContextOverloads (Types t1)}
                -> (obj : t1)
                -> (target : Bits32)
                -> (offset : JSInt64)
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
                        $ WebGLRenderingContextOverloads.prim__bufferSubData (up a)
                                                                             b
                                                                             c
                                                                             (toFFI d)
  
  export
  compressedTexImage2D :  (0 _ : JSType t1)
                       => {auto 0 _ : Elem WebGLRenderingContextOverloads (Types t1)}
                       -> (obj : t1)
                       -> (target : Bits32)
                       -> (level : Int32)
                       -> (internalformat : Bits32)
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
                                       $ WebGLRenderingContextOverloads.prim__compressedTexImage2D (up a)
                                                                                                   b
                                                                                                   c
                                                                                                   d
                                                                                                   e
                                                                                                   f
                                                                                                   g
                                                                                                   (toFFI h)
  
  export
  compressedTexSubImage2D :  (0 _ : JSType t1)
                          => {auto 0 _ : Elem WebGLRenderingContextOverloads (Types t1)}
                          -> (obj : t1)
                          -> (target : Bits32)
                          -> (level : Int32)
                          -> (xoffset : Int32)
                          -> (yoffset : Int32)
                          -> (width : Int32)
                          -> (height : Int32)
                          -> (format : Bits32)
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
                                            $ WebGLRenderingContextOverloads.prim__compressedTexSubImage2D (up a)
                                                                                                           b
                                                                                                           c
                                                                                                           d
                                                                                                           e
                                                                                                           f
                                                                                                           g
                                                                                                           h
                                                                                                           (toFFI i)
  
  export
  readPixels :  (0 _ : JSType t1)
             => {auto 0 _ : Elem WebGLRenderingContextOverloads (Types t1)}
             -> (obj : t1)
             -> (x : Int32)
             -> (y : Int32)
             -> (width : Int32)
             -> (height : Int32)
             -> (format : Bits32)
             -> (type : Bits32)
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
                             $ WebGLRenderingContextOverloads.prim__readPixels (up a)
                                                                               b
                                                                               c
                                                                               d
                                                                               e
                                                                               f
                                                                               g
                                                                               (toFFI h)
  
  export
  texImage2D :  (0 _ : JSType t1)
             => {auto 0 _ : Elem WebGLRenderingContextOverloads (Types t1)}
             -> (obj : t1)
             -> (target : Bits32)
             -> (level : Int32)
             -> (internalformat : Int32)
             -> (width : Int32)
             -> (height : Int32)
             -> (border : Int32)
             -> (format : Bits32)
             -> (type : Bits32)
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
                                 $ WebGLRenderingContextOverloads.prim__texImage2D (up a)
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
  texImage2D1 :  (0 _ : JSType t1)
              => {auto 0 _ : Elem WebGLRenderingContextOverloads (Types t1)}
              -> (obj : t1)
              -> (target : Bits32)
              -> (level : Int32)
              -> (internalformat : Int32)
              -> (format : Bits32)
              -> (type : Bits32)
              -> (source : NS I [ ImageBitmap
                                , ImageData
                                , HTMLImageElement
                                , HTMLCanvasElement
                                , HTMLVideoElement
                                , OffscreenCanvas
                                ])
              -> JSIO ()
  texImage2D1 a b c d e f g = primJS
                            $ WebGLRenderingContextOverloads.prim__texImage2D1 (up a)
                                                                               b
                                                                               c
                                                                               d
                                                                               e
                                                                               f
                                                                               (toFFI g)
  
  export
  texSubImage2D :  (0 _ : JSType t1)
                => {auto 0 _ : Elem WebGLRenderingContextOverloads (Types t1)}
                -> (obj : t1)
                -> (target : Bits32)
                -> (level : Int32)
                -> (xoffset : Int32)
                -> (yoffset : Int32)
                -> (width : Int32)
                -> (height : Int32)
                -> (format : Bits32)
                -> (type : Bits32)
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
                                    $ WebGLRenderingContextOverloads.prim__texSubImage2D (up a)
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
  texSubImage2D1 :  (0 _ : JSType t1)
                 => {auto 0 _ : Elem WebGLRenderingContextOverloads (Types t1)}
                 -> (obj : t1)
                 -> (target : Bits32)
                 -> (level : Int32)
                 -> (xoffset : Int32)
                 -> (yoffset : Int32)
                 -> (format : Bits32)
                 -> (type : Bits32)
                 -> (source : NS I [ ImageBitmap
                                   , ImageData
                                   , HTMLImageElement
                                   , HTMLCanvasElement
                                   , HTMLVideoElement
                                   , OffscreenCanvas
                                   ])
                 -> JSIO ()
  texSubImage2D1 a b c d e f g h = primJS
                                 $ WebGLRenderingContextOverloads.prim__texSubImage2D1 (up a)
                                                                                       b
                                                                                       c
                                                                                       d
                                                                                       e
                                                                                       f
                                                                                       g
                                                                                       (toFFI h)
  
  export
  uniform1fv :  (0 _ : JSType t1)
             => {auto 0 _ : Elem WebGLRenderingContextOverloads (Types t1)}
             -> (obj : t1)
             -> (location : Maybe WebGLUniformLocation)
             -> (v : NS I [ Float32Array , Array Double ])
             -> JSIO ()
  uniform1fv a b c = primJS
                   $ WebGLRenderingContextOverloads.prim__uniform1fv (up a)
                                                                     (toFFI b)
                                                                     (toFFI c)
  
  export
  uniform1iv :  (0 _ : JSType t1)
             => {auto 0 _ : Elem WebGLRenderingContextOverloads (Types t1)}
             -> (obj : t1)
             -> (location : Maybe WebGLUniformLocation)
             -> (v : NS I [ Int32Array , Array Int32 ])
             -> JSIO ()
  uniform1iv a b c = primJS
                   $ WebGLRenderingContextOverloads.prim__uniform1iv (up a)
                                                                     (toFFI b)
                                                                     (toFFI c)
  
  export
  uniform2fv :  (0 _ : JSType t1)
             => {auto 0 _ : Elem WebGLRenderingContextOverloads (Types t1)}
             -> (obj : t1)
             -> (location : Maybe WebGLUniformLocation)
             -> (v : NS I [ Float32Array , Array Double ])
             -> JSIO ()
  uniform2fv a b c = primJS
                   $ WebGLRenderingContextOverloads.prim__uniform2fv (up a)
                                                                     (toFFI b)
                                                                     (toFFI c)
  
  export
  uniform2iv :  (0 _ : JSType t1)
             => {auto 0 _ : Elem WebGLRenderingContextOverloads (Types t1)}
             -> (obj : t1)
             -> (location : Maybe WebGLUniformLocation)
             -> (v : NS I [ Int32Array , Array Int32 ])
             -> JSIO ()
  uniform2iv a b c = primJS
                   $ WebGLRenderingContextOverloads.prim__uniform2iv (up a)
                                                                     (toFFI b)
                                                                     (toFFI c)
  
  export
  uniform3fv :  (0 _ : JSType t1)
             => {auto 0 _ : Elem WebGLRenderingContextOverloads (Types t1)}
             -> (obj : t1)
             -> (location : Maybe WebGLUniformLocation)
             -> (v : NS I [ Float32Array , Array Double ])
             -> JSIO ()
  uniform3fv a b c = primJS
                   $ WebGLRenderingContextOverloads.prim__uniform3fv (up a)
                                                                     (toFFI b)
                                                                     (toFFI c)
  
  export
  uniform3iv :  (0 _ : JSType t1)
             => {auto 0 _ : Elem WebGLRenderingContextOverloads (Types t1)}
             -> (obj : t1)
             -> (location : Maybe WebGLUniformLocation)
             -> (v : NS I [ Int32Array , Array Int32 ])
             -> JSIO ()
  uniform3iv a b c = primJS
                   $ WebGLRenderingContextOverloads.prim__uniform3iv (up a)
                                                                     (toFFI b)
                                                                     (toFFI c)
  
  export
  uniform4fv :  (0 _ : JSType t1)
             => {auto 0 _ : Elem WebGLRenderingContextOverloads (Types t1)}
             -> (obj : t1)
             -> (location : Maybe WebGLUniformLocation)
             -> (v : NS I [ Float32Array , Array Double ])
             -> JSIO ()
  uniform4fv a b c = primJS
                   $ WebGLRenderingContextOverloads.prim__uniform4fv (up a)
                                                                     (toFFI b)
                                                                     (toFFI c)
  
  export
  uniform4iv :  (0 _ : JSType t1)
             => {auto 0 _ : Elem WebGLRenderingContextOverloads (Types t1)}
             -> (obj : t1)
             -> (location : Maybe WebGLUniformLocation)
             -> (v : NS I [ Int32Array , Array Int32 ])
             -> JSIO ()
  uniform4iv a b c = primJS
                   $ WebGLRenderingContextOverloads.prim__uniform4iv (up a)
                                                                     (toFFI b)
                                                                     (toFFI c)
  
  export
  uniformMatrix2fv :  (0 _ : JSType t1)
                   => {auto 0 _ : Elem WebGLRenderingContextOverloads (Types t1)}
                   -> (obj : t1)
                   -> (location : Maybe WebGLUniformLocation)
                   -> (transpose : Bool)
                   -> (value : NS I [ Float32Array , Array Double ])
                   -> JSIO ()
  uniformMatrix2fv a b c d = primJS
                           $ WebGLRenderingContextOverloads.prim__uniformMatrix2fv (up a)
                                                                                   (toFFI b)
                                                                                   (toFFI c)
                                                                                   (toFFI d)
  
  export
  uniformMatrix3fv :  (0 _ : JSType t1)
                   => {auto 0 _ : Elem WebGLRenderingContextOverloads (Types t1)}
                   -> (obj : t1)
                   -> (location : Maybe WebGLUniformLocation)
                   -> (transpose : Bool)
                   -> (value : NS I [ Float32Array , Array Double ])
                   -> JSIO ()
  uniformMatrix3fv a b c d = primJS
                           $ WebGLRenderingContextOverloads.prim__uniformMatrix3fv (up a)
                                                                                   (toFFI b)
                                                                                   (toFFI c)
                                                                                   (toFFI d)
  
  export
  uniformMatrix4fv :  (0 _ : JSType t1)
                   => {auto 0 _ : Elem WebGLRenderingContextOverloads (Types t1)}
                   -> (obj : t1)
                   -> (location : Maybe WebGLUniformLocation)
                   -> (transpose : Bool)
                   -> (value : NS I [ Float32Array , Array Double ])
                   -> JSIO ()
  uniformMatrix4fv a b c d = primJS
                           $ WebGLRenderingContextOverloads.prim__uniformMatrix4fv (up a)
                                                                                   (toFFI b)
                                                                                   (toFFI c)
                                                                                   (toFFI d)



--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace WebGLContextAttributes
  
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
  alpha :  (0 _ : JSType t)
        => {auto 0 _ : Elem WebGLContextAttributes (Types t)}
        -> t
        -> Attribute True Optional Bool
  alpha v = fromUndefOrPrim "WebGLContextAttributes.getalpha"
                            prim__alpha
                            prim__setAlpha
                            True
                            (v :> WebGLContextAttributes)
  
  export
  antialias :  (0 _ : JSType t)
            => {auto 0 _ : Elem WebGLContextAttributes (Types t)}
            -> t
            -> Attribute True Optional Bool
  antialias v = fromUndefOrPrim "WebGLContextAttributes.getantialias"
                                prim__antialias
                                prim__setAntialias
                                True
                                (v :> WebGLContextAttributes)
  
  export
  depth :  (0 _ : JSType t)
        => {auto 0 _ : Elem WebGLContextAttributes (Types t)}
        -> t
        -> Attribute True Optional Bool
  depth v = fromUndefOrPrim "WebGLContextAttributes.getdepth"
                            prim__depth
                            prim__setDepth
                            True
                            (v :> WebGLContextAttributes)
  
  export
  desynchronized :  (0 _ : JSType t)
                 => {auto 0 _ : Elem WebGLContextAttributes (Types t)}
                 -> t
                 -> Attribute True Optional Bool
  desynchronized v = fromUndefOrPrim "WebGLContextAttributes.getdesynchronized"
                                     prim__desynchronized
                                     prim__setDesynchronized
                                     False
                                     (v :> WebGLContextAttributes)
  
  export
  failIfMajorPerformanceCaveat :  (0 _ : JSType t)
                               => {auto 0 _ : Elem WebGLContextAttributes (Types t)}
                               -> t
                               -> Attribute True Optional Bool
  failIfMajorPerformanceCaveat v = fromUndefOrPrim "WebGLContextAttributes.getfailIfMajorPerformanceCaveat"
                                                   prim__failIfMajorPerformanceCaveat
                                                   prim__setFailIfMajorPerformanceCaveat
                                                   False
                                                   (v :> WebGLContextAttributes)
  
  export
  powerPreference :  (0 _ : JSType t)
                  => {auto 0 _ : Elem WebGLContextAttributes (Types t)}
                  -> t
                  -> Attribute False Optional WebGLPowerPreference
  powerPreference v = fromUndefOrPrimNoDefault "WebGLContextAttributes.getpowerPreference"
                                               prim__powerPreference
                                               prim__setPowerPreference
                                               (v :> WebGLContextAttributes)
  
  export
  premultipliedAlpha :  (0 _ : JSType t)
                     => {auto 0 _ : Elem WebGLContextAttributes (Types t)}
                     -> t
                     -> Attribute True Optional Bool
  premultipliedAlpha v = fromUndefOrPrim "WebGLContextAttributes.getpremultipliedAlpha"
                                         prim__premultipliedAlpha
                                         prim__setPremultipliedAlpha
                                         True
                                         (v :> WebGLContextAttributes)
  
  export
  preserveDrawingBuffer :  (0 _ : JSType t)
                        => {auto 0 _ : Elem WebGLContextAttributes (Types t)}
                        -> t
                        -> Attribute True Optional Bool
  preserveDrawingBuffer v = fromUndefOrPrim "WebGLContextAttributes.getpreserveDrawingBuffer"
                                            prim__preserveDrawingBuffer
                                            prim__setPreserveDrawingBuffer
                                            False
                                            (v :> WebGLContextAttributes)
  
  export
  stencil :  (0 _ : JSType t)
          => {auto 0 _ : Elem WebGLContextAttributes (Types t)}
          -> t
          -> Attribute True Optional Bool
  stencil v = fromUndefOrPrim "WebGLContextAttributes.getstencil"
                              prim__stencil
                              prim__setStencil
                              False
                              (v :> WebGLContextAttributes)


