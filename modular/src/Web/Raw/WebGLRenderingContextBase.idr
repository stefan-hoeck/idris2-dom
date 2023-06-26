module Web.Raw.WebGLRenderingContextBase

import JS
import Web.Types.HTMLCanvasElement
import Web.Types.OffscreenCanvas
import Web.Types.WebGLActiveInfo
import Web.Types.WebGLBuffer
import Web.Types.WebGLContextAttributes
import Web.Types.WebGLFramebuffer
import Web.Types.WebGLProgram
import Web.Types.WebGLRenderbuffer
import Web.Types.WebGLRenderingContextBase
import Web.Types.WebGLShader
import Web.Types.WebGLShaderPrecisionFormat
import Web.Types.WebGLTexture
import Web.Types.WebGLUniformLocation


%default total


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
%foreign "browser:lambda:x=>x.canvas"
prim__canvas :
     WebGLRenderingContextBase
  -> PrimIO (Union2 HTMLCanvasElement OffscreenCanvas)


export
%foreign "browser:lambda:x=>x.drawingBufferHeight"
prim__drawingBufferHeight : WebGLRenderingContextBase -> PrimIO Int32


export
%foreign "browser:lambda:x=>x.drawingBufferWidth"
prim__drawingBufferWidth : WebGLRenderingContextBase -> PrimIO Int32


export
%foreign "browser:lambda:(x,a)=>x.activeTexture(a)"
prim__activeTexture : WebGLRenderingContextBase -> Bits32 -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.attachShader(a,b)"
prim__attachShader :
     WebGLRenderingContextBase
  -> WebGLProgram
  -> WebGLShader
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c)=>x.bindAttribLocation(a,b,c)"
prim__bindAttribLocation :
     WebGLRenderingContextBase
  -> WebGLProgram
  -> Bits32
  -> String
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.bindBuffer(a,b)"
prim__bindBuffer :
     WebGLRenderingContextBase
  -> Bits32
  -> Nullable WebGLBuffer
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.bindFramebuffer(a,b)"
prim__bindFramebuffer :
     WebGLRenderingContextBase
  -> Bits32
  -> Nullable WebGLFramebuffer
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.bindRenderbuffer(a,b)"
prim__bindRenderbuffer :
     WebGLRenderingContextBase
  -> Bits32
  -> Nullable WebGLRenderbuffer
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.bindTexture(a,b)"
prim__bindTexture :
     WebGLRenderingContextBase
  -> Bits32
  -> Nullable WebGLTexture
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.blendColor(a,b,c,d)"
prim__blendColor :
     WebGLRenderingContextBase
  -> Double
  -> Double
  -> Double
  -> Double
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.blendEquationSeparate(a,b)"
prim__blendEquationSeparate :
     WebGLRenderingContextBase
  -> Bits32
  -> Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.blendEquation(a)"
prim__blendEquation : WebGLRenderingContextBase -> Bits32 -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.blendFuncSeparate(a,b,c,d)"
prim__blendFuncSeparate :
     WebGLRenderingContextBase
  -> Bits32
  -> Bits32
  -> Bits32
  -> Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.blendFunc(a,b)"
prim__blendFunc : WebGLRenderingContextBase -> Bits32 -> Bits32 -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.checkFramebufferStatus(a)"
prim__checkFramebufferStatus :
     WebGLRenderingContextBase
  -> Bits32
  -> PrimIO Bits32


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.clearColor(a,b,c,d)"
prim__clearColor :
     WebGLRenderingContextBase
  -> Double
  -> Double
  -> Double
  -> Double
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.clearDepth(a)"
prim__clearDepth : WebGLRenderingContextBase -> Double -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.clearStencil(a)"
prim__clearStencil : WebGLRenderingContextBase -> Int32 -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.clear(a)"
prim__clear : WebGLRenderingContextBase -> Bits32 -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.colorMask(a,b,c,d)"
prim__colorMask :
     WebGLRenderingContextBase
  -> Boolean
  -> Boolean
  -> Boolean
  -> Boolean
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.compileShader(a)"
prim__compileShader : WebGLRenderingContextBase -> WebGLShader -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f,g,h)=>x.copyTexImage2D(a,b,c,d,e,f,g,h)"
prim__copyTexImage2D :
     WebGLRenderingContextBase
  -> Bits32
  -> Int32
  -> Bits32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f,g,h)=>x.copyTexSubImage2D(a,b,c,d,e,f,g,h)"
prim__copyTexSubImage2D :
     WebGLRenderingContextBase
  -> Bits32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> PrimIO ()


export
%foreign "browser:lambda:x=>x.createBuffer()"
prim__createBuffer : WebGLRenderingContextBase -> PrimIO (Nullable WebGLBuffer)


export
%foreign "browser:lambda:x=>x.createFramebuffer()"
prim__createFramebuffer :
     WebGLRenderingContextBase
  -> PrimIO (Nullable WebGLFramebuffer)


export
%foreign "browser:lambda:x=>x.createProgram()"
prim__createProgram :
     WebGLRenderingContextBase
  -> PrimIO (Nullable WebGLProgram)


export
%foreign "browser:lambda:x=>x.createRenderbuffer()"
prim__createRenderbuffer :
     WebGLRenderingContextBase
  -> PrimIO (Nullable WebGLRenderbuffer)


export
%foreign "browser:lambda:(x,a)=>x.createShader(a)"
prim__createShader :
     WebGLRenderingContextBase
  -> Bits32
  -> PrimIO (Nullable WebGLShader)


export
%foreign "browser:lambda:x=>x.createTexture()"
prim__createTexture :
     WebGLRenderingContextBase
  -> PrimIO (Nullable WebGLTexture)


export
%foreign "browser:lambda:(x,a)=>x.cullFace(a)"
prim__cullFace : WebGLRenderingContextBase -> Bits32 -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.deleteBuffer(a)"
prim__deleteBuffer :
     WebGLRenderingContextBase
  -> Nullable WebGLBuffer
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.deleteFramebuffer(a)"
prim__deleteFramebuffer :
     WebGLRenderingContextBase
  -> Nullable WebGLFramebuffer
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.deleteProgram(a)"
prim__deleteProgram :
     WebGLRenderingContextBase
  -> Nullable WebGLProgram
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.deleteRenderbuffer(a)"
prim__deleteRenderbuffer :
     WebGLRenderingContextBase
  -> Nullable WebGLRenderbuffer
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.deleteShader(a)"
prim__deleteShader :
     WebGLRenderingContextBase
  -> Nullable WebGLShader
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.deleteTexture(a)"
prim__deleteTexture :
     WebGLRenderingContextBase
  -> Nullable WebGLTexture
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.depthFunc(a)"
prim__depthFunc : WebGLRenderingContextBase -> Bits32 -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.depthMask(a)"
prim__depthMask : WebGLRenderingContextBase -> Boolean -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.depthRange(a,b)"
prim__depthRange : WebGLRenderingContextBase -> Double -> Double -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.detachShader(a,b)"
prim__detachShader :
     WebGLRenderingContextBase
  -> WebGLProgram
  -> WebGLShader
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.disableVertexAttribArray(a)"
prim__disableVertexAttribArray :
     WebGLRenderingContextBase
  -> Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.disable(a)"
prim__disable : WebGLRenderingContextBase -> Bits32 -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c)=>x.drawArrays(a,b,c)"
prim__drawArrays :
     WebGLRenderingContextBase
  -> Bits32
  -> Int32
  -> Int32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.drawElements(a,b,c,d)"
prim__drawElements :
     WebGLRenderingContextBase
  -> Bits32
  -> Int32
  -> Bits32
  -> JSInt64
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.enableVertexAttribArray(a)"
prim__enableVertexAttribArray : WebGLRenderingContextBase -> Bits32 -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.enable(a)"
prim__enable : WebGLRenderingContextBase -> Bits32 -> PrimIO ()


export
%foreign "browser:lambda:x=>x.finish()"
prim__finish : WebGLRenderingContextBase -> PrimIO ()


export
%foreign "browser:lambda:x=>x.flush()"
prim__flush : WebGLRenderingContextBase -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.framebufferRenderbuffer(a,b,c,d)"
prim__framebufferRenderbuffer :
     WebGLRenderingContextBase
  -> Bits32
  -> Bits32
  -> Bits32
  -> Nullable WebGLRenderbuffer
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e)=>x.framebufferTexture2D(a,b,c,d,e)"
prim__framebufferTexture2D :
     WebGLRenderingContextBase
  -> Bits32
  -> Bits32
  -> Bits32
  -> Nullable WebGLTexture
  -> Int32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.frontFace(a)"
prim__frontFace : WebGLRenderingContextBase -> Bits32 -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.generateMipmap(a)"
prim__generateMipmap : WebGLRenderingContextBase -> Bits32 -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.getActiveAttrib(a,b)"
prim__getActiveAttrib :
     WebGLRenderingContextBase
  -> WebGLProgram
  -> Bits32
  -> PrimIO (Nullable WebGLActiveInfo)


export
%foreign "browser:lambda:(x,a,b)=>x.getActiveUniform(a,b)"
prim__getActiveUniform :
     WebGLRenderingContextBase
  -> WebGLProgram
  -> Bits32
  -> PrimIO (Nullable WebGLActiveInfo)


export
%foreign "browser:lambda:(x,a)=>x.getAttachedShaders(a)"
prim__getAttachedShaders :
     WebGLRenderingContextBase
  -> WebGLProgram
  -> PrimIO (Nullable (Array WebGLShader))


export
%foreign "browser:lambda:(x,a,b)=>x.getAttribLocation(a,b)"
prim__getAttribLocation :
     WebGLRenderingContextBase
  -> WebGLProgram
  -> String
  -> PrimIO Int32


export
%foreign "browser:lambda:(x,a,b)=>x.getBufferParameter(a,b)"
prim__getBufferParameter :
     WebGLRenderingContextBase
  -> Bits32
  -> Bits32
  -> PrimIO AnyPtr


export
%foreign "browser:lambda:x=>x.getContextAttributes()"
prim__getContextAttributes :
     WebGLRenderingContextBase
  -> PrimIO (Nullable WebGLContextAttributes)


export
%foreign "browser:lambda:x=>x.getError()"
prim__getError : WebGLRenderingContextBase -> PrimIO Bits32


export
%foreign "browser:lambda:(x,a)=>x.getExtension(a)"
prim__getExtension :
     WebGLRenderingContextBase
  -> String
  -> PrimIO (Nullable Object)


export
%foreign "browser:lambda:(x,a,b,c)=>x.getFramebufferAttachmentParameter(a,b,c)"
prim__getFramebufferAttachmentParameter :
     WebGLRenderingContextBase
  -> Bits32
  -> Bits32
  -> Bits32
  -> PrimIO AnyPtr


export
%foreign "browser:lambda:(x,a)=>x.getParameter(a)"
prim__getParameter : WebGLRenderingContextBase -> Bits32 -> PrimIO AnyPtr


export
%foreign "browser:lambda:(x,a)=>x.getProgramInfoLog(a)"
prim__getProgramInfoLog :
     WebGLRenderingContextBase
  -> WebGLProgram
  -> PrimIO (Nullable String)


export
%foreign "browser:lambda:(x,a,b)=>x.getProgramParameter(a,b)"
prim__getProgramParameter :
     WebGLRenderingContextBase
  -> WebGLProgram
  -> Bits32
  -> PrimIO AnyPtr


export
%foreign "browser:lambda:(x,a,b)=>x.getRenderbufferParameter(a,b)"
prim__getRenderbufferParameter :
     WebGLRenderingContextBase
  -> Bits32
  -> Bits32
  -> PrimIO AnyPtr


export
%foreign "browser:lambda:(x,a)=>x.getShaderInfoLog(a)"
prim__getShaderInfoLog :
     WebGLRenderingContextBase
  -> WebGLShader
  -> PrimIO (Nullable String)


export
%foreign "browser:lambda:(x,a,b)=>x.getShaderParameter(a,b)"
prim__getShaderParameter :
     WebGLRenderingContextBase
  -> WebGLShader
  -> Bits32
  -> PrimIO AnyPtr


export
%foreign "browser:lambda:(x,a,b)=>x.getShaderPrecisionFormat(a,b)"
prim__getShaderPrecisionFormat :
     WebGLRenderingContextBase
  -> Bits32
  -> Bits32
  -> PrimIO (Nullable WebGLShaderPrecisionFormat)


export
%foreign "browser:lambda:(x,a)=>x.getShaderSource(a)"
prim__getShaderSource :
     WebGLRenderingContextBase
  -> WebGLShader
  -> PrimIO (Nullable String)


export
%foreign "browser:lambda:x=>x.getSupportedExtensions()"
prim__getSupportedExtensions :
     WebGLRenderingContextBase
  -> PrimIO (Nullable (Array String))


export
%foreign "browser:lambda:(x,a,b)=>x.getTexParameter(a,b)"
prim__getTexParameter :
     WebGLRenderingContextBase
  -> Bits32
  -> Bits32
  -> PrimIO AnyPtr


export
%foreign "browser:lambda:(x,a,b)=>x.getUniformLocation(a,b)"
prim__getUniformLocation :
     WebGLRenderingContextBase
  -> WebGLProgram
  -> String
  -> PrimIO (Nullable WebGLUniformLocation)


export
%foreign "browser:lambda:(x,a,b)=>x.getUniform(a,b)"
prim__getUniform :
     WebGLRenderingContextBase
  -> WebGLProgram
  -> WebGLUniformLocation
  -> PrimIO AnyPtr


export
%foreign "browser:lambda:(x,a,b)=>x.getVertexAttribOffset(a,b)"
prim__getVertexAttribOffset :
     WebGLRenderingContextBase
  -> Bits32
  -> Bits32
  -> PrimIO JSInt64


export
%foreign "browser:lambda:(x,a,b)=>x.getVertexAttrib(a,b)"
prim__getVertexAttrib :
     WebGLRenderingContextBase
  -> Bits32
  -> Bits32
  -> PrimIO AnyPtr


export
%foreign "browser:lambda:(x,a,b)=>x.hint(a,b)"
prim__hint : WebGLRenderingContextBase -> Bits32 -> Bits32 -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.isBuffer(a)"
prim__isBuffer :
     WebGLRenderingContextBase
  -> Nullable WebGLBuffer
  -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.isContextLost()"
prim__isContextLost : WebGLRenderingContextBase -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a)=>x.isEnabled(a)"
prim__isEnabled : WebGLRenderingContextBase -> Bits32 -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a)=>x.isFramebuffer(a)"
prim__isFramebuffer :
     WebGLRenderingContextBase
  -> Nullable WebGLFramebuffer
  -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a)=>x.isProgram(a)"
prim__isProgram :
     WebGLRenderingContextBase
  -> Nullable WebGLProgram
  -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a)=>x.isRenderbuffer(a)"
prim__isRenderbuffer :
     WebGLRenderingContextBase
  -> Nullable WebGLRenderbuffer
  -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a)=>x.isShader(a)"
prim__isShader :
     WebGLRenderingContextBase
  -> Nullable WebGLShader
  -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a)=>x.isTexture(a)"
prim__isTexture :
     WebGLRenderingContextBase
  -> Nullable WebGLTexture
  -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a)=>x.lineWidth(a)"
prim__lineWidth : WebGLRenderingContextBase -> Double -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.linkProgram(a)"
prim__linkProgram : WebGLRenderingContextBase -> WebGLProgram -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.pixelStorei(a,b)"
prim__pixelStorei : WebGLRenderingContextBase -> Bits32 -> Int32 -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.polygonOffset(a,b)"
prim__polygonOffset : WebGLRenderingContextBase -> Double -> Double -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.renderbufferStorage(a,b,c,d)"
prim__renderbufferStorage :
     WebGLRenderingContextBase
  -> Bits32
  -> Bits32
  -> Int32
  -> Int32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.sampleCoverage(a,b)"
prim__sampleCoverage :
     WebGLRenderingContextBase
  -> Double
  -> Boolean
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.scissor(a,b,c,d)"
prim__scissor :
     WebGLRenderingContextBase
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.shaderSource(a,b)"
prim__shaderSource :
     WebGLRenderingContextBase
  -> WebGLShader
  -> String
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.stencilFuncSeparate(a,b,c,d)"
prim__stencilFuncSeparate :
     WebGLRenderingContextBase
  -> Bits32
  -> Bits32
  -> Int32
  -> Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c)=>x.stencilFunc(a,b,c)"
prim__stencilFunc :
     WebGLRenderingContextBase
  -> Bits32
  -> Int32
  -> Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.stencilMaskSeparate(a,b)"
prim__stencilMaskSeparate :
     WebGLRenderingContextBase
  -> Bits32
  -> Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.stencilMask(a)"
prim__stencilMask : WebGLRenderingContextBase -> Bits32 -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.stencilOpSeparate(a,b,c,d)"
prim__stencilOpSeparate :
     WebGLRenderingContextBase
  -> Bits32
  -> Bits32
  -> Bits32
  -> Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c)=>x.stencilOp(a,b,c)"
prim__stencilOp :
     WebGLRenderingContextBase
  -> Bits32
  -> Bits32
  -> Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c)=>x.texParameterf(a,b,c)"
prim__texParameterf :
     WebGLRenderingContextBase
  -> Bits32
  -> Bits32
  -> Double
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c)=>x.texParameteri(a,b,c)"
prim__texParameteri :
     WebGLRenderingContextBase
  -> Bits32
  -> Bits32
  -> Int32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.uniform1f(a,b)"
prim__uniform1f :
     WebGLRenderingContextBase
  -> Nullable WebGLUniformLocation
  -> Double
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.uniform1i(a,b)"
prim__uniform1i :
     WebGLRenderingContextBase
  -> Nullable WebGLUniformLocation
  -> Int32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c)=>x.uniform2f(a,b,c)"
prim__uniform2f :
     WebGLRenderingContextBase
  -> Nullable WebGLUniformLocation
  -> Double
  -> Double
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c)=>x.uniform2i(a,b,c)"
prim__uniform2i :
     WebGLRenderingContextBase
  -> Nullable WebGLUniformLocation
  -> Int32
  -> Int32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.uniform3f(a,b,c,d)"
prim__uniform3f :
     WebGLRenderingContextBase
  -> Nullable WebGLUniformLocation
  -> Double
  -> Double
  -> Double
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.uniform3i(a,b,c,d)"
prim__uniform3i :
     WebGLRenderingContextBase
  -> Nullable WebGLUniformLocation
  -> Int32
  -> Int32
  -> Int32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniform4f(a,b,c,d,e)"
prim__uniform4f :
     WebGLRenderingContextBase
  -> Nullable WebGLUniformLocation
  -> Double
  -> Double
  -> Double
  -> Double
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniform4i(a,b,c,d,e)"
prim__uniform4i :
     WebGLRenderingContextBase
  -> Nullable WebGLUniformLocation
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.useProgram(a)"
prim__useProgram :
     WebGLRenderingContextBase
  -> Nullable WebGLProgram
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.validateProgram(a)"
prim__validateProgram : WebGLRenderingContextBase -> WebGLProgram -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.vertexAttrib1f(a,b)"
prim__vertexAttrib1f :
     WebGLRenderingContextBase
  -> Bits32
  -> Double
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.vertexAttrib1fv(a,b)"
prim__vertexAttrib1fv :
     WebGLRenderingContextBase
  -> Bits32
  -> Union2 Float32Array (Array Double)
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c)=>x.vertexAttrib2f(a,b,c)"
prim__vertexAttrib2f :
     WebGLRenderingContextBase
  -> Bits32
  -> Double
  -> Double
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.vertexAttrib2fv(a,b)"
prim__vertexAttrib2fv :
     WebGLRenderingContextBase
  -> Bits32
  -> Union2 Float32Array (Array Double)
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.vertexAttrib3f(a,b,c,d)"
prim__vertexAttrib3f :
     WebGLRenderingContextBase
  -> Bits32
  -> Double
  -> Double
  -> Double
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.vertexAttrib3fv(a,b)"
prim__vertexAttrib3fv :
     WebGLRenderingContextBase
  -> Bits32
  -> Union2 Float32Array (Array Double)
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e)=>x.vertexAttrib4f(a,b,c,d,e)"
prim__vertexAttrib4f :
     WebGLRenderingContextBase
  -> Bits32
  -> Double
  -> Double
  -> Double
  -> Double
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.vertexAttrib4fv(a,b)"
prim__vertexAttrib4fv :
     WebGLRenderingContextBase
  -> Bits32
  -> Union2 Float32Array (Array Double)
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.vertexAttribPointer(a,b,c,d,e,f)"
prim__vertexAttribPointer :
     WebGLRenderingContextBase
  -> Bits32
  -> Int32
  -> Bits32
  -> Boolean
  -> Int32
  -> JSInt64
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.viewport(a,b,c,d)"
prim__viewport :
     WebGLRenderingContextBase
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> PrimIO ()


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
clearDepth a b = primJS $ WebGLRenderingContextBase.prim__clearDepth (cast a) b


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
