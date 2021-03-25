module Web.Types

import Data.SOP
import JS.Util
import public Web.AnimationTypes as Types
import public Web.ClipboardTypes as Types
import public Web.CssTypes as Types
import public Web.DomTypes as Types
import public Web.EventTypes as Types
import public Web.FetchTypes as Types
import public Web.FileTypes as Types
import public Web.GeometryTypes as Types
import public Web.HtmlTypes as Types
import public Web.PermissionsTypes as Types
import public Web.SvgTypes as Types
import public Web.UrlTypes as Types
import public Web.XhrTypes as Types

--------------------------------------------------------------------------------
--          Typedefs and Callbacks
--------------------------------------------------------------------------------

mutual
  
  public export
  0 BlobPart : Type
  BlobPart = NS I [ BufferSource , Blob , String ]
  
  public export
  0 BodyInit : Type
  BodyInit = NS I [ ReadableStream , XMLHttpRequestBodyInit ]
  
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
  0 FormDataEntryValue : Type
  FormDataEntryValue = NS I [ File , String ]
  
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
  0 XMLHttpRequestBodyInit : Type
  XMLHttpRequestBodyInit = NS I [ Blob
                                , BufferSource
                                , FormData
                                , URLSearchParams
                                , String
                                ]
  
  public export
  0 BlobCallback : Type
  BlobCallback = (blob : Maybe Blob) -> IO ()
  
  public export
  0 ClipboardItemDelayedCallback : Type
  ClipboardItemDelayedCallback = () -> IO ClipboardItemData
  
  public export
  0 CustomElementConstructor : Type
  CustomElementConstructor = () -> IO HTMLElement
  
  public export
  0 FunctionStringCallback : Type
  FunctionStringCallback = (data_ : String) -> IO ()
  
  public export
  0 MutationCallback : Type
  MutationCallback =  (mutations : JSArray MutationRecord)
                   -> (observer : MutationObserver)
                   -> IO ()