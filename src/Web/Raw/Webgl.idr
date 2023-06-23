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

  export
  ACTIVE_UNIFORM_BLOCKS : Bits32
  ACTIVE_UNIFORM_BLOCKS = 0x8a36


  export
  ALREADY_SIGNALED : Bits32
  ALREADY_SIGNALED = 0x911a


  export
  ANY_SAMPLES_PASSED : Bits32
  ANY_SAMPLES_PASSED = 0x8c2f


  export
  ANY_SAMPLES_PASSED_CONSERVATIVE : Bits32
  ANY_SAMPLES_PASSED_CONSERVATIVE = 0x8d6a


  export
  COLOR : Bits32
  COLOR = 0x1800


  export
  COLOR_ATTACHMENT1 : Bits32
  COLOR_ATTACHMENT1 = 0x8ce1


  export
  COLOR_ATTACHMENT10 : Bits32
  COLOR_ATTACHMENT10 = 0x8cea


  export
  COLOR_ATTACHMENT11 : Bits32
  COLOR_ATTACHMENT11 = 0x8ceb


  export
  COLOR_ATTACHMENT12 : Bits32
  COLOR_ATTACHMENT12 = 0x8cec


  export
  COLOR_ATTACHMENT13 : Bits32
  COLOR_ATTACHMENT13 = 0x8ced


  export
  COLOR_ATTACHMENT14 : Bits32
  COLOR_ATTACHMENT14 = 0x8cee


  export
  COLOR_ATTACHMENT15 : Bits32
  COLOR_ATTACHMENT15 = 0x8cef


  export
  COLOR_ATTACHMENT2 : Bits32
  COLOR_ATTACHMENT2 = 0x8ce2


  export
  COLOR_ATTACHMENT3 : Bits32
  COLOR_ATTACHMENT3 = 0x8ce3


  export
  COLOR_ATTACHMENT4 : Bits32
  COLOR_ATTACHMENT4 = 0x8ce4


  export
  COLOR_ATTACHMENT5 : Bits32
  COLOR_ATTACHMENT5 = 0x8ce5


  export
  COLOR_ATTACHMENT6 : Bits32
  COLOR_ATTACHMENT6 = 0x8ce6


  export
  COLOR_ATTACHMENT7 : Bits32
  COLOR_ATTACHMENT7 = 0x8ce7


  export
  COLOR_ATTACHMENT8 : Bits32
  COLOR_ATTACHMENT8 = 0x8ce8


  export
  COLOR_ATTACHMENT9 : Bits32
  COLOR_ATTACHMENT9 = 0x8ce9


  export
  COMPARE_REF_TO_TEXTURE : Bits32
  COMPARE_REF_TO_TEXTURE = 0x884e


  export
  CONDITION_SATISFIED : Bits32
  CONDITION_SATISFIED = 0x911c


  export
  COPY_READ_BUFFER : Bits32
  COPY_READ_BUFFER = 0x8f36


  export
  COPY_READ_BUFFER_BINDING : Bits32
  COPY_READ_BUFFER_BINDING = 0x8f36


  export
  COPY_WRITE_BUFFER : Bits32
  COPY_WRITE_BUFFER = 0x8f37


  export
  COPY_WRITE_BUFFER_BINDING : Bits32
  COPY_WRITE_BUFFER_BINDING = 0x8f37


  export
  CURRENT_QUERY : Bits32
  CURRENT_QUERY = 0x8865


  export
  DEPTH : Bits32
  DEPTH = 0x1801


  export
  DEPTH24_STENCIL8 : Bits32
  DEPTH24_STENCIL8 = 0x88f0


  export
  DEPTH32F_STENCIL8 : Bits32
  DEPTH32F_STENCIL8 = 0x8cad


  export
  DEPTH_COMPONENT24 : Bits32
  DEPTH_COMPONENT24 = 0x81a6


  export
  DEPTH_COMPONENT32F : Bits32
  DEPTH_COMPONENT32F = 0x8cac


  export
  DRAW_BUFFER0 : Bits32
  DRAW_BUFFER0 = 0x8825


  export
  DRAW_BUFFER1 : Bits32
  DRAW_BUFFER1 = 0x8826


  export
  DRAW_BUFFER10 : Bits32
  DRAW_BUFFER10 = 0x882f


  export
  DRAW_BUFFER11 : Bits32
  DRAW_BUFFER11 = 0x8830


  export
  DRAW_BUFFER12 : Bits32
  DRAW_BUFFER12 = 0x8831


  export
  DRAW_BUFFER13 : Bits32
  DRAW_BUFFER13 = 0x8832


  export
  DRAW_BUFFER14 : Bits32
  DRAW_BUFFER14 = 0x8833


  export
  DRAW_BUFFER15 : Bits32
  DRAW_BUFFER15 = 0x8834


  export
  DRAW_BUFFER2 : Bits32
  DRAW_BUFFER2 = 0x8827


  export
  DRAW_BUFFER3 : Bits32
  DRAW_BUFFER3 = 0x8828


  export
  DRAW_BUFFER4 : Bits32
  DRAW_BUFFER4 = 0x8829


  export
  DRAW_BUFFER5 : Bits32
  DRAW_BUFFER5 = 0x882a


  export
  DRAW_BUFFER6 : Bits32
  DRAW_BUFFER6 = 0x882b


  export
  DRAW_BUFFER7 : Bits32
  DRAW_BUFFER7 = 0x882c


  export
  DRAW_BUFFER8 : Bits32
  DRAW_BUFFER8 = 0x882d


  export
  DRAW_BUFFER9 : Bits32
  DRAW_BUFFER9 = 0x882e


  export
  DRAW_FRAMEBUFFER : Bits32
  DRAW_FRAMEBUFFER = 0x8ca9


  export
  DRAW_FRAMEBUFFER_BINDING : Bits32
  DRAW_FRAMEBUFFER_BINDING = 0x8ca6


  export
  DYNAMIC_COPY : Bits32
  DYNAMIC_COPY = 0x88ea


  export
  DYNAMIC_READ : Bits32
  DYNAMIC_READ = 0x88e9


  export
  FLOAT_32_UNSIGNED_INT_24_8_REV : Bits32
  FLOAT_32_UNSIGNED_INT_24_8_REV = 0x8dad


  export
  FLOAT_MAT2x3 : Bits32
  FLOAT_MAT2x3 = 0x8b65


  export
  FLOAT_MAT2x4 : Bits32
  FLOAT_MAT2x4 = 0x8b66


  export
  FLOAT_MAT3x2 : Bits32
  FLOAT_MAT3x2 = 0x8b67


  export
  FLOAT_MAT3x4 : Bits32
  FLOAT_MAT3x4 = 0x8b68


  export
  FLOAT_MAT4x2 : Bits32
  FLOAT_MAT4x2 = 0x8b69


  export
  FLOAT_MAT4x3 : Bits32
  FLOAT_MAT4x3 = 0x8b6a


  export
  FRAGMENT_SHADER_DERIVATIVE_HINT : Bits32
  FRAGMENT_SHADER_DERIVATIVE_HINT = 0x8b8b


  export
  FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE : Bits32
  FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE = 0x8215


  export
  FRAMEBUFFER_ATTACHMENT_BLUE_SIZE : Bits32
  FRAMEBUFFER_ATTACHMENT_BLUE_SIZE = 0x8214


  export
  FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING : Bits32
  FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING = 0x8210


  export
  FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE : Bits32
  FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE = 0x8211


  export
  FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE : Bits32
  FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE = 0x8216


  export
  FRAMEBUFFER_ATTACHMENT_GREEN_SIZE : Bits32
  FRAMEBUFFER_ATTACHMENT_GREEN_SIZE = 0x8213


  export
  FRAMEBUFFER_ATTACHMENT_RED_SIZE : Bits32
  FRAMEBUFFER_ATTACHMENT_RED_SIZE = 0x8212


  export
  FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE : Bits32
  FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE = 0x8217


  export
  FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER : Bits32
  FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER = 0x8cd4


  export
  FRAMEBUFFER_DEFAULT : Bits32
  FRAMEBUFFER_DEFAULT = 0x8218


  export
  FRAMEBUFFER_INCOMPLETE_MULTISAMPLE : Bits32
  FRAMEBUFFER_INCOMPLETE_MULTISAMPLE = 0x8d56


  export
  HALF_FLOAT : Bits32
  HALF_FLOAT = 0x140b


  export
  INTERLEAVED_ATTRIBS : Bits32
  INTERLEAVED_ATTRIBS = 0x8c8c


  export
  INT_2_10_10_10_REV : Bits32
  INT_2_10_10_10_REV = 0x8d9f


  export
  INT_SAMPLER_2D : Bits32
  INT_SAMPLER_2D = 0x8dca


  export
  INT_SAMPLER_2D_ARRAY : Bits32
  INT_SAMPLER_2D_ARRAY = 0x8dcf


  export
  INT_SAMPLER_3D : Bits32
  INT_SAMPLER_3D = 0x8dcb


  export
  INT_SAMPLER_CUBE : Bits32
  INT_SAMPLER_CUBE = 0x8dcc


  export
  INVALID_INDEX : Bits32
  INVALID_INDEX = 0xffffffff


  export
  MAX : Bits32
  MAX = 0x8008


  export
  MAX_3D_TEXTURE_SIZE : Bits32
  MAX_3D_TEXTURE_SIZE = 0x8073


  export
  MAX_ARRAY_TEXTURE_LAYERS : Bits32
  MAX_ARRAY_TEXTURE_LAYERS = 0x88ff


  export
  MAX_CLIENT_WAIT_TIMEOUT_WEBGL : Bits32
  MAX_CLIENT_WAIT_TIMEOUT_WEBGL = 0x9247


  export
  MAX_COLOR_ATTACHMENTS : Bits32
  MAX_COLOR_ATTACHMENTS = 0x8cdf


  export
  MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS : Bits32
  MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS = 0x8a33


  export
  MAX_COMBINED_UNIFORM_BLOCKS : Bits32
  MAX_COMBINED_UNIFORM_BLOCKS = 0x8a2e


  export
  MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS : Bits32
  MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS = 0x8a31


  export
  MAX_DRAW_BUFFERS : Bits32
  MAX_DRAW_BUFFERS = 0x8824


  export
  MAX_ELEMENTS_INDICES : Bits32
  MAX_ELEMENTS_INDICES = 0x80e9


  export
  MAX_ELEMENTS_VERTICES : Bits32
  MAX_ELEMENTS_VERTICES = 0x80e8


  export
  MAX_ELEMENT_INDEX : Bits32
  MAX_ELEMENT_INDEX = 0x8d6b


  export
  MAX_FRAGMENT_INPUT_COMPONENTS : Bits32
  MAX_FRAGMENT_INPUT_COMPONENTS = 0x9125


  export
  MAX_FRAGMENT_UNIFORM_BLOCKS : Bits32
  MAX_FRAGMENT_UNIFORM_BLOCKS = 0x8a2d


  export
  MAX_FRAGMENT_UNIFORM_COMPONENTS : Bits32
  MAX_FRAGMENT_UNIFORM_COMPONENTS = 0x8b49


  export
  MAX_PROGRAM_TEXEL_OFFSET : Bits32
  MAX_PROGRAM_TEXEL_OFFSET = 0x8905


  export
  MAX_SAMPLES : Bits32
  MAX_SAMPLES = 0x8d57


  export
  MAX_SERVER_WAIT_TIMEOUT : Bits32
  MAX_SERVER_WAIT_TIMEOUT = 0x9111


  export
  MAX_TEXTURE_LOD_BIAS : Bits32
  MAX_TEXTURE_LOD_BIAS = 0x84fd


  export
  MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS : Bits32
  MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS = 0x8c8a


  export
  MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS : Bits32
  MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS = 0x8c8b


  export
  MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS : Bits32
  MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS = 0x8c80


  export
  MAX_UNIFORM_BLOCK_SIZE : Bits32
  MAX_UNIFORM_BLOCK_SIZE = 0x8a30


  export
  MAX_UNIFORM_BUFFER_BINDINGS : Bits32
  MAX_UNIFORM_BUFFER_BINDINGS = 0x8a2f


  export
  MAX_VARYING_COMPONENTS : Bits32
  MAX_VARYING_COMPONENTS = 0x8b4b


  export
  MAX_VERTEX_OUTPUT_COMPONENTS : Bits32
  MAX_VERTEX_OUTPUT_COMPONENTS = 0x9122


  export
  MAX_VERTEX_UNIFORM_BLOCKS : Bits32
  MAX_VERTEX_UNIFORM_BLOCKS = 0x8a2b


  export
  MAX_VERTEX_UNIFORM_COMPONENTS : Bits32
  MAX_VERTEX_UNIFORM_COMPONENTS = 0x8b4a


  export
  MIN : Bits32
  MIN = 0x8007


  export
  MIN_PROGRAM_TEXEL_OFFSET : Bits32
  MIN_PROGRAM_TEXEL_OFFSET = 0x8904


  export
  OBJECT_TYPE : Bits32
  OBJECT_TYPE = 0x9112


  export
  PACK_ROW_LENGTH : Bits32
  PACK_ROW_LENGTH = 0xd02


  export
  PACK_SKIP_PIXELS : Bits32
  PACK_SKIP_PIXELS = 0xd04


  export
  PACK_SKIP_ROWS : Bits32
  PACK_SKIP_ROWS = 0xd03


  export
  PIXEL_PACK_BUFFER : Bits32
  PIXEL_PACK_BUFFER = 0x88eb


  export
  PIXEL_PACK_BUFFER_BINDING : Bits32
  PIXEL_PACK_BUFFER_BINDING = 0x88ed


  export
  PIXEL_UNPACK_BUFFER : Bits32
  PIXEL_UNPACK_BUFFER = 0x88ec


  export
  PIXEL_UNPACK_BUFFER_BINDING : Bits32
  PIXEL_UNPACK_BUFFER_BINDING = 0x88ef


  export
  QUERY_RESULT : Bits32
  QUERY_RESULT = 0x8866


  export
  QUERY_RESULT_AVAILABLE : Bits32
  QUERY_RESULT_AVAILABLE = 0x8867


  export
  R11F_G11F_B10F : Bits32
  R11F_G11F_B10F = 0x8c3a


  export
  R16F : Bits32
  R16F = 0x822d


  export
  R16I : Bits32
  R16I = 0x8233


  export
  R16UI : Bits32
  R16UI = 0x8234


  export
  R32F : Bits32
  R32F = 0x822e


  export
  R32I : Bits32
  R32I = 0x8235


  export
  R32UI : Bits32
  R32UI = 0x8236


  export
  R8 : Bits32
  R8 = 0x8229


  export
  R8I : Bits32
  R8I = 0x8231


  export
  R8UI : Bits32
  R8UI = 0x8232


  export
  R8_SNORM : Bits32
  R8_SNORM = 0x8f94


  export
  RASTERIZER_DISCARD : Bits32
  RASTERIZER_DISCARD = 0x8c89


  export
  READ_BUFFER : Bits32
  READ_BUFFER = 0xc02


  export
  READ_FRAMEBUFFER : Bits32
  READ_FRAMEBUFFER = 0x8ca8


  export
  READ_FRAMEBUFFER_BINDING : Bits32
  READ_FRAMEBUFFER_BINDING = 0x8caa


  export
  RED : Bits32
  RED = 0x1903


  export
  RED_INTEGER : Bits32
  RED_INTEGER = 0x8d94


  export
  RENDERBUFFER_SAMPLES : Bits32
  RENDERBUFFER_SAMPLES = 0x8cab


  export
  RG : Bits32
  RG = 0x8227


  export
  RG16F : Bits32
  RG16F = 0x822f


  export
  RG16I : Bits32
  RG16I = 0x8239


  export
  RG16UI : Bits32
  RG16UI = 0x823a


  export
  RG32F : Bits32
  RG32F = 0x8230


  export
  RG32I : Bits32
  RG32I = 0x823b


  export
  RG32UI : Bits32
  RG32UI = 0x823c


  export
  RG8 : Bits32
  RG8 = 0x822b


  export
  RG8I : Bits32
  RG8I = 0x8237


  export
  RG8UI : Bits32
  RG8UI = 0x8238


  export
  RG8_SNORM : Bits32
  RG8_SNORM = 0x8f95


  export
  RGB10_A2 : Bits32
  RGB10_A2 = 0x8059


  export
  RGB10_A2UI : Bits32
  RGB10_A2UI = 0x906f


  export
  RGB16F : Bits32
  RGB16F = 0x881b


  export
  RGB16I : Bits32
  RGB16I = 0x8d89


  export
  RGB16UI : Bits32
  RGB16UI = 0x8d77


  export
  RGB32F : Bits32
  RGB32F = 0x8815


  export
  RGB32I : Bits32
  RGB32I = 0x8d83


  export
  RGB32UI : Bits32
  RGB32UI = 0x8d71


  export
  RGB8 : Bits32
  RGB8 = 0x8051


  export
  RGB8I : Bits32
  RGB8I = 0x8d8f


  export
  RGB8UI : Bits32
  RGB8UI = 0x8d7d


  export
  RGB8_SNORM : Bits32
  RGB8_SNORM = 0x8f96


  export
  RGB9_E5 : Bits32
  RGB9_E5 = 0x8c3d


  export
  RGBA16F : Bits32
  RGBA16F = 0x881a


  export
  RGBA16I : Bits32
  RGBA16I = 0x8d88


  export
  RGBA16UI : Bits32
  RGBA16UI = 0x8d76


  export
  RGBA32F : Bits32
  RGBA32F = 0x8814


  export
  RGBA32I : Bits32
  RGBA32I = 0x8d82


  export
  RGBA32UI : Bits32
  RGBA32UI = 0x8d70


  export
  RGBA8 : Bits32
  RGBA8 = 0x8058


  export
  RGBA8I : Bits32
  RGBA8I = 0x8d8e


  export
  RGBA8UI : Bits32
  RGBA8UI = 0x8d7c


  export
  RGBA8_SNORM : Bits32
  RGBA8_SNORM = 0x8f97


  export
  RGBA_INTEGER : Bits32
  RGBA_INTEGER = 0x8d99


  export
  RGB_INTEGER : Bits32
  RGB_INTEGER = 0x8d98


  export
  RG_INTEGER : Bits32
  RG_INTEGER = 0x8228


  export
  SAMPLER_2D_ARRAY : Bits32
  SAMPLER_2D_ARRAY = 0x8dc1


  export
  SAMPLER_2D_ARRAY_SHADOW : Bits32
  SAMPLER_2D_ARRAY_SHADOW = 0x8dc4


  export
  SAMPLER_2D_SHADOW : Bits32
  SAMPLER_2D_SHADOW = 0x8b62


  export
  SAMPLER_3D : Bits32
  SAMPLER_3D = 0x8b5f


  export
  SAMPLER_BINDING : Bits32
  SAMPLER_BINDING = 0x8919


  export
  SAMPLER_CUBE_SHADOW : Bits32
  SAMPLER_CUBE_SHADOW = 0x8dc5


  export
  SEPARATE_ATTRIBS : Bits32
  SEPARATE_ATTRIBS = 0x8c8d


  export
  SIGNALED : Bits32
  SIGNALED = 0x9119


  export
  SIGNED_NORMALIZED : Bits32
  SIGNED_NORMALIZED = 0x8f9c


  export
  SRGB : Bits32
  SRGB = 0x8c40


  export
  SRGB8 : Bits32
  SRGB8 = 0x8c41


  export
  SRGB8_ALPHA8 : Bits32
  SRGB8_ALPHA8 = 0x8c43


  export
  STATIC_COPY : Bits32
  STATIC_COPY = 0x88e6


  export
  STATIC_READ : Bits32
  STATIC_READ = 0x88e5


  export
  STENCIL : Bits32
  STENCIL = 0x1802


  export
  STREAM_COPY : Bits32
  STREAM_COPY = 0x88e2


  export
  STREAM_READ : Bits32
  STREAM_READ = 0x88e1


  export
  SYNC_CONDITION : Bits32
  SYNC_CONDITION = 0x9113


  export
  SYNC_FENCE : Bits32
  SYNC_FENCE = 0x9116


  export
  SYNC_FLAGS : Bits32
  SYNC_FLAGS = 0x9115


  export
  SYNC_FLUSH_COMMANDS_BIT : Bits32
  SYNC_FLUSH_COMMANDS_BIT = 0x1


  export
  SYNC_GPU_COMMANDS_COMPLETE : Bits32
  SYNC_GPU_COMMANDS_COMPLETE = 0x9117


  export
  SYNC_STATUS : Bits32
  SYNC_STATUS = 0x9114


  export
  TEXTURE_2D_ARRAY : Bits32
  TEXTURE_2D_ARRAY = 0x8c1a


  export
  TEXTURE_3D : Bits32
  TEXTURE_3D = 0x806f


  export
  TEXTURE_BASE_LEVEL : Bits32
  TEXTURE_BASE_LEVEL = 0x813c


  export
  TEXTURE_BINDING_2D_ARRAY : Bits32
  TEXTURE_BINDING_2D_ARRAY = 0x8c1d


  export
  TEXTURE_BINDING_3D : Bits32
  TEXTURE_BINDING_3D = 0x806a


  export
  TEXTURE_COMPARE_FUNC : Bits32
  TEXTURE_COMPARE_FUNC = 0x884d


  export
  TEXTURE_COMPARE_MODE : Bits32
  TEXTURE_COMPARE_MODE = 0x884c


  export
  TEXTURE_IMMUTABLE_FORMAT : Bits32
  TEXTURE_IMMUTABLE_FORMAT = 0x912f


  export
  TEXTURE_IMMUTABLE_LEVELS : Bits32
  TEXTURE_IMMUTABLE_LEVELS = 0x82df


  export
  TEXTURE_MAX_LEVEL : Bits32
  TEXTURE_MAX_LEVEL = 0x813d


  export
  TEXTURE_MAX_LOD : Bits32
  TEXTURE_MAX_LOD = 0x813b


  export
  TEXTURE_MIN_LOD : Bits32
  TEXTURE_MIN_LOD = 0x813a


  export
  TEXTURE_WRAP_R : Bits32
  TEXTURE_WRAP_R = 0x8072


  export
  TIMEOUT_EXPIRED : Bits32
  TIMEOUT_EXPIRED = 0x911b


  export
  TIMEOUT_IGNORED : JSInt64
  TIMEOUT_IGNORED = -1


  export
  TRANSFORM_FEEDBACK : Bits32
  TRANSFORM_FEEDBACK = 0x8e22


  export
  TRANSFORM_FEEDBACK_ACTIVE : Bits32
  TRANSFORM_FEEDBACK_ACTIVE = 0x8e24


  export
  TRANSFORM_FEEDBACK_BINDING : Bits32
  TRANSFORM_FEEDBACK_BINDING = 0x8e25


  export
  TRANSFORM_FEEDBACK_BUFFER : Bits32
  TRANSFORM_FEEDBACK_BUFFER = 0x8c8e


  export
  TRANSFORM_FEEDBACK_BUFFER_BINDING : Bits32
  TRANSFORM_FEEDBACK_BUFFER_BINDING = 0x8c8f


  export
  TRANSFORM_FEEDBACK_BUFFER_MODE : Bits32
  TRANSFORM_FEEDBACK_BUFFER_MODE = 0x8c7f


  export
  TRANSFORM_FEEDBACK_BUFFER_SIZE : Bits32
  TRANSFORM_FEEDBACK_BUFFER_SIZE = 0x8c85


  export
  TRANSFORM_FEEDBACK_BUFFER_START : Bits32
  TRANSFORM_FEEDBACK_BUFFER_START = 0x8c84


  export
  TRANSFORM_FEEDBACK_PAUSED : Bits32
  TRANSFORM_FEEDBACK_PAUSED = 0x8e23


  export
  TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN : Bits32
  TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN = 0x8c88


  export
  TRANSFORM_FEEDBACK_VARYINGS : Bits32
  TRANSFORM_FEEDBACK_VARYINGS = 0x8c83


  export
  UNIFORM_ARRAY_STRIDE : Bits32
  UNIFORM_ARRAY_STRIDE = 0x8a3c


  export
  UNIFORM_BLOCK_ACTIVE_UNIFORMS : Bits32
  UNIFORM_BLOCK_ACTIVE_UNIFORMS = 0x8a42


  export
  UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES : Bits32
  UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES = 0x8a43


  export
  UNIFORM_BLOCK_BINDING : Bits32
  UNIFORM_BLOCK_BINDING = 0x8a3f


  export
  UNIFORM_BLOCK_DATA_SIZE : Bits32
  UNIFORM_BLOCK_DATA_SIZE = 0x8a40


  export
  UNIFORM_BLOCK_INDEX : Bits32
  UNIFORM_BLOCK_INDEX = 0x8a3a


  export
  UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER : Bits32
  UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER = 0x8a46


  export
  UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER : Bits32
  UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER = 0x8a44


  export
  UNIFORM_BUFFER : Bits32
  UNIFORM_BUFFER = 0x8a11


  export
  UNIFORM_BUFFER_BINDING : Bits32
  UNIFORM_BUFFER_BINDING = 0x8a28


  export
  UNIFORM_BUFFER_OFFSET_ALIGNMENT : Bits32
  UNIFORM_BUFFER_OFFSET_ALIGNMENT = 0x8a34


  export
  UNIFORM_BUFFER_SIZE : Bits32
  UNIFORM_BUFFER_SIZE = 0x8a2a


  export
  UNIFORM_BUFFER_START : Bits32
  UNIFORM_BUFFER_START = 0x8a29


  export
  UNIFORM_IS_ROW_MAJOR : Bits32
  UNIFORM_IS_ROW_MAJOR = 0x8a3e


  export
  UNIFORM_MATRIX_STRIDE : Bits32
  UNIFORM_MATRIX_STRIDE = 0x8a3d


  export
  UNIFORM_OFFSET : Bits32
  UNIFORM_OFFSET = 0x8a3b


  export
  UNIFORM_SIZE : Bits32
  UNIFORM_SIZE = 0x8a38


  export
  UNIFORM_TYPE : Bits32
  UNIFORM_TYPE = 0x8a37


  export
  UNPACK_IMAGE_HEIGHT : Bits32
  UNPACK_IMAGE_HEIGHT = 0x806e


  export
  UNPACK_ROW_LENGTH : Bits32
  UNPACK_ROW_LENGTH = 0xcf2


  export
  UNPACK_SKIP_IMAGES : Bits32
  UNPACK_SKIP_IMAGES = 0x806d


  export
  UNPACK_SKIP_PIXELS : Bits32
  UNPACK_SKIP_PIXELS = 0xcf4


  export
  UNPACK_SKIP_ROWS : Bits32
  UNPACK_SKIP_ROWS = 0xcf3


  export
  UNSIGNALED : Bits32
  UNSIGNALED = 0x9118


  export
  UNSIGNED_INT_10F_11F_11F_REV : Bits32
  UNSIGNED_INT_10F_11F_11F_REV = 0x8c3b


  export
  UNSIGNED_INT_24_8 : Bits32
  UNSIGNED_INT_24_8 = 0x84fa


  export
  UNSIGNED_INT_2_10_10_10_REV : Bits32
  UNSIGNED_INT_2_10_10_10_REV = 0x8368


  export
  UNSIGNED_INT_5_9_9_9_REV : Bits32
  UNSIGNED_INT_5_9_9_9_REV = 0x8c3e


  export
  UNSIGNED_INT_SAMPLER_2D : Bits32
  UNSIGNED_INT_SAMPLER_2D = 0x8dd2


  export
  UNSIGNED_INT_SAMPLER_2D_ARRAY : Bits32
  UNSIGNED_INT_SAMPLER_2D_ARRAY = 0x8dd7


  export
  UNSIGNED_INT_SAMPLER_3D : Bits32
  UNSIGNED_INT_SAMPLER_3D = 0x8dd3


  export
  UNSIGNED_INT_SAMPLER_CUBE : Bits32
  UNSIGNED_INT_SAMPLER_CUBE = 0x8dd4


  export
  UNSIGNED_INT_VEC2 : Bits32
  UNSIGNED_INT_VEC2 = 0x8dc6


  export
  UNSIGNED_INT_VEC3 : Bits32
  UNSIGNED_INT_VEC3 = 0x8dc7


  export
  UNSIGNED_INT_VEC4 : Bits32
  UNSIGNED_INT_VEC4 = 0x8dc8


  export
  UNSIGNED_NORMALIZED : Bits32
  UNSIGNED_NORMALIZED = 0x8c17


  export
  VERTEX_ARRAY_BINDING : Bits32
  VERTEX_ARRAY_BINDING = 0x85b5


  export
  VERTEX_ATTRIB_ARRAY_DIVISOR : Bits32
  VERTEX_ATTRIB_ARRAY_DIVISOR = 0x88fe


  export
  VERTEX_ATTRIB_ARRAY_INTEGER : Bits32
  VERTEX_ATTRIB_ARRAY_INTEGER = 0x88fd


  export
  WAIT_FAILED : Bits32
  WAIT_FAILED = 0x911d


  export
  beginQuery :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (target : Bits32)
    -> (query : WebGLQuery)
    -> JSIO ()
  beginQuery a b c = primJS $
    WebGL2RenderingContextBase.prim__beginQuery (cast a) b c


  export
  beginTransformFeedback :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (primitiveMode : Bits32)
    -> JSIO ()
  beginTransformFeedback a b = primJS $
    WebGL2RenderingContextBase.prim__beginTransformFeedback (cast a) b


  export
  bindBufferBase :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (target : Bits32)
    -> (index : Bits32)
    -> (buffer : Maybe WebGLBuffer)
    -> JSIO ()
  bindBufferBase a b c d = primJS $
    WebGL2RenderingContextBase.prim__bindBufferBase (cast a) b c (toFFI d)


  export
  bindBufferRange :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (target : Bits32)
    -> (index : Bits32)
    -> (buffer : Maybe WebGLBuffer)
    -> (offset : JSInt64)
    -> (size : JSInt64)
    -> JSIO ()
  bindBufferRange a b c d e f = primJS $
    WebGL2RenderingContextBase.prim__bindBufferRange (cast a) b c (toFFI d) e f


  export
  bindSampler :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (unit : Bits32)
    -> (sampler : Maybe WebGLSampler)
    -> JSIO ()
  bindSampler a b c = primJS $
    WebGL2RenderingContextBase.prim__bindSampler (cast a) b (toFFI c)


  export
  bindTransformFeedback :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (target : Bits32)
    -> (tf : Maybe WebGLTransformFeedback)
    -> JSIO ()
  bindTransformFeedback a b c = primJS $
    WebGL2RenderingContextBase.prim__bindTransformFeedback (cast a) b (toFFI c)


  export
  bindVertexArray :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (array : Maybe WebGLVertexArrayObject)
    -> JSIO ()
  bindVertexArray a b = primJS $
    WebGL2RenderingContextBase.prim__bindVertexArray (cast a) (toFFI b)


  export
  blitFramebuffer :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
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
  blitFramebuffer a b c d e f g h i j k = primJS $
    WebGL2RenderingContextBase.prim__blitFramebuffer
      (cast a)
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
  clearBufferfi :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (buffer : Bits32)
    -> (drawbuffer : Int32)
    -> (depth : Double)
    -> (stencil : Int32)
    -> JSIO ()
  clearBufferfi a b c d e = primJS $
    WebGL2RenderingContextBase.prim__clearBufferfi (cast a) b c d e


  export
  clearBufferfv' :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (buffer : Bits32)
    -> (drawbuffer : Int32)
    -> (values : HSum [Float32Array, Array Double])
    -> (srcOffset : Optional Bits32)
    -> JSIO ()
  clearBufferfv' a b c d e = primJS $
    WebGL2RenderingContextBase.prim__clearBufferfv
      (cast a)
      b
      c
      (toFFI d)
      (toFFI e)

  export
  clearBufferfv :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (buffer : Bits32)
    -> (drawbuffer : Int32)
    -> (values : HSum [Float32Array, Array Double])
    -> JSIO ()
  clearBufferfv a b c d = primJS $
    WebGL2RenderingContextBase.prim__clearBufferfv (cast a) b c (toFFI d) undef


  export
  clearBufferiv' :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (buffer : Bits32)
    -> (drawbuffer : Int32)
    -> (values : HSum [Int32Array, Array Int32])
    -> (srcOffset : Optional Bits32)
    -> JSIO ()
  clearBufferiv' a b c d e = primJS $
    WebGL2RenderingContextBase.prim__clearBufferiv
      (cast a)
      b
      c
      (toFFI d)
      (toFFI e)

  export
  clearBufferiv :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (buffer : Bits32)
    -> (drawbuffer : Int32)
    -> (values : HSum [Int32Array, Array Int32])
    -> JSIO ()
  clearBufferiv a b c d = primJS $
    WebGL2RenderingContextBase.prim__clearBufferiv (cast a) b c (toFFI d) undef


  export
  clearBufferuiv' :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (buffer : Bits32)
    -> (drawbuffer : Int32)
    -> (values : HSum [UInt8Array, Array Bits32])
    -> (srcOffset : Optional Bits32)
    -> JSIO ()
  clearBufferuiv' a b c d e = primJS $
    WebGL2RenderingContextBase.prim__clearBufferuiv
      (cast a)
      b
      c
      (toFFI d)
      (toFFI e)

  export
  clearBufferuiv :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (buffer : Bits32)
    -> (drawbuffer : Int32)
    -> (values : HSum [UInt8Array, Array Bits32])
    -> JSIO ()
  clearBufferuiv a b c d = primJS $
    WebGL2RenderingContextBase.prim__clearBufferuiv (cast a) b c (toFFI d) undef


  export
  clientWaitSync :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (sync : WebGLSync)
    -> (flags : Bits32)
    -> (timeout : JSBits64)
    -> JSIO Bits32
  clientWaitSync a b c d = primJS $
    WebGL2RenderingContextBase.prim__clientWaitSync (cast a) b c d


  export
  compressedTexImage3D :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
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
  compressedTexImage3D a b c d e f g h i j = primJS $
    WebGL2RenderingContextBase.prim__compressedTexImage3D
      (cast a)
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
  compressedTexImage3D1' :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (target : Bits32)
    -> (level : Int32)
    -> (internalformat : Bits32)
    -> (width : Int32)
    -> (height : Int32)
    -> (depth : Int32)
    -> (border : Int32)
    -> (srcData : HSum
                    [ Int8Array
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
  compressedTexImage3D1' a b c d e f g h i j k = primJS $
    WebGL2RenderingContextBase.prim__compressedTexImage3D1
      (cast a)
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
  compressedTexImage3D1 :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (target : Bits32)
    -> (level : Int32)
    -> (internalformat : Bits32)
    -> (width : Int32)
    -> (height : Int32)
    -> (depth : Int32)
    -> (border : Int32)
    -> (srcData : HSum
                    [ Int8Array
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
  compressedTexImage3D1 a b c d e f g h i = primJS $
    WebGL2RenderingContextBase.prim__compressedTexImage3D1
      (cast a)
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
  compressedTexSubImage3D :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
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
  compressedTexSubImage3D a b c d e f g h i j k l = primJS $
    WebGL2RenderingContextBase.prim__compressedTexSubImage3D
      (cast a)
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
  compressedTexSubImage3D1' :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
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
    -> (srcData : HSum
                    [ Int8Array
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
  compressedTexSubImage3D1' a b c d e f g h i j k l m = primJS $
    WebGL2RenderingContextBase.prim__compressedTexSubImage3D1
      (cast a)
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
  compressedTexSubImage3D1 :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
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
    -> (srcData : HSum
                    [ Int8Array
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
  compressedTexSubImage3D1 a b c d e f g h i j k = primJS $
    WebGL2RenderingContextBase.prim__compressedTexSubImage3D1
      (cast a)
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
  copyBufferSubData :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (readTarget : Bits32)
    -> (writeTarget : Bits32)
    -> (readOffset : JSInt64)
    -> (writeOffset : JSInt64)
    -> (size : JSInt64)
    -> JSIO ()
  copyBufferSubData a b c d e f = primJS $
    WebGL2RenderingContextBase.prim__copyBufferSubData (cast a) b c d e f


  export
  copyTexSubImage3D :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
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
  copyTexSubImage3D a b c d e f g h i j = primJS $
    WebGL2RenderingContextBase.prim__copyTexSubImage3D
      (cast a)
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
  createQuery :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> JSIO (Maybe WebGLQuery)
  createQuery a = tryJS "WebGL2RenderingContextBase.createQuery" $
    WebGL2RenderingContextBase.prim__createQuery (cast a)


  export
  createSampler :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> JSIO (Maybe WebGLSampler)
  createSampler a = tryJS "WebGL2RenderingContextBase.createSampler" $
    WebGL2RenderingContextBase.prim__createSampler (cast a)


  export
  createTransformFeedback :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> JSIO (Maybe WebGLTransformFeedback)
  createTransformFeedback a = tryJS "WebGL2RenderingContextBase.createTransformFeedback" $
    WebGL2RenderingContextBase.prim__createTransformFeedback (cast a)


  export
  createVertexArray :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> JSIO (Maybe WebGLVertexArrayObject)
  createVertexArray a = tryJS "WebGL2RenderingContextBase.createVertexArray" $
    WebGL2RenderingContextBase.prim__createVertexArray (cast a)


  export
  deleteQuery :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (query : Maybe WebGLQuery)
    -> JSIO ()
  deleteQuery a b = primJS $
    WebGL2RenderingContextBase.prim__deleteQuery (cast a) (toFFI b)


  export
  deleteSampler :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (sampler : Maybe WebGLSampler)
    -> JSIO ()
  deleteSampler a b = primJS $
    WebGL2RenderingContextBase.prim__deleteSampler (cast a) (toFFI b)


  export
  deleteSync :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (sync : Maybe WebGLSync)
    -> JSIO ()
  deleteSync a b = primJS $
    WebGL2RenderingContextBase.prim__deleteSync (cast a) (toFFI b)


  export
  deleteTransformFeedback :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (tf : Maybe WebGLTransformFeedback)
    -> JSIO ()
  deleteTransformFeedback a b = primJS $
    WebGL2RenderingContextBase.prim__deleteTransformFeedback (cast a) (toFFI b)


  export
  deleteVertexArray :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (vertexArray : Maybe WebGLVertexArrayObject)
    -> JSIO ()
  deleteVertexArray a b = primJS $
    WebGL2RenderingContextBase.prim__deleteVertexArray (cast a) (toFFI b)


  export
  drawArraysInstanced :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (mode : Bits32)
    -> (first : Int32)
    -> (count : Int32)
    -> (instanceCount : Int32)
    -> JSIO ()
  drawArraysInstanced a b c d e = primJS $
    WebGL2RenderingContextBase.prim__drawArraysInstanced (cast a) b c d e


  export
  drawBuffers :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (buffers : Array Bits32)
    -> JSIO ()
  drawBuffers a b = primJS $
    WebGL2RenderingContextBase.prim__drawBuffers (cast a) b


  export
  drawElementsInstanced :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (mode : Bits32)
    -> (count : Int32)
    -> (type : Bits32)
    -> (offset : JSInt64)
    -> (instanceCount : Int32)
    -> JSIO ()
  drawElementsInstanced a b c d e f = primJS $
    WebGL2RenderingContextBase.prim__drawElementsInstanced (cast a) b c d e f


  export
  drawRangeElements :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (mode : Bits32)
    -> (start : Bits32)
    -> (end : Bits32)
    -> (count : Int32)
    -> (type : Bits32)
    -> (offset : JSInt64)
    -> JSIO ()
  drawRangeElements a b c d e f g = primJS $
    WebGL2RenderingContextBase.prim__drawRangeElements (cast a) b c d e f g


  export
  endQuery :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (target : Bits32)
    -> JSIO ()
  endQuery a b = primJS $ WebGL2RenderingContextBase.prim__endQuery (cast a) b


  export
  endTransformFeedback :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> JSIO ()
  endTransformFeedback a = primJS $
    WebGL2RenderingContextBase.prim__endTransformFeedback (cast a)


  export
  fenceSync :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (condition : Bits32)
    -> (flags : Bits32)
    -> JSIO (Maybe WebGLSync)
  fenceSync a b c = tryJS "WebGL2RenderingContextBase.fenceSync" $
    WebGL2RenderingContextBase.prim__fenceSync (cast a) b c


  export
  framebufferTextureLayer :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (target : Bits32)
    -> (attachment : Bits32)
    -> (texture : Maybe WebGLTexture)
    -> (level : Int32)
    -> (layer : Int32)
    -> JSIO ()
  framebufferTextureLayer a b c d e f = primJS $
    WebGL2RenderingContextBase.prim__framebufferTextureLayer
      (cast a)
      b
      c
      (toFFI d)
      e
      f


  export
  getActiveUniformBlockName :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (program : WebGLProgram)
    -> (uniformBlockIndex : Bits32)
    -> JSIO (Maybe String)
  getActiveUniformBlockName a b c = tryJS "WebGL2RenderingContextBase.getActiveUniformBlockName" $
    WebGL2RenderingContextBase.prim__getActiveUniformBlockName (cast a) b c


  export
  getActiveUniformBlockParameter :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (program : WebGLProgram)
    -> (uniformBlockIndex : Bits32)
    -> (pname : Bits32)
    -> JSIO Any
  getActiveUniformBlockParameter a b c d = tryJS "WebGL2RenderingContextBase.getActiveUniformBlockParameter" $
    WebGL2RenderingContextBase.prim__getActiveUniformBlockParameter (cast a) b c d


  export
  getActiveUniforms :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (program : WebGLProgram)
    -> (uniformIndices : Array Bits32)
    -> (pname : Bits32)
    -> JSIO Any
  getActiveUniforms a b c d = tryJS "WebGL2RenderingContextBase.getActiveUniforms" $
    WebGL2RenderingContextBase.prim__getActiveUniforms (cast a) b c d


  export
  getBufferSubData' :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (target : Bits32)
    -> (srcByteOffset : JSInt64)
    -> (dstBuffer : HSum
                      [ Int8Array
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
  getBufferSubData' a b c d e f = primJS $
    WebGL2RenderingContextBase.prim__getBufferSubData
      (cast a)
      b
      c
      (toFFI d)
      (toFFI e)
      (toFFI f)

  export
  getBufferSubData :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (target : Bits32)
    -> (srcByteOffset : JSInt64)
    -> (dstBuffer : HSum
                      [ Int8Array
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
  getBufferSubData a b c d = primJS $
    WebGL2RenderingContextBase.prim__getBufferSubData
      (cast a)
      b
      c
      (toFFI d)
      undef
      undef


  export
  getFragDataLocation :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (program : WebGLProgram)
    -> (name : String)
    -> JSIO Int32
  getFragDataLocation a b c = primJS $
    WebGL2RenderingContextBase.prim__getFragDataLocation (cast a) b c


  export
  getIndexedParameter :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (target : Bits32)
    -> (index : Bits32)
    -> JSIO Any
  getIndexedParameter a b c = tryJS "WebGL2RenderingContextBase.getIndexedParameter" $
    WebGL2RenderingContextBase.prim__getIndexedParameter (cast a) b c


  export
  getInternalformatParameter :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (target : Bits32)
    -> (internalformat : Bits32)
    -> (pname : Bits32)
    -> JSIO Any
  getInternalformatParameter a b c d = tryJS "WebGL2RenderingContextBase.getInternalformatParameter" $
    WebGL2RenderingContextBase.prim__getInternalformatParameter (cast a) b c d


  export
  getQueryParameter :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (query : WebGLQuery)
    -> (pname : Bits32)
    -> JSIO Any
  getQueryParameter a b c = tryJS "WebGL2RenderingContextBase.getQueryParameter" $
    WebGL2RenderingContextBase.prim__getQueryParameter (cast a) b c


  export
  getQuery :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (target : Bits32)
    -> (pname : Bits32)
    -> JSIO (Maybe WebGLQuery)
  getQuery a b c = tryJS "WebGL2RenderingContextBase.getQuery" $
    WebGL2RenderingContextBase.prim__getQuery (cast a) b c


  export
  getSamplerParameter :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (sampler : WebGLSampler)
    -> (pname : Bits32)
    -> JSIO Any
  getSamplerParameter a b c = tryJS "WebGL2RenderingContextBase.getSamplerParameter" $
    WebGL2RenderingContextBase.prim__getSamplerParameter (cast a) b c


  export
  getSyncParameter :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (sync : WebGLSync)
    -> (pname : Bits32)
    -> JSIO Any
  getSyncParameter a b c = tryJS "WebGL2RenderingContextBase.getSyncParameter" $
    WebGL2RenderingContextBase.prim__getSyncParameter (cast a) b c


  export
  getTransformFeedbackVarying :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (program : WebGLProgram)
    -> (index : Bits32)
    -> JSIO (Maybe WebGLActiveInfo)
  getTransformFeedbackVarying a b c = tryJS "WebGL2RenderingContextBase.getTransformFeedbackVarying" $
    WebGL2RenderingContextBase.prim__getTransformFeedbackVarying (cast a) b c


  export
  getUniformBlockIndex :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (program : WebGLProgram)
    -> (uniformBlockName : String)
    -> JSIO Bits32
  getUniformBlockIndex a b c = primJS $
    WebGL2RenderingContextBase.prim__getUniformBlockIndex (cast a) b c


  export
  getUniformIndices :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (program : WebGLProgram)
    -> (uniformNames : Array String)
    -> JSIO (Maybe (Array Bits32))
  getUniformIndices a b c = tryJS "WebGL2RenderingContextBase.getUniformIndices" $
    WebGL2RenderingContextBase.prim__getUniformIndices (cast a) b c


  export
  invalidateFramebuffer :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (target : Bits32)
    -> (attachments : Array Bits32)
    -> JSIO ()
  invalidateFramebuffer a b c = primJS $
    WebGL2RenderingContextBase.prim__invalidateFramebuffer (cast a) b c


  export
  invalidateSubFramebuffer :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (target : Bits32)
    -> (attachments : Array Bits32)
    -> (x : Int32)
    -> (y : Int32)
    -> (width : Int32)
    -> (height : Int32)
    -> JSIO ()
  invalidateSubFramebuffer a b c d e f g = primJS $
    WebGL2RenderingContextBase.prim__invalidateSubFramebuffer
      (cast a)
      b
      c
      d
      e
      f
      g


  export
  isQuery :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (query : Maybe WebGLQuery)
    -> JSIO Bool
  isQuery a b = tryJS "WebGL2RenderingContextBase.isQuery" $
    WebGL2RenderingContextBase.prim__isQuery (cast a) (toFFI b)


  export
  isSampler :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (sampler : Maybe WebGLSampler)
    -> JSIO Bool
  isSampler a b = tryJS "WebGL2RenderingContextBase.isSampler" $
    WebGL2RenderingContextBase.prim__isSampler (cast a) (toFFI b)


  export
  isSync :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (sync : Maybe WebGLSync)
    -> JSIO Bool
  isSync a b = tryJS "WebGL2RenderingContextBase.isSync" $
    WebGL2RenderingContextBase.prim__isSync (cast a) (toFFI b)


  export
  isTransformFeedback :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (tf : Maybe WebGLTransformFeedback)
    -> JSIO Bool
  isTransformFeedback a b = tryJS "WebGL2RenderingContextBase.isTransformFeedback" $
    WebGL2RenderingContextBase.prim__isTransformFeedback (cast a) (toFFI b)


  export
  isVertexArray :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (vertexArray : Maybe WebGLVertexArrayObject)
    -> JSIO Bool
  isVertexArray a b = tryJS "WebGL2RenderingContextBase.isVertexArray" $
    WebGL2RenderingContextBase.prim__isVertexArray (cast a) (toFFI b)


  export
  pauseTransformFeedback :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> JSIO ()
  pauseTransformFeedback a = primJS $
    WebGL2RenderingContextBase.prim__pauseTransformFeedback (cast a)


  export
  readBuffer :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (src : Bits32)
    -> JSIO ()
  readBuffer a b = primJS $
    WebGL2RenderingContextBase.prim__readBuffer (cast a) b


  export
  renderbufferStorageMultisample :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (target : Bits32)
    -> (samples : Int32)
    -> (internalformat : Bits32)
    -> (width : Int32)
    -> (height : Int32)
    -> JSIO ()
  renderbufferStorageMultisample a b c d e f = primJS $
    WebGL2RenderingContextBase.prim__renderbufferStorageMultisample
      (cast a)
      b
      c
      d
      e
      f


  export
  resumeTransformFeedback :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> JSIO ()
  resumeTransformFeedback a = primJS $
    WebGL2RenderingContextBase.prim__resumeTransformFeedback (cast a)


  export
  samplerParameterf :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (sampler : WebGLSampler)
    -> (pname : Bits32)
    -> (param : Double)
    -> JSIO ()
  samplerParameterf a b c d = primJS $
    WebGL2RenderingContextBase.prim__samplerParameterf (cast a) b c d


  export
  samplerParameteri :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (sampler : WebGLSampler)
    -> (pname : Bits32)
    -> (param : Int32)
    -> JSIO ()
  samplerParameteri a b c d = primJS $
    WebGL2RenderingContextBase.prim__samplerParameteri (cast a) b c d


  export
  texImage3D :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
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
  texImage3D a b c d e f g h i j k = primJS $
    WebGL2RenderingContextBase.prim__texImage3D (cast a) b c d e f g h i j k


  export
  texImage3D1 :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
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
    -> (source : HSum
                   [ ImageBitmap
                   , ImageData
                   , HTMLImageElement
                   , HTMLCanvasElement
                   , HTMLVideoElement
                   , OffscreenCanvas
                   ])
    -> JSIO ()
  texImage3D1 a b c d e f g h i j k = primJS $
    WebGL2RenderingContextBase.prim__texImage3D1
      (cast a)
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
  texImage3D2 :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
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
    -> (srcData : Maybe
                    (HSum
                       [ Int8Array
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
  texImage3D2 a b c d e f g h i j k = primJS $
    WebGL2RenderingContextBase.prim__texImage3D2
      (cast a)
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
  texImage3D3 :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
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
    -> (srcData : HSum
                    [ Int8Array
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
  texImage3D3 a b c d e f g h i j k l = primJS $
    WebGL2RenderingContextBase.prim__texImage3D3
      (cast a)
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
  texStorage2D :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (target : Bits32)
    -> (levels : Int32)
    -> (internalformat : Bits32)
    -> (width : Int32)
    -> (height : Int32)
    -> JSIO ()
  texStorage2D a b c d e f = primJS $
    WebGL2RenderingContextBase.prim__texStorage2D (cast a) b c d e f


  export
  texStorage3D :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (target : Bits32)
    -> (levels : Int32)
    -> (internalformat : Bits32)
    -> (width : Int32)
    -> (height : Int32)
    -> (depth : Int32)
    -> JSIO ()
  texStorage3D a b c d e f g = primJS $
    WebGL2RenderingContextBase.prim__texStorage3D (cast a) b c d e f g


  export
  texSubImage3D :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
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
  texSubImage3D a b c d e f g h i j k l = primJS $
    WebGL2RenderingContextBase.prim__texSubImage3D
      (cast a)
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
  texSubImage3D1 :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
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
    -> (source : HSum
                   [ ImageBitmap
                   , ImageData
                   , HTMLImageElement
                   , HTMLCanvasElement
                   , HTMLVideoElement
                   , OffscreenCanvas
                   ])
    -> JSIO ()
  texSubImage3D1 a b c d e f g h i j k l = primJS $
    WebGL2RenderingContextBase.prim__texSubImage3D1
      (cast a)
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
  texSubImage3D2' :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
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
    -> (srcData : Maybe
                    (HSum
                       [ Int8Array
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
  texSubImage3D2' a b c d e f g h i j k l m = primJS $
    WebGL2RenderingContextBase.prim__texSubImage3D2
      (cast a)
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
  texSubImage3D2 :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
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
    -> (srcData : Maybe
                    (HSum
                       [ Int8Array
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
  texSubImage3D2 a b c d e f g h i j k l = primJS $
    WebGL2RenderingContextBase.prim__texSubImage3D2
      (cast a)
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
  transformFeedbackVaryings :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (program : WebGLProgram)
    -> (varyings : Array String)
    -> (bufferMode : Bits32)
    -> JSIO ()
  transformFeedbackVaryings a b c d = primJS $
    WebGL2RenderingContextBase.prim__transformFeedbackVaryings (cast a) b c d


  export
  uniform1ui :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (v0 : Bits32)
    -> JSIO ()
  uniform1ui a b c = primJS $
    WebGL2RenderingContextBase.prim__uniform1ui (cast a) (toFFI b) c


  export
  uniform1uiv' :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (data_ : HSum [UInt8Array, Array Bits32])
    -> (srcOffset : Optional Bits32)
    -> (srcLength : Optional Bits32)
    -> JSIO ()
  uniform1uiv' a b c d e = primJS $
    WebGL2RenderingContextBase.prim__uniform1uiv
      (cast a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      (toFFI e)

  export
  uniform1uiv :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (data_ : HSum [UInt8Array, Array Bits32])
    -> JSIO ()
  uniform1uiv a b c = primJS $
    WebGL2RenderingContextBase.prim__uniform1uiv
      (cast a)
      (toFFI b)
      (toFFI c)
      undef
      undef


  export
  uniform2ui :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (v0 : Bits32)
    -> (v1 : Bits32)
    -> JSIO ()
  uniform2ui a b c d = primJS $
    WebGL2RenderingContextBase.prim__uniform2ui (cast a) (toFFI b) c d


  export
  uniform2uiv' :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (data_ : HSum [UInt8Array, Array Bits32])
    -> (srcOffset : Optional Bits32)
    -> (srcLength : Optional Bits32)
    -> JSIO ()
  uniform2uiv' a b c d e = primJS $
    WebGL2RenderingContextBase.prim__uniform2uiv
      (cast a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      (toFFI e)

  export
  uniform2uiv :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (data_ : HSum [UInt8Array, Array Bits32])
    -> JSIO ()
  uniform2uiv a b c = primJS $
    WebGL2RenderingContextBase.prim__uniform2uiv
      (cast a)
      (toFFI b)
      (toFFI c)
      undef
      undef


  export
  uniform3ui :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (v0 : Bits32)
    -> (v1 : Bits32)
    -> (v2 : Bits32)
    -> JSIO ()
  uniform3ui a b c d e = primJS $
    WebGL2RenderingContextBase.prim__uniform3ui (cast a) (toFFI b) c d e


  export
  uniform3uiv' :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (data_ : HSum [UInt8Array, Array Bits32])
    -> (srcOffset : Optional Bits32)
    -> (srcLength : Optional Bits32)
    -> JSIO ()
  uniform3uiv' a b c d e = primJS $
    WebGL2RenderingContextBase.prim__uniform3uiv
      (cast a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      (toFFI e)

  export
  uniform3uiv :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (data_ : HSum [UInt8Array, Array Bits32])
    -> JSIO ()
  uniform3uiv a b c = primJS $
    WebGL2RenderingContextBase.prim__uniform3uiv
      (cast a)
      (toFFI b)
      (toFFI c)
      undef
      undef


  export
  uniform4ui :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (v0 : Bits32)
    -> (v1 : Bits32)
    -> (v2 : Bits32)
    -> (v3 : Bits32)
    -> JSIO ()
  uniform4ui a b c d e f = primJS $
    WebGL2RenderingContextBase.prim__uniform4ui (cast a) (toFFI b) c d e f


  export
  uniform4uiv' :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (data_ : HSum [UInt8Array, Array Bits32])
    -> (srcOffset : Optional Bits32)
    -> (srcLength : Optional Bits32)
    -> JSIO ()
  uniform4uiv' a b c d e = primJS $
    WebGL2RenderingContextBase.prim__uniform4uiv
      (cast a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      (toFFI e)

  export
  uniform4uiv :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (data_ : HSum [UInt8Array, Array Bits32])
    -> JSIO ()
  uniform4uiv a b c = primJS $
    WebGL2RenderingContextBase.prim__uniform4uiv
      (cast a)
      (toFFI b)
      (toFFI c)
      undef
      undef


  export
  uniformBlockBinding :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (program : WebGLProgram)
    -> (uniformBlockIndex : Bits32)
    -> (uniformBlockBinding : Bits32)
    -> JSIO ()
  uniformBlockBinding a b c d = primJS $
    WebGL2RenderingContextBase.prim__uniformBlockBinding (cast a) b c d


  export
  uniformMatrix2x3fv' :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (transpose : Bool)
    -> (data_ : HSum [Float32Array, Array Double])
    -> (srcOffset : Optional Bits32)
    -> (srcLength : Optional Bits32)
    -> JSIO ()
  uniformMatrix2x3fv' a b c d e f = primJS $
    WebGL2RenderingContextBase.prim__uniformMatrix2x3fv
      (cast a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      (toFFI e)
      (toFFI f)

  export
  uniformMatrix2x3fv :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (transpose : Bool)
    -> (data_ : HSum [Float32Array, Array Double])
    -> JSIO ()
  uniformMatrix2x3fv a b c d = primJS $
    WebGL2RenderingContextBase.prim__uniformMatrix2x3fv
      (cast a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      undef
      undef


  export
  uniformMatrix2x4fv' :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (transpose : Bool)
    -> (data_ : HSum [Float32Array, Array Double])
    -> (srcOffset : Optional Bits32)
    -> (srcLength : Optional Bits32)
    -> JSIO ()
  uniformMatrix2x4fv' a b c d e f = primJS $
    WebGL2RenderingContextBase.prim__uniformMatrix2x4fv
      (cast a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      (toFFI e)
      (toFFI f)

  export
  uniformMatrix2x4fv :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (transpose : Bool)
    -> (data_ : HSum [Float32Array, Array Double])
    -> JSIO ()
  uniformMatrix2x4fv a b c d = primJS $
    WebGL2RenderingContextBase.prim__uniformMatrix2x4fv
      (cast a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      undef
      undef


  export
  uniformMatrix3x2fv' :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (transpose : Bool)
    -> (data_ : HSum [Float32Array, Array Double])
    -> (srcOffset : Optional Bits32)
    -> (srcLength : Optional Bits32)
    -> JSIO ()
  uniformMatrix3x2fv' a b c d e f = primJS $
    WebGL2RenderingContextBase.prim__uniformMatrix3x2fv
      (cast a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      (toFFI e)
      (toFFI f)

  export
  uniformMatrix3x2fv :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (transpose : Bool)
    -> (data_ : HSum [Float32Array, Array Double])
    -> JSIO ()
  uniformMatrix3x2fv a b c d = primJS $
    WebGL2RenderingContextBase.prim__uniformMatrix3x2fv
      (cast a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      undef
      undef


  export
  uniformMatrix3x4fv' :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (transpose : Bool)
    -> (data_ : HSum [Float32Array, Array Double])
    -> (srcOffset : Optional Bits32)
    -> (srcLength : Optional Bits32)
    -> JSIO ()
  uniformMatrix3x4fv' a b c d e f = primJS $
    WebGL2RenderingContextBase.prim__uniformMatrix3x4fv
      (cast a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      (toFFI e)
      (toFFI f)

  export
  uniformMatrix3x4fv :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (transpose : Bool)
    -> (data_ : HSum [Float32Array, Array Double])
    -> JSIO ()
  uniformMatrix3x4fv a b c d = primJS $
    WebGL2RenderingContextBase.prim__uniformMatrix3x4fv
      (cast a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      undef
      undef


  export
  uniformMatrix4x2fv' :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (transpose : Bool)
    -> (data_ : HSum [Float32Array, Array Double])
    -> (srcOffset : Optional Bits32)
    -> (srcLength : Optional Bits32)
    -> JSIO ()
  uniformMatrix4x2fv' a b c d e f = primJS $
    WebGL2RenderingContextBase.prim__uniformMatrix4x2fv
      (cast a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      (toFFI e)
      (toFFI f)

  export
  uniformMatrix4x2fv :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (transpose : Bool)
    -> (data_ : HSum [Float32Array, Array Double])
    -> JSIO ()
  uniformMatrix4x2fv a b c d = primJS $
    WebGL2RenderingContextBase.prim__uniformMatrix4x2fv
      (cast a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      undef
      undef


  export
  uniformMatrix4x3fv' :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (transpose : Bool)
    -> (data_ : HSum [Float32Array, Array Double])
    -> (srcOffset : Optional Bits32)
    -> (srcLength : Optional Bits32)
    -> JSIO ()
  uniformMatrix4x3fv' a b c d e f = primJS $
    WebGL2RenderingContextBase.prim__uniformMatrix4x3fv
      (cast a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      (toFFI e)
      (toFFI f)

  export
  uniformMatrix4x3fv :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (transpose : Bool)
    -> (data_ : HSum [Float32Array, Array Double])
    -> JSIO ()
  uniformMatrix4x3fv a b c d = primJS $
    WebGL2RenderingContextBase.prim__uniformMatrix4x3fv
      (cast a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      undef
      undef


  export
  vertexAttribDivisor :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (index : Bits32)
    -> (divisor : Bits32)
    -> JSIO ()
  vertexAttribDivisor a b c = primJS $
    WebGL2RenderingContextBase.prim__vertexAttribDivisor (cast a) b c


  export
  vertexAttribI4i :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (index : Bits32)
    -> (x : Int32)
    -> (y : Int32)
    -> (z : Int32)
    -> (w : Int32)
    -> JSIO ()
  vertexAttribI4i a b c d e f = primJS $
    WebGL2RenderingContextBase.prim__vertexAttribI4i (cast a) b c d e f


  export
  vertexAttribI4iv :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (index : Bits32)
    -> (values : HSum [Int32Array, Array Int32])
    -> JSIO ()
  vertexAttribI4iv a b c = primJS $
    WebGL2RenderingContextBase.prim__vertexAttribI4iv (cast a) b (toFFI c)


  export
  vertexAttribI4ui :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (index : Bits32)
    -> (x : Bits32)
    -> (y : Bits32)
    -> (z : Bits32)
    -> (w : Bits32)
    -> JSIO ()
  vertexAttribI4ui a b c d e f = primJS $
    WebGL2RenderingContextBase.prim__vertexAttribI4ui (cast a) b c d e f


  export
  vertexAttribI4uiv :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (index : Bits32)
    -> (values : HSum [UInt8Array, Array Bits32])
    -> JSIO ()
  vertexAttribI4uiv a b c = primJS $
    WebGL2RenderingContextBase.prim__vertexAttribI4uiv (cast a) b (toFFI c)


  export
  vertexAttribIPointer :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (index : Bits32)
    -> (size : Int32)
    -> (type : Bits32)
    -> (stride : Int32)
    -> (offset : JSInt64)
    -> JSIO ()
  vertexAttribIPointer a b c d e f = primJS $
    WebGL2RenderingContextBase.prim__vertexAttribIPointer (cast a) b c d e f


  export
  waitSync :
       {auto _ : Cast t1 WebGL2RenderingContextBase}
    -> (obj : t1)
    -> (sync : WebGLSync)
    -> (flags : Bits32)
    -> (timeout : JSInt64)
    -> JSIO ()
  waitSync a b c d = primJS $
    WebGL2RenderingContextBase.prim__waitSync (cast a) b c d



namespace WebGL2RenderingContextOverloads

  export
  bufferData :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (target : Bits32)
    -> (size : JSInt64)
    -> (usage : Bits32)
    -> JSIO ()
  bufferData a b c d = primJS $
    WebGL2RenderingContextOverloads.prim__bufferData (cast a) b c d


  export
  bufferData1 :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (target : Bits32)
    -> (srcData : Maybe
                    (HSum
                       [ Int8Array
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
  bufferData1 a b c d = primJS $
    WebGL2RenderingContextOverloads.prim__bufferData1 (cast a) b (toFFI c) d


  export
  bufferData2' :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (target : Bits32)
    -> (srcData : HSum
                    [ Int8Array
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
  bufferData2' a b c d e f = primJS $
    WebGL2RenderingContextOverloads.prim__bufferData2
      (cast a)
      b
      (toFFI c)
      d
      e
      (toFFI f)

  export
  bufferData2 :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (target : Bits32)
    -> (srcData : HSum
                    [ Int8Array
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
  bufferData2 a b c d e = primJS $
    WebGL2RenderingContextOverloads.prim__bufferData2
      (cast a)
      b
      (toFFI c)
      d
      e
      undef


  export
  bufferSubData :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (target : Bits32)
    -> (dstByteOffset : JSInt64)
    -> (srcData : HSum
                    [ Int8Array
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
  bufferSubData a b c d = primJS $
    WebGL2RenderingContextOverloads.prim__bufferSubData (cast a) b c (toFFI d)


  export
  bufferSubData1' :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (target : Bits32)
    -> (dstByteOffset : JSInt64)
    -> (srcData : HSum
                    [ Int8Array
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
  bufferSubData1' a b c d e f = primJS $
    WebGL2RenderingContextOverloads.prim__bufferSubData1
      (cast a)
      b
      c
      (toFFI d)
      e
      (toFFI f)

  export
  bufferSubData1 :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (target : Bits32)
    -> (dstByteOffset : JSInt64)
    -> (srcData : HSum
                    [ Int8Array
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
  bufferSubData1 a b c d e = primJS $
    WebGL2RenderingContextOverloads.prim__bufferSubData1
      (cast a)
      b
      c
      (toFFI d)
      e
      undef


  export
  compressedTexImage2D :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
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
  compressedTexImage2D a b c d e f g h i = primJS $
    WebGL2RenderingContextOverloads.prim__compressedTexImage2D
      (cast a)
      b
      c
      d
      e
      f
      g
      h
      i


  export
  compressedTexImage2D1' :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (target : Bits32)
    -> (level : Int32)
    -> (internalformat : Bits32)
    -> (width : Int32)
    -> (height : Int32)
    -> (border : Int32)
    -> (srcData : HSum
                    [ Int8Array
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
  compressedTexImage2D1' a b c d e f g h i j = primJS $
    WebGL2RenderingContextOverloads.prim__compressedTexImage2D1
      (cast a)
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
  compressedTexImage2D1 :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (target : Bits32)
    -> (level : Int32)
    -> (internalformat : Bits32)
    -> (width : Int32)
    -> (height : Int32)
    -> (border : Int32)
    -> (srcData : HSum
                    [ Int8Array
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
  compressedTexImage2D1 a b c d e f g h = primJS $
    WebGL2RenderingContextOverloads.prim__compressedTexImage2D1
      (cast a)
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
  compressedTexSubImage2D :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
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
  compressedTexSubImage2D a b c d e f g h i j = primJS $
    WebGL2RenderingContextOverloads.prim__compressedTexSubImage2D
      (cast a)
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
  compressedTexSubImage2D1' :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (target : Bits32)
    -> (level : Int32)
    -> (xoffset : Int32)
    -> (yoffset : Int32)
    -> (width : Int32)
    -> (height : Int32)
    -> (format : Bits32)
    -> (srcData : HSum
                    [ Int8Array
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
  compressedTexSubImage2D1' a b c d e f g h i j k = primJS $
    WebGL2RenderingContextOverloads.prim__compressedTexSubImage2D1
      (cast a)
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
  compressedTexSubImage2D1 :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (target : Bits32)
    -> (level : Int32)
    -> (xoffset : Int32)
    -> (yoffset : Int32)
    -> (width : Int32)
    -> (height : Int32)
    -> (format : Bits32)
    -> (srcData : HSum
                    [ Int8Array
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
  compressedTexSubImage2D1 a b c d e f g h i = primJS $
    WebGL2RenderingContextOverloads.prim__compressedTexSubImage2D1
      (cast a)
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
  readPixels :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (x : Int32)
    -> (y : Int32)
    -> (width : Int32)
    -> (height : Int32)
    -> (format : Bits32)
    -> (type : Bits32)
    -> (dstData : Maybe
                    (HSum
                       [ Int8Array
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
  readPixels a b c d e f g h = primJS $
    WebGL2RenderingContextOverloads.prim__readPixels
      (cast a)
      b
      c
      d
      e
      f
      g
      (toFFI h)


  export
  readPixels1 :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (x : Int32)
    -> (y : Int32)
    -> (width : Int32)
    -> (height : Int32)
    -> (format : Bits32)
    -> (type : Bits32)
    -> (offset : JSInt64)
    -> JSIO ()
  readPixels1 a b c d e f g h = primJS $
    WebGL2RenderingContextOverloads.prim__readPixels1 (cast a) b c d e f g h


  export
  readPixels2 :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (x : Int32)
    -> (y : Int32)
    -> (width : Int32)
    -> (height : Int32)
    -> (format : Bits32)
    -> (type : Bits32)
    -> (dstData : HSum
                    [ Int8Array
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
  readPixels2 a b c d e f g h i = primJS $
    WebGL2RenderingContextOverloads.prim__readPixels2
      (cast a)
      b
      c
      d
      e
      f
      g
      (toFFI h)
      i


  export
  texImage2D :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (target : Bits32)
    -> (level : Int32)
    -> (internalformat : Int32)
    -> (width : Int32)
    -> (height : Int32)
    -> (border : Int32)
    -> (format : Bits32)
    -> (type : Bits32)
    -> (pixels : Maybe
                   (HSum
                      [ Int8Array
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
  texImage2D a b c d e f g h i j = primJS $
    WebGL2RenderingContextOverloads.prim__texImage2D
      (cast a)
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
  texImage2D1 :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (target : Bits32)
    -> (level : Int32)
    -> (internalformat : Int32)
    -> (format : Bits32)
    -> (type : Bits32)
    -> (source : HSum
                   [ ImageBitmap
                   , ImageData
                   , HTMLImageElement
                   , HTMLCanvasElement
                   , HTMLVideoElement
                   , OffscreenCanvas
                   ])
    -> JSIO ()
  texImage2D1 a b c d e f g = primJS $
    WebGL2RenderingContextOverloads.prim__texImage2D1
      (cast a)
      b
      c
      d
      e
      f
      (toFFI g)


  export
  texImage2D2 :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
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
  texImage2D2 a b c d e f g h i j = primJS $
    WebGL2RenderingContextOverloads.prim__texImage2D2 (cast a) b c d e f g h i j


  export
  texImage2D3 :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (target : Bits32)
    -> (level : Int32)
    -> (internalformat : Int32)
    -> (width : Int32)
    -> (height : Int32)
    -> (border : Int32)
    -> (format : Bits32)
    -> (type : Bits32)
    -> (source : HSum
                   [ ImageBitmap
                   , ImageData
                   , HTMLImageElement
                   , HTMLCanvasElement
                   , HTMLVideoElement
                   , OffscreenCanvas
                   ])
    -> JSIO ()
  texImage2D3 a b c d e f g h i j = primJS $
    WebGL2RenderingContextOverloads.prim__texImage2D3
      (cast a)
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
  texImage2D4 :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (target : Bits32)
    -> (level : Int32)
    -> (internalformat : Int32)
    -> (width : Int32)
    -> (height : Int32)
    -> (border : Int32)
    -> (format : Bits32)
    -> (type : Bits32)
    -> (srcData : HSum
                    [ Int8Array
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
  texImage2D4 a b c d e f g h i j k = primJS $
    WebGL2RenderingContextOverloads.prim__texImage2D4
      (cast a)
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
  texSubImage2D :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (target : Bits32)
    -> (level : Int32)
    -> (xoffset : Int32)
    -> (yoffset : Int32)
    -> (width : Int32)
    -> (height : Int32)
    -> (format : Bits32)
    -> (type : Bits32)
    -> (pixels : Maybe
                   (HSum
                      [ Int8Array
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
  texSubImage2D a b c d e f g h i j = primJS $
    WebGL2RenderingContextOverloads.prim__texSubImage2D
      (cast a)
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
  texSubImage2D1 :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (target : Bits32)
    -> (level : Int32)
    -> (xoffset : Int32)
    -> (yoffset : Int32)
    -> (format : Bits32)
    -> (type : Bits32)
    -> (source : HSum
                   [ ImageBitmap
                   , ImageData
                   , HTMLImageElement
                   , HTMLCanvasElement
                   , HTMLVideoElement
                   , OffscreenCanvas
                   ])
    -> JSIO ()
  texSubImage2D1 a b c d e f g h = primJS $
    WebGL2RenderingContextOverloads.prim__texSubImage2D1
      (cast a)
      b
      c
      d
      e
      f
      g
      (toFFI h)


  export
  texSubImage2D2 :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
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
  texSubImage2D2 a b c d e f g h i j = primJS $
    WebGL2RenderingContextOverloads.prim__texSubImage2D2
      (cast a)
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
  texSubImage2D3 :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (target : Bits32)
    -> (level : Int32)
    -> (xoffset : Int32)
    -> (yoffset : Int32)
    -> (width : Int32)
    -> (height : Int32)
    -> (format : Bits32)
    -> (type : Bits32)
    -> (source : HSum
                   [ ImageBitmap
                   , ImageData
                   , HTMLImageElement
                   , HTMLCanvasElement
                   , HTMLVideoElement
                   , OffscreenCanvas
                   ])
    -> JSIO ()
  texSubImage2D3 a b c d e f g h i j = primJS $
    WebGL2RenderingContextOverloads.prim__texSubImage2D3
      (cast a)
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
  texSubImage2D4 :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (target : Bits32)
    -> (level : Int32)
    -> (xoffset : Int32)
    -> (yoffset : Int32)
    -> (width : Int32)
    -> (height : Int32)
    -> (format : Bits32)
    -> (type : Bits32)
    -> (srcData : HSum
                    [ Int8Array
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
  texSubImage2D4 a b c d e f g h i j k = primJS $
    WebGL2RenderingContextOverloads.prim__texSubImage2D4
      (cast a)
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
  uniform1fv' :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (data_ : HSum [Float32Array, Array Double])
    -> (srcOffset : Optional Bits32)
    -> (srcLength : Optional Bits32)
    -> JSIO ()
  uniform1fv' a b c d e = primJS $
    WebGL2RenderingContextOverloads.prim__uniform1fv
      (cast a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      (toFFI e)

  export
  uniform1fv :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (data_ : HSum [Float32Array, Array Double])
    -> JSIO ()
  uniform1fv a b c = primJS $
    WebGL2RenderingContextOverloads.prim__uniform1fv
      (cast a)
      (toFFI b)
      (toFFI c)
      undef
      undef


  export
  uniform1iv' :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (data_ : HSum [Int32Array, Array Int32])
    -> (srcOffset : Optional Bits32)
    -> (srcLength : Optional Bits32)
    -> JSIO ()
  uniform1iv' a b c d e = primJS $
    WebGL2RenderingContextOverloads.prim__uniform1iv
      (cast a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      (toFFI e)

  export
  uniform1iv :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (data_ : HSum [Int32Array, Array Int32])
    -> JSIO ()
  uniform1iv a b c = primJS $
    WebGL2RenderingContextOverloads.prim__uniform1iv
      (cast a)
      (toFFI b)
      (toFFI c)
      undef
      undef


  export
  uniform2fv' :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (data_ : HSum [Float32Array, Array Double])
    -> (srcOffset : Optional Bits32)
    -> (srcLength : Optional Bits32)
    -> JSIO ()
  uniform2fv' a b c d e = primJS $
    WebGL2RenderingContextOverloads.prim__uniform2fv
      (cast a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      (toFFI e)

  export
  uniform2fv :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (data_ : HSum [Float32Array, Array Double])
    -> JSIO ()
  uniform2fv a b c = primJS $
    WebGL2RenderingContextOverloads.prim__uniform2fv
      (cast a)
      (toFFI b)
      (toFFI c)
      undef
      undef


  export
  uniform2iv' :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (data_ : HSum [Int32Array, Array Int32])
    -> (srcOffset : Optional Bits32)
    -> (srcLength : Optional Bits32)
    -> JSIO ()
  uniform2iv' a b c d e = primJS $
    WebGL2RenderingContextOverloads.prim__uniform2iv
      (cast a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      (toFFI e)

  export
  uniform2iv :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (data_ : HSum [Int32Array, Array Int32])
    -> JSIO ()
  uniform2iv a b c = primJS $
    WebGL2RenderingContextOverloads.prim__uniform2iv
      (cast a)
      (toFFI b)
      (toFFI c)
      undef
      undef


  export
  uniform3fv' :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (data_ : HSum [Float32Array, Array Double])
    -> (srcOffset : Optional Bits32)
    -> (srcLength : Optional Bits32)
    -> JSIO ()
  uniform3fv' a b c d e = primJS $
    WebGL2RenderingContextOverloads.prim__uniform3fv
      (cast a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      (toFFI e)

  export
  uniform3fv :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (data_ : HSum [Float32Array, Array Double])
    -> JSIO ()
  uniform3fv a b c = primJS $
    WebGL2RenderingContextOverloads.prim__uniform3fv
      (cast a)
      (toFFI b)
      (toFFI c)
      undef
      undef


  export
  uniform3iv' :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (data_ : HSum [Int32Array, Array Int32])
    -> (srcOffset : Optional Bits32)
    -> (srcLength : Optional Bits32)
    -> JSIO ()
  uniform3iv' a b c d e = primJS $
    WebGL2RenderingContextOverloads.prim__uniform3iv
      (cast a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      (toFFI e)

  export
  uniform3iv :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (data_ : HSum [Int32Array, Array Int32])
    -> JSIO ()
  uniform3iv a b c = primJS $
    WebGL2RenderingContextOverloads.prim__uniform3iv
      (cast a)
      (toFFI b)
      (toFFI c)
      undef
      undef


  export
  uniform4fv' :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (data_ : HSum [Float32Array, Array Double])
    -> (srcOffset : Optional Bits32)
    -> (srcLength : Optional Bits32)
    -> JSIO ()
  uniform4fv' a b c d e = primJS $
    WebGL2RenderingContextOverloads.prim__uniform4fv
      (cast a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      (toFFI e)

  export
  uniform4fv :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (data_ : HSum [Float32Array, Array Double])
    -> JSIO ()
  uniform4fv a b c = primJS $
    WebGL2RenderingContextOverloads.prim__uniform4fv
      (cast a)
      (toFFI b)
      (toFFI c)
      undef
      undef


  export
  uniform4iv' :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (data_ : HSum [Int32Array, Array Int32])
    -> (srcOffset : Optional Bits32)
    -> (srcLength : Optional Bits32)
    -> JSIO ()
  uniform4iv' a b c d e = primJS $
    WebGL2RenderingContextOverloads.prim__uniform4iv
      (cast a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      (toFFI e)

  export
  uniform4iv :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (data_ : HSum [Int32Array, Array Int32])
    -> JSIO ()
  uniform4iv a b c = primJS $
    WebGL2RenderingContextOverloads.prim__uniform4iv
      (cast a)
      (toFFI b)
      (toFFI c)
      undef
      undef


  export
  uniformMatrix2fv' :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (transpose : Bool)
    -> (data_ : HSum [Float32Array, Array Double])
    -> (srcOffset : Optional Bits32)
    -> (srcLength : Optional Bits32)
    -> JSIO ()
  uniformMatrix2fv' a b c d e f = primJS $
    WebGL2RenderingContextOverloads.prim__uniformMatrix2fv
      (cast a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      (toFFI e)
      (toFFI f)

  export
  uniformMatrix2fv :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (transpose : Bool)
    -> (data_ : HSum [Float32Array, Array Double])
    -> JSIO ()
  uniformMatrix2fv a b c d = primJS $
    WebGL2RenderingContextOverloads.prim__uniformMatrix2fv
      (cast a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      undef
      undef


  export
  uniformMatrix3fv' :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (transpose : Bool)
    -> (data_ : HSum [Float32Array, Array Double])
    -> (srcOffset : Optional Bits32)
    -> (srcLength : Optional Bits32)
    -> JSIO ()
  uniformMatrix3fv' a b c d e f = primJS $
    WebGL2RenderingContextOverloads.prim__uniformMatrix3fv
      (cast a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      (toFFI e)
      (toFFI f)

  export
  uniformMatrix3fv :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (transpose : Bool)
    -> (data_ : HSum [Float32Array, Array Double])
    -> JSIO ()
  uniformMatrix3fv a b c d = primJS $
    WebGL2RenderingContextOverloads.prim__uniformMatrix3fv
      (cast a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      undef
      undef


  export
  uniformMatrix4fv' :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (transpose : Bool)
    -> (data_ : HSum [Float32Array, Array Double])
    -> (srcOffset : Optional Bits32)
    -> (srcLength : Optional Bits32)
    -> JSIO ()
  uniformMatrix4fv' a b c d e f = primJS $
    WebGL2RenderingContextOverloads.prim__uniformMatrix4fv
      (cast a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      (toFFI e)
      (toFFI f)

  export
  uniformMatrix4fv :
       {auto _ : Cast t1 WebGL2RenderingContextOverloads}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (transpose : Bool)
    -> (data_ : HSum [Float32Array, Array Double])
    -> JSIO ()
  uniformMatrix4fv a b c d = primJS $
    WebGL2RenderingContextOverloads.prim__uniformMatrix4fv
      (cast a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      undef
      undef



namespace WebGLRenderingContextBase

  export
  ACTIVE_ATTRIBUTES : Bits32
  ACTIVE_ATTRIBUTES = 0x8b89


  export
  ACTIVE_TEXTURE : Bits32
  ACTIVE_TEXTURE = 0x84e0


  export
  ACTIVE_UNIFORMS : Bits32
  ACTIVE_UNIFORMS = 0x8b86


  export
  ALIASED_LINE_WIDTH_RANGE : Bits32
  ALIASED_LINE_WIDTH_RANGE = 0x846e


  export
  ALIASED_POINT_SIZE_RANGE : Bits32
  ALIASED_POINT_SIZE_RANGE = 0x846d


  export
  ALPHA : Bits32
  ALPHA = 0x1906


  export
  ALPHA_BITS : Bits32
  ALPHA_BITS = 0xd55


  export
  ALWAYS : Bits32
  ALWAYS = 0x207


  export
  ARRAY_BUFFER : Bits32
  ARRAY_BUFFER = 0x8892


  export
  ARRAY_BUFFER_BINDING : Bits32
  ARRAY_BUFFER_BINDING = 0x8894


  export
  ATTACHED_SHADERS : Bits32
  ATTACHED_SHADERS = 0x8b85


  export
  BACK : Bits32
  BACK = 0x405


  export
  BLEND : Bits32
  BLEND = 0xbe2


  export
  BLEND_COLOR : Bits32
  BLEND_COLOR = 0x8005


  export
  BLEND_DST_ALPHA : Bits32
  BLEND_DST_ALPHA = 0x80ca


  export
  BLEND_DST_RGB : Bits32
  BLEND_DST_RGB = 0x80c8


  export
  BLEND_EQUATION : Bits32
  BLEND_EQUATION = 0x8009


  export
  BLEND_EQUATION_ALPHA : Bits32
  BLEND_EQUATION_ALPHA = 0x883d


  export
  BLEND_EQUATION_RGB : Bits32
  BLEND_EQUATION_RGB = 0x8009


  export
  BLEND_SRC_ALPHA : Bits32
  BLEND_SRC_ALPHA = 0x80cb


  export
  BLEND_SRC_RGB : Bits32
  BLEND_SRC_RGB = 0x80c9


  export
  BLUE_BITS : Bits32
  BLUE_BITS = 0xd54


  export
  BOOL : Bits32
  BOOL = 0x8b56


  export
  BOOL_VEC2 : Bits32
  BOOL_VEC2 = 0x8b57


  export
  BOOL_VEC3 : Bits32
  BOOL_VEC3 = 0x8b58


  export
  BOOL_VEC4 : Bits32
  BOOL_VEC4 = 0x8b59


  export
  BROWSER_DEFAULT_WEBGL : Bits32
  BROWSER_DEFAULT_WEBGL = 0x9244


  export
  BUFFER_SIZE : Bits32
  BUFFER_SIZE = 0x8764


  export
  BUFFER_USAGE : Bits32
  BUFFER_USAGE = 0x8765


  export
  BYTE : Bits32
  BYTE = 0x1400


  export
  CCW : Bits32
  CCW = 0x901


  export
  CLAMP_TO_EDGE : Bits32
  CLAMP_TO_EDGE = 0x812f


  export
  COLOR_ATTACHMENT0 : Bits32
  COLOR_ATTACHMENT0 = 0x8ce0


  export
  COLOR_BUFFER_BIT : Bits32
  COLOR_BUFFER_BIT = 0x4000


  export
  COLOR_CLEAR_VALUE : Bits32
  COLOR_CLEAR_VALUE = 0xc22


  export
  COLOR_WRITEMASK : Bits32
  COLOR_WRITEMASK = 0xc23


  export
  COMPILE_STATUS : Bits32
  COMPILE_STATUS = 0x8b81


  export
  COMPRESSED_TEXTURE_FORMATS : Bits32
  COMPRESSED_TEXTURE_FORMATS = 0x86a3


  export
  CONSTANT_ALPHA : Bits32
  CONSTANT_ALPHA = 0x8003


  export
  CONSTANT_COLOR : Bits32
  CONSTANT_COLOR = 0x8001


  export
  CONTEXT_LOST_WEBGL : Bits32
  CONTEXT_LOST_WEBGL = 0x9242


  export
  CULL_FACE : Bits32
  CULL_FACE = 0xb44


  export
  CULL_FACE_MODE : Bits32
  CULL_FACE_MODE = 0xb45


  export
  CURRENT_PROGRAM : Bits32
  CURRENT_PROGRAM = 0x8b8d


  export
  CURRENT_VERTEX_ATTRIB : Bits32
  CURRENT_VERTEX_ATTRIB = 0x8626


  export
  CW : Bits32
  CW = 0x900


  export
  DECR : Bits32
  DECR = 0x1e03


  export
  DECR_WRAP : Bits32
  DECR_WRAP = 0x8508


  export
  DELETE_STATUS : Bits32
  DELETE_STATUS = 0x8b80


  export
  DEPTH_ATTACHMENT : Bits32
  DEPTH_ATTACHMENT = 0x8d00


  export
  DEPTH_BITS : Bits32
  DEPTH_BITS = 0xd56


  export
  DEPTH_BUFFER_BIT : Bits32
  DEPTH_BUFFER_BIT = 0x100


  export
  DEPTH_CLEAR_VALUE : Bits32
  DEPTH_CLEAR_VALUE = 0xb73


  export
  DEPTH_COMPONENT : Bits32
  DEPTH_COMPONENT = 0x1902


  export
  DEPTH_COMPONENT16 : Bits32
  DEPTH_COMPONENT16 = 0x81a5


  export
  DEPTH_FUNC : Bits32
  DEPTH_FUNC = 0xb74


  export
  DEPTH_RANGE : Bits32
  DEPTH_RANGE = 0xb70


  export
  DEPTH_STENCIL : Bits32
  DEPTH_STENCIL = 0x84f9


  export
  DEPTH_STENCIL_ATTACHMENT : Bits32
  DEPTH_STENCIL_ATTACHMENT = 0x821a


  export
  DEPTH_TEST : Bits32
  DEPTH_TEST = 0xb71


  export
  DEPTH_WRITEMASK : Bits32
  DEPTH_WRITEMASK = 0xb72


  export
  DITHER : Bits32
  DITHER = 0xbd0


  export
  DONT_CARE : Bits32
  DONT_CARE = 0x1100


  export
  DST_ALPHA : Bits32
  DST_ALPHA = 0x304


  export
  DST_COLOR : Bits32
  DST_COLOR = 0x306


  export
  DYNAMIC_DRAW : Bits32
  DYNAMIC_DRAW = 0x88e8


  export
  ELEMENT_ARRAY_BUFFER : Bits32
  ELEMENT_ARRAY_BUFFER = 0x8893


  export
  ELEMENT_ARRAY_BUFFER_BINDING : Bits32
  ELEMENT_ARRAY_BUFFER_BINDING = 0x8895


  export
  EQUAL : Bits32
  EQUAL = 0x202


  export
  FASTEST : Bits32
  FASTEST = 0x1101


  export
  FLOAT : Bits32
  FLOAT = 0x1406


  export
  FLOAT_MAT2 : Bits32
  FLOAT_MAT2 = 0x8b5a


  export
  FLOAT_MAT3 : Bits32
  FLOAT_MAT3 = 0x8b5b


  export
  FLOAT_MAT4 : Bits32
  FLOAT_MAT4 = 0x8b5c


  export
  FLOAT_VEC2 : Bits32
  FLOAT_VEC2 = 0x8b50


  export
  FLOAT_VEC3 : Bits32
  FLOAT_VEC3 = 0x8b51


  export
  FLOAT_VEC4 : Bits32
  FLOAT_VEC4 = 0x8b52


  export
  FRAGMENT_SHADER : Bits32
  FRAGMENT_SHADER = 0x8b30


  export
  FRAMEBUFFER : Bits32
  FRAMEBUFFER = 0x8d40


  export
  FRAMEBUFFER_ATTACHMENT_OBJECT_NAME : Bits32
  FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = 0x8cd1


  export
  FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE : Bits32
  FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 0x8cd0


  export
  FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE : Bits32
  FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = 0x8cd3


  export
  FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL : Bits32
  FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = 0x8cd2


  export
  FRAMEBUFFER_BINDING : Bits32
  FRAMEBUFFER_BINDING = 0x8ca6


  export
  FRAMEBUFFER_COMPLETE : Bits32
  FRAMEBUFFER_COMPLETE = 0x8cd5


  export
  FRAMEBUFFER_INCOMPLETE_ATTACHMENT : Bits32
  FRAMEBUFFER_INCOMPLETE_ATTACHMENT = 0x8cd6


  export
  FRAMEBUFFER_INCOMPLETE_DIMENSIONS : Bits32
  FRAMEBUFFER_INCOMPLETE_DIMENSIONS = 0x8cd9


  export
  FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT : Bits32
  FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = 0x8cd7


  export
  FRAMEBUFFER_UNSUPPORTED : Bits32
  FRAMEBUFFER_UNSUPPORTED = 0x8cdd


  export
  FRONT : Bits32
  FRONT = 0x404


  export
  FRONT_AND_BACK : Bits32
  FRONT_AND_BACK = 0x408


  export
  FRONT_FACE : Bits32
  FRONT_FACE = 0xb46


  export
  FUNC_ADD : Bits32
  FUNC_ADD = 0x8006


  export
  FUNC_REVERSE_SUBTRACT : Bits32
  FUNC_REVERSE_SUBTRACT = 0x800b


  export
  FUNC_SUBTRACT : Bits32
  FUNC_SUBTRACT = 0x800a


  export
  GENERATE_MIPMAP_HINT : Bits32
  GENERATE_MIPMAP_HINT = 0x8192


  export
  GEQUAL : Bits32
  GEQUAL = 0x206


  export
  GREATER : Bits32
  GREATER = 0x204


  export
  GREEN_BITS : Bits32
  GREEN_BITS = 0xd53


  export
  HIGH_FLOAT : Bits32
  HIGH_FLOAT = 0x8df2


  export
  HIGH_INT : Bits32
  HIGH_INT = 0x8df5


  export
  IMPLEMENTATION_COLOR_READ_FORMAT : Bits32
  IMPLEMENTATION_COLOR_READ_FORMAT = 0x8b9b


  export
  IMPLEMENTATION_COLOR_READ_TYPE : Bits32
  IMPLEMENTATION_COLOR_READ_TYPE = 0x8b9a


  export
  INCR : Bits32
  INCR = 0x1e02


  export
  INCR_WRAP : Bits32
  INCR_WRAP = 0x8507


  export
  INT : Bits32
  INT = 0x1404


  export
  INT_VEC2 : Bits32
  INT_VEC2 = 0x8b53


  export
  INT_VEC3 : Bits32
  INT_VEC3 = 0x8b54


  export
  INT_VEC4 : Bits32
  INT_VEC4 = 0x8b55


  export
  INVALID_ENUM : Bits32
  INVALID_ENUM = 0x500


  export
  INVALID_FRAMEBUFFER_OPERATION : Bits32
  INVALID_FRAMEBUFFER_OPERATION = 0x506


  export
  INVALID_OPERATION : Bits32
  INVALID_OPERATION = 0x502


  export
  INVALID_VALUE : Bits32
  INVALID_VALUE = 0x501


  export
  INVERT : Bits32
  INVERT = 0x150a


  export
  KEEP : Bits32
  KEEP = 0x1e00


  export
  LEQUAL : Bits32
  LEQUAL = 0x203


  export
  LESS : Bits32
  LESS = 0x201


  export
  LINEAR : Bits32
  LINEAR = 0x2601


  export
  LINEAR_MIPMAP_LINEAR : Bits32
  LINEAR_MIPMAP_LINEAR = 0x2703


  export
  LINEAR_MIPMAP_NEAREST : Bits32
  LINEAR_MIPMAP_NEAREST = 0x2701


  export
  LINES : Bits32
  LINES = 0x1


  export
  LINE_LOOP : Bits32
  LINE_LOOP = 0x2


  export
  LINE_STRIP : Bits32
  LINE_STRIP = 0x3


  export
  LINE_WIDTH : Bits32
  LINE_WIDTH = 0xb21


  export
  LINK_STATUS : Bits32
  LINK_STATUS = 0x8b82


  export
  LOW_FLOAT : Bits32
  LOW_FLOAT = 0x8df0


  export
  LOW_INT : Bits32
  LOW_INT = 0x8df3


  export
  LUMINANCE : Bits32
  LUMINANCE = 0x1909


  export
  LUMINANCE_ALPHA : Bits32
  LUMINANCE_ALPHA = 0x190a


  export
  MAX_COMBINED_TEXTURE_IMAGE_UNITS : Bits32
  MAX_COMBINED_TEXTURE_IMAGE_UNITS = 0x8b4d


  export
  MAX_CUBE_MAP_TEXTURE_SIZE : Bits32
  MAX_CUBE_MAP_TEXTURE_SIZE = 0x851c


  export
  MAX_FRAGMENT_UNIFORM_VECTORS : Bits32
  MAX_FRAGMENT_UNIFORM_VECTORS = 0x8dfd


  export
  MAX_RENDERBUFFER_SIZE : Bits32
  MAX_RENDERBUFFER_SIZE = 0x84e8


  export
  MAX_TEXTURE_IMAGE_UNITS : Bits32
  MAX_TEXTURE_IMAGE_UNITS = 0x8872


  export
  MAX_TEXTURE_SIZE : Bits32
  MAX_TEXTURE_SIZE = 0xd33


  export
  MAX_VARYING_VECTORS : Bits32
  MAX_VARYING_VECTORS = 0x8dfc


  export
  MAX_VERTEX_ATTRIBS : Bits32
  MAX_VERTEX_ATTRIBS = 0x8869


  export
  MAX_VERTEX_TEXTURE_IMAGE_UNITS : Bits32
  MAX_VERTEX_TEXTURE_IMAGE_UNITS = 0x8b4c


  export
  MAX_VERTEX_UNIFORM_VECTORS : Bits32
  MAX_VERTEX_UNIFORM_VECTORS = 0x8dfb


  export
  MAX_VIEWPORT_DIMS : Bits32
  MAX_VIEWPORT_DIMS = 0xd3a


  export
  MEDIUM_FLOAT : Bits32
  MEDIUM_FLOAT = 0x8df1


  export
  MEDIUM_INT : Bits32
  MEDIUM_INT = 0x8df4


  export
  MIRRORED_REPEAT : Bits32
  MIRRORED_REPEAT = 0x8370


  export
  NEAREST : Bits32
  NEAREST = 0x2600


  export
  NEAREST_MIPMAP_LINEAR : Bits32
  NEAREST_MIPMAP_LINEAR = 0x2702


  export
  NEAREST_MIPMAP_NEAREST : Bits32
  NEAREST_MIPMAP_NEAREST = 0x2700


  export
  NEVER : Bits32
  NEVER = 0x200


  export
  NICEST : Bits32
  NICEST = 0x1102


  export
  NONE : Bits32
  NONE = 0


  export
  NOTEQUAL : Bits32
  NOTEQUAL = 0x205


  export
  NO_ERROR : Bits32
  NO_ERROR = 0


  export
  ONE : Bits32
  ONE = 1


  export
  ONE_MINUS_CONSTANT_ALPHA : Bits32
  ONE_MINUS_CONSTANT_ALPHA = 0x8004


  export
  ONE_MINUS_CONSTANT_COLOR : Bits32
  ONE_MINUS_CONSTANT_COLOR = 0x8002


  export
  ONE_MINUS_DST_ALPHA : Bits32
  ONE_MINUS_DST_ALPHA = 0x305


  export
  ONE_MINUS_DST_COLOR : Bits32
  ONE_MINUS_DST_COLOR = 0x307


  export
  ONE_MINUS_SRC_ALPHA : Bits32
  ONE_MINUS_SRC_ALPHA = 0x303


  export
  ONE_MINUS_SRC_COLOR : Bits32
  ONE_MINUS_SRC_COLOR = 0x301


  export
  OUT_OF_MEMORY : Bits32
  OUT_OF_MEMORY = 0x505


  export
  PACK_ALIGNMENT : Bits32
  PACK_ALIGNMENT = 0xd05


  export
  POINTS : Bits32
  POINTS = 0x0


  export
  POLYGON_OFFSET_FACTOR : Bits32
  POLYGON_OFFSET_FACTOR = 0x8038


  export
  POLYGON_OFFSET_FILL : Bits32
  POLYGON_OFFSET_FILL = 0x8037


  export
  POLYGON_OFFSET_UNITS : Bits32
  POLYGON_OFFSET_UNITS = 0x2a00


  export
  RED_BITS : Bits32
  RED_BITS = 0xd52


  export
  RENDERBUFFER : Bits32
  RENDERBUFFER = 0x8d41


  export
  RENDERBUFFER_ALPHA_SIZE : Bits32
  RENDERBUFFER_ALPHA_SIZE = 0x8d53


  export
  RENDERBUFFER_BINDING : Bits32
  RENDERBUFFER_BINDING = 0x8ca7


  export
  RENDERBUFFER_BLUE_SIZE : Bits32
  RENDERBUFFER_BLUE_SIZE = 0x8d52


  export
  RENDERBUFFER_DEPTH_SIZE : Bits32
  RENDERBUFFER_DEPTH_SIZE = 0x8d54


  export
  RENDERBUFFER_GREEN_SIZE : Bits32
  RENDERBUFFER_GREEN_SIZE = 0x8d51


  export
  RENDERBUFFER_HEIGHT : Bits32
  RENDERBUFFER_HEIGHT = 0x8d43


  export
  RENDERBUFFER_INTERNAL_FORMAT : Bits32
  RENDERBUFFER_INTERNAL_FORMAT = 0x8d44


  export
  RENDERBUFFER_RED_SIZE : Bits32
  RENDERBUFFER_RED_SIZE = 0x8d50


  export
  RENDERBUFFER_STENCIL_SIZE : Bits32
  RENDERBUFFER_STENCIL_SIZE = 0x8d55


  export
  RENDERBUFFER_WIDTH : Bits32
  RENDERBUFFER_WIDTH = 0x8d42


  export
  RENDERER : Bits32
  RENDERER = 0x1f01


  export
  REPEAT : Bits32
  REPEAT = 0x2901


  export
  REPLACE : Bits32
  REPLACE = 0x1e01


  export
  RGB : Bits32
  RGB = 0x1907


  export
  RGB565 : Bits32
  RGB565 = 0x8d62


  export
  RGB5_A1 : Bits32
  RGB5_A1 = 0x8057


  export
  RGBA : Bits32
  RGBA = 0x1908


  export
  RGBA4 : Bits32
  RGBA4 = 0x8056


  export
  SAMPLER_2D : Bits32
  SAMPLER_2D = 0x8b5e


  export
  SAMPLER_CUBE : Bits32
  SAMPLER_CUBE = 0x8b60


  export
  SAMPLES : Bits32
  SAMPLES = 0x80a9


  export
  SAMPLE_ALPHA_TO_COVERAGE : Bits32
  SAMPLE_ALPHA_TO_COVERAGE = 0x809e


  export
  SAMPLE_BUFFERS : Bits32
  SAMPLE_BUFFERS = 0x80a8


  export
  SAMPLE_COVERAGE : Bits32
  SAMPLE_COVERAGE = 0x80a0


  export
  SAMPLE_COVERAGE_INVERT : Bits32
  SAMPLE_COVERAGE_INVERT = 0x80ab


  export
  SAMPLE_COVERAGE_VALUE : Bits32
  SAMPLE_COVERAGE_VALUE = 0x80aa


  export
  SCISSOR_BOX : Bits32
  SCISSOR_BOX = 0xc10


  export
  SCISSOR_TEST : Bits32
  SCISSOR_TEST = 0xc11


  export
  SHADER_TYPE : Bits32
  SHADER_TYPE = 0x8b4f


  export
  SHADING_LANGUAGE_VERSION : Bits32
  SHADING_LANGUAGE_VERSION = 0x8b8c


  export
  SHORT : Bits32
  SHORT = 0x1402


  export
  SRC_ALPHA : Bits32
  SRC_ALPHA = 0x302


  export
  SRC_ALPHA_SATURATE : Bits32
  SRC_ALPHA_SATURATE = 0x308


  export
  SRC_COLOR : Bits32
  SRC_COLOR = 0x300


  export
  STATIC_DRAW : Bits32
  STATIC_DRAW = 0x88e4


  export
  STENCIL_ATTACHMENT : Bits32
  STENCIL_ATTACHMENT = 0x8d20


  export
  STENCIL_BACK_FAIL : Bits32
  STENCIL_BACK_FAIL = 0x8801


  export
  STENCIL_BACK_FUNC : Bits32
  STENCIL_BACK_FUNC = 0x8800


  export
  STENCIL_BACK_PASS_DEPTH_FAIL : Bits32
  STENCIL_BACK_PASS_DEPTH_FAIL = 0x8802


  export
  STENCIL_BACK_PASS_DEPTH_PASS : Bits32
  STENCIL_BACK_PASS_DEPTH_PASS = 0x8803


  export
  STENCIL_BACK_REF : Bits32
  STENCIL_BACK_REF = 0x8ca3


  export
  STENCIL_BACK_VALUE_MASK : Bits32
  STENCIL_BACK_VALUE_MASK = 0x8ca4


  export
  STENCIL_BACK_WRITEMASK : Bits32
  STENCIL_BACK_WRITEMASK = 0x8ca5


  export
  STENCIL_BITS : Bits32
  STENCIL_BITS = 0xd57


  export
  STENCIL_BUFFER_BIT : Bits32
  STENCIL_BUFFER_BIT = 0x400


  export
  STENCIL_CLEAR_VALUE : Bits32
  STENCIL_CLEAR_VALUE = 0xb91


  export
  STENCIL_FAIL : Bits32
  STENCIL_FAIL = 0xb94


  export
  STENCIL_FUNC : Bits32
  STENCIL_FUNC = 0xb92


  export
  STENCIL_INDEX8 : Bits32
  STENCIL_INDEX8 = 0x8d48


  export
  STENCIL_PASS_DEPTH_FAIL : Bits32
  STENCIL_PASS_DEPTH_FAIL = 0xb95


  export
  STENCIL_PASS_DEPTH_PASS : Bits32
  STENCIL_PASS_DEPTH_PASS = 0xb96


  export
  STENCIL_REF : Bits32
  STENCIL_REF = 0xb97


  export
  STENCIL_TEST : Bits32
  STENCIL_TEST = 0xb90


  export
  STENCIL_VALUE_MASK : Bits32
  STENCIL_VALUE_MASK = 0xb93


  export
  STENCIL_WRITEMASK : Bits32
  STENCIL_WRITEMASK = 0xb98


  export
  STREAM_DRAW : Bits32
  STREAM_DRAW = 0x88e0


  export
  SUBPIXEL_BITS : Bits32
  SUBPIXEL_BITS = 0xd50


  export
  TEXTURE : Bits32
  TEXTURE = 0x1702


  export
  TEXTURE0 : Bits32
  TEXTURE0 = 0x84c0


  export
  TEXTURE1 : Bits32
  TEXTURE1 = 0x84c1


  export
  TEXTURE10 : Bits32
  TEXTURE10 = 0x84ca


  export
  TEXTURE11 : Bits32
  TEXTURE11 = 0x84cb


  export
  TEXTURE12 : Bits32
  TEXTURE12 = 0x84cc


  export
  TEXTURE13 : Bits32
  TEXTURE13 = 0x84cd


  export
  TEXTURE14 : Bits32
  TEXTURE14 = 0x84ce


  export
  TEXTURE15 : Bits32
  TEXTURE15 = 0x84cf


  export
  TEXTURE16 : Bits32
  TEXTURE16 = 0x84d0


  export
  TEXTURE17 : Bits32
  TEXTURE17 = 0x84d1


  export
  TEXTURE18 : Bits32
  TEXTURE18 = 0x84d2


  export
  TEXTURE19 : Bits32
  TEXTURE19 = 0x84d3


  export
  TEXTURE2 : Bits32
  TEXTURE2 = 0x84c2


  export
  TEXTURE20 : Bits32
  TEXTURE20 = 0x84d4


  export
  TEXTURE21 : Bits32
  TEXTURE21 = 0x84d5


  export
  TEXTURE22 : Bits32
  TEXTURE22 = 0x84d6


  export
  TEXTURE23 : Bits32
  TEXTURE23 = 0x84d7


  export
  TEXTURE24 : Bits32
  TEXTURE24 = 0x84d8


  export
  TEXTURE25 : Bits32
  TEXTURE25 = 0x84d9


  export
  TEXTURE26 : Bits32
  TEXTURE26 = 0x84da


  export
  TEXTURE27 : Bits32
  TEXTURE27 = 0x84db


  export
  TEXTURE28 : Bits32
  TEXTURE28 = 0x84dc


  export
  TEXTURE29 : Bits32
  TEXTURE29 = 0x84dd


  export
  TEXTURE3 : Bits32
  TEXTURE3 = 0x84c3


  export
  TEXTURE30 : Bits32
  TEXTURE30 = 0x84de


  export
  TEXTURE31 : Bits32
  TEXTURE31 = 0x84df


  export
  TEXTURE4 : Bits32
  TEXTURE4 = 0x84c4


  export
  TEXTURE5 : Bits32
  TEXTURE5 = 0x84c5


  export
  TEXTURE6 : Bits32
  TEXTURE6 = 0x84c6


  export
  TEXTURE7 : Bits32
  TEXTURE7 = 0x84c7


  export
  TEXTURE8 : Bits32
  TEXTURE8 = 0x84c8


  export
  TEXTURE9 : Bits32
  TEXTURE9 = 0x84c9


  export
  TEXTURE_2D : Bits32
  TEXTURE_2D = 0xde1


  export
  TEXTURE_BINDING_2D : Bits32
  TEXTURE_BINDING_2D = 0x8069


  export
  TEXTURE_BINDING_CUBE_MAP : Bits32
  TEXTURE_BINDING_CUBE_MAP = 0x8514


  export
  TEXTURE_CUBE_MAP : Bits32
  TEXTURE_CUBE_MAP = 0x8513


  export
  TEXTURE_CUBE_MAP_NEGATIVE_X : Bits32
  TEXTURE_CUBE_MAP_NEGATIVE_X = 0x8516


  export
  TEXTURE_CUBE_MAP_NEGATIVE_Y : Bits32
  TEXTURE_CUBE_MAP_NEGATIVE_Y = 0x8518


  export
  TEXTURE_CUBE_MAP_NEGATIVE_Z : Bits32
  TEXTURE_CUBE_MAP_NEGATIVE_Z = 0x851a


  export
  TEXTURE_CUBE_MAP_POSITIVE_X : Bits32
  TEXTURE_CUBE_MAP_POSITIVE_X = 0x8515


  export
  TEXTURE_CUBE_MAP_POSITIVE_Y : Bits32
  TEXTURE_CUBE_MAP_POSITIVE_Y = 0x8517


  export
  TEXTURE_CUBE_MAP_POSITIVE_Z : Bits32
  TEXTURE_CUBE_MAP_POSITIVE_Z = 0x8519


  export
  TEXTURE_MAG_FILTER : Bits32
  TEXTURE_MAG_FILTER = 0x2800


  export
  TEXTURE_MIN_FILTER : Bits32
  TEXTURE_MIN_FILTER = 0x2801


  export
  TEXTURE_WRAP_S : Bits32
  TEXTURE_WRAP_S = 0x2802


  export
  TEXTURE_WRAP_T : Bits32
  TEXTURE_WRAP_T = 0x2803


  export
  TRIANGLES : Bits32
  TRIANGLES = 0x4


  export
  TRIANGLE_FAN : Bits32
  TRIANGLE_FAN = 0x6


  export
  TRIANGLE_STRIP : Bits32
  TRIANGLE_STRIP = 0x5


  export
  UNPACK_ALIGNMENT : Bits32
  UNPACK_ALIGNMENT = 0xcf5


  export
  UNPACK_COLORSPACE_CONVERSION_WEBGL : Bits32
  UNPACK_COLORSPACE_CONVERSION_WEBGL = 0x9243


  export
  UNPACK_FLIP_Y_WEBGL : Bits32
  UNPACK_FLIP_Y_WEBGL = 0x9240


  export
  UNPACK_PREMULTIPLY_ALPHA_WEBGL : Bits32
  UNPACK_PREMULTIPLY_ALPHA_WEBGL = 0x9241


  export
  UNSIGNED_BYTE : Bits32
  UNSIGNED_BYTE = 0x1401


  export
  UNSIGNED_INT : Bits32
  UNSIGNED_INT = 0x1405


  export
  UNSIGNED_SHORT : Bits32
  UNSIGNED_SHORT = 0x1403


  export
  UNSIGNED_SHORT_4_4_4_4 : Bits32
  UNSIGNED_SHORT_4_4_4_4 = 0x8033


  export
  UNSIGNED_SHORT_5_5_5_1 : Bits32
  UNSIGNED_SHORT_5_5_5_1 = 0x8034


  export
  UNSIGNED_SHORT_5_6_5 : Bits32
  UNSIGNED_SHORT_5_6_5 = 0x8363


  export
  VALIDATE_STATUS : Bits32
  VALIDATE_STATUS = 0x8b83


  export
  VENDOR : Bits32
  VENDOR = 0x1f00


  export
  VERSION : Bits32
  VERSION = 0x1f02


  export
  VERTEX_ATTRIB_ARRAY_BUFFER_BINDING : Bits32
  VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 0x889f


  export
  VERTEX_ATTRIB_ARRAY_ENABLED : Bits32
  VERTEX_ATTRIB_ARRAY_ENABLED = 0x8622


  export
  VERTEX_ATTRIB_ARRAY_NORMALIZED : Bits32
  VERTEX_ATTRIB_ARRAY_NORMALIZED = 0x886a


  export
  VERTEX_ATTRIB_ARRAY_POINTER : Bits32
  VERTEX_ATTRIB_ARRAY_POINTER = 0x8645


  export
  VERTEX_ATTRIB_ARRAY_SIZE : Bits32
  VERTEX_ATTRIB_ARRAY_SIZE = 0x8623


  export
  VERTEX_ATTRIB_ARRAY_STRIDE : Bits32
  VERTEX_ATTRIB_ARRAY_STRIDE = 0x8624


  export
  VERTEX_ATTRIB_ARRAY_TYPE : Bits32
  VERTEX_ATTRIB_ARRAY_TYPE = 0x8625


  export
  VERTEX_SHADER : Bits32
  VERTEX_SHADER = 0x8b31


  export
  VIEWPORT : Bits32
  VIEWPORT = 0xba2


  export
  ZERO : Bits32
  ZERO = 0


  export
  canvas :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> JSIO (HSum [HTMLCanvasElement, OffscreenCanvas])
  canvas a = tryJS "WebGLRenderingContextBase.canvas" $
    WebGLRenderingContextBase.prim__canvas (cast a)


  export
  drawingBufferHeight :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> JSIO Int32
  drawingBufferHeight a = primJS $
    WebGLRenderingContextBase.prim__drawingBufferHeight (cast a)


  export
  drawingBufferWidth :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> JSIO Int32
  drawingBufferWidth a = primJS $
    WebGLRenderingContextBase.prim__drawingBufferWidth (cast a)


  export
  activeTexture :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (texture : Bits32)
    -> JSIO ()
  activeTexture a b = primJS $
    WebGLRenderingContextBase.prim__activeTexture (cast a) b


  export
  attachShader :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (program : WebGLProgram)
    -> (shader : WebGLShader)
    -> JSIO ()
  attachShader a b c = primJS $
    WebGLRenderingContextBase.prim__attachShader (cast a) b c


  export
  bindAttribLocation :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (program : WebGLProgram)
    -> (index : Bits32)
    -> (name : String)
    -> JSIO ()
  bindAttribLocation a b c d = primJS $
    WebGLRenderingContextBase.prim__bindAttribLocation (cast a) b c d


  export
  bindBuffer :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (target : Bits32)
    -> (buffer : Maybe WebGLBuffer)
    -> JSIO ()
  bindBuffer a b c = primJS $
    WebGLRenderingContextBase.prim__bindBuffer (cast a) b (toFFI c)


  export
  bindFramebuffer :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (target : Bits32)
    -> (framebuffer : Maybe WebGLFramebuffer)
    -> JSIO ()
  bindFramebuffer a b c = primJS $
    WebGLRenderingContextBase.prim__bindFramebuffer (cast a) b (toFFI c)


  export
  bindRenderbuffer :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (target : Bits32)
    -> (renderbuffer : Maybe WebGLRenderbuffer)
    -> JSIO ()
  bindRenderbuffer a b c = primJS $
    WebGLRenderingContextBase.prim__bindRenderbuffer (cast a) b (toFFI c)


  export
  bindTexture :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (target : Bits32)
    -> (texture : Maybe WebGLTexture)
    -> JSIO ()
  bindTexture a b c = primJS $
    WebGLRenderingContextBase.prim__bindTexture (cast a) b (toFFI c)


  export
  blendColor :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (red : Double)
    -> (green : Double)
    -> (blue : Double)
    -> (alpha : Double)
    -> JSIO ()
  blendColor a b c d e = primJS $
    WebGLRenderingContextBase.prim__blendColor (cast a) b c d e


  export
  blendEquationSeparate :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (modeRGB : Bits32)
    -> (modeAlpha : Bits32)
    -> JSIO ()
  blendEquationSeparate a b c = primJS $
    WebGLRenderingContextBase.prim__blendEquationSeparate (cast a) b c


  export
  blendEquation :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (mode : Bits32)
    -> JSIO ()
  blendEquation a b = primJS $
    WebGLRenderingContextBase.prim__blendEquation (cast a) b


  export
  blendFuncSeparate :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (srcRGB : Bits32)
    -> (dstRGB : Bits32)
    -> (srcAlpha : Bits32)
    -> (dstAlpha : Bits32)
    -> JSIO ()
  blendFuncSeparate a b c d e = primJS $
    WebGLRenderingContextBase.prim__blendFuncSeparate (cast a) b c d e


  export
  blendFunc :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (sfactor : Bits32)
    -> (dfactor : Bits32)
    -> JSIO ()
  blendFunc a b c = primJS $
    WebGLRenderingContextBase.prim__blendFunc (cast a) b c


  export
  checkFramebufferStatus :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (target : Bits32)
    -> JSIO Bits32
  checkFramebufferStatus a b = primJS $
    WebGLRenderingContextBase.prim__checkFramebufferStatus (cast a) b


  export
  clearColor :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (red : Double)
    -> (green : Double)
    -> (blue : Double)
    -> (alpha : Double)
    -> JSIO ()
  clearColor a b c d e = primJS $
    WebGLRenderingContextBase.prim__clearColor (cast a) b c d e


  export
  clearDepth :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (depth : Double)
    -> JSIO ()
  clearDepth a b = primJS $
    WebGLRenderingContextBase.prim__clearDepth (cast a) b


  export
  clearStencil :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (s : Int32)
    -> JSIO ()
  clearStencil a b = primJS $
    WebGLRenderingContextBase.prim__clearStencil (cast a) b


  export
  clear :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (mask : Bits32)
    -> JSIO ()
  clear a b = primJS $ WebGLRenderingContextBase.prim__clear (cast a) b


  export
  colorMask :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (red : Bool)
    -> (green : Bool)
    -> (blue : Bool)
    -> (alpha : Bool)
    -> JSIO ()
  colorMask a b c d e = primJS $
    WebGLRenderingContextBase.prim__colorMask
      (cast a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      (toFFI e)


  export
  compileShader :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (shader : WebGLShader)
    -> JSIO ()
  compileShader a b = primJS $
    WebGLRenderingContextBase.prim__compileShader (cast a) b


  export
  copyTexImage2D :
       {auto _ : Cast t1 WebGLRenderingContextBase}
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
  copyTexImage2D a b c d e f g h i = primJS $
    WebGLRenderingContextBase.prim__copyTexImage2D (cast a) b c d e f g h i


  export
  copyTexSubImage2D :
       {auto _ : Cast t1 WebGLRenderingContextBase}
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
  copyTexSubImage2D a b c d e f g h i = primJS $
    WebGLRenderingContextBase.prim__copyTexSubImage2D (cast a) b c d e f g h i


  export
  createBuffer :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> JSIO (Maybe WebGLBuffer)
  createBuffer a = tryJS "WebGLRenderingContextBase.createBuffer" $
    WebGLRenderingContextBase.prim__createBuffer (cast a)


  export
  createFramebuffer :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> JSIO (Maybe WebGLFramebuffer)
  createFramebuffer a = tryJS "WebGLRenderingContextBase.createFramebuffer" $
    WebGLRenderingContextBase.prim__createFramebuffer (cast a)


  export
  createProgram :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> JSIO (Maybe WebGLProgram)
  createProgram a = tryJS "WebGLRenderingContextBase.createProgram" $
    WebGLRenderingContextBase.prim__createProgram (cast a)


  export
  createRenderbuffer :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> JSIO (Maybe WebGLRenderbuffer)
  createRenderbuffer a = tryJS "WebGLRenderingContextBase.createRenderbuffer" $
    WebGLRenderingContextBase.prim__createRenderbuffer (cast a)


  export
  createShader :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (type : Bits32)
    -> JSIO (Maybe WebGLShader)
  createShader a b = tryJS "WebGLRenderingContextBase.createShader" $
    WebGLRenderingContextBase.prim__createShader (cast a) b


  export
  createTexture :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> JSIO (Maybe WebGLTexture)
  createTexture a = tryJS "WebGLRenderingContextBase.createTexture" $
    WebGLRenderingContextBase.prim__createTexture (cast a)


  export
  cullFace :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (mode : Bits32)
    -> JSIO ()
  cullFace a b = primJS $ WebGLRenderingContextBase.prim__cullFace (cast a) b


  export
  deleteBuffer :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (buffer : Maybe WebGLBuffer)
    -> JSIO ()
  deleteBuffer a b = primJS $
    WebGLRenderingContextBase.prim__deleteBuffer (cast a) (toFFI b)


  export
  deleteFramebuffer :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (framebuffer : Maybe WebGLFramebuffer)
    -> JSIO ()
  deleteFramebuffer a b = primJS $
    WebGLRenderingContextBase.prim__deleteFramebuffer (cast a) (toFFI b)


  export
  deleteProgram :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (program : Maybe WebGLProgram)
    -> JSIO ()
  deleteProgram a b = primJS $
    WebGLRenderingContextBase.prim__deleteProgram (cast a) (toFFI b)


  export
  deleteRenderbuffer :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (renderbuffer : Maybe WebGLRenderbuffer)
    -> JSIO ()
  deleteRenderbuffer a b = primJS $
    WebGLRenderingContextBase.prim__deleteRenderbuffer (cast a) (toFFI b)


  export
  deleteShader :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (shader : Maybe WebGLShader)
    -> JSIO ()
  deleteShader a b = primJS $
    WebGLRenderingContextBase.prim__deleteShader (cast a) (toFFI b)


  export
  deleteTexture :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (texture : Maybe WebGLTexture)
    -> JSIO ()
  deleteTexture a b = primJS $
    WebGLRenderingContextBase.prim__deleteTexture (cast a) (toFFI b)


  export
  depthFunc :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (func : Bits32)
    -> JSIO ()
  depthFunc a b = primJS $ WebGLRenderingContextBase.prim__depthFunc (cast a) b


  export
  depthMask :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (flag : Bool)
    -> JSIO ()
  depthMask a b = primJS $
    WebGLRenderingContextBase.prim__depthMask (cast a) (toFFI b)


  export
  depthRange :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (zNear : Double)
    -> (zFar : Double)
    -> JSIO ()
  depthRange a b c = primJS $
    WebGLRenderingContextBase.prim__depthRange (cast a) b c


  export
  detachShader :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (program : WebGLProgram)
    -> (shader : WebGLShader)
    -> JSIO ()
  detachShader a b c = primJS $
    WebGLRenderingContextBase.prim__detachShader (cast a) b c


  export
  disableVertexAttribArray :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (index : Bits32)
    -> JSIO ()
  disableVertexAttribArray a b = primJS $
    WebGLRenderingContextBase.prim__disableVertexAttribArray (cast a) b


  export
  disable :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (cap : Bits32)
    -> JSIO ()
  disable a b = primJS $ WebGLRenderingContextBase.prim__disable (cast a) b


  export
  drawArrays :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (mode : Bits32)
    -> (first : Int32)
    -> (count : Int32)
    -> JSIO ()
  drawArrays a b c d = primJS $
    WebGLRenderingContextBase.prim__drawArrays (cast a) b c d


  export
  drawElements :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (mode : Bits32)
    -> (count : Int32)
    -> (type : Bits32)
    -> (offset : JSInt64)
    -> JSIO ()
  drawElements a b c d e = primJS $
    WebGLRenderingContextBase.prim__drawElements (cast a) b c d e


  export
  enableVertexAttribArray :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (index : Bits32)
    -> JSIO ()
  enableVertexAttribArray a b = primJS $
    WebGLRenderingContextBase.prim__enableVertexAttribArray (cast a) b


  export
  enable :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (cap : Bits32)
    -> JSIO ()
  enable a b = primJS $ WebGLRenderingContextBase.prim__enable (cast a) b


  export
  finish : {auto _ : Cast t1 WebGLRenderingContextBase} -> (obj : t1) -> JSIO ()
  finish a = primJS $ WebGLRenderingContextBase.prim__finish (cast a)


  export
  flush : {auto _ : Cast t1 WebGLRenderingContextBase} -> (obj : t1) -> JSIO ()
  flush a = primJS $ WebGLRenderingContextBase.prim__flush (cast a)


  export
  framebufferRenderbuffer :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (target : Bits32)
    -> (attachment : Bits32)
    -> (renderbuffertarget : Bits32)
    -> (renderbuffer : Maybe WebGLRenderbuffer)
    -> JSIO ()
  framebufferRenderbuffer a b c d e = primJS $
    WebGLRenderingContextBase.prim__framebufferRenderbuffer
      (cast a)
      b
      c
      d
      (toFFI e)


  export
  framebufferTexture2D :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (target : Bits32)
    -> (attachment : Bits32)
    -> (textarget : Bits32)
    -> (texture : Maybe WebGLTexture)
    -> (level : Int32)
    -> JSIO ()
  framebufferTexture2D a b c d e f = primJS $
    WebGLRenderingContextBase.prim__framebufferTexture2D
      (cast a)
      b
      c
      d
      (toFFI e)
      f


  export
  frontFace :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (mode : Bits32)
    -> JSIO ()
  frontFace a b = primJS $ WebGLRenderingContextBase.prim__frontFace (cast a) b


  export
  generateMipmap :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (target : Bits32)
    -> JSIO ()
  generateMipmap a b = primJS $
    WebGLRenderingContextBase.prim__generateMipmap (cast a) b


  export
  getActiveAttrib :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (program : WebGLProgram)
    -> (index : Bits32)
    -> JSIO (Maybe WebGLActiveInfo)
  getActiveAttrib a b c = tryJS "WebGLRenderingContextBase.getActiveAttrib" $
    WebGLRenderingContextBase.prim__getActiveAttrib (cast a) b c


  export
  getActiveUniform :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (program : WebGLProgram)
    -> (index : Bits32)
    -> JSIO (Maybe WebGLActiveInfo)
  getActiveUniform a b c = tryJS "WebGLRenderingContextBase.getActiveUniform" $
    WebGLRenderingContextBase.prim__getActiveUniform (cast a) b c


  export
  getAttachedShaders :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (program : WebGLProgram)
    -> JSIO (Maybe (Array WebGLShader))
  getAttachedShaders a b = tryJS "WebGLRenderingContextBase.getAttachedShaders" $
    WebGLRenderingContextBase.prim__getAttachedShaders (cast a) b


  export
  getAttribLocation :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (program : WebGLProgram)
    -> (name : String)
    -> JSIO Int32
  getAttribLocation a b c = primJS $
    WebGLRenderingContextBase.prim__getAttribLocation (cast a) b c


  export
  getBufferParameter :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (target : Bits32)
    -> (pname : Bits32)
    -> JSIO Any
  getBufferParameter a b c = tryJS "WebGLRenderingContextBase.getBufferParameter" $
    WebGLRenderingContextBase.prim__getBufferParameter (cast a) b c


  export
  getContextAttributes :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> JSIO (Maybe WebGLContextAttributes)
  getContextAttributes a = tryJS "WebGLRenderingContextBase.getContextAttributes" $
    WebGLRenderingContextBase.prim__getContextAttributes (cast a)


  export
  getError :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> JSIO Bits32
  getError a = primJS $ WebGLRenderingContextBase.prim__getError (cast a)


  export
  getExtension :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (name : String)
    -> JSIO (Maybe Object)
  getExtension a b = tryJS "WebGLRenderingContextBase.getExtension" $
    WebGLRenderingContextBase.prim__getExtension (cast a) b


  export
  getFramebufferAttachmentParameter :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (target : Bits32)
    -> (attachment : Bits32)
    -> (pname : Bits32)
    -> JSIO Any
  getFramebufferAttachmentParameter a b c d = tryJS "WebGLRenderingContextBase.getFramebufferAttachmentParameter" $
    WebGLRenderingContextBase.prim__getFramebufferAttachmentParameter
      (cast a)
      b
      c
      d


  export
  getParameter :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (pname : Bits32)
    -> JSIO Any
  getParameter a b = tryJS "WebGLRenderingContextBase.getParameter" $
    WebGLRenderingContextBase.prim__getParameter (cast a) b


  export
  getProgramInfoLog :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (program : WebGLProgram)
    -> JSIO (Maybe String)
  getProgramInfoLog a b = tryJS "WebGLRenderingContextBase.getProgramInfoLog" $
    WebGLRenderingContextBase.prim__getProgramInfoLog (cast a) b


  export
  getProgramParameter :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (program : WebGLProgram)
    -> (pname : Bits32)
    -> JSIO Any
  getProgramParameter a b c = tryJS "WebGLRenderingContextBase.getProgramParameter" $
    WebGLRenderingContextBase.prim__getProgramParameter (cast a) b c


  export
  getRenderbufferParameter :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (target : Bits32)
    -> (pname : Bits32)
    -> JSIO Any
  getRenderbufferParameter a b c = tryJS "WebGLRenderingContextBase.getRenderbufferParameter" $
    WebGLRenderingContextBase.prim__getRenderbufferParameter (cast a) b c


  export
  getShaderInfoLog :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (shader : WebGLShader)
    -> JSIO (Maybe String)
  getShaderInfoLog a b = tryJS "WebGLRenderingContextBase.getShaderInfoLog" $
    WebGLRenderingContextBase.prim__getShaderInfoLog (cast a) b


  export
  getShaderParameter :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (shader : WebGLShader)
    -> (pname : Bits32)
    -> JSIO Any
  getShaderParameter a b c = tryJS "WebGLRenderingContextBase.getShaderParameter" $
    WebGLRenderingContextBase.prim__getShaderParameter (cast a) b c


  export
  getShaderPrecisionFormat :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (shadertype : Bits32)
    -> (precisiontype : Bits32)
    -> JSIO (Maybe WebGLShaderPrecisionFormat)
  getShaderPrecisionFormat a b c = tryJS "WebGLRenderingContextBase.getShaderPrecisionFormat" $
    WebGLRenderingContextBase.prim__getShaderPrecisionFormat (cast a) b c


  export
  getShaderSource :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (shader : WebGLShader)
    -> JSIO (Maybe String)
  getShaderSource a b = tryJS "WebGLRenderingContextBase.getShaderSource" $
    WebGLRenderingContextBase.prim__getShaderSource (cast a) b


  export
  getSupportedExtensions :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> JSIO (Maybe (Array String))
  getSupportedExtensions a = tryJS "WebGLRenderingContextBase.getSupportedExtensions" $
    WebGLRenderingContextBase.prim__getSupportedExtensions (cast a)


  export
  getTexParameter :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (target : Bits32)
    -> (pname : Bits32)
    -> JSIO Any
  getTexParameter a b c = tryJS "WebGLRenderingContextBase.getTexParameter" $
    WebGLRenderingContextBase.prim__getTexParameter (cast a) b c


  export
  getUniformLocation :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (program : WebGLProgram)
    -> (name : String)
    -> JSIO (Maybe WebGLUniformLocation)
  getUniformLocation a b c = tryJS "WebGLRenderingContextBase.getUniformLocation" $
    WebGLRenderingContextBase.prim__getUniformLocation (cast a) b c


  export
  getUniform :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (program : WebGLProgram)
    -> (location : WebGLUniformLocation)
    -> JSIO Any
  getUniform a b c = tryJS "WebGLRenderingContextBase.getUniform" $
    WebGLRenderingContextBase.prim__getUniform (cast a) b c


  export
  getVertexAttribOffset :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (index : Bits32)
    -> (pname : Bits32)
    -> JSIO JSInt64
  getVertexAttribOffset a b c = primJS $
    WebGLRenderingContextBase.prim__getVertexAttribOffset (cast a) b c


  export
  getVertexAttrib :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (index : Bits32)
    -> (pname : Bits32)
    -> JSIO Any
  getVertexAttrib a b c = tryJS "WebGLRenderingContextBase.getVertexAttrib" $
    WebGLRenderingContextBase.prim__getVertexAttrib (cast a) b c


  export
  hint :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (target : Bits32)
    -> (mode : Bits32)
    -> JSIO ()
  hint a b c = primJS $ WebGLRenderingContextBase.prim__hint (cast a) b c


  export
  isBuffer :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (buffer : Maybe WebGLBuffer)
    -> JSIO Bool
  isBuffer a b = tryJS "WebGLRenderingContextBase.isBuffer" $
    WebGLRenderingContextBase.prim__isBuffer (cast a) (toFFI b)


  export
  isContextLost :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> JSIO Bool
  isContextLost a = tryJS "WebGLRenderingContextBase.isContextLost" $
    WebGLRenderingContextBase.prim__isContextLost (cast a)


  export
  isEnabled :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (cap : Bits32)
    -> JSIO Bool
  isEnabled a b = tryJS "WebGLRenderingContextBase.isEnabled" $
    WebGLRenderingContextBase.prim__isEnabled (cast a) b


  export
  isFramebuffer :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (framebuffer : Maybe WebGLFramebuffer)
    -> JSIO Bool
  isFramebuffer a b = tryJS "WebGLRenderingContextBase.isFramebuffer" $
    WebGLRenderingContextBase.prim__isFramebuffer (cast a) (toFFI b)


  export
  isProgram :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (program : Maybe WebGLProgram)
    -> JSIO Bool
  isProgram a b = tryJS "WebGLRenderingContextBase.isProgram" $
    WebGLRenderingContextBase.prim__isProgram (cast a) (toFFI b)


  export
  isRenderbuffer :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (renderbuffer : Maybe WebGLRenderbuffer)
    -> JSIO Bool
  isRenderbuffer a b = tryJS "WebGLRenderingContextBase.isRenderbuffer" $
    WebGLRenderingContextBase.prim__isRenderbuffer (cast a) (toFFI b)


  export
  isShader :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (shader : Maybe WebGLShader)
    -> JSIO Bool
  isShader a b = tryJS "WebGLRenderingContextBase.isShader" $
    WebGLRenderingContextBase.prim__isShader (cast a) (toFFI b)


  export
  isTexture :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (texture : Maybe WebGLTexture)
    -> JSIO Bool
  isTexture a b = tryJS "WebGLRenderingContextBase.isTexture" $
    WebGLRenderingContextBase.prim__isTexture (cast a) (toFFI b)


  export
  lineWidth :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (width : Double)
    -> JSIO ()
  lineWidth a b = primJS $ WebGLRenderingContextBase.prim__lineWidth (cast a) b


  export
  linkProgram :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (program : WebGLProgram)
    -> JSIO ()
  linkProgram a b = primJS $
    WebGLRenderingContextBase.prim__linkProgram (cast a) b


  export
  pixelStorei :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (pname : Bits32)
    -> (param : Int32)
    -> JSIO ()
  pixelStorei a b c = primJS $
    WebGLRenderingContextBase.prim__pixelStorei (cast a) b c


  export
  polygonOffset :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (factor : Double)
    -> (units : Double)
    -> JSIO ()
  polygonOffset a b c = primJS $
    WebGLRenderingContextBase.prim__polygonOffset (cast a) b c


  export
  renderbufferStorage :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (target : Bits32)
    -> (internalformat : Bits32)
    -> (width : Int32)
    -> (height : Int32)
    -> JSIO ()
  renderbufferStorage a b c d e = primJS $
    WebGLRenderingContextBase.prim__renderbufferStorage (cast a) b c d e


  export
  sampleCoverage :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (value : Double)
    -> (invert : Bool)
    -> JSIO ()
  sampleCoverage a b c = primJS $
    WebGLRenderingContextBase.prim__sampleCoverage (cast a) b (toFFI c)


  export
  scissor :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (x : Int32)
    -> (y : Int32)
    -> (width : Int32)
    -> (height : Int32)
    -> JSIO ()
  scissor a b c d e = primJS $
    WebGLRenderingContextBase.prim__scissor (cast a) b c d e


  export
  shaderSource :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (shader : WebGLShader)
    -> (source : String)
    -> JSIO ()
  shaderSource a b c = primJS $
    WebGLRenderingContextBase.prim__shaderSource (cast a) b c


  export
  stencilFuncSeparate :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (face : Bits32)
    -> (func : Bits32)
    -> (ref : Int32)
    -> (mask : Bits32)
    -> JSIO ()
  stencilFuncSeparate a b c d e = primJS $
    WebGLRenderingContextBase.prim__stencilFuncSeparate (cast a) b c d e


  export
  stencilFunc :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (func : Bits32)
    -> (ref : Int32)
    -> (mask : Bits32)
    -> JSIO ()
  stencilFunc a b c d = primJS $
    WebGLRenderingContextBase.prim__stencilFunc (cast a) b c d


  export
  stencilMaskSeparate :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (face : Bits32)
    -> (mask : Bits32)
    -> JSIO ()
  stencilMaskSeparate a b c = primJS $
    WebGLRenderingContextBase.prim__stencilMaskSeparate (cast a) b c


  export
  stencilMask :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (mask : Bits32)
    -> JSIO ()
  stencilMask a b = primJS $
    WebGLRenderingContextBase.prim__stencilMask (cast a) b


  export
  stencilOpSeparate :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (face : Bits32)
    -> (fail : Bits32)
    -> (zfail : Bits32)
    -> (zpass : Bits32)
    -> JSIO ()
  stencilOpSeparate a b c d e = primJS $
    WebGLRenderingContextBase.prim__stencilOpSeparate (cast a) b c d e


  export
  stencilOp :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (fail : Bits32)
    -> (zfail : Bits32)
    -> (zpass : Bits32)
    -> JSIO ()
  stencilOp a b c d = primJS $
    WebGLRenderingContextBase.prim__stencilOp (cast a) b c d


  export
  texParameterf :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (target : Bits32)
    -> (pname : Bits32)
    -> (param : Double)
    -> JSIO ()
  texParameterf a b c d = primJS $
    WebGLRenderingContextBase.prim__texParameterf (cast a) b c d


  export
  texParameteri :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (target : Bits32)
    -> (pname : Bits32)
    -> (param : Int32)
    -> JSIO ()
  texParameteri a b c d = primJS $
    WebGLRenderingContextBase.prim__texParameteri (cast a) b c d


  export
  uniform1f :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (x : Double)
    -> JSIO ()
  uniform1f a b c = primJS $
    WebGLRenderingContextBase.prim__uniform1f (cast a) (toFFI b) c


  export
  uniform1i :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (x : Int32)
    -> JSIO ()
  uniform1i a b c = primJS $
    WebGLRenderingContextBase.prim__uniform1i (cast a) (toFFI b) c


  export
  uniform2f :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (x : Double)
    -> (y : Double)
    -> JSIO ()
  uniform2f a b c d = primJS $
    WebGLRenderingContextBase.prim__uniform2f (cast a) (toFFI b) c d


  export
  uniform2i :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (x : Int32)
    -> (y : Int32)
    -> JSIO ()
  uniform2i a b c d = primJS $
    WebGLRenderingContextBase.prim__uniform2i (cast a) (toFFI b) c d


  export
  uniform3f :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (x : Double)
    -> (y : Double)
    -> (z : Double)
    -> JSIO ()
  uniform3f a b c d e = primJS $
    WebGLRenderingContextBase.prim__uniform3f (cast a) (toFFI b) c d e


  export
  uniform3i :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (x : Int32)
    -> (y : Int32)
    -> (z : Int32)
    -> JSIO ()
  uniform3i a b c d e = primJS $
    WebGLRenderingContextBase.prim__uniform3i (cast a) (toFFI b) c d e


  export
  uniform4f :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (x : Double)
    -> (y : Double)
    -> (z : Double)
    -> (w : Double)
    -> JSIO ()
  uniform4f a b c d e f = primJS $
    WebGLRenderingContextBase.prim__uniform4f (cast a) (toFFI b) c d e f


  export
  uniform4i :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (x : Int32)
    -> (y : Int32)
    -> (z : Int32)
    -> (w : Int32)
    -> JSIO ()
  uniform4i a b c d e f = primJS $
    WebGLRenderingContextBase.prim__uniform4i (cast a) (toFFI b) c d e f


  export
  useProgram :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (program : Maybe WebGLProgram)
    -> JSIO ()
  useProgram a b = primJS $
    WebGLRenderingContextBase.prim__useProgram (cast a) (toFFI b)


  export
  validateProgram :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (program : WebGLProgram)
    -> JSIO ()
  validateProgram a b = primJS $
    WebGLRenderingContextBase.prim__validateProgram (cast a) b


  export
  vertexAttrib1f :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (index : Bits32)
    -> (x : Double)
    -> JSIO ()
  vertexAttrib1f a b c = primJS $
    WebGLRenderingContextBase.prim__vertexAttrib1f (cast a) b c


  export
  vertexAttrib1fv :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (index : Bits32)
    -> (values : HSum [Float32Array, Array Double])
    -> JSIO ()
  vertexAttrib1fv a b c = primJS $
    WebGLRenderingContextBase.prim__vertexAttrib1fv (cast a) b (toFFI c)


  export
  vertexAttrib2f :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (index : Bits32)
    -> (x : Double)
    -> (y : Double)
    -> JSIO ()
  vertexAttrib2f a b c d = primJS $
    WebGLRenderingContextBase.prim__vertexAttrib2f (cast a) b c d


  export
  vertexAttrib2fv :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (index : Bits32)
    -> (values : HSum [Float32Array, Array Double])
    -> JSIO ()
  vertexAttrib2fv a b c = primJS $
    WebGLRenderingContextBase.prim__vertexAttrib2fv (cast a) b (toFFI c)


  export
  vertexAttrib3f :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (index : Bits32)
    -> (x : Double)
    -> (y : Double)
    -> (z : Double)
    -> JSIO ()
  vertexAttrib3f a b c d e = primJS $
    WebGLRenderingContextBase.prim__vertexAttrib3f (cast a) b c d e


  export
  vertexAttrib3fv :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (index : Bits32)
    -> (values : HSum [Float32Array, Array Double])
    -> JSIO ()
  vertexAttrib3fv a b c = primJS $
    WebGLRenderingContextBase.prim__vertexAttrib3fv (cast a) b (toFFI c)


  export
  vertexAttrib4f :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (index : Bits32)
    -> (x : Double)
    -> (y : Double)
    -> (z : Double)
    -> (w : Double)
    -> JSIO ()
  vertexAttrib4f a b c d e f = primJS $
    WebGLRenderingContextBase.prim__vertexAttrib4f (cast a) b c d e f


  export
  vertexAttrib4fv :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (index : Bits32)
    -> (values : HSum [Float32Array, Array Double])
    -> JSIO ()
  vertexAttrib4fv a b c = primJS $
    WebGLRenderingContextBase.prim__vertexAttrib4fv (cast a) b (toFFI c)


  export
  vertexAttribPointer :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (index : Bits32)
    -> (size : Int32)
    -> (type : Bits32)
    -> (normalized : Bool)
    -> (stride : Int32)
    -> (offset : JSInt64)
    -> JSIO ()
  vertexAttribPointer a b c d e f g = primJS $
    WebGLRenderingContextBase.prim__vertexAttribPointer
      (cast a)
      b
      c
      d
      (toFFI e)
      f
      g


  export
  viewport :
       {auto _ : Cast t1 WebGLRenderingContextBase}
    -> (obj : t1)
    -> (x : Int32)
    -> (y : Int32)
    -> (width : Int32)
    -> (height : Int32)
    -> JSIO ()
  viewport a b c d e = primJS $
    WebGLRenderingContextBase.prim__viewport (cast a) b c d e



namespace WebGLRenderingContextOverloads

  export
  bufferData :
       {auto _ : Cast t1 WebGLRenderingContextOverloads}
    -> (obj : t1)
    -> (target : Bits32)
    -> (size : JSInt64)
    -> (usage : Bits32)
    -> JSIO ()
  bufferData a b c d = primJS $
    WebGLRenderingContextOverloads.prim__bufferData (cast a) b c d


  export
  bufferData1 :
       {auto _ : Cast t1 WebGLRenderingContextOverloads}
    -> (obj : t1)
    -> (target : Bits32)
    -> (data_ : Maybe
                  (HSum
                     [ Int8Array
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
  bufferData1 a b c d = primJS $
    WebGLRenderingContextOverloads.prim__bufferData1 (cast a) b (toFFI c) d


  export
  bufferSubData :
       {auto _ : Cast t1 WebGLRenderingContextOverloads}
    -> (obj : t1)
    -> (target : Bits32)
    -> (offset : JSInt64)
    -> (data_ : HSum
                  [ Int8Array
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
  bufferSubData a b c d = primJS $
    WebGLRenderingContextOverloads.prim__bufferSubData (cast a) b c (toFFI d)


  export
  compressedTexImage2D :
       {auto _ : Cast t1 WebGLRenderingContextOverloads}
    -> (obj : t1)
    -> (target : Bits32)
    -> (level : Int32)
    -> (internalformat : Bits32)
    -> (width : Int32)
    -> (height : Int32)
    -> (border : Int32)
    -> (data_ : HSum
                  [ Int8Array
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
  compressedTexImage2D a b c d e f g h = primJS $
    WebGLRenderingContextOverloads.prim__compressedTexImage2D
      (cast a)
      b
      c
      d
      e
      f
      g
      (toFFI h)


  export
  compressedTexSubImage2D :
       {auto _ : Cast t1 WebGLRenderingContextOverloads}
    -> (obj : t1)
    -> (target : Bits32)
    -> (level : Int32)
    -> (xoffset : Int32)
    -> (yoffset : Int32)
    -> (width : Int32)
    -> (height : Int32)
    -> (format : Bits32)
    -> (data_ : HSum
                  [ Int8Array
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
  compressedTexSubImage2D a b c d e f g h i = primJS $
    WebGLRenderingContextOverloads.prim__compressedTexSubImage2D
      (cast a)
      b
      c
      d
      e
      f
      g
      h
      (toFFI i)


  export
  readPixels :
       {auto _ : Cast t1 WebGLRenderingContextOverloads}
    -> (obj : t1)
    -> (x : Int32)
    -> (y : Int32)
    -> (width : Int32)
    -> (height : Int32)
    -> (format : Bits32)
    -> (type : Bits32)
    -> (pixels : Maybe
                   (HSum
                      [ Int8Array
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
  readPixels a b c d e f g h = primJS $
    WebGLRenderingContextOverloads.prim__readPixels
      (cast a)
      b
      c
      d
      e
      f
      g
      (toFFI h)


  export
  texImage2D :
       {auto _ : Cast t1 WebGLRenderingContextOverloads}
    -> (obj : t1)
    -> (target : Bits32)
    -> (level : Int32)
    -> (internalformat : Int32)
    -> (width : Int32)
    -> (height : Int32)
    -> (border : Int32)
    -> (format : Bits32)
    -> (type : Bits32)
    -> (pixels : Maybe
                   (HSum
                      [ Int8Array
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
  texImage2D a b c d e f g h i j = primJS $
    WebGLRenderingContextOverloads.prim__texImage2D
      (cast a)
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
  texImage2D1 :
       {auto _ : Cast t1 WebGLRenderingContextOverloads}
    -> (obj : t1)
    -> (target : Bits32)
    -> (level : Int32)
    -> (internalformat : Int32)
    -> (format : Bits32)
    -> (type : Bits32)
    -> (source : HSum
                   [ ImageBitmap
                   , ImageData
                   , HTMLImageElement
                   , HTMLCanvasElement
                   , HTMLVideoElement
                   , OffscreenCanvas
                   ])
    -> JSIO ()
  texImage2D1 a b c d e f g = primJS $
    WebGLRenderingContextOverloads.prim__texImage2D1
      (cast a)
      b
      c
      d
      e
      f
      (toFFI g)


  export
  texSubImage2D :
       {auto _ : Cast t1 WebGLRenderingContextOverloads}
    -> (obj : t1)
    -> (target : Bits32)
    -> (level : Int32)
    -> (xoffset : Int32)
    -> (yoffset : Int32)
    -> (width : Int32)
    -> (height : Int32)
    -> (format : Bits32)
    -> (type : Bits32)
    -> (pixels : Maybe
                   (HSum
                      [ Int8Array
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
  texSubImage2D a b c d e f g h i j = primJS $
    WebGLRenderingContextOverloads.prim__texSubImage2D
      (cast a)
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
  texSubImage2D1 :
       {auto _ : Cast t1 WebGLRenderingContextOverloads}
    -> (obj : t1)
    -> (target : Bits32)
    -> (level : Int32)
    -> (xoffset : Int32)
    -> (yoffset : Int32)
    -> (format : Bits32)
    -> (type : Bits32)
    -> (source : HSum
                   [ ImageBitmap
                   , ImageData
                   , HTMLImageElement
                   , HTMLCanvasElement
                   , HTMLVideoElement
                   , OffscreenCanvas
                   ])
    -> JSIO ()
  texSubImage2D1 a b c d e f g h = primJS $
    WebGLRenderingContextOverloads.prim__texSubImage2D1
      (cast a)
      b
      c
      d
      e
      f
      g
      (toFFI h)


  export
  uniform1fv :
       {auto _ : Cast t1 WebGLRenderingContextOverloads}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (v : HSum [Float32Array, Array Double])
    -> JSIO ()
  uniform1fv a b c = primJS $
    WebGLRenderingContextOverloads.prim__uniform1fv (cast a) (toFFI b) (toFFI c)


  export
  uniform1iv :
       {auto _ : Cast t1 WebGLRenderingContextOverloads}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (v : HSum [Int32Array, Array Int32])
    -> JSIO ()
  uniform1iv a b c = primJS $
    WebGLRenderingContextOverloads.prim__uniform1iv (cast a) (toFFI b) (toFFI c)


  export
  uniform2fv :
       {auto _ : Cast t1 WebGLRenderingContextOverloads}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (v : HSum [Float32Array, Array Double])
    -> JSIO ()
  uniform2fv a b c = primJS $
    WebGLRenderingContextOverloads.prim__uniform2fv (cast a) (toFFI b) (toFFI c)


  export
  uniform2iv :
       {auto _ : Cast t1 WebGLRenderingContextOverloads}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (v : HSum [Int32Array, Array Int32])
    -> JSIO ()
  uniform2iv a b c = primJS $
    WebGLRenderingContextOverloads.prim__uniform2iv (cast a) (toFFI b) (toFFI c)


  export
  uniform3fv :
       {auto _ : Cast t1 WebGLRenderingContextOverloads}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (v : HSum [Float32Array, Array Double])
    -> JSIO ()
  uniform3fv a b c = primJS $
    WebGLRenderingContextOverloads.prim__uniform3fv (cast a) (toFFI b) (toFFI c)


  export
  uniform3iv :
       {auto _ : Cast t1 WebGLRenderingContextOverloads}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (v : HSum [Int32Array, Array Int32])
    -> JSIO ()
  uniform3iv a b c = primJS $
    WebGLRenderingContextOverloads.prim__uniform3iv (cast a) (toFFI b) (toFFI c)


  export
  uniform4fv :
       {auto _ : Cast t1 WebGLRenderingContextOverloads}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (v : HSum [Float32Array, Array Double])
    -> JSIO ()
  uniform4fv a b c = primJS $
    WebGLRenderingContextOverloads.prim__uniform4fv (cast a) (toFFI b) (toFFI c)


  export
  uniform4iv :
       {auto _ : Cast t1 WebGLRenderingContextOverloads}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (v : HSum [Int32Array, Array Int32])
    -> JSIO ()
  uniform4iv a b c = primJS $
    WebGLRenderingContextOverloads.prim__uniform4iv (cast a) (toFFI b) (toFFI c)


  export
  uniformMatrix2fv :
       {auto _ : Cast t1 WebGLRenderingContextOverloads}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (transpose : Bool)
    -> (value : HSum [Float32Array, Array Double])
    -> JSIO ()
  uniformMatrix2fv a b c d = primJS $
    WebGLRenderingContextOverloads.prim__uniformMatrix2fv
      (cast a)
      (toFFI b)
      (toFFI c)
      (toFFI d)


  export
  uniformMatrix3fv :
       {auto _ : Cast t1 WebGLRenderingContextOverloads}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (transpose : Bool)
    -> (value : HSum [Float32Array, Array Double])
    -> JSIO ()
  uniformMatrix3fv a b c d = primJS $
    WebGLRenderingContextOverloads.prim__uniformMatrix3fv
      (cast a)
      (toFFI b)
      (toFFI c)
      (toFFI d)


  export
  uniformMatrix4fv :
       {auto _ : Cast t1 WebGLRenderingContextOverloads}
    -> (obj : t1)
    -> (location : Maybe WebGLUniformLocation)
    -> (transpose : Bool)
    -> (value : HSum [Float32Array, Array Double])
    -> JSIO ()
  uniformMatrix4fv a b c d = primJS $
    WebGLRenderingContextOverloads.prim__uniformMatrix4fv
      (cast a)
      (toFFI b)
      (toFFI c)
      (toFFI d)




--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace WebGLContextAttributes

  export
  new' :
       (alpha : Optional Bool)
    -> (depth : Optional Bool)
    -> (stencil : Optional Bool)
    -> (antialias : Optional Bool)
    -> (premultipliedAlpha : Optional Bool)
    -> (preserveDrawingBuffer : Optional Bool)
    -> (powerPreference : Optional WebGLPowerPreference)
    -> (failIfMajorPerformanceCaveat : Optional Bool)
    -> (desynchronized : Optional Bool)
    -> JSIO WebGLContextAttributes
  new' a b c d e f g h i = primJS $
    WebGLContextAttributes.prim__new
      (toFFI a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      (toFFI e)
      (toFFI f)
      (toFFI g)
      (toFFI h)
      (toFFI i)

  export
  new : JSIO WebGLContextAttributes
  new = primJS $
    WebGLContextAttributes.prim__new
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef


  export
  alpha :
       {auto _ : Cast t WebGLContextAttributes}
    -> t
    -> Attribute True Optional Bool
  alpha v = fromUndefOrPrim
              "WebGLContextAttributes.getalpha"
              prim__alpha
              prim__setAlpha
              True
              (cast {to = WebGLContextAttributes} v)


  export
  antialias :
       {auto _ : Cast t WebGLContextAttributes}
    -> t
    -> Attribute True Optional Bool
  antialias v = fromUndefOrPrim
                  "WebGLContextAttributes.getantialias"
                  prim__antialias
                  prim__setAntialias
                  True
                  (cast {to = WebGLContextAttributes} v)


  export
  depth :
       {auto _ : Cast t WebGLContextAttributes}
    -> t
    -> Attribute True Optional Bool
  depth v = fromUndefOrPrim
              "WebGLContextAttributes.getdepth"
              prim__depth
              prim__setDepth
              True
              (cast {to = WebGLContextAttributes} v)


  export
  desynchronized :
       {auto _ : Cast t WebGLContextAttributes}
    -> t
    -> Attribute True Optional Bool
  desynchronized v = fromUndefOrPrim
                       "WebGLContextAttributes.getdesynchronized"
                       prim__desynchronized
                       prim__setDesynchronized
                       False
                       (cast {to = WebGLContextAttributes} v)


  export
  failIfMajorPerformanceCaveat :
       {auto _ : Cast t WebGLContextAttributes}
    -> t
    -> Attribute True Optional Bool
  failIfMajorPerformanceCaveat v = fromUndefOrPrim
                                     "WebGLContextAttributes.getfailIfMajorPerformanceCaveat"
                                     prim__failIfMajorPerformanceCaveat
                                     prim__setFailIfMajorPerformanceCaveat
                                     False
                                     (cast {to = WebGLContextAttributes} v)


  export
  powerPreference :
       {auto _ : Cast t WebGLContextAttributes}
    -> t
    -> Attribute False Optional WebGLPowerPreference
  powerPreference v = fromUndefOrPrimNoDefault
                        "WebGLContextAttributes.getpowerPreference"
                        prim__powerPreference
                        prim__setPowerPreference
                        (cast {to = WebGLContextAttributes} v)


  export
  premultipliedAlpha :
       {auto _ : Cast t WebGLContextAttributes}
    -> t
    -> Attribute True Optional Bool
  premultipliedAlpha v = fromUndefOrPrim
                           "WebGLContextAttributes.getpremultipliedAlpha"
                           prim__premultipliedAlpha
                           prim__setPremultipliedAlpha
                           True
                           (cast {to = WebGLContextAttributes} v)


  export
  preserveDrawingBuffer :
       {auto _ : Cast t WebGLContextAttributes}
    -> t
    -> Attribute True Optional Bool
  preserveDrawingBuffer v = fromUndefOrPrim
                              "WebGLContextAttributes.getpreserveDrawingBuffer"
                              prim__preserveDrawingBuffer
                              prim__setPreserveDrawingBuffer
                              False
                              (cast {to = WebGLContextAttributes} v)


  export
  stencil :
       {auto _ : Cast t WebGLContextAttributes}
    -> t
    -> Attribute True Optional Bool
  stencil v = fromUndefOrPrim
                "WebGLContextAttributes.getstencil"
                prim__stencil
                prim__setStencil
                False
                (cast {to = WebGLContextAttributes} v)
