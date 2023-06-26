module Web.Raw.WebGL2RenderingContextBase

import JS
import Web.Types.HTMLCanvasElement
import Web.Types.HTMLImageElement
import Web.Types.HTMLVideoElement
import Web.Types.ImageBitmap
import Web.Types.ImageData
import Web.Types.OffscreenCanvas
import Web.Types.WebGL2RenderingContextBase
import Web.Types.WebGLActiveInfo
import Web.Types.WebGLBuffer
import Web.Types.WebGLProgram
import Web.Types.WebGLQuery
import Web.Types.WebGLSampler
import Web.Types.WebGLSync
import Web.Types.WebGLTexture
import Web.Types.WebGLTransformFeedback
import Web.Types.WebGLUniformLocation
import Web.Types.WebGLVertexArrayObject


%default total


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
%foreign "browser:lambda:(x,a,b)=>x.beginQuery(a,b)"
prim__beginQuery :
     WebGL2RenderingContextBase
  -> Bits32
  -> WebGLQuery
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.beginTransformFeedback(a)"
prim__beginTransformFeedback : WebGL2RenderingContextBase -> Bits32 -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c)=>x.bindBufferBase(a,b,c)"
prim__bindBufferBase :
     WebGL2RenderingContextBase
  -> Bits32
  -> Bits32
  -> Nullable WebGLBuffer
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e)=>x.bindBufferRange(a,b,c,d,e)"
prim__bindBufferRange :
     WebGL2RenderingContextBase
  -> Bits32
  -> Bits32
  -> Nullable WebGLBuffer
  -> JSInt64
  -> JSInt64
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.bindSampler(a,b)"
prim__bindSampler :
     WebGL2RenderingContextBase
  -> Bits32
  -> Nullable WebGLSampler
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.bindTransformFeedback(a,b)"
prim__bindTransformFeedback :
     WebGL2RenderingContextBase
  -> Bits32
  -> Nullable WebGLTransformFeedback
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.bindVertexArray(a)"
prim__bindVertexArray :
     WebGL2RenderingContextBase
  -> Nullable WebGLVertexArrayObject
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j)=>x.blitFramebuffer(a,b,c,d,e,f,g,h,i,j)"
prim__blitFramebuffer :
     WebGL2RenderingContextBase
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Bits32
  -> Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.clearBufferfi(a,b,c,d)"
prim__clearBufferfi :
     WebGL2RenderingContextBase
  -> Bits32
  -> Int32
  -> Double
  -> Int32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.clearBufferfv(a,b,c,d)"
prim__clearBufferfv :
     WebGL2RenderingContextBase
  -> Bits32
  -> Int32
  -> Union2 Float32Array (Array Double)
  -> UndefOr Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.clearBufferiv(a,b,c,d)"
prim__clearBufferiv :
     WebGL2RenderingContextBase
  -> Bits32
  -> Int32
  -> Union2 Int32Array (Array Int32)
  -> UndefOr Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.clearBufferuiv(a,b,c,d)"
prim__clearBufferuiv :
     WebGL2RenderingContextBase
  -> Bits32
  -> Int32
  -> Union2 UInt8Array (Array Bits32)
  -> UndefOr Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c)=>x.clientWaitSync(a,b,c)"
prim__clientWaitSync :
     WebGL2RenderingContextBase
  -> WebGLSync
  -> Bits32
  -> JSBits64
  -> PrimIO Bits32


export
%foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i)=>x.compressedTexImage3D(a,b,c,d,e,f,g,h,i)"
prim__compressedTexImage3D :
     WebGL2RenderingContextBase
  -> Bits32
  -> Int32
  -> Bits32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> JSInt64
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j)=>x.compressedTexImage3D(a,b,c,d,e,f,g,h,i,j)"
prim__compressedTexImage3D1 :
     WebGL2RenderingContextBase
  -> Bits32
  -> Int32
  -> Bits32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Union10
       Int8Array
       Int16Array
       Int32Array
       UInt8Array
       UInt8Array
       UInt8Array
       UInt8ClampedArray
       Float32Array
       Float64Array
       DataView
  -> UndefOr Bits32
  -> UndefOr Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j,k)=>x.compressedTexSubImage3D(a,b,c,d,e,f,g,h,i,j,k)"
prim__compressedTexSubImage3D :
     WebGL2RenderingContextBase
  -> Bits32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Bits32
  -> Int32
  -> JSInt64
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j,k,l)=>x.compressedTexSubImage3D(a,b,c,d,e,f,g,h,i,j,k,l)"
prim__compressedTexSubImage3D1 :
     WebGL2RenderingContextBase
  -> Bits32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Bits32
  -> Union10
       Int8Array
       Int16Array
       Int32Array
       UInt8Array
       UInt8Array
       UInt8Array
       UInt8ClampedArray
       Float32Array
       Float64Array
       DataView
  -> UndefOr Bits32
  -> UndefOr Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e)=>x.copyBufferSubData(a,b,c,d,e)"
prim__copyBufferSubData :
     WebGL2RenderingContextBase
  -> Bits32
  -> Bits32
  -> JSInt64
  -> JSInt64
  -> JSInt64
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i)=>x.copyTexSubImage3D(a,b,c,d,e,f,g,h,i)"
prim__copyTexSubImage3D :
     WebGL2RenderingContextBase
  -> Bits32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> PrimIO ()


export
%foreign "browser:lambda:x=>x.createQuery()"
prim__createQuery : WebGL2RenderingContextBase -> PrimIO (Nullable WebGLQuery)


export
%foreign "browser:lambda:x=>x.createSampler()"
prim__createSampler :
     WebGL2RenderingContextBase
  -> PrimIO (Nullable WebGLSampler)


export
%foreign "browser:lambda:x=>x.createTransformFeedback()"
prim__createTransformFeedback :
     WebGL2RenderingContextBase
  -> PrimIO (Nullable WebGLTransformFeedback)


export
%foreign "browser:lambda:x=>x.createVertexArray()"
prim__createVertexArray :
     WebGL2RenderingContextBase
  -> PrimIO (Nullable WebGLVertexArrayObject)


export
%foreign "browser:lambda:(x,a)=>x.deleteQuery(a)"
prim__deleteQuery :
     WebGL2RenderingContextBase
  -> Nullable WebGLQuery
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.deleteSampler(a)"
prim__deleteSampler :
     WebGL2RenderingContextBase
  -> Nullable WebGLSampler
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.deleteSync(a)"
prim__deleteSync : WebGL2RenderingContextBase -> Nullable WebGLSync -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.deleteTransformFeedback(a)"
prim__deleteTransformFeedback :
     WebGL2RenderingContextBase
  -> Nullable WebGLTransformFeedback
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.deleteVertexArray(a)"
prim__deleteVertexArray :
     WebGL2RenderingContextBase
  -> Nullable WebGLVertexArrayObject
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.drawArraysInstanced(a,b,c,d)"
prim__drawArraysInstanced :
     WebGL2RenderingContextBase
  -> Bits32
  -> Int32
  -> Int32
  -> Int32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.drawBuffers(a)"
prim__drawBuffers : WebGL2RenderingContextBase -> Array Bits32 -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e)=>x.drawElementsInstanced(a,b,c,d,e)"
prim__drawElementsInstanced :
     WebGL2RenderingContextBase
  -> Bits32
  -> Int32
  -> Bits32
  -> JSInt64
  -> Int32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.drawRangeElements(a,b,c,d,e,f)"
prim__drawRangeElements :
     WebGL2RenderingContextBase
  -> Bits32
  -> Bits32
  -> Bits32
  -> Int32
  -> Bits32
  -> JSInt64
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.endQuery(a)"
prim__endQuery : WebGL2RenderingContextBase -> Bits32 -> PrimIO ()


export
%foreign "browser:lambda:x=>x.endTransformFeedback()"
prim__endTransformFeedback : WebGL2RenderingContextBase -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.fenceSync(a,b)"
prim__fenceSync :
     WebGL2RenderingContextBase
  -> Bits32
  -> Bits32
  -> PrimIO (Nullable WebGLSync)


export
%foreign "browser:lambda:(x,a,b,c,d,e)=>x.framebufferTextureLayer(a,b,c,d,e)"
prim__framebufferTextureLayer :
     WebGL2RenderingContextBase
  -> Bits32
  -> Bits32
  -> Nullable WebGLTexture
  -> Int32
  -> Int32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.getActiveUniformBlockName(a,b)"
prim__getActiveUniformBlockName :
     WebGL2RenderingContextBase
  -> WebGLProgram
  -> Bits32
  -> PrimIO (Nullable String)


export
%foreign "browser:lambda:(x,a,b,c)=>x.getActiveUniformBlockParameter(a,b,c)"
prim__getActiveUniformBlockParameter :
     WebGL2RenderingContextBase
  -> WebGLProgram
  -> Bits32
  -> Bits32
  -> PrimIO AnyPtr


export
%foreign "browser:lambda:(x,a,b,c)=>x.getActiveUniforms(a,b,c)"
prim__getActiveUniforms :
     WebGL2RenderingContextBase
  -> WebGLProgram
  -> Array Bits32
  -> Bits32
  -> PrimIO AnyPtr


export
%foreign "browser:lambda:(x,a,b,c,d,e)=>x.getBufferSubData(a,b,c,d,e)"
prim__getBufferSubData :
     WebGL2RenderingContextBase
  -> Bits32
  -> JSInt64
  -> Union10
       Int8Array
       Int16Array
       Int32Array
       UInt8Array
       UInt8Array
       UInt8Array
       UInt8ClampedArray
       Float32Array
       Float64Array
       DataView
  -> UndefOr Bits32
  -> UndefOr Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.getFragDataLocation(a,b)"
prim__getFragDataLocation :
     WebGL2RenderingContextBase
  -> WebGLProgram
  -> String
  -> PrimIO Int32


export
%foreign "browser:lambda:(x,a,b)=>x.getIndexedParameter(a,b)"
prim__getIndexedParameter :
     WebGL2RenderingContextBase
  -> Bits32
  -> Bits32
  -> PrimIO AnyPtr


export
%foreign "browser:lambda:(x,a,b,c)=>x.getInternalformatParameter(a,b,c)"
prim__getInternalformatParameter :
     WebGL2RenderingContextBase
  -> Bits32
  -> Bits32
  -> Bits32
  -> PrimIO AnyPtr


export
%foreign "browser:lambda:(x,a,b)=>x.getQueryParameter(a,b)"
prim__getQueryParameter :
     WebGL2RenderingContextBase
  -> WebGLQuery
  -> Bits32
  -> PrimIO AnyPtr


export
%foreign "browser:lambda:(x,a,b)=>x.getQuery(a,b)"
prim__getQuery :
     WebGL2RenderingContextBase
  -> Bits32
  -> Bits32
  -> PrimIO (Nullable WebGLQuery)


export
%foreign "browser:lambda:(x,a,b)=>x.getSamplerParameter(a,b)"
prim__getSamplerParameter :
     WebGL2RenderingContextBase
  -> WebGLSampler
  -> Bits32
  -> PrimIO AnyPtr


export
%foreign "browser:lambda:(x,a,b)=>x.getSyncParameter(a,b)"
prim__getSyncParameter :
     WebGL2RenderingContextBase
  -> WebGLSync
  -> Bits32
  -> PrimIO AnyPtr


export
%foreign "browser:lambda:(x,a,b)=>x.getTransformFeedbackVarying(a,b)"
prim__getTransformFeedbackVarying :
     WebGL2RenderingContextBase
  -> WebGLProgram
  -> Bits32
  -> PrimIO (Nullable WebGLActiveInfo)


export
%foreign "browser:lambda:(x,a,b)=>x.getUniformBlockIndex(a,b)"
prim__getUniformBlockIndex :
     WebGL2RenderingContextBase
  -> WebGLProgram
  -> String
  -> PrimIO Bits32


export
%foreign "browser:lambda:(x,a,b)=>x.getUniformIndices(a,b)"
prim__getUniformIndices :
     WebGL2RenderingContextBase
  -> WebGLProgram
  -> Array String
  -> PrimIO (Nullable (Array Bits32))


export
%foreign "browser:lambda:(x,a,b)=>x.invalidateFramebuffer(a,b)"
prim__invalidateFramebuffer :
     WebGL2RenderingContextBase
  -> Bits32
  -> Array Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.invalidateSubFramebuffer(a,b,c,d,e,f)"
prim__invalidateSubFramebuffer :
     WebGL2RenderingContextBase
  -> Bits32
  -> Array Bits32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.isQuery(a)"
prim__isQuery :
     WebGL2RenderingContextBase
  -> Nullable WebGLQuery
  -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a)=>x.isSampler(a)"
prim__isSampler :
     WebGL2RenderingContextBase
  -> Nullable WebGLSampler
  -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a)=>x.isSync(a)"
prim__isSync :
     WebGL2RenderingContextBase
  -> Nullable WebGLSync
  -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a)=>x.isTransformFeedback(a)"
prim__isTransformFeedback :
     WebGL2RenderingContextBase
  -> Nullable WebGLTransformFeedback
  -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a)=>x.isVertexArray(a)"
prim__isVertexArray :
     WebGL2RenderingContextBase
  -> Nullable WebGLVertexArrayObject
  -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.pauseTransformFeedback()"
prim__pauseTransformFeedback : WebGL2RenderingContextBase -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.readBuffer(a)"
prim__readBuffer : WebGL2RenderingContextBase -> Bits32 -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e)=>x.renderbufferStorageMultisample(a,b,c,d,e)"
prim__renderbufferStorageMultisample :
     WebGL2RenderingContextBase
  -> Bits32
  -> Int32
  -> Bits32
  -> Int32
  -> Int32
  -> PrimIO ()


export
%foreign "browser:lambda:x=>x.resumeTransformFeedback()"
prim__resumeTransformFeedback : WebGL2RenderingContextBase -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c)=>x.samplerParameterf(a,b,c)"
prim__samplerParameterf :
     WebGL2RenderingContextBase
  -> WebGLSampler
  -> Bits32
  -> Double
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c)=>x.samplerParameteri(a,b,c)"
prim__samplerParameteri :
     WebGL2RenderingContextBase
  -> WebGLSampler
  -> Bits32
  -> Int32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j)=>x.texImage3D(a,b,c,d,e,f,g,h,i,j)"
prim__texImage3D :
     WebGL2RenderingContextBase
  -> Bits32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Bits32
  -> Bits32
  -> JSInt64
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j)=>x.texImage3D(a,b,c,d,e,f,g,h,i,j)"
prim__texImage3D1 :
     WebGL2RenderingContextBase
  -> Bits32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Bits32
  -> Bits32
  -> Union6
       ImageBitmap
       ImageData
       HTMLImageElement
       HTMLCanvasElement
       HTMLVideoElement
       OffscreenCanvas
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j)=>x.texImage3D(a,b,c,d,e,f,g,h,i,j)"
prim__texImage3D2 :
     WebGL2RenderingContextBase
  -> Bits32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Bits32
  -> Bits32
  -> Nullable
       (Union10
          Int8Array
          Int16Array
          Int32Array
          UInt8Array
          UInt8Array
          UInt8Array
          UInt8ClampedArray
          Float32Array
          Float64Array
          DataView)
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j,k)=>x.texImage3D(a,b,c,d,e,f,g,h,i,j,k)"
prim__texImage3D3 :
     WebGL2RenderingContextBase
  -> Bits32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Bits32
  -> Bits32
  -> Union10
       Int8Array
       Int16Array
       Int32Array
       UInt8Array
       UInt8Array
       UInt8Array
       UInt8ClampedArray
       Float32Array
       Float64Array
       DataView
  -> Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e)=>x.texStorage2D(a,b,c,d,e)"
prim__texStorage2D :
     WebGL2RenderingContextBase
  -> Bits32
  -> Int32
  -> Bits32
  -> Int32
  -> Int32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.texStorage3D(a,b,c,d,e,f)"
prim__texStorage3D :
     WebGL2RenderingContextBase
  -> Bits32
  -> Int32
  -> Bits32
  -> Int32
  -> Int32
  -> Int32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j,k)=>x.texSubImage3D(a,b,c,d,e,f,g,h,i,j,k)"
prim__texSubImage3D :
     WebGL2RenderingContextBase
  -> Bits32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Bits32
  -> Bits32
  -> JSInt64
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j,k)=>x.texSubImage3D(a,b,c,d,e,f,g,h,i,j,k)"
prim__texSubImage3D1 :
     WebGL2RenderingContextBase
  -> Bits32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Bits32
  -> Bits32
  -> Union6
       ImageBitmap
       ImageData
       HTMLImageElement
       HTMLCanvasElement
       HTMLVideoElement
       OffscreenCanvas
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j,k,l)=>x.texSubImage3D(a,b,c,d,e,f,g,h,i,j,k,l)"
prim__texSubImage3D2 :
     WebGL2RenderingContextBase
  -> Bits32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Bits32
  -> Bits32
  -> Nullable
       (Union10
          Int8Array
          Int16Array
          Int32Array
          UInt8Array
          UInt8Array
          UInt8Array
          UInt8ClampedArray
          Float32Array
          Float64Array
          DataView)
  -> UndefOr Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c)=>x.transformFeedbackVaryings(a,b,c)"
prim__transformFeedbackVaryings :
     WebGL2RenderingContextBase
  -> WebGLProgram
  -> Array String
  -> Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.uniform1ui(a,b)"
prim__uniform1ui :
     WebGL2RenderingContextBase
  -> Nullable WebGLUniformLocation
  -> Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.uniform1uiv(a,b,c,d)"
prim__uniform1uiv :
     WebGL2RenderingContextBase
  -> Nullable WebGLUniformLocation
  -> Union2 UInt8Array (Array Bits32)
  -> UndefOr Bits32
  -> UndefOr Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c)=>x.uniform2ui(a,b,c)"
prim__uniform2ui :
     WebGL2RenderingContextBase
  -> Nullable WebGLUniformLocation
  -> Bits32
  -> Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.uniform2uiv(a,b,c,d)"
prim__uniform2uiv :
     WebGL2RenderingContextBase
  -> Nullable WebGLUniformLocation
  -> Union2 UInt8Array (Array Bits32)
  -> UndefOr Bits32
  -> UndefOr Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.uniform3ui(a,b,c,d)"
prim__uniform3ui :
     WebGL2RenderingContextBase
  -> Nullable WebGLUniformLocation
  -> Bits32
  -> Bits32
  -> Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.uniform3uiv(a,b,c,d)"
prim__uniform3uiv :
     WebGL2RenderingContextBase
  -> Nullable WebGLUniformLocation
  -> Union2 UInt8Array (Array Bits32)
  -> UndefOr Bits32
  -> UndefOr Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniform4ui(a,b,c,d,e)"
prim__uniform4ui :
     WebGL2RenderingContextBase
  -> Nullable WebGLUniformLocation
  -> Bits32
  -> Bits32
  -> Bits32
  -> Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.uniform4uiv(a,b,c,d)"
prim__uniform4uiv :
     WebGL2RenderingContextBase
  -> Nullable WebGLUniformLocation
  -> Union2 UInt8Array (Array Bits32)
  -> UndefOr Bits32
  -> UndefOr Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c)=>x.uniformBlockBinding(a,b,c)"
prim__uniformBlockBinding :
     WebGL2RenderingContextBase
  -> WebGLProgram
  -> Bits32
  -> Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniformMatrix2x3fv(a,b,c,d,e)"
prim__uniformMatrix2x3fv :
     WebGL2RenderingContextBase
  -> Nullable WebGLUniformLocation
  -> Boolean
  -> Union2 Float32Array (Array Double)
  -> UndefOr Bits32
  -> UndefOr Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniformMatrix2x4fv(a,b,c,d,e)"
prim__uniformMatrix2x4fv :
     WebGL2RenderingContextBase
  -> Nullable WebGLUniformLocation
  -> Boolean
  -> Union2 Float32Array (Array Double)
  -> UndefOr Bits32
  -> UndefOr Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniformMatrix3x2fv(a,b,c,d,e)"
prim__uniformMatrix3x2fv :
     WebGL2RenderingContextBase
  -> Nullable WebGLUniformLocation
  -> Boolean
  -> Union2 Float32Array (Array Double)
  -> UndefOr Bits32
  -> UndefOr Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniformMatrix3x4fv(a,b,c,d,e)"
prim__uniformMatrix3x4fv :
     WebGL2RenderingContextBase
  -> Nullable WebGLUniformLocation
  -> Boolean
  -> Union2 Float32Array (Array Double)
  -> UndefOr Bits32
  -> UndefOr Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniformMatrix4x2fv(a,b,c,d,e)"
prim__uniformMatrix4x2fv :
     WebGL2RenderingContextBase
  -> Nullable WebGLUniformLocation
  -> Boolean
  -> Union2 Float32Array (Array Double)
  -> UndefOr Bits32
  -> UndefOr Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniformMatrix4x3fv(a,b,c,d,e)"
prim__uniformMatrix4x3fv :
     WebGL2RenderingContextBase
  -> Nullable WebGLUniformLocation
  -> Boolean
  -> Union2 Float32Array (Array Double)
  -> UndefOr Bits32
  -> UndefOr Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.vertexAttribDivisor(a,b)"
prim__vertexAttribDivisor :
     WebGL2RenderingContextBase
  -> Bits32
  -> Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e)=>x.vertexAttribI4i(a,b,c,d,e)"
prim__vertexAttribI4i :
     WebGL2RenderingContextBase
  -> Bits32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.vertexAttribI4iv(a,b)"
prim__vertexAttribI4iv :
     WebGL2RenderingContextBase
  -> Bits32
  -> Union2 Int32Array (Array Int32)
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e)=>x.vertexAttribI4ui(a,b,c,d,e)"
prim__vertexAttribI4ui :
     WebGL2RenderingContextBase
  -> Bits32
  -> Bits32
  -> Bits32
  -> Bits32
  -> Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.vertexAttribI4uiv(a,b)"
prim__vertexAttribI4uiv :
     WebGL2RenderingContextBase
  -> Bits32
  -> Union2 UInt8Array (Array Bits32)
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e)=>x.vertexAttribIPointer(a,b,c,d,e)"
prim__vertexAttribIPointer :
     WebGL2RenderingContextBase
  -> Bits32
  -> Int32
  -> Bits32
  -> Int32
  -> JSInt64
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c)=>x.waitSync(a,b,c)"
prim__waitSync :
     WebGL2RenderingContextBase
  -> WebGLSync
  -> Bits32
  -> JSInt64
  -> PrimIO ()


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
  WebGL2RenderingContextBase.prim__blitFramebuffer (cast a) b c d e f g h i j k


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
  WebGL2RenderingContextBase.prim__copyTexSubImage3D (cast a) b c d e f g h i j


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
  WebGL2RenderingContextBase.prim__invalidateSubFramebuffer (cast a) b c d e f g


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
readBuffer a b = primJS $ WebGL2RenderingContextBase.prim__readBuffer (cast a) b


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
  WebGL2RenderingContextBase.prim__texSubImage3D (cast a) b c d e f g h i j k l


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
