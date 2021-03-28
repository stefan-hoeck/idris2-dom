module Web.Types

import JS
import public Web.AnimationTypes as Types
import public Web.ClipboardTypes as Types
import public Web.CssTypes as Types
import public Web.DomTypes as Types
import public Web.EventTypes as Types
import public Web.FetchTypes as Types
import public Web.FileTypes as Types
import public Web.GeometryTypes as Types
import public Web.HtmlTypes as Types
import public Web.MediasourceTypes as Types
import public Web.MediastreamTypes as Types
import public Web.PermissionsTypes as Types
import public Web.ServiceworkerTypes as Types
import public Web.StreamsTypes as Types
import public Web.SvgTypes as Types
import public Web.UrlTypes as Types
import public Web.VisibilityTypes as Types
import public Web.WebglTypes as Types
import public Web.WebidlTypes as Types
import public Web.XhrTypes as Types

--------------------------------------------------------------------------------
--          Typedefs and Callbacks
--------------------------------------------------------------------------------

mutual
  
  public export
  0 BlobCallback : Type
  BlobCallback = (blob : Maybe Blob) -> JSIO ()
  
  public export
  0 ClipboardItemDelayedCallback : Type
  ClipboardItemDelayedCallback = () -> JSIO ClipboardItemData
  
  public export
  0 CustomElementConstructor : Type
  CustomElementConstructor = () -> JSIO HTMLElement
  
  public export
  0 EventHandlerNonNull : Type
  EventHandlerNonNull = (event : Event) -> JSIO Any
  
  public export
  0 EventListener : Type
  EventListener = (event : Event) -> JSIO ()
  
  public export
  0 Function : Type
  Function = (arguments : VarArg Any) -> JSIO Any
  
  public export
  0 FunctionStringCallback : Type
  FunctionStringCallback = (data_ : String) -> JSIO ()
  
  public export
  0 MutationCallback : Type
  MutationCallback =  (mutations : JSArray MutationRecord)
                   -> (observer : MutationObserver)
                   -> JSIO ()
  
  public export
  0 NavigatorUserMediaErrorCallback : Type
  NavigatorUserMediaErrorCallback = (error : DOMException) -> JSIO ()
  
  public export
  0 NavigatorUserMediaSuccessCallback : Type
  NavigatorUserMediaSuccessCallback = (stream : MediaStream) -> JSIO ()
  
  public export
  0 NodeFilter : Type
  NodeFilter = (node : Node) -> JSIO UInt16
  
  public export
  0 OnBeforeUnloadEventHandlerNonNull : Type
  OnBeforeUnloadEventHandlerNonNull = (event : Event) -> JSIO (Maybe String)
  
  public export
  0 OnErrorEventHandlerNonNull : Type
  OnErrorEventHandlerNonNull =  (event : NS I [ Event , String ])
                             -> (source : String)
                             -> (lineno : UInt32)
                             -> (colno : UInt32)
                             -> (error : Any)
                             -> JSIO Any
  
  public export
  0 QueuingStrategySize : Type
  QueuingStrategySize = (chunk : Any) -> JSIO Double
  
  public export
  0 TransformerFlushCallback : Type
  TransformerFlushCallback =  (controller : TransformStreamDefaultController)
                           -> JSIO (JSPromise Undefined)
  
  public export
  0 TransformerStartCallback : Type
  TransformerStartCallback =  (controller : TransformStreamDefaultController)
                           -> JSIO Any
  
  public export
  0 TransformerTransformCallback : Type
  TransformerTransformCallback =  (chunk : Any)
                               -> (controller : TransformStreamDefaultController)
                               -> JSIO (JSPromise Undefined)
  
  public export
  0 UnderlyingSinkAbortCallback : Type
  UnderlyingSinkAbortCallback = (reason : Any) -> JSIO (JSPromise Undefined)
  
  public export
  0 UnderlyingSinkCloseCallback : Type
  UnderlyingSinkCloseCallback = () -> JSIO (JSPromise Undefined)
  
  public export
  0 UnderlyingSinkStartCallback : Type
  UnderlyingSinkStartCallback =  (controller : WritableStreamDefaultController)
                              -> JSIO Any
  
  public export
  0 UnderlyingSinkWriteCallback : Type
  UnderlyingSinkWriteCallback =  (chunk : Any)
                              -> (controller : WritableStreamDefaultController)
                              -> JSIO (JSPromise Undefined)
  
  public export
  0 UnderlyingSourceCancelCallback : Type
  UnderlyingSourceCancelCallback = (reason : Any) -> JSIO (JSPromise Undefined)
  
  public export
  0 UnderlyingSourcePullCallback : Type
  UnderlyingSourcePullCallback =  (controller : ReadableStreamController)
                               -> JSIO (JSPromise Undefined)
  
  public export
  0 UnderlyingSourceStartCallback : Type
  UnderlyingSourceStartCallback =  (controller : ReadableStreamController)
                                -> JSIO Any
  
  public export
  0 VoidFunction : Type
  VoidFunction = () -> JSIO ()
  
  public export
  0 XPathNSResolver : Type
  XPathNSResolver = (prefix_ : Maybe String) -> JSIO (Maybe String)
  
  public export
  0 ArrayBufferView : Type
  ArrayBufferView = NS I [ JSArray Int8
                         , JSArray Int16
                         , JSArray Int32
                         , JSArray UInt8
                         , JSArray UInt16
                         , JSArray UInt32
                         , JSArray UInt8
                         , JSArray Double
                         , JSArray Double
                         , DataView
                         ]
  
  public export
  0 BlobPart : Type
  BlobPart = NS I [ BufferSource , Blob , String ]
  
  public export
  0 BodyInit : Type
  BodyInit = NS I [ ReadableStream , XMLHttpRequestBodyInit ]
  
  public export
  0 BufferSource : Type
  BufferSource = NS I [ ArrayBufferView , ArrayBuffer ]
  
  public export
  0 CanvasImageSource : Type
  CanvasImageSource = NS I [ HTMLOrSVGImageElement
                           , HTMLVideoElement
                           , HTMLCanvasElement
                           , ImageBitmap
                           , OffscreenCanvas
                           ]
  
  public export
  0 ClipboardItemData : Type
  ClipboardItemData = JSPromise ClipboardItemDataType
  
  public export
  0 ClipboardItemDataType : Type
  ClipboardItemDataType = NS I [ String , Blob ]
  
  public export
  0 ClipboardItems : Type
  ClipboardItems = JSArray ClipboardItem
  
  public export
  0 ConstrainBoolean : Type
  ConstrainBoolean = NS I [ Bool , ConstrainBooleanParameters ]
  
  public export
  0 ConstrainDOMString : Type
  ConstrainDOMString = NS I [ String
                            , JSArray String
                            , ConstrainDOMStringParameters
                            ]
  
  public export
  0 ConstrainDouble : Type
  ConstrainDouble = NS I [ Double , ConstrainDoubleRange ]
  
  public export
  0 ConstrainULong : Type
  ConstrainULong = NS I [ UInt32 , ConstrainULongRange ]
  
  public export
  0 DOMHighResTimeStamp : Type
  DOMHighResTimeStamp = Double
  
  public export
  0 DOMTimeStamp : Type
  DOMTimeStamp = UInt64
  
  public export
  0 EventHandler : Type
  EventHandler = Maybe EventHandlerNonNull
  
  public export
  0 Float32List : Type
  Float32List = NS I [ JSArray Double , JSArray GLfloat ]
  
  public export
  0 FormDataEntryValue : Type
  FormDataEntryValue = NS I [ File , String ]
  
  public export
  0 GLbitfield : Type
  GLbitfield = UInt32
  
  public export
  0 GLboolean : Type
  GLboolean = Bool
  
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
  HTMLOrSVGImageElement = NS I [ HTMLImageElement , SVGImageElement ]
  
  public export
  0 HTMLOrSVGScriptElement : Type
  HTMLOrSVGScriptElement = NS I [ HTMLScriptElement , SVGScriptElement ]
  
  public export
  0 HeadersInit : Type
  HeadersInit = NS I [ JSArray (JSArray String) , JSRecord String String ]
  
  public export
  0 ImageBitmapSource : Type
  ImageBitmapSource = NS I [ CanvasImageSource , Blob , ImageData ]
  
  public export
  0 Int32List : Type
  Int32List = NS I [ JSArray Int32 , JSArray GLint ]
  
  public export
  0 MediaProvider : Type
  MediaProvider = NS I [ MediaStream , MediaSource , Blob ]
  
  public export
  0 MessageEventSource : Type
  MessageEventSource = NS I [ WindowProxy , MessagePort , ServiceWorker ]
  
  public export
  0 OffscreenRenderingContext : Type
  OffscreenRenderingContext = NS I [ OffscreenCanvasRenderingContext2D
                                   , ImageBitmapRenderingContext
                                   , WebGLRenderingContext
                                   , WebGL2RenderingContext
                                   ]
  
  public export
  0 OnBeforeUnloadEventHandler : Type
  OnBeforeUnloadEventHandler = Maybe OnBeforeUnloadEventHandlerNonNull
  
  public export
  0 OnErrorEventHandler : Type
  OnErrorEventHandler = Maybe OnErrorEventHandlerNonNull
  
  public export
  0 ReadableStreamController : Type
  ReadableStreamController = NS I [ ReadableStreamDefaultController
                                  , ReadableByteStreamController
                                  ]
  
  public export
  0 ReadableStreamReader : Type
  ReadableStreamReader = NS I [ ReadableStreamDefaultReader
                              , ReadableStreamBYOBReader
                              ]
  
  public export
  0 RenderingContext : Type
  RenderingContext = NS I [ CanvasRenderingContext2D
                          , ImageBitmapRenderingContext
                          , WebGLRenderingContext
                          , WebGL2RenderingContext
                          ]
  
  public export
  0 RequestInfo : Type
  RequestInfo = NS I [ Request , String ]
  
  public export
  0 TexImageSource : Type
  TexImageSource = NS I [ ImageBitmap
                        , ImageData
                        , HTMLImageElement
                        , HTMLCanvasElement
                        , HTMLVideoElement
                        , OffscreenCanvas
                        ]
  
  public export
  0 Uint32List : Type
  Uint32List = NS I [ JSArray UInt32 , JSArray GLuint ]
  
  public export
  0 XMLHttpRequestBodyInit : Type
  XMLHttpRequestBodyInit = NS I [ Blob
                                , BufferSource
                                , FormData
                                , URLSearchParams
                                , String
                                ]