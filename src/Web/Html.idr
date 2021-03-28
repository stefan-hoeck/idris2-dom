module Web.Html
import JS
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace AudioTrack
  
  public export
  JSType AudioTrack where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr

  export
  id : (obj : AudioTrack) -> JSIO String
  id a =   primToJSIO "id" $ prim__id (toJS a)
  
  %foreign "browser:lambda:x=>x.kind"
  prim__kind : AnyPtr -> PrimIO AnyPtr

  export
  kind : (obj : AudioTrack) -> JSIO String
  kind a =   primToJSIO "kind" $ prim__kind (toJS a)
  
  %foreign "browser:lambda:x=>x.label"
  prim__label : AnyPtr -> PrimIO AnyPtr

  export
  label : (obj : AudioTrack) -> JSIO String
  label a =   primToJSIO "label" $ prim__label (toJS a)
  
  %foreign "browser:lambda:x=>x.language"
  prim__language : AnyPtr -> PrimIO AnyPtr

  export
  language : (obj : AudioTrack) -> JSIO String
  language a =   primToJSIO "language" $ prim__language (toJS a)
  
  %foreign "browser:lambda:x=>x.sourceBuffer"
  prim__sourceBuffer : AnyPtr -> PrimIO AnyPtr

  export
  sourceBuffer : (obj : AudioTrack) -> JSIO (Maybe SourceBuffer)
  sourceBuffer a =   primToJSIO "sourceBuffer" $ prim__sourceBuffer (toJS a)
  
  %foreign "browser:lambda:x=>x.enabled"
  prim__enabled : AnyPtr -> PrimIO AnyPtr

  export
  enabled : (obj : AudioTrack) -> JSIO Bool
  enabled a =   primToJSIO "enabled" $ prim__enabled (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.enabled  = v}"
  prim__setEnabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEnabled : (obj : AudioTrack) -> (v : Bool) -> JSIO ()
  setEnabled a b =
    primToJSIO "setEnabled" $ prim__setEnabled (toJS a) (toJS b)

namespace AudioTrackList
  
  public export
  JSType AudioTrackList where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : AudioTrackList) -> JSIO UInt32
  length a =   primToJSIO "length" $ prim__length (toJS a)
  
  %foreign "browser:lambda:x=>x.onaddtrack"
  prim__onaddtrack : AnyPtr -> PrimIO AnyPtr

  export
  onaddtrack : (obj : AudioTrackList) -> JSIO EventHandler
  onaddtrack a =   primToJSIO "onaddtrack" $ prim__onaddtrack (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onaddtrack  = v}"
  prim__setOnaddtrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnaddtrack : (obj : AudioTrackList) -> (v : EventHandler) -> JSIO ()
  setOnaddtrack a b =
    primToJSIO "setOnaddtrack" $ prim__setOnaddtrack (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onchange"
  prim__onchange : AnyPtr -> PrimIO AnyPtr

  export
  onchange : (obj : AudioTrackList) -> JSIO EventHandler
  onchange a =   primToJSIO "onchange" $ prim__onchange (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onchange  = v}"
  prim__setOnchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnchange : (obj : AudioTrackList) -> (v : EventHandler) -> JSIO ()
  setOnchange a b =
    primToJSIO "setOnchange" $ prim__setOnchange (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onremovetrack"
  prim__onremovetrack : AnyPtr -> PrimIO AnyPtr

  export
  onremovetrack : (obj : AudioTrackList) -> JSIO EventHandler
  onremovetrack a =   primToJSIO "onremovetrack" $ prim__onremovetrack (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onremovetrack  = v}"
  prim__setOnremovetrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnremovetrack : (obj : AudioTrackList) -> (v : EventHandler) -> JSIO ()
  setOnremovetrack a b =
    primToJSIO "setOnremovetrack" $ prim__setOnremovetrack (toJS a) (toJS b)

namespace BarProp
  
  public export
  JSType BarProp where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.visible"
  prim__visible : AnyPtr -> PrimIO AnyPtr

  export
  visible : (obj : BarProp) -> JSIO Bool
  visible a =   primToJSIO "visible" $ prim__visible (toJS a)

namespace BeforeUnloadEvent
  
  public export
  JSType BeforeUnloadEvent where
    parents =  [ Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.returnValue"
  prim__returnValue : AnyPtr -> PrimIO AnyPtr

  export
  returnValue : (obj : BeforeUnloadEvent) -> JSIO String
  returnValue a =   primToJSIO "returnValue" $ prim__returnValue (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.returnValue  = v}"
  prim__setReturnValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReturnValue : (obj : BeforeUnloadEvent) -> (v : String) -> JSIO ()
  setReturnValue a b =
    primToJSIO "setReturnValue" $ prim__setReturnValue (toJS a) (toJS b)

namespace BroadcastChannel
  
  public export
  JSType BroadcastChannel where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : BroadcastChannel) -> JSIO String
  name a =   primToJSIO "name" $ prim__name (toJS a)
  
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : AnyPtr -> PrimIO AnyPtr

  export
  onmessage : (obj : BroadcastChannel) -> JSIO EventHandler
  onmessage a =   primToJSIO "onmessage" $ prim__onmessage (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onmessage  = v}"
  prim__setOnmessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmessage : (obj : BroadcastChannel) -> (v : EventHandler) -> JSIO ()
  setOnmessage a b =
    primToJSIO "setOnmessage" $ prim__setOnmessage (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onmessageerror"
  prim__onmessageerror : AnyPtr -> PrimIO AnyPtr

  export
  onmessageerror : (obj : BroadcastChannel) -> JSIO EventHandler
  onmessageerror a =
    primToJSIO "onmessageerror" $ prim__onmessageerror (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onmessageerror  = v}"
  prim__setOnmessageerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmessageerror : (obj : BroadcastChannel) -> (v : EventHandler) -> JSIO ()
  setOnmessageerror a b =
    primToJSIO "setOnmessageerror" $ prim__setOnmessageerror (toJS a) (toJS b)

namespace CanvasGradient
  
  public export
  JSType CanvasGradient where
    parents =  [ JSObject ]

    mixins =  []

namespace CanvasPattern
  
  public export
  JSType CanvasPattern where
    parents =  [ JSObject ]

    mixins =  []

namespace CanvasRenderingContext2D
  
  public export
  JSType CanvasRenderingContext2D where
    parents =  [ JSObject ]

    mixins =  [ CanvasCompositing
              , CanvasDrawImage
              , CanvasDrawPath
              , CanvasFillStrokeStyles
              , CanvasFilters
              , CanvasImageData
              , CanvasImageSmoothing
              , CanvasPath
              , CanvasPathDrawingStyles
              , CanvasRect
              , CanvasShadowStyles
              , CanvasState
              , CanvasText
              , CanvasTextDrawingStyles
              , CanvasTransform
              , CanvasUserInterface
              ]
  
  %foreign "browser:lambda:x=>x.canvas"
  prim__canvas : AnyPtr -> PrimIO AnyPtr

  export
  canvas : (obj : CanvasRenderingContext2D) -> JSIO HTMLCanvasElement
  canvas a =   primToJSIO "canvas" $ prim__canvas (toJS a)

namespace CloseEvent
  
  public export
  JSType CloseEvent where
    parents =  [ Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.code"
  prim__code : AnyPtr -> PrimIO AnyPtr

  export
  code : (obj : CloseEvent) -> JSIO UInt16
  code a =   primToJSIO "code" $ prim__code (toJS a)
  
  %foreign "browser:lambda:x=>x.reason"
  prim__reason : AnyPtr -> PrimIO AnyPtr

  export
  reason : (obj : CloseEvent) -> JSIO String
  reason a =   primToJSIO "reason" $ prim__reason (toJS a)
  
  %foreign "browser:lambda:x=>x.wasClean"
  prim__wasClean : AnyPtr -> PrimIO AnyPtr

  export
  wasClean : (obj : CloseEvent) -> JSIO Bool
  wasClean a =   primToJSIO "wasClean" $ prim__wasClean (toJS a)

namespace CustomElementRegistry
  
  public export
  JSType CustomElementRegistry where
    parents =  [ JSObject ]

    mixins =  []

namespace DOMParser
  
  public export
  JSType DOMParser where
    parents =  [ JSObject ]

    mixins =  []

namespace DOMStringList
  
  public export
  JSType DOMStringList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : DOMStringList) -> JSIO UInt32
  length a =   primToJSIO "length" $ prim__length (toJS a)

namespace DOMStringMap
  
  public export
  JSType DOMStringMap where
    parents =  [ JSObject ]

    mixins =  []

namespace DataTransfer
  
  public export
  JSType DataTransfer where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.files"
  prim__files : AnyPtr -> PrimIO AnyPtr

  export
  files : (obj : DataTransfer) -> JSIO FileList
  files a =   primToJSIO "files" $ prim__files (toJS a)
  
  %foreign "browser:lambda:x=>x.items"
  prim__items : AnyPtr -> PrimIO AnyPtr

  export
  items : (obj : DataTransfer) -> JSIO DataTransferItemList
  items a =   primToJSIO "items" $ prim__items (toJS a)
  
  %foreign "browser:lambda:x=>x.types"
  prim__types : AnyPtr -> PrimIO AnyPtr

  export
  types : (obj : DataTransfer) -> JSIO (JSArray String)
  types a =   primToJSIO "types" $ prim__types (toJS a)
  
  %foreign "browser:lambda:x=>x.dropEffect"
  prim__dropEffect : AnyPtr -> PrimIO AnyPtr

  export
  dropEffect : (obj : DataTransfer) -> JSIO String
  dropEffect a =   primToJSIO "dropEffect" $ prim__dropEffect (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.dropEffect  = v}"
  prim__setDropEffect : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDropEffect : (obj : DataTransfer) -> (v : String) -> JSIO ()
  setDropEffect a b =
    primToJSIO "setDropEffect" $ prim__setDropEffect (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.effectAllowed"
  prim__effectAllowed : AnyPtr -> PrimIO AnyPtr

  export
  effectAllowed : (obj : DataTransfer) -> JSIO String
  effectAllowed a =   primToJSIO "effectAllowed" $ prim__effectAllowed (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.effectAllowed  = v}"
  prim__setEffectAllowed : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEffectAllowed : (obj : DataTransfer) -> (v : String) -> JSIO ()
  setEffectAllowed a b =
    primToJSIO "setEffectAllowed" $ prim__setEffectAllowed (toJS a) (toJS b)

namespace DataTransferItem
  
  public export
  JSType DataTransferItem where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.kind"
  prim__kind : AnyPtr -> PrimIO AnyPtr

  export
  kind : (obj : DataTransferItem) -> JSIO String
  kind a =   primToJSIO "kind" $ prim__kind (toJS a)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : DataTransferItem) -> JSIO String
  type a =   primToJSIO "type" $ prim__type (toJS a)

namespace DataTransferItemList
  
  public export
  JSType DataTransferItemList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : DataTransferItemList) -> JSIO UInt32
  length a =   primToJSIO "length" $ prim__length (toJS a)

namespace DedicatedWorkerGlobalScope
  
  public export
  JSType DedicatedWorkerGlobalScope where
    parents =  [ WorkerGlobalScope , EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : DedicatedWorkerGlobalScope) -> JSIO String
  name a =   primToJSIO "name" $ prim__name (toJS a)
  
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : AnyPtr -> PrimIO AnyPtr

  export
  onmessage : (obj : DedicatedWorkerGlobalScope) -> JSIO EventHandler
  onmessage a =   primToJSIO "onmessage" $ prim__onmessage (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onmessage  = v}"
  prim__setOnmessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmessage :  (obj : DedicatedWorkerGlobalScope)
               -> (v : EventHandler)
               -> JSIO ()
  setOnmessage a b =
    primToJSIO "setOnmessage" $ prim__setOnmessage (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onmessageerror"
  prim__onmessageerror : AnyPtr -> PrimIO AnyPtr

  export
  onmessageerror : (obj : DedicatedWorkerGlobalScope) -> JSIO EventHandler
  onmessageerror a =
    primToJSIO "onmessageerror" $ prim__onmessageerror (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onmessageerror  = v}"
  prim__setOnmessageerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmessageerror :  (obj : DedicatedWorkerGlobalScope)
                    -> (v : EventHandler)
                    -> JSIO ()
  setOnmessageerror a b =
    primToJSIO "setOnmessageerror" $ prim__setOnmessageerror (toJS a) (toJS b)

namespace DragEvent
  
  public export
  JSType DragEvent where
    parents =  [ MouseEvent , UIEvent , Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.dataTransfer"
  prim__dataTransfer : AnyPtr -> PrimIO AnyPtr

  export
  dataTransfer : (obj : DragEvent) -> JSIO (Maybe DataTransfer)
  dataTransfer a =   primToJSIO "dataTransfer" $ prim__dataTransfer (toJS a)

namespace ElementInternals
  
  public export
  JSType ElementInternals where
    parents =  [ JSObject ]

    mixins =  [ ARIAMixin ]
  
  %foreign "browser:lambda:x=>x.form"
  prim__form : AnyPtr -> PrimIO AnyPtr

  export
  form : (obj : ElementInternals) -> JSIO (Maybe HTMLFormElement)
  form a =   primToJSIO "form" $ prim__form (toJS a)
  
  %foreign "browser:lambda:x=>x.labels"
  prim__labels : AnyPtr -> PrimIO AnyPtr

  export
  labels : (obj : ElementInternals) -> JSIO NodeList
  labels a =   primToJSIO "labels" $ prim__labels (toJS a)
  
  %foreign "browser:lambda:x=>x.shadowRoot"
  prim__shadowRoot : AnyPtr -> PrimIO AnyPtr

  export
  shadowRoot : (obj : ElementInternals) -> JSIO (Maybe ShadowRoot)
  shadowRoot a =   primToJSIO "shadowRoot" $ prim__shadowRoot (toJS a)
  
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : AnyPtr -> PrimIO AnyPtr

  export
  validationMessage : (obj : ElementInternals) -> JSIO String
  validationMessage a =
    primToJSIO "validationMessage" $ prim__validationMessage (toJS a)
  
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : AnyPtr -> PrimIO AnyPtr

  export
  validity : (obj : ElementInternals) -> JSIO ValidityState
  validity a =   primToJSIO "validity" $ prim__validity (toJS a)
  
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : AnyPtr -> PrimIO AnyPtr

  export
  willValidate : (obj : ElementInternals) -> JSIO Bool
  willValidate a =   primToJSIO "willValidate" $ prim__willValidate (toJS a)

namespace ErrorEvent
  
  public export
  JSType ErrorEvent where
    parents =  [ Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.colno"
  prim__colno : AnyPtr -> PrimIO AnyPtr

  export
  colno : (obj : ErrorEvent) -> JSIO UInt32
  colno a =   primToJSIO "colno" $ prim__colno (toJS a)
  
  %foreign "browser:lambda:x=>x.error"
  prim__error : AnyPtr -> PrimIO AnyPtr

  export
  error : (obj : ErrorEvent) -> JSIO Any
  error a =   primToJSIO "error" $ prim__error (toJS a)
  
  %foreign "browser:lambda:x=>x.filename"
  prim__filename : AnyPtr -> PrimIO AnyPtr

  export
  filename : (obj : ErrorEvent) -> JSIO String
  filename a =   primToJSIO "filename" $ prim__filename (toJS a)
  
  %foreign "browser:lambda:x=>x.lineno"
  prim__lineno : AnyPtr -> PrimIO AnyPtr

  export
  lineno : (obj : ErrorEvent) -> JSIO UInt32
  lineno a =   primToJSIO "lineno" $ prim__lineno (toJS a)
  
  %foreign "browser:lambda:x=>x.message"
  prim__message : AnyPtr -> PrimIO AnyPtr

  export
  message : (obj : ErrorEvent) -> JSIO String
  message a =   primToJSIO "message" $ prim__message (toJS a)

namespace EventSource
  
  public export
  JSType EventSource where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  public export
  CLOSED : UInt16
  CLOSED = 2
  
  public export
  CONNECTING : UInt16
  CONNECTING = 0o0
  
  public export
  OPEN : UInt16
  OPEN = 1
  
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : AnyPtr -> PrimIO AnyPtr

  export
  readyState : (obj : EventSource) -> JSIO UInt16
  readyState a =   primToJSIO "readyState" $ prim__readyState (toJS a)
  
  %foreign "browser:lambda:x=>x.url"
  prim__url : AnyPtr -> PrimIO AnyPtr

  export
  url : (obj : EventSource) -> JSIO String
  url a =   primToJSIO "url" $ prim__url (toJS a)
  
  %foreign "browser:lambda:x=>x.withCredentials"
  prim__withCredentials : AnyPtr -> PrimIO AnyPtr

  export
  withCredentials : (obj : EventSource) -> JSIO Bool
  withCredentials a =
    primToJSIO "withCredentials" $ prim__withCredentials (toJS a)
  
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : AnyPtr -> PrimIO AnyPtr

  export
  onerror : (obj : EventSource) -> JSIO EventHandler
  onerror a =   primToJSIO "onerror" $ prim__onerror (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onerror  = v}"
  prim__setOnerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnerror : (obj : EventSource) -> (v : EventHandler) -> JSIO ()
  setOnerror a b =
    primToJSIO "setOnerror" $ prim__setOnerror (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : AnyPtr -> PrimIO AnyPtr

  export
  onmessage : (obj : EventSource) -> JSIO EventHandler
  onmessage a =   primToJSIO "onmessage" $ prim__onmessage (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onmessage  = v}"
  prim__setOnmessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmessage : (obj : EventSource) -> (v : EventHandler) -> JSIO ()
  setOnmessage a b =
    primToJSIO "setOnmessage" $ prim__setOnmessage (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onopen"
  prim__onopen : AnyPtr -> PrimIO AnyPtr

  export
  onopen : (obj : EventSource) -> JSIO EventHandler
  onopen a =   primToJSIO "onopen" $ prim__onopen (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onopen  = v}"
  prim__setOnopen : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnopen : (obj : EventSource) -> (v : EventHandler) -> JSIO ()
  setOnopen a b =   primToJSIO "setOnopen" $ prim__setOnopen (toJS a) (toJS b)

namespace External
  
  public export
  JSType External where
    parents =  [ JSObject ]

    mixins =  []

namespace FormDataEvent
  
  public export
  JSType FormDataEvent where
    parents =  [ Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.formData"
  prim__formData : AnyPtr -> PrimIO AnyPtr

  export
  formData : (obj : FormDataEvent) -> JSIO FormData
  formData a =   primToJSIO "formData" $ prim__formData (toJS a)

namespace HTMLAllCollection
  
  public export
  JSType HTMLAllCollection where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : HTMLAllCollection) -> JSIO UInt32
  length a =   primToJSIO "length" $ prim__length (toJS a)

namespace HTMLAnchorElement
  
  public export
  JSType HTMLAnchorElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLHyperlinkElementUtils
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.relList"
  prim__relList : AnyPtr -> PrimIO AnyPtr

  export
  relList : (obj : HTMLAnchorElement) -> JSIO DOMTokenList
  relList a =   primToJSIO "relList" $ prim__relList (toJS a)
  
  %foreign "browser:lambda:x=>x.charset"
  prim__charset : AnyPtr -> PrimIO AnyPtr

  export
  charset : (obj : HTMLAnchorElement) -> JSIO String
  charset a =   primToJSIO "charset" $ prim__charset (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.charset  = v}"
  prim__setCharset : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCharset : (obj : HTMLAnchorElement) -> (v : String) -> JSIO ()
  setCharset a b =
    primToJSIO "setCharset" $ prim__setCharset (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.coords"
  prim__coords : AnyPtr -> PrimIO AnyPtr

  export
  coords : (obj : HTMLAnchorElement) -> JSIO String
  coords a =   primToJSIO "coords" $ prim__coords (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.coords  = v}"
  prim__setCoords : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCoords : (obj : HTMLAnchorElement) -> (v : String) -> JSIO ()
  setCoords a b =   primToJSIO "setCoords" $ prim__setCoords (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.download"
  prim__download : AnyPtr -> PrimIO AnyPtr

  export
  download : (obj : HTMLAnchorElement) -> JSIO String
  download a =   primToJSIO "download" $ prim__download (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.download  = v}"
  prim__setDownload : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDownload : (obj : HTMLAnchorElement) -> (v : String) -> JSIO ()
  setDownload a b =
    primToJSIO "setDownload" $ prim__setDownload (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.hreflang"
  prim__hreflang : AnyPtr -> PrimIO AnyPtr

  export
  hreflang : (obj : HTMLAnchorElement) -> JSIO String
  hreflang a =   primToJSIO "hreflang" $ prim__hreflang (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.hreflang  = v}"
  prim__setHreflang : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHreflang : (obj : HTMLAnchorElement) -> (v : String) -> JSIO ()
  setHreflang a b =
    primToJSIO "setHreflang" $ prim__setHreflang (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : HTMLAnchorElement) -> JSIO String
  name a =   primToJSIO "name" $ prim__name (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : HTMLAnchorElement) -> (v : String) -> JSIO ()
  setName a b =   primToJSIO "setName" $ prim__setName (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ping"
  prim__ping : AnyPtr -> PrimIO AnyPtr

  export
  ping : (obj : HTMLAnchorElement) -> JSIO String
  ping a =   primToJSIO "ping" $ prim__ping (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ping  = v}"
  prim__setPing : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPing : (obj : HTMLAnchorElement) -> (v : String) -> JSIO ()
  setPing a b =   primToJSIO "setPing" $ prim__setPing (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : AnyPtr -> PrimIO AnyPtr

  export
  referrerPolicy : (obj : HTMLAnchorElement) -> JSIO String
  referrerPolicy a =
    primToJSIO "referrerPolicy" $ prim__referrerPolicy (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy  = v}"
  prim__setReferrerPolicy : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReferrerPolicy : (obj : HTMLAnchorElement) -> (v : String) -> JSIO ()
  setReferrerPolicy a b =
    primToJSIO "setReferrerPolicy" $ prim__setReferrerPolicy (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.rel"
  prim__rel : AnyPtr -> PrimIO AnyPtr

  export
  rel : (obj : HTMLAnchorElement) -> JSIO String
  rel a =   primToJSIO "rel" $ prim__rel (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.rel  = v}"
  prim__setRel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRel : (obj : HTMLAnchorElement) -> (v : String) -> JSIO ()
  setRel a b =   primToJSIO "setRel" $ prim__setRel (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.rev"
  prim__rev : AnyPtr -> PrimIO AnyPtr

  export
  rev : (obj : HTMLAnchorElement) -> JSIO String
  rev a =   primToJSIO "rev" $ prim__rev (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.rev  = v}"
  prim__setRev : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRev : (obj : HTMLAnchorElement) -> (v : String) -> JSIO ()
  setRev a b =   primToJSIO "setRev" $ prim__setRev (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.shape"
  prim__shape : AnyPtr -> PrimIO AnyPtr

  export
  shape : (obj : HTMLAnchorElement) -> JSIO String
  shape a =   primToJSIO "shape" $ prim__shape (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.shape  = v}"
  prim__setShape : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setShape : (obj : HTMLAnchorElement) -> (v : String) -> JSIO ()
  setShape a b =   primToJSIO "setShape" $ prim__setShape (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr

  export
  target : (obj : HTMLAnchorElement) -> JSIO String
  target a =   primToJSIO "target" $ prim__target (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.target  = v}"
  prim__setTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTarget : (obj : HTMLAnchorElement) -> (v : String) -> JSIO ()
  setTarget a b =   primToJSIO "setTarget" $ prim__setTarget (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.text"
  prim__text : AnyPtr -> PrimIO AnyPtr

  export
  text : (obj : HTMLAnchorElement) -> JSIO String
  text a =   primToJSIO "text" $ prim__text (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.text  = v}"
  prim__setText : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setText : (obj : HTMLAnchorElement) -> (v : String) -> JSIO ()
  setText a b =   primToJSIO "setText" $ prim__setText (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : HTMLAnchorElement) -> JSIO String
  type a =   primToJSIO "type" $ prim__type (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : HTMLAnchorElement) -> (v : String) -> JSIO ()
  setType a b =   primToJSIO "setType" $ prim__setType (toJS a) (toJS b)

namespace HTMLAreaElement
  
  public export
  JSType HTMLAreaElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLHyperlinkElementUtils
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.relList"
  prim__relList : AnyPtr -> PrimIO AnyPtr

  export
  relList : (obj : HTMLAreaElement) -> JSIO DOMTokenList
  relList a =   primToJSIO "relList" $ prim__relList (toJS a)
  
  %foreign "browser:lambda:x=>x.alt"
  prim__alt : AnyPtr -> PrimIO AnyPtr

  export
  alt : (obj : HTMLAreaElement) -> JSIO String
  alt a =   primToJSIO "alt" $ prim__alt (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.alt  = v}"
  prim__setAlt : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlt : (obj : HTMLAreaElement) -> (v : String) -> JSIO ()
  setAlt a b =   primToJSIO "setAlt" $ prim__setAlt (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.coords"
  prim__coords : AnyPtr -> PrimIO AnyPtr

  export
  coords : (obj : HTMLAreaElement) -> JSIO String
  coords a =   primToJSIO "coords" $ prim__coords (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.coords  = v}"
  prim__setCoords : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCoords : (obj : HTMLAreaElement) -> (v : String) -> JSIO ()
  setCoords a b =   primToJSIO "setCoords" $ prim__setCoords (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.download"
  prim__download : AnyPtr -> PrimIO AnyPtr

  export
  download : (obj : HTMLAreaElement) -> JSIO String
  download a =   primToJSIO "download" $ prim__download (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.download  = v}"
  prim__setDownload : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDownload : (obj : HTMLAreaElement) -> (v : String) -> JSIO ()
  setDownload a b =
    primToJSIO "setDownload" $ prim__setDownload (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.noHref"
  prim__noHref : AnyPtr -> PrimIO AnyPtr

  export
  noHref : (obj : HTMLAreaElement) -> JSIO Bool
  noHref a =   primToJSIO "noHref" $ prim__noHref (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.noHref  = v}"
  prim__setNoHref : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setNoHref : (obj : HTMLAreaElement) -> (v : Bool) -> JSIO ()
  setNoHref a b =   primToJSIO "setNoHref" $ prim__setNoHref (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ping"
  prim__ping : AnyPtr -> PrimIO AnyPtr

  export
  ping : (obj : HTMLAreaElement) -> JSIO String
  ping a =   primToJSIO "ping" $ prim__ping (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ping  = v}"
  prim__setPing : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPing : (obj : HTMLAreaElement) -> (v : String) -> JSIO ()
  setPing a b =   primToJSIO "setPing" $ prim__setPing (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : AnyPtr -> PrimIO AnyPtr

  export
  referrerPolicy : (obj : HTMLAreaElement) -> JSIO String
  referrerPolicy a =
    primToJSIO "referrerPolicy" $ prim__referrerPolicy (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy  = v}"
  prim__setReferrerPolicy : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReferrerPolicy : (obj : HTMLAreaElement) -> (v : String) -> JSIO ()
  setReferrerPolicy a b =
    primToJSIO "setReferrerPolicy" $ prim__setReferrerPolicy (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.rel"
  prim__rel : AnyPtr -> PrimIO AnyPtr

  export
  rel : (obj : HTMLAreaElement) -> JSIO String
  rel a =   primToJSIO "rel" $ prim__rel (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.rel  = v}"
  prim__setRel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRel : (obj : HTMLAreaElement) -> (v : String) -> JSIO ()
  setRel a b =   primToJSIO "setRel" $ prim__setRel (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.shape"
  prim__shape : AnyPtr -> PrimIO AnyPtr

  export
  shape : (obj : HTMLAreaElement) -> JSIO String
  shape a =   primToJSIO "shape" $ prim__shape (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.shape  = v}"
  prim__setShape : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setShape : (obj : HTMLAreaElement) -> (v : String) -> JSIO ()
  setShape a b =   primToJSIO "setShape" $ prim__setShape (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr

  export
  target : (obj : HTMLAreaElement) -> JSIO String
  target a =   primToJSIO "target" $ prim__target (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.target  = v}"
  prim__setTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTarget : (obj : HTMLAreaElement) -> (v : String) -> JSIO ()
  setTarget a b =   primToJSIO "setTarget" $ prim__setTarget (toJS a) (toJS b)

namespace HTMLAudioElement
  
  public export
  JSType HTMLAudioElement where
    parents =  [ HTMLMediaElement
               , HTMLElement
               , Element
               , Node
               , EventTarget
               , JSObject
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLBRElement
  
  public export
  JSType HTMLBRElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.clear"
  prim__clear : AnyPtr -> PrimIO AnyPtr

  export
  clear : (obj : HTMLBRElement) -> JSIO String
  clear a =   primToJSIO "clear" $ prim__clear (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.clear  = v}"
  prim__setClear : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setClear : (obj : HTMLBRElement) -> (v : String) -> JSIO ()
  setClear a b =   primToJSIO "setClear" $ prim__setClear (toJS a) (toJS b)

namespace HTMLBaseElement
  
  public export
  JSType HTMLBaseElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.href"
  prim__href : AnyPtr -> PrimIO AnyPtr

  export
  href : (obj : HTMLBaseElement) -> JSIO String
  href a =   primToJSIO "href" $ prim__href (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.href  = v}"
  prim__setHref : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHref : (obj : HTMLBaseElement) -> (v : String) -> JSIO ()
  setHref a b =   primToJSIO "setHref" $ prim__setHref (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr

  export
  target : (obj : HTMLBaseElement) -> JSIO String
  target a =   primToJSIO "target" $ prim__target (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.target  = v}"
  prim__setTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTarget : (obj : HTMLBaseElement) -> (v : String) -> JSIO ()
  setTarget a b =   primToJSIO "setTarget" $ prim__setTarget (toJS a) (toJS b)

namespace HTMLBodyElement
  
  public export
  JSType HTMLBodyElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              , WindowEventHandlers
              ]
  
  %foreign "browser:lambda:x=>x.aLink"
  prim__aLink : AnyPtr -> PrimIO AnyPtr

  export
  aLink : (obj : HTMLBodyElement) -> JSIO String
  aLink a =   primToJSIO "aLink" $ prim__aLink (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.aLink  = v}"
  prim__setALink : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setALink : (obj : HTMLBodyElement) -> (v : String) -> JSIO ()
  setALink a b =   primToJSIO "setALink" $ prim__setALink (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.background"
  prim__background : AnyPtr -> PrimIO AnyPtr

  export
  background : (obj : HTMLBodyElement) -> JSIO String
  background a =   primToJSIO "background" $ prim__background (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.background  = v}"
  prim__setBackground : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBackground : (obj : HTMLBodyElement) -> (v : String) -> JSIO ()
  setBackground a b =
    primToJSIO "setBackground" $ prim__setBackground (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.bgColor"
  prim__bgColor : AnyPtr -> PrimIO AnyPtr

  export
  bgColor : (obj : HTMLBodyElement) -> JSIO String
  bgColor a =   primToJSIO "bgColor" $ prim__bgColor (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.bgColor  = v}"
  prim__setBgColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBgColor : (obj : HTMLBodyElement) -> (v : String) -> JSIO ()
  setBgColor a b =
    primToJSIO "setBgColor" $ prim__setBgColor (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.link"
  prim__link : AnyPtr -> PrimIO AnyPtr

  export
  link : (obj : HTMLBodyElement) -> JSIO String
  link a =   primToJSIO "link" $ prim__link (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.link  = v}"
  prim__setLink : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLink : (obj : HTMLBodyElement) -> (v : String) -> JSIO ()
  setLink a b =   primToJSIO "setLink" $ prim__setLink (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.text"
  prim__text : AnyPtr -> PrimIO AnyPtr

  export
  text : (obj : HTMLBodyElement) -> JSIO String
  text a =   primToJSIO "text" $ prim__text (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.text  = v}"
  prim__setText : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setText : (obj : HTMLBodyElement) -> (v : String) -> JSIO ()
  setText a b =   primToJSIO "setText" $ prim__setText (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.vLink"
  prim__vLink : AnyPtr -> PrimIO AnyPtr

  export
  vLink : (obj : HTMLBodyElement) -> JSIO String
  vLink a =   primToJSIO "vLink" $ prim__vLink (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.vLink  = v}"
  prim__setVLink : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setVLink : (obj : HTMLBodyElement) -> (v : String) -> JSIO ()
  setVLink a b =   primToJSIO "setVLink" $ prim__setVLink (toJS a) (toJS b)

namespace HTMLButtonElement
  
  public export
  JSType HTMLButtonElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.form"
  prim__form : AnyPtr -> PrimIO AnyPtr

  export
  form : (obj : HTMLButtonElement) -> JSIO (Maybe HTMLFormElement)
  form a =   primToJSIO "form" $ prim__form (toJS a)
  
  %foreign "browser:lambda:x=>x.labels"
  prim__labels : AnyPtr -> PrimIO AnyPtr

  export
  labels : (obj : HTMLButtonElement) -> JSIO NodeList
  labels a =   primToJSIO "labels" $ prim__labels (toJS a)
  
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : AnyPtr -> PrimIO AnyPtr

  export
  validationMessage : (obj : HTMLButtonElement) -> JSIO String
  validationMessage a =
    primToJSIO "validationMessage" $ prim__validationMessage (toJS a)
  
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : AnyPtr -> PrimIO AnyPtr

  export
  validity : (obj : HTMLButtonElement) -> JSIO ValidityState
  validity a =   primToJSIO "validity" $ prim__validity (toJS a)
  
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : AnyPtr -> PrimIO AnyPtr

  export
  willValidate : (obj : HTMLButtonElement) -> JSIO Bool
  willValidate a =   primToJSIO "willValidate" $ prim__willValidate (toJS a)
  
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : AnyPtr -> PrimIO AnyPtr

  export
  disabled : (obj : HTMLButtonElement) -> JSIO Bool
  disabled a =   primToJSIO "disabled" $ prim__disabled (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.disabled  = v}"
  prim__setDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDisabled : (obj : HTMLButtonElement) -> (v : Bool) -> JSIO ()
  setDisabled a b =
    primToJSIO "setDisabled" $ prim__setDisabled (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.formAction"
  prim__formAction : AnyPtr -> PrimIO AnyPtr

  export
  formAction : (obj : HTMLButtonElement) -> JSIO String
  formAction a =   primToJSIO "formAction" $ prim__formAction (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.formAction  = v}"
  prim__setFormAction : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFormAction : (obj : HTMLButtonElement) -> (v : String) -> JSIO ()
  setFormAction a b =
    primToJSIO "setFormAction" $ prim__setFormAction (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.formEnctype"
  prim__formEnctype : AnyPtr -> PrimIO AnyPtr

  export
  formEnctype : (obj : HTMLButtonElement) -> JSIO String
  formEnctype a =   primToJSIO "formEnctype" $ prim__formEnctype (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.formEnctype  = v}"
  prim__setFormEnctype : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFormEnctype : (obj : HTMLButtonElement) -> (v : String) -> JSIO ()
  setFormEnctype a b =
    primToJSIO "setFormEnctype" $ prim__setFormEnctype (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.formMethod"
  prim__formMethod : AnyPtr -> PrimIO AnyPtr

  export
  formMethod : (obj : HTMLButtonElement) -> JSIO String
  formMethod a =   primToJSIO "formMethod" $ prim__formMethod (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.formMethod  = v}"
  prim__setFormMethod : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFormMethod : (obj : HTMLButtonElement) -> (v : String) -> JSIO ()
  setFormMethod a b =
    primToJSIO "setFormMethod" $ prim__setFormMethod (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.formNoValidate"
  prim__formNoValidate : AnyPtr -> PrimIO AnyPtr

  export
  formNoValidate : (obj : HTMLButtonElement) -> JSIO Bool
  formNoValidate a =
    primToJSIO "formNoValidate" $ prim__formNoValidate (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.formNoValidate  = v}"
  prim__setFormNoValidate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFormNoValidate : (obj : HTMLButtonElement) -> (v : Bool) -> JSIO ()
  setFormNoValidate a b =
    primToJSIO "setFormNoValidate" $ prim__setFormNoValidate (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.formTarget"
  prim__formTarget : AnyPtr -> PrimIO AnyPtr

  export
  formTarget : (obj : HTMLButtonElement) -> JSIO String
  formTarget a =   primToJSIO "formTarget" $ prim__formTarget (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.formTarget  = v}"
  prim__setFormTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFormTarget : (obj : HTMLButtonElement) -> (v : String) -> JSIO ()
  setFormTarget a b =
    primToJSIO "setFormTarget" $ prim__setFormTarget (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : HTMLButtonElement) -> JSIO String
  name a =   primToJSIO "name" $ prim__name (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : HTMLButtonElement) -> (v : String) -> JSIO ()
  setName a b =   primToJSIO "setName" $ prim__setName (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : HTMLButtonElement) -> JSIO String
  type a =   primToJSIO "type" $ prim__type (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : HTMLButtonElement) -> (v : String) -> JSIO ()
  setType a b =   primToJSIO "setType" $ prim__setType (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : HTMLButtonElement) -> JSIO String
  value a =   primToJSIO "value" $ prim__value (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue : (obj : HTMLButtonElement) -> (v : String) -> JSIO ()
  setValue a b =   primToJSIO "setValue" $ prim__setValue (toJS a) (toJS b)

namespace HTMLCanvasElement
  
  public export
  JSType HTMLCanvasElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : HTMLCanvasElement) -> JSIO UInt32
  height a =   primToJSIO "height" $ prim__height (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.height  = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeight : (obj : HTMLCanvasElement) -> (v : UInt32) -> JSIO ()
  setHeight a b =   primToJSIO "setHeight" $ prim__setHeight (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : HTMLCanvasElement) -> JSIO UInt32
  width a =   primToJSIO "width" $ prim__width (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : HTMLCanvasElement) -> (v : UInt32) -> JSIO ()
  setWidth a b =   primToJSIO "setWidth" $ prim__setWidth (toJS a) (toJS b)

namespace HTMLDListElement
  
  public export
  JSType HTMLDListElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.compact"
  prim__compact : AnyPtr -> PrimIO AnyPtr

  export
  compact : (obj : HTMLDListElement) -> JSIO Bool
  compact a =   primToJSIO "compact" $ prim__compact (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.compact  = v}"
  prim__setCompact : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCompact : (obj : HTMLDListElement) -> (v : Bool) -> JSIO ()
  setCompact a b =
    primToJSIO "setCompact" $ prim__setCompact (toJS a) (toJS b)

namespace HTMLDataElement
  
  public export
  JSType HTMLDataElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : HTMLDataElement) -> JSIO String
  value a =   primToJSIO "value" $ prim__value (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue : (obj : HTMLDataElement) -> (v : String) -> JSIO ()
  setValue a b =   primToJSIO "setValue" $ prim__setValue (toJS a) (toJS b)

namespace HTMLDataListElement
  
  public export
  JSType HTMLDataListElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.options"
  prim__options : AnyPtr -> PrimIO AnyPtr

  export
  options : (obj : HTMLDataListElement) -> JSIO HTMLCollection
  options a =   primToJSIO "options" $ prim__options (toJS a)

namespace HTMLDetailsElement
  
  public export
  JSType HTMLDetailsElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.open"
  prim__open_ : AnyPtr -> PrimIO AnyPtr

  export
  open_ : (obj : HTMLDetailsElement) -> JSIO Bool
  open_ a =   primToJSIO "open_" $ prim__open_ (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.open  = v}"
  prim__setOpen : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOpen : (obj : HTMLDetailsElement) -> (v : Bool) -> JSIO ()
  setOpen a b =   primToJSIO "setOpen" $ prim__setOpen (toJS a) (toJS b)

namespace HTMLDialogElement
  
  public export
  JSType HTMLDialogElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.open"
  prim__open_ : AnyPtr -> PrimIO AnyPtr

  export
  open_ : (obj : HTMLDialogElement) -> JSIO Bool
  open_ a =   primToJSIO "open_" $ prim__open_ (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.open  = v}"
  prim__setOpen : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOpen : (obj : HTMLDialogElement) -> (v : Bool) -> JSIO ()
  setOpen a b =   primToJSIO "setOpen" $ prim__setOpen (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.returnValue"
  prim__returnValue : AnyPtr -> PrimIO AnyPtr

  export
  returnValue : (obj : HTMLDialogElement) -> JSIO String
  returnValue a =   primToJSIO "returnValue" $ prim__returnValue (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.returnValue  = v}"
  prim__setReturnValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReturnValue : (obj : HTMLDialogElement) -> (v : String) -> JSIO ()
  setReturnValue a b =
    primToJSIO "setReturnValue" $ prim__setReturnValue (toJS a) (toJS b)

namespace HTMLDirectoryElement
  
  public export
  JSType HTMLDirectoryElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.compact"
  prim__compact : AnyPtr -> PrimIO AnyPtr

  export
  compact : (obj : HTMLDirectoryElement) -> JSIO Bool
  compact a =   primToJSIO "compact" $ prim__compact (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.compact  = v}"
  prim__setCompact : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCompact : (obj : HTMLDirectoryElement) -> (v : Bool) -> JSIO ()
  setCompact a b =
    primToJSIO "setCompact" $ prim__setCompact (toJS a) (toJS b)

namespace HTMLDivElement
  
  public export
  JSType HTMLDivElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  export
  align : (obj : HTMLDivElement) -> JSIO String
  align a =   primToJSIO "align" $ prim__align (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.align  = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlign : (obj : HTMLDivElement) -> (v : String) -> JSIO ()
  setAlign a b =   primToJSIO "setAlign" $ prim__setAlign (toJS a) (toJS b)

namespace HTMLElement
  
  public export
  JSType HTMLElement where
    parents =  [ Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.accessKeyLabel"
  prim__accessKeyLabel : AnyPtr -> PrimIO AnyPtr

  export
  accessKeyLabel : (obj : HTMLElement) -> JSIO String
  accessKeyLabel a =
    primToJSIO "accessKeyLabel" $ prim__accessKeyLabel (toJS a)
  
  %foreign "browser:lambda:x=>x.accessKey"
  prim__accessKey : AnyPtr -> PrimIO AnyPtr

  export
  accessKey : (obj : HTMLElement) -> JSIO String
  accessKey a =   primToJSIO "accessKey" $ prim__accessKey (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.accessKey  = v}"
  prim__setAccessKey : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAccessKey : (obj : HTMLElement) -> (v : String) -> JSIO ()
  setAccessKey a b =
    primToJSIO "setAccessKey" $ prim__setAccessKey (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.autocapitalize"
  prim__autocapitalize : AnyPtr -> PrimIO AnyPtr

  export
  autocapitalize : (obj : HTMLElement) -> JSIO String
  autocapitalize a =
    primToJSIO "autocapitalize" $ prim__autocapitalize (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.autocapitalize  = v}"
  prim__setAutocapitalize : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAutocapitalize : (obj : HTMLElement) -> (v : String) -> JSIO ()
  setAutocapitalize a b =
    primToJSIO "setAutocapitalize" $ prim__setAutocapitalize (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.dir"
  prim__dir : AnyPtr -> PrimIO AnyPtr

  export
  dir : (obj : HTMLElement) -> JSIO String
  dir a =   primToJSIO "dir" $ prim__dir (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.dir  = v}"
  prim__setDir : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDir : (obj : HTMLElement) -> (v : String) -> JSIO ()
  setDir a b =   primToJSIO "setDir" $ prim__setDir (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.draggable"
  prim__draggable : AnyPtr -> PrimIO AnyPtr

  export
  draggable : (obj : HTMLElement) -> JSIO Bool
  draggable a =   primToJSIO "draggable" $ prim__draggable (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.draggable  = v}"
  prim__setDraggable : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDraggable : (obj : HTMLElement) -> (v : Bool) -> JSIO ()
  setDraggable a b =
    primToJSIO "setDraggable" $ prim__setDraggable (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.hidden"
  prim__hidden : AnyPtr -> PrimIO AnyPtr

  export
  hidden : (obj : HTMLElement) -> JSIO Bool
  hidden a =   primToJSIO "hidden" $ prim__hidden (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.hidden  = v}"
  prim__setHidden : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHidden : (obj : HTMLElement) -> (v : Bool) -> JSIO ()
  setHidden a b =   primToJSIO "setHidden" $ prim__setHidden (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.innerText"
  prim__innerText : AnyPtr -> PrimIO AnyPtr

  export
  innerText : (obj : HTMLElement) -> JSIO String
  innerText a =   primToJSIO "innerText" $ prim__innerText (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.innerText  = v}"
  prim__setInnerText : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setInnerText : (obj : HTMLElement) -> (v : String) -> JSIO ()
  setInnerText a b =
    primToJSIO "setInnerText" $ prim__setInnerText (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.lang"
  prim__lang : AnyPtr -> PrimIO AnyPtr

  export
  lang : (obj : HTMLElement) -> JSIO String
  lang a =   primToJSIO "lang" $ prim__lang (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.lang  = v}"
  prim__setLang : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLang : (obj : HTMLElement) -> (v : String) -> JSIO ()
  setLang a b =   primToJSIO "setLang" $ prim__setLang (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.spellcheck"
  prim__spellcheck : AnyPtr -> PrimIO AnyPtr

  export
  spellcheck : (obj : HTMLElement) -> JSIO Bool
  spellcheck a =   primToJSIO "spellcheck" $ prim__spellcheck (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.spellcheck  = v}"
  prim__setSpellcheck : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSpellcheck : (obj : HTMLElement) -> (v : Bool) -> JSIO ()
  setSpellcheck a b =
    primToJSIO "setSpellcheck" $ prim__setSpellcheck (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.title"
  prim__title : AnyPtr -> PrimIO AnyPtr

  export
  title : (obj : HTMLElement) -> JSIO String
  title a =   primToJSIO "title" $ prim__title (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.title  = v}"
  prim__setTitle : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTitle : (obj : HTMLElement) -> (v : String) -> JSIO ()
  setTitle a b =   primToJSIO "setTitle" $ prim__setTitle (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.translate"
  prim__translate : AnyPtr -> PrimIO AnyPtr

  export
  translate : (obj : HTMLElement) -> JSIO Bool
  translate a =   primToJSIO "translate" $ prim__translate (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.translate  = v}"
  prim__setTranslate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTranslate : (obj : HTMLElement) -> (v : Bool) -> JSIO ()
  setTranslate a b =
    primToJSIO "setTranslate" $ prim__setTranslate (toJS a) (toJS b)

namespace HTMLEmbedElement
  
  public export
  JSType HTMLEmbedElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  export
  align : (obj : HTMLEmbedElement) -> JSIO String
  align a =   primToJSIO "align" $ prim__align (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.align  = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlign : (obj : HTMLEmbedElement) -> (v : String) -> JSIO ()
  setAlign a b =   primToJSIO "setAlign" $ prim__setAlign (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : HTMLEmbedElement) -> JSIO String
  height a =   primToJSIO "height" $ prim__height (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.height  = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeight : (obj : HTMLEmbedElement) -> (v : String) -> JSIO ()
  setHeight a b =   primToJSIO "setHeight" $ prim__setHeight (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : HTMLEmbedElement) -> JSIO String
  name a =   primToJSIO "name" $ prim__name (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : HTMLEmbedElement) -> (v : String) -> JSIO ()
  setName a b =   primToJSIO "setName" $ prim__setName (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.src"
  prim__src : AnyPtr -> PrimIO AnyPtr

  export
  src : (obj : HTMLEmbedElement) -> JSIO String
  src a =   primToJSIO "src" $ prim__src (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.src  = v}"
  prim__setSrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSrc : (obj : HTMLEmbedElement) -> (v : String) -> JSIO ()
  setSrc a b =   primToJSIO "setSrc" $ prim__setSrc (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : HTMLEmbedElement) -> JSIO String
  type a =   primToJSIO "type" $ prim__type (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : HTMLEmbedElement) -> (v : String) -> JSIO ()
  setType a b =   primToJSIO "setType" $ prim__setType (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : HTMLEmbedElement) -> JSIO String
  width a =   primToJSIO "width" $ prim__width (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : HTMLEmbedElement) -> (v : String) -> JSIO ()
  setWidth a b =   primToJSIO "setWidth" $ prim__setWidth (toJS a) (toJS b)

namespace HTMLFieldSetElement
  
  public export
  JSType HTMLFieldSetElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.elements"
  prim__elements : AnyPtr -> PrimIO AnyPtr

  export
  elements : (obj : HTMLFieldSetElement) -> JSIO HTMLCollection
  elements a =   primToJSIO "elements" $ prim__elements (toJS a)
  
  %foreign "browser:lambda:x=>x.form"
  prim__form : AnyPtr -> PrimIO AnyPtr

  export
  form : (obj : HTMLFieldSetElement) -> JSIO (Maybe HTMLFormElement)
  form a =   primToJSIO "form" $ prim__form (toJS a)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : HTMLFieldSetElement) -> JSIO String
  type a =   primToJSIO "type" $ prim__type (toJS a)
  
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : AnyPtr -> PrimIO AnyPtr

  export
  validationMessage : (obj : HTMLFieldSetElement) -> JSIO String
  validationMessage a =
    primToJSIO "validationMessage" $ prim__validationMessage (toJS a)
  
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : AnyPtr -> PrimIO AnyPtr

  export
  validity : (obj : HTMLFieldSetElement) -> JSIO ValidityState
  validity a =   primToJSIO "validity" $ prim__validity (toJS a)
  
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : AnyPtr -> PrimIO AnyPtr

  export
  willValidate : (obj : HTMLFieldSetElement) -> JSIO Bool
  willValidate a =   primToJSIO "willValidate" $ prim__willValidate (toJS a)
  
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : AnyPtr -> PrimIO AnyPtr

  export
  disabled : (obj : HTMLFieldSetElement) -> JSIO Bool
  disabled a =   primToJSIO "disabled" $ prim__disabled (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.disabled  = v}"
  prim__setDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDisabled : (obj : HTMLFieldSetElement) -> (v : Bool) -> JSIO ()
  setDisabled a b =
    primToJSIO "setDisabled" $ prim__setDisabled (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : HTMLFieldSetElement) -> JSIO String
  name a =   primToJSIO "name" $ prim__name (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : HTMLFieldSetElement) -> (v : String) -> JSIO ()
  setName a b =   primToJSIO "setName" $ prim__setName (toJS a) (toJS b)

namespace HTMLFontElement
  
  public export
  JSType HTMLFontElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.color"
  prim__color : AnyPtr -> PrimIO AnyPtr

  export
  color : (obj : HTMLFontElement) -> JSIO String
  color a =   primToJSIO "color" $ prim__color (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.color  = v}"
  prim__setColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setColor : (obj : HTMLFontElement) -> (v : String) -> JSIO ()
  setColor a b =   primToJSIO "setColor" $ prim__setColor (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.face"
  prim__face : AnyPtr -> PrimIO AnyPtr

  export
  face : (obj : HTMLFontElement) -> JSIO String
  face a =   primToJSIO "face" $ prim__face (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.face  = v}"
  prim__setFace : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFace : (obj : HTMLFontElement) -> (v : String) -> JSIO ()
  setFace a b =   primToJSIO "setFace" $ prim__setFace (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.size"
  prim__size : AnyPtr -> PrimIO AnyPtr

  export
  size : (obj : HTMLFontElement) -> JSIO String
  size a =   primToJSIO "size" $ prim__size (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.size  = v}"
  prim__setSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSize : (obj : HTMLFontElement) -> (v : String) -> JSIO ()
  setSize a b =   primToJSIO "setSize" $ prim__setSize (toJS a) (toJS b)

namespace HTMLFormControlsCollection
  
  public export
  JSType HTMLFormControlsCollection where
    parents =  [ HTMLCollection , JSObject ]

    mixins =  []

namespace HTMLFormElement
  
  public export
  JSType HTMLFormElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.elements"
  prim__elements : AnyPtr -> PrimIO AnyPtr

  export
  elements : (obj : HTMLFormElement) -> JSIO HTMLFormControlsCollection
  elements a =   primToJSIO "elements" $ prim__elements (toJS a)
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : HTMLFormElement) -> JSIO UInt32
  length a =   primToJSIO "length" $ prim__length (toJS a)
  
  %foreign "browser:lambda:x=>x.relList"
  prim__relList : AnyPtr -> PrimIO AnyPtr

  export
  relList : (obj : HTMLFormElement) -> JSIO DOMTokenList
  relList a =   primToJSIO "relList" $ prim__relList (toJS a)
  
  %foreign "browser:lambda:x=>x.acceptCharset"
  prim__acceptCharset : AnyPtr -> PrimIO AnyPtr

  export
  acceptCharset : (obj : HTMLFormElement) -> JSIO String
  acceptCharset a =   primToJSIO "acceptCharset" $ prim__acceptCharset (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.acceptCharset  = v}"
  prim__setAcceptCharset : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAcceptCharset : (obj : HTMLFormElement) -> (v : String) -> JSIO ()
  setAcceptCharset a b =
    primToJSIO "setAcceptCharset" $ prim__setAcceptCharset (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.action"
  prim__action : AnyPtr -> PrimIO AnyPtr

  export
  action : (obj : HTMLFormElement) -> JSIO String
  action a =   primToJSIO "action" $ prim__action (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.action  = v}"
  prim__setAction : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAction : (obj : HTMLFormElement) -> (v : String) -> JSIO ()
  setAction a b =   primToJSIO "setAction" $ prim__setAction (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.autocomplete"
  prim__autocomplete : AnyPtr -> PrimIO AnyPtr

  export
  autocomplete : (obj : HTMLFormElement) -> JSIO String
  autocomplete a =   primToJSIO "autocomplete" $ prim__autocomplete (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.autocomplete  = v}"
  prim__setAutocomplete : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAutocomplete : (obj : HTMLFormElement) -> (v : String) -> JSIO ()
  setAutocomplete a b =
    primToJSIO "setAutocomplete" $ prim__setAutocomplete (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.encoding"
  prim__encoding : AnyPtr -> PrimIO AnyPtr

  export
  encoding : (obj : HTMLFormElement) -> JSIO String
  encoding a =   primToJSIO "encoding" $ prim__encoding (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.encoding  = v}"
  prim__setEncoding : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEncoding : (obj : HTMLFormElement) -> (v : String) -> JSIO ()
  setEncoding a b =
    primToJSIO "setEncoding" $ prim__setEncoding (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.enctype"
  prim__enctype : AnyPtr -> PrimIO AnyPtr

  export
  enctype : (obj : HTMLFormElement) -> JSIO String
  enctype a =   primToJSIO "enctype" $ prim__enctype (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.enctype  = v}"
  prim__setEnctype : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEnctype : (obj : HTMLFormElement) -> (v : String) -> JSIO ()
  setEnctype a b =
    primToJSIO "setEnctype" $ prim__setEnctype (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.method"
  prim__method : AnyPtr -> PrimIO AnyPtr

  export
  method : (obj : HTMLFormElement) -> JSIO String
  method a =   primToJSIO "method" $ prim__method (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.method  = v}"
  prim__setMethod : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMethod : (obj : HTMLFormElement) -> (v : String) -> JSIO ()
  setMethod a b =   primToJSIO "setMethod" $ prim__setMethod (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : HTMLFormElement) -> JSIO String
  name a =   primToJSIO "name" $ prim__name (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : HTMLFormElement) -> (v : String) -> JSIO ()
  setName a b =   primToJSIO "setName" $ prim__setName (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.noValidate"
  prim__noValidate : AnyPtr -> PrimIO AnyPtr

  export
  noValidate : (obj : HTMLFormElement) -> JSIO Bool
  noValidate a =   primToJSIO "noValidate" $ prim__noValidate (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.noValidate  = v}"
  prim__setNoValidate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setNoValidate : (obj : HTMLFormElement) -> (v : Bool) -> JSIO ()
  setNoValidate a b =
    primToJSIO "setNoValidate" $ prim__setNoValidate (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.rel"
  prim__rel : AnyPtr -> PrimIO AnyPtr

  export
  rel : (obj : HTMLFormElement) -> JSIO String
  rel a =   primToJSIO "rel" $ prim__rel (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.rel  = v}"
  prim__setRel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRel : (obj : HTMLFormElement) -> (v : String) -> JSIO ()
  setRel a b =   primToJSIO "setRel" $ prim__setRel (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr

  export
  target : (obj : HTMLFormElement) -> JSIO String
  target a =   primToJSIO "target" $ prim__target (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.target  = v}"
  prim__setTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTarget : (obj : HTMLFormElement) -> (v : String) -> JSIO ()
  setTarget a b =   primToJSIO "setTarget" $ prim__setTarget (toJS a) (toJS b)

namespace HTMLFrameElement
  
  public export
  JSType HTMLFrameElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.contentDocument"
  prim__contentDocument : AnyPtr -> PrimIO AnyPtr

  export
  contentDocument : (obj : HTMLFrameElement) -> JSIO (Maybe Document)
  contentDocument a =
    primToJSIO "contentDocument" $ prim__contentDocument (toJS a)
  
  %foreign "browser:lambda:x=>x.contentWindow"
  prim__contentWindow : AnyPtr -> PrimIO AnyPtr

  export
  contentWindow : (obj : HTMLFrameElement) -> JSIO (Maybe WindowProxy)
  contentWindow a =   primToJSIO "contentWindow" $ prim__contentWindow (toJS a)
  
  %foreign "browser:lambda:x=>x.frameBorder"
  prim__frameBorder : AnyPtr -> PrimIO AnyPtr

  export
  frameBorder : (obj : HTMLFrameElement) -> JSIO String
  frameBorder a =   primToJSIO "frameBorder" $ prim__frameBorder (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.frameBorder  = v}"
  prim__setFrameBorder : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFrameBorder : (obj : HTMLFrameElement) -> (v : String) -> JSIO ()
  setFrameBorder a b =
    primToJSIO "setFrameBorder" $ prim__setFrameBorder (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.longDesc"
  prim__longDesc : AnyPtr -> PrimIO AnyPtr

  export
  longDesc : (obj : HTMLFrameElement) -> JSIO String
  longDesc a =   primToJSIO "longDesc" $ prim__longDesc (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.longDesc  = v}"
  prim__setLongDesc : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLongDesc : (obj : HTMLFrameElement) -> (v : String) -> JSIO ()
  setLongDesc a b =
    primToJSIO "setLongDesc" $ prim__setLongDesc (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.marginHeight"
  prim__marginHeight : AnyPtr -> PrimIO AnyPtr

  export
  marginHeight : (obj : HTMLFrameElement) -> JSIO String
  marginHeight a =   primToJSIO "marginHeight" $ prim__marginHeight (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.marginHeight  = v}"
  prim__setMarginHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMarginHeight : (obj : HTMLFrameElement) -> (v : String) -> JSIO ()
  setMarginHeight a b =
    primToJSIO "setMarginHeight" $ prim__setMarginHeight (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.marginWidth"
  prim__marginWidth : AnyPtr -> PrimIO AnyPtr

  export
  marginWidth : (obj : HTMLFrameElement) -> JSIO String
  marginWidth a =   primToJSIO "marginWidth" $ prim__marginWidth (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.marginWidth  = v}"
  prim__setMarginWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMarginWidth : (obj : HTMLFrameElement) -> (v : String) -> JSIO ()
  setMarginWidth a b =
    primToJSIO "setMarginWidth" $ prim__setMarginWidth (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : HTMLFrameElement) -> JSIO String
  name a =   primToJSIO "name" $ prim__name (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : HTMLFrameElement) -> (v : String) -> JSIO ()
  setName a b =   primToJSIO "setName" $ prim__setName (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.noResize"
  prim__noResize : AnyPtr -> PrimIO AnyPtr

  export
  noResize : (obj : HTMLFrameElement) -> JSIO Bool
  noResize a =   primToJSIO "noResize" $ prim__noResize (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.noResize  = v}"
  prim__setNoResize : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setNoResize : (obj : HTMLFrameElement) -> (v : Bool) -> JSIO ()
  setNoResize a b =
    primToJSIO "setNoResize" $ prim__setNoResize (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.scrolling"
  prim__scrolling : AnyPtr -> PrimIO AnyPtr

  export
  scrolling : (obj : HTMLFrameElement) -> JSIO String
  scrolling a =   primToJSIO "scrolling" $ prim__scrolling (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.scrolling  = v}"
  prim__setScrolling : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setScrolling : (obj : HTMLFrameElement) -> (v : String) -> JSIO ()
  setScrolling a b =
    primToJSIO "setScrolling" $ prim__setScrolling (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.src"
  prim__src : AnyPtr -> PrimIO AnyPtr

  export
  src : (obj : HTMLFrameElement) -> JSIO String
  src a =   primToJSIO "src" $ prim__src (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.src  = v}"
  prim__setSrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSrc : (obj : HTMLFrameElement) -> (v : String) -> JSIO ()
  setSrc a b =   primToJSIO "setSrc" $ prim__setSrc (toJS a) (toJS b)

namespace HTMLFrameSetElement
  
  public export
  JSType HTMLFrameSetElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              , WindowEventHandlers
              ]
  
  %foreign "browser:lambda:x=>x.cols"
  prim__cols : AnyPtr -> PrimIO AnyPtr

  export
  cols : (obj : HTMLFrameSetElement) -> JSIO String
  cols a =   primToJSIO "cols" $ prim__cols (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.cols  = v}"
  prim__setCols : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCols : (obj : HTMLFrameSetElement) -> (v : String) -> JSIO ()
  setCols a b =   primToJSIO "setCols" $ prim__setCols (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.rows"
  prim__rows : AnyPtr -> PrimIO AnyPtr

  export
  rows : (obj : HTMLFrameSetElement) -> JSIO String
  rows a =   primToJSIO "rows" $ prim__rows (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.rows  = v}"
  prim__setRows : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRows : (obj : HTMLFrameSetElement) -> (v : String) -> JSIO ()
  setRows a b =   primToJSIO "setRows" $ prim__setRows (toJS a) (toJS b)

namespace HTMLHRElement
  
  public export
  JSType HTMLHRElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  export
  align : (obj : HTMLHRElement) -> JSIO String
  align a =   primToJSIO "align" $ prim__align (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.align  = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlign : (obj : HTMLHRElement) -> (v : String) -> JSIO ()
  setAlign a b =   primToJSIO "setAlign" $ prim__setAlign (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.color"
  prim__color : AnyPtr -> PrimIO AnyPtr

  export
  color : (obj : HTMLHRElement) -> JSIO String
  color a =   primToJSIO "color" $ prim__color (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.color  = v}"
  prim__setColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setColor : (obj : HTMLHRElement) -> (v : String) -> JSIO ()
  setColor a b =   primToJSIO "setColor" $ prim__setColor (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.noShade"
  prim__noShade : AnyPtr -> PrimIO AnyPtr

  export
  noShade : (obj : HTMLHRElement) -> JSIO Bool
  noShade a =   primToJSIO "noShade" $ prim__noShade (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.noShade  = v}"
  prim__setNoShade : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setNoShade : (obj : HTMLHRElement) -> (v : Bool) -> JSIO ()
  setNoShade a b =
    primToJSIO "setNoShade" $ prim__setNoShade (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.size"
  prim__size : AnyPtr -> PrimIO AnyPtr

  export
  size : (obj : HTMLHRElement) -> JSIO String
  size a =   primToJSIO "size" $ prim__size (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.size  = v}"
  prim__setSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSize : (obj : HTMLHRElement) -> (v : String) -> JSIO ()
  setSize a b =   primToJSIO "setSize" $ prim__setSize (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : HTMLHRElement) -> JSIO String
  width a =   primToJSIO "width" $ prim__width (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : HTMLHRElement) -> (v : String) -> JSIO ()
  setWidth a b =   primToJSIO "setWidth" $ prim__setWidth (toJS a) (toJS b)

namespace HTMLHeadElement
  
  public export
  JSType HTMLHeadElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLHeadingElement
  
  public export
  JSType HTMLHeadingElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  export
  align : (obj : HTMLHeadingElement) -> JSIO String
  align a =   primToJSIO "align" $ prim__align (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.align  = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlign : (obj : HTMLHeadingElement) -> (v : String) -> JSIO ()
  setAlign a b =   primToJSIO "setAlign" $ prim__setAlign (toJS a) (toJS b)

namespace HTMLHtmlElement
  
  public export
  JSType HTMLHtmlElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.version"
  prim__version : AnyPtr -> PrimIO AnyPtr

  export
  version : (obj : HTMLHtmlElement) -> JSIO String
  version a =   primToJSIO "version" $ prim__version (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.version  = v}"
  prim__setVersion : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setVersion : (obj : HTMLHtmlElement) -> (v : String) -> JSIO ()
  setVersion a b =
    primToJSIO "setVersion" $ prim__setVersion (toJS a) (toJS b)

namespace HTMLIFrameElement
  
  public export
  JSType HTMLIFrameElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.contentDocument"
  prim__contentDocument : AnyPtr -> PrimIO AnyPtr

  export
  contentDocument : (obj : HTMLIFrameElement) -> JSIO (Maybe Document)
  contentDocument a =
    primToJSIO "contentDocument" $ prim__contentDocument (toJS a)
  
  %foreign "browser:lambda:x=>x.contentWindow"
  prim__contentWindow : AnyPtr -> PrimIO AnyPtr

  export
  contentWindow : (obj : HTMLIFrameElement) -> JSIO (Maybe WindowProxy)
  contentWindow a =   primToJSIO "contentWindow" $ prim__contentWindow (toJS a)
  
  %foreign "browser:lambda:x=>x.sandbox"
  prim__sandbox : AnyPtr -> PrimIO AnyPtr

  export
  sandbox : (obj : HTMLIFrameElement) -> JSIO DOMTokenList
  sandbox a =   primToJSIO "sandbox" $ prim__sandbox (toJS a)
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  export
  align : (obj : HTMLIFrameElement) -> JSIO String
  align a =   primToJSIO "align" $ prim__align (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.align  = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlign : (obj : HTMLIFrameElement) -> (v : String) -> JSIO ()
  setAlign a b =   primToJSIO "setAlign" $ prim__setAlign (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.allow"
  prim__allow : AnyPtr -> PrimIO AnyPtr

  export
  allow : (obj : HTMLIFrameElement) -> JSIO String
  allow a =   primToJSIO "allow" $ prim__allow (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.allow  = v}"
  prim__setAllow : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAllow : (obj : HTMLIFrameElement) -> (v : String) -> JSIO ()
  setAllow a b =   primToJSIO "setAllow" $ prim__setAllow (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.allowFullscreen"
  prim__allowFullscreen : AnyPtr -> PrimIO AnyPtr

  export
  allowFullscreen : (obj : HTMLIFrameElement) -> JSIO Bool
  allowFullscreen a =
    primToJSIO "allowFullscreen" $ prim__allowFullscreen (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.allowFullscreen  = v}"
  prim__setAllowFullscreen : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAllowFullscreen : (obj : HTMLIFrameElement) -> (v : Bool) -> JSIO ()
  setAllowFullscreen a b =
    primToJSIO "setAllowFullscreen" $ prim__setAllowFullscreen (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.frameBorder"
  prim__frameBorder : AnyPtr -> PrimIO AnyPtr

  export
  frameBorder : (obj : HTMLIFrameElement) -> JSIO String
  frameBorder a =   primToJSIO "frameBorder" $ prim__frameBorder (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.frameBorder  = v}"
  prim__setFrameBorder : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFrameBorder : (obj : HTMLIFrameElement) -> (v : String) -> JSIO ()
  setFrameBorder a b =
    primToJSIO "setFrameBorder" $ prim__setFrameBorder (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : HTMLIFrameElement) -> JSIO String
  height a =   primToJSIO "height" $ prim__height (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.height  = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeight : (obj : HTMLIFrameElement) -> (v : String) -> JSIO ()
  setHeight a b =   primToJSIO "setHeight" $ prim__setHeight (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.loading"
  prim__loading : AnyPtr -> PrimIO AnyPtr

  export
  loading : (obj : HTMLIFrameElement) -> JSIO String
  loading a =   primToJSIO "loading" $ prim__loading (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.loading  = v}"
  prim__setLoading : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLoading : (obj : HTMLIFrameElement) -> (v : String) -> JSIO ()
  setLoading a b =
    primToJSIO "setLoading" $ prim__setLoading (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.longDesc"
  prim__longDesc : AnyPtr -> PrimIO AnyPtr

  export
  longDesc : (obj : HTMLIFrameElement) -> JSIO String
  longDesc a =   primToJSIO "longDesc" $ prim__longDesc (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.longDesc  = v}"
  prim__setLongDesc : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLongDesc : (obj : HTMLIFrameElement) -> (v : String) -> JSIO ()
  setLongDesc a b =
    primToJSIO "setLongDesc" $ prim__setLongDesc (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.marginHeight"
  prim__marginHeight : AnyPtr -> PrimIO AnyPtr

  export
  marginHeight : (obj : HTMLIFrameElement) -> JSIO String
  marginHeight a =   primToJSIO "marginHeight" $ prim__marginHeight (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.marginHeight  = v}"
  prim__setMarginHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMarginHeight : (obj : HTMLIFrameElement) -> (v : String) -> JSIO ()
  setMarginHeight a b =
    primToJSIO "setMarginHeight" $ prim__setMarginHeight (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.marginWidth"
  prim__marginWidth : AnyPtr -> PrimIO AnyPtr

  export
  marginWidth : (obj : HTMLIFrameElement) -> JSIO String
  marginWidth a =   primToJSIO "marginWidth" $ prim__marginWidth (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.marginWidth  = v}"
  prim__setMarginWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMarginWidth : (obj : HTMLIFrameElement) -> (v : String) -> JSIO ()
  setMarginWidth a b =
    primToJSIO "setMarginWidth" $ prim__setMarginWidth (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : HTMLIFrameElement) -> JSIO String
  name a =   primToJSIO "name" $ prim__name (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : HTMLIFrameElement) -> (v : String) -> JSIO ()
  setName a b =   primToJSIO "setName" $ prim__setName (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : AnyPtr -> PrimIO AnyPtr

  export
  referrerPolicy : (obj : HTMLIFrameElement) -> JSIO String
  referrerPolicy a =
    primToJSIO "referrerPolicy" $ prim__referrerPolicy (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy  = v}"
  prim__setReferrerPolicy : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReferrerPolicy : (obj : HTMLIFrameElement) -> (v : String) -> JSIO ()
  setReferrerPolicy a b =
    primToJSIO "setReferrerPolicy" $ prim__setReferrerPolicy (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.scrolling"
  prim__scrolling : AnyPtr -> PrimIO AnyPtr

  export
  scrolling : (obj : HTMLIFrameElement) -> JSIO String
  scrolling a =   primToJSIO "scrolling" $ prim__scrolling (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.scrolling  = v}"
  prim__setScrolling : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setScrolling : (obj : HTMLIFrameElement) -> (v : String) -> JSIO ()
  setScrolling a b =
    primToJSIO "setScrolling" $ prim__setScrolling (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.src"
  prim__src : AnyPtr -> PrimIO AnyPtr

  export
  src : (obj : HTMLIFrameElement) -> JSIO String
  src a =   primToJSIO "src" $ prim__src (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.src  = v}"
  prim__setSrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSrc : (obj : HTMLIFrameElement) -> (v : String) -> JSIO ()
  setSrc a b =   primToJSIO "setSrc" $ prim__setSrc (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.srcdoc"
  prim__srcdoc : AnyPtr -> PrimIO AnyPtr

  export
  srcdoc : (obj : HTMLIFrameElement) -> JSIO String
  srcdoc a =   primToJSIO "srcdoc" $ prim__srcdoc (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.srcdoc  = v}"
  prim__setSrcdoc : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSrcdoc : (obj : HTMLIFrameElement) -> (v : String) -> JSIO ()
  setSrcdoc a b =   primToJSIO "setSrcdoc" $ prim__setSrcdoc (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : HTMLIFrameElement) -> JSIO String
  width a =   primToJSIO "width" $ prim__width (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : HTMLIFrameElement) -> (v : String) -> JSIO ()
  setWidth a b =   primToJSIO "setWidth" $ prim__setWidth (toJS a) (toJS b)

namespace HTMLImageElement
  
  public export
  JSType HTMLImageElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.complete"
  prim__complete : AnyPtr -> PrimIO AnyPtr

  export
  complete : (obj : HTMLImageElement) -> JSIO Bool
  complete a =   primToJSIO "complete" $ prim__complete (toJS a)
  
  %foreign "browser:lambda:x=>x.currentSrc"
  prim__currentSrc : AnyPtr -> PrimIO AnyPtr

  export
  currentSrc : (obj : HTMLImageElement) -> JSIO String
  currentSrc a =   primToJSIO "currentSrc" $ prim__currentSrc (toJS a)
  
  %foreign "browser:lambda:x=>x.naturalHeight"
  prim__naturalHeight : AnyPtr -> PrimIO AnyPtr

  export
  naturalHeight : (obj : HTMLImageElement) -> JSIO UInt32
  naturalHeight a =   primToJSIO "naturalHeight" $ prim__naturalHeight (toJS a)
  
  %foreign "browser:lambda:x=>x.naturalWidth"
  prim__naturalWidth : AnyPtr -> PrimIO AnyPtr

  export
  naturalWidth : (obj : HTMLImageElement) -> JSIO UInt32
  naturalWidth a =   primToJSIO "naturalWidth" $ prim__naturalWidth (toJS a)
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  export
  align : (obj : HTMLImageElement) -> JSIO String
  align a =   primToJSIO "align" $ prim__align (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.align  = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlign : (obj : HTMLImageElement) -> (v : String) -> JSIO ()
  setAlign a b =   primToJSIO "setAlign" $ prim__setAlign (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.alt"
  prim__alt : AnyPtr -> PrimIO AnyPtr

  export
  alt : (obj : HTMLImageElement) -> JSIO String
  alt a =   primToJSIO "alt" $ prim__alt (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.alt  = v}"
  prim__setAlt : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlt : (obj : HTMLImageElement) -> (v : String) -> JSIO ()
  setAlt a b =   primToJSIO "setAlt" $ prim__setAlt (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.border"
  prim__border : AnyPtr -> PrimIO AnyPtr

  export
  border : (obj : HTMLImageElement) -> JSIO String
  border a =   primToJSIO "border" $ prim__border (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.border  = v}"
  prim__setBorder : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBorder : (obj : HTMLImageElement) -> (v : String) -> JSIO ()
  setBorder a b =   primToJSIO "setBorder" $ prim__setBorder (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.crossOrigin"
  prim__crossOrigin : AnyPtr -> PrimIO AnyPtr

  export
  crossOrigin : (obj : HTMLImageElement) -> JSIO (Maybe String)
  crossOrigin a =   primToJSIO "crossOrigin" $ prim__crossOrigin (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.crossOrigin  = v}"
  prim__setCrossOrigin : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCrossOrigin : (obj : HTMLImageElement) -> (v : Maybe String) -> JSIO ()
  setCrossOrigin a b =
    primToJSIO "setCrossOrigin" $ prim__setCrossOrigin (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.decoding"
  prim__decoding : AnyPtr -> PrimIO AnyPtr

  export
  decoding : (obj : HTMLImageElement) -> JSIO String
  decoding a =   primToJSIO "decoding" $ prim__decoding (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.decoding  = v}"
  prim__setDecoding : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDecoding : (obj : HTMLImageElement) -> (v : String) -> JSIO ()
  setDecoding a b =
    primToJSIO "setDecoding" $ prim__setDecoding (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : HTMLImageElement) -> JSIO UInt32
  height a =   primToJSIO "height" $ prim__height (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.height  = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeight : (obj : HTMLImageElement) -> (v : UInt32) -> JSIO ()
  setHeight a b =   primToJSIO "setHeight" $ prim__setHeight (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.hspace"
  prim__hspace : AnyPtr -> PrimIO AnyPtr

  export
  hspace : (obj : HTMLImageElement) -> JSIO UInt32
  hspace a =   primToJSIO "hspace" $ prim__hspace (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.hspace  = v}"
  prim__setHspace : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHspace : (obj : HTMLImageElement) -> (v : UInt32) -> JSIO ()
  setHspace a b =   primToJSIO "setHspace" $ prim__setHspace (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.isMap"
  prim__isMap : AnyPtr -> PrimIO AnyPtr

  export
  isMap : (obj : HTMLImageElement) -> JSIO Bool
  isMap a =   primToJSIO "isMap" $ prim__isMap (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.isMap  = v}"
  prim__setIsMap : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIsMap : (obj : HTMLImageElement) -> (v : Bool) -> JSIO ()
  setIsMap a b =   primToJSIO "setIsMap" $ prim__setIsMap (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.loading"
  prim__loading : AnyPtr -> PrimIO AnyPtr

  export
  loading : (obj : HTMLImageElement) -> JSIO String
  loading a =   primToJSIO "loading" $ prim__loading (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.loading  = v}"
  prim__setLoading : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLoading : (obj : HTMLImageElement) -> (v : String) -> JSIO ()
  setLoading a b =
    primToJSIO "setLoading" $ prim__setLoading (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.longDesc"
  prim__longDesc : AnyPtr -> PrimIO AnyPtr

  export
  longDesc : (obj : HTMLImageElement) -> JSIO String
  longDesc a =   primToJSIO "longDesc" $ prim__longDesc (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.longDesc  = v}"
  prim__setLongDesc : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLongDesc : (obj : HTMLImageElement) -> (v : String) -> JSIO ()
  setLongDesc a b =
    primToJSIO "setLongDesc" $ prim__setLongDesc (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.lowsrc"
  prim__lowsrc : AnyPtr -> PrimIO AnyPtr

  export
  lowsrc : (obj : HTMLImageElement) -> JSIO String
  lowsrc a =   primToJSIO "lowsrc" $ prim__lowsrc (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.lowsrc  = v}"
  prim__setLowsrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLowsrc : (obj : HTMLImageElement) -> (v : String) -> JSIO ()
  setLowsrc a b =   primToJSIO "setLowsrc" $ prim__setLowsrc (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : HTMLImageElement) -> JSIO String
  name a =   primToJSIO "name" $ prim__name (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : HTMLImageElement) -> (v : String) -> JSIO ()
  setName a b =   primToJSIO "setName" $ prim__setName (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : AnyPtr -> PrimIO AnyPtr

  export
  referrerPolicy : (obj : HTMLImageElement) -> JSIO String
  referrerPolicy a =
    primToJSIO "referrerPolicy" $ prim__referrerPolicy (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy  = v}"
  prim__setReferrerPolicy : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReferrerPolicy : (obj : HTMLImageElement) -> (v : String) -> JSIO ()
  setReferrerPolicy a b =
    primToJSIO "setReferrerPolicy" $ prim__setReferrerPolicy (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.sizes"
  prim__sizes : AnyPtr -> PrimIO AnyPtr

  export
  sizes : (obj : HTMLImageElement) -> JSIO String
  sizes a =   primToJSIO "sizes" $ prim__sizes (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.sizes  = v}"
  prim__setSizes : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSizes : (obj : HTMLImageElement) -> (v : String) -> JSIO ()
  setSizes a b =   primToJSIO "setSizes" $ prim__setSizes (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.src"
  prim__src : AnyPtr -> PrimIO AnyPtr

  export
  src : (obj : HTMLImageElement) -> JSIO String
  src a =   primToJSIO "src" $ prim__src (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.src  = v}"
  prim__setSrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSrc : (obj : HTMLImageElement) -> (v : String) -> JSIO ()
  setSrc a b =   primToJSIO "setSrc" $ prim__setSrc (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.srcset"
  prim__srcset : AnyPtr -> PrimIO AnyPtr

  export
  srcset : (obj : HTMLImageElement) -> JSIO String
  srcset a =   primToJSIO "srcset" $ prim__srcset (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.srcset  = v}"
  prim__setSrcset : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSrcset : (obj : HTMLImageElement) -> (v : String) -> JSIO ()
  setSrcset a b =   primToJSIO "setSrcset" $ prim__setSrcset (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.useMap"
  prim__useMap : AnyPtr -> PrimIO AnyPtr

  export
  useMap : (obj : HTMLImageElement) -> JSIO String
  useMap a =   primToJSIO "useMap" $ prim__useMap (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.useMap  = v}"
  prim__setUseMap : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setUseMap : (obj : HTMLImageElement) -> (v : String) -> JSIO ()
  setUseMap a b =   primToJSIO "setUseMap" $ prim__setUseMap (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.vspace"
  prim__vspace : AnyPtr -> PrimIO AnyPtr

  export
  vspace : (obj : HTMLImageElement) -> JSIO UInt32
  vspace a =   primToJSIO "vspace" $ prim__vspace (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.vspace  = v}"
  prim__setVspace : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setVspace : (obj : HTMLImageElement) -> (v : UInt32) -> JSIO ()
  setVspace a b =   primToJSIO "setVspace" $ prim__setVspace (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : HTMLImageElement) -> JSIO UInt32
  width a =   primToJSIO "width" $ prim__width (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : HTMLImageElement) -> (v : UInt32) -> JSIO ()
  setWidth a b =   primToJSIO "setWidth" $ prim__setWidth (toJS a) (toJS b)

namespace HTMLInputElement
  
  public export
  JSType HTMLInputElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.form"
  prim__form : AnyPtr -> PrimIO AnyPtr

  export
  form : (obj : HTMLInputElement) -> JSIO (Maybe HTMLFormElement)
  form a =   primToJSIO "form" $ prim__form (toJS a)
  
  %foreign "browser:lambda:x=>x.labels"
  prim__labels : AnyPtr -> PrimIO AnyPtr

  export
  labels : (obj : HTMLInputElement) -> JSIO (Maybe NodeList)
  labels a =   primToJSIO "labels" $ prim__labels (toJS a)
  
  %foreign "browser:lambda:x=>x.list"
  prim__list : AnyPtr -> PrimIO AnyPtr

  export
  list : (obj : HTMLInputElement) -> JSIO (Maybe HTMLElement)
  list a =   primToJSIO "list" $ prim__list (toJS a)
  
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : AnyPtr -> PrimIO AnyPtr

  export
  validationMessage : (obj : HTMLInputElement) -> JSIO String
  validationMessage a =
    primToJSIO "validationMessage" $ prim__validationMessage (toJS a)
  
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : AnyPtr -> PrimIO AnyPtr

  export
  validity : (obj : HTMLInputElement) -> JSIO ValidityState
  validity a =   primToJSIO "validity" $ prim__validity (toJS a)
  
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : AnyPtr -> PrimIO AnyPtr

  export
  willValidate : (obj : HTMLInputElement) -> JSIO Bool
  willValidate a =   primToJSIO "willValidate" $ prim__willValidate (toJS a)
  
  %foreign "browser:lambda:x=>x.accept"
  prim__accept : AnyPtr -> PrimIO AnyPtr

  export
  accept : (obj : HTMLInputElement) -> JSIO String
  accept a =   primToJSIO "accept" $ prim__accept (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.accept  = v}"
  prim__setAccept : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAccept : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  setAccept a b =   primToJSIO "setAccept" $ prim__setAccept (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  export
  align : (obj : HTMLInputElement) -> JSIO String
  align a =   primToJSIO "align" $ prim__align (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.align  = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlign : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  setAlign a b =   primToJSIO "setAlign" $ prim__setAlign (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.alt"
  prim__alt : AnyPtr -> PrimIO AnyPtr

  export
  alt : (obj : HTMLInputElement) -> JSIO String
  alt a =   primToJSIO "alt" $ prim__alt (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.alt  = v}"
  prim__setAlt : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlt : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  setAlt a b =   primToJSIO "setAlt" $ prim__setAlt (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.autocomplete"
  prim__autocomplete : AnyPtr -> PrimIO AnyPtr

  export
  autocomplete : (obj : HTMLInputElement) -> JSIO String
  autocomplete a =   primToJSIO "autocomplete" $ prim__autocomplete (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.autocomplete  = v}"
  prim__setAutocomplete : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAutocomplete : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  setAutocomplete a b =
    primToJSIO "setAutocomplete" $ prim__setAutocomplete (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.checked"
  prim__checked : AnyPtr -> PrimIO AnyPtr

  export
  checked : (obj : HTMLInputElement) -> JSIO Bool
  checked a =   primToJSIO "checked" $ prim__checked (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.checked  = v}"
  prim__setChecked : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setChecked : (obj : HTMLInputElement) -> (v : Bool) -> JSIO ()
  setChecked a b =
    primToJSIO "setChecked" $ prim__setChecked (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.defaultChecked"
  prim__defaultChecked : AnyPtr -> PrimIO AnyPtr

  export
  defaultChecked : (obj : HTMLInputElement) -> JSIO Bool
  defaultChecked a =
    primToJSIO "defaultChecked" $ prim__defaultChecked (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.defaultChecked  = v}"
  prim__setDefaultChecked : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDefaultChecked : (obj : HTMLInputElement) -> (v : Bool) -> JSIO ()
  setDefaultChecked a b =
    primToJSIO "setDefaultChecked" $ prim__setDefaultChecked (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.defaultValue"
  prim__defaultValue : AnyPtr -> PrimIO AnyPtr

  export
  defaultValue : (obj : HTMLInputElement) -> JSIO String
  defaultValue a =   primToJSIO "defaultValue" $ prim__defaultValue (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.defaultValue  = v}"
  prim__setDefaultValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDefaultValue : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  setDefaultValue a b =
    primToJSIO "setDefaultValue" $ prim__setDefaultValue (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.dirName"
  prim__dirName : AnyPtr -> PrimIO AnyPtr

  export
  dirName : (obj : HTMLInputElement) -> JSIO String
  dirName a =   primToJSIO "dirName" $ prim__dirName (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.dirName  = v}"
  prim__setDirName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDirName : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  setDirName a b =
    primToJSIO "setDirName" $ prim__setDirName (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : AnyPtr -> PrimIO AnyPtr

  export
  disabled : (obj : HTMLInputElement) -> JSIO Bool
  disabled a =   primToJSIO "disabled" $ prim__disabled (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.disabled  = v}"
  prim__setDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDisabled : (obj : HTMLInputElement) -> (v : Bool) -> JSIO ()
  setDisabled a b =
    primToJSIO "setDisabled" $ prim__setDisabled (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.files"
  prim__files : AnyPtr -> PrimIO AnyPtr

  export
  files : (obj : HTMLInputElement) -> JSIO (Maybe FileList)
  files a =   primToJSIO "files" $ prim__files (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.files  = v}"
  prim__setFiles : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFiles : (obj : HTMLInputElement) -> (v : Maybe FileList) -> JSIO ()
  setFiles a b =   primToJSIO "setFiles" $ prim__setFiles (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.formAction"
  prim__formAction : AnyPtr -> PrimIO AnyPtr

  export
  formAction : (obj : HTMLInputElement) -> JSIO String
  formAction a =   primToJSIO "formAction" $ prim__formAction (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.formAction  = v}"
  prim__setFormAction : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFormAction : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  setFormAction a b =
    primToJSIO "setFormAction" $ prim__setFormAction (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.formEnctype"
  prim__formEnctype : AnyPtr -> PrimIO AnyPtr

  export
  formEnctype : (obj : HTMLInputElement) -> JSIO String
  formEnctype a =   primToJSIO "formEnctype" $ prim__formEnctype (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.formEnctype  = v}"
  prim__setFormEnctype : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFormEnctype : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  setFormEnctype a b =
    primToJSIO "setFormEnctype" $ prim__setFormEnctype (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.formMethod"
  prim__formMethod : AnyPtr -> PrimIO AnyPtr

  export
  formMethod : (obj : HTMLInputElement) -> JSIO String
  formMethod a =   primToJSIO "formMethod" $ prim__formMethod (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.formMethod  = v}"
  prim__setFormMethod : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFormMethod : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  setFormMethod a b =
    primToJSIO "setFormMethod" $ prim__setFormMethod (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.formNoValidate"
  prim__formNoValidate : AnyPtr -> PrimIO AnyPtr

  export
  formNoValidate : (obj : HTMLInputElement) -> JSIO Bool
  formNoValidate a =
    primToJSIO "formNoValidate" $ prim__formNoValidate (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.formNoValidate  = v}"
  prim__setFormNoValidate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFormNoValidate : (obj : HTMLInputElement) -> (v : Bool) -> JSIO ()
  setFormNoValidate a b =
    primToJSIO "setFormNoValidate" $ prim__setFormNoValidate (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.formTarget"
  prim__formTarget : AnyPtr -> PrimIO AnyPtr

  export
  formTarget : (obj : HTMLInputElement) -> JSIO String
  formTarget a =   primToJSIO "formTarget" $ prim__formTarget (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.formTarget  = v}"
  prim__setFormTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFormTarget : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  setFormTarget a b =
    primToJSIO "setFormTarget" $ prim__setFormTarget (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : HTMLInputElement) -> JSIO UInt32
  height a =   primToJSIO "height" $ prim__height (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.height  = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeight : (obj : HTMLInputElement) -> (v : UInt32) -> JSIO ()
  setHeight a b =   primToJSIO "setHeight" $ prim__setHeight (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.indeterminate"
  prim__indeterminate : AnyPtr -> PrimIO AnyPtr

  export
  indeterminate : (obj : HTMLInputElement) -> JSIO Bool
  indeterminate a =   primToJSIO "indeterminate" $ prim__indeterminate (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.indeterminate  = v}"
  prim__setIndeterminate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIndeterminate : (obj : HTMLInputElement) -> (v : Bool) -> JSIO ()
  setIndeterminate a b =
    primToJSIO "setIndeterminate" $ prim__setIndeterminate (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.max"
  prim__max : AnyPtr -> PrimIO AnyPtr

  export
  max : (obj : HTMLInputElement) -> JSIO String
  max a =   primToJSIO "max" $ prim__max (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.max  = v}"
  prim__setMax : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMax : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  setMax a b =   primToJSIO "setMax" $ prim__setMax (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.maxLength"
  prim__maxLength : AnyPtr -> PrimIO AnyPtr

  export
  maxLength : (obj : HTMLInputElement) -> JSIO Int32
  maxLength a =   primToJSIO "maxLength" $ prim__maxLength (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.maxLength  = v}"
  prim__setMaxLength : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMaxLength : (obj : HTMLInputElement) -> (v : Int32) -> JSIO ()
  setMaxLength a b =
    primToJSIO "setMaxLength" $ prim__setMaxLength (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.min"
  prim__min : AnyPtr -> PrimIO AnyPtr

  export
  min : (obj : HTMLInputElement) -> JSIO String
  min a =   primToJSIO "min" $ prim__min (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.min  = v}"
  prim__setMin : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMin : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  setMin a b =   primToJSIO "setMin" $ prim__setMin (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.minLength"
  prim__minLength : AnyPtr -> PrimIO AnyPtr

  export
  minLength : (obj : HTMLInputElement) -> JSIO Int32
  minLength a =   primToJSIO "minLength" $ prim__minLength (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.minLength  = v}"
  prim__setMinLength : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMinLength : (obj : HTMLInputElement) -> (v : Int32) -> JSIO ()
  setMinLength a b =
    primToJSIO "setMinLength" $ prim__setMinLength (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.multiple"
  prim__multiple : AnyPtr -> PrimIO AnyPtr

  export
  multiple : (obj : HTMLInputElement) -> JSIO Bool
  multiple a =   primToJSIO "multiple" $ prim__multiple (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.multiple  = v}"
  prim__setMultiple : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMultiple : (obj : HTMLInputElement) -> (v : Bool) -> JSIO ()
  setMultiple a b =
    primToJSIO "setMultiple" $ prim__setMultiple (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : HTMLInputElement) -> JSIO String
  name a =   primToJSIO "name" $ prim__name (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  setName a b =   primToJSIO "setName" $ prim__setName (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.pattern"
  prim__pattern : AnyPtr -> PrimIO AnyPtr

  export
  pattern : (obj : HTMLInputElement) -> JSIO String
  pattern a =   primToJSIO "pattern" $ prim__pattern (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.pattern  = v}"
  prim__setPattern : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPattern : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  setPattern a b =
    primToJSIO "setPattern" $ prim__setPattern (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.placeholder"
  prim__placeholder : AnyPtr -> PrimIO AnyPtr

  export
  placeholder : (obj : HTMLInputElement) -> JSIO String
  placeholder a =   primToJSIO "placeholder" $ prim__placeholder (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.placeholder  = v}"
  prim__setPlaceholder : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPlaceholder : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  setPlaceholder a b =
    primToJSIO "setPlaceholder" $ prim__setPlaceholder (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.readOnly"
  prim__readOnly : AnyPtr -> PrimIO AnyPtr

  export
  readOnly : (obj : HTMLInputElement) -> JSIO Bool
  readOnly a =   primToJSIO "readOnly" $ prim__readOnly (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.readOnly  = v}"
  prim__setReadOnly : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReadOnly : (obj : HTMLInputElement) -> (v : Bool) -> JSIO ()
  setReadOnly a b =
    primToJSIO "setReadOnly" $ prim__setReadOnly (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.required"
  prim__required : AnyPtr -> PrimIO AnyPtr

  export
  required : (obj : HTMLInputElement) -> JSIO Bool
  required a =   primToJSIO "required" $ prim__required (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.required  = v}"
  prim__setRequired : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRequired : (obj : HTMLInputElement) -> (v : Bool) -> JSIO ()
  setRequired a b =
    primToJSIO "setRequired" $ prim__setRequired (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.selectionDirection"
  prim__selectionDirection : AnyPtr -> PrimIO AnyPtr

  export
  selectionDirection : (obj : HTMLInputElement) -> JSIO (Maybe String)
  selectionDirection a =
    primToJSIO "selectionDirection" $ prim__selectionDirection (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.selectionDirection  = v}"
  prim__setSelectionDirection : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSelectionDirection :  (obj : HTMLInputElement)
                        -> (v : Maybe String)
                        -> JSIO ()
  setSelectionDirection a b =
    primToJSIO "setSelectionDirection" $ prim__setSelectionDirection (toJS a)
                                                                     (toJS b)
  
  %foreign "browser:lambda:x=>x.selectionEnd"
  prim__selectionEnd : AnyPtr -> PrimIO AnyPtr

  export
  selectionEnd : (obj : HTMLInputElement) -> JSIO (Maybe UInt32)
  selectionEnd a =   primToJSIO "selectionEnd" $ prim__selectionEnd (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.selectionEnd  = v}"
  prim__setSelectionEnd : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSelectionEnd : (obj : HTMLInputElement) -> (v : Maybe UInt32) -> JSIO ()
  setSelectionEnd a b =
    primToJSIO "setSelectionEnd" $ prim__setSelectionEnd (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.selectionStart"
  prim__selectionStart : AnyPtr -> PrimIO AnyPtr

  export
  selectionStart : (obj : HTMLInputElement) -> JSIO (Maybe UInt32)
  selectionStart a =
    primToJSIO "selectionStart" $ prim__selectionStart (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.selectionStart  = v}"
  prim__setSelectionStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSelectionStart : (obj : HTMLInputElement) -> (v : Maybe UInt32) -> JSIO ()
  setSelectionStart a b =
    primToJSIO "setSelectionStart" $ prim__setSelectionStart (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.size"
  prim__size : AnyPtr -> PrimIO AnyPtr

  export
  size : (obj : HTMLInputElement) -> JSIO UInt32
  size a =   primToJSIO "size" $ prim__size (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.size  = v}"
  prim__setSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSize : (obj : HTMLInputElement) -> (v : UInt32) -> JSIO ()
  setSize a b =   primToJSIO "setSize" $ prim__setSize (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.src"
  prim__src : AnyPtr -> PrimIO AnyPtr

  export
  src : (obj : HTMLInputElement) -> JSIO String
  src a =   primToJSIO "src" $ prim__src (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.src  = v}"
  prim__setSrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSrc : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  setSrc a b =   primToJSIO "setSrc" $ prim__setSrc (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.step"
  prim__step : AnyPtr -> PrimIO AnyPtr

  export
  step : (obj : HTMLInputElement) -> JSIO String
  step a =   primToJSIO "step" $ prim__step (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.step  = v}"
  prim__setStep : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStep : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  setStep a b =   primToJSIO "setStep" $ prim__setStep (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : HTMLInputElement) -> JSIO String
  type a =   primToJSIO "type" $ prim__type (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  setType a b =   primToJSIO "setType" $ prim__setType (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.useMap"
  prim__useMap : AnyPtr -> PrimIO AnyPtr

  export
  useMap : (obj : HTMLInputElement) -> JSIO String
  useMap a =   primToJSIO "useMap" $ prim__useMap (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.useMap  = v}"
  prim__setUseMap : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setUseMap : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  setUseMap a b =   primToJSIO "setUseMap" $ prim__setUseMap (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : HTMLInputElement) -> JSIO String
  value a =   primToJSIO "value" $ prim__value (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  setValue a b =   primToJSIO "setValue" $ prim__setValue (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.valueAsDate"
  prim__valueAsDate : AnyPtr -> PrimIO AnyPtr

  export
  valueAsDate : (obj : HTMLInputElement) -> JSIO (Maybe JSObject)
  valueAsDate a =   primToJSIO "valueAsDate" $ prim__valueAsDate (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.valueAsDate  = v}"
  prim__setValueAsDate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValueAsDate : (obj : HTMLInputElement) -> (v : Maybe JSObject) -> JSIO ()
  setValueAsDate a b =
    primToJSIO "setValueAsDate" $ prim__setValueAsDate (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.valueAsNumber"
  prim__valueAsNumber : AnyPtr -> PrimIO AnyPtr

  export
  valueAsNumber : (obj : HTMLInputElement) -> JSIO Double
  valueAsNumber a =   primToJSIO "valueAsNumber" $ prim__valueAsNumber (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.valueAsNumber  = v}"
  prim__setValueAsNumber : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValueAsNumber : (obj : HTMLInputElement) -> (v : Double) -> JSIO ()
  setValueAsNumber a b =
    primToJSIO "setValueAsNumber" $ prim__setValueAsNumber (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : HTMLInputElement) -> JSIO UInt32
  width a =   primToJSIO "width" $ prim__width (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : HTMLInputElement) -> (v : UInt32) -> JSIO ()
  setWidth a b =   primToJSIO "setWidth" $ prim__setWidth (toJS a) (toJS b)

namespace HTMLLIElement
  
  public export
  JSType HTMLLIElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : HTMLLIElement) -> JSIO String
  type a =   primToJSIO "type" $ prim__type (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : HTMLLIElement) -> (v : String) -> JSIO ()
  setType a b =   primToJSIO "setType" $ prim__setType (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : HTMLLIElement) -> JSIO Int32
  value a =   primToJSIO "value" $ prim__value (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue : (obj : HTMLLIElement) -> (v : Int32) -> JSIO ()
  setValue a b =   primToJSIO "setValue" $ prim__setValue (toJS a) (toJS b)

namespace HTMLLabelElement
  
  public export
  JSType HTMLLabelElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.control"
  prim__control : AnyPtr -> PrimIO AnyPtr

  export
  control : (obj : HTMLLabelElement) -> JSIO (Maybe HTMLElement)
  control a =   primToJSIO "control" $ prim__control (toJS a)
  
  %foreign "browser:lambda:x=>x.form"
  prim__form : AnyPtr -> PrimIO AnyPtr

  export
  form : (obj : HTMLLabelElement) -> JSIO (Maybe HTMLFormElement)
  form a =   primToJSIO "form" $ prim__form (toJS a)
  
  %foreign "browser:lambda:x=>x.htmlFor"
  prim__htmlFor : AnyPtr -> PrimIO AnyPtr

  export
  htmlFor : (obj : HTMLLabelElement) -> JSIO String
  htmlFor a =   primToJSIO "htmlFor" $ prim__htmlFor (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.htmlFor  = v}"
  prim__setHtmlFor : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHtmlFor : (obj : HTMLLabelElement) -> (v : String) -> JSIO ()
  setHtmlFor a b =
    primToJSIO "setHtmlFor" $ prim__setHtmlFor (toJS a) (toJS b)

namespace HTMLLegendElement
  
  public export
  JSType HTMLLegendElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.form"
  prim__form : AnyPtr -> PrimIO AnyPtr

  export
  form : (obj : HTMLLegendElement) -> JSIO (Maybe HTMLFormElement)
  form a =   primToJSIO "form" $ prim__form (toJS a)
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  export
  align : (obj : HTMLLegendElement) -> JSIO String
  align a =   primToJSIO "align" $ prim__align (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.align  = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlign : (obj : HTMLLegendElement) -> (v : String) -> JSIO ()
  setAlign a b =   primToJSIO "setAlign" $ prim__setAlign (toJS a) (toJS b)

namespace HTMLLinkElement
  
  public export
  JSType HTMLLinkElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , LinkStyle
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.relList"
  prim__relList : AnyPtr -> PrimIO AnyPtr

  export
  relList : (obj : HTMLLinkElement) -> JSIO DOMTokenList
  relList a =   primToJSIO "relList" $ prim__relList (toJS a)
  
  %foreign "browser:lambda:x=>x.sizes"
  prim__sizes : AnyPtr -> PrimIO AnyPtr

  export
  sizes : (obj : HTMLLinkElement) -> JSIO DOMTokenList
  sizes a =   primToJSIO "sizes" $ prim__sizes (toJS a)
  
  %foreign "browser:lambda:x=>x.as"
  prim__as : AnyPtr -> PrimIO AnyPtr

  export
  as : (obj : HTMLLinkElement) -> JSIO String
  as a =   primToJSIO "as" $ prim__as (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.as  = v}"
  prim__setAs : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAs : (obj : HTMLLinkElement) -> (v : String) -> JSIO ()
  setAs a b =   primToJSIO "setAs" $ prim__setAs (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.charset"
  prim__charset : AnyPtr -> PrimIO AnyPtr

  export
  charset : (obj : HTMLLinkElement) -> JSIO String
  charset a =   primToJSIO "charset" $ prim__charset (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.charset  = v}"
  prim__setCharset : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCharset : (obj : HTMLLinkElement) -> (v : String) -> JSIO ()
  setCharset a b =
    primToJSIO "setCharset" $ prim__setCharset (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.crossOrigin"
  prim__crossOrigin : AnyPtr -> PrimIO AnyPtr

  export
  crossOrigin : (obj : HTMLLinkElement) -> JSIO (Maybe String)
  crossOrigin a =   primToJSIO "crossOrigin" $ prim__crossOrigin (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.crossOrigin  = v}"
  prim__setCrossOrigin : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCrossOrigin : (obj : HTMLLinkElement) -> (v : Maybe String) -> JSIO ()
  setCrossOrigin a b =
    primToJSIO "setCrossOrigin" $ prim__setCrossOrigin (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : AnyPtr -> PrimIO AnyPtr

  export
  disabled : (obj : HTMLLinkElement) -> JSIO Bool
  disabled a =   primToJSIO "disabled" $ prim__disabled (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.disabled  = v}"
  prim__setDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDisabled : (obj : HTMLLinkElement) -> (v : Bool) -> JSIO ()
  setDisabled a b =
    primToJSIO "setDisabled" $ prim__setDisabled (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.href"
  prim__href : AnyPtr -> PrimIO AnyPtr

  export
  href : (obj : HTMLLinkElement) -> JSIO String
  href a =   primToJSIO "href" $ prim__href (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.href  = v}"
  prim__setHref : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHref : (obj : HTMLLinkElement) -> (v : String) -> JSIO ()
  setHref a b =   primToJSIO "setHref" $ prim__setHref (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.hreflang"
  prim__hreflang : AnyPtr -> PrimIO AnyPtr

  export
  hreflang : (obj : HTMLLinkElement) -> JSIO String
  hreflang a =   primToJSIO "hreflang" $ prim__hreflang (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.hreflang  = v}"
  prim__setHreflang : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHreflang : (obj : HTMLLinkElement) -> (v : String) -> JSIO ()
  setHreflang a b =
    primToJSIO "setHreflang" $ prim__setHreflang (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.imageSizes"
  prim__imageSizes : AnyPtr -> PrimIO AnyPtr

  export
  imageSizes : (obj : HTMLLinkElement) -> JSIO String
  imageSizes a =   primToJSIO "imageSizes" $ prim__imageSizes (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.imageSizes  = v}"
  prim__setImageSizes : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setImageSizes : (obj : HTMLLinkElement) -> (v : String) -> JSIO ()
  setImageSizes a b =
    primToJSIO "setImageSizes" $ prim__setImageSizes (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.imageSrcset"
  prim__imageSrcset : AnyPtr -> PrimIO AnyPtr

  export
  imageSrcset : (obj : HTMLLinkElement) -> JSIO String
  imageSrcset a =   primToJSIO "imageSrcset" $ prim__imageSrcset (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.imageSrcset  = v}"
  prim__setImageSrcset : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setImageSrcset : (obj : HTMLLinkElement) -> (v : String) -> JSIO ()
  setImageSrcset a b =
    primToJSIO "setImageSrcset" $ prim__setImageSrcset (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.integrity"
  prim__integrity : AnyPtr -> PrimIO AnyPtr

  export
  integrity : (obj : HTMLLinkElement) -> JSIO String
  integrity a =   primToJSIO "integrity" $ prim__integrity (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.integrity  = v}"
  prim__setIntegrity : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIntegrity : (obj : HTMLLinkElement) -> (v : String) -> JSIO ()
  setIntegrity a b =
    primToJSIO "setIntegrity" $ prim__setIntegrity (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.media"
  prim__media : AnyPtr -> PrimIO AnyPtr

  export
  media : (obj : HTMLLinkElement) -> JSIO String
  media a =   primToJSIO "media" $ prim__media (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.media  = v}"
  prim__setMedia : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMedia : (obj : HTMLLinkElement) -> (v : String) -> JSIO ()
  setMedia a b =   primToJSIO "setMedia" $ prim__setMedia (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : AnyPtr -> PrimIO AnyPtr

  export
  referrerPolicy : (obj : HTMLLinkElement) -> JSIO String
  referrerPolicy a =
    primToJSIO "referrerPolicy" $ prim__referrerPolicy (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy  = v}"
  prim__setReferrerPolicy : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReferrerPolicy : (obj : HTMLLinkElement) -> (v : String) -> JSIO ()
  setReferrerPolicy a b =
    primToJSIO "setReferrerPolicy" $ prim__setReferrerPolicy (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.rel"
  prim__rel : AnyPtr -> PrimIO AnyPtr

  export
  rel : (obj : HTMLLinkElement) -> JSIO String
  rel a =   primToJSIO "rel" $ prim__rel (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.rel  = v}"
  prim__setRel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRel : (obj : HTMLLinkElement) -> (v : String) -> JSIO ()
  setRel a b =   primToJSIO "setRel" $ prim__setRel (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.rev"
  prim__rev : AnyPtr -> PrimIO AnyPtr

  export
  rev : (obj : HTMLLinkElement) -> JSIO String
  rev a =   primToJSIO "rev" $ prim__rev (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.rev  = v}"
  prim__setRev : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRev : (obj : HTMLLinkElement) -> (v : String) -> JSIO ()
  setRev a b =   primToJSIO "setRev" $ prim__setRev (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr

  export
  target : (obj : HTMLLinkElement) -> JSIO String
  target a =   primToJSIO "target" $ prim__target (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.target  = v}"
  prim__setTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTarget : (obj : HTMLLinkElement) -> (v : String) -> JSIO ()
  setTarget a b =   primToJSIO "setTarget" $ prim__setTarget (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : HTMLLinkElement) -> JSIO String
  type a =   primToJSIO "type" $ prim__type (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : HTMLLinkElement) -> (v : String) -> JSIO ()
  setType a b =   primToJSIO "setType" $ prim__setType (toJS a) (toJS b)

namespace HTMLMapElement
  
  public export
  JSType HTMLMapElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.areas"
  prim__areas : AnyPtr -> PrimIO AnyPtr

  export
  areas : (obj : HTMLMapElement) -> JSIO HTMLCollection
  areas a =   primToJSIO "areas" $ prim__areas (toJS a)
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : HTMLMapElement) -> JSIO String
  name a =   primToJSIO "name" $ prim__name (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : HTMLMapElement) -> (v : String) -> JSIO ()
  setName a b =   primToJSIO "setName" $ prim__setName (toJS a) (toJS b)

namespace HTMLMarqueeElement
  
  public export
  JSType HTMLMarqueeElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.behavior"
  prim__behavior : AnyPtr -> PrimIO AnyPtr

  export
  behavior : (obj : HTMLMarqueeElement) -> JSIO String
  behavior a =   primToJSIO "behavior" $ prim__behavior (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.behavior  = v}"
  prim__setBehavior : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBehavior : (obj : HTMLMarqueeElement) -> (v : String) -> JSIO ()
  setBehavior a b =
    primToJSIO "setBehavior" $ prim__setBehavior (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.bgColor"
  prim__bgColor : AnyPtr -> PrimIO AnyPtr

  export
  bgColor : (obj : HTMLMarqueeElement) -> JSIO String
  bgColor a =   primToJSIO "bgColor" $ prim__bgColor (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.bgColor  = v}"
  prim__setBgColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBgColor : (obj : HTMLMarqueeElement) -> (v : String) -> JSIO ()
  setBgColor a b =
    primToJSIO "setBgColor" $ prim__setBgColor (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.direction"
  prim__direction : AnyPtr -> PrimIO AnyPtr

  export
  direction : (obj : HTMLMarqueeElement) -> JSIO String
  direction a =   primToJSIO "direction" $ prim__direction (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.direction  = v}"
  prim__setDirection : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDirection : (obj : HTMLMarqueeElement) -> (v : String) -> JSIO ()
  setDirection a b =
    primToJSIO "setDirection" $ prim__setDirection (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : HTMLMarqueeElement) -> JSIO String
  height a =   primToJSIO "height" $ prim__height (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.height  = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeight : (obj : HTMLMarqueeElement) -> (v : String) -> JSIO ()
  setHeight a b =   primToJSIO "setHeight" $ prim__setHeight (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.hspace"
  prim__hspace : AnyPtr -> PrimIO AnyPtr

  export
  hspace : (obj : HTMLMarqueeElement) -> JSIO UInt32
  hspace a =   primToJSIO "hspace" $ prim__hspace (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.hspace  = v}"
  prim__setHspace : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHspace : (obj : HTMLMarqueeElement) -> (v : UInt32) -> JSIO ()
  setHspace a b =   primToJSIO "setHspace" $ prim__setHspace (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.loop"
  prim__loop : AnyPtr -> PrimIO AnyPtr

  export
  loop : (obj : HTMLMarqueeElement) -> JSIO Int32
  loop a =   primToJSIO "loop" $ prim__loop (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.loop  = v}"
  prim__setLoop : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLoop : (obj : HTMLMarqueeElement) -> (v : Int32) -> JSIO ()
  setLoop a b =   primToJSIO "setLoop" $ prim__setLoop (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.scrollAmount"
  prim__scrollAmount : AnyPtr -> PrimIO AnyPtr

  export
  scrollAmount : (obj : HTMLMarqueeElement) -> JSIO UInt32
  scrollAmount a =   primToJSIO "scrollAmount" $ prim__scrollAmount (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.scrollAmount  = v}"
  prim__setScrollAmount : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setScrollAmount : (obj : HTMLMarqueeElement) -> (v : UInt32) -> JSIO ()
  setScrollAmount a b =
    primToJSIO "setScrollAmount" $ prim__setScrollAmount (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.scrollDelay"
  prim__scrollDelay : AnyPtr -> PrimIO AnyPtr

  export
  scrollDelay : (obj : HTMLMarqueeElement) -> JSIO UInt32
  scrollDelay a =   primToJSIO "scrollDelay" $ prim__scrollDelay (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.scrollDelay  = v}"
  prim__setScrollDelay : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setScrollDelay : (obj : HTMLMarqueeElement) -> (v : UInt32) -> JSIO ()
  setScrollDelay a b =
    primToJSIO "setScrollDelay" $ prim__setScrollDelay (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.trueSpeed"
  prim__trueSpeed : AnyPtr -> PrimIO AnyPtr

  export
  trueSpeed : (obj : HTMLMarqueeElement) -> JSIO Bool
  trueSpeed a =   primToJSIO "trueSpeed" $ prim__trueSpeed (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.trueSpeed  = v}"
  prim__setTrueSpeed : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTrueSpeed : (obj : HTMLMarqueeElement) -> (v : Bool) -> JSIO ()
  setTrueSpeed a b =
    primToJSIO "setTrueSpeed" $ prim__setTrueSpeed (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.vspace"
  prim__vspace : AnyPtr -> PrimIO AnyPtr

  export
  vspace : (obj : HTMLMarqueeElement) -> JSIO UInt32
  vspace a =   primToJSIO "vspace" $ prim__vspace (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.vspace  = v}"
  prim__setVspace : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setVspace : (obj : HTMLMarqueeElement) -> (v : UInt32) -> JSIO ()
  setVspace a b =   primToJSIO "setVspace" $ prim__setVspace (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : HTMLMarqueeElement) -> JSIO String
  width a =   primToJSIO "width" $ prim__width (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : HTMLMarqueeElement) -> (v : String) -> JSIO ()
  setWidth a b =   primToJSIO "setWidth" $ prim__setWidth (toJS a) (toJS b)

namespace HTMLMediaElement
  
  public export
  JSType HTMLMediaElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  public export
  HAVE_CURRENT_DATA : UInt16
  HAVE_CURRENT_DATA = 2
  
  public export
  HAVE_ENOUGH_DATA : UInt16
  HAVE_ENOUGH_DATA = 4
  
  public export
  HAVE_FUTURE_DATA : UInt16
  HAVE_FUTURE_DATA = 3
  
  public export
  HAVE_METADATA : UInt16
  HAVE_METADATA = 1
  
  public export
  HAVE_NOTHING : UInt16
  HAVE_NOTHING = 0o0
  
  public export
  NETWORK_EMPTY : UInt16
  NETWORK_EMPTY = 0o0
  
  public export
  NETWORK_IDLE : UInt16
  NETWORK_IDLE = 1
  
  public export
  NETWORK_LOADING : UInt16
  NETWORK_LOADING = 2
  
  public export
  NETWORK_NO_SOURCE : UInt16
  NETWORK_NO_SOURCE = 3
  
  %foreign "browser:lambda:x=>x.audioTracks"
  prim__audioTracks : AnyPtr -> PrimIO AnyPtr

  export
  audioTracks : (obj : HTMLMediaElement) -> JSIO AudioTrackList
  audioTracks a =   primToJSIO "audioTracks" $ prim__audioTracks (toJS a)
  
  %foreign "browser:lambda:x=>x.buffered"
  prim__buffered : AnyPtr -> PrimIO AnyPtr

  export
  buffered : (obj : HTMLMediaElement) -> JSIO TimeRanges
  buffered a =   primToJSIO "buffered" $ prim__buffered (toJS a)
  
  %foreign "browser:lambda:x=>x.currentSrc"
  prim__currentSrc : AnyPtr -> PrimIO AnyPtr

  export
  currentSrc : (obj : HTMLMediaElement) -> JSIO String
  currentSrc a =   primToJSIO "currentSrc" $ prim__currentSrc (toJS a)
  
  %foreign "browser:lambda:x=>x.duration"
  prim__duration : AnyPtr -> PrimIO AnyPtr

  export
  duration : (obj : HTMLMediaElement) -> JSIO Double
  duration a =   primToJSIO "duration" $ prim__duration (toJS a)
  
  %foreign "browser:lambda:x=>x.ended"
  prim__ended : AnyPtr -> PrimIO AnyPtr

  export
  ended : (obj : HTMLMediaElement) -> JSIO Bool
  ended a =   primToJSIO "ended" $ prim__ended (toJS a)
  
  %foreign "browser:lambda:x=>x.error"
  prim__error : AnyPtr -> PrimIO AnyPtr

  export
  error : (obj : HTMLMediaElement) -> JSIO (Maybe MediaError)
  error a =   primToJSIO "error" $ prim__error (toJS a)
  
  %foreign "browser:lambda:x=>x.networkState"
  prim__networkState : AnyPtr -> PrimIO AnyPtr

  export
  networkState : (obj : HTMLMediaElement) -> JSIO UInt16
  networkState a =   primToJSIO "networkState" $ prim__networkState (toJS a)
  
  %foreign "browser:lambda:x=>x.paused"
  prim__paused : AnyPtr -> PrimIO AnyPtr

  export
  paused : (obj : HTMLMediaElement) -> JSIO Bool
  paused a =   primToJSIO "paused" $ prim__paused (toJS a)
  
  %foreign "browser:lambda:x=>x.played"
  prim__played : AnyPtr -> PrimIO AnyPtr

  export
  played : (obj : HTMLMediaElement) -> JSIO TimeRanges
  played a =   primToJSIO "played" $ prim__played (toJS a)
  
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : AnyPtr -> PrimIO AnyPtr

  export
  readyState : (obj : HTMLMediaElement) -> JSIO UInt16
  readyState a =   primToJSIO "readyState" $ prim__readyState (toJS a)
  
  %foreign "browser:lambda:x=>x.seekable"
  prim__seekable : AnyPtr -> PrimIO AnyPtr

  export
  seekable : (obj : HTMLMediaElement) -> JSIO TimeRanges
  seekable a =   primToJSIO "seekable" $ prim__seekable (toJS a)
  
  %foreign "browser:lambda:x=>x.seeking"
  prim__seeking : AnyPtr -> PrimIO AnyPtr

  export
  seeking : (obj : HTMLMediaElement) -> JSIO Bool
  seeking a =   primToJSIO "seeking" $ prim__seeking (toJS a)
  
  %foreign "browser:lambda:x=>x.textTracks"
  prim__textTracks : AnyPtr -> PrimIO AnyPtr

  export
  textTracks : (obj : HTMLMediaElement) -> JSIO TextTrackList
  textTracks a =   primToJSIO "textTracks" $ prim__textTracks (toJS a)
  
  %foreign "browser:lambda:x=>x.videoTracks"
  prim__videoTracks : AnyPtr -> PrimIO AnyPtr

  export
  videoTracks : (obj : HTMLMediaElement) -> JSIO VideoTrackList
  videoTracks a =   primToJSIO "videoTracks" $ prim__videoTracks (toJS a)
  
  %foreign "browser:lambda:x=>x.autoplay"
  prim__autoplay : AnyPtr -> PrimIO AnyPtr

  export
  autoplay : (obj : HTMLMediaElement) -> JSIO Bool
  autoplay a =   primToJSIO "autoplay" $ prim__autoplay (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.autoplay  = v}"
  prim__setAutoplay : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAutoplay : (obj : HTMLMediaElement) -> (v : Bool) -> JSIO ()
  setAutoplay a b =
    primToJSIO "setAutoplay" $ prim__setAutoplay (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.controls"
  prim__controls : AnyPtr -> PrimIO AnyPtr

  export
  controls : (obj : HTMLMediaElement) -> JSIO Bool
  controls a =   primToJSIO "controls" $ prim__controls (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.controls  = v}"
  prim__setControls : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setControls : (obj : HTMLMediaElement) -> (v : Bool) -> JSIO ()
  setControls a b =
    primToJSIO "setControls" $ prim__setControls (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.crossOrigin"
  prim__crossOrigin : AnyPtr -> PrimIO AnyPtr

  export
  crossOrigin : (obj : HTMLMediaElement) -> JSIO (Maybe String)
  crossOrigin a =   primToJSIO "crossOrigin" $ prim__crossOrigin (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.crossOrigin  = v}"
  prim__setCrossOrigin : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCrossOrigin : (obj : HTMLMediaElement) -> (v : Maybe String) -> JSIO ()
  setCrossOrigin a b =
    primToJSIO "setCrossOrigin" $ prim__setCrossOrigin (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.currentTime"
  prim__currentTime : AnyPtr -> PrimIO AnyPtr

  export
  currentTime : (obj : HTMLMediaElement) -> JSIO Double
  currentTime a =   primToJSIO "currentTime" $ prim__currentTime (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.currentTime  = v}"
  prim__setCurrentTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCurrentTime : (obj : HTMLMediaElement) -> (v : Double) -> JSIO ()
  setCurrentTime a b =
    primToJSIO "setCurrentTime" $ prim__setCurrentTime (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.defaultMuted"
  prim__defaultMuted : AnyPtr -> PrimIO AnyPtr

  export
  defaultMuted : (obj : HTMLMediaElement) -> JSIO Bool
  defaultMuted a =   primToJSIO "defaultMuted" $ prim__defaultMuted (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.defaultMuted  = v}"
  prim__setDefaultMuted : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDefaultMuted : (obj : HTMLMediaElement) -> (v : Bool) -> JSIO ()
  setDefaultMuted a b =
    primToJSIO "setDefaultMuted" $ prim__setDefaultMuted (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.defaultPlaybackRate"
  prim__defaultPlaybackRate : AnyPtr -> PrimIO AnyPtr

  export
  defaultPlaybackRate : (obj : HTMLMediaElement) -> JSIO Double
  defaultPlaybackRate a =
    primToJSIO "defaultPlaybackRate" $ prim__defaultPlaybackRate (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.defaultPlaybackRate  = v}"
  prim__setDefaultPlaybackRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDefaultPlaybackRate : (obj : HTMLMediaElement) -> (v : Double) -> JSIO ()
  setDefaultPlaybackRate a b =
    primToJSIO "setDefaultPlaybackRate" $ prim__setDefaultPlaybackRate (toJS a)
                                                                       (toJS b)
  
  %foreign "browser:lambda:x=>x.loop"
  prim__loop : AnyPtr -> PrimIO AnyPtr

  export
  loop : (obj : HTMLMediaElement) -> JSIO Bool
  loop a =   primToJSIO "loop" $ prim__loop (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.loop  = v}"
  prim__setLoop : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLoop : (obj : HTMLMediaElement) -> (v : Bool) -> JSIO ()
  setLoop a b =   primToJSIO "setLoop" $ prim__setLoop (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.muted"
  prim__muted : AnyPtr -> PrimIO AnyPtr

  export
  muted : (obj : HTMLMediaElement) -> JSIO Bool
  muted a =   primToJSIO "muted" $ prim__muted (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.muted  = v}"
  prim__setMuted : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMuted : (obj : HTMLMediaElement) -> (v : Bool) -> JSIO ()
  setMuted a b =   primToJSIO "setMuted" $ prim__setMuted (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.playbackRate"
  prim__playbackRate : AnyPtr -> PrimIO AnyPtr

  export
  playbackRate : (obj : HTMLMediaElement) -> JSIO Double
  playbackRate a =   primToJSIO "playbackRate" $ prim__playbackRate (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.playbackRate  = v}"
  prim__setPlaybackRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPlaybackRate : (obj : HTMLMediaElement) -> (v : Double) -> JSIO ()
  setPlaybackRate a b =
    primToJSIO "setPlaybackRate" $ prim__setPlaybackRate (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.preload"
  prim__preload : AnyPtr -> PrimIO AnyPtr

  export
  preload : (obj : HTMLMediaElement) -> JSIO String
  preload a =   primToJSIO "preload" $ prim__preload (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.preload  = v}"
  prim__setPreload : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPreload : (obj : HTMLMediaElement) -> (v : String) -> JSIO ()
  setPreload a b =
    primToJSIO "setPreload" $ prim__setPreload (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.preservesPitch"
  prim__preservesPitch : AnyPtr -> PrimIO AnyPtr

  export
  preservesPitch : (obj : HTMLMediaElement) -> JSIO Bool
  preservesPitch a =
    primToJSIO "preservesPitch" $ prim__preservesPitch (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.preservesPitch  = v}"
  prim__setPreservesPitch : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPreservesPitch : (obj : HTMLMediaElement) -> (v : Bool) -> JSIO ()
  setPreservesPitch a b =
    primToJSIO "setPreservesPitch" $ prim__setPreservesPitch (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.src"
  prim__src : AnyPtr -> PrimIO AnyPtr

  export
  src : (obj : HTMLMediaElement) -> JSIO String
  src a =   primToJSIO "src" $ prim__src (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.src  = v}"
  prim__setSrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSrc : (obj : HTMLMediaElement) -> (v : String) -> JSIO ()
  setSrc a b =   primToJSIO "setSrc" $ prim__setSrc (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.srcObject"
  prim__srcObject : AnyPtr -> PrimIO AnyPtr

  export
  srcObject : (obj : HTMLMediaElement) -> JSIO (Maybe MediaProvider)
  srcObject a =   primToJSIO "srcObject" $ prim__srcObject (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.srcObject  = v}"
  prim__setSrcObject : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSrcObject :  (obj : HTMLMediaElement)
               -> (v : Maybe MediaProvider)
               -> JSIO ()
  setSrcObject a b =
    primToJSIO "setSrcObject" $ prim__setSrcObject (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.volume"
  prim__volume : AnyPtr -> PrimIO AnyPtr

  export
  volume : (obj : HTMLMediaElement) -> JSIO Double
  volume a =   primToJSIO "volume" $ prim__volume (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.volume  = v}"
  prim__setVolume : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setVolume : (obj : HTMLMediaElement) -> (v : Double) -> JSIO ()
  setVolume a b =   primToJSIO "setVolume" $ prim__setVolume (toJS a) (toJS b)

namespace HTMLMenuElement
  
  public export
  JSType HTMLMenuElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.compact"
  prim__compact : AnyPtr -> PrimIO AnyPtr

  export
  compact : (obj : HTMLMenuElement) -> JSIO Bool
  compact a =   primToJSIO "compact" $ prim__compact (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.compact  = v}"
  prim__setCompact : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCompact : (obj : HTMLMenuElement) -> (v : Bool) -> JSIO ()
  setCompact a b =
    primToJSIO "setCompact" $ prim__setCompact (toJS a) (toJS b)

namespace HTMLMetaElement
  
  public export
  JSType HTMLMetaElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.content"
  prim__content : AnyPtr -> PrimIO AnyPtr

  export
  content : (obj : HTMLMetaElement) -> JSIO String
  content a =   primToJSIO "content" $ prim__content (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.content  = v}"
  prim__setContent : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setContent : (obj : HTMLMetaElement) -> (v : String) -> JSIO ()
  setContent a b =
    primToJSIO "setContent" $ prim__setContent (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.httpEquiv"
  prim__httpEquiv : AnyPtr -> PrimIO AnyPtr

  export
  httpEquiv : (obj : HTMLMetaElement) -> JSIO String
  httpEquiv a =   primToJSIO "httpEquiv" $ prim__httpEquiv (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.httpEquiv  = v}"
  prim__setHttpEquiv : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHttpEquiv : (obj : HTMLMetaElement) -> (v : String) -> JSIO ()
  setHttpEquiv a b =
    primToJSIO "setHttpEquiv" $ prim__setHttpEquiv (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : HTMLMetaElement) -> JSIO String
  name a =   primToJSIO "name" $ prim__name (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : HTMLMetaElement) -> (v : String) -> JSIO ()
  setName a b =   primToJSIO "setName" $ prim__setName (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.scheme"
  prim__scheme : AnyPtr -> PrimIO AnyPtr

  export
  scheme : (obj : HTMLMetaElement) -> JSIO String
  scheme a =   primToJSIO "scheme" $ prim__scheme (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.scheme  = v}"
  prim__setScheme : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setScheme : (obj : HTMLMetaElement) -> (v : String) -> JSIO ()
  setScheme a b =   primToJSIO "setScheme" $ prim__setScheme (toJS a) (toJS b)

namespace HTMLMeterElement
  
  public export
  JSType HTMLMeterElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.labels"
  prim__labels : AnyPtr -> PrimIO AnyPtr

  export
  labels : (obj : HTMLMeterElement) -> JSIO NodeList
  labels a =   primToJSIO "labels" $ prim__labels (toJS a)
  
  %foreign "browser:lambda:x=>x.high"
  prim__high : AnyPtr -> PrimIO AnyPtr

  export
  high : (obj : HTMLMeterElement) -> JSIO Double
  high a =   primToJSIO "high" $ prim__high (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.high  = v}"
  prim__setHigh : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHigh : (obj : HTMLMeterElement) -> (v : Double) -> JSIO ()
  setHigh a b =   primToJSIO "setHigh" $ prim__setHigh (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.low"
  prim__low : AnyPtr -> PrimIO AnyPtr

  export
  low : (obj : HTMLMeterElement) -> JSIO Double
  low a =   primToJSIO "low" $ prim__low (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.low  = v}"
  prim__setLow : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLow : (obj : HTMLMeterElement) -> (v : Double) -> JSIO ()
  setLow a b =   primToJSIO "setLow" $ prim__setLow (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.max"
  prim__max : AnyPtr -> PrimIO AnyPtr

  export
  max : (obj : HTMLMeterElement) -> JSIO Double
  max a =   primToJSIO "max" $ prim__max (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.max  = v}"
  prim__setMax : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMax : (obj : HTMLMeterElement) -> (v : Double) -> JSIO ()
  setMax a b =   primToJSIO "setMax" $ prim__setMax (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.min"
  prim__min : AnyPtr -> PrimIO AnyPtr

  export
  min : (obj : HTMLMeterElement) -> JSIO Double
  min a =   primToJSIO "min" $ prim__min (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.min  = v}"
  prim__setMin : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMin : (obj : HTMLMeterElement) -> (v : Double) -> JSIO ()
  setMin a b =   primToJSIO "setMin" $ prim__setMin (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.optimum"
  prim__optimum : AnyPtr -> PrimIO AnyPtr

  export
  optimum : (obj : HTMLMeterElement) -> JSIO Double
  optimum a =   primToJSIO "optimum" $ prim__optimum (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.optimum  = v}"
  prim__setOptimum : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOptimum : (obj : HTMLMeterElement) -> (v : Double) -> JSIO ()
  setOptimum a b =
    primToJSIO "setOptimum" $ prim__setOptimum (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : HTMLMeterElement) -> JSIO Double
  value a =   primToJSIO "value" $ prim__value (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue : (obj : HTMLMeterElement) -> (v : Double) -> JSIO ()
  setValue a b =   primToJSIO "setValue" $ prim__setValue (toJS a) (toJS b)

namespace HTMLModElement
  
  public export
  JSType HTMLModElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.cite"
  prim__cite : AnyPtr -> PrimIO AnyPtr

  export
  cite : (obj : HTMLModElement) -> JSIO String
  cite a =   primToJSIO "cite" $ prim__cite (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.cite  = v}"
  prim__setCite : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCite : (obj : HTMLModElement) -> (v : String) -> JSIO ()
  setCite a b =   primToJSIO "setCite" $ prim__setCite (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.dateTime"
  prim__dateTime : AnyPtr -> PrimIO AnyPtr

  export
  dateTime : (obj : HTMLModElement) -> JSIO String
  dateTime a =   primToJSIO "dateTime" $ prim__dateTime (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.dateTime  = v}"
  prim__setDateTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDateTime : (obj : HTMLModElement) -> (v : String) -> JSIO ()
  setDateTime a b =
    primToJSIO "setDateTime" $ prim__setDateTime (toJS a) (toJS b)

namespace HTMLOListElement
  
  public export
  JSType HTMLOListElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.compact"
  prim__compact : AnyPtr -> PrimIO AnyPtr

  export
  compact : (obj : HTMLOListElement) -> JSIO Bool
  compact a =   primToJSIO "compact" $ prim__compact (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.compact  = v}"
  prim__setCompact : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCompact : (obj : HTMLOListElement) -> (v : Bool) -> JSIO ()
  setCompact a b =
    primToJSIO "setCompact" $ prim__setCompact (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.reversed"
  prim__reversed : AnyPtr -> PrimIO AnyPtr

  export
  reversed : (obj : HTMLOListElement) -> JSIO Bool
  reversed a =   primToJSIO "reversed" $ prim__reversed (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.reversed  = v}"
  prim__setReversed : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReversed : (obj : HTMLOListElement) -> (v : Bool) -> JSIO ()
  setReversed a b =
    primToJSIO "setReversed" $ prim__setReversed (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.start"
  prim__start : AnyPtr -> PrimIO AnyPtr

  export
  start : (obj : HTMLOListElement) -> JSIO Int32
  start a =   primToJSIO "start" $ prim__start (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.start  = v}"
  prim__setStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStart : (obj : HTMLOListElement) -> (v : Int32) -> JSIO ()
  setStart a b =   primToJSIO "setStart" $ prim__setStart (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : HTMLOListElement) -> JSIO String
  type a =   primToJSIO "type" $ prim__type (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : HTMLOListElement) -> (v : String) -> JSIO ()
  setType a b =   primToJSIO "setType" $ prim__setType (toJS a) (toJS b)

namespace HTMLObjectElement
  
  public export
  JSType HTMLObjectElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.contentDocument"
  prim__contentDocument : AnyPtr -> PrimIO AnyPtr

  export
  contentDocument : (obj : HTMLObjectElement) -> JSIO (Maybe Document)
  contentDocument a =
    primToJSIO "contentDocument" $ prim__contentDocument (toJS a)
  
  %foreign "browser:lambda:x=>x.contentWindow"
  prim__contentWindow : AnyPtr -> PrimIO AnyPtr

  export
  contentWindow : (obj : HTMLObjectElement) -> JSIO (Maybe WindowProxy)
  contentWindow a =   primToJSIO "contentWindow" $ prim__contentWindow (toJS a)
  
  %foreign "browser:lambda:x=>x.form"
  prim__form : AnyPtr -> PrimIO AnyPtr

  export
  form : (obj : HTMLObjectElement) -> JSIO (Maybe HTMLFormElement)
  form a =   primToJSIO "form" $ prim__form (toJS a)
  
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : AnyPtr -> PrimIO AnyPtr

  export
  validationMessage : (obj : HTMLObjectElement) -> JSIO String
  validationMessage a =
    primToJSIO "validationMessage" $ prim__validationMessage (toJS a)
  
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : AnyPtr -> PrimIO AnyPtr

  export
  validity : (obj : HTMLObjectElement) -> JSIO ValidityState
  validity a =   primToJSIO "validity" $ prim__validity (toJS a)
  
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : AnyPtr -> PrimIO AnyPtr

  export
  willValidate : (obj : HTMLObjectElement) -> JSIO Bool
  willValidate a =   primToJSIO "willValidate" $ prim__willValidate (toJS a)
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  export
  align : (obj : HTMLObjectElement) -> JSIO String
  align a =   primToJSIO "align" $ prim__align (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.align  = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlign : (obj : HTMLObjectElement) -> (v : String) -> JSIO ()
  setAlign a b =   primToJSIO "setAlign" $ prim__setAlign (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.archive"
  prim__archive : AnyPtr -> PrimIO AnyPtr

  export
  archive : (obj : HTMLObjectElement) -> JSIO String
  archive a =   primToJSIO "archive" $ prim__archive (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.archive  = v}"
  prim__setArchive : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setArchive : (obj : HTMLObjectElement) -> (v : String) -> JSIO ()
  setArchive a b =
    primToJSIO "setArchive" $ prim__setArchive (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.border"
  prim__border : AnyPtr -> PrimIO AnyPtr

  export
  border : (obj : HTMLObjectElement) -> JSIO String
  border a =   primToJSIO "border" $ prim__border (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.border  = v}"
  prim__setBorder : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBorder : (obj : HTMLObjectElement) -> (v : String) -> JSIO ()
  setBorder a b =   primToJSIO "setBorder" $ prim__setBorder (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.code"
  prim__code : AnyPtr -> PrimIO AnyPtr

  export
  code : (obj : HTMLObjectElement) -> JSIO String
  code a =   primToJSIO "code" $ prim__code (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.code  = v}"
  prim__setCode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCode : (obj : HTMLObjectElement) -> (v : String) -> JSIO ()
  setCode a b =   primToJSIO "setCode" $ prim__setCode (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.codeBase"
  prim__codeBase : AnyPtr -> PrimIO AnyPtr

  export
  codeBase : (obj : HTMLObjectElement) -> JSIO String
  codeBase a =   primToJSIO "codeBase" $ prim__codeBase (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.codeBase  = v}"
  prim__setCodeBase : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCodeBase : (obj : HTMLObjectElement) -> (v : String) -> JSIO ()
  setCodeBase a b =
    primToJSIO "setCodeBase" $ prim__setCodeBase (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.codeType"
  prim__codeType : AnyPtr -> PrimIO AnyPtr

  export
  codeType : (obj : HTMLObjectElement) -> JSIO String
  codeType a =   primToJSIO "codeType" $ prim__codeType (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.codeType  = v}"
  prim__setCodeType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCodeType : (obj : HTMLObjectElement) -> (v : String) -> JSIO ()
  setCodeType a b =
    primToJSIO "setCodeType" $ prim__setCodeType (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.data"
  prim__data_ : AnyPtr -> PrimIO AnyPtr

  export
  data_ : (obj : HTMLObjectElement) -> JSIO String
  data_ a =   primToJSIO "data_" $ prim__data_ (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.data  = v}"
  prim__setData : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setData : (obj : HTMLObjectElement) -> (v : String) -> JSIO ()
  setData a b =   primToJSIO "setData" $ prim__setData (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.declare"
  prim__declare : AnyPtr -> PrimIO AnyPtr

  export
  declare : (obj : HTMLObjectElement) -> JSIO Bool
  declare a =   primToJSIO "declare" $ prim__declare (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.declare  = v}"
  prim__setDeclare : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDeclare : (obj : HTMLObjectElement) -> (v : Bool) -> JSIO ()
  setDeclare a b =
    primToJSIO "setDeclare" $ prim__setDeclare (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : HTMLObjectElement) -> JSIO String
  height a =   primToJSIO "height" $ prim__height (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.height  = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeight : (obj : HTMLObjectElement) -> (v : String) -> JSIO ()
  setHeight a b =   primToJSIO "setHeight" $ prim__setHeight (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.hspace"
  prim__hspace : AnyPtr -> PrimIO AnyPtr

  export
  hspace : (obj : HTMLObjectElement) -> JSIO UInt32
  hspace a =   primToJSIO "hspace" $ prim__hspace (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.hspace  = v}"
  prim__setHspace : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHspace : (obj : HTMLObjectElement) -> (v : UInt32) -> JSIO ()
  setHspace a b =   primToJSIO "setHspace" $ prim__setHspace (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : HTMLObjectElement) -> JSIO String
  name a =   primToJSIO "name" $ prim__name (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : HTMLObjectElement) -> (v : String) -> JSIO ()
  setName a b =   primToJSIO "setName" $ prim__setName (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.standby"
  prim__standby : AnyPtr -> PrimIO AnyPtr

  export
  standby : (obj : HTMLObjectElement) -> JSIO String
  standby a =   primToJSIO "standby" $ prim__standby (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.standby  = v}"
  prim__setStandby : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStandby : (obj : HTMLObjectElement) -> (v : String) -> JSIO ()
  setStandby a b =
    primToJSIO "setStandby" $ prim__setStandby (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : HTMLObjectElement) -> JSIO String
  type a =   primToJSIO "type" $ prim__type (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : HTMLObjectElement) -> (v : String) -> JSIO ()
  setType a b =   primToJSIO "setType" $ prim__setType (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.useMap"
  prim__useMap : AnyPtr -> PrimIO AnyPtr

  export
  useMap : (obj : HTMLObjectElement) -> JSIO String
  useMap a =   primToJSIO "useMap" $ prim__useMap (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.useMap  = v}"
  prim__setUseMap : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setUseMap : (obj : HTMLObjectElement) -> (v : String) -> JSIO ()
  setUseMap a b =   primToJSIO "setUseMap" $ prim__setUseMap (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.vspace"
  prim__vspace : AnyPtr -> PrimIO AnyPtr

  export
  vspace : (obj : HTMLObjectElement) -> JSIO UInt32
  vspace a =   primToJSIO "vspace" $ prim__vspace (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.vspace  = v}"
  prim__setVspace : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setVspace : (obj : HTMLObjectElement) -> (v : UInt32) -> JSIO ()
  setVspace a b =   primToJSIO "setVspace" $ prim__setVspace (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : HTMLObjectElement) -> JSIO String
  width a =   primToJSIO "width" $ prim__width (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : HTMLObjectElement) -> (v : String) -> JSIO ()
  setWidth a b =   primToJSIO "setWidth" $ prim__setWidth (toJS a) (toJS b)

namespace HTMLOptGroupElement
  
  public export
  JSType HTMLOptGroupElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : AnyPtr -> PrimIO AnyPtr

  export
  disabled : (obj : HTMLOptGroupElement) -> JSIO Bool
  disabled a =   primToJSIO "disabled" $ prim__disabled (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.disabled  = v}"
  prim__setDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDisabled : (obj : HTMLOptGroupElement) -> (v : Bool) -> JSIO ()
  setDisabled a b =
    primToJSIO "setDisabled" $ prim__setDisabled (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.label"
  prim__label : AnyPtr -> PrimIO AnyPtr

  export
  label : (obj : HTMLOptGroupElement) -> JSIO String
  label a =   primToJSIO "label" $ prim__label (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.label  = v}"
  prim__setLabel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLabel : (obj : HTMLOptGroupElement) -> (v : String) -> JSIO ()
  setLabel a b =   primToJSIO "setLabel" $ prim__setLabel (toJS a) (toJS b)

namespace HTMLOptionElement
  
  public export
  JSType HTMLOptionElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.form"
  prim__form : AnyPtr -> PrimIO AnyPtr

  export
  form : (obj : HTMLOptionElement) -> JSIO (Maybe HTMLFormElement)
  form a =   primToJSIO "form" $ prim__form (toJS a)
  
  %foreign "browser:lambda:x=>x.index"
  prim__index : AnyPtr -> PrimIO AnyPtr

  export
  index : (obj : HTMLOptionElement) -> JSIO Int32
  index a =   primToJSIO "index" $ prim__index (toJS a)
  
  %foreign "browser:lambda:x=>x.defaultSelected"
  prim__defaultSelected : AnyPtr -> PrimIO AnyPtr

  export
  defaultSelected : (obj : HTMLOptionElement) -> JSIO Bool
  defaultSelected a =
    primToJSIO "defaultSelected" $ prim__defaultSelected (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.defaultSelected  = v}"
  prim__setDefaultSelected : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDefaultSelected : (obj : HTMLOptionElement) -> (v : Bool) -> JSIO ()
  setDefaultSelected a b =
    primToJSIO "setDefaultSelected" $ prim__setDefaultSelected (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : AnyPtr -> PrimIO AnyPtr

  export
  disabled : (obj : HTMLOptionElement) -> JSIO Bool
  disabled a =   primToJSIO "disabled" $ prim__disabled (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.disabled  = v}"
  prim__setDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDisabled : (obj : HTMLOptionElement) -> (v : Bool) -> JSIO ()
  setDisabled a b =
    primToJSIO "setDisabled" $ prim__setDisabled (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.label"
  prim__label : AnyPtr -> PrimIO AnyPtr

  export
  label : (obj : HTMLOptionElement) -> JSIO String
  label a =   primToJSIO "label" $ prim__label (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.label  = v}"
  prim__setLabel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLabel : (obj : HTMLOptionElement) -> (v : String) -> JSIO ()
  setLabel a b =   primToJSIO "setLabel" $ prim__setLabel (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.selected"
  prim__selected : AnyPtr -> PrimIO AnyPtr

  export
  selected : (obj : HTMLOptionElement) -> JSIO Bool
  selected a =   primToJSIO "selected" $ prim__selected (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.selected  = v}"
  prim__setSelected : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSelected : (obj : HTMLOptionElement) -> (v : Bool) -> JSIO ()
  setSelected a b =
    primToJSIO "setSelected" $ prim__setSelected (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.text"
  prim__text : AnyPtr -> PrimIO AnyPtr

  export
  text : (obj : HTMLOptionElement) -> JSIO String
  text a =   primToJSIO "text" $ prim__text (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.text  = v}"
  prim__setText : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setText : (obj : HTMLOptionElement) -> (v : String) -> JSIO ()
  setText a b =   primToJSIO "setText" $ prim__setText (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : HTMLOptionElement) -> JSIO String
  value a =   primToJSIO "value" $ prim__value (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue : (obj : HTMLOptionElement) -> (v : String) -> JSIO ()
  setValue a b =   primToJSIO "setValue" $ prim__setValue (toJS a) (toJS b)

namespace HTMLOptionsCollection
  
  public export
  JSType HTMLOptionsCollection where
    parents =  [ HTMLCollection , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : HTMLOptionsCollection) -> JSIO UInt32
  length a =   primToJSIO "length" $ prim__length (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.length  = v}"
  prim__setLength : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLength : (obj : HTMLOptionsCollection) -> (v : UInt32) -> JSIO ()
  setLength a b =   primToJSIO "setLength" $ prim__setLength (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.selectedIndex"
  prim__selectedIndex : AnyPtr -> PrimIO AnyPtr

  export
  selectedIndex : (obj : HTMLOptionsCollection) -> JSIO Int32
  selectedIndex a =   primToJSIO "selectedIndex" $ prim__selectedIndex (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.selectedIndex  = v}"
  prim__setSelectedIndex : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSelectedIndex : (obj : HTMLOptionsCollection) -> (v : Int32) -> JSIO ()
  setSelectedIndex a b =
    primToJSIO "setSelectedIndex" $ prim__setSelectedIndex (toJS a) (toJS b)

namespace HTMLOutputElement
  
  public export
  JSType HTMLOutputElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.form"
  prim__form : AnyPtr -> PrimIO AnyPtr

  export
  form : (obj : HTMLOutputElement) -> JSIO (Maybe HTMLFormElement)
  form a =   primToJSIO "form" $ prim__form (toJS a)
  
  %foreign "browser:lambda:x=>x.htmlFor"
  prim__htmlFor : AnyPtr -> PrimIO AnyPtr

  export
  htmlFor : (obj : HTMLOutputElement) -> JSIO DOMTokenList
  htmlFor a =   primToJSIO "htmlFor" $ prim__htmlFor (toJS a)
  
  %foreign "browser:lambda:x=>x.labels"
  prim__labels : AnyPtr -> PrimIO AnyPtr

  export
  labels : (obj : HTMLOutputElement) -> JSIO NodeList
  labels a =   primToJSIO "labels" $ prim__labels (toJS a)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : HTMLOutputElement) -> JSIO String
  type a =   primToJSIO "type" $ prim__type (toJS a)
  
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : AnyPtr -> PrimIO AnyPtr

  export
  validationMessage : (obj : HTMLOutputElement) -> JSIO String
  validationMessage a =
    primToJSIO "validationMessage" $ prim__validationMessage (toJS a)
  
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : AnyPtr -> PrimIO AnyPtr

  export
  validity : (obj : HTMLOutputElement) -> JSIO ValidityState
  validity a =   primToJSIO "validity" $ prim__validity (toJS a)
  
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : AnyPtr -> PrimIO AnyPtr

  export
  willValidate : (obj : HTMLOutputElement) -> JSIO Bool
  willValidate a =   primToJSIO "willValidate" $ prim__willValidate (toJS a)
  
  %foreign "browser:lambda:x=>x.defaultValue"
  prim__defaultValue : AnyPtr -> PrimIO AnyPtr

  export
  defaultValue : (obj : HTMLOutputElement) -> JSIO String
  defaultValue a =   primToJSIO "defaultValue" $ prim__defaultValue (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.defaultValue  = v}"
  prim__setDefaultValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDefaultValue : (obj : HTMLOutputElement) -> (v : String) -> JSIO ()
  setDefaultValue a b =
    primToJSIO "setDefaultValue" $ prim__setDefaultValue (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : HTMLOutputElement) -> JSIO String
  name a =   primToJSIO "name" $ prim__name (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : HTMLOutputElement) -> (v : String) -> JSIO ()
  setName a b =   primToJSIO "setName" $ prim__setName (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : HTMLOutputElement) -> JSIO String
  value a =   primToJSIO "value" $ prim__value (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue : (obj : HTMLOutputElement) -> (v : String) -> JSIO ()
  setValue a b =   primToJSIO "setValue" $ prim__setValue (toJS a) (toJS b)

namespace HTMLParagraphElement
  
  public export
  JSType HTMLParagraphElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  export
  align : (obj : HTMLParagraphElement) -> JSIO String
  align a =   primToJSIO "align" $ prim__align (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.align  = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlign : (obj : HTMLParagraphElement) -> (v : String) -> JSIO ()
  setAlign a b =   primToJSIO "setAlign" $ prim__setAlign (toJS a) (toJS b)

namespace HTMLParamElement
  
  public export
  JSType HTMLParamElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : HTMLParamElement) -> JSIO String
  name a =   primToJSIO "name" $ prim__name (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : HTMLParamElement) -> (v : String) -> JSIO ()
  setName a b =   primToJSIO "setName" $ prim__setName (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : HTMLParamElement) -> JSIO String
  type a =   primToJSIO "type" $ prim__type (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : HTMLParamElement) -> (v : String) -> JSIO ()
  setType a b =   primToJSIO "setType" $ prim__setType (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : HTMLParamElement) -> JSIO String
  value a =   primToJSIO "value" $ prim__value (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue : (obj : HTMLParamElement) -> (v : String) -> JSIO ()
  setValue a b =   primToJSIO "setValue" $ prim__setValue (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.valueType"
  prim__valueType : AnyPtr -> PrimIO AnyPtr

  export
  valueType : (obj : HTMLParamElement) -> JSIO String
  valueType a =   primToJSIO "valueType" $ prim__valueType (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.valueType  = v}"
  prim__setValueType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValueType : (obj : HTMLParamElement) -> (v : String) -> JSIO ()
  setValueType a b =
    primToJSIO "setValueType" $ prim__setValueType (toJS a) (toJS b)

namespace HTMLPictureElement
  
  public export
  JSType HTMLPictureElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLPreElement
  
  public export
  JSType HTMLPreElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : HTMLPreElement) -> JSIO Int32
  width a =   primToJSIO "width" $ prim__width (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : HTMLPreElement) -> (v : Int32) -> JSIO ()
  setWidth a b =   primToJSIO "setWidth" $ prim__setWidth (toJS a) (toJS b)

namespace HTMLProgressElement
  
  public export
  JSType HTMLProgressElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.labels"
  prim__labels : AnyPtr -> PrimIO AnyPtr

  export
  labels : (obj : HTMLProgressElement) -> JSIO NodeList
  labels a =   primToJSIO "labels" $ prim__labels (toJS a)
  
  %foreign "browser:lambda:x=>x.position"
  prim__position : AnyPtr -> PrimIO AnyPtr

  export
  position : (obj : HTMLProgressElement) -> JSIO Double
  position a =   primToJSIO "position" $ prim__position (toJS a)
  
  %foreign "browser:lambda:x=>x.max"
  prim__max : AnyPtr -> PrimIO AnyPtr

  export
  max : (obj : HTMLProgressElement) -> JSIO Double
  max a =   primToJSIO "max" $ prim__max (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.max  = v}"
  prim__setMax : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMax : (obj : HTMLProgressElement) -> (v : Double) -> JSIO ()
  setMax a b =   primToJSIO "setMax" $ prim__setMax (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : HTMLProgressElement) -> JSIO Double
  value a =   primToJSIO "value" $ prim__value (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue : (obj : HTMLProgressElement) -> (v : Double) -> JSIO ()
  setValue a b =   primToJSIO "setValue" $ prim__setValue (toJS a) (toJS b)

namespace HTMLQuoteElement
  
  public export
  JSType HTMLQuoteElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.cite"
  prim__cite : AnyPtr -> PrimIO AnyPtr

  export
  cite : (obj : HTMLQuoteElement) -> JSIO String
  cite a =   primToJSIO "cite" $ prim__cite (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.cite  = v}"
  prim__setCite : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCite : (obj : HTMLQuoteElement) -> (v : String) -> JSIO ()
  setCite a b =   primToJSIO "setCite" $ prim__setCite (toJS a) (toJS b)

namespace HTMLScriptElement
  
  public export
  JSType HTMLScriptElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.async"
  prim__async : AnyPtr -> PrimIO AnyPtr

  export
  async : (obj : HTMLScriptElement) -> JSIO Bool
  async a =   primToJSIO "async" $ prim__async (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.async  = v}"
  prim__setAsync : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAsync : (obj : HTMLScriptElement) -> (v : Bool) -> JSIO ()
  setAsync a b =   primToJSIO "setAsync" $ prim__setAsync (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.charset"
  prim__charset : AnyPtr -> PrimIO AnyPtr

  export
  charset : (obj : HTMLScriptElement) -> JSIO String
  charset a =   primToJSIO "charset" $ prim__charset (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.charset  = v}"
  prim__setCharset : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCharset : (obj : HTMLScriptElement) -> (v : String) -> JSIO ()
  setCharset a b =
    primToJSIO "setCharset" $ prim__setCharset (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.crossOrigin"
  prim__crossOrigin : AnyPtr -> PrimIO AnyPtr

  export
  crossOrigin : (obj : HTMLScriptElement) -> JSIO (Maybe String)
  crossOrigin a =   primToJSIO "crossOrigin" $ prim__crossOrigin (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.crossOrigin  = v}"
  prim__setCrossOrigin : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCrossOrigin : (obj : HTMLScriptElement) -> (v : Maybe String) -> JSIO ()
  setCrossOrigin a b =
    primToJSIO "setCrossOrigin" $ prim__setCrossOrigin (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.defer"
  prim__defer : AnyPtr -> PrimIO AnyPtr

  export
  defer : (obj : HTMLScriptElement) -> JSIO Bool
  defer a =   primToJSIO "defer" $ prim__defer (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.defer  = v}"
  prim__setDefer : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDefer : (obj : HTMLScriptElement) -> (v : Bool) -> JSIO ()
  setDefer a b =   primToJSIO "setDefer" $ prim__setDefer (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.event"
  prim__event : AnyPtr -> PrimIO AnyPtr

  export
  event : (obj : HTMLScriptElement) -> JSIO String
  event a =   primToJSIO "event" $ prim__event (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.event  = v}"
  prim__setEvent : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEvent : (obj : HTMLScriptElement) -> (v : String) -> JSIO ()
  setEvent a b =   primToJSIO "setEvent" $ prim__setEvent (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.htmlFor"
  prim__htmlFor : AnyPtr -> PrimIO AnyPtr

  export
  htmlFor : (obj : HTMLScriptElement) -> JSIO String
  htmlFor a =   primToJSIO "htmlFor" $ prim__htmlFor (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.htmlFor  = v}"
  prim__setHtmlFor : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHtmlFor : (obj : HTMLScriptElement) -> (v : String) -> JSIO ()
  setHtmlFor a b =
    primToJSIO "setHtmlFor" $ prim__setHtmlFor (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.integrity"
  prim__integrity : AnyPtr -> PrimIO AnyPtr

  export
  integrity : (obj : HTMLScriptElement) -> JSIO String
  integrity a =   primToJSIO "integrity" $ prim__integrity (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.integrity  = v}"
  prim__setIntegrity : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIntegrity : (obj : HTMLScriptElement) -> (v : String) -> JSIO ()
  setIntegrity a b =
    primToJSIO "setIntegrity" $ prim__setIntegrity (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.noModule"
  prim__noModule : AnyPtr -> PrimIO AnyPtr

  export
  noModule : (obj : HTMLScriptElement) -> JSIO Bool
  noModule a =   primToJSIO "noModule" $ prim__noModule (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.noModule  = v}"
  prim__setNoModule : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setNoModule : (obj : HTMLScriptElement) -> (v : Bool) -> JSIO ()
  setNoModule a b =
    primToJSIO "setNoModule" $ prim__setNoModule (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : AnyPtr -> PrimIO AnyPtr

  export
  referrerPolicy : (obj : HTMLScriptElement) -> JSIO String
  referrerPolicy a =
    primToJSIO "referrerPolicy" $ prim__referrerPolicy (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy  = v}"
  prim__setReferrerPolicy : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReferrerPolicy : (obj : HTMLScriptElement) -> (v : String) -> JSIO ()
  setReferrerPolicy a b =
    primToJSIO "setReferrerPolicy" $ prim__setReferrerPolicy (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.src"
  prim__src : AnyPtr -> PrimIO AnyPtr

  export
  src : (obj : HTMLScriptElement) -> JSIO String
  src a =   primToJSIO "src" $ prim__src (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.src  = v}"
  prim__setSrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSrc : (obj : HTMLScriptElement) -> (v : String) -> JSIO ()
  setSrc a b =   primToJSIO "setSrc" $ prim__setSrc (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.text"
  prim__text : AnyPtr -> PrimIO AnyPtr

  export
  text : (obj : HTMLScriptElement) -> JSIO String
  text a =   primToJSIO "text" $ prim__text (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.text  = v}"
  prim__setText : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setText : (obj : HTMLScriptElement) -> (v : String) -> JSIO ()
  setText a b =   primToJSIO "setText" $ prim__setText (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : HTMLScriptElement) -> JSIO String
  type a =   primToJSIO "type" $ prim__type (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : HTMLScriptElement) -> (v : String) -> JSIO ()
  setType a b =   primToJSIO "setType" $ prim__setType (toJS a) (toJS b)

namespace HTMLSelectElement
  
  public export
  JSType HTMLSelectElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.form"
  prim__form : AnyPtr -> PrimIO AnyPtr

  export
  form : (obj : HTMLSelectElement) -> JSIO (Maybe HTMLFormElement)
  form a =   primToJSIO "form" $ prim__form (toJS a)
  
  %foreign "browser:lambda:x=>x.labels"
  prim__labels : AnyPtr -> PrimIO AnyPtr

  export
  labels : (obj : HTMLSelectElement) -> JSIO NodeList
  labels a =   primToJSIO "labels" $ prim__labels (toJS a)
  
  %foreign "browser:lambda:x=>x.options"
  prim__options : AnyPtr -> PrimIO AnyPtr

  export
  options : (obj : HTMLSelectElement) -> JSIO HTMLOptionsCollection
  options a =   primToJSIO "options" $ prim__options (toJS a)
  
  %foreign "browser:lambda:x=>x.selectedOptions"
  prim__selectedOptions : AnyPtr -> PrimIO AnyPtr

  export
  selectedOptions : (obj : HTMLSelectElement) -> JSIO HTMLCollection
  selectedOptions a =
    primToJSIO "selectedOptions" $ prim__selectedOptions (toJS a)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : HTMLSelectElement) -> JSIO String
  type a =   primToJSIO "type" $ prim__type (toJS a)
  
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : AnyPtr -> PrimIO AnyPtr

  export
  validationMessage : (obj : HTMLSelectElement) -> JSIO String
  validationMessage a =
    primToJSIO "validationMessage" $ prim__validationMessage (toJS a)
  
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : AnyPtr -> PrimIO AnyPtr

  export
  validity : (obj : HTMLSelectElement) -> JSIO ValidityState
  validity a =   primToJSIO "validity" $ prim__validity (toJS a)
  
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : AnyPtr -> PrimIO AnyPtr

  export
  willValidate : (obj : HTMLSelectElement) -> JSIO Bool
  willValidate a =   primToJSIO "willValidate" $ prim__willValidate (toJS a)
  
  %foreign "browser:lambda:x=>x.autocomplete"
  prim__autocomplete : AnyPtr -> PrimIO AnyPtr

  export
  autocomplete : (obj : HTMLSelectElement) -> JSIO String
  autocomplete a =   primToJSIO "autocomplete" $ prim__autocomplete (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.autocomplete  = v}"
  prim__setAutocomplete : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAutocomplete : (obj : HTMLSelectElement) -> (v : String) -> JSIO ()
  setAutocomplete a b =
    primToJSIO "setAutocomplete" $ prim__setAutocomplete (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : AnyPtr -> PrimIO AnyPtr

  export
  disabled : (obj : HTMLSelectElement) -> JSIO Bool
  disabled a =   primToJSIO "disabled" $ prim__disabled (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.disabled  = v}"
  prim__setDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDisabled : (obj : HTMLSelectElement) -> (v : Bool) -> JSIO ()
  setDisabled a b =
    primToJSIO "setDisabled" $ prim__setDisabled (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : HTMLSelectElement) -> JSIO UInt32
  length a =   primToJSIO "length" $ prim__length (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.length  = v}"
  prim__setLength : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLength : (obj : HTMLSelectElement) -> (v : UInt32) -> JSIO ()
  setLength a b =   primToJSIO "setLength" $ prim__setLength (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.multiple"
  prim__multiple : AnyPtr -> PrimIO AnyPtr

  export
  multiple : (obj : HTMLSelectElement) -> JSIO Bool
  multiple a =   primToJSIO "multiple" $ prim__multiple (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.multiple  = v}"
  prim__setMultiple : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMultiple : (obj : HTMLSelectElement) -> (v : Bool) -> JSIO ()
  setMultiple a b =
    primToJSIO "setMultiple" $ prim__setMultiple (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : HTMLSelectElement) -> JSIO String
  name a =   primToJSIO "name" $ prim__name (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : HTMLSelectElement) -> (v : String) -> JSIO ()
  setName a b =   primToJSIO "setName" $ prim__setName (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.required"
  prim__required : AnyPtr -> PrimIO AnyPtr

  export
  required : (obj : HTMLSelectElement) -> JSIO Bool
  required a =   primToJSIO "required" $ prim__required (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.required  = v}"
  prim__setRequired : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRequired : (obj : HTMLSelectElement) -> (v : Bool) -> JSIO ()
  setRequired a b =
    primToJSIO "setRequired" $ prim__setRequired (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.selectedIndex"
  prim__selectedIndex : AnyPtr -> PrimIO AnyPtr

  export
  selectedIndex : (obj : HTMLSelectElement) -> JSIO Int32
  selectedIndex a =   primToJSIO "selectedIndex" $ prim__selectedIndex (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.selectedIndex  = v}"
  prim__setSelectedIndex : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSelectedIndex : (obj : HTMLSelectElement) -> (v : Int32) -> JSIO ()
  setSelectedIndex a b =
    primToJSIO "setSelectedIndex" $ prim__setSelectedIndex (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.size"
  prim__size : AnyPtr -> PrimIO AnyPtr

  export
  size : (obj : HTMLSelectElement) -> JSIO UInt32
  size a =   primToJSIO "size" $ prim__size (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.size  = v}"
  prim__setSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSize : (obj : HTMLSelectElement) -> (v : UInt32) -> JSIO ()
  setSize a b =   primToJSIO "setSize" $ prim__setSize (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : HTMLSelectElement) -> JSIO String
  value a =   primToJSIO "value" $ prim__value (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue : (obj : HTMLSelectElement) -> (v : String) -> JSIO ()
  setValue a b =   primToJSIO "setValue" $ prim__setValue (toJS a) (toJS b)

namespace HTMLSlotElement
  
  public export
  JSType HTMLSlotElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : HTMLSlotElement) -> JSIO String
  name a =   primToJSIO "name" $ prim__name (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : HTMLSlotElement) -> (v : String) -> JSIO ()
  setName a b =   primToJSIO "setName" $ prim__setName (toJS a) (toJS b)

namespace HTMLSourceElement
  
  public export
  JSType HTMLSourceElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : HTMLSourceElement) -> JSIO UInt32
  height a =   primToJSIO "height" $ prim__height (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.height  = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeight : (obj : HTMLSourceElement) -> (v : UInt32) -> JSIO ()
  setHeight a b =   primToJSIO "setHeight" $ prim__setHeight (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.media"
  prim__media : AnyPtr -> PrimIO AnyPtr

  export
  media : (obj : HTMLSourceElement) -> JSIO String
  media a =   primToJSIO "media" $ prim__media (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.media  = v}"
  prim__setMedia : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMedia : (obj : HTMLSourceElement) -> (v : String) -> JSIO ()
  setMedia a b =   primToJSIO "setMedia" $ prim__setMedia (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.sizes"
  prim__sizes : AnyPtr -> PrimIO AnyPtr

  export
  sizes : (obj : HTMLSourceElement) -> JSIO String
  sizes a =   primToJSIO "sizes" $ prim__sizes (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.sizes  = v}"
  prim__setSizes : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSizes : (obj : HTMLSourceElement) -> (v : String) -> JSIO ()
  setSizes a b =   primToJSIO "setSizes" $ prim__setSizes (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.src"
  prim__src : AnyPtr -> PrimIO AnyPtr

  export
  src : (obj : HTMLSourceElement) -> JSIO String
  src a =   primToJSIO "src" $ prim__src (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.src  = v}"
  prim__setSrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSrc : (obj : HTMLSourceElement) -> (v : String) -> JSIO ()
  setSrc a b =   primToJSIO "setSrc" $ prim__setSrc (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.srcset"
  prim__srcset : AnyPtr -> PrimIO AnyPtr

  export
  srcset : (obj : HTMLSourceElement) -> JSIO String
  srcset a =   primToJSIO "srcset" $ prim__srcset (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.srcset  = v}"
  prim__setSrcset : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSrcset : (obj : HTMLSourceElement) -> (v : String) -> JSIO ()
  setSrcset a b =   primToJSIO "setSrcset" $ prim__setSrcset (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : HTMLSourceElement) -> JSIO String
  type a =   primToJSIO "type" $ prim__type (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : HTMLSourceElement) -> (v : String) -> JSIO ()
  setType a b =   primToJSIO "setType" $ prim__setType (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : HTMLSourceElement) -> JSIO UInt32
  width a =   primToJSIO "width" $ prim__width (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : HTMLSourceElement) -> (v : UInt32) -> JSIO ()
  setWidth a b =   primToJSIO "setWidth" $ prim__setWidth (toJS a) (toJS b)

namespace HTMLSpanElement
  
  public export
  JSType HTMLSpanElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLStyleElement
  
  public export
  JSType HTMLStyleElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , LinkStyle
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.media"
  prim__media : AnyPtr -> PrimIO AnyPtr

  export
  media : (obj : HTMLStyleElement) -> JSIO String
  media a =   primToJSIO "media" $ prim__media (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.media  = v}"
  prim__setMedia : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMedia : (obj : HTMLStyleElement) -> (v : String) -> JSIO ()
  setMedia a b =   primToJSIO "setMedia" $ prim__setMedia (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : HTMLStyleElement) -> JSIO String
  type a =   primToJSIO "type" $ prim__type (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : HTMLStyleElement) -> (v : String) -> JSIO ()
  setType a b =   primToJSIO "setType" $ prim__setType (toJS a) (toJS b)

namespace HTMLTableCaptionElement
  
  public export
  JSType HTMLTableCaptionElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  export
  align : (obj : HTMLTableCaptionElement) -> JSIO String
  align a =   primToJSIO "align" $ prim__align (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.align  = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlign : (obj : HTMLTableCaptionElement) -> (v : String) -> JSIO ()
  setAlign a b =   primToJSIO "setAlign" $ prim__setAlign (toJS a) (toJS b)

namespace HTMLTableCellElement
  
  public export
  JSType HTMLTableCellElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.cellIndex"
  prim__cellIndex : AnyPtr -> PrimIO AnyPtr

  export
  cellIndex : (obj : HTMLTableCellElement) -> JSIO Int32
  cellIndex a =   primToJSIO "cellIndex" $ prim__cellIndex (toJS a)
  
  %foreign "browser:lambda:x=>x.abbr"
  prim__abbr : AnyPtr -> PrimIO AnyPtr

  export
  abbr : (obj : HTMLTableCellElement) -> JSIO String
  abbr a =   primToJSIO "abbr" $ prim__abbr (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.abbr  = v}"
  prim__setAbbr : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAbbr : (obj : HTMLTableCellElement) -> (v : String) -> JSIO ()
  setAbbr a b =   primToJSIO "setAbbr" $ prim__setAbbr (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  export
  align : (obj : HTMLTableCellElement) -> JSIO String
  align a =   primToJSIO "align" $ prim__align (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.align  = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlign : (obj : HTMLTableCellElement) -> (v : String) -> JSIO ()
  setAlign a b =   primToJSIO "setAlign" $ prim__setAlign (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.axis"
  prim__axis : AnyPtr -> PrimIO AnyPtr

  export
  axis : (obj : HTMLTableCellElement) -> JSIO String
  axis a =   primToJSIO "axis" $ prim__axis (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.axis  = v}"
  prim__setAxis : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAxis : (obj : HTMLTableCellElement) -> (v : String) -> JSIO ()
  setAxis a b =   primToJSIO "setAxis" $ prim__setAxis (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.bgColor"
  prim__bgColor : AnyPtr -> PrimIO AnyPtr

  export
  bgColor : (obj : HTMLTableCellElement) -> JSIO String
  bgColor a =   primToJSIO "bgColor" $ prim__bgColor (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.bgColor  = v}"
  prim__setBgColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBgColor : (obj : HTMLTableCellElement) -> (v : String) -> JSIO ()
  setBgColor a b =
    primToJSIO "setBgColor" $ prim__setBgColor (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ch"
  prim__ch : AnyPtr -> PrimIO AnyPtr

  export
  ch : (obj : HTMLTableCellElement) -> JSIO String
  ch a =   primToJSIO "ch" $ prim__ch (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ch  = v}"
  prim__setCh : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCh : (obj : HTMLTableCellElement) -> (v : String) -> JSIO ()
  setCh a b =   primToJSIO "setCh" $ prim__setCh (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.chOff"
  prim__chOff : AnyPtr -> PrimIO AnyPtr

  export
  chOff : (obj : HTMLTableCellElement) -> JSIO String
  chOff a =   primToJSIO "chOff" $ prim__chOff (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.chOff  = v}"
  prim__setChOff : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setChOff : (obj : HTMLTableCellElement) -> (v : String) -> JSIO ()
  setChOff a b =   primToJSIO "setChOff" $ prim__setChOff (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.colSpan"
  prim__colSpan : AnyPtr -> PrimIO AnyPtr

  export
  colSpan : (obj : HTMLTableCellElement) -> JSIO UInt32
  colSpan a =   primToJSIO "colSpan" $ prim__colSpan (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.colSpan  = v}"
  prim__setColSpan : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setColSpan : (obj : HTMLTableCellElement) -> (v : UInt32) -> JSIO ()
  setColSpan a b =
    primToJSIO "setColSpan" $ prim__setColSpan (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.headers"
  prim__headers : AnyPtr -> PrimIO AnyPtr

  export
  headers : (obj : HTMLTableCellElement) -> JSIO String
  headers a =   primToJSIO "headers" $ prim__headers (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.headers  = v}"
  prim__setHeaders : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeaders : (obj : HTMLTableCellElement) -> (v : String) -> JSIO ()
  setHeaders a b =
    primToJSIO "setHeaders" $ prim__setHeaders (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : HTMLTableCellElement) -> JSIO String
  height a =   primToJSIO "height" $ prim__height (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.height  = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeight : (obj : HTMLTableCellElement) -> (v : String) -> JSIO ()
  setHeight a b =   primToJSIO "setHeight" $ prim__setHeight (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.noWrap"
  prim__noWrap : AnyPtr -> PrimIO AnyPtr

  export
  noWrap : (obj : HTMLTableCellElement) -> JSIO Bool
  noWrap a =   primToJSIO "noWrap" $ prim__noWrap (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.noWrap  = v}"
  prim__setNoWrap : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setNoWrap : (obj : HTMLTableCellElement) -> (v : Bool) -> JSIO ()
  setNoWrap a b =   primToJSIO "setNoWrap" $ prim__setNoWrap (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.rowSpan"
  prim__rowSpan : AnyPtr -> PrimIO AnyPtr

  export
  rowSpan : (obj : HTMLTableCellElement) -> JSIO UInt32
  rowSpan a =   primToJSIO "rowSpan" $ prim__rowSpan (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.rowSpan  = v}"
  prim__setRowSpan : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRowSpan : (obj : HTMLTableCellElement) -> (v : UInt32) -> JSIO ()
  setRowSpan a b =
    primToJSIO "setRowSpan" $ prim__setRowSpan (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.scope"
  prim__scope : AnyPtr -> PrimIO AnyPtr

  export
  scope : (obj : HTMLTableCellElement) -> JSIO String
  scope a =   primToJSIO "scope" $ prim__scope (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.scope  = v}"
  prim__setScope : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setScope : (obj : HTMLTableCellElement) -> (v : String) -> JSIO ()
  setScope a b =   primToJSIO "setScope" $ prim__setScope (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.vAlign"
  prim__vAlign : AnyPtr -> PrimIO AnyPtr

  export
  vAlign : (obj : HTMLTableCellElement) -> JSIO String
  vAlign a =   primToJSIO "vAlign" $ prim__vAlign (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.vAlign  = v}"
  prim__setVAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setVAlign : (obj : HTMLTableCellElement) -> (v : String) -> JSIO ()
  setVAlign a b =   primToJSIO "setVAlign" $ prim__setVAlign (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : HTMLTableCellElement) -> JSIO String
  width a =   primToJSIO "width" $ prim__width (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : HTMLTableCellElement) -> (v : String) -> JSIO ()
  setWidth a b =   primToJSIO "setWidth" $ prim__setWidth (toJS a) (toJS b)

namespace HTMLTableColElement
  
  public export
  JSType HTMLTableColElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  export
  align : (obj : HTMLTableColElement) -> JSIO String
  align a =   primToJSIO "align" $ prim__align (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.align  = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlign : (obj : HTMLTableColElement) -> (v : String) -> JSIO ()
  setAlign a b =   primToJSIO "setAlign" $ prim__setAlign (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ch"
  prim__ch : AnyPtr -> PrimIO AnyPtr

  export
  ch : (obj : HTMLTableColElement) -> JSIO String
  ch a =   primToJSIO "ch" $ prim__ch (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ch  = v}"
  prim__setCh : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCh : (obj : HTMLTableColElement) -> (v : String) -> JSIO ()
  setCh a b =   primToJSIO "setCh" $ prim__setCh (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.chOff"
  prim__chOff : AnyPtr -> PrimIO AnyPtr

  export
  chOff : (obj : HTMLTableColElement) -> JSIO String
  chOff a =   primToJSIO "chOff" $ prim__chOff (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.chOff  = v}"
  prim__setChOff : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setChOff : (obj : HTMLTableColElement) -> (v : String) -> JSIO ()
  setChOff a b =   primToJSIO "setChOff" $ prim__setChOff (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.span"
  prim__span : AnyPtr -> PrimIO AnyPtr

  export
  span : (obj : HTMLTableColElement) -> JSIO UInt32
  span a =   primToJSIO "span" $ prim__span (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.span  = v}"
  prim__setSpan : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSpan : (obj : HTMLTableColElement) -> (v : UInt32) -> JSIO ()
  setSpan a b =   primToJSIO "setSpan" $ prim__setSpan (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.vAlign"
  prim__vAlign : AnyPtr -> PrimIO AnyPtr

  export
  vAlign : (obj : HTMLTableColElement) -> JSIO String
  vAlign a =   primToJSIO "vAlign" $ prim__vAlign (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.vAlign  = v}"
  prim__setVAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setVAlign : (obj : HTMLTableColElement) -> (v : String) -> JSIO ()
  setVAlign a b =   primToJSIO "setVAlign" $ prim__setVAlign (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : HTMLTableColElement) -> JSIO String
  width a =   primToJSIO "width" $ prim__width (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : HTMLTableColElement) -> (v : String) -> JSIO ()
  setWidth a b =   primToJSIO "setWidth" $ prim__setWidth (toJS a) (toJS b)

namespace HTMLTableElement
  
  public export
  JSType HTMLTableElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.rows"
  prim__rows : AnyPtr -> PrimIO AnyPtr

  export
  rows : (obj : HTMLTableElement) -> JSIO HTMLCollection
  rows a =   primToJSIO "rows" $ prim__rows (toJS a)
  
  %foreign "browser:lambda:x=>x.tBodies"
  prim__tBodies : AnyPtr -> PrimIO AnyPtr

  export
  tBodies : (obj : HTMLTableElement) -> JSIO HTMLCollection
  tBodies a =   primToJSIO "tBodies" $ prim__tBodies (toJS a)
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  export
  align : (obj : HTMLTableElement) -> JSIO String
  align a =   primToJSIO "align" $ prim__align (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.align  = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlign : (obj : HTMLTableElement) -> (v : String) -> JSIO ()
  setAlign a b =   primToJSIO "setAlign" $ prim__setAlign (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.bgColor"
  prim__bgColor : AnyPtr -> PrimIO AnyPtr

  export
  bgColor : (obj : HTMLTableElement) -> JSIO String
  bgColor a =   primToJSIO "bgColor" $ prim__bgColor (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.bgColor  = v}"
  prim__setBgColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBgColor : (obj : HTMLTableElement) -> (v : String) -> JSIO ()
  setBgColor a b =
    primToJSIO "setBgColor" $ prim__setBgColor (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.border"
  prim__border : AnyPtr -> PrimIO AnyPtr

  export
  border : (obj : HTMLTableElement) -> JSIO String
  border a =   primToJSIO "border" $ prim__border (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.border  = v}"
  prim__setBorder : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBorder : (obj : HTMLTableElement) -> (v : String) -> JSIO ()
  setBorder a b =   primToJSIO "setBorder" $ prim__setBorder (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.caption"
  prim__caption : AnyPtr -> PrimIO AnyPtr

  export
  caption : (obj : HTMLTableElement) -> JSIO (Maybe HTMLTableCaptionElement)
  caption a =   primToJSIO "caption" $ prim__caption (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.caption  = v}"
  prim__setCaption : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCaption :  (obj : HTMLTableElement)
             -> (v : Maybe HTMLTableCaptionElement)
             -> JSIO ()
  setCaption a b =
    primToJSIO "setCaption" $ prim__setCaption (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.cellPadding"
  prim__cellPadding : AnyPtr -> PrimIO AnyPtr

  export
  cellPadding : (obj : HTMLTableElement) -> JSIO String
  cellPadding a =   primToJSIO "cellPadding" $ prim__cellPadding (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.cellPadding  = v}"
  prim__setCellPadding : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCellPadding : (obj : HTMLTableElement) -> (v : String) -> JSIO ()
  setCellPadding a b =
    primToJSIO "setCellPadding" $ prim__setCellPadding (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.cellSpacing"
  prim__cellSpacing : AnyPtr -> PrimIO AnyPtr

  export
  cellSpacing : (obj : HTMLTableElement) -> JSIO String
  cellSpacing a =   primToJSIO "cellSpacing" $ prim__cellSpacing (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.cellSpacing  = v}"
  prim__setCellSpacing : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCellSpacing : (obj : HTMLTableElement) -> (v : String) -> JSIO ()
  setCellSpacing a b =
    primToJSIO "setCellSpacing" $ prim__setCellSpacing (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.frame"
  prim__frame : AnyPtr -> PrimIO AnyPtr

  export
  frame : (obj : HTMLTableElement) -> JSIO String
  frame a =   primToJSIO "frame" $ prim__frame (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.frame  = v}"
  prim__setFrame : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFrame : (obj : HTMLTableElement) -> (v : String) -> JSIO ()
  setFrame a b =   primToJSIO "setFrame" $ prim__setFrame (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.rules"
  prim__rules : AnyPtr -> PrimIO AnyPtr

  export
  rules : (obj : HTMLTableElement) -> JSIO String
  rules a =   primToJSIO "rules" $ prim__rules (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.rules  = v}"
  prim__setRules : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRules : (obj : HTMLTableElement) -> (v : String) -> JSIO ()
  setRules a b =   primToJSIO "setRules" $ prim__setRules (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.summary"
  prim__summary : AnyPtr -> PrimIO AnyPtr

  export
  summary : (obj : HTMLTableElement) -> JSIO String
  summary a =   primToJSIO "summary" $ prim__summary (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.summary  = v}"
  prim__setSummary : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSummary : (obj : HTMLTableElement) -> (v : String) -> JSIO ()
  setSummary a b =
    primToJSIO "setSummary" $ prim__setSummary (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.tFoot"
  prim__tFoot : AnyPtr -> PrimIO AnyPtr

  export
  tFoot : (obj : HTMLTableElement) -> JSIO (Maybe HTMLTableSectionElement)
  tFoot a =   primToJSIO "tFoot" $ prim__tFoot (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.tFoot  = v}"
  prim__setTFoot : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTFoot :  (obj : HTMLTableElement)
           -> (v : Maybe HTMLTableSectionElement)
           -> JSIO ()
  setTFoot a b =   primToJSIO "setTFoot" $ prim__setTFoot (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.tHead"
  prim__tHead : AnyPtr -> PrimIO AnyPtr

  export
  tHead : (obj : HTMLTableElement) -> JSIO (Maybe HTMLTableSectionElement)
  tHead a =   primToJSIO "tHead" $ prim__tHead (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.tHead  = v}"
  prim__setTHead : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTHead :  (obj : HTMLTableElement)
           -> (v : Maybe HTMLTableSectionElement)
           -> JSIO ()
  setTHead a b =   primToJSIO "setTHead" $ prim__setTHead (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : HTMLTableElement) -> JSIO String
  width a =   primToJSIO "width" $ prim__width (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : HTMLTableElement) -> (v : String) -> JSIO ()
  setWidth a b =   primToJSIO "setWidth" $ prim__setWidth (toJS a) (toJS b)

namespace HTMLTableRowElement
  
  public export
  JSType HTMLTableRowElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.cells"
  prim__cells : AnyPtr -> PrimIO AnyPtr

  export
  cells : (obj : HTMLTableRowElement) -> JSIO HTMLCollection
  cells a =   primToJSIO "cells" $ prim__cells (toJS a)
  
  %foreign "browser:lambda:x=>x.rowIndex"
  prim__rowIndex : AnyPtr -> PrimIO AnyPtr

  export
  rowIndex : (obj : HTMLTableRowElement) -> JSIO Int32
  rowIndex a =   primToJSIO "rowIndex" $ prim__rowIndex (toJS a)
  
  %foreign "browser:lambda:x=>x.sectionRowIndex"
  prim__sectionRowIndex : AnyPtr -> PrimIO AnyPtr

  export
  sectionRowIndex : (obj : HTMLTableRowElement) -> JSIO Int32
  sectionRowIndex a =
    primToJSIO "sectionRowIndex" $ prim__sectionRowIndex (toJS a)
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  export
  align : (obj : HTMLTableRowElement) -> JSIO String
  align a =   primToJSIO "align" $ prim__align (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.align  = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlign : (obj : HTMLTableRowElement) -> (v : String) -> JSIO ()
  setAlign a b =   primToJSIO "setAlign" $ prim__setAlign (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.bgColor"
  prim__bgColor : AnyPtr -> PrimIO AnyPtr

  export
  bgColor : (obj : HTMLTableRowElement) -> JSIO String
  bgColor a =   primToJSIO "bgColor" $ prim__bgColor (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.bgColor  = v}"
  prim__setBgColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBgColor : (obj : HTMLTableRowElement) -> (v : String) -> JSIO ()
  setBgColor a b =
    primToJSIO "setBgColor" $ prim__setBgColor (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ch"
  prim__ch : AnyPtr -> PrimIO AnyPtr

  export
  ch : (obj : HTMLTableRowElement) -> JSIO String
  ch a =   primToJSIO "ch" $ prim__ch (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ch  = v}"
  prim__setCh : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCh : (obj : HTMLTableRowElement) -> (v : String) -> JSIO ()
  setCh a b =   primToJSIO "setCh" $ prim__setCh (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.chOff"
  prim__chOff : AnyPtr -> PrimIO AnyPtr

  export
  chOff : (obj : HTMLTableRowElement) -> JSIO String
  chOff a =   primToJSIO "chOff" $ prim__chOff (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.chOff  = v}"
  prim__setChOff : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setChOff : (obj : HTMLTableRowElement) -> (v : String) -> JSIO ()
  setChOff a b =   primToJSIO "setChOff" $ prim__setChOff (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.vAlign"
  prim__vAlign : AnyPtr -> PrimIO AnyPtr

  export
  vAlign : (obj : HTMLTableRowElement) -> JSIO String
  vAlign a =   primToJSIO "vAlign" $ prim__vAlign (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.vAlign  = v}"
  prim__setVAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setVAlign : (obj : HTMLTableRowElement) -> (v : String) -> JSIO ()
  setVAlign a b =   primToJSIO "setVAlign" $ prim__setVAlign (toJS a) (toJS b)

namespace HTMLTableSectionElement
  
  public export
  JSType HTMLTableSectionElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.rows"
  prim__rows : AnyPtr -> PrimIO AnyPtr

  export
  rows : (obj : HTMLTableSectionElement) -> JSIO HTMLCollection
  rows a =   primToJSIO "rows" $ prim__rows (toJS a)
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  export
  align : (obj : HTMLTableSectionElement) -> JSIO String
  align a =   primToJSIO "align" $ prim__align (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.align  = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlign : (obj : HTMLTableSectionElement) -> (v : String) -> JSIO ()
  setAlign a b =   primToJSIO "setAlign" $ prim__setAlign (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ch"
  prim__ch : AnyPtr -> PrimIO AnyPtr

  export
  ch : (obj : HTMLTableSectionElement) -> JSIO String
  ch a =   primToJSIO "ch" $ prim__ch (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ch  = v}"
  prim__setCh : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCh : (obj : HTMLTableSectionElement) -> (v : String) -> JSIO ()
  setCh a b =   primToJSIO "setCh" $ prim__setCh (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.chOff"
  prim__chOff : AnyPtr -> PrimIO AnyPtr

  export
  chOff : (obj : HTMLTableSectionElement) -> JSIO String
  chOff a =   primToJSIO "chOff" $ prim__chOff (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.chOff  = v}"
  prim__setChOff : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setChOff : (obj : HTMLTableSectionElement) -> (v : String) -> JSIO ()
  setChOff a b =   primToJSIO "setChOff" $ prim__setChOff (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.vAlign"
  prim__vAlign : AnyPtr -> PrimIO AnyPtr

  export
  vAlign : (obj : HTMLTableSectionElement) -> JSIO String
  vAlign a =   primToJSIO "vAlign" $ prim__vAlign (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.vAlign  = v}"
  prim__setVAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setVAlign : (obj : HTMLTableSectionElement) -> (v : String) -> JSIO ()
  setVAlign a b =   primToJSIO "setVAlign" $ prim__setVAlign (toJS a) (toJS b)

namespace HTMLTemplateElement
  
  public export
  JSType HTMLTemplateElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.content"
  prim__content : AnyPtr -> PrimIO AnyPtr

  export
  content : (obj : HTMLTemplateElement) -> JSIO DocumentFragment
  content a =   primToJSIO "content" $ prim__content (toJS a)

namespace HTMLTextAreaElement
  
  public export
  JSType HTMLTextAreaElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.form"
  prim__form : AnyPtr -> PrimIO AnyPtr

  export
  form : (obj : HTMLTextAreaElement) -> JSIO (Maybe HTMLFormElement)
  form a =   primToJSIO "form" $ prim__form (toJS a)
  
  %foreign "browser:lambda:x=>x.labels"
  prim__labels : AnyPtr -> PrimIO AnyPtr

  export
  labels : (obj : HTMLTextAreaElement) -> JSIO NodeList
  labels a =   primToJSIO "labels" $ prim__labels (toJS a)
  
  %foreign "browser:lambda:x=>x.textLength"
  prim__textLength : AnyPtr -> PrimIO AnyPtr

  export
  textLength : (obj : HTMLTextAreaElement) -> JSIO UInt32
  textLength a =   primToJSIO "textLength" $ prim__textLength (toJS a)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : HTMLTextAreaElement) -> JSIO String
  type a =   primToJSIO "type" $ prim__type (toJS a)
  
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : AnyPtr -> PrimIO AnyPtr

  export
  validationMessage : (obj : HTMLTextAreaElement) -> JSIO String
  validationMessage a =
    primToJSIO "validationMessage" $ prim__validationMessage (toJS a)
  
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : AnyPtr -> PrimIO AnyPtr

  export
  validity : (obj : HTMLTextAreaElement) -> JSIO ValidityState
  validity a =   primToJSIO "validity" $ prim__validity (toJS a)
  
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : AnyPtr -> PrimIO AnyPtr

  export
  willValidate : (obj : HTMLTextAreaElement) -> JSIO Bool
  willValidate a =   primToJSIO "willValidate" $ prim__willValidate (toJS a)
  
  %foreign "browser:lambda:x=>x.autocomplete"
  prim__autocomplete : AnyPtr -> PrimIO AnyPtr

  export
  autocomplete : (obj : HTMLTextAreaElement) -> JSIO String
  autocomplete a =   primToJSIO "autocomplete" $ prim__autocomplete (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.autocomplete  = v}"
  prim__setAutocomplete : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAutocomplete : (obj : HTMLTextAreaElement) -> (v : String) -> JSIO ()
  setAutocomplete a b =
    primToJSIO "setAutocomplete" $ prim__setAutocomplete (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.cols"
  prim__cols : AnyPtr -> PrimIO AnyPtr

  export
  cols : (obj : HTMLTextAreaElement) -> JSIO UInt32
  cols a =   primToJSIO "cols" $ prim__cols (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.cols  = v}"
  prim__setCols : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCols : (obj : HTMLTextAreaElement) -> (v : UInt32) -> JSIO ()
  setCols a b =   primToJSIO "setCols" $ prim__setCols (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.defaultValue"
  prim__defaultValue : AnyPtr -> PrimIO AnyPtr

  export
  defaultValue : (obj : HTMLTextAreaElement) -> JSIO String
  defaultValue a =   primToJSIO "defaultValue" $ prim__defaultValue (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.defaultValue  = v}"
  prim__setDefaultValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDefaultValue : (obj : HTMLTextAreaElement) -> (v : String) -> JSIO ()
  setDefaultValue a b =
    primToJSIO "setDefaultValue" $ prim__setDefaultValue (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.dirName"
  prim__dirName : AnyPtr -> PrimIO AnyPtr

  export
  dirName : (obj : HTMLTextAreaElement) -> JSIO String
  dirName a =   primToJSIO "dirName" $ prim__dirName (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.dirName  = v}"
  prim__setDirName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDirName : (obj : HTMLTextAreaElement) -> (v : String) -> JSIO ()
  setDirName a b =
    primToJSIO "setDirName" $ prim__setDirName (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : AnyPtr -> PrimIO AnyPtr

  export
  disabled : (obj : HTMLTextAreaElement) -> JSIO Bool
  disabled a =   primToJSIO "disabled" $ prim__disabled (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.disabled  = v}"
  prim__setDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDisabled : (obj : HTMLTextAreaElement) -> (v : Bool) -> JSIO ()
  setDisabled a b =
    primToJSIO "setDisabled" $ prim__setDisabled (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.maxLength"
  prim__maxLength : AnyPtr -> PrimIO AnyPtr

  export
  maxLength : (obj : HTMLTextAreaElement) -> JSIO Int32
  maxLength a =   primToJSIO "maxLength" $ prim__maxLength (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.maxLength  = v}"
  prim__setMaxLength : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMaxLength : (obj : HTMLTextAreaElement) -> (v : Int32) -> JSIO ()
  setMaxLength a b =
    primToJSIO "setMaxLength" $ prim__setMaxLength (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.minLength"
  prim__minLength : AnyPtr -> PrimIO AnyPtr

  export
  minLength : (obj : HTMLTextAreaElement) -> JSIO Int32
  minLength a =   primToJSIO "minLength" $ prim__minLength (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.minLength  = v}"
  prim__setMinLength : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMinLength : (obj : HTMLTextAreaElement) -> (v : Int32) -> JSIO ()
  setMinLength a b =
    primToJSIO "setMinLength" $ prim__setMinLength (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : HTMLTextAreaElement) -> JSIO String
  name a =   primToJSIO "name" $ prim__name (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : HTMLTextAreaElement) -> (v : String) -> JSIO ()
  setName a b =   primToJSIO "setName" $ prim__setName (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.placeholder"
  prim__placeholder : AnyPtr -> PrimIO AnyPtr

  export
  placeholder : (obj : HTMLTextAreaElement) -> JSIO String
  placeholder a =   primToJSIO "placeholder" $ prim__placeholder (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.placeholder  = v}"
  prim__setPlaceholder : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPlaceholder : (obj : HTMLTextAreaElement) -> (v : String) -> JSIO ()
  setPlaceholder a b =
    primToJSIO "setPlaceholder" $ prim__setPlaceholder (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.readOnly"
  prim__readOnly : AnyPtr -> PrimIO AnyPtr

  export
  readOnly : (obj : HTMLTextAreaElement) -> JSIO Bool
  readOnly a =   primToJSIO "readOnly" $ prim__readOnly (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.readOnly  = v}"
  prim__setReadOnly : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReadOnly : (obj : HTMLTextAreaElement) -> (v : Bool) -> JSIO ()
  setReadOnly a b =
    primToJSIO "setReadOnly" $ prim__setReadOnly (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.required"
  prim__required : AnyPtr -> PrimIO AnyPtr

  export
  required : (obj : HTMLTextAreaElement) -> JSIO Bool
  required a =   primToJSIO "required" $ prim__required (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.required  = v}"
  prim__setRequired : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRequired : (obj : HTMLTextAreaElement) -> (v : Bool) -> JSIO ()
  setRequired a b =
    primToJSIO "setRequired" $ prim__setRequired (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.rows"
  prim__rows : AnyPtr -> PrimIO AnyPtr

  export
  rows : (obj : HTMLTextAreaElement) -> JSIO UInt32
  rows a =   primToJSIO "rows" $ prim__rows (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.rows  = v}"
  prim__setRows : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRows : (obj : HTMLTextAreaElement) -> (v : UInt32) -> JSIO ()
  setRows a b =   primToJSIO "setRows" $ prim__setRows (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.selectionDirection"
  prim__selectionDirection : AnyPtr -> PrimIO AnyPtr

  export
  selectionDirection : (obj : HTMLTextAreaElement) -> JSIO String
  selectionDirection a =
    primToJSIO "selectionDirection" $ prim__selectionDirection (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.selectionDirection  = v}"
  prim__setSelectionDirection : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSelectionDirection : (obj : HTMLTextAreaElement) -> (v : String) -> JSIO ()
  setSelectionDirection a b =
    primToJSIO "setSelectionDirection" $ prim__setSelectionDirection (toJS a)
                                                                     (toJS b)
  
  %foreign "browser:lambda:x=>x.selectionEnd"
  prim__selectionEnd : AnyPtr -> PrimIO AnyPtr

  export
  selectionEnd : (obj : HTMLTextAreaElement) -> JSIO UInt32
  selectionEnd a =   primToJSIO "selectionEnd" $ prim__selectionEnd (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.selectionEnd  = v}"
  prim__setSelectionEnd : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSelectionEnd : (obj : HTMLTextAreaElement) -> (v : UInt32) -> JSIO ()
  setSelectionEnd a b =
    primToJSIO "setSelectionEnd" $ prim__setSelectionEnd (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.selectionStart"
  prim__selectionStart : AnyPtr -> PrimIO AnyPtr

  export
  selectionStart : (obj : HTMLTextAreaElement) -> JSIO UInt32
  selectionStart a =
    primToJSIO "selectionStart" $ prim__selectionStart (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.selectionStart  = v}"
  prim__setSelectionStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSelectionStart : (obj : HTMLTextAreaElement) -> (v : UInt32) -> JSIO ()
  setSelectionStart a b =
    primToJSIO "setSelectionStart" $ prim__setSelectionStart (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : HTMLTextAreaElement) -> JSIO String
  value a =   primToJSIO "value" $ prim__value (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue : (obj : HTMLTextAreaElement) -> (v : String) -> JSIO ()
  setValue a b =   primToJSIO "setValue" $ prim__setValue (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.wrap"
  prim__wrap : AnyPtr -> PrimIO AnyPtr

  export
  wrap : (obj : HTMLTextAreaElement) -> JSIO String
  wrap a =   primToJSIO "wrap" $ prim__wrap (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.wrap  = v}"
  prim__setWrap : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWrap : (obj : HTMLTextAreaElement) -> (v : String) -> JSIO ()
  setWrap a b =   primToJSIO "setWrap" $ prim__setWrap (toJS a) (toJS b)

namespace HTMLTimeElement
  
  public export
  JSType HTMLTimeElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.dateTime"
  prim__dateTime : AnyPtr -> PrimIO AnyPtr

  export
  dateTime : (obj : HTMLTimeElement) -> JSIO String
  dateTime a =   primToJSIO "dateTime" $ prim__dateTime (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.dateTime  = v}"
  prim__setDateTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDateTime : (obj : HTMLTimeElement) -> (v : String) -> JSIO ()
  setDateTime a b =
    primToJSIO "setDateTime" $ prim__setDateTime (toJS a) (toJS b)

namespace HTMLTitleElement
  
  public export
  JSType HTMLTitleElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.text"
  prim__text : AnyPtr -> PrimIO AnyPtr

  export
  text : (obj : HTMLTitleElement) -> JSIO String
  text a =   primToJSIO "text" $ prim__text (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.text  = v}"
  prim__setText : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setText : (obj : HTMLTitleElement) -> (v : String) -> JSIO ()
  setText a b =   primToJSIO "setText" $ prim__setText (toJS a) (toJS b)

namespace HTMLTrackElement
  
  public export
  JSType HTMLTrackElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  public export
  ERROR : UInt16
  ERROR = 3
  
  public export
  LOADED : UInt16
  LOADED = 2
  
  public export
  LOADING : UInt16
  LOADING = 1
  
  public export
  NONE : UInt16
  NONE = 0o0
  
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : AnyPtr -> PrimIO AnyPtr

  export
  readyState : (obj : HTMLTrackElement) -> JSIO UInt16
  readyState a =   primToJSIO "readyState" $ prim__readyState (toJS a)
  
  %foreign "browser:lambda:x=>x.track"
  prim__track : AnyPtr -> PrimIO AnyPtr

  export
  track : (obj : HTMLTrackElement) -> JSIO TextTrack
  track a =   primToJSIO "track" $ prim__track (toJS a)
  
  %foreign "browser:lambda:x=>x.default"
  prim__default_ : AnyPtr -> PrimIO AnyPtr

  export
  default_ : (obj : HTMLTrackElement) -> JSIO Bool
  default_ a =   primToJSIO "default_" $ prim__default_ (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.default  = v}"
  prim__setDefault : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDefault : (obj : HTMLTrackElement) -> (v : Bool) -> JSIO ()
  setDefault a b =
    primToJSIO "setDefault" $ prim__setDefault (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.kind"
  prim__kind : AnyPtr -> PrimIO AnyPtr

  export
  kind : (obj : HTMLTrackElement) -> JSIO String
  kind a =   primToJSIO "kind" $ prim__kind (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.kind  = v}"
  prim__setKind : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setKind : (obj : HTMLTrackElement) -> (v : String) -> JSIO ()
  setKind a b =   primToJSIO "setKind" $ prim__setKind (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.label"
  prim__label : AnyPtr -> PrimIO AnyPtr

  export
  label : (obj : HTMLTrackElement) -> JSIO String
  label a =   primToJSIO "label" $ prim__label (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.label  = v}"
  prim__setLabel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLabel : (obj : HTMLTrackElement) -> (v : String) -> JSIO ()
  setLabel a b =   primToJSIO "setLabel" $ prim__setLabel (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.src"
  prim__src : AnyPtr -> PrimIO AnyPtr

  export
  src : (obj : HTMLTrackElement) -> JSIO String
  src a =   primToJSIO "src" $ prim__src (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.src  = v}"
  prim__setSrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSrc : (obj : HTMLTrackElement) -> (v : String) -> JSIO ()
  setSrc a b =   primToJSIO "setSrc" $ prim__setSrc (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.srclang"
  prim__srclang : AnyPtr -> PrimIO AnyPtr

  export
  srclang : (obj : HTMLTrackElement) -> JSIO String
  srclang a =   primToJSIO "srclang" $ prim__srclang (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.srclang  = v}"
  prim__setSrclang : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSrclang : (obj : HTMLTrackElement) -> (v : String) -> JSIO ()
  setSrclang a b =
    primToJSIO "setSrclang" $ prim__setSrclang (toJS a) (toJS b)

namespace HTMLUListElement
  
  public export
  JSType HTMLUListElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.compact"
  prim__compact : AnyPtr -> PrimIO AnyPtr

  export
  compact : (obj : HTMLUListElement) -> JSIO Bool
  compact a =   primToJSIO "compact" $ prim__compact (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.compact  = v}"
  prim__setCompact : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCompact : (obj : HTMLUListElement) -> (v : Bool) -> JSIO ()
  setCompact a b =
    primToJSIO "setCompact" $ prim__setCompact (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : HTMLUListElement) -> JSIO String
  type a =   primToJSIO "type" $ prim__type (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : HTMLUListElement) -> (v : String) -> JSIO ()
  setType a b =   primToJSIO "setType" $ prim__setType (toJS a) (toJS b)

namespace HTMLUnknownElement
  
  public export
  JSType HTMLUnknownElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace HTMLVideoElement
  
  public export
  JSType HTMLVideoElement where
    parents =  [ HTMLMediaElement
               , HTMLElement
               , Element
               , Node
               , EventTarget
               , JSObject
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , ElementContentEditable
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.videoHeight"
  prim__videoHeight : AnyPtr -> PrimIO AnyPtr

  export
  videoHeight : (obj : HTMLVideoElement) -> JSIO UInt32
  videoHeight a =   primToJSIO "videoHeight" $ prim__videoHeight (toJS a)
  
  %foreign "browser:lambda:x=>x.videoWidth"
  prim__videoWidth : AnyPtr -> PrimIO AnyPtr

  export
  videoWidth : (obj : HTMLVideoElement) -> JSIO UInt32
  videoWidth a =   primToJSIO "videoWidth" $ prim__videoWidth (toJS a)
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : HTMLVideoElement) -> JSIO UInt32
  height a =   primToJSIO "height" $ prim__height (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.height  = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeight : (obj : HTMLVideoElement) -> (v : UInt32) -> JSIO ()
  setHeight a b =   primToJSIO "setHeight" $ prim__setHeight (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.playsInline"
  prim__playsInline : AnyPtr -> PrimIO AnyPtr

  export
  playsInline : (obj : HTMLVideoElement) -> JSIO Bool
  playsInline a =   primToJSIO "playsInline" $ prim__playsInline (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.playsInline  = v}"
  prim__setPlaysInline : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPlaysInline : (obj : HTMLVideoElement) -> (v : Bool) -> JSIO ()
  setPlaysInline a b =
    primToJSIO "setPlaysInline" $ prim__setPlaysInline (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.poster"
  prim__poster : AnyPtr -> PrimIO AnyPtr

  export
  poster : (obj : HTMLVideoElement) -> JSIO String
  poster a =   primToJSIO "poster" $ prim__poster (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.poster  = v}"
  prim__setPoster : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPoster : (obj : HTMLVideoElement) -> (v : String) -> JSIO ()
  setPoster a b =   primToJSIO "setPoster" $ prim__setPoster (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : HTMLVideoElement) -> JSIO UInt32
  width a =   primToJSIO "width" $ prim__width (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : HTMLVideoElement) -> (v : UInt32) -> JSIO ()
  setWidth a b =   primToJSIO "setWidth" $ prim__setWidth (toJS a) (toJS b)

namespace HashChangeEvent
  
  public export
  JSType HashChangeEvent where
    parents =  [ Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.newURL"
  prim__newURL : AnyPtr -> PrimIO AnyPtr

  export
  newURL : (obj : HashChangeEvent) -> JSIO String
  newURL a =   primToJSIO "newURL" $ prim__newURL (toJS a)
  
  %foreign "browser:lambda:x=>x.oldURL"
  prim__oldURL : AnyPtr -> PrimIO AnyPtr

  export
  oldURL : (obj : HashChangeEvent) -> JSIO String
  oldURL a =   primToJSIO "oldURL" $ prim__oldURL (toJS a)

namespace History
  
  public export
  JSType History where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : History) -> JSIO UInt32
  length a =   primToJSIO "length" $ prim__length (toJS a)
  
  %foreign "browser:lambda:x=>x.state"
  prim__state : AnyPtr -> PrimIO AnyPtr

  export
  state : (obj : History) -> JSIO Any
  state a =   primToJSIO "state" $ prim__state (toJS a)
  
  %foreign "browser:lambda:x=>x.scrollRestoration"
  prim__scrollRestoration : AnyPtr -> PrimIO AnyPtr

  export
  scrollRestoration : (obj : History) -> JSIO ScrollRestoration
  scrollRestoration a =
    primToJSIO "scrollRestoration" $ prim__scrollRestoration (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.scrollRestoration  = v}"
  prim__setScrollRestoration : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setScrollRestoration : (obj : History) -> (v : ScrollRestoration) -> JSIO ()
  setScrollRestoration a b =
    primToJSIO "setScrollRestoration" $ prim__setScrollRestoration (toJS a)
                                                                   (toJS b)

namespace ImageBitmap
  
  public export
  JSType ImageBitmap where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : ImageBitmap) -> JSIO UInt32
  height a =   primToJSIO "height" $ prim__height (toJS a)
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : ImageBitmap) -> JSIO UInt32
  width a =   primToJSIO "width" $ prim__width (toJS a)

namespace ImageBitmapRenderingContext
  
  public export
  JSType ImageBitmapRenderingContext where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.canvas"
  prim__canvas : AnyPtr -> PrimIO AnyPtr

  export
  canvas :  (obj : ImageBitmapRenderingContext)
         -> JSIO (NS I [ HTMLCanvasElement , OffscreenCanvas ])
  canvas a =   primToJSIO "canvas" $ prim__canvas (toJS a)

namespace ImageData
  
  public export
  JSType ImageData where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.data"
  prim__data_ : AnyPtr -> PrimIO AnyPtr

  export
  data_ : (obj : ImageData) -> JSIO (JSArray UInt8)
  data_ a =   primToJSIO "data_" $ prim__data_ (toJS a)
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : ImageData) -> JSIO UInt32
  height a =   primToJSIO "height" $ prim__height (toJS a)
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : ImageData) -> JSIO UInt32
  width a =   primToJSIO "width" $ prim__width (toJS a)

namespace Location
  
  public export
  JSType Location where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.ancestorOrigins"
  prim__ancestorOrigins : AnyPtr -> PrimIO AnyPtr

  export
  ancestorOrigins : (obj : Location) -> JSIO DOMStringList
  ancestorOrigins a =
    primToJSIO "ancestorOrigins" $ prim__ancestorOrigins (toJS a)
  
  %foreign "browser:lambda:x=>x.origin"
  prim__origin : AnyPtr -> PrimIO AnyPtr

  export
  origin : (obj : Location) -> JSIO String
  origin a =   primToJSIO "origin" $ prim__origin (toJS a)
  
  %foreign "browser:lambda:x=>x.hash"
  prim__hash : AnyPtr -> PrimIO AnyPtr

  export
  hash : (obj : Location) -> JSIO String
  hash a =   primToJSIO "hash" $ prim__hash (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.hash  = v}"
  prim__setHash : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHash : (obj : Location) -> (v : String) -> JSIO ()
  setHash a b =   primToJSIO "setHash" $ prim__setHash (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.host"
  prim__host : AnyPtr -> PrimIO AnyPtr

  export
  host : (obj : Location) -> JSIO String
  host a =   primToJSIO "host" $ prim__host (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.host  = v}"
  prim__setHost : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHost : (obj : Location) -> (v : String) -> JSIO ()
  setHost a b =   primToJSIO "setHost" $ prim__setHost (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.hostname"
  prim__hostname : AnyPtr -> PrimIO AnyPtr

  export
  hostname : (obj : Location) -> JSIO String
  hostname a =   primToJSIO "hostname" $ prim__hostname (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.hostname  = v}"
  prim__setHostname : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHostname : (obj : Location) -> (v : String) -> JSIO ()
  setHostname a b =
    primToJSIO "setHostname" $ prim__setHostname (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.pathname"
  prim__pathname : AnyPtr -> PrimIO AnyPtr

  export
  pathname : (obj : Location) -> JSIO String
  pathname a =   primToJSIO "pathname" $ prim__pathname (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.pathname  = v}"
  prim__setPathname : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPathname : (obj : Location) -> (v : String) -> JSIO ()
  setPathname a b =
    primToJSIO "setPathname" $ prim__setPathname (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.port"
  prim__port : AnyPtr -> PrimIO AnyPtr

  export
  port : (obj : Location) -> JSIO String
  port a =   primToJSIO "port" $ prim__port (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.port  = v}"
  prim__setPort : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPort : (obj : Location) -> (v : String) -> JSIO ()
  setPort a b =   primToJSIO "setPort" $ prim__setPort (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.protocol"
  prim__protocol : AnyPtr -> PrimIO AnyPtr

  export
  protocol : (obj : Location) -> JSIO String
  protocol a =   primToJSIO "protocol" $ prim__protocol (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.protocol  = v}"
  prim__setProtocol : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setProtocol : (obj : Location) -> (v : String) -> JSIO ()
  setProtocol a b =
    primToJSIO "setProtocol" $ prim__setProtocol (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.search"
  prim__search : AnyPtr -> PrimIO AnyPtr

  export
  search : (obj : Location) -> JSIO String
  search a =   primToJSIO "search" $ prim__search (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.search  = v}"
  prim__setSearch : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSearch : (obj : Location) -> (v : String) -> JSIO ()
  setSearch a b =   primToJSIO "setSearch" $ prim__setSearch (toJS a) (toJS b)

namespace MediaError
  
  public export
  JSType MediaError where
    parents =  [ JSObject ]

    mixins =  []
  
  public export
  MEDIA_ERR_ABORTED : UInt16
  MEDIA_ERR_ABORTED = 1
  
  public export
  MEDIA_ERR_DECODE : UInt16
  MEDIA_ERR_DECODE = 3
  
  public export
  MEDIA_ERR_NETWORK : UInt16
  MEDIA_ERR_NETWORK = 2
  
  public export
  MEDIA_ERR_SRC_NOT_SUPPORTED : UInt16
  MEDIA_ERR_SRC_NOT_SUPPORTED = 4
  
  %foreign "browser:lambda:x=>x.code"
  prim__code : AnyPtr -> PrimIO AnyPtr

  export
  code : (obj : MediaError) -> JSIO UInt16
  code a =   primToJSIO "code" $ prim__code (toJS a)
  
  %foreign "browser:lambda:x=>x.message"
  prim__message : AnyPtr -> PrimIO AnyPtr

  export
  message : (obj : MediaError) -> JSIO String
  message a =   primToJSIO "message" $ prim__message (toJS a)

namespace MessageChannel
  
  public export
  JSType MessageChannel where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.port1"
  prim__port1 : AnyPtr -> PrimIO AnyPtr

  export
  port1 : (obj : MessageChannel) -> JSIO MessagePort
  port1 a =   primToJSIO "port1" $ prim__port1 (toJS a)
  
  %foreign "browser:lambda:x=>x.port2"
  prim__port2 : AnyPtr -> PrimIO AnyPtr

  export
  port2 : (obj : MessageChannel) -> JSIO MessagePort
  port2 a =   primToJSIO "port2" $ prim__port2 (toJS a)

namespace MessageEvent
  
  public export
  JSType MessageEvent where
    parents =  [ Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.data"
  prim__data_ : AnyPtr -> PrimIO AnyPtr

  export
  data_ : (obj : MessageEvent) -> JSIO Any
  data_ a =   primToJSIO "data_" $ prim__data_ (toJS a)
  
  %foreign "browser:lambda:x=>x.lastEventId"
  prim__lastEventId : AnyPtr -> PrimIO AnyPtr

  export
  lastEventId : (obj : MessageEvent) -> JSIO String
  lastEventId a =   primToJSIO "lastEventId" $ prim__lastEventId (toJS a)
  
  %foreign "browser:lambda:x=>x.origin"
  prim__origin : AnyPtr -> PrimIO AnyPtr

  export
  origin : (obj : MessageEvent) -> JSIO String
  origin a =   primToJSIO "origin" $ prim__origin (toJS a)
  
  %foreign "browser:lambda:x=>x.ports"
  prim__ports : AnyPtr -> PrimIO AnyPtr

  export
  ports : (obj : MessageEvent) -> JSIO (JSArray MessagePort)
  ports a =   primToJSIO "ports" $ prim__ports (toJS a)
  
  %foreign "browser:lambda:x=>x.source"
  prim__source : AnyPtr -> PrimIO AnyPtr

  export
  source : (obj : MessageEvent) -> JSIO (Maybe MessageEventSource)
  source a =   primToJSIO "source" $ prim__source (toJS a)

namespace MessagePort
  
  public export
  JSType MessagePort where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : AnyPtr -> PrimIO AnyPtr

  export
  onmessage : (obj : MessagePort) -> JSIO EventHandler
  onmessage a =   primToJSIO "onmessage" $ prim__onmessage (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onmessage  = v}"
  prim__setOnmessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmessage : (obj : MessagePort) -> (v : EventHandler) -> JSIO ()
  setOnmessage a b =
    primToJSIO "setOnmessage" $ prim__setOnmessage (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onmessageerror"
  prim__onmessageerror : AnyPtr -> PrimIO AnyPtr

  export
  onmessageerror : (obj : MessagePort) -> JSIO EventHandler
  onmessageerror a =
    primToJSIO "onmessageerror" $ prim__onmessageerror (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onmessageerror  = v}"
  prim__setOnmessageerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmessageerror : (obj : MessagePort) -> (v : EventHandler) -> JSIO ()
  setOnmessageerror a b =
    primToJSIO "setOnmessageerror" $ prim__setOnmessageerror (toJS a) (toJS b)

namespace MimeType
  
  public export
  JSType MimeType where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.description"
  prim__description : AnyPtr -> PrimIO ()

  export
  description : (obj : MimeType) -> JSIO ()
  description a =   primToJSIO "description" $ prim__description (toJS a)
  
  %foreign "browser:lambda:x=>x.enabledPlugin"
  prim__enabledPlugin : AnyPtr -> PrimIO ()

  export
  enabledPlugin : (obj : MimeType) -> JSIO ()
  enabledPlugin a =   primToJSIO "enabledPlugin" $ prim__enabledPlugin (toJS a)
  
  %foreign "browser:lambda:x=>x.suffixes"
  prim__suffixes : AnyPtr -> PrimIO ()

  export
  suffixes : (obj : MimeType) -> JSIO ()
  suffixes a =   primToJSIO "suffixes" $ prim__suffixes (toJS a)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO ()

  export
  type : (obj : MimeType) -> JSIO ()
  type a =   primToJSIO "type" $ prim__type (toJS a)

namespace MimeTypeArray
  
  public export
  JSType MimeTypeArray where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : MimeTypeArray) -> JSIO UInt32
  length a =   primToJSIO "length" $ prim__length (toJS a)

namespace Navigator
  
  public export
  JSType Navigator where
    parents =  [ JSObject ]

    mixins =  [ NavigatorConcurrentHardware
              , NavigatorContentUtils
              , NavigatorCookies
              , NavigatorID
              , NavigatorLanguage
              , NavigatorOnLine
              , NavigatorPlugins
              ]
  
  %foreign "browser:lambda:x=>x.clipboard"
  prim__clipboard : AnyPtr -> PrimIO AnyPtr

  export
  clipboard : (obj : Navigator) -> JSIO Clipboard
  clipboard a =   primToJSIO "clipboard" $ prim__clipboard (toJS a)
  
  %foreign "browser:lambda:x=>x.mediaDevices"
  prim__mediaDevices : AnyPtr -> PrimIO AnyPtr

  export
  mediaDevices : (obj : Navigator) -> JSIO MediaDevices
  mediaDevices a =   primToJSIO "mediaDevices" $ prim__mediaDevices (toJS a)
  
  %foreign "browser:lambda:x=>x.permissions"
  prim__permissions : AnyPtr -> PrimIO AnyPtr

  export
  permissions : (obj : Navigator) -> JSIO Permissions
  permissions a =   primToJSIO "permissions" $ prim__permissions (toJS a)
  
  %foreign "browser:lambda:x=>x.serviceWorker"
  prim__serviceWorker : AnyPtr -> PrimIO AnyPtr

  export
  serviceWorker : (obj : Navigator) -> JSIO ServiceWorkerContainer
  serviceWorker a =   primToJSIO "serviceWorker" $ prim__serviceWorker (toJS a)

namespace OffscreenCanvas
  
  public export
  JSType OffscreenCanvas where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : OffscreenCanvas) -> JSIO UInt64
  height a =   primToJSIO "height" $ prim__height (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.height  = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeight : (obj : OffscreenCanvas) -> (v : UInt64) -> JSIO ()
  setHeight a b =   primToJSIO "setHeight" $ prim__setHeight (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : OffscreenCanvas) -> JSIO UInt64
  width a =   primToJSIO "width" $ prim__width (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : OffscreenCanvas) -> (v : UInt64) -> JSIO ()
  setWidth a b =   primToJSIO "setWidth" $ prim__setWidth (toJS a) (toJS b)

namespace OffscreenCanvasRenderingContext2D
  
  public export
  JSType OffscreenCanvasRenderingContext2D where
    parents =  [ JSObject ]

    mixins =  [ CanvasCompositing
              , CanvasDrawImage
              , CanvasDrawPath
              , CanvasFillStrokeStyles
              , CanvasFilters
              , CanvasImageData
              , CanvasImageSmoothing
              , CanvasPath
              , CanvasPathDrawingStyles
              , CanvasRect
              , CanvasShadowStyles
              , CanvasState
              , CanvasText
              , CanvasTextDrawingStyles
              , CanvasTransform
              ]
  
  %foreign "browser:lambda:x=>x.canvas"
  prim__canvas : AnyPtr -> PrimIO AnyPtr

  export
  canvas : (obj : OffscreenCanvasRenderingContext2D) -> JSIO OffscreenCanvas
  canvas a =   primToJSIO "canvas" $ prim__canvas (toJS a)

namespace PageTransitionEvent
  
  public export
  JSType PageTransitionEvent where
    parents =  [ Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.persisted"
  prim__persisted : AnyPtr -> PrimIO AnyPtr

  export
  persisted : (obj : PageTransitionEvent) -> JSIO Bool
  persisted a =   primToJSIO "persisted" $ prim__persisted (toJS a)

namespace Path2D
  
  public export
  JSType Path2D where
    parents =  [ JSObject ]

    mixins =  [ CanvasPath ]

namespace Plugin
  
  public export
  JSType Plugin where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.description"
  prim__description : AnyPtr -> PrimIO ()

  export
  description : (obj : Plugin) -> JSIO ()
  description a =   primToJSIO "description" $ prim__description (toJS a)
  
  %foreign "browser:lambda:x=>x.filename"
  prim__filename : AnyPtr -> PrimIO ()

  export
  filename : (obj : Plugin) -> JSIO ()
  filename a =   primToJSIO "filename" $ prim__filename (toJS a)
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO ()

  export
  length : (obj : Plugin) -> JSIO ()
  length a =   primToJSIO "length" $ prim__length (toJS a)
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO ()

  export
  name : (obj : Plugin) -> JSIO ()
  name a =   primToJSIO "name" $ prim__name (toJS a)

namespace PluginArray
  
  public export
  JSType PluginArray where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : PluginArray) -> JSIO UInt32
  length a =   primToJSIO "length" $ prim__length (toJS a)

namespace PopStateEvent
  
  public export
  JSType PopStateEvent where
    parents =  [ Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.state"
  prim__state : AnyPtr -> PrimIO AnyPtr

  export
  state : (obj : PopStateEvent) -> JSIO Any
  state a =   primToJSIO "state" $ prim__state (toJS a)

namespace PromiseRejectionEvent
  
  public export
  JSType PromiseRejectionEvent where
    parents =  [ Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.promise"
  prim__promise : AnyPtr -> PrimIO AnyPtr

  export
  promise : (obj : PromiseRejectionEvent) -> JSIO (JSPromise Any)
  promise a =   primToJSIO "promise" $ prim__promise (toJS a)
  
  %foreign "browser:lambda:x=>x.reason"
  prim__reason : AnyPtr -> PrimIO AnyPtr

  export
  reason : (obj : PromiseRejectionEvent) -> JSIO Any
  reason a =   primToJSIO "reason" $ prim__reason (toJS a)

namespace RadioNodeList
  
  public export
  JSType RadioNodeList where
    parents =  [ NodeList , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : RadioNodeList) -> JSIO String
  value a =   primToJSIO "value" $ prim__value (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue : (obj : RadioNodeList) -> (v : String) -> JSIO ()
  setValue a b =   primToJSIO "setValue" $ prim__setValue (toJS a) (toJS b)

namespace SharedWorker
  
  public export
  JSType SharedWorker where
    parents =  [ EventTarget , JSObject ]

    mixins =  [ AbstractWorker ]
  
  %foreign "browser:lambda:x=>x.port"
  prim__port : AnyPtr -> PrimIO AnyPtr

  export
  port : (obj : SharedWorker) -> JSIO MessagePort
  port a =   primToJSIO "port" $ prim__port (toJS a)

namespace SharedWorkerGlobalScope
  
  public export
  JSType SharedWorkerGlobalScope where
    parents =  [ WorkerGlobalScope , EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : SharedWorkerGlobalScope) -> JSIO String
  name a =   primToJSIO "name" $ prim__name (toJS a)
  
  %foreign "browser:lambda:x=>x.onconnect"
  prim__onconnect : AnyPtr -> PrimIO AnyPtr

  export
  onconnect : (obj : SharedWorkerGlobalScope) -> JSIO EventHandler
  onconnect a =   primToJSIO "onconnect" $ prim__onconnect (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onconnect  = v}"
  prim__setOnconnect : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnconnect :  (obj : SharedWorkerGlobalScope)
               -> (v : EventHandler)
               -> JSIO ()
  setOnconnect a b =
    primToJSIO "setOnconnect" $ prim__setOnconnect (toJS a) (toJS b)

namespace Storage
  
  public export
  JSType Storage where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : Storage) -> JSIO UInt32
  length a =   primToJSIO "length" $ prim__length (toJS a)

namespace StorageEvent
  
  public export
  JSType StorageEvent where
    parents =  [ Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.key"
  prim__key : AnyPtr -> PrimIO AnyPtr

  export
  key : (obj : StorageEvent) -> JSIO (Maybe String)
  key a =   primToJSIO "key" $ prim__key (toJS a)
  
  %foreign "browser:lambda:x=>x.newValue"
  prim__newValue : AnyPtr -> PrimIO AnyPtr

  export
  newValue : (obj : StorageEvent) -> JSIO (Maybe String)
  newValue a =   primToJSIO "newValue" $ prim__newValue (toJS a)
  
  %foreign "browser:lambda:x=>x.oldValue"
  prim__oldValue : AnyPtr -> PrimIO AnyPtr

  export
  oldValue : (obj : StorageEvent) -> JSIO (Maybe String)
  oldValue a =   primToJSIO "oldValue" $ prim__oldValue (toJS a)
  
  %foreign "browser:lambda:x=>x.storageArea"
  prim__storageArea : AnyPtr -> PrimIO AnyPtr

  export
  storageArea : (obj : StorageEvent) -> JSIO (Maybe Storage)
  storageArea a =   primToJSIO "storageArea" $ prim__storageArea (toJS a)
  
  %foreign "browser:lambda:x=>x.url"
  prim__url : AnyPtr -> PrimIO AnyPtr

  export
  url : (obj : StorageEvent) -> JSIO String
  url a =   primToJSIO "url" $ prim__url (toJS a)

namespace SubmitEvent
  
  public export
  JSType SubmitEvent where
    parents =  [ Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.submitter"
  prim__submitter : AnyPtr -> PrimIO AnyPtr

  export
  submitter : (obj : SubmitEvent) -> JSIO (Maybe HTMLElement)
  submitter a =   primToJSIO "submitter" $ prim__submitter (toJS a)

namespace TextMetrics
  
  public export
  JSType TextMetrics where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.actualBoundingBoxAscent"
  prim__actualBoundingBoxAscent : AnyPtr -> PrimIO AnyPtr

  export
  actualBoundingBoxAscent : (obj : TextMetrics) -> JSIO Double
  actualBoundingBoxAscent a =
    primToJSIO "actualBoundingBoxAscent" $ prim__actualBoundingBoxAscent (toJS a)
  
  %foreign "browser:lambda:x=>x.actualBoundingBoxDescent"
  prim__actualBoundingBoxDescent : AnyPtr -> PrimIO AnyPtr

  export
  actualBoundingBoxDescent : (obj : TextMetrics) -> JSIO Double
  actualBoundingBoxDescent a =
    primToJSIO "actualBoundingBoxDescent" $ prim__actualBoundingBoxDescent (toJS a)
  
  %foreign "browser:lambda:x=>x.actualBoundingBoxLeft"
  prim__actualBoundingBoxLeft : AnyPtr -> PrimIO AnyPtr

  export
  actualBoundingBoxLeft : (obj : TextMetrics) -> JSIO Double
  actualBoundingBoxLeft a =
    primToJSIO "actualBoundingBoxLeft" $ prim__actualBoundingBoxLeft (toJS a)
  
  %foreign "browser:lambda:x=>x.actualBoundingBoxRight"
  prim__actualBoundingBoxRight : AnyPtr -> PrimIO AnyPtr

  export
  actualBoundingBoxRight : (obj : TextMetrics) -> JSIO Double
  actualBoundingBoxRight a =
    primToJSIO "actualBoundingBoxRight" $ prim__actualBoundingBoxRight (toJS a)
  
  %foreign "browser:lambda:x=>x.alphabeticBaseline"
  prim__alphabeticBaseline : AnyPtr -> PrimIO AnyPtr

  export
  alphabeticBaseline : (obj : TextMetrics) -> JSIO Double
  alphabeticBaseline a =
    primToJSIO "alphabeticBaseline" $ prim__alphabeticBaseline (toJS a)
  
  %foreign "browser:lambda:x=>x.emHeightAscent"
  prim__emHeightAscent : AnyPtr -> PrimIO AnyPtr

  export
  emHeightAscent : (obj : TextMetrics) -> JSIO Double
  emHeightAscent a =
    primToJSIO "emHeightAscent" $ prim__emHeightAscent (toJS a)
  
  %foreign "browser:lambda:x=>x.emHeightDescent"
  prim__emHeightDescent : AnyPtr -> PrimIO AnyPtr

  export
  emHeightDescent : (obj : TextMetrics) -> JSIO Double
  emHeightDescent a =
    primToJSIO "emHeightDescent" $ prim__emHeightDescent (toJS a)
  
  %foreign "browser:lambda:x=>x.fontBoundingBoxAscent"
  prim__fontBoundingBoxAscent : AnyPtr -> PrimIO AnyPtr

  export
  fontBoundingBoxAscent : (obj : TextMetrics) -> JSIO Double
  fontBoundingBoxAscent a =
    primToJSIO "fontBoundingBoxAscent" $ prim__fontBoundingBoxAscent (toJS a)
  
  %foreign "browser:lambda:x=>x.fontBoundingBoxDescent"
  prim__fontBoundingBoxDescent : AnyPtr -> PrimIO AnyPtr

  export
  fontBoundingBoxDescent : (obj : TextMetrics) -> JSIO Double
  fontBoundingBoxDescent a =
    primToJSIO "fontBoundingBoxDescent" $ prim__fontBoundingBoxDescent (toJS a)
  
  %foreign "browser:lambda:x=>x.hangingBaseline"
  prim__hangingBaseline : AnyPtr -> PrimIO AnyPtr

  export
  hangingBaseline : (obj : TextMetrics) -> JSIO Double
  hangingBaseline a =
    primToJSIO "hangingBaseline" $ prim__hangingBaseline (toJS a)
  
  %foreign "browser:lambda:x=>x.ideographicBaseline"
  prim__ideographicBaseline : AnyPtr -> PrimIO AnyPtr

  export
  ideographicBaseline : (obj : TextMetrics) -> JSIO Double
  ideographicBaseline a =
    primToJSIO "ideographicBaseline" $ prim__ideographicBaseline (toJS a)
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : TextMetrics) -> JSIO Double
  width a =   primToJSIO "width" $ prim__width (toJS a)

namespace TextTrack
  
  public export
  JSType TextTrack where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.activeCues"
  prim__activeCues : AnyPtr -> PrimIO AnyPtr

  export
  activeCues : (obj : TextTrack) -> JSIO (Maybe TextTrackCueList)
  activeCues a =   primToJSIO "activeCues" $ prim__activeCues (toJS a)
  
  %foreign "browser:lambda:x=>x.cues"
  prim__cues : AnyPtr -> PrimIO AnyPtr

  export
  cues : (obj : TextTrack) -> JSIO (Maybe TextTrackCueList)
  cues a =   primToJSIO "cues" $ prim__cues (toJS a)
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr

  export
  id : (obj : TextTrack) -> JSIO String
  id a =   primToJSIO "id" $ prim__id (toJS a)
  
  %foreign "browser:lambda:x=>x.inBandMetadataTrackDispatchType"
  prim__inBandMetadataTrackDispatchType : AnyPtr -> PrimIO AnyPtr

  export
  inBandMetadataTrackDispatchType : (obj : TextTrack) -> JSIO String
  inBandMetadataTrackDispatchType a =
    primToJSIO "inBandMetadataTrackDispatchType" $ prim__inBandMetadataTrackDispatchType (toJS a)
  
  %foreign "browser:lambda:x=>x.kind"
  prim__kind : AnyPtr -> PrimIO AnyPtr

  export
  kind : (obj : TextTrack) -> JSIO TextTrackKind
  kind a =   primToJSIO "kind" $ prim__kind (toJS a)
  
  %foreign "browser:lambda:x=>x.label"
  prim__label : AnyPtr -> PrimIO AnyPtr

  export
  label : (obj : TextTrack) -> JSIO String
  label a =   primToJSIO "label" $ prim__label (toJS a)
  
  %foreign "browser:lambda:x=>x.language"
  prim__language : AnyPtr -> PrimIO AnyPtr

  export
  language : (obj : TextTrack) -> JSIO String
  language a =   primToJSIO "language" $ prim__language (toJS a)
  
  %foreign "browser:lambda:x=>x.sourceBuffer"
  prim__sourceBuffer : AnyPtr -> PrimIO AnyPtr

  export
  sourceBuffer : (obj : TextTrack) -> JSIO (Maybe SourceBuffer)
  sourceBuffer a =   primToJSIO "sourceBuffer" $ prim__sourceBuffer (toJS a)
  
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : AnyPtr -> PrimIO AnyPtr

  export
  mode : (obj : TextTrack) -> JSIO TextTrackMode
  mode a =   primToJSIO "mode" $ prim__mode (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.mode  = v}"
  prim__setMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMode : (obj : TextTrack) -> (v : TextTrackMode) -> JSIO ()
  setMode a b =   primToJSIO "setMode" $ prim__setMode (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.oncuechange"
  prim__oncuechange : AnyPtr -> PrimIO AnyPtr

  export
  oncuechange : (obj : TextTrack) -> JSIO EventHandler
  oncuechange a =   primToJSIO "oncuechange" $ prim__oncuechange (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.oncuechange  = v}"
  prim__setOncuechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOncuechange : (obj : TextTrack) -> (v : EventHandler) -> JSIO ()
  setOncuechange a b =
    primToJSIO "setOncuechange" $ prim__setOncuechange (toJS a) (toJS b)

namespace TextTrackCue
  
  public export
  JSType TextTrackCue where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.track"
  prim__track : AnyPtr -> PrimIO AnyPtr

  export
  track : (obj : TextTrackCue) -> JSIO (Maybe TextTrack)
  track a =   primToJSIO "track" $ prim__track (toJS a)
  
  %foreign "browser:lambda:x=>x.endTime"
  prim__endTime : AnyPtr -> PrimIO AnyPtr

  export
  endTime : (obj : TextTrackCue) -> JSIO Double
  endTime a =   primToJSIO "endTime" $ prim__endTime (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.endTime  = v}"
  prim__setEndTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEndTime : (obj : TextTrackCue) -> (v : Double) -> JSIO ()
  setEndTime a b =
    primToJSIO "setEndTime" $ prim__setEndTime (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr

  export
  id : (obj : TextTrackCue) -> JSIO String
  id a =   primToJSIO "id" $ prim__id (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.id  = v}"
  prim__setId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setId : (obj : TextTrackCue) -> (v : String) -> JSIO ()
  setId a b =   primToJSIO "setId" $ prim__setId (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onenter"
  prim__onenter : AnyPtr -> PrimIO AnyPtr

  export
  onenter : (obj : TextTrackCue) -> JSIO EventHandler
  onenter a =   primToJSIO "onenter" $ prim__onenter (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onenter  = v}"
  prim__setOnenter : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnenter : (obj : TextTrackCue) -> (v : EventHandler) -> JSIO ()
  setOnenter a b =
    primToJSIO "setOnenter" $ prim__setOnenter (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onexit"
  prim__onexit : AnyPtr -> PrimIO AnyPtr

  export
  onexit : (obj : TextTrackCue) -> JSIO EventHandler
  onexit a =   primToJSIO "onexit" $ prim__onexit (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onexit  = v}"
  prim__setOnexit : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnexit : (obj : TextTrackCue) -> (v : EventHandler) -> JSIO ()
  setOnexit a b =   primToJSIO "setOnexit" $ prim__setOnexit (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.pauseOnExit"
  prim__pauseOnExit : AnyPtr -> PrimIO AnyPtr

  export
  pauseOnExit : (obj : TextTrackCue) -> JSIO Bool
  pauseOnExit a =   primToJSIO "pauseOnExit" $ prim__pauseOnExit (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.pauseOnExit  = v}"
  prim__setPauseOnExit : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPauseOnExit : (obj : TextTrackCue) -> (v : Bool) -> JSIO ()
  setPauseOnExit a b =
    primToJSIO "setPauseOnExit" $ prim__setPauseOnExit (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.startTime"
  prim__startTime : AnyPtr -> PrimIO AnyPtr

  export
  startTime : (obj : TextTrackCue) -> JSIO Double
  startTime a =   primToJSIO "startTime" $ prim__startTime (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.startTime  = v}"
  prim__setStartTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStartTime : (obj : TextTrackCue) -> (v : Double) -> JSIO ()
  setStartTime a b =
    primToJSIO "setStartTime" $ prim__setStartTime (toJS a) (toJS b)

namespace TextTrackCueList
  
  public export
  JSType TextTrackCueList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : TextTrackCueList) -> JSIO UInt32
  length a =   primToJSIO "length" $ prim__length (toJS a)

namespace TextTrackList
  
  public export
  JSType TextTrackList where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : TextTrackList) -> JSIO UInt32
  length a =   primToJSIO "length" $ prim__length (toJS a)
  
  %foreign "browser:lambda:x=>x.onaddtrack"
  prim__onaddtrack : AnyPtr -> PrimIO AnyPtr

  export
  onaddtrack : (obj : TextTrackList) -> JSIO EventHandler
  onaddtrack a =   primToJSIO "onaddtrack" $ prim__onaddtrack (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onaddtrack  = v}"
  prim__setOnaddtrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnaddtrack : (obj : TextTrackList) -> (v : EventHandler) -> JSIO ()
  setOnaddtrack a b =
    primToJSIO "setOnaddtrack" $ prim__setOnaddtrack (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onchange"
  prim__onchange : AnyPtr -> PrimIO AnyPtr

  export
  onchange : (obj : TextTrackList) -> JSIO EventHandler
  onchange a =   primToJSIO "onchange" $ prim__onchange (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onchange  = v}"
  prim__setOnchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnchange : (obj : TextTrackList) -> (v : EventHandler) -> JSIO ()
  setOnchange a b =
    primToJSIO "setOnchange" $ prim__setOnchange (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onremovetrack"
  prim__onremovetrack : AnyPtr -> PrimIO AnyPtr

  export
  onremovetrack : (obj : TextTrackList) -> JSIO EventHandler
  onremovetrack a =   primToJSIO "onremovetrack" $ prim__onremovetrack (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onremovetrack  = v}"
  prim__setOnremovetrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnremovetrack : (obj : TextTrackList) -> (v : EventHandler) -> JSIO ()
  setOnremovetrack a b =
    primToJSIO "setOnremovetrack" $ prim__setOnremovetrack (toJS a) (toJS b)

namespace TimeRanges
  
  public export
  JSType TimeRanges where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : TimeRanges) -> JSIO UInt32
  length a =   primToJSIO "length" $ prim__length (toJS a)

namespace TrackEvent
  
  public export
  JSType TrackEvent where
    parents =  [ Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.track"
  prim__track : AnyPtr -> PrimIO AnyPtr

  export
  track :  (obj : TrackEvent)
        -> JSIO (Maybe (NS I [ VideoTrack , AudioTrack , TextTrack ]))
  track a =   primToJSIO "track" $ prim__track (toJS a)

namespace ValidityState
  
  public export
  JSType ValidityState where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.badInput"
  prim__badInput : AnyPtr -> PrimIO AnyPtr

  export
  badInput : (obj : ValidityState) -> JSIO Bool
  badInput a =   primToJSIO "badInput" $ prim__badInput (toJS a)
  
  %foreign "browser:lambda:x=>x.customError"
  prim__customError : AnyPtr -> PrimIO AnyPtr

  export
  customError : (obj : ValidityState) -> JSIO Bool
  customError a =   primToJSIO "customError" $ prim__customError (toJS a)
  
  %foreign "browser:lambda:x=>x.patternMismatch"
  prim__patternMismatch : AnyPtr -> PrimIO AnyPtr

  export
  patternMismatch : (obj : ValidityState) -> JSIO Bool
  patternMismatch a =
    primToJSIO "patternMismatch" $ prim__patternMismatch (toJS a)
  
  %foreign "browser:lambda:x=>x.rangeOverflow"
  prim__rangeOverflow : AnyPtr -> PrimIO AnyPtr

  export
  rangeOverflow : (obj : ValidityState) -> JSIO Bool
  rangeOverflow a =   primToJSIO "rangeOverflow" $ prim__rangeOverflow (toJS a)
  
  %foreign "browser:lambda:x=>x.rangeUnderflow"
  prim__rangeUnderflow : AnyPtr -> PrimIO AnyPtr

  export
  rangeUnderflow : (obj : ValidityState) -> JSIO Bool
  rangeUnderflow a =
    primToJSIO "rangeUnderflow" $ prim__rangeUnderflow (toJS a)
  
  %foreign "browser:lambda:x=>x.stepMismatch"
  prim__stepMismatch : AnyPtr -> PrimIO AnyPtr

  export
  stepMismatch : (obj : ValidityState) -> JSIO Bool
  stepMismatch a =   primToJSIO "stepMismatch" $ prim__stepMismatch (toJS a)
  
  %foreign "browser:lambda:x=>x.tooLong"
  prim__tooLong : AnyPtr -> PrimIO AnyPtr

  export
  tooLong : (obj : ValidityState) -> JSIO Bool
  tooLong a =   primToJSIO "tooLong" $ prim__tooLong (toJS a)
  
  %foreign "browser:lambda:x=>x.tooShort"
  prim__tooShort : AnyPtr -> PrimIO AnyPtr

  export
  tooShort : (obj : ValidityState) -> JSIO Bool
  tooShort a =   primToJSIO "tooShort" $ prim__tooShort (toJS a)
  
  %foreign "browser:lambda:x=>x.typeMismatch"
  prim__typeMismatch : AnyPtr -> PrimIO AnyPtr

  export
  typeMismatch : (obj : ValidityState) -> JSIO Bool
  typeMismatch a =   primToJSIO "typeMismatch" $ prim__typeMismatch (toJS a)
  
  %foreign "browser:lambda:x=>x.valid"
  prim__valid : AnyPtr -> PrimIO AnyPtr

  export
  valid : (obj : ValidityState) -> JSIO Bool
  valid a =   primToJSIO "valid" $ prim__valid (toJS a)
  
  %foreign "browser:lambda:x=>x.valueMissing"
  prim__valueMissing : AnyPtr -> PrimIO AnyPtr

  export
  valueMissing : (obj : ValidityState) -> JSIO Bool
  valueMissing a =   primToJSIO "valueMissing" $ prim__valueMissing (toJS a)

namespace VideoTrack
  
  public export
  JSType VideoTrack where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr

  export
  id : (obj : VideoTrack) -> JSIO String
  id a =   primToJSIO "id" $ prim__id (toJS a)
  
  %foreign "browser:lambda:x=>x.kind"
  prim__kind : AnyPtr -> PrimIO AnyPtr

  export
  kind : (obj : VideoTrack) -> JSIO String
  kind a =   primToJSIO "kind" $ prim__kind (toJS a)
  
  %foreign "browser:lambda:x=>x.label"
  prim__label : AnyPtr -> PrimIO AnyPtr

  export
  label : (obj : VideoTrack) -> JSIO String
  label a =   primToJSIO "label" $ prim__label (toJS a)
  
  %foreign "browser:lambda:x=>x.language"
  prim__language : AnyPtr -> PrimIO AnyPtr

  export
  language : (obj : VideoTrack) -> JSIO String
  language a =   primToJSIO "language" $ prim__language (toJS a)
  
  %foreign "browser:lambda:x=>x.sourceBuffer"
  prim__sourceBuffer : AnyPtr -> PrimIO AnyPtr

  export
  sourceBuffer : (obj : VideoTrack) -> JSIO (Maybe SourceBuffer)
  sourceBuffer a =   primToJSIO "sourceBuffer" $ prim__sourceBuffer (toJS a)
  
  %foreign "browser:lambda:x=>x.selected"
  prim__selected : AnyPtr -> PrimIO AnyPtr

  export
  selected : (obj : VideoTrack) -> JSIO Bool
  selected a =   primToJSIO "selected" $ prim__selected (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.selected  = v}"
  prim__setSelected : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSelected : (obj : VideoTrack) -> (v : Bool) -> JSIO ()
  setSelected a b =
    primToJSIO "setSelected" $ prim__setSelected (toJS a) (toJS b)

namespace VideoTrackList
  
  public export
  JSType VideoTrackList where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : VideoTrackList) -> JSIO UInt32
  length a =   primToJSIO "length" $ prim__length (toJS a)
  
  %foreign "browser:lambda:x=>x.selectedIndex"
  prim__selectedIndex : AnyPtr -> PrimIO AnyPtr

  export
  selectedIndex : (obj : VideoTrackList) -> JSIO Int32
  selectedIndex a =   primToJSIO "selectedIndex" $ prim__selectedIndex (toJS a)
  
  %foreign "browser:lambda:x=>x.onaddtrack"
  prim__onaddtrack : AnyPtr -> PrimIO AnyPtr

  export
  onaddtrack : (obj : VideoTrackList) -> JSIO EventHandler
  onaddtrack a =   primToJSIO "onaddtrack" $ prim__onaddtrack (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onaddtrack  = v}"
  prim__setOnaddtrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnaddtrack : (obj : VideoTrackList) -> (v : EventHandler) -> JSIO ()
  setOnaddtrack a b =
    primToJSIO "setOnaddtrack" $ prim__setOnaddtrack (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onchange"
  prim__onchange : AnyPtr -> PrimIO AnyPtr

  export
  onchange : (obj : VideoTrackList) -> JSIO EventHandler
  onchange a =   primToJSIO "onchange" $ prim__onchange (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onchange  = v}"
  prim__setOnchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnchange : (obj : VideoTrackList) -> (v : EventHandler) -> JSIO ()
  setOnchange a b =
    primToJSIO "setOnchange" $ prim__setOnchange (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onremovetrack"
  prim__onremovetrack : AnyPtr -> PrimIO AnyPtr

  export
  onremovetrack : (obj : VideoTrackList) -> JSIO EventHandler
  onremovetrack a =   primToJSIO "onremovetrack" $ prim__onremovetrack (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onremovetrack  = v}"
  prim__setOnremovetrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnremovetrack : (obj : VideoTrackList) -> (v : EventHandler) -> JSIO ()
  setOnremovetrack a b =
    primToJSIO "setOnremovetrack" $ prim__setOnremovetrack (toJS a) (toJS b)

namespace WebSocket
  
  public export
  JSType WebSocket where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  public export
  CLOSED : UInt16
  CLOSED = 3
  
  public export
  CLOSING : UInt16
  CLOSING = 2
  
  public export
  CONNECTING : UInt16
  CONNECTING = 0o0
  
  public export
  OPEN : UInt16
  OPEN = 1
  
  %foreign "browser:lambda:x=>x.bufferedAmount"
  prim__bufferedAmount : AnyPtr -> PrimIO AnyPtr

  export
  bufferedAmount : (obj : WebSocket) -> JSIO UInt64
  bufferedAmount a =
    primToJSIO "bufferedAmount" $ prim__bufferedAmount (toJS a)
  
  %foreign "browser:lambda:x=>x.extensions"
  prim__extensions : AnyPtr -> PrimIO AnyPtr

  export
  extensions : (obj : WebSocket) -> JSIO String
  extensions a =   primToJSIO "extensions" $ prim__extensions (toJS a)
  
  %foreign "browser:lambda:x=>x.protocol"
  prim__protocol : AnyPtr -> PrimIO AnyPtr

  export
  protocol : (obj : WebSocket) -> JSIO String
  protocol a =   primToJSIO "protocol" $ prim__protocol (toJS a)
  
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : AnyPtr -> PrimIO AnyPtr

  export
  readyState : (obj : WebSocket) -> JSIO UInt16
  readyState a =   primToJSIO "readyState" $ prim__readyState (toJS a)
  
  %foreign "browser:lambda:x=>x.url"
  prim__url : AnyPtr -> PrimIO AnyPtr

  export
  url : (obj : WebSocket) -> JSIO String
  url a =   primToJSIO "url" $ prim__url (toJS a)
  
  %foreign "browser:lambda:x=>x.binaryType"
  prim__binaryType : AnyPtr -> PrimIO AnyPtr

  export
  binaryType : (obj : WebSocket) -> JSIO BinaryType
  binaryType a =   primToJSIO "binaryType" $ prim__binaryType (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.binaryType  = v}"
  prim__setBinaryType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBinaryType : (obj : WebSocket) -> (v : BinaryType) -> JSIO ()
  setBinaryType a b =
    primToJSIO "setBinaryType" $ prim__setBinaryType (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onclose"
  prim__onclose : AnyPtr -> PrimIO AnyPtr

  export
  onclose : (obj : WebSocket) -> JSIO EventHandler
  onclose a =   primToJSIO "onclose" $ prim__onclose (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onclose  = v}"
  prim__setOnclose : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnclose : (obj : WebSocket) -> (v : EventHandler) -> JSIO ()
  setOnclose a b =
    primToJSIO "setOnclose" $ prim__setOnclose (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : AnyPtr -> PrimIO AnyPtr

  export
  onerror : (obj : WebSocket) -> JSIO EventHandler
  onerror a =   primToJSIO "onerror" $ prim__onerror (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onerror  = v}"
  prim__setOnerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnerror : (obj : WebSocket) -> (v : EventHandler) -> JSIO ()
  setOnerror a b =
    primToJSIO "setOnerror" $ prim__setOnerror (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : AnyPtr -> PrimIO AnyPtr

  export
  onmessage : (obj : WebSocket) -> JSIO EventHandler
  onmessage a =   primToJSIO "onmessage" $ prim__onmessage (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onmessage  = v}"
  prim__setOnmessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmessage : (obj : WebSocket) -> (v : EventHandler) -> JSIO ()
  setOnmessage a b =
    primToJSIO "setOnmessage" $ prim__setOnmessage (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onopen"
  prim__onopen : AnyPtr -> PrimIO AnyPtr

  export
  onopen : (obj : WebSocket) -> JSIO EventHandler
  onopen a =   primToJSIO "onopen" $ prim__onopen (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onopen  = v}"
  prim__setOnopen : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnopen : (obj : WebSocket) -> (v : EventHandler) -> JSIO ()
  setOnopen a b =   primToJSIO "setOnopen" $ prim__setOnopen (toJS a) (toJS b)

namespace Window
  
  public export
  JSType Window where
    parents =  [ EventTarget , JSObject ]

    mixins =  [ GlobalEventHandlers , WindowEventHandlers ]
  
  %foreign "browser:lambda:x=>x.closed"
  prim__closed : AnyPtr -> PrimIO AnyPtr

  export
  closed : (obj : Window) -> JSIO Bool
  closed a =   primToJSIO "closed" $ prim__closed (toJS a)
  
  %foreign "browser:lambda:x=>x.customElements"
  prim__customElements : AnyPtr -> PrimIO AnyPtr

  export
  customElements : (obj : Window) -> JSIO CustomElementRegistry
  customElements a =
    primToJSIO "customElements" $ prim__customElements (toJS a)
  
  %foreign "browser:lambda:x=>x.document"
  prim__document : AnyPtr -> PrimIO AnyPtr

  export
  document : (obj : Window) -> JSIO Document
  document a =   primToJSIO "document" $ prim__document (toJS a)
  
  %foreign "browser:lambda:x=>x.event"
  prim__event : AnyPtr -> PrimIO AnyPtr

  export
  event : (obj : Window) -> JSIO (NS I [ Event , Undefined ])
  event a =   primToJSIO "event" $ prim__event (toJS a)
  
  %foreign "browser:lambda:x=>x.external"
  prim__external : AnyPtr -> PrimIO AnyPtr

  export
  external : (obj : Window) -> JSIO External
  external a =   primToJSIO "external" $ prim__external (toJS a)
  
  %foreign "browser:lambda:x=>x.frameElement"
  prim__frameElement : AnyPtr -> PrimIO AnyPtr

  export
  frameElement : (obj : Window) -> JSIO (Maybe Element)
  frameElement a =   primToJSIO "frameElement" $ prim__frameElement (toJS a)
  
  %foreign "browser:lambda:x=>x.frames"
  prim__frames : AnyPtr -> PrimIO AnyPtr

  export
  frames : (obj : Window) -> JSIO WindowProxy
  frames a =   primToJSIO "frames" $ prim__frames (toJS a)
  
  %foreign "browser:lambda:x=>x.history"
  prim__history : AnyPtr -> PrimIO AnyPtr

  export
  history : (obj : Window) -> JSIO History
  history a =   primToJSIO "history" $ prim__history (toJS a)
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : Window) -> JSIO UInt32
  length a =   primToJSIO "length" $ prim__length (toJS a)
  
  %foreign "browser:lambda:x=>x.location"
  prim__location : AnyPtr -> PrimIO AnyPtr

  export
  location : (obj : Window) -> JSIO Location
  location a =   primToJSIO "location" $ prim__location (toJS a)
  
  %foreign "browser:lambda:x=>x.locationbar"
  prim__locationbar : AnyPtr -> PrimIO AnyPtr

  export
  locationbar : (obj : Window) -> JSIO BarProp
  locationbar a =   primToJSIO "locationbar" $ prim__locationbar (toJS a)
  
  %foreign "browser:lambda:x=>x.menubar"
  prim__menubar : AnyPtr -> PrimIO AnyPtr

  export
  menubar : (obj : Window) -> JSIO BarProp
  menubar a =   primToJSIO "menubar" $ prim__menubar (toJS a)
  
  %foreign "browser:lambda:x=>x.navigator"
  prim__navigator : AnyPtr -> PrimIO AnyPtr

  export
  navigator : (obj : Window) -> JSIO Navigator
  navigator a =   primToJSIO "navigator" $ prim__navigator (toJS a)
  
  %foreign "browser:lambda:x=>x.originAgentCluster"
  prim__originAgentCluster : AnyPtr -> PrimIO AnyPtr

  export
  originAgentCluster : (obj : Window) -> JSIO Bool
  originAgentCluster a =
    primToJSIO "originAgentCluster" $ prim__originAgentCluster (toJS a)
  
  %foreign "browser:lambda:x=>x.parent"
  prim__parent : AnyPtr -> PrimIO AnyPtr

  export
  parent : (obj : Window) -> JSIO (Maybe WindowProxy)
  parent a =   primToJSIO "parent" $ prim__parent (toJS a)
  
  %foreign "browser:lambda:x=>x.personalbar"
  prim__personalbar : AnyPtr -> PrimIO AnyPtr

  export
  personalbar : (obj : Window) -> JSIO BarProp
  personalbar a =   primToJSIO "personalbar" $ prim__personalbar (toJS a)
  
  %foreign "browser:lambda:x=>x.scrollbars"
  prim__scrollbars : AnyPtr -> PrimIO AnyPtr

  export
  scrollbars : (obj : Window) -> JSIO BarProp
  scrollbars a =   primToJSIO "scrollbars" $ prim__scrollbars (toJS a)
  
  %foreign "browser:lambda:x=>x.self"
  prim__self : AnyPtr -> PrimIO AnyPtr

  export
  self : (obj : Window) -> JSIO WindowProxy
  self a =   primToJSIO "self" $ prim__self (toJS a)
  
  %foreign "browser:lambda:x=>x.statusbar"
  prim__statusbar : AnyPtr -> PrimIO AnyPtr

  export
  statusbar : (obj : Window) -> JSIO BarProp
  statusbar a =   primToJSIO "statusbar" $ prim__statusbar (toJS a)
  
  %foreign "browser:lambda:x=>x.toolbar"
  prim__toolbar : AnyPtr -> PrimIO AnyPtr

  export
  toolbar : (obj : Window) -> JSIO BarProp
  toolbar a =   primToJSIO "toolbar" $ prim__toolbar (toJS a)
  
  %foreign "browser:lambda:x=>x.top"
  prim__top : AnyPtr -> PrimIO AnyPtr

  export
  top : (obj : Window) -> JSIO (Maybe WindowProxy)
  top a =   primToJSIO "top" $ prim__top (toJS a)
  
  %foreign "browser:lambda:x=>x.window"
  prim__window : AnyPtr -> PrimIO AnyPtr

  export
  window : (obj : Window) -> JSIO WindowProxy
  window a =   primToJSIO "window" $ prim__window (toJS a)
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : Window) -> JSIO String
  name a =   primToJSIO "name" $ prim__name (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : Window) -> (v : String) -> JSIO ()
  setName a b =   primToJSIO "setName" $ prim__setName (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.opener"
  prim__opener : AnyPtr -> PrimIO AnyPtr

  export
  opener : (obj : Window) -> JSIO Any
  opener a =   primToJSIO "opener" $ prim__opener (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.opener  = v}"
  prim__setOpener : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOpener : (obj : Window) -> (v : Any) -> JSIO ()
  setOpener a b =   primToJSIO "setOpener" $ prim__setOpener (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.status"
  prim__status : AnyPtr -> PrimIO AnyPtr

  export
  status : (obj : Window) -> JSIO String
  status a =   primToJSIO "status" $ prim__status (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.status  = v}"
  prim__setStatus : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStatus : (obj : Window) -> (v : String) -> JSIO ()
  setStatus a b =   primToJSIO "setStatus" $ prim__setStatus (toJS a) (toJS b)

namespace Worker
  
  public export
  JSType Worker where
    parents =  [ EventTarget , JSObject ]

    mixins =  [ AbstractWorker ]
  
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : AnyPtr -> PrimIO AnyPtr

  export
  onmessage : (obj : Worker) -> JSIO EventHandler
  onmessage a =   primToJSIO "onmessage" $ prim__onmessage (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onmessage  = v}"
  prim__setOnmessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmessage : (obj : Worker) -> (v : EventHandler) -> JSIO ()
  setOnmessage a b =
    primToJSIO "setOnmessage" $ prim__setOnmessage (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onmessageerror"
  prim__onmessageerror : AnyPtr -> PrimIO AnyPtr

  export
  onmessageerror : (obj : Worker) -> JSIO EventHandler
  onmessageerror a =
    primToJSIO "onmessageerror" $ prim__onmessageerror (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onmessageerror  = v}"
  prim__setOnmessageerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmessageerror : (obj : Worker) -> (v : EventHandler) -> JSIO ()
  setOnmessageerror a b =
    primToJSIO "setOnmessageerror" $ prim__setOnmessageerror (toJS a) (toJS b)

namespace WorkerGlobalScope
  
  public export
  JSType WorkerGlobalScope where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.location"
  prim__location : AnyPtr -> PrimIO AnyPtr

  export
  location : (obj : WorkerGlobalScope) -> JSIO WorkerLocation
  location a =   primToJSIO "location" $ prim__location (toJS a)
  
  %foreign "browser:lambda:x=>x.navigator"
  prim__navigator : AnyPtr -> PrimIO AnyPtr

  export
  navigator : (obj : WorkerGlobalScope) -> JSIO WorkerNavigator
  navigator a =   primToJSIO "navigator" $ prim__navigator (toJS a)
  
  %foreign "browser:lambda:x=>x.self"
  prim__self : AnyPtr -> PrimIO AnyPtr

  export
  self : (obj : WorkerGlobalScope) -> JSIO WorkerGlobalScope
  self a =   primToJSIO "self" $ prim__self (toJS a)
  
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : AnyPtr -> PrimIO AnyPtr

  export
  onerror : (obj : WorkerGlobalScope) -> JSIO OnErrorEventHandler
  onerror a =   primToJSIO "onerror" $ prim__onerror (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onerror  = v}"
  prim__setOnerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnerror : (obj : WorkerGlobalScope) -> (v : OnErrorEventHandler) -> JSIO ()
  setOnerror a b =
    primToJSIO "setOnerror" $ prim__setOnerror (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onlanguagechange"
  prim__onlanguagechange : AnyPtr -> PrimIO AnyPtr

  export
  onlanguagechange : (obj : WorkerGlobalScope) -> JSIO EventHandler
  onlanguagechange a =
    primToJSIO "onlanguagechange" $ prim__onlanguagechange (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onlanguagechange  = v}"
  prim__setOnlanguagechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnlanguagechange :  (obj : WorkerGlobalScope)
                      -> (v : EventHandler)
                      -> JSIO ()
  setOnlanguagechange a b =
    primToJSIO "setOnlanguagechange" $ prim__setOnlanguagechange (toJS a)
                                                                 (toJS b)
  
  %foreign "browser:lambda:x=>x.onoffline"
  prim__onoffline : AnyPtr -> PrimIO AnyPtr

  export
  onoffline : (obj : WorkerGlobalScope) -> JSIO EventHandler
  onoffline a =   primToJSIO "onoffline" $ prim__onoffline (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onoffline  = v}"
  prim__setOnoffline : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnoffline : (obj : WorkerGlobalScope) -> (v : EventHandler) -> JSIO ()
  setOnoffline a b =
    primToJSIO "setOnoffline" $ prim__setOnoffline (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ononline"
  prim__ononline : AnyPtr -> PrimIO AnyPtr

  export
  ononline : (obj : WorkerGlobalScope) -> JSIO EventHandler
  ononline a =   primToJSIO "ononline" $ prim__ononline (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ononline  = v}"
  prim__setOnonline : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnonline : (obj : WorkerGlobalScope) -> (v : EventHandler) -> JSIO ()
  setOnonline a b =
    primToJSIO "setOnonline" $ prim__setOnonline (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onrejectionhandled"
  prim__onrejectionhandled : AnyPtr -> PrimIO AnyPtr

  export
  onrejectionhandled : (obj : WorkerGlobalScope) -> JSIO EventHandler
  onrejectionhandled a =
    primToJSIO "onrejectionhandled" $ prim__onrejectionhandled (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onrejectionhandled  = v}"
  prim__setOnrejectionhandled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnrejectionhandled :  (obj : WorkerGlobalScope)
                        -> (v : EventHandler)
                        -> JSIO ()
  setOnrejectionhandled a b =
    primToJSIO "setOnrejectionhandled" $ prim__setOnrejectionhandled (toJS a)
                                                                     (toJS b)
  
  %foreign "browser:lambda:x=>x.onunhandledrejection"
  prim__onunhandledrejection : AnyPtr -> PrimIO AnyPtr

  export
  onunhandledrejection : (obj : WorkerGlobalScope) -> JSIO EventHandler
  onunhandledrejection a =
    primToJSIO "onunhandledrejection" $ prim__onunhandledrejection (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onunhandledrejection  = v}"
  prim__setOnunhandledrejection : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnunhandledrejection :  (obj : WorkerGlobalScope)
                          -> (v : EventHandler)
                          -> JSIO ()
  setOnunhandledrejection a b =
    primToJSIO "setOnunhandledrejection" $ prim__setOnunhandledrejection (toJS a)
                                                                         (toJS b)

namespace WorkerLocation
  
  public export
  JSType WorkerLocation where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.hash"
  prim__hash : AnyPtr -> PrimIO AnyPtr

  export
  hash : (obj : WorkerLocation) -> JSIO String
  hash a =   primToJSIO "hash" $ prim__hash (toJS a)
  
  %foreign "browser:lambda:x=>x.host"
  prim__host : AnyPtr -> PrimIO AnyPtr

  export
  host : (obj : WorkerLocation) -> JSIO String
  host a =   primToJSIO "host" $ prim__host (toJS a)
  
  %foreign "browser:lambda:x=>x.hostname"
  prim__hostname : AnyPtr -> PrimIO AnyPtr

  export
  hostname : (obj : WorkerLocation) -> JSIO String
  hostname a =   primToJSIO "hostname" $ prim__hostname (toJS a)
  
  %foreign "browser:lambda:x=>x.origin"
  prim__origin : AnyPtr -> PrimIO AnyPtr

  export
  origin : (obj : WorkerLocation) -> JSIO String
  origin a =   primToJSIO "origin" $ prim__origin (toJS a)
  
  %foreign "browser:lambda:x=>x.pathname"
  prim__pathname : AnyPtr -> PrimIO AnyPtr

  export
  pathname : (obj : WorkerLocation) -> JSIO String
  pathname a =   primToJSIO "pathname" $ prim__pathname (toJS a)
  
  %foreign "browser:lambda:x=>x.port"
  prim__port : AnyPtr -> PrimIO AnyPtr

  export
  port : (obj : WorkerLocation) -> JSIO String
  port a =   primToJSIO "port" $ prim__port (toJS a)
  
  %foreign "browser:lambda:x=>x.protocol"
  prim__protocol : AnyPtr -> PrimIO AnyPtr

  export
  protocol : (obj : WorkerLocation) -> JSIO String
  protocol a =   primToJSIO "protocol" $ prim__protocol (toJS a)
  
  %foreign "browser:lambda:x=>x.search"
  prim__search : AnyPtr -> PrimIO AnyPtr

  export
  search : (obj : WorkerLocation) -> JSIO String
  search a =   primToJSIO "search" $ prim__search (toJS a)

namespace WorkerNavigator
  
  public export
  JSType WorkerNavigator where
    parents =  [ JSObject ]

    mixins =  [ NavigatorConcurrentHardware
              , NavigatorID
              , NavigatorLanguage
              , NavigatorOnLine
              ]
  
  %foreign "browser:lambda:x=>x.permissions"
  prim__permissions : AnyPtr -> PrimIO AnyPtr

  export
  permissions : (obj : WorkerNavigator) -> JSIO Permissions
  permissions a =   primToJSIO "permissions" $ prim__permissions (toJS a)
  
  %foreign "browser:lambda:x=>x.serviceWorker"
  prim__serviceWorker : AnyPtr -> PrimIO AnyPtr

  export
  serviceWorker : (obj : WorkerNavigator) -> JSIO ServiceWorkerContainer
  serviceWorker a =   primToJSIO "serviceWorker" $ prim__serviceWorker (toJS a)

namespace Worklet
  
  public export
  JSType Worklet where
    parents =  [ JSObject ]

    mixins =  []

namespace WorkletGlobalScope
  
  public export
  JSType WorkletGlobalScope where
    parents =  [ JSObject ]

    mixins =  []

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace ARIAMixin
  
  %foreign "browser:lambda:x=>x.ariaAtomic"
  prim__ariaAtomic : AnyPtr -> PrimIO AnyPtr

  export
  ariaAtomic : (obj : ARIAMixin) -> JSIO String
  ariaAtomic a =   primToJSIO "ariaAtomic" $ prim__ariaAtomic (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaAtomic  = v}"
  prim__setAriaAtomic : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaAtomic : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaAtomic a b =
    primToJSIO "setAriaAtomic" $ prim__setAriaAtomic (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaAutoComplete"
  prim__ariaAutoComplete : AnyPtr -> PrimIO AnyPtr

  export
  ariaAutoComplete : (obj : ARIAMixin) -> JSIO String
  ariaAutoComplete a =
    primToJSIO "ariaAutoComplete" $ prim__ariaAutoComplete (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaAutoComplete  = v}"
  prim__setAriaAutoComplete : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaAutoComplete : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaAutoComplete a b =
    primToJSIO "setAriaAutoComplete" $ prim__setAriaAutoComplete (toJS a)
                                                                 (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaBusy"
  prim__ariaBusy : AnyPtr -> PrimIO AnyPtr

  export
  ariaBusy : (obj : ARIAMixin) -> JSIO String
  ariaBusy a =   primToJSIO "ariaBusy" $ prim__ariaBusy (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaBusy  = v}"
  prim__setAriaBusy : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaBusy : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaBusy a b =
    primToJSIO "setAriaBusy" $ prim__setAriaBusy (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaChecked"
  prim__ariaChecked : AnyPtr -> PrimIO AnyPtr

  export
  ariaChecked : (obj : ARIAMixin) -> JSIO String
  ariaChecked a =   primToJSIO "ariaChecked" $ prim__ariaChecked (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaChecked  = v}"
  prim__setAriaChecked : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaChecked : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaChecked a b =
    primToJSIO "setAriaChecked" $ prim__setAriaChecked (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaColCount"
  prim__ariaColCount : AnyPtr -> PrimIO AnyPtr

  export
  ariaColCount : (obj : ARIAMixin) -> JSIO String
  ariaColCount a =   primToJSIO "ariaColCount" $ prim__ariaColCount (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaColCount  = v}"
  prim__setAriaColCount : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaColCount : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaColCount a b =
    primToJSIO "setAriaColCount" $ prim__setAriaColCount (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaColIndex"
  prim__ariaColIndex : AnyPtr -> PrimIO AnyPtr

  export
  ariaColIndex : (obj : ARIAMixin) -> JSIO String
  ariaColIndex a =   primToJSIO "ariaColIndex" $ prim__ariaColIndex (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaColIndex  = v}"
  prim__setAriaColIndex : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaColIndex : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaColIndex a b =
    primToJSIO "setAriaColIndex" $ prim__setAriaColIndex (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaColIndexText"
  prim__ariaColIndexText : AnyPtr -> PrimIO AnyPtr

  export
  ariaColIndexText : (obj : ARIAMixin) -> JSIO String
  ariaColIndexText a =
    primToJSIO "ariaColIndexText" $ prim__ariaColIndexText (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaColIndexText  = v}"
  prim__setAriaColIndexText : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaColIndexText : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaColIndexText a b =
    primToJSIO "setAriaColIndexText" $ prim__setAriaColIndexText (toJS a)
                                                                 (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaColSpan"
  prim__ariaColSpan : AnyPtr -> PrimIO AnyPtr

  export
  ariaColSpan : (obj : ARIAMixin) -> JSIO String
  ariaColSpan a =   primToJSIO "ariaColSpan" $ prim__ariaColSpan (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaColSpan  = v}"
  prim__setAriaColSpan : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaColSpan : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaColSpan a b =
    primToJSIO "setAriaColSpan" $ prim__setAriaColSpan (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaCurrent"
  prim__ariaCurrent : AnyPtr -> PrimIO AnyPtr

  export
  ariaCurrent : (obj : ARIAMixin) -> JSIO String
  ariaCurrent a =   primToJSIO "ariaCurrent" $ prim__ariaCurrent (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaCurrent  = v}"
  prim__setAriaCurrent : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaCurrent : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaCurrent a b =
    primToJSIO "setAriaCurrent" $ prim__setAriaCurrent (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaDescription"
  prim__ariaDescription : AnyPtr -> PrimIO AnyPtr

  export
  ariaDescription : (obj : ARIAMixin) -> JSIO String
  ariaDescription a =
    primToJSIO "ariaDescription" $ prim__ariaDescription (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaDescription  = v}"
  prim__setAriaDescription : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaDescription : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaDescription a b =
    primToJSIO "setAriaDescription" $ prim__setAriaDescription (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaDisabled"
  prim__ariaDisabled : AnyPtr -> PrimIO AnyPtr

  export
  ariaDisabled : (obj : ARIAMixin) -> JSIO String
  ariaDisabled a =   primToJSIO "ariaDisabled" $ prim__ariaDisabled (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaDisabled  = v}"
  prim__setAriaDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaDisabled : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaDisabled a b =
    primToJSIO "setAriaDisabled" $ prim__setAriaDisabled (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaExpanded"
  prim__ariaExpanded : AnyPtr -> PrimIO AnyPtr

  export
  ariaExpanded : (obj : ARIAMixin) -> JSIO String
  ariaExpanded a =   primToJSIO "ariaExpanded" $ prim__ariaExpanded (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaExpanded  = v}"
  prim__setAriaExpanded : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaExpanded : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaExpanded a b =
    primToJSIO "setAriaExpanded" $ prim__setAriaExpanded (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaHasPopup"
  prim__ariaHasPopup : AnyPtr -> PrimIO AnyPtr

  export
  ariaHasPopup : (obj : ARIAMixin) -> JSIO String
  ariaHasPopup a =   primToJSIO "ariaHasPopup" $ prim__ariaHasPopup (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaHasPopup  = v}"
  prim__setAriaHasPopup : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaHasPopup : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaHasPopup a b =
    primToJSIO "setAriaHasPopup" $ prim__setAriaHasPopup (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaHidden"
  prim__ariaHidden : AnyPtr -> PrimIO AnyPtr

  export
  ariaHidden : (obj : ARIAMixin) -> JSIO String
  ariaHidden a =   primToJSIO "ariaHidden" $ prim__ariaHidden (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaHidden  = v}"
  prim__setAriaHidden : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaHidden : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaHidden a b =
    primToJSIO "setAriaHidden" $ prim__setAriaHidden (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaInvalid"
  prim__ariaInvalid : AnyPtr -> PrimIO AnyPtr

  export
  ariaInvalid : (obj : ARIAMixin) -> JSIO String
  ariaInvalid a =   primToJSIO "ariaInvalid" $ prim__ariaInvalid (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaInvalid  = v}"
  prim__setAriaInvalid : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaInvalid : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaInvalid a b =
    primToJSIO "setAriaInvalid" $ prim__setAriaInvalid (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaKeyShortcuts"
  prim__ariaKeyShortcuts : AnyPtr -> PrimIO AnyPtr

  export
  ariaKeyShortcuts : (obj : ARIAMixin) -> JSIO String
  ariaKeyShortcuts a =
    primToJSIO "ariaKeyShortcuts" $ prim__ariaKeyShortcuts (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaKeyShortcuts  = v}"
  prim__setAriaKeyShortcuts : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaKeyShortcuts : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaKeyShortcuts a b =
    primToJSIO "setAriaKeyShortcuts" $ prim__setAriaKeyShortcuts (toJS a)
                                                                 (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaLabel"
  prim__ariaLabel : AnyPtr -> PrimIO AnyPtr

  export
  ariaLabel : (obj : ARIAMixin) -> JSIO String
  ariaLabel a =   primToJSIO "ariaLabel" $ prim__ariaLabel (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaLabel  = v}"
  prim__setAriaLabel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaLabel : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaLabel a b =
    primToJSIO "setAriaLabel" $ prim__setAriaLabel (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaLevel"
  prim__ariaLevel : AnyPtr -> PrimIO AnyPtr

  export
  ariaLevel : (obj : ARIAMixin) -> JSIO String
  ariaLevel a =   primToJSIO "ariaLevel" $ prim__ariaLevel (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaLevel  = v}"
  prim__setAriaLevel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaLevel : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaLevel a b =
    primToJSIO "setAriaLevel" $ prim__setAriaLevel (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaLive"
  prim__ariaLive : AnyPtr -> PrimIO AnyPtr

  export
  ariaLive : (obj : ARIAMixin) -> JSIO String
  ariaLive a =   primToJSIO "ariaLive" $ prim__ariaLive (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaLive  = v}"
  prim__setAriaLive : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaLive : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaLive a b =
    primToJSIO "setAriaLive" $ prim__setAriaLive (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaModal"
  prim__ariaModal : AnyPtr -> PrimIO AnyPtr

  export
  ariaModal : (obj : ARIAMixin) -> JSIO String
  ariaModal a =   primToJSIO "ariaModal" $ prim__ariaModal (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaModal  = v}"
  prim__setAriaModal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaModal : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaModal a b =
    primToJSIO "setAriaModal" $ prim__setAriaModal (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaMultiLine"
  prim__ariaMultiLine : AnyPtr -> PrimIO AnyPtr

  export
  ariaMultiLine : (obj : ARIAMixin) -> JSIO String
  ariaMultiLine a =   primToJSIO "ariaMultiLine" $ prim__ariaMultiLine (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaMultiLine  = v}"
  prim__setAriaMultiLine : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaMultiLine : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaMultiLine a b =
    primToJSIO "setAriaMultiLine" $ prim__setAriaMultiLine (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaMultiSelectable"
  prim__ariaMultiSelectable : AnyPtr -> PrimIO AnyPtr

  export
  ariaMultiSelectable : (obj : ARIAMixin) -> JSIO String
  ariaMultiSelectable a =
    primToJSIO "ariaMultiSelectable" $ prim__ariaMultiSelectable (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaMultiSelectable  = v}"
  prim__setAriaMultiSelectable : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaMultiSelectable : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaMultiSelectable a b =
    primToJSIO "setAriaMultiSelectable" $ prim__setAriaMultiSelectable (toJS a)
                                                                       (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaOrientation"
  prim__ariaOrientation : AnyPtr -> PrimIO AnyPtr

  export
  ariaOrientation : (obj : ARIAMixin) -> JSIO String
  ariaOrientation a =
    primToJSIO "ariaOrientation" $ prim__ariaOrientation (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaOrientation  = v}"
  prim__setAriaOrientation : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaOrientation : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaOrientation a b =
    primToJSIO "setAriaOrientation" $ prim__setAriaOrientation (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaPlaceholder"
  prim__ariaPlaceholder : AnyPtr -> PrimIO AnyPtr

  export
  ariaPlaceholder : (obj : ARIAMixin) -> JSIO String
  ariaPlaceholder a =
    primToJSIO "ariaPlaceholder" $ prim__ariaPlaceholder (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaPlaceholder  = v}"
  prim__setAriaPlaceholder : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaPlaceholder : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaPlaceholder a b =
    primToJSIO "setAriaPlaceholder" $ prim__setAriaPlaceholder (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaPosInSet"
  prim__ariaPosInSet : AnyPtr -> PrimIO AnyPtr

  export
  ariaPosInSet : (obj : ARIAMixin) -> JSIO String
  ariaPosInSet a =   primToJSIO "ariaPosInSet" $ prim__ariaPosInSet (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaPosInSet  = v}"
  prim__setAriaPosInSet : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaPosInSet : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaPosInSet a b =
    primToJSIO "setAriaPosInSet" $ prim__setAriaPosInSet (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaPressed"
  prim__ariaPressed : AnyPtr -> PrimIO AnyPtr

  export
  ariaPressed : (obj : ARIAMixin) -> JSIO String
  ariaPressed a =   primToJSIO "ariaPressed" $ prim__ariaPressed (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaPressed  = v}"
  prim__setAriaPressed : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaPressed : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaPressed a b =
    primToJSIO "setAriaPressed" $ prim__setAriaPressed (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaReadOnly"
  prim__ariaReadOnly : AnyPtr -> PrimIO AnyPtr

  export
  ariaReadOnly : (obj : ARIAMixin) -> JSIO String
  ariaReadOnly a =   primToJSIO "ariaReadOnly" $ prim__ariaReadOnly (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaReadOnly  = v}"
  prim__setAriaReadOnly : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaReadOnly : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaReadOnly a b =
    primToJSIO "setAriaReadOnly" $ prim__setAriaReadOnly (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaRequired"
  prim__ariaRequired : AnyPtr -> PrimIO AnyPtr

  export
  ariaRequired : (obj : ARIAMixin) -> JSIO String
  ariaRequired a =   primToJSIO "ariaRequired" $ prim__ariaRequired (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaRequired  = v}"
  prim__setAriaRequired : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaRequired : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaRequired a b =
    primToJSIO "setAriaRequired" $ prim__setAriaRequired (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaRoleDescription"
  prim__ariaRoleDescription : AnyPtr -> PrimIO AnyPtr

  export
  ariaRoleDescription : (obj : ARIAMixin) -> JSIO String
  ariaRoleDescription a =
    primToJSIO "ariaRoleDescription" $ prim__ariaRoleDescription (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaRoleDescription  = v}"
  prim__setAriaRoleDescription : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaRoleDescription : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaRoleDescription a b =
    primToJSIO "setAriaRoleDescription" $ prim__setAriaRoleDescription (toJS a)
                                                                       (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaRowCount"
  prim__ariaRowCount : AnyPtr -> PrimIO AnyPtr

  export
  ariaRowCount : (obj : ARIAMixin) -> JSIO String
  ariaRowCount a =   primToJSIO "ariaRowCount" $ prim__ariaRowCount (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaRowCount  = v}"
  prim__setAriaRowCount : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaRowCount : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaRowCount a b =
    primToJSIO "setAriaRowCount" $ prim__setAriaRowCount (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaRowIndex"
  prim__ariaRowIndex : AnyPtr -> PrimIO AnyPtr

  export
  ariaRowIndex : (obj : ARIAMixin) -> JSIO String
  ariaRowIndex a =   primToJSIO "ariaRowIndex" $ prim__ariaRowIndex (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaRowIndex  = v}"
  prim__setAriaRowIndex : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaRowIndex : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaRowIndex a b =
    primToJSIO "setAriaRowIndex" $ prim__setAriaRowIndex (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaRowIndexText"
  prim__ariaRowIndexText : AnyPtr -> PrimIO AnyPtr

  export
  ariaRowIndexText : (obj : ARIAMixin) -> JSIO String
  ariaRowIndexText a =
    primToJSIO "ariaRowIndexText" $ prim__ariaRowIndexText (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaRowIndexText  = v}"
  prim__setAriaRowIndexText : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaRowIndexText : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaRowIndexText a b =
    primToJSIO "setAriaRowIndexText" $ prim__setAriaRowIndexText (toJS a)
                                                                 (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaRowSpan"
  prim__ariaRowSpan : AnyPtr -> PrimIO AnyPtr

  export
  ariaRowSpan : (obj : ARIAMixin) -> JSIO String
  ariaRowSpan a =   primToJSIO "ariaRowSpan" $ prim__ariaRowSpan (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaRowSpan  = v}"
  prim__setAriaRowSpan : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaRowSpan : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaRowSpan a b =
    primToJSIO "setAriaRowSpan" $ prim__setAriaRowSpan (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaSelected"
  prim__ariaSelected : AnyPtr -> PrimIO AnyPtr

  export
  ariaSelected : (obj : ARIAMixin) -> JSIO String
  ariaSelected a =   primToJSIO "ariaSelected" $ prim__ariaSelected (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaSelected  = v}"
  prim__setAriaSelected : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaSelected : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaSelected a b =
    primToJSIO "setAriaSelected" $ prim__setAriaSelected (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaSetSize"
  prim__ariaSetSize : AnyPtr -> PrimIO AnyPtr

  export
  ariaSetSize : (obj : ARIAMixin) -> JSIO String
  ariaSetSize a =   primToJSIO "ariaSetSize" $ prim__ariaSetSize (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaSetSize  = v}"
  prim__setAriaSetSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaSetSize : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaSetSize a b =
    primToJSIO "setAriaSetSize" $ prim__setAriaSetSize (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaSort"
  prim__ariaSort : AnyPtr -> PrimIO AnyPtr

  export
  ariaSort : (obj : ARIAMixin) -> JSIO String
  ariaSort a =   primToJSIO "ariaSort" $ prim__ariaSort (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaSort  = v}"
  prim__setAriaSort : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaSort : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaSort a b =
    primToJSIO "setAriaSort" $ prim__setAriaSort (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaValueMax"
  prim__ariaValueMax : AnyPtr -> PrimIO AnyPtr

  export
  ariaValueMax : (obj : ARIAMixin) -> JSIO String
  ariaValueMax a =   primToJSIO "ariaValueMax" $ prim__ariaValueMax (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaValueMax  = v}"
  prim__setAriaValueMax : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaValueMax : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaValueMax a b =
    primToJSIO "setAriaValueMax" $ prim__setAriaValueMax (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaValueMin"
  prim__ariaValueMin : AnyPtr -> PrimIO AnyPtr

  export
  ariaValueMin : (obj : ARIAMixin) -> JSIO String
  ariaValueMin a =   primToJSIO "ariaValueMin" $ prim__ariaValueMin (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaValueMin  = v}"
  prim__setAriaValueMin : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaValueMin : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaValueMin a b =
    primToJSIO "setAriaValueMin" $ prim__setAriaValueMin (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaValueNow"
  prim__ariaValueNow : AnyPtr -> PrimIO AnyPtr

  export
  ariaValueNow : (obj : ARIAMixin) -> JSIO String
  ariaValueNow a =   primToJSIO "ariaValueNow" $ prim__ariaValueNow (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaValueNow  = v}"
  prim__setAriaValueNow : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaValueNow : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaValueNow a b =
    primToJSIO "setAriaValueNow" $ prim__setAriaValueNow (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ariaValueText"
  prim__ariaValueText : AnyPtr -> PrimIO AnyPtr

  export
  ariaValueText : (obj : ARIAMixin) -> JSIO String
  ariaValueText a =   primToJSIO "ariaValueText" $ prim__ariaValueText (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ariaValueText  = v}"
  prim__setAriaValueText : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaValueText : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  setAriaValueText a b =
    primToJSIO "setAriaValueText" $ prim__setAriaValueText (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.role"
  prim__role : AnyPtr -> PrimIO AnyPtr

  export
  role : (obj : ARIAMixin) -> JSIO (Maybe String)
  role a =   primToJSIO "role" $ prim__role (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.role  = v}"
  prim__setRole : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRole : (obj : ARIAMixin) -> (v : Maybe String) -> JSIO ()
  setRole a b =   primToJSIO "setRole" $ prim__setRole (toJS a) (toJS b)

namespace AbstractWorker
  
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : AnyPtr -> PrimIO AnyPtr

  export
  onerror : (obj : AbstractWorker) -> JSIO EventHandler
  onerror a =   primToJSIO "onerror" $ prim__onerror (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onerror  = v}"
  prim__setOnerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnerror : (obj : AbstractWorker) -> (v : EventHandler) -> JSIO ()
  setOnerror a b =
    primToJSIO "setOnerror" $ prim__setOnerror (toJS a) (toJS b)

namespace CanvasCompositing
  
  %foreign "browser:lambda:x=>x.globalAlpha"
  prim__globalAlpha : AnyPtr -> PrimIO AnyPtr

  export
  globalAlpha : (obj : CanvasCompositing) -> JSIO Double
  globalAlpha a =   primToJSIO "globalAlpha" $ prim__globalAlpha (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.globalAlpha  = v}"
  prim__setGlobalAlpha : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setGlobalAlpha : (obj : CanvasCompositing) -> (v : Double) -> JSIO ()
  setGlobalAlpha a b =
    primToJSIO "setGlobalAlpha" $ prim__setGlobalAlpha (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.globalCompositeOperation"
  prim__globalCompositeOperation : AnyPtr -> PrimIO AnyPtr

  export
  globalCompositeOperation : (obj : CanvasCompositing) -> JSIO String
  globalCompositeOperation a =
    primToJSIO "globalCompositeOperation" $ prim__globalCompositeOperation (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.globalCompositeOperation  = v}"
  prim__setGlobalCompositeOperation : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setGlobalCompositeOperation :  (obj : CanvasCompositing)
                              -> (v : String)
                              -> JSIO ()
  setGlobalCompositeOperation a b =
    primToJSIO "setGlobalCompositeOperation" $ prim__setGlobalCompositeOperation (toJS a)
                                                                                 (toJS b)



namespace CanvasFillStrokeStyles
  
  %foreign "browser:lambda:x=>x.fillStyle"
  prim__fillStyle : AnyPtr -> PrimIO AnyPtr

  export
  fillStyle :  (obj : CanvasFillStrokeStyles)
            -> JSIO (NS I [ String , CanvasGradient , CanvasPattern ])
  fillStyle a =   primToJSIO "fillStyle" $ prim__fillStyle (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.fillStyle  = v}"
  prim__setFillStyle : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFillStyle :  (obj : CanvasFillStrokeStyles)
               -> (v : NS I [ String , CanvasGradient , CanvasPattern ])
               -> JSIO ()
  setFillStyle a b =
    primToJSIO "setFillStyle" $ prim__setFillStyle (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.strokeStyle"
  prim__strokeStyle : AnyPtr -> PrimIO AnyPtr

  export
  strokeStyle :  (obj : CanvasFillStrokeStyles)
              -> JSIO (NS I [ String , CanvasGradient , CanvasPattern ])
  strokeStyle a =   primToJSIO "strokeStyle" $ prim__strokeStyle (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.strokeStyle  = v}"
  prim__setStrokeStyle : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStrokeStyle :  (obj : CanvasFillStrokeStyles)
                 -> (v : NS I [ String , CanvasGradient , CanvasPattern ])
                 -> JSIO ()
  setStrokeStyle a b =
    primToJSIO "setStrokeStyle" $ prim__setStrokeStyle (toJS a) (toJS b)

namespace CanvasFilters
  
  %foreign "browser:lambda:x=>x.filter"
  prim__filter : AnyPtr -> PrimIO AnyPtr

  export
  filter : (obj : CanvasFilters) -> JSIO String
  filter a =   primToJSIO "filter" $ prim__filter (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.filter  = v}"
  prim__setFilter : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFilter : (obj : CanvasFilters) -> (v : String) -> JSIO ()
  setFilter a b =   primToJSIO "setFilter" $ prim__setFilter (toJS a) (toJS b)


namespace CanvasImageSmoothing
  
  %foreign "browser:lambda:x=>x.imageSmoothingEnabled"
  prim__imageSmoothingEnabled : AnyPtr -> PrimIO AnyPtr

  export
  imageSmoothingEnabled : (obj : CanvasImageSmoothing) -> JSIO Bool
  imageSmoothingEnabled a =
    primToJSIO "imageSmoothingEnabled" $ prim__imageSmoothingEnabled (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.imageSmoothingEnabled  = v}"
  prim__setImageSmoothingEnabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setImageSmoothingEnabled :  (obj : CanvasImageSmoothing)
                           -> (v : Bool)
                           -> JSIO ()
  setImageSmoothingEnabled a b =
    primToJSIO "setImageSmoothingEnabled" $ prim__setImageSmoothingEnabled (toJS a)
                                                                           (toJS b)
  
  %foreign "browser:lambda:x=>x.imageSmoothingQuality"
  prim__imageSmoothingQuality : AnyPtr -> PrimIO AnyPtr

  export
  imageSmoothingQuality :  (obj : CanvasImageSmoothing)
                        -> JSIO ImageSmoothingQuality
  imageSmoothingQuality a =
    primToJSIO "imageSmoothingQuality" $ prim__imageSmoothingQuality (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.imageSmoothingQuality  = v}"
  prim__setImageSmoothingQuality : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setImageSmoothingQuality :  (obj : CanvasImageSmoothing)
                           -> (v : ImageSmoothingQuality)
                           -> JSIO ()
  setImageSmoothingQuality a b =
    primToJSIO "setImageSmoothingQuality" $ prim__setImageSmoothingQuality (toJS a)
                                                                           (toJS b)


namespace CanvasPathDrawingStyles
  
  %foreign "browser:lambda:x=>x.lineCap"
  prim__lineCap : AnyPtr -> PrimIO AnyPtr

  export
  lineCap : (obj : CanvasPathDrawingStyles) -> JSIO CanvasLineCap
  lineCap a =   primToJSIO "lineCap" $ prim__lineCap (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.lineCap  = v}"
  prim__setLineCap : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLineCap : (obj : CanvasPathDrawingStyles) -> (v : CanvasLineCap) -> JSIO ()
  setLineCap a b =
    primToJSIO "setLineCap" $ prim__setLineCap (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.lineDashOffset"
  prim__lineDashOffset : AnyPtr -> PrimIO AnyPtr

  export
  lineDashOffset : (obj : CanvasPathDrawingStyles) -> JSIO Double
  lineDashOffset a =
    primToJSIO "lineDashOffset" $ prim__lineDashOffset (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.lineDashOffset  = v}"
  prim__setLineDashOffset : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLineDashOffset : (obj : CanvasPathDrawingStyles) -> (v : Double) -> JSIO ()
  setLineDashOffset a b =
    primToJSIO "setLineDashOffset" $ prim__setLineDashOffset (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.lineJoin"
  prim__lineJoin : AnyPtr -> PrimIO AnyPtr

  export
  lineJoin : (obj : CanvasPathDrawingStyles) -> JSIO CanvasLineJoin
  lineJoin a =   primToJSIO "lineJoin" $ prim__lineJoin (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.lineJoin  = v}"
  prim__setLineJoin : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLineJoin :  (obj : CanvasPathDrawingStyles)
              -> (v : CanvasLineJoin)
              -> JSIO ()
  setLineJoin a b =
    primToJSIO "setLineJoin" $ prim__setLineJoin (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.lineWidth"
  prim__lineWidth : AnyPtr -> PrimIO AnyPtr

  export
  lineWidth : (obj : CanvasPathDrawingStyles) -> JSIO Double
  lineWidth a =   primToJSIO "lineWidth" $ prim__lineWidth (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.lineWidth  = v}"
  prim__setLineWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLineWidth : (obj : CanvasPathDrawingStyles) -> (v : Double) -> JSIO ()
  setLineWidth a b =
    primToJSIO "setLineWidth" $ prim__setLineWidth (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.miterLimit"
  prim__miterLimit : AnyPtr -> PrimIO AnyPtr

  export
  miterLimit : (obj : CanvasPathDrawingStyles) -> JSIO Double
  miterLimit a =   primToJSIO "miterLimit" $ prim__miterLimit (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.miterLimit  = v}"
  prim__setMiterLimit : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMiterLimit : (obj : CanvasPathDrawingStyles) -> (v : Double) -> JSIO ()
  setMiterLimit a b =
    primToJSIO "setMiterLimit" $ prim__setMiterLimit (toJS a) (toJS b)


namespace CanvasShadowStyles
  
  %foreign "browser:lambda:x=>x.shadowBlur"
  prim__shadowBlur : AnyPtr -> PrimIO AnyPtr

  export
  shadowBlur : (obj : CanvasShadowStyles) -> JSIO Double
  shadowBlur a =   primToJSIO "shadowBlur" $ prim__shadowBlur (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.shadowBlur  = v}"
  prim__setShadowBlur : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setShadowBlur : (obj : CanvasShadowStyles) -> (v : Double) -> JSIO ()
  setShadowBlur a b =
    primToJSIO "setShadowBlur" $ prim__setShadowBlur (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.shadowColor"
  prim__shadowColor : AnyPtr -> PrimIO AnyPtr

  export
  shadowColor : (obj : CanvasShadowStyles) -> JSIO String
  shadowColor a =   primToJSIO "shadowColor" $ prim__shadowColor (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.shadowColor  = v}"
  prim__setShadowColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setShadowColor : (obj : CanvasShadowStyles) -> (v : String) -> JSIO ()
  setShadowColor a b =
    primToJSIO "setShadowColor" $ prim__setShadowColor (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.shadowOffsetX"
  prim__shadowOffsetX : AnyPtr -> PrimIO AnyPtr

  export
  shadowOffsetX : (obj : CanvasShadowStyles) -> JSIO Double
  shadowOffsetX a =   primToJSIO "shadowOffsetX" $ prim__shadowOffsetX (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.shadowOffsetX  = v}"
  prim__setShadowOffsetX : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setShadowOffsetX : (obj : CanvasShadowStyles) -> (v : Double) -> JSIO ()
  setShadowOffsetX a b =
    primToJSIO "setShadowOffsetX" $ prim__setShadowOffsetX (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.shadowOffsetY"
  prim__shadowOffsetY : AnyPtr -> PrimIO AnyPtr

  export
  shadowOffsetY : (obj : CanvasShadowStyles) -> JSIO Double
  shadowOffsetY a =   primToJSIO "shadowOffsetY" $ prim__shadowOffsetY (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.shadowOffsetY  = v}"
  prim__setShadowOffsetY : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setShadowOffsetY : (obj : CanvasShadowStyles) -> (v : Double) -> JSIO ()
  setShadowOffsetY a b =
    primToJSIO "setShadowOffsetY" $ prim__setShadowOffsetY (toJS a) (toJS b)



namespace CanvasTextDrawingStyles
  
  %foreign "browser:lambda:x=>x.direction"
  prim__direction : AnyPtr -> PrimIO AnyPtr

  export
  direction : (obj : CanvasTextDrawingStyles) -> JSIO CanvasDirection
  direction a =   primToJSIO "direction" $ prim__direction (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.direction  = v}"
  prim__setDirection : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDirection :  (obj : CanvasTextDrawingStyles)
               -> (v : CanvasDirection)
               -> JSIO ()
  setDirection a b =
    primToJSIO "setDirection" $ prim__setDirection (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.font"
  prim__font : AnyPtr -> PrimIO AnyPtr

  export
  font : (obj : CanvasTextDrawingStyles) -> JSIO String
  font a =   primToJSIO "font" $ prim__font (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.font  = v}"
  prim__setFont : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFont : (obj : CanvasTextDrawingStyles) -> (v : String) -> JSIO ()
  setFont a b =   primToJSIO "setFont" $ prim__setFont (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.textAlign"
  prim__textAlign : AnyPtr -> PrimIO AnyPtr

  export
  textAlign : (obj : CanvasTextDrawingStyles) -> JSIO CanvasTextAlign
  textAlign a =   primToJSIO "textAlign" $ prim__textAlign (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.textAlign  = v}"
  prim__setTextAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTextAlign :  (obj : CanvasTextDrawingStyles)
               -> (v : CanvasTextAlign)
               -> JSIO ()
  setTextAlign a b =
    primToJSIO "setTextAlign" $ prim__setTextAlign (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.textBaseline"
  prim__textBaseline : AnyPtr -> PrimIO AnyPtr

  export
  textBaseline : (obj : CanvasTextDrawingStyles) -> JSIO CanvasTextBaseline
  textBaseline a =   primToJSIO "textBaseline" $ prim__textBaseline (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.textBaseline  = v}"
  prim__setTextBaseline : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTextBaseline :  (obj : CanvasTextDrawingStyles)
                  -> (v : CanvasTextBaseline)
                  -> JSIO ()
  setTextBaseline a b =
    primToJSIO "setTextBaseline" $ prim__setTextBaseline (toJS a) (toJS b)



namespace DocumentAndElementEventHandlers
  
  %foreign "browser:lambda:x=>x.oncopy"
  prim__oncopy : AnyPtr -> PrimIO AnyPtr

  export
  oncopy : (obj : DocumentAndElementEventHandlers) -> JSIO EventHandler
  oncopy a =   primToJSIO "oncopy" $ prim__oncopy (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.oncopy  = v}"
  prim__setOncopy : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOncopy :  (obj : DocumentAndElementEventHandlers)
            -> (v : EventHandler)
            -> JSIO ()
  setOncopy a b =   primToJSIO "setOncopy" $ prim__setOncopy (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.oncut"
  prim__oncut : AnyPtr -> PrimIO AnyPtr

  export
  oncut : (obj : DocumentAndElementEventHandlers) -> JSIO EventHandler
  oncut a =   primToJSIO "oncut" $ prim__oncut (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.oncut  = v}"
  prim__setOncut : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOncut :  (obj : DocumentAndElementEventHandlers)
           -> (v : EventHandler)
           -> JSIO ()
  setOncut a b =   primToJSIO "setOncut" $ prim__setOncut (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onpaste"
  prim__onpaste : AnyPtr -> PrimIO AnyPtr

  export
  onpaste : (obj : DocumentAndElementEventHandlers) -> JSIO EventHandler
  onpaste a =   primToJSIO "onpaste" $ prim__onpaste (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onpaste  = v}"
  prim__setOnpaste : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnpaste :  (obj : DocumentAndElementEventHandlers)
             -> (v : EventHandler)
             -> JSIO ()
  setOnpaste a b =
    primToJSIO "setOnpaste" $ prim__setOnpaste (toJS a) (toJS b)

namespace ElementContentEditable
  
  %foreign "browser:lambda:x=>x.isContentEditable"
  prim__isContentEditable : AnyPtr -> PrimIO AnyPtr

  export
  isContentEditable : (obj : ElementContentEditable) -> JSIO Bool
  isContentEditable a =
    primToJSIO "isContentEditable" $ prim__isContentEditable (toJS a)
  
  %foreign "browser:lambda:x=>x.contentEditable"
  prim__contentEditable : AnyPtr -> PrimIO AnyPtr

  export
  contentEditable : (obj : ElementContentEditable) -> JSIO String
  contentEditable a =
    primToJSIO "contentEditable" $ prim__contentEditable (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.contentEditable  = v}"
  prim__setContentEditable : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setContentEditable : (obj : ElementContentEditable) -> (v : String) -> JSIO ()
  setContentEditable a b =
    primToJSIO "setContentEditable" $ prim__setContentEditable (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.enterKeyHint"
  prim__enterKeyHint : AnyPtr -> PrimIO AnyPtr

  export
  enterKeyHint : (obj : ElementContentEditable) -> JSIO String
  enterKeyHint a =   primToJSIO "enterKeyHint" $ prim__enterKeyHint (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.enterKeyHint  = v}"
  prim__setEnterKeyHint : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEnterKeyHint : (obj : ElementContentEditable) -> (v : String) -> JSIO ()
  setEnterKeyHint a b =
    primToJSIO "setEnterKeyHint" $ prim__setEnterKeyHint (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.inputMode"
  prim__inputMode : AnyPtr -> PrimIO AnyPtr

  export
  inputMode : (obj : ElementContentEditable) -> JSIO String
  inputMode a =   primToJSIO "inputMode" $ prim__inputMode (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.inputMode  = v}"
  prim__setInputMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setInputMode : (obj : ElementContentEditable) -> (v : String) -> JSIO ()
  setInputMode a b =
    primToJSIO "setInputMode" $ prim__setInputMode (toJS a) (toJS b)

namespace GlobalEventHandlers
  
  %foreign "browser:lambda:x=>x.onabort"
  prim__onabort : AnyPtr -> PrimIO AnyPtr

  export
  onabort : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onabort a =   primToJSIO "onabort" $ prim__onabort (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onabort  = v}"
  prim__setOnabort : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnabort : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnabort a b =
    primToJSIO "setOnabort" $ prim__setOnabort (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onauxclick"
  prim__onauxclick : AnyPtr -> PrimIO AnyPtr

  export
  onauxclick : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onauxclick a =   primToJSIO "onauxclick" $ prim__onauxclick (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onauxclick  = v}"
  prim__setOnauxclick : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnauxclick : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnauxclick a b =
    primToJSIO "setOnauxclick" $ prim__setOnauxclick (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onblur"
  prim__onblur : AnyPtr -> PrimIO AnyPtr

  export
  onblur : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onblur a =   primToJSIO "onblur" $ prim__onblur (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onblur  = v}"
  prim__setOnblur : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnblur : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnblur a b =   primToJSIO "setOnblur" $ prim__setOnblur (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.oncancel"
  prim__oncancel : AnyPtr -> PrimIO AnyPtr

  export
  oncancel : (obj : GlobalEventHandlers) -> JSIO EventHandler
  oncancel a =   primToJSIO "oncancel" $ prim__oncancel (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.oncancel  = v}"
  prim__setOncancel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOncancel : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOncancel a b =
    primToJSIO "setOncancel" $ prim__setOncancel (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.oncanplay"
  prim__oncanplay : AnyPtr -> PrimIO AnyPtr

  export
  oncanplay : (obj : GlobalEventHandlers) -> JSIO EventHandler
  oncanplay a =   primToJSIO "oncanplay" $ prim__oncanplay (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.oncanplay  = v}"
  prim__setOncanplay : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOncanplay : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOncanplay a b =
    primToJSIO "setOncanplay" $ prim__setOncanplay (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.oncanplaythrough"
  prim__oncanplaythrough : AnyPtr -> PrimIO AnyPtr

  export
  oncanplaythrough : (obj : GlobalEventHandlers) -> JSIO EventHandler
  oncanplaythrough a =
    primToJSIO "oncanplaythrough" $ prim__oncanplaythrough (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.oncanplaythrough  = v}"
  prim__setOncanplaythrough : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOncanplaythrough :  (obj : GlobalEventHandlers)
                      -> (v : EventHandler)
                      -> JSIO ()
  setOncanplaythrough a b =
    primToJSIO "setOncanplaythrough" $ prim__setOncanplaythrough (toJS a)
                                                                 (toJS b)
  
  %foreign "browser:lambda:x=>x.onchange"
  prim__onchange : AnyPtr -> PrimIO AnyPtr

  export
  onchange : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onchange a =   primToJSIO "onchange" $ prim__onchange (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onchange  = v}"
  prim__setOnchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnchange : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnchange a b =
    primToJSIO "setOnchange" $ prim__setOnchange (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onclick"
  prim__onclick : AnyPtr -> PrimIO AnyPtr

  export
  onclick : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onclick a =   primToJSIO "onclick" $ prim__onclick (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onclick  = v}"
  prim__setOnclick : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnclick : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnclick a b =
    primToJSIO "setOnclick" $ prim__setOnclick (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onclose"
  prim__onclose : AnyPtr -> PrimIO AnyPtr

  export
  onclose : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onclose a =   primToJSIO "onclose" $ prim__onclose (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onclose  = v}"
  prim__setOnclose : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnclose : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnclose a b =
    primToJSIO "setOnclose" $ prim__setOnclose (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.oncontextmenu"
  prim__oncontextmenu : AnyPtr -> PrimIO AnyPtr

  export
  oncontextmenu : (obj : GlobalEventHandlers) -> JSIO EventHandler
  oncontextmenu a =   primToJSIO "oncontextmenu" $ prim__oncontextmenu (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.oncontextmenu  = v}"
  prim__setOncontextmenu : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOncontextmenu :  (obj : GlobalEventHandlers)
                   -> (v : EventHandler)
                   -> JSIO ()
  setOncontextmenu a b =
    primToJSIO "setOncontextmenu" $ prim__setOncontextmenu (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.oncuechange"
  prim__oncuechange : AnyPtr -> PrimIO AnyPtr

  export
  oncuechange : (obj : GlobalEventHandlers) -> JSIO EventHandler
  oncuechange a =   primToJSIO "oncuechange" $ prim__oncuechange (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.oncuechange  = v}"
  prim__setOncuechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOncuechange : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOncuechange a b =
    primToJSIO "setOncuechange" $ prim__setOncuechange (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ondblclick"
  prim__ondblclick : AnyPtr -> PrimIO AnyPtr

  export
  ondblclick : (obj : GlobalEventHandlers) -> JSIO EventHandler
  ondblclick a =   primToJSIO "ondblclick" $ prim__ondblclick (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ondblclick  = v}"
  prim__setOndblclick : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOndblclick : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOndblclick a b =
    primToJSIO "setOndblclick" $ prim__setOndblclick (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ondrag"
  prim__ondrag : AnyPtr -> PrimIO AnyPtr

  export
  ondrag : (obj : GlobalEventHandlers) -> JSIO EventHandler
  ondrag a =   primToJSIO "ondrag" $ prim__ondrag (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ondrag  = v}"
  prim__setOndrag : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOndrag : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOndrag a b =   primToJSIO "setOndrag" $ prim__setOndrag (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ondragend"
  prim__ondragend : AnyPtr -> PrimIO AnyPtr

  export
  ondragend : (obj : GlobalEventHandlers) -> JSIO EventHandler
  ondragend a =   primToJSIO "ondragend" $ prim__ondragend (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ondragend  = v}"
  prim__setOndragend : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOndragend : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOndragend a b =
    primToJSIO "setOndragend" $ prim__setOndragend (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ondragenter"
  prim__ondragenter : AnyPtr -> PrimIO AnyPtr

  export
  ondragenter : (obj : GlobalEventHandlers) -> JSIO EventHandler
  ondragenter a =   primToJSIO "ondragenter" $ prim__ondragenter (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ondragenter  = v}"
  prim__setOndragenter : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOndragenter : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOndragenter a b =
    primToJSIO "setOndragenter" $ prim__setOndragenter (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ondragleave"
  prim__ondragleave : AnyPtr -> PrimIO AnyPtr

  export
  ondragleave : (obj : GlobalEventHandlers) -> JSIO EventHandler
  ondragleave a =   primToJSIO "ondragleave" $ prim__ondragleave (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ondragleave  = v}"
  prim__setOndragleave : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOndragleave : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOndragleave a b =
    primToJSIO "setOndragleave" $ prim__setOndragleave (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ondragover"
  prim__ondragover : AnyPtr -> PrimIO AnyPtr

  export
  ondragover : (obj : GlobalEventHandlers) -> JSIO EventHandler
  ondragover a =   primToJSIO "ondragover" $ prim__ondragover (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ondragover  = v}"
  prim__setOndragover : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOndragover : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOndragover a b =
    primToJSIO "setOndragover" $ prim__setOndragover (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ondragstart"
  prim__ondragstart : AnyPtr -> PrimIO AnyPtr

  export
  ondragstart : (obj : GlobalEventHandlers) -> JSIO EventHandler
  ondragstart a =   primToJSIO "ondragstart" $ prim__ondragstart (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ondragstart  = v}"
  prim__setOndragstart : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOndragstart : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOndragstart a b =
    primToJSIO "setOndragstart" $ prim__setOndragstart (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ondrop"
  prim__ondrop : AnyPtr -> PrimIO AnyPtr

  export
  ondrop : (obj : GlobalEventHandlers) -> JSIO EventHandler
  ondrop a =   primToJSIO "ondrop" $ prim__ondrop (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ondrop  = v}"
  prim__setOndrop : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOndrop : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOndrop a b =   primToJSIO "setOndrop" $ prim__setOndrop (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ondurationchange"
  prim__ondurationchange : AnyPtr -> PrimIO AnyPtr

  export
  ondurationchange : (obj : GlobalEventHandlers) -> JSIO EventHandler
  ondurationchange a =
    primToJSIO "ondurationchange" $ prim__ondurationchange (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ondurationchange  = v}"
  prim__setOndurationchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOndurationchange :  (obj : GlobalEventHandlers)
                      -> (v : EventHandler)
                      -> JSIO ()
  setOndurationchange a b =
    primToJSIO "setOndurationchange" $ prim__setOndurationchange (toJS a)
                                                                 (toJS b)
  
  %foreign "browser:lambda:x=>x.onemptied"
  prim__onemptied : AnyPtr -> PrimIO AnyPtr

  export
  onemptied : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onemptied a =   primToJSIO "onemptied" $ prim__onemptied (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onemptied  = v}"
  prim__setOnemptied : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnemptied : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnemptied a b =
    primToJSIO "setOnemptied" $ prim__setOnemptied (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onended"
  prim__onended : AnyPtr -> PrimIO AnyPtr

  export
  onended : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onended a =   primToJSIO "onended" $ prim__onended (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onended  = v}"
  prim__setOnended : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnended : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnended a b =
    primToJSIO "setOnended" $ prim__setOnended (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : AnyPtr -> PrimIO AnyPtr

  export
  onerror : (obj : GlobalEventHandlers) -> JSIO OnErrorEventHandler
  onerror a =   primToJSIO "onerror" $ prim__onerror (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onerror  = v}"
  prim__setOnerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnerror :  (obj : GlobalEventHandlers)
             -> (v : OnErrorEventHandler)
             -> JSIO ()
  setOnerror a b =
    primToJSIO "setOnerror" $ prim__setOnerror (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onfocus"
  prim__onfocus : AnyPtr -> PrimIO AnyPtr

  export
  onfocus : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onfocus a =   primToJSIO "onfocus" $ prim__onfocus (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onfocus  = v}"
  prim__setOnfocus : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnfocus : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnfocus a b =
    primToJSIO "setOnfocus" $ prim__setOnfocus (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onformdata"
  prim__onformdata : AnyPtr -> PrimIO AnyPtr

  export
  onformdata : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onformdata a =   primToJSIO "onformdata" $ prim__onformdata (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onformdata  = v}"
  prim__setOnformdata : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnformdata : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnformdata a b =
    primToJSIO "setOnformdata" $ prim__setOnformdata (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.oninput"
  prim__oninput : AnyPtr -> PrimIO AnyPtr

  export
  oninput : (obj : GlobalEventHandlers) -> JSIO EventHandler
  oninput a =   primToJSIO "oninput" $ prim__oninput (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.oninput  = v}"
  prim__setOninput : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOninput : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOninput a b =
    primToJSIO "setOninput" $ prim__setOninput (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.oninvalid"
  prim__oninvalid : AnyPtr -> PrimIO AnyPtr

  export
  oninvalid : (obj : GlobalEventHandlers) -> JSIO EventHandler
  oninvalid a =   primToJSIO "oninvalid" $ prim__oninvalid (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.oninvalid  = v}"
  prim__setOninvalid : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOninvalid : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOninvalid a b =
    primToJSIO "setOninvalid" $ prim__setOninvalid (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onkeydown"
  prim__onkeydown : AnyPtr -> PrimIO AnyPtr

  export
  onkeydown : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onkeydown a =   primToJSIO "onkeydown" $ prim__onkeydown (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onkeydown  = v}"
  prim__setOnkeydown : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnkeydown : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnkeydown a b =
    primToJSIO "setOnkeydown" $ prim__setOnkeydown (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onkeypress"
  prim__onkeypress : AnyPtr -> PrimIO AnyPtr

  export
  onkeypress : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onkeypress a =   primToJSIO "onkeypress" $ prim__onkeypress (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onkeypress  = v}"
  prim__setOnkeypress : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnkeypress : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnkeypress a b =
    primToJSIO "setOnkeypress" $ prim__setOnkeypress (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onkeyup"
  prim__onkeyup : AnyPtr -> PrimIO AnyPtr

  export
  onkeyup : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onkeyup a =   primToJSIO "onkeyup" $ prim__onkeyup (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onkeyup  = v}"
  prim__setOnkeyup : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnkeyup : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnkeyup a b =
    primToJSIO "setOnkeyup" $ prim__setOnkeyup (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onload"
  prim__onload : AnyPtr -> PrimIO AnyPtr

  export
  onload : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onload a =   primToJSIO "onload" $ prim__onload (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onload  = v}"
  prim__setOnload : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnload : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnload a b =   primToJSIO "setOnload" $ prim__setOnload (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onloadeddata"
  prim__onloadeddata : AnyPtr -> PrimIO AnyPtr

  export
  onloadeddata : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onloadeddata a =   primToJSIO "onloadeddata" $ prim__onloadeddata (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onloadeddata  = v}"
  prim__setOnloadeddata : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnloadeddata : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnloadeddata a b =
    primToJSIO "setOnloadeddata" $ prim__setOnloadeddata (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onloadedmetadata"
  prim__onloadedmetadata : AnyPtr -> PrimIO AnyPtr

  export
  onloadedmetadata : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onloadedmetadata a =
    primToJSIO "onloadedmetadata" $ prim__onloadedmetadata (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onloadedmetadata  = v}"
  prim__setOnloadedmetadata : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnloadedmetadata :  (obj : GlobalEventHandlers)
                      -> (v : EventHandler)
                      -> JSIO ()
  setOnloadedmetadata a b =
    primToJSIO "setOnloadedmetadata" $ prim__setOnloadedmetadata (toJS a)
                                                                 (toJS b)
  
  %foreign "browser:lambda:x=>x.onloadstart"
  prim__onloadstart : AnyPtr -> PrimIO AnyPtr

  export
  onloadstart : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onloadstart a =   primToJSIO "onloadstart" $ prim__onloadstart (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onloadstart  = v}"
  prim__setOnloadstart : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnloadstart : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnloadstart a b =
    primToJSIO "setOnloadstart" $ prim__setOnloadstart (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onmousedown"
  prim__onmousedown : AnyPtr -> PrimIO AnyPtr

  export
  onmousedown : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onmousedown a =   primToJSIO "onmousedown" $ prim__onmousedown (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onmousedown  = v}"
  prim__setOnmousedown : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmousedown : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnmousedown a b =
    primToJSIO "setOnmousedown" $ prim__setOnmousedown (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onmouseenter"
  prim__onmouseenter : AnyPtr -> PrimIO AnyPtr

  export
  onmouseenter : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onmouseenter a =   primToJSIO "onmouseenter" $ prim__onmouseenter (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onmouseenter  = v}"
  prim__setOnmouseenter : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmouseenter : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnmouseenter a b =
    primToJSIO "setOnmouseenter" $ prim__setOnmouseenter (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onmouseleave"
  prim__onmouseleave : AnyPtr -> PrimIO AnyPtr

  export
  onmouseleave : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onmouseleave a =   primToJSIO "onmouseleave" $ prim__onmouseleave (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onmouseleave  = v}"
  prim__setOnmouseleave : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmouseleave : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnmouseleave a b =
    primToJSIO "setOnmouseleave" $ prim__setOnmouseleave (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onmousemove"
  prim__onmousemove : AnyPtr -> PrimIO AnyPtr

  export
  onmousemove : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onmousemove a =   primToJSIO "onmousemove" $ prim__onmousemove (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onmousemove  = v}"
  prim__setOnmousemove : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmousemove : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnmousemove a b =
    primToJSIO "setOnmousemove" $ prim__setOnmousemove (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onmouseout"
  prim__onmouseout : AnyPtr -> PrimIO AnyPtr

  export
  onmouseout : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onmouseout a =   primToJSIO "onmouseout" $ prim__onmouseout (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onmouseout  = v}"
  prim__setOnmouseout : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmouseout : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnmouseout a b =
    primToJSIO "setOnmouseout" $ prim__setOnmouseout (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onmouseover"
  prim__onmouseover : AnyPtr -> PrimIO AnyPtr

  export
  onmouseover : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onmouseover a =   primToJSIO "onmouseover" $ prim__onmouseover (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onmouseover  = v}"
  prim__setOnmouseover : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmouseover : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnmouseover a b =
    primToJSIO "setOnmouseover" $ prim__setOnmouseover (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onmouseup"
  prim__onmouseup : AnyPtr -> PrimIO AnyPtr

  export
  onmouseup : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onmouseup a =   primToJSIO "onmouseup" $ prim__onmouseup (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onmouseup  = v}"
  prim__setOnmouseup : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmouseup : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnmouseup a b =
    primToJSIO "setOnmouseup" $ prim__setOnmouseup (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onpause"
  prim__onpause : AnyPtr -> PrimIO AnyPtr

  export
  onpause : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onpause a =   primToJSIO "onpause" $ prim__onpause (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onpause  = v}"
  prim__setOnpause : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnpause : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnpause a b =
    primToJSIO "setOnpause" $ prim__setOnpause (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onplay"
  prim__onplay : AnyPtr -> PrimIO AnyPtr

  export
  onplay : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onplay a =   primToJSIO "onplay" $ prim__onplay (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onplay  = v}"
  prim__setOnplay : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnplay : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnplay a b =   primToJSIO "setOnplay" $ prim__setOnplay (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onplaying"
  prim__onplaying : AnyPtr -> PrimIO AnyPtr

  export
  onplaying : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onplaying a =   primToJSIO "onplaying" $ prim__onplaying (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onplaying  = v}"
  prim__setOnplaying : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnplaying : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnplaying a b =
    primToJSIO "setOnplaying" $ prim__setOnplaying (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onprogress"
  prim__onprogress : AnyPtr -> PrimIO AnyPtr

  export
  onprogress : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onprogress a =   primToJSIO "onprogress" $ prim__onprogress (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onprogress  = v}"
  prim__setOnprogress : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnprogress : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnprogress a b =
    primToJSIO "setOnprogress" $ prim__setOnprogress (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onratechange"
  prim__onratechange : AnyPtr -> PrimIO AnyPtr

  export
  onratechange : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onratechange a =   primToJSIO "onratechange" $ prim__onratechange (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onratechange  = v}"
  prim__setOnratechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnratechange : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnratechange a b =
    primToJSIO "setOnratechange" $ prim__setOnratechange (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onreset"
  prim__onreset : AnyPtr -> PrimIO AnyPtr

  export
  onreset : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onreset a =   primToJSIO "onreset" $ prim__onreset (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onreset  = v}"
  prim__setOnreset : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnreset : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnreset a b =
    primToJSIO "setOnreset" $ prim__setOnreset (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onresize"
  prim__onresize : AnyPtr -> PrimIO AnyPtr

  export
  onresize : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onresize a =   primToJSIO "onresize" $ prim__onresize (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onresize  = v}"
  prim__setOnresize : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnresize : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnresize a b =
    primToJSIO "setOnresize" $ prim__setOnresize (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onscroll"
  prim__onscroll : AnyPtr -> PrimIO AnyPtr

  export
  onscroll : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onscroll a =   primToJSIO "onscroll" $ prim__onscroll (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onscroll  = v}"
  prim__setOnscroll : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnscroll : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnscroll a b =
    primToJSIO "setOnscroll" $ prim__setOnscroll (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onsecuritypolicyviolation"
  prim__onsecuritypolicyviolation : AnyPtr -> PrimIO AnyPtr

  export
  onsecuritypolicyviolation : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onsecuritypolicyviolation a =
    primToJSIO "onsecuritypolicyviolation" $ prim__onsecuritypolicyviolation (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onsecuritypolicyviolation  = v}"
  prim__setOnsecuritypolicyviolation : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnsecuritypolicyviolation :  (obj : GlobalEventHandlers)
                               -> (v : EventHandler)
                               -> JSIO ()
  setOnsecuritypolicyviolation a b =
    primToJSIO "setOnsecuritypolicyviolation" $ prim__setOnsecuritypolicyviolation (toJS a)
                                                                                   (toJS b)
  
  %foreign "browser:lambda:x=>x.onseeked"
  prim__onseeked : AnyPtr -> PrimIO AnyPtr

  export
  onseeked : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onseeked a =   primToJSIO "onseeked" $ prim__onseeked (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onseeked  = v}"
  prim__setOnseeked : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnseeked : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnseeked a b =
    primToJSIO "setOnseeked" $ prim__setOnseeked (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onseeking"
  prim__onseeking : AnyPtr -> PrimIO AnyPtr

  export
  onseeking : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onseeking a =   primToJSIO "onseeking" $ prim__onseeking (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onseeking  = v}"
  prim__setOnseeking : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnseeking : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnseeking a b =
    primToJSIO "setOnseeking" $ prim__setOnseeking (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onselect"
  prim__onselect : AnyPtr -> PrimIO AnyPtr

  export
  onselect : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onselect a =   primToJSIO "onselect" $ prim__onselect (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onselect  = v}"
  prim__setOnselect : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnselect : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnselect a b =
    primToJSIO "setOnselect" $ prim__setOnselect (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onslotchange"
  prim__onslotchange : AnyPtr -> PrimIO AnyPtr

  export
  onslotchange : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onslotchange a =   primToJSIO "onslotchange" $ prim__onslotchange (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onslotchange  = v}"
  prim__setOnslotchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnslotchange : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnslotchange a b =
    primToJSIO "setOnslotchange" $ prim__setOnslotchange (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onstalled"
  prim__onstalled : AnyPtr -> PrimIO AnyPtr

  export
  onstalled : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onstalled a =   primToJSIO "onstalled" $ prim__onstalled (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onstalled  = v}"
  prim__setOnstalled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnstalled : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnstalled a b =
    primToJSIO "setOnstalled" $ prim__setOnstalled (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onsubmit"
  prim__onsubmit : AnyPtr -> PrimIO AnyPtr

  export
  onsubmit : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onsubmit a =   primToJSIO "onsubmit" $ prim__onsubmit (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onsubmit  = v}"
  prim__setOnsubmit : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnsubmit : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnsubmit a b =
    primToJSIO "setOnsubmit" $ prim__setOnsubmit (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onsuspend"
  prim__onsuspend : AnyPtr -> PrimIO AnyPtr

  export
  onsuspend : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onsuspend a =   primToJSIO "onsuspend" $ prim__onsuspend (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onsuspend  = v}"
  prim__setOnsuspend : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnsuspend : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnsuspend a b =
    primToJSIO "setOnsuspend" $ prim__setOnsuspend (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ontimeupdate"
  prim__ontimeupdate : AnyPtr -> PrimIO AnyPtr

  export
  ontimeupdate : (obj : GlobalEventHandlers) -> JSIO EventHandler
  ontimeupdate a =   primToJSIO "ontimeupdate" $ prim__ontimeupdate (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ontimeupdate  = v}"
  prim__setOntimeupdate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOntimeupdate : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOntimeupdate a b =
    primToJSIO "setOntimeupdate" $ prim__setOntimeupdate (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ontoggle"
  prim__ontoggle : AnyPtr -> PrimIO AnyPtr

  export
  ontoggle : (obj : GlobalEventHandlers) -> JSIO EventHandler
  ontoggle a =   primToJSIO "ontoggle" $ prim__ontoggle (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ontoggle  = v}"
  prim__setOntoggle : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOntoggle : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOntoggle a b =
    primToJSIO "setOntoggle" $ prim__setOntoggle (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onvolumechange"
  prim__onvolumechange : AnyPtr -> PrimIO AnyPtr

  export
  onvolumechange : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onvolumechange a =
    primToJSIO "onvolumechange" $ prim__onvolumechange (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onvolumechange  = v}"
  prim__setOnvolumechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnvolumechange :  (obj : GlobalEventHandlers)
                    -> (v : EventHandler)
                    -> JSIO ()
  setOnvolumechange a b =
    primToJSIO "setOnvolumechange" $ prim__setOnvolumechange (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onwaiting"
  prim__onwaiting : AnyPtr -> PrimIO AnyPtr

  export
  onwaiting : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onwaiting a =   primToJSIO "onwaiting" $ prim__onwaiting (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onwaiting  = v}"
  prim__setOnwaiting : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnwaiting : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnwaiting a b =
    primToJSIO "setOnwaiting" $ prim__setOnwaiting (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onwebkitanimationend"
  prim__onwebkitanimationend : AnyPtr -> PrimIO AnyPtr

  export
  onwebkitanimationend : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onwebkitanimationend a =
    primToJSIO "onwebkitanimationend" $ prim__onwebkitanimationend (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onwebkitanimationend  = v}"
  prim__setOnwebkitanimationend : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnwebkitanimationend :  (obj : GlobalEventHandlers)
                          -> (v : EventHandler)
                          -> JSIO ()
  setOnwebkitanimationend a b =
    primToJSIO "setOnwebkitanimationend" $ prim__setOnwebkitanimationend (toJS a)
                                                                         (toJS b)
  
  %foreign "browser:lambda:x=>x.onwebkitanimationiteration"
  prim__onwebkitanimationiteration : AnyPtr -> PrimIO AnyPtr

  export
  onwebkitanimationiteration : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onwebkitanimationiteration a =
    primToJSIO "onwebkitanimationiteration" $ prim__onwebkitanimationiteration (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onwebkitanimationiteration  = v}"
  prim__setOnwebkitanimationiteration : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnwebkitanimationiteration :  (obj : GlobalEventHandlers)
                                -> (v : EventHandler)
                                -> JSIO ()
  setOnwebkitanimationiteration a b =
    primToJSIO "setOnwebkitanimationiteration" $ prim__setOnwebkitanimationiteration (toJS a)
                                                                                     (toJS b)
  
  %foreign "browser:lambda:x=>x.onwebkitanimationstart"
  prim__onwebkitanimationstart : AnyPtr -> PrimIO AnyPtr

  export
  onwebkitanimationstart : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onwebkitanimationstart a =
    primToJSIO "onwebkitanimationstart" $ prim__onwebkitanimationstart (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onwebkitanimationstart  = v}"
  prim__setOnwebkitanimationstart : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnwebkitanimationstart :  (obj : GlobalEventHandlers)
                            -> (v : EventHandler)
                            -> JSIO ()
  setOnwebkitanimationstart a b =
    primToJSIO "setOnwebkitanimationstart" $ prim__setOnwebkitanimationstart (toJS a)
                                                                             (toJS b)
  
  %foreign "browser:lambda:x=>x.onwebkittransitionend"
  prim__onwebkittransitionend : AnyPtr -> PrimIO AnyPtr

  export
  onwebkittransitionend : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onwebkittransitionend a =
    primToJSIO "onwebkittransitionend" $ prim__onwebkittransitionend (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onwebkittransitionend  = v}"
  prim__setOnwebkittransitionend : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnwebkittransitionend :  (obj : GlobalEventHandlers)
                           -> (v : EventHandler)
                           -> JSIO ()
  setOnwebkittransitionend a b =
    primToJSIO "setOnwebkittransitionend" $ prim__setOnwebkittransitionend (toJS a)
                                                                           (toJS b)
  
  %foreign "browser:lambda:x=>x.onwheel"
  prim__onwheel : AnyPtr -> PrimIO AnyPtr

  export
  onwheel : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onwheel a =   primToJSIO "onwheel" $ prim__onwheel (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onwheel  = v}"
  prim__setOnwheel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnwheel : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnwheel a b =
    primToJSIO "setOnwheel" $ prim__setOnwheel (toJS a) (toJS b)

namespace HTMLHyperlinkElementUtils
  
  %foreign "browser:lambda:x=>x.origin"
  prim__origin : AnyPtr -> PrimIO AnyPtr

  export
  origin : (obj : HTMLHyperlinkElementUtils) -> JSIO String
  origin a =   primToJSIO "origin" $ prim__origin (toJS a)
  
  %foreign "browser:lambda:x=>x.hash"
  prim__hash : AnyPtr -> PrimIO AnyPtr

  export
  hash : (obj : HTMLHyperlinkElementUtils) -> JSIO String
  hash a =   primToJSIO "hash" $ prim__hash (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.hash  = v}"
  prim__setHash : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHash : (obj : HTMLHyperlinkElementUtils) -> (v : String) -> JSIO ()
  setHash a b =   primToJSIO "setHash" $ prim__setHash (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.host"
  prim__host : AnyPtr -> PrimIO AnyPtr

  export
  host : (obj : HTMLHyperlinkElementUtils) -> JSIO String
  host a =   primToJSIO "host" $ prim__host (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.host  = v}"
  prim__setHost : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHost : (obj : HTMLHyperlinkElementUtils) -> (v : String) -> JSIO ()
  setHost a b =   primToJSIO "setHost" $ prim__setHost (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.hostname"
  prim__hostname : AnyPtr -> PrimIO AnyPtr

  export
  hostname : (obj : HTMLHyperlinkElementUtils) -> JSIO String
  hostname a =   primToJSIO "hostname" $ prim__hostname (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.hostname  = v}"
  prim__setHostname : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHostname : (obj : HTMLHyperlinkElementUtils) -> (v : String) -> JSIO ()
  setHostname a b =
    primToJSIO "setHostname" $ prim__setHostname (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.password"
  prim__password : AnyPtr -> PrimIO AnyPtr

  export
  password : (obj : HTMLHyperlinkElementUtils) -> JSIO String
  password a =   primToJSIO "password" $ prim__password (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.password  = v}"
  prim__setPassword : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPassword : (obj : HTMLHyperlinkElementUtils) -> (v : String) -> JSIO ()
  setPassword a b =
    primToJSIO "setPassword" $ prim__setPassword (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.pathname"
  prim__pathname : AnyPtr -> PrimIO AnyPtr

  export
  pathname : (obj : HTMLHyperlinkElementUtils) -> JSIO String
  pathname a =   primToJSIO "pathname" $ prim__pathname (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.pathname  = v}"
  prim__setPathname : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPathname : (obj : HTMLHyperlinkElementUtils) -> (v : String) -> JSIO ()
  setPathname a b =
    primToJSIO "setPathname" $ prim__setPathname (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.port"
  prim__port : AnyPtr -> PrimIO AnyPtr

  export
  port : (obj : HTMLHyperlinkElementUtils) -> JSIO String
  port a =   primToJSIO "port" $ prim__port (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.port  = v}"
  prim__setPort : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPort : (obj : HTMLHyperlinkElementUtils) -> (v : String) -> JSIO ()
  setPort a b =   primToJSIO "setPort" $ prim__setPort (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.protocol"
  prim__protocol : AnyPtr -> PrimIO AnyPtr

  export
  protocol : (obj : HTMLHyperlinkElementUtils) -> JSIO String
  protocol a =   primToJSIO "protocol" $ prim__protocol (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.protocol  = v}"
  prim__setProtocol : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setProtocol : (obj : HTMLHyperlinkElementUtils) -> (v : String) -> JSIO ()
  setProtocol a b =
    primToJSIO "setProtocol" $ prim__setProtocol (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.search"
  prim__search : AnyPtr -> PrimIO AnyPtr

  export
  search : (obj : HTMLHyperlinkElementUtils) -> JSIO String
  search a =   primToJSIO "search" $ prim__search (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.search  = v}"
  prim__setSearch : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSearch : (obj : HTMLHyperlinkElementUtils) -> (v : String) -> JSIO ()
  setSearch a b =   primToJSIO "setSearch" $ prim__setSearch (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.username"
  prim__username : AnyPtr -> PrimIO AnyPtr

  export
  username : (obj : HTMLHyperlinkElementUtils) -> JSIO String
  username a =   primToJSIO "username" $ prim__username (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.username  = v}"
  prim__setUsername : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setUsername : (obj : HTMLHyperlinkElementUtils) -> (v : String) -> JSIO ()
  setUsername a b =
    primToJSIO "setUsername" $ prim__setUsername (toJS a) (toJS b)

namespace HTMLOrSVGElement
  
  %foreign "browser:lambda:x=>x.dataset"
  prim__dataset : AnyPtr -> PrimIO AnyPtr

  export
  dataset : (obj : HTMLOrSVGElement) -> JSIO DOMStringMap
  dataset a =   primToJSIO "dataset" $ prim__dataset (toJS a)
  
  %foreign "browser:lambda:x=>x.autofocus"
  prim__autofocus : AnyPtr -> PrimIO AnyPtr

  export
  autofocus : (obj : HTMLOrSVGElement) -> JSIO Bool
  autofocus a =   primToJSIO "autofocus" $ prim__autofocus (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.autofocus  = v}"
  prim__setAutofocus : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAutofocus : (obj : HTMLOrSVGElement) -> (v : Bool) -> JSIO ()
  setAutofocus a b =
    primToJSIO "setAutofocus" $ prim__setAutofocus (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.nonce"
  prim__nonce : AnyPtr -> PrimIO AnyPtr

  export
  nonce : (obj : HTMLOrSVGElement) -> JSIO String
  nonce a =   primToJSIO "nonce" $ prim__nonce (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.nonce  = v}"
  prim__setNonce : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setNonce : (obj : HTMLOrSVGElement) -> (v : String) -> JSIO ()
  setNonce a b =   primToJSIO "setNonce" $ prim__setNonce (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.tabIndex"
  prim__tabIndex : AnyPtr -> PrimIO AnyPtr

  export
  tabIndex : (obj : HTMLOrSVGElement) -> JSIO Int32
  tabIndex a =   primToJSIO "tabIndex" $ prim__tabIndex (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.tabIndex  = v}"
  prim__setTabIndex : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTabIndex : (obj : HTMLOrSVGElement) -> (v : Int32) -> JSIO ()
  setTabIndex a b =
    primToJSIO "setTabIndex" $ prim__setTabIndex (toJS a) (toJS b)

namespace NavigatorConcurrentHardware
  
  %foreign "browser:lambda:x=>x.hardwareConcurrency"
  prim__hardwareConcurrency : AnyPtr -> PrimIO AnyPtr

  export
  hardwareConcurrency : (obj : NavigatorConcurrentHardware) -> JSIO UInt64
  hardwareConcurrency a =
    primToJSIO "hardwareConcurrency" $ prim__hardwareConcurrency (toJS a)


namespace NavigatorCookies
  
  %foreign "browser:lambda:x=>x.cookieEnabled"
  prim__cookieEnabled : AnyPtr -> PrimIO AnyPtr

  export
  cookieEnabled : (obj : NavigatorCookies) -> JSIO Bool
  cookieEnabled a =   primToJSIO "cookieEnabled" $ prim__cookieEnabled (toJS a)

namespace NavigatorID
  
  %foreign "browser:lambda:x=>x.appCodeName"
  prim__appCodeName : AnyPtr -> PrimIO AnyPtr

  export
  appCodeName : (obj : NavigatorID) -> JSIO String
  appCodeName a =   primToJSIO "appCodeName" $ prim__appCodeName (toJS a)
  
  %foreign "browser:lambda:x=>x.appName"
  prim__appName : AnyPtr -> PrimIO AnyPtr

  export
  appName : (obj : NavigatorID) -> JSIO String
  appName a =   primToJSIO "appName" $ prim__appName (toJS a)
  
  %foreign "browser:lambda:x=>x.appVersion"
  prim__appVersion : AnyPtr -> PrimIO AnyPtr

  export
  appVersion : (obj : NavigatorID) -> JSIO String
  appVersion a =   primToJSIO "appVersion" $ prim__appVersion (toJS a)
  
  %foreign "browser:lambda:x=>x.platform"
  prim__platform : AnyPtr -> PrimIO AnyPtr

  export
  platform : (obj : NavigatorID) -> JSIO String
  platform a =   primToJSIO "platform" $ prim__platform (toJS a)
  
  %foreign "browser:lambda:x=>x.product"
  prim__product : AnyPtr -> PrimIO AnyPtr

  export
  product : (obj : NavigatorID) -> JSIO String
  product a =   primToJSIO "product" $ prim__product (toJS a)
  
  %foreign "browser:lambda:x=>x.productSub"
  prim__productSub : AnyPtr -> PrimIO AnyPtr

  export
  productSub : (obj : NavigatorID) -> JSIO String
  productSub a =   primToJSIO "productSub" $ prim__productSub (toJS a)
  
  %foreign "browser:lambda:x=>x.userAgent"
  prim__userAgent : AnyPtr -> PrimIO AnyPtr

  export
  userAgent : (obj : NavigatorID) -> JSIO String
  userAgent a =   primToJSIO "userAgent" $ prim__userAgent (toJS a)
  
  %foreign "browser:lambda:x=>x.vendor"
  prim__vendor : AnyPtr -> PrimIO AnyPtr

  export
  vendor : (obj : NavigatorID) -> JSIO String
  vendor a =   primToJSIO "vendor" $ prim__vendor (toJS a)
  
  %foreign "browser:lambda:x=>x.vendorSub"
  prim__vendorSub : AnyPtr -> PrimIO AnyPtr

  export
  vendorSub : (obj : NavigatorID) -> JSIO String
  vendorSub a =   primToJSIO "vendorSub" $ prim__vendorSub (toJS a)

namespace NavigatorLanguage
  
  %foreign "browser:lambda:x=>x.language"
  prim__language : AnyPtr -> PrimIO AnyPtr

  export
  language : (obj : NavigatorLanguage) -> JSIO String
  language a =   primToJSIO "language" $ prim__language (toJS a)
  
  %foreign "browser:lambda:x=>x.languages"
  prim__languages : AnyPtr -> PrimIO AnyPtr

  export
  languages : (obj : NavigatorLanguage) -> JSIO (JSArray String)
  languages a =   primToJSIO "languages" $ prim__languages (toJS a)

namespace NavigatorOnLine
  
  %foreign "browser:lambda:x=>x.onLine"
  prim__onLine : AnyPtr -> PrimIO AnyPtr

  export
  onLine : (obj : NavigatorOnLine) -> JSIO Bool
  onLine a =   primToJSIO "onLine" $ prim__onLine (toJS a)

namespace NavigatorPlugins
  
  %foreign "browser:lambda:x=>x.mimeTypes"
  prim__mimeTypes : AnyPtr -> PrimIO AnyPtr

  export
  mimeTypes : (obj : NavigatorPlugins) -> JSIO MimeTypeArray
  mimeTypes a =   primToJSIO "mimeTypes" $ prim__mimeTypes (toJS a)
  
  %foreign "browser:lambda:x=>x.plugins"
  prim__plugins : AnyPtr -> PrimIO AnyPtr

  export
  plugins : (obj : NavigatorPlugins) -> JSIO PluginArray
  plugins a =   primToJSIO "plugins" $ prim__plugins (toJS a)

namespace WindowEventHandlers
  
  %foreign "browser:lambda:x=>x.onafterprint"
  prim__onafterprint : AnyPtr -> PrimIO AnyPtr

  export
  onafterprint : (obj : WindowEventHandlers) -> JSIO EventHandler
  onafterprint a =   primToJSIO "onafterprint" $ prim__onafterprint (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onafterprint  = v}"
  prim__setOnafterprint : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnafterprint : (obj : WindowEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnafterprint a b =
    primToJSIO "setOnafterprint" $ prim__setOnafterprint (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onbeforeprint"
  prim__onbeforeprint : AnyPtr -> PrimIO AnyPtr

  export
  onbeforeprint : (obj : WindowEventHandlers) -> JSIO EventHandler
  onbeforeprint a =   primToJSIO "onbeforeprint" $ prim__onbeforeprint (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onbeforeprint  = v}"
  prim__setOnbeforeprint : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnbeforeprint :  (obj : WindowEventHandlers)
                   -> (v : EventHandler)
                   -> JSIO ()
  setOnbeforeprint a b =
    primToJSIO "setOnbeforeprint" $ prim__setOnbeforeprint (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onbeforeunload"
  prim__onbeforeunload : AnyPtr -> PrimIO AnyPtr

  export
  onbeforeunload :  (obj : WindowEventHandlers)
                 -> JSIO OnBeforeUnloadEventHandler
  onbeforeunload a =
    primToJSIO "onbeforeunload" $ prim__onbeforeunload (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onbeforeunload  = v}"
  prim__setOnbeforeunload : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnbeforeunload :  (obj : WindowEventHandlers)
                    -> (v : OnBeforeUnloadEventHandler)
                    -> JSIO ()
  setOnbeforeunload a b =
    primToJSIO "setOnbeforeunload" $ prim__setOnbeforeunload (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onhashchange"
  prim__onhashchange : AnyPtr -> PrimIO AnyPtr

  export
  onhashchange : (obj : WindowEventHandlers) -> JSIO EventHandler
  onhashchange a =   primToJSIO "onhashchange" $ prim__onhashchange (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onhashchange  = v}"
  prim__setOnhashchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnhashchange : (obj : WindowEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnhashchange a b =
    primToJSIO "setOnhashchange" $ prim__setOnhashchange (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onlanguagechange"
  prim__onlanguagechange : AnyPtr -> PrimIO AnyPtr

  export
  onlanguagechange : (obj : WindowEventHandlers) -> JSIO EventHandler
  onlanguagechange a =
    primToJSIO "onlanguagechange" $ prim__onlanguagechange (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onlanguagechange  = v}"
  prim__setOnlanguagechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnlanguagechange :  (obj : WindowEventHandlers)
                      -> (v : EventHandler)
                      -> JSIO ()
  setOnlanguagechange a b =
    primToJSIO "setOnlanguagechange" $ prim__setOnlanguagechange (toJS a)
                                                                 (toJS b)
  
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : AnyPtr -> PrimIO AnyPtr

  export
  onmessage : (obj : WindowEventHandlers) -> JSIO EventHandler
  onmessage a =   primToJSIO "onmessage" $ prim__onmessage (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onmessage  = v}"
  prim__setOnmessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmessage : (obj : WindowEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnmessage a b =
    primToJSIO "setOnmessage" $ prim__setOnmessage (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onmessageerror"
  prim__onmessageerror : AnyPtr -> PrimIO AnyPtr

  export
  onmessageerror : (obj : WindowEventHandlers) -> JSIO EventHandler
  onmessageerror a =
    primToJSIO "onmessageerror" $ prim__onmessageerror (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onmessageerror  = v}"
  prim__setOnmessageerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmessageerror :  (obj : WindowEventHandlers)
                    -> (v : EventHandler)
                    -> JSIO ()
  setOnmessageerror a b =
    primToJSIO "setOnmessageerror" $ prim__setOnmessageerror (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onoffline"
  prim__onoffline : AnyPtr -> PrimIO AnyPtr

  export
  onoffline : (obj : WindowEventHandlers) -> JSIO EventHandler
  onoffline a =   primToJSIO "onoffline" $ prim__onoffline (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onoffline  = v}"
  prim__setOnoffline : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnoffline : (obj : WindowEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnoffline a b =
    primToJSIO "setOnoffline" $ prim__setOnoffline (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ononline"
  prim__ononline : AnyPtr -> PrimIO AnyPtr

  export
  ononline : (obj : WindowEventHandlers) -> JSIO EventHandler
  ononline a =   primToJSIO "ononline" $ prim__ononline (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ononline  = v}"
  prim__setOnonline : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnonline : (obj : WindowEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnonline a b =
    primToJSIO "setOnonline" $ prim__setOnonline (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onpagehide"
  prim__onpagehide : AnyPtr -> PrimIO AnyPtr

  export
  onpagehide : (obj : WindowEventHandlers) -> JSIO EventHandler
  onpagehide a =   primToJSIO "onpagehide" $ prim__onpagehide (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onpagehide  = v}"
  prim__setOnpagehide : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnpagehide : (obj : WindowEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnpagehide a b =
    primToJSIO "setOnpagehide" $ prim__setOnpagehide (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onpageshow"
  prim__onpageshow : AnyPtr -> PrimIO AnyPtr

  export
  onpageshow : (obj : WindowEventHandlers) -> JSIO EventHandler
  onpageshow a =   primToJSIO "onpageshow" $ prim__onpageshow (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onpageshow  = v}"
  prim__setOnpageshow : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnpageshow : (obj : WindowEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnpageshow a b =
    primToJSIO "setOnpageshow" $ prim__setOnpageshow (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onpopstate"
  prim__onpopstate : AnyPtr -> PrimIO AnyPtr

  export
  onpopstate : (obj : WindowEventHandlers) -> JSIO EventHandler
  onpopstate a =   primToJSIO "onpopstate" $ prim__onpopstate (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onpopstate  = v}"
  prim__setOnpopstate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnpopstate : (obj : WindowEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnpopstate a b =
    primToJSIO "setOnpopstate" $ prim__setOnpopstate (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onrejectionhandled"
  prim__onrejectionhandled : AnyPtr -> PrimIO AnyPtr

  export
  onrejectionhandled : (obj : WindowEventHandlers) -> JSIO EventHandler
  onrejectionhandled a =
    primToJSIO "onrejectionhandled" $ prim__onrejectionhandled (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onrejectionhandled  = v}"
  prim__setOnrejectionhandled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnrejectionhandled :  (obj : WindowEventHandlers)
                        -> (v : EventHandler)
                        -> JSIO ()
  setOnrejectionhandled a b =
    primToJSIO "setOnrejectionhandled" $ prim__setOnrejectionhandled (toJS a)
                                                                     (toJS b)
  
  %foreign "browser:lambda:x=>x.onstorage"
  prim__onstorage : AnyPtr -> PrimIO AnyPtr

  export
  onstorage : (obj : WindowEventHandlers) -> JSIO EventHandler
  onstorage a =   primToJSIO "onstorage" $ prim__onstorage (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onstorage  = v}"
  prim__setOnstorage : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnstorage : (obj : WindowEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnstorage a b =
    primToJSIO "setOnstorage" $ prim__setOnstorage (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onunhandledrejection"
  prim__onunhandledrejection : AnyPtr -> PrimIO AnyPtr

  export
  onunhandledrejection : (obj : WindowEventHandlers) -> JSIO EventHandler
  onunhandledrejection a =
    primToJSIO "onunhandledrejection" $ prim__onunhandledrejection (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onunhandledrejection  = v}"
  prim__setOnunhandledrejection : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnunhandledrejection :  (obj : WindowEventHandlers)
                          -> (v : EventHandler)
                          -> JSIO ()
  setOnunhandledrejection a b =
    primToJSIO "setOnunhandledrejection" $ prim__setOnunhandledrejection (toJS a)
                                                                         (toJS b)
  
  %foreign "browser:lambda:x=>x.onunload"
  prim__onunload : AnyPtr -> PrimIO AnyPtr

  export
  onunload : (obj : WindowEventHandlers) -> JSIO EventHandler
  onunload a =   primToJSIO "onunload" $ prim__onunload (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onunload  = v}"
  prim__setOnunload : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnunload : (obj : WindowEventHandlers) -> (v : EventHandler) -> JSIO ()
  setOnunload a b =
    primToJSIO "setOnunload" $ prim__setOnunload (toJS a) (toJS b)

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace AssignedNodesOptions
  
  public export
  JSType AssignedNodesOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.flatten"
  prim__flatten : AnyPtr -> PrimIO AnyPtr

  export
  flatten : (obj : AssignedNodesOptions) -> JSIO Bool
  flatten a =   primToJSIO "flatten" $ prim__flatten (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.flatten  = v}"
  prim__setFlatten : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFlatten : (obj : AssignedNodesOptions) -> (v : Bool) -> JSIO ()
  setFlatten a b =
    primToJSIO "setFlatten" $ prim__setFlatten (toJS a) (toJS b)

namespace CanvasRenderingContext2DSettings
  
  public export
  JSType CanvasRenderingContext2DSettings where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.alpha"
  prim__alpha : AnyPtr -> PrimIO AnyPtr

  export
  alpha : (obj : CanvasRenderingContext2DSettings) -> JSIO Bool
  alpha a =   primToJSIO "alpha" $ prim__alpha (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.alpha  = v}"
  prim__setAlpha : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlpha : (obj : CanvasRenderingContext2DSettings) -> (v : Bool) -> JSIO ()
  setAlpha a b =   primToJSIO "setAlpha" $ prim__setAlpha (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.desynchronized"
  prim__desynchronized : AnyPtr -> PrimIO AnyPtr

  export
  desynchronized : (obj : CanvasRenderingContext2DSettings) -> JSIO Bool
  desynchronized a =
    primToJSIO "desynchronized" $ prim__desynchronized (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.desynchronized  = v}"
  prim__setDesynchronized : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDesynchronized :  (obj : CanvasRenderingContext2DSettings)
                    -> (v : Bool)
                    -> JSIO ()
  setDesynchronized a b =
    primToJSIO "setDesynchronized" $ prim__setDesynchronized (toJS a) (toJS b)

namespace CloseEventInit
  
  public export
  JSType CloseEventInit where
    parents =  [ EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.code"
  prim__code : AnyPtr -> PrimIO AnyPtr

  export
  code : (obj : CloseEventInit) -> JSIO UInt16
  code a =   primToJSIO "code" $ prim__code (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.code  = v}"
  prim__setCode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCode : (obj : CloseEventInit) -> (v : UInt16) -> JSIO ()
  setCode a b =   primToJSIO "setCode" $ prim__setCode (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.reason"
  prim__reason : AnyPtr -> PrimIO AnyPtr

  export
  reason : (obj : CloseEventInit) -> JSIO String
  reason a =   primToJSIO "reason" $ prim__reason (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.reason  = v}"
  prim__setReason : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReason : (obj : CloseEventInit) -> (v : String) -> JSIO ()
  setReason a b =   primToJSIO "setReason" $ prim__setReason (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.wasClean"
  prim__wasClean : AnyPtr -> PrimIO AnyPtr

  export
  wasClean : (obj : CloseEventInit) -> JSIO Bool
  wasClean a =   primToJSIO "wasClean" $ prim__wasClean (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.wasClean  = v}"
  prim__setWasClean : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWasClean : (obj : CloseEventInit) -> (v : Bool) -> JSIO ()
  setWasClean a b =
    primToJSIO "setWasClean" $ prim__setWasClean (toJS a) (toJS b)

namespace DragEventInit
  
  public export
  JSType DragEventInit where
    parents =  [ MouseEventInit
               , EventModifierInit
               , UIEventInit
               , EventInit
               , JSObject
               ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.dataTransfer"
  prim__dataTransfer : AnyPtr -> PrimIO AnyPtr

  export
  dataTransfer : (obj : DragEventInit) -> JSIO (Maybe DataTransfer)
  dataTransfer a =   primToJSIO "dataTransfer" $ prim__dataTransfer (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.dataTransfer  = v}"
  prim__setDataTransfer : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDataTransfer : (obj : DragEventInit) -> (v : Maybe DataTransfer) -> JSIO ()
  setDataTransfer a b =
    primToJSIO "setDataTransfer" $ prim__setDataTransfer (toJS a) (toJS b)

namespace ElementDefinitionOptions
  
  public export
  JSType ElementDefinitionOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.extends"
  prim__extends : AnyPtr -> PrimIO AnyPtr

  export
  extends : (obj : ElementDefinitionOptions) -> JSIO String
  extends a =   primToJSIO "extends" $ prim__extends (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.extends  = v}"
  prim__setExtends : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setExtends : (obj : ElementDefinitionOptions) -> (v : String) -> JSIO ()
  setExtends a b =
    primToJSIO "setExtends" $ prim__setExtends (toJS a) (toJS b)

namespace ErrorEventInit
  
  public export
  JSType ErrorEventInit where
    parents =  [ EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.colno"
  prim__colno : AnyPtr -> PrimIO AnyPtr

  export
  colno : (obj : ErrorEventInit) -> JSIO UInt32
  colno a =   primToJSIO "colno" $ prim__colno (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.colno  = v}"
  prim__setColno : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setColno : (obj : ErrorEventInit) -> (v : UInt32) -> JSIO ()
  setColno a b =   primToJSIO "setColno" $ prim__setColno (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.error"
  prim__error : AnyPtr -> PrimIO AnyPtr

  export
  error : (obj : ErrorEventInit) -> JSIO Any
  error a =   primToJSIO "error" $ prim__error (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.error  = v}"
  prim__setError : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setError : (obj : ErrorEventInit) -> (v : Any) -> JSIO ()
  setError a b =   primToJSIO "setError" $ prim__setError (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.filename"
  prim__filename : AnyPtr -> PrimIO AnyPtr

  export
  filename : (obj : ErrorEventInit) -> JSIO String
  filename a =   primToJSIO "filename" $ prim__filename (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.filename  = v}"
  prim__setFilename : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFilename : (obj : ErrorEventInit) -> (v : String) -> JSIO ()
  setFilename a b =
    primToJSIO "setFilename" $ prim__setFilename (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.lineno"
  prim__lineno : AnyPtr -> PrimIO AnyPtr

  export
  lineno : (obj : ErrorEventInit) -> JSIO UInt32
  lineno a =   primToJSIO "lineno" $ prim__lineno (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.lineno  = v}"
  prim__setLineno : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLineno : (obj : ErrorEventInit) -> (v : UInt32) -> JSIO ()
  setLineno a b =   primToJSIO "setLineno" $ prim__setLineno (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.message"
  prim__message : AnyPtr -> PrimIO AnyPtr

  export
  message : (obj : ErrorEventInit) -> JSIO String
  message a =   primToJSIO "message" $ prim__message (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.message  = v}"
  prim__setMessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMessage : (obj : ErrorEventInit) -> (v : String) -> JSIO ()
  setMessage a b =
    primToJSIO "setMessage" $ prim__setMessage (toJS a) (toJS b)

namespace EventSourceInit
  
  public export
  JSType EventSourceInit where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.withCredentials"
  prim__withCredentials : AnyPtr -> PrimIO AnyPtr

  export
  withCredentials : (obj : EventSourceInit) -> JSIO Bool
  withCredentials a =
    primToJSIO "withCredentials" $ prim__withCredentials (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.withCredentials  = v}"
  prim__setWithCredentials : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWithCredentials : (obj : EventSourceInit) -> (v : Bool) -> JSIO ()
  setWithCredentials a b =
    primToJSIO "setWithCredentials" $ prim__setWithCredentials (toJS a) (toJS b)

namespace FocusOptions
  
  public export
  JSType FocusOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.preventScroll"
  prim__preventScroll : AnyPtr -> PrimIO AnyPtr

  export
  preventScroll : (obj : FocusOptions) -> JSIO Bool
  preventScroll a =   primToJSIO "preventScroll" $ prim__preventScroll (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.preventScroll  = v}"
  prim__setPreventScroll : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPreventScroll : (obj : FocusOptions) -> (v : Bool) -> JSIO ()
  setPreventScroll a b =
    primToJSIO "setPreventScroll" $ prim__setPreventScroll (toJS a) (toJS b)

namespace FormDataEventInit
  
  public export
  JSType FormDataEventInit where
    parents =  [ EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.formData"
  prim__formData : AnyPtr -> PrimIO AnyPtr

  export
  formData : (obj : FormDataEventInit) -> JSIO FormData
  formData a =   primToJSIO "formData" $ prim__formData (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.formData  = v}"
  prim__setFormData : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFormData : (obj : FormDataEventInit) -> (v : FormData) -> JSIO ()
  setFormData a b =
    primToJSIO "setFormData" $ prim__setFormData (toJS a) (toJS b)

namespace HashChangeEventInit
  
  public export
  JSType HashChangeEventInit where
    parents =  [ EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.newURL"
  prim__newURL : AnyPtr -> PrimIO AnyPtr

  export
  newURL : (obj : HashChangeEventInit) -> JSIO String
  newURL a =   primToJSIO "newURL" $ prim__newURL (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.newURL  = v}"
  prim__setNewURL : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setNewURL : (obj : HashChangeEventInit) -> (v : String) -> JSIO ()
  setNewURL a b =   primToJSIO "setNewURL" $ prim__setNewURL (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.oldURL"
  prim__oldURL : AnyPtr -> PrimIO AnyPtr

  export
  oldURL : (obj : HashChangeEventInit) -> JSIO String
  oldURL a =   primToJSIO "oldURL" $ prim__oldURL (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.oldURL  = v}"
  prim__setOldURL : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOldURL : (obj : HashChangeEventInit) -> (v : String) -> JSIO ()
  setOldURL a b =   primToJSIO "setOldURL" $ prim__setOldURL (toJS a) (toJS b)

namespace ImageBitmapOptions
  
  public export
  JSType ImageBitmapOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.colorSpaceConversion"
  prim__colorSpaceConversion : AnyPtr -> PrimIO AnyPtr

  export
  colorSpaceConversion : (obj : ImageBitmapOptions) -> JSIO ColorSpaceConversion
  colorSpaceConversion a =
    primToJSIO "colorSpaceConversion" $ prim__colorSpaceConversion (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.colorSpaceConversion  = v}"
  prim__setColorSpaceConversion : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setColorSpaceConversion :  (obj : ImageBitmapOptions)
                          -> (v : ColorSpaceConversion)
                          -> JSIO ()
  setColorSpaceConversion a b =
    primToJSIO "setColorSpaceConversion" $ prim__setColorSpaceConversion (toJS a)
                                                                         (toJS b)
  
  %foreign "browser:lambda:x=>x.imageOrientation"
  prim__imageOrientation : AnyPtr -> PrimIO AnyPtr

  export
  imageOrientation : (obj : ImageBitmapOptions) -> JSIO ImageOrientation
  imageOrientation a =
    primToJSIO "imageOrientation" $ prim__imageOrientation (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.imageOrientation  = v}"
  prim__setImageOrientation : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setImageOrientation :  (obj : ImageBitmapOptions)
                      -> (v : ImageOrientation)
                      -> JSIO ()
  setImageOrientation a b =
    primToJSIO "setImageOrientation" $ prim__setImageOrientation (toJS a)
                                                                 (toJS b)
  
  %foreign "browser:lambda:x=>x.premultiplyAlpha"
  prim__premultiplyAlpha : AnyPtr -> PrimIO AnyPtr

  export
  premultiplyAlpha : (obj : ImageBitmapOptions) -> JSIO PremultiplyAlpha
  premultiplyAlpha a =
    primToJSIO "premultiplyAlpha" $ prim__premultiplyAlpha (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.premultiplyAlpha  = v}"
  prim__setPremultiplyAlpha : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPremultiplyAlpha :  (obj : ImageBitmapOptions)
                      -> (v : PremultiplyAlpha)
                      -> JSIO ()
  setPremultiplyAlpha a b =
    primToJSIO "setPremultiplyAlpha" $ prim__setPremultiplyAlpha (toJS a)
                                                                 (toJS b)
  
  %foreign "browser:lambda:x=>x.resizeHeight"
  prim__resizeHeight : AnyPtr -> PrimIO AnyPtr

  export
  resizeHeight : (obj : ImageBitmapOptions) -> JSIO UInt32
  resizeHeight a =   primToJSIO "resizeHeight" $ prim__resizeHeight (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.resizeHeight  = v}"
  prim__setResizeHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setResizeHeight : (obj : ImageBitmapOptions) -> (v : UInt32) -> JSIO ()
  setResizeHeight a b =
    primToJSIO "setResizeHeight" $ prim__setResizeHeight (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.resizeQuality"
  prim__resizeQuality : AnyPtr -> PrimIO AnyPtr

  export
  resizeQuality : (obj : ImageBitmapOptions) -> JSIO ResizeQuality
  resizeQuality a =   primToJSIO "resizeQuality" $ prim__resizeQuality (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.resizeQuality  = v}"
  prim__setResizeQuality : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setResizeQuality :  (obj : ImageBitmapOptions)
                   -> (v : ResizeQuality)
                   -> JSIO ()
  setResizeQuality a b =
    primToJSIO "setResizeQuality" $ prim__setResizeQuality (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.resizeWidth"
  prim__resizeWidth : AnyPtr -> PrimIO AnyPtr

  export
  resizeWidth : (obj : ImageBitmapOptions) -> JSIO UInt32
  resizeWidth a =   primToJSIO "resizeWidth" $ prim__resizeWidth (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.resizeWidth  = v}"
  prim__setResizeWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setResizeWidth : (obj : ImageBitmapOptions) -> (v : UInt32) -> JSIO ()
  setResizeWidth a b =
    primToJSIO "setResizeWidth" $ prim__setResizeWidth (toJS a) (toJS b)

namespace ImageBitmapRenderingContextSettings
  
  public export
  JSType ImageBitmapRenderingContextSettings where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.alpha"
  prim__alpha : AnyPtr -> PrimIO AnyPtr

  export
  alpha : (obj : ImageBitmapRenderingContextSettings) -> JSIO Bool
  alpha a =   primToJSIO "alpha" $ prim__alpha (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.alpha  = v}"
  prim__setAlpha : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlpha :  (obj : ImageBitmapRenderingContextSettings)
           -> (v : Bool)
           -> JSIO ()
  setAlpha a b =   primToJSIO "setAlpha" $ prim__setAlpha (toJS a) (toJS b)

namespace ImageEncodeOptions
  
  public export
  JSType ImageEncodeOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.quality"
  prim__quality : AnyPtr -> PrimIO AnyPtr

  export
  quality : (obj : ImageEncodeOptions) -> JSIO Double
  quality a =   primToJSIO "quality" $ prim__quality (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.quality  = v}"
  prim__setQuality : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setQuality : (obj : ImageEncodeOptions) -> (v : Double) -> JSIO ()
  setQuality a b =
    primToJSIO "setQuality" $ prim__setQuality (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : ImageEncodeOptions) -> JSIO String
  type a =   primToJSIO "type" $ prim__type (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : ImageEncodeOptions) -> (v : String) -> JSIO ()
  setType a b =   primToJSIO "setType" $ prim__setType (toJS a) (toJS b)

namespace MessageEventInit
  
  public export
  JSType MessageEventInit where
    parents =  [ EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.data"
  prim__data_ : AnyPtr -> PrimIO AnyPtr

  export
  data_ : (obj : MessageEventInit) -> JSIO Any
  data_ a =   primToJSIO "data_" $ prim__data_ (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.data  = v}"
  prim__setData : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setData : (obj : MessageEventInit) -> (v : Any) -> JSIO ()
  setData a b =   primToJSIO "setData" $ prim__setData (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.lastEventId"
  prim__lastEventId : AnyPtr -> PrimIO AnyPtr

  export
  lastEventId : (obj : MessageEventInit) -> JSIO String
  lastEventId a =   primToJSIO "lastEventId" $ prim__lastEventId (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.lastEventId  = v}"
  prim__setLastEventId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLastEventId : (obj : MessageEventInit) -> (v : String) -> JSIO ()
  setLastEventId a b =
    primToJSIO "setLastEventId" $ prim__setLastEventId (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.origin"
  prim__origin : AnyPtr -> PrimIO AnyPtr

  export
  origin : (obj : MessageEventInit) -> JSIO String
  origin a =   primToJSIO "origin" $ prim__origin (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.origin  = v}"
  prim__setOrigin : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOrigin : (obj : MessageEventInit) -> (v : String) -> JSIO ()
  setOrigin a b =   primToJSIO "setOrigin" $ prim__setOrigin (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ports"
  prim__ports : AnyPtr -> PrimIO AnyPtr

  export
  ports : (obj : MessageEventInit) -> JSIO (JSArray MessagePort)
  ports a =   primToJSIO "ports" $ prim__ports (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ports  = v}"
  prim__setPorts : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPorts : (obj : MessageEventInit) -> (v : JSArray MessagePort) -> JSIO ()
  setPorts a b =   primToJSIO "setPorts" $ prim__setPorts (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.source"
  prim__source : AnyPtr -> PrimIO AnyPtr

  export
  source : (obj : MessageEventInit) -> JSIO (Maybe MessageEventSource)
  source a =   primToJSIO "source" $ prim__source (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.source  = v}"
  prim__setSource : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSource :  (obj : MessageEventInit)
            -> (v : Maybe MessageEventSource)
            -> JSIO ()
  setSource a b =   primToJSIO "setSource" $ prim__setSource (toJS a) (toJS b)

namespace PageTransitionEventInit
  
  public export
  JSType PageTransitionEventInit where
    parents =  [ EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.persisted"
  prim__persisted : AnyPtr -> PrimIO AnyPtr

  export
  persisted : (obj : PageTransitionEventInit) -> JSIO Bool
  persisted a =   primToJSIO "persisted" $ prim__persisted (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.persisted  = v}"
  prim__setPersisted : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPersisted : (obj : PageTransitionEventInit) -> (v : Bool) -> JSIO ()
  setPersisted a b =
    primToJSIO "setPersisted" $ prim__setPersisted (toJS a) (toJS b)

namespace PopStateEventInit
  
  public export
  JSType PopStateEventInit where
    parents =  [ EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.state"
  prim__state : AnyPtr -> PrimIO AnyPtr

  export
  state : (obj : PopStateEventInit) -> JSIO Any
  state a =   primToJSIO "state" $ prim__state (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.state  = v}"
  prim__setState : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setState : (obj : PopStateEventInit) -> (v : Any) -> JSIO ()
  setState a b =   primToJSIO "setState" $ prim__setState (toJS a) (toJS b)

namespace PostMessageOptions
  
  public export
  JSType PostMessageOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.transfer"
  prim__transfer : AnyPtr -> PrimIO AnyPtr

  export
  transfer : (obj : PostMessageOptions) -> JSIO (JSArray JSObject)
  transfer a =   primToJSIO "transfer" $ prim__transfer (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.transfer  = v}"
  prim__setTransfer : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTransfer : (obj : PostMessageOptions) -> (v : JSArray JSObject) -> JSIO ()
  setTransfer a b =
    primToJSIO "setTransfer" $ prim__setTransfer (toJS a) (toJS b)

namespace PromiseRejectionEventInit
  
  public export
  JSType PromiseRejectionEventInit where
    parents =  [ EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.promise"
  prim__promise : AnyPtr -> PrimIO AnyPtr

  export
  promise : (obj : PromiseRejectionEventInit) -> JSIO (JSPromise Any)
  promise a =   primToJSIO "promise" $ prim__promise (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.promise  = v}"
  prim__setPromise : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPromise :  (obj : PromiseRejectionEventInit)
             -> (v : JSPromise Any)
             -> JSIO ()
  setPromise a b =
    primToJSIO "setPromise" $ prim__setPromise (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.reason"
  prim__reason : AnyPtr -> PrimIO AnyPtr

  export
  reason : (obj : PromiseRejectionEventInit) -> JSIO Any
  reason a =   primToJSIO "reason" $ prim__reason (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.reason  = v}"
  prim__setReason : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReason : (obj : PromiseRejectionEventInit) -> (v : Any) -> JSIO ()
  setReason a b =   primToJSIO "setReason" $ prim__setReason (toJS a) (toJS b)

namespace StorageEventInit
  
  public export
  JSType StorageEventInit where
    parents =  [ EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.key"
  prim__key : AnyPtr -> PrimIO AnyPtr

  export
  key : (obj : StorageEventInit) -> JSIO (Maybe String)
  key a =   primToJSIO "key" $ prim__key (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.key  = v}"
  prim__setKey : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setKey : (obj : StorageEventInit) -> (v : Maybe String) -> JSIO ()
  setKey a b =   primToJSIO "setKey" $ prim__setKey (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.newValue"
  prim__newValue : AnyPtr -> PrimIO AnyPtr

  export
  newValue : (obj : StorageEventInit) -> JSIO (Maybe String)
  newValue a =   primToJSIO "newValue" $ prim__newValue (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.newValue  = v}"
  prim__setNewValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setNewValue : (obj : StorageEventInit) -> (v : Maybe String) -> JSIO ()
  setNewValue a b =
    primToJSIO "setNewValue" $ prim__setNewValue (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.oldValue"
  prim__oldValue : AnyPtr -> PrimIO AnyPtr

  export
  oldValue : (obj : StorageEventInit) -> JSIO (Maybe String)
  oldValue a =   primToJSIO "oldValue" $ prim__oldValue (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.oldValue  = v}"
  prim__setOldValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOldValue : (obj : StorageEventInit) -> (v : Maybe String) -> JSIO ()
  setOldValue a b =
    primToJSIO "setOldValue" $ prim__setOldValue (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.storageArea"
  prim__storageArea : AnyPtr -> PrimIO AnyPtr

  export
  storageArea : (obj : StorageEventInit) -> JSIO (Maybe Storage)
  storageArea a =   primToJSIO "storageArea" $ prim__storageArea (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.storageArea  = v}"
  prim__setStorageArea : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStorageArea : (obj : StorageEventInit) -> (v : Maybe Storage) -> JSIO ()
  setStorageArea a b =
    primToJSIO "setStorageArea" $ prim__setStorageArea (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.url"
  prim__url : AnyPtr -> PrimIO AnyPtr

  export
  url : (obj : StorageEventInit) -> JSIO String
  url a =   primToJSIO "url" $ prim__url (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.url  = v}"
  prim__setUrl : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setUrl : (obj : StorageEventInit) -> (v : String) -> JSIO ()
  setUrl a b =   primToJSIO "setUrl" $ prim__setUrl (toJS a) (toJS b)

namespace SubmitEventInit
  
  public export
  JSType SubmitEventInit where
    parents =  [ EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.submitter"
  prim__submitter : AnyPtr -> PrimIO AnyPtr

  export
  submitter : (obj : SubmitEventInit) -> JSIO (Maybe HTMLElement)
  submitter a =   primToJSIO "submitter" $ prim__submitter (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.submitter  = v}"
  prim__setSubmitter : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSubmitter : (obj : SubmitEventInit) -> (v : Maybe HTMLElement) -> JSIO ()
  setSubmitter a b =
    primToJSIO "setSubmitter" $ prim__setSubmitter (toJS a) (toJS b)

namespace TrackEventInit
  
  public export
  JSType TrackEventInit where
    parents =  [ EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.track"
  prim__track : AnyPtr -> PrimIO AnyPtr

  export
  track :  (obj : TrackEventInit)
        -> JSIO (Maybe (NS I [ VideoTrack , AudioTrack , TextTrack ]))
  track a =   primToJSIO "track" $ prim__track (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.track  = v}"
  prim__setTrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTrack :  (obj : TrackEventInit)
           -> (v : Maybe (NS I [ VideoTrack , AudioTrack , TextTrack ]))
           -> JSIO ()
  setTrack a b =   primToJSIO "setTrack" $ prim__setTrack (toJS a) (toJS b)

namespace ValidityStateFlags
  
  public export
  JSType ValidityStateFlags where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.badInput"
  prim__badInput : AnyPtr -> PrimIO AnyPtr

  export
  badInput : (obj : ValidityStateFlags) -> JSIO Bool
  badInput a =   primToJSIO "badInput" $ prim__badInput (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.badInput  = v}"
  prim__setBadInput : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBadInput : (obj : ValidityStateFlags) -> (v : Bool) -> JSIO ()
  setBadInput a b =
    primToJSIO "setBadInput" $ prim__setBadInput (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.customError"
  prim__customError : AnyPtr -> PrimIO AnyPtr

  export
  customError : (obj : ValidityStateFlags) -> JSIO Bool
  customError a =   primToJSIO "customError" $ prim__customError (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.customError  = v}"
  prim__setCustomError : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCustomError : (obj : ValidityStateFlags) -> (v : Bool) -> JSIO ()
  setCustomError a b =
    primToJSIO "setCustomError" $ prim__setCustomError (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.patternMismatch"
  prim__patternMismatch : AnyPtr -> PrimIO AnyPtr

  export
  patternMismatch : (obj : ValidityStateFlags) -> JSIO Bool
  patternMismatch a =
    primToJSIO "patternMismatch" $ prim__patternMismatch (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.patternMismatch  = v}"
  prim__setPatternMismatch : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPatternMismatch : (obj : ValidityStateFlags) -> (v : Bool) -> JSIO ()
  setPatternMismatch a b =
    primToJSIO "setPatternMismatch" $ prim__setPatternMismatch (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.rangeOverflow"
  prim__rangeOverflow : AnyPtr -> PrimIO AnyPtr

  export
  rangeOverflow : (obj : ValidityStateFlags) -> JSIO Bool
  rangeOverflow a =   primToJSIO "rangeOverflow" $ prim__rangeOverflow (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.rangeOverflow  = v}"
  prim__setRangeOverflow : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRangeOverflow : (obj : ValidityStateFlags) -> (v : Bool) -> JSIO ()
  setRangeOverflow a b =
    primToJSIO "setRangeOverflow" $ prim__setRangeOverflow (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.rangeUnderflow"
  prim__rangeUnderflow : AnyPtr -> PrimIO AnyPtr

  export
  rangeUnderflow : (obj : ValidityStateFlags) -> JSIO Bool
  rangeUnderflow a =
    primToJSIO "rangeUnderflow" $ prim__rangeUnderflow (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.rangeUnderflow  = v}"
  prim__setRangeUnderflow : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRangeUnderflow : (obj : ValidityStateFlags) -> (v : Bool) -> JSIO ()
  setRangeUnderflow a b =
    primToJSIO "setRangeUnderflow" $ prim__setRangeUnderflow (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.stepMismatch"
  prim__stepMismatch : AnyPtr -> PrimIO AnyPtr

  export
  stepMismatch : (obj : ValidityStateFlags) -> JSIO Bool
  stepMismatch a =   primToJSIO "stepMismatch" $ prim__stepMismatch (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.stepMismatch  = v}"
  prim__setStepMismatch : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStepMismatch : (obj : ValidityStateFlags) -> (v : Bool) -> JSIO ()
  setStepMismatch a b =
    primToJSIO "setStepMismatch" $ prim__setStepMismatch (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.tooLong"
  prim__tooLong : AnyPtr -> PrimIO AnyPtr

  export
  tooLong : (obj : ValidityStateFlags) -> JSIO Bool
  tooLong a =   primToJSIO "tooLong" $ prim__tooLong (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.tooLong  = v}"
  prim__setTooLong : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTooLong : (obj : ValidityStateFlags) -> (v : Bool) -> JSIO ()
  setTooLong a b =
    primToJSIO "setTooLong" $ prim__setTooLong (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.tooShort"
  prim__tooShort : AnyPtr -> PrimIO AnyPtr

  export
  tooShort : (obj : ValidityStateFlags) -> JSIO Bool
  tooShort a =   primToJSIO "tooShort" $ prim__tooShort (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.tooShort  = v}"
  prim__setTooShort : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTooShort : (obj : ValidityStateFlags) -> (v : Bool) -> JSIO ()
  setTooShort a b =
    primToJSIO "setTooShort" $ prim__setTooShort (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.typeMismatch"
  prim__typeMismatch : AnyPtr -> PrimIO AnyPtr

  export
  typeMismatch : (obj : ValidityStateFlags) -> JSIO Bool
  typeMismatch a =   primToJSIO "typeMismatch" $ prim__typeMismatch (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.typeMismatch  = v}"
  prim__setTypeMismatch : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTypeMismatch : (obj : ValidityStateFlags) -> (v : Bool) -> JSIO ()
  setTypeMismatch a b =
    primToJSIO "setTypeMismatch" $ prim__setTypeMismatch (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.valueMissing"
  prim__valueMissing : AnyPtr -> PrimIO AnyPtr

  export
  valueMissing : (obj : ValidityStateFlags) -> JSIO Bool
  valueMissing a =   primToJSIO "valueMissing" $ prim__valueMissing (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.valueMissing  = v}"
  prim__setValueMissing : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValueMissing : (obj : ValidityStateFlags) -> (v : Bool) -> JSIO ()
  setValueMissing a b =
    primToJSIO "setValueMissing" $ prim__setValueMissing (toJS a) (toJS b)

namespace WindowPostMessageOptions
  
  public export
  JSType WindowPostMessageOptions where
    parents =  [ PostMessageOptions , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.targetOrigin"
  prim__targetOrigin : AnyPtr -> PrimIO AnyPtr

  export
  targetOrigin : (obj : WindowPostMessageOptions) -> JSIO String
  targetOrigin a =   primToJSIO "targetOrigin" $ prim__targetOrigin (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.targetOrigin  = v}"
  prim__setTargetOrigin : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTargetOrigin : (obj : WindowPostMessageOptions) -> (v : String) -> JSIO ()
  setTargetOrigin a b =
    primToJSIO "setTargetOrigin" $ prim__setTargetOrigin (toJS a) (toJS b)

namespace WorkerOptions
  
  public export
  JSType WorkerOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.credentials"
  prim__credentials : AnyPtr -> PrimIO AnyPtr

  export
  credentials : (obj : WorkerOptions) -> JSIO RequestCredentials
  credentials a =   primToJSIO "credentials" $ prim__credentials (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.credentials  = v}"
  prim__setCredentials : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCredentials : (obj : WorkerOptions) -> (v : RequestCredentials) -> JSIO ()
  setCredentials a b =
    primToJSIO "setCredentials" $ prim__setCredentials (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : WorkerOptions) -> JSIO String
  name a =   primToJSIO "name" $ prim__name (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : WorkerOptions) -> (v : String) -> JSIO ()
  setName a b =   primToJSIO "setName" $ prim__setName (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : WorkerOptions) -> JSIO WorkerType
  type a =   primToJSIO "type" $ prim__type (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : WorkerOptions) -> (v : WorkerType) -> JSIO ()
  setType a b =   primToJSIO "setType" $ prim__setType (toJS a) (toJS b)

namespace WorkletOptions
  
  public export
  JSType WorkletOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.credentials"
  prim__credentials : AnyPtr -> PrimIO AnyPtr

  export
  credentials : (obj : WorkletOptions) -> JSIO RequestCredentials
  credentials a =   primToJSIO "credentials" $ prim__credentials (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.credentials  = v}"
  prim__setCredentials : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCredentials : (obj : WorkletOptions) -> (v : RequestCredentials) -> JSIO ()
  setCredentials a b =
    primToJSIO "setCredentials" $ prim__setCredentials (toJS a) (toJS b)

