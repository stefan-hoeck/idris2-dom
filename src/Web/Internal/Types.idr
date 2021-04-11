module Web.Internal.Types

import JS
import public Web.Internal.AnimationTypes as Types
import public Web.Internal.ClipboardTypes as Types
import public Web.Internal.CssTypes as Types
import public Web.Internal.DomTypes as Types
import public Web.Internal.FetchTypes as Types
import public Web.Internal.FileTypes as Types
import public Web.Internal.GeometryTypes as Types
import public Web.Internal.HtmlTypes as Types
import public Web.Internal.MediasourceTypes as Types
import public Web.Internal.MediastreamTypes as Types
import public Web.Internal.PermissionsTypes as Types
import public Web.Internal.ServiceworkerTypes as Types
import public Web.Internal.StreamsTypes as Types
import public Web.Internal.SvgTypes as Types
import public Web.Internal.UIEventsTypes as Types
import public Web.Internal.UrlTypes as Types
import public Web.Internal.VisibilityTypes as Types
import public Web.Internal.WebglTypes as Types
import public Web.Internal.WebidlTypes as Types
import public Web.Internal.XhrTypes as Types

--------------------------------------------------------------------------------
--          Typedefs
--------------------------------------------------------------------------------

mutual
  
  public export
  ArrayBufferViewFFI : Type
  ArrayBufferViewFFI = Union10 Int8Array
                               Int16Array
                               Int32Array
                               UInt8Array
                               UInt8Array
                               UInt8Array
                               UInt8ClampedArray
                               Float32Array
                               Float64Array
                               DataView

  public export
  ArrayBufferView : Type
  ArrayBufferView = NS I [ Int8Array
                         , Int16Array
                         , Int32Array
                         , UInt8Array
                         , UInt8Array
                         , UInt8Array
                         , UInt8ClampedArray
                         , Float32Array
                         , Float64Array
                         , DataView
                         ]
  
  public export
  BlobPartFFI : Type
  BlobPartFFI = Union3 BufferSource Blob String

  public export
  BlobPart : Type
  BlobPart = NS I [ BufferSource , Blob , String ]
  
  public export
  BodyInitFFI : Type
  BodyInitFFI = Union2 ReadableStream XMLHttpRequestBodyInit

  public export
  BodyInit : Type
  BodyInit = NS I [ ReadableStream , XMLHttpRequestBodyInit ]
  
  public export
  BufferSourceFFI : Type
  BufferSourceFFI = Union2 ArrayBufferView ArrayBuffer

  public export
  BufferSource : Type
  BufferSource = NS I [ ArrayBufferView , ArrayBuffer ]
  
  public export
  CanvasImageSourceFFI : Type
  CanvasImageSourceFFI = Union5 HTMLOrSVGImageElement
                                HTMLVideoElement
                                HTMLCanvasElement
                                ImageBitmap
                                OffscreenCanvas

  public export
  CanvasImageSource : Type
  CanvasImageSource = NS I [ HTMLOrSVGImageElement
                           , HTMLVideoElement
                           , HTMLCanvasElement
                           , ImageBitmap
                           , OffscreenCanvas
                           ]
  
  public export
  ClipboardItemData : Type
  ClipboardItemData = Promise ClipboardItemDataType
  
  public export
  ClipboardItemDataTypeFFI : Type
  ClipboardItemDataTypeFFI = Union2 String Blob

  public export
  ClipboardItemDataType : Type
  ClipboardItemDataType = NS I [ String , Blob ]
  
  public export
  ClipboardItems : Type
  ClipboardItems = Array ClipboardItem
  
  public export
  ConstrainBooleanFFI : Type
  ConstrainBooleanFFI = Union2 Boolean ConstrainBooleanParameters

  public export
  ConstrainBoolean : Type
  ConstrainBoolean = NS I [ Bool , ConstrainBooleanParameters ]
  
  public export
  ConstrainDOMStringFFI : Type
  ConstrainDOMStringFFI = Union3 String
                                 (Array String)
                                 ConstrainDOMStringParameters

  public export
  ConstrainDOMString : Type
  ConstrainDOMString = NS I [ String
                            , Array String
                            , ConstrainDOMStringParameters
                            ]
  
  public export
  ConstrainDoubleFFI : Type
  ConstrainDoubleFFI = Union2 Double ConstrainDoubleRange

  public export
  ConstrainDouble : Type
  ConstrainDouble = NS I [ Double , ConstrainDoubleRange ]
  
  public export
  ConstrainULongFFI : Type
  ConstrainULongFFI = Union2 UInt32 ConstrainULongRange

  public export
  ConstrainULong : Type
  ConstrainULong = NS I [ UInt32 , ConstrainULongRange ]
  
  public export
  DOMHighResTimeStamp : Type
  DOMHighResTimeStamp = Double
  
  public export
  DOMTimeStamp : Type
  DOMTimeStamp = UInt64
  
  public export
  EventHandlerFFI : Type
  EventHandlerFFI = Nullable EventHandlerNonNull

  public export
  EventHandler : Type
  EventHandler = Maybe EventHandlerNonNull
  
  public export
  Float32ListFFI : Type
  Float32ListFFI = Union2 Float32Array (Array GLfloat)

  public export
  Float32List : Type
  Float32List = NS I [ Float32Array , Array GLfloat ]
  
  public export
  FormDataEntryValueFFI : Type
  FormDataEntryValueFFI = Union2 File String

  public export
  FormDataEntryValue : Type
  FormDataEntryValue = NS I [ File , String ]
  
  public export
  GLbitfield : Type
  GLbitfield = UInt32
  
  public export
  GLbooleanFFI : Type
  GLbooleanFFI = Boolean

  public export
  GLboolean : Type
  GLboolean = Bool
  
  public export
  GLbyte : Type
  GLbyte = Int8
  
  public export
  GLclampf : Type
  GLclampf = Double
  
  public export
  GLenum : Type
  GLenum = UInt32
  
  public export
  GLfloat : Type
  GLfloat = Double
  
  public export
  GLint : Type
  GLint = Int32
  
  public export
  GLint64 : Type
  GLint64 = Int64
  
  public export
  GLintptr : Type
  GLintptr = Int64
  
  public export
  GLshort : Type
  GLshort = Int16
  
  public export
  GLsizei : Type
  GLsizei = Int32
  
  public export
  GLsizeiptr : Type
  GLsizeiptr = Int64
  
  public export
  GLubyte : Type
  GLubyte = UInt8
  
  public export
  GLuint : Type
  GLuint = UInt32
  
  public export
  GLuint64 : Type
  GLuint64 = UInt64
  
  public export
  GLushort : Type
  GLushort = UInt16
  
  public export
  HTMLOrSVGImageElementFFI : Type
  HTMLOrSVGImageElementFFI = Union2 HTMLImageElement SVGImageElement

  public export
  HTMLOrSVGImageElement : Type
  HTMLOrSVGImageElement = NS I [ HTMLImageElement , SVGImageElement ]
  
  public export
  HTMLOrSVGScriptElementFFI : Type
  HTMLOrSVGScriptElementFFI = Union2 HTMLScriptElement SVGScriptElement

  public export
  HTMLOrSVGScriptElement : Type
  HTMLOrSVGScriptElement = NS I [ HTMLScriptElement , SVGScriptElement ]
  
  public export
  HeadersInitFFI : Type
  HeadersInitFFI = Union2 (Array (Array ByteString))
                          (Record ByteString ByteString)

  public export
  HeadersInit : Type
  HeadersInit = NS I [ Array (Array ByteString) , Record ByteString ByteString ]
  
  public export
  ImageBitmapSourceFFI : Type
  ImageBitmapSourceFFI = Union3 CanvasImageSource Blob ImageData

  public export
  ImageBitmapSource : Type
  ImageBitmapSource = NS I [ CanvasImageSource , Blob , ImageData ]
  
  public export
  Int32ListFFI : Type
  Int32ListFFI = Union2 Int32Array (Array GLint)

  public export
  Int32List : Type
  Int32List = NS I [ Int32Array , Array GLint ]
  
  public export
  MediaProviderFFI : Type
  MediaProviderFFI = Union3 MediaStream MediaSource Blob

  public export
  MediaProvider : Type
  MediaProvider = NS I [ MediaStream , MediaSource , Blob ]
  
  public export
  MessageEventSourceFFI : Type
  MessageEventSourceFFI = Union3 WindowProxy MessagePort ServiceWorker

  public export
  MessageEventSource : Type
  MessageEventSource = NS I [ WindowProxy , MessagePort , ServiceWorker ]
  
  public export
  OffscreenRenderingContextFFI : Type
  OffscreenRenderingContextFFI = Union4 OffscreenCanvasRenderingContext2D
                                        ImageBitmapRenderingContext
                                        WebGLRenderingContext
                                        WebGL2RenderingContext

  public export
  OffscreenRenderingContext : Type
  OffscreenRenderingContext = NS I [ OffscreenCanvasRenderingContext2D
                                   , ImageBitmapRenderingContext
                                   , WebGLRenderingContext
                                   , WebGL2RenderingContext
                                   ]
  
  public export
  OnBeforeUnloadEventHandlerFFI : Type
  OnBeforeUnloadEventHandlerFFI = Nullable OnBeforeUnloadEventHandlerNonNull

  public export
  OnBeforeUnloadEventHandler : Type
  OnBeforeUnloadEventHandler = Maybe OnBeforeUnloadEventHandlerNonNull
  
  public export
  OnErrorEventHandlerFFI : Type
  OnErrorEventHandlerFFI = Nullable OnErrorEventHandlerNonNull

  public export
  OnErrorEventHandler : Type
  OnErrorEventHandler = Maybe OnErrorEventHandlerNonNull
  
  public export
  ReadableStreamControllerFFI : Type
  ReadableStreamControllerFFI = Union2 ReadableStreamDefaultController
                                       ReadableByteStreamController

  public export
  ReadableStreamController : Type
  ReadableStreamController = NS I [ ReadableStreamDefaultController
                                  , ReadableByteStreamController
                                  ]
  
  public export
  ReadableStreamReaderFFI : Type
  ReadableStreamReaderFFI = Union2 ReadableStreamDefaultReader
                                   ReadableStreamBYOBReader

  public export
  ReadableStreamReader : Type
  ReadableStreamReader = NS I [ ReadableStreamDefaultReader
                              , ReadableStreamBYOBReader
                              ]
  
  public export
  RenderingContextFFI : Type
  RenderingContextFFI = Union4 CanvasRenderingContext2D
                               ImageBitmapRenderingContext
                               WebGLRenderingContext
                               WebGL2RenderingContext

  public export
  RenderingContext : Type
  RenderingContext = NS I [ CanvasRenderingContext2D
                          , ImageBitmapRenderingContext
                          , WebGLRenderingContext
                          , WebGL2RenderingContext
                          ]
  
  public export
  RequestInfoFFI : Type
  RequestInfoFFI = Union2 Request String

  public export
  RequestInfo : Type
  RequestInfo = NS I [ Request , String ]
  
  public export
  TexImageSourceFFI : Type
  TexImageSourceFFI = Union6 ImageBitmap
                             ImageData
                             HTMLImageElement
                             HTMLCanvasElement
                             HTMLVideoElement
                             OffscreenCanvas

  public export
  TexImageSource : Type
  TexImageSource = NS I [ ImageBitmap
                        , ImageData
                        , HTMLImageElement
                        , HTMLCanvasElement
                        , HTMLVideoElement
                        , OffscreenCanvas
                        ]
  
  public export
  Uint32ListFFI : Type
  Uint32ListFFI = Union2 UInt8Array (Array GLuint)

  public export
  Uint32List : Type
  Uint32List = NS I [ UInt8Array , Array GLuint ]
  
  public export
  XMLHttpRequestBodyInitFFI : Type
  XMLHttpRequestBodyInitFFI = Union5 Blob
                                     BufferSource
                                     FormData
                                     URLSearchParams
                                     String

  public export
  XMLHttpRequestBodyInit : Type
  XMLHttpRequestBodyInit = NS I [ Blob
                                , BufferSource
                                , FormData
                                , URLSearchParams
                                , String
                                ]