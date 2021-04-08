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
  0 ArrayBufferView : Type
  ArrayBufferView = Union10 Int8Array
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
  0 BlobPart : Type
  BlobPart = Union3 BufferSource Blob String
  
  public export
  0 BodyInit : Type
  BodyInit = Union2 ReadableStream XMLHttpRequestBodyInit
  
  public export
  0 BufferSource : Type
  BufferSource = Union2 ArrayBufferView ArrayBuffer
  
  public export
  0 CanvasImageSource : Type
  CanvasImageSource = Union5 HTMLOrSVGImageElement
                             HTMLVideoElement
                             HTMLCanvasElement
                             ImageBitmap
                             OffscreenCanvas
  
  public export
  0 ClipboardItemData : Type
  ClipboardItemData = Promise ClipboardItemDataType
  
  public export
  0 ClipboardItemDataType : Type
  ClipboardItemDataType = Union2 String Blob
  
  public export
  0 ClipboardItems : Type
  ClipboardItems = Array ClipboardItem
  
  public export
  0 ConstrainBoolean : Type
  ConstrainBoolean = Union2 Boolean ConstrainBooleanParameters
  
  public export
  0 ConstrainDOMString : Type
  ConstrainDOMString = Union3 String (Array String) ConstrainDOMStringParameters
  
  public export
  0 ConstrainDouble : Type
  ConstrainDouble = Union2 Double ConstrainDoubleRange
  
  public export
  0 ConstrainULong : Type
  ConstrainULong = Union2 UInt32 ConstrainULongRange
  
  public export
  0 DOMHighResTimeStamp : Type
  DOMHighResTimeStamp = Double
  
  public export
  0 DOMTimeStamp : Type
  DOMTimeStamp = UInt64
  
  public export
  0 EventHandler : Type
  EventHandler = Nullable EventHandlerNonNull
  
  public export
  0 Float32List : Type
  Float32List = Union2 Float32Array (Array GLfloat)
  
  public export
  0 FormDataEntryValue : Type
  FormDataEntryValue = Union2 File String
  
  public export
  0 GLbitfield : Type
  GLbitfield = UInt32
  
  public export
  0 GLboolean : Type
  GLboolean = Boolean
  
  public export
  0 GLbyte : Type
  GLbyte = Int8
  
  public export
  0 GLclampf : Type
  GLclampf = Double
  
  public export
  0 GLenum : Type
  GLenum = UInt32
  
  public export
  0 GLfloat : Type
  GLfloat = Double
  
  public export
  0 GLint : Type
  GLint = Int32
  
  public export
  0 GLint64 : Type
  GLint64 = Int64
  
  public export
  0 GLintptr : Type
  GLintptr = Int64
  
  public export
  0 GLshort : Type
  GLshort = Int16
  
  public export
  0 GLsizei : Type
  GLsizei = Int32
  
  public export
  0 GLsizeiptr : Type
  GLsizeiptr = Int64
  
  public export
  0 GLubyte : Type
  GLubyte = UInt8
  
  public export
  0 GLuint : Type
  GLuint = UInt32
  
  public export
  0 GLuint64 : Type
  GLuint64 = UInt64
  
  public export
  0 GLushort : Type
  GLushort = UInt16
  
  public export
  0 HTMLOrSVGImageElement : Type
  HTMLOrSVGImageElement = Union2 HTMLImageElement SVGImageElement
  
  public export
  0 HTMLOrSVGScriptElement : Type
  HTMLOrSVGScriptElement = Union2 HTMLScriptElement SVGScriptElement
  
  public export
  0 HeadersInit : Type
  HeadersInit = Union2 (Array (Array ByteString)) (Record ByteString ByteString)
  
  public export
  0 ImageBitmapSource : Type
  ImageBitmapSource = Union3 CanvasImageSource Blob ImageData
  
  public export
  0 Int32List : Type
  Int32List = Union2 Int32Array (Array GLint)
  
  public export
  0 MediaProvider : Type
  MediaProvider = Union3 MediaStream MediaSource Blob
  
  public export
  0 MessageEventSource : Type
  MessageEventSource = Union3 WindowProxy MessagePort ServiceWorker
  
  public export
  0 OffscreenRenderingContext : Type
  OffscreenRenderingContext = Union4 OffscreenCanvasRenderingContext2D
                                     ImageBitmapRenderingContext
                                     WebGLRenderingContext
                                     WebGL2RenderingContext
  
  public export
  0 OnBeforeUnloadEventHandler : Type
  OnBeforeUnloadEventHandler = Nullable OnBeforeUnloadEventHandlerNonNull
  
  public export
  0 OnErrorEventHandler : Type
  OnErrorEventHandler = Nullable OnErrorEventHandlerNonNull
  
  public export
  0 ReadableStreamController : Type
  ReadableStreamController = Union2 ReadableStreamDefaultController
                                    ReadableByteStreamController
  
  public export
  0 ReadableStreamReader : Type
  ReadableStreamReader = Union2 ReadableStreamDefaultReader
                                ReadableStreamBYOBReader
  
  public export
  0 RenderingContext : Type
  RenderingContext = Union4 CanvasRenderingContext2D
                            ImageBitmapRenderingContext
                            WebGLRenderingContext
                            WebGL2RenderingContext
  
  public export
  0 RequestInfo : Type
  RequestInfo = Union2 Request String
  
  public export
  0 TexImageSource : Type
  TexImageSource = Union6 ImageBitmap
                          ImageData
                          HTMLImageElement
                          HTMLCanvasElement
                          HTMLVideoElement
                          OffscreenCanvas
  
  public export
  0 Uint32List : Type
  Uint32List = Union2 UInt8Array (Array GLuint)
  
  public export
  0 XMLHttpRequestBodyInit : Type
  XMLHttpRequestBodyInit = Union5 Blob
                                  BufferSource
                                  FormData
                                  URLSearchParams
                                  String