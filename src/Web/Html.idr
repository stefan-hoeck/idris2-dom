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
  
  %foreign "browser:lambda:x=>x.kind"
  prim__kind : AnyPtr -> PrimIO AnyPtr

  export
  kind : (obj : AudioTrack) -> JSIO String
  
  %foreign "browser:lambda:x=>x.label"
  prim__label : AnyPtr -> PrimIO AnyPtr

  export
  label : (obj : AudioTrack) -> JSIO String
  
  %foreign "browser:lambda:x=>x.language"
  prim__language : AnyPtr -> PrimIO AnyPtr

  export
  language : (obj : AudioTrack) -> JSIO String
  
  %foreign "browser:lambda:x=>x.sourceBuffer"
  prim__sourceBuffer : AnyPtr -> PrimIO AnyPtr

  export
  sourceBuffer : (obj : AudioTrack) -> JSIO (Maybe SourceBuffer)
  
  %foreign "browser:lambda:x=>x.enabled"
  prim__enabled : AnyPtr -> PrimIO AnyPtr

  export
  enabled : (obj : AudioTrack) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.enabled  = v}"
  prim__setEnabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEnabled : (obj : AudioTrack) -> (v : Bool) -> JSIO ()

namespace AudioTrackList
  
  public export
  JSType AudioTrackList where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : AudioTrackList) -> JSIO UInt32
  
  %foreign "browser:lambda:x=>x.onaddtrack"
  prim__onaddtrack : AnyPtr -> PrimIO AnyPtr

  export
  onaddtrack : (obj : AudioTrackList) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onaddtrack  = v}"
  prim__setOnaddtrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnaddtrack : (obj : AudioTrackList) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onchange"
  prim__onchange : AnyPtr -> PrimIO AnyPtr

  export
  onchange : (obj : AudioTrackList) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onchange  = v}"
  prim__setOnchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnchange : (obj : AudioTrackList) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onremovetrack"
  prim__onremovetrack : AnyPtr -> PrimIO AnyPtr

  export
  onremovetrack : (obj : AudioTrackList) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onremovetrack  = v}"
  prim__setOnremovetrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnremovetrack : (obj : AudioTrackList) -> (v : EventHandler) -> JSIO ()

namespace BarProp
  
  public export
  JSType BarProp where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.visible"
  prim__visible : AnyPtr -> PrimIO AnyPtr

  export
  visible : (obj : BarProp) -> JSIO Bool

namespace BeforeUnloadEvent
  
  public export
  JSType BeforeUnloadEvent where
    parents =  [ Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.returnValue"
  prim__returnValue : AnyPtr -> PrimIO AnyPtr

  export
  returnValue : (obj : BeforeUnloadEvent) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.returnValue  = v}"
  prim__setReturnValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReturnValue : (obj : BeforeUnloadEvent) -> (v : String) -> JSIO ()

namespace BroadcastChannel
  
  public export
  JSType BroadcastChannel where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : BroadcastChannel) -> JSIO String
  
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : AnyPtr -> PrimIO AnyPtr

  export
  onmessage : (obj : BroadcastChannel) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onmessage  = v}"
  prim__setOnmessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmessage : (obj : BroadcastChannel) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onmessageerror"
  prim__onmessageerror : AnyPtr -> PrimIO AnyPtr

  export
  onmessageerror : (obj : BroadcastChannel) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onmessageerror  = v}"
  prim__setOnmessageerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmessageerror : (obj : BroadcastChannel) -> (v : EventHandler) -> JSIO ()

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

namespace CloseEvent
  
  public export
  JSType CloseEvent where
    parents =  [ Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.code"
  prim__code : AnyPtr -> PrimIO AnyPtr

  export
  code : (obj : CloseEvent) -> JSIO UInt16
  
  %foreign "browser:lambda:x=>x.reason"
  prim__reason : AnyPtr -> PrimIO AnyPtr

  export
  reason : (obj : CloseEvent) -> JSIO String
  
  %foreign "browser:lambda:x=>x.wasClean"
  prim__wasClean : AnyPtr -> PrimIO AnyPtr

  export
  wasClean : (obj : CloseEvent) -> JSIO Bool

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
  
  %foreign "browser:lambda:x=>x.items"
  prim__items : AnyPtr -> PrimIO AnyPtr

  export
  items : (obj : DataTransfer) -> JSIO DataTransferItemList
  
  %foreign "browser:lambda:x=>x.types"
  prim__types : AnyPtr -> PrimIO AnyPtr

  export
  types : (obj : DataTransfer) -> JSIO (JSArray String)
  
  %foreign "browser:lambda:x=>x.dropEffect"
  prim__dropEffect : AnyPtr -> PrimIO AnyPtr

  export
  dropEffect : (obj : DataTransfer) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.dropEffect  = v}"
  prim__setDropEffect : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDropEffect : (obj : DataTransfer) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.effectAllowed"
  prim__effectAllowed : AnyPtr -> PrimIO AnyPtr

  export
  effectAllowed : (obj : DataTransfer) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.effectAllowed  = v}"
  prim__setEffectAllowed : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEffectAllowed : (obj : DataTransfer) -> (v : String) -> JSIO ()

namespace DataTransferItem
  
  public export
  JSType DataTransferItem where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.kind"
  prim__kind : AnyPtr -> PrimIO AnyPtr

  export
  kind : (obj : DataTransferItem) -> JSIO String
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : DataTransferItem) -> JSIO String

namespace DataTransferItemList
  
  public export
  JSType DataTransferItemList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : DataTransferItemList) -> JSIO UInt32

namespace DedicatedWorkerGlobalScope
  
  public export
  JSType DedicatedWorkerGlobalScope where
    parents =  [ WorkerGlobalScope , EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : DedicatedWorkerGlobalScope) -> JSIO String
  
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : AnyPtr -> PrimIO AnyPtr

  export
  onmessage : (obj : DedicatedWorkerGlobalScope) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onmessage  = v}"
  prim__setOnmessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmessage :  (obj : DedicatedWorkerGlobalScope)
               -> (v : EventHandler)
               -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onmessageerror"
  prim__onmessageerror : AnyPtr -> PrimIO AnyPtr

  export
  onmessageerror : (obj : DedicatedWorkerGlobalScope) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onmessageerror  = v}"
  prim__setOnmessageerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmessageerror :  (obj : DedicatedWorkerGlobalScope)
                    -> (v : EventHandler)
                    -> JSIO ()

namespace DragEvent
  
  public export
  JSType DragEvent where
    parents =  [ MouseEvent , UIEvent , Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.dataTransfer"
  prim__dataTransfer : AnyPtr -> PrimIO AnyPtr

  export
  dataTransfer : (obj : DragEvent) -> JSIO (Maybe DataTransfer)

namespace ElementInternals
  
  public export
  JSType ElementInternals where
    parents =  [ JSObject ]

    mixins =  [ ARIAMixin ]
  
  %foreign "browser:lambda:x=>x.form"
  prim__form : AnyPtr -> PrimIO AnyPtr

  export
  form : (obj : ElementInternals) -> JSIO (Maybe HTMLFormElement)
  
  %foreign "browser:lambda:x=>x.labels"
  prim__labels : AnyPtr -> PrimIO AnyPtr

  export
  labels : (obj : ElementInternals) -> JSIO NodeList
  
  %foreign "browser:lambda:x=>x.shadowRoot"
  prim__shadowRoot : AnyPtr -> PrimIO AnyPtr

  export
  shadowRoot : (obj : ElementInternals) -> JSIO (Maybe ShadowRoot)
  
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : AnyPtr -> PrimIO AnyPtr

  export
  validationMessage : (obj : ElementInternals) -> JSIO String
  
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : AnyPtr -> PrimIO AnyPtr

  export
  validity : (obj : ElementInternals) -> JSIO ValidityState
  
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : AnyPtr -> PrimIO AnyPtr

  export
  willValidate : (obj : ElementInternals) -> JSIO Bool

namespace ErrorEvent
  
  public export
  JSType ErrorEvent where
    parents =  [ Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.colno"
  prim__colno : AnyPtr -> PrimIO AnyPtr

  export
  colno : (obj : ErrorEvent) -> JSIO UInt32
  
  %foreign "browser:lambda:x=>x.error"
  prim__error : AnyPtr -> PrimIO AnyPtr

  export
  error : (obj : ErrorEvent) -> JSIO Any
  
  %foreign "browser:lambda:x=>x.filename"
  prim__filename : AnyPtr -> PrimIO AnyPtr

  export
  filename : (obj : ErrorEvent) -> JSIO String
  
  %foreign "browser:lambda:x=>x.lineno"
  prim__lineno : AnyPtr -> PrimIO AnyPtr

  export
  lineno : (obj : ErrorEvent) -> JSIO UInt32
  
  %foreign "browser:lambda:x=>x.message"
  prim__message : AnyPtr -> PrimIO AnyPtr

  export
  message : (obj : ErrorEvent) -> JSIO String

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
  
  %foreign "browser:lambda:x=>x.url"
  prim__url : AnyPtr -> PrimIO AnyPtr

  export
  url : (obj : EventSource) -> JSIO String
  
  %foreign "browser:lambda:x=>x.withCredentials"
  prim__withCredentials : AnyPtr -> PrimIO AnyPtr

  export
  withCredentials : (obj : EventSource) -> JSIO Bool
  
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : AnyPtr -> PrimIO AnyPtr

  export
  onerror : (obj : EventSource) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onerror  = v}"
  prim__setOnerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnerror : (obj : EventSource) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : AnyPtr -> PrimIO AnyPtr

  export
  onmessage : (obj : EventSource) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onmessage  = v}"
  prim__setOnmessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmessage : (obj : EventSource) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onopen"
  prim__onopen : AnyPtr -> PrimIO AnyPtr

  export
  onopen : (obj : EventSource) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onopen  = v}"
  prim__setOnopen : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnopen : (obj : EventSource) -> (v : EventHandler) -> JSIO ()

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

namespace HTMLAllCollection
  
  public export
  JSType HTMLAllCollection where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : HTMLAllCollection) -> JSIO UInt32

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
  
  %foreign "browser:lambda:x=>x.charset"
  prim__charset : AnyPtr -> PrimIO AnyPtr

  export
  charset : (obj : HTMLAnchorElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.charset  = v}"
  prim__setCharset : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCharset : (obj : HTMLAnchorElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.coords"
  prim__coords : AnyPtr -> PrimIO AnyPtr

  export
  coords : (obj : HTMLAnchorElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.coords  = v}"
  prim__setCoords : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCoords : (obj : HTMLAnchorElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.download"
  prim__download : AnyPtr -> PrimIO AnyPtr

  export
  download : (obj : HTMLAnchorElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.download  = v}"
  prim__setDownload : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDownload : (obj : HTMLAnchorElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.hreflang"
  prim__hreflang : AnyPtr -> PrimIO AnyPtr

  export
  hreflang : (obj : HTMLAnchorElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.hreflang  = v}"
  prim__setHreflang : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHreflang : (obj : HTMLAnchorElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : HTMLAnchorElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : HTMLAnchorElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ping"
  prim__ping : AnyPtr -> PrimIO AnyPtr

  export
  ping : (obj : HTMLAnchorElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ping  = v}"
  prim__setPing : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPing : (obj : HTMLAnchorElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : AnyPtr -> PrimIO AnyPtr

  export
  referrerPolicy : (obj : HTMLAnchorElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy  = v}"
  prim__setReferrerPolicy : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReferrerPolicy : (obj : HTMLAnchorElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.rel"
  prim__rel : AnyPtr -> PrimIO AnyPtr

  export
  rel : (obj : HTMLAnchorElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.rel  = v}"
  prim__setRel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRel : (obj : HTMLAnchorElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.rev"
  prim__rev : AnyPtr -> PrimIO AnyPtr

  export
  rev : (obj : HTMLAnchorElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.rev  = v}"
  prim__setRev : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRev : (obj : HTMLAnchorElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.shape"
  prim__shape : AnyPtr -> PrimIO AnyPtr

  export
  shape : (obj : HTMLAnchorElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.shape  = v}"
  prim__setShape : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setShape : (obj : HTMLAnchorElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr

  export
  target : (obj : HTMLAnchorElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.target  = v}"
  prim__setTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTarget : (obj : HTMLAnchorElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.text"
  prim__text : AnyPtr -> PrimIO AnyPtr

  export
  text : (obj : HTMLAnchorElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.text  = v}"
  prim__setText : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setText : (obj : HTMLAnchorElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : HTMLAnchorElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : HTMLAnchorElement) -> (v : String) -> JSIO ()

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
  
  %foreign "browser:lambda:x=>x.alt"
  prim__alt : AnyPtr -> PrimIO AnyPtr

  export
  alt : (obj : HTMLAreaElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.alt  = v}"
  prim__setAlt : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlt : (obj : HTMLAreaElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.coords"
  prim__coords : AnyPtr -> PrimIO AnyPtr

  export
  coords : (obj : HTMLAreaElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.coords  = v}"
  prim__setCoords : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCoords : (obj : HTMLAreaElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.download"
  prim__download : AnyPtr -> PrimIO AnyPtr

  export
  download : (obj : HTMLAreaElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.download  = v}"
  prim__setDownload : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDownload : (obj : HTMLAreaElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.noHref"
  prim__noHref : AnyPtr -> PrimIO AnyPtr

  export
  noHref : (obj : HTMLAreaElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.noHref  = v}"
  prim__setNoHref : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setNoHref : (obj : HTMLAreaElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ping"
  prim__ping : AnyPtr -> PrimIO AnyPtr

  export
  ping : (obj : HTMLAreaElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ping  = v}"
  prim__setPing : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPing : (obj : HTMLAreaElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : AnyPtr -> PrimIO AnyPtr

  export
  referrerPolicy : (obj : HTMLAreaElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy  = v}"
  prim__setReferrerPolicy : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReferrerPolicy : (obj : HTMLAreaElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.rel"
  prim__rel : AnyPtr -> PrimIO AnyPtr

  export
  rel : (obj : HTMLAreaElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.rel  = v}"
  prim__setRel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRel : (obj : HTMLAreaElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.shape"
  prim__shape : AnyPtr -> PrimIO AnyPtr

  export
  shape : (obj : HTMLAreaElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.shape  = v}"
  prim__setShape : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setShape : (obj : HTMLAreaElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr

  export
  target : (obj : HTMLAreaElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.target  = v}"
  prim__setTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTarget : (obj : HTMLAreaElement) -> (v : String) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.clear  = v}"
  prim__setClear : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setClear : (obj : HTMLBRElement) -> (v : String) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.href  = v}"
  prim__setHref : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHref : (obj : HTMLBaseElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr

  export
  target : (obj : HTMLBaseElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.target  = v}"
  prim__setTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTarget : (obj : HTMLBaseElement) -> (v : String) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.aLink  = v}"
  prim__setALink : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setALink : (obj : HTMLBodyElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.background"
  prim__background : AnyPtr -> PrimIO AnyPtr

  export
  background : (obj : HTMLBodyElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.background  = v}"
  prim__setBackground : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBackground : (obj : HTMLBodyElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.bgColor"
  prim__bgColor : AnyPtr -> PrimIO AnyPtr

  export
  bgColor : (obj : HTMLBodyElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.bgColor  = v}"
  prim__setBgColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBgColor : (obj : HTMLBodyElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.link"
  prim__link : AnyPtr -> PrimIO AnyPtr

  export
  link : (obj : HTMLBodyElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.link  = v}"
  prim__setLink : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLink : (obj : HTMLBodyElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.text"
  prim__text : AnyPtr -> PrimIO AnyPtr

  export
  text : (obj : HTMLBodyElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.text  = v}"
  prim__setText : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setText : (obj : HTMLBodyElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.vLink"
  prim__vLink : AnyPtr -> PrimIO AnyPtr

  export
  vLink : (obj : HTMLBodyElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.vLink  = v}"
  prim__setVLink : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setVLink : (obj : HTMLBodyElement) -> (v : String) -> JSIO ()

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
  
  %foreign "browser:lambda:x=>x.labels"
  prim__labels : AnyPtr -> PrimIO AnyPtr

  export
  labels : (obj : HTMLButtonElement) -> JSIO NodeList
  
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : AnyPtr -> PrimIO AnyPtr

  export
  validationMessage : (obj : HTMLButtonElement) -> JSIO String
  
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : AnyPtr -> PrimIO AnyPtr

  export
  validity : (obj : HTMLButtonElement) -> JSIO ValidityState
  
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : AnyPtr -> PrimIO AnyPtr

  export
  willValidate : (obj : HTMLButtonElement) -> JSIO Bool
  
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : AnyPtr -> PrimIO AnyPtr

  export
  disabled : (obj : HTMLButtonElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.disabled  = v}"
  prim__setDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDisabled : (obj : HTMLButtonElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.formAction"
  prim__formAction : AnyPtr -> PrimIO AnyPtr

  export
  formAction : (obj : HTMLButtonElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.formAction  = v}"
  prim__setFormAction : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFormAction : (obj : HTMLButtonElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.formEnctype"
  prim__formEnctype : AnyPtr -> PrimIO AnyPtr

  export
  formEnctype : (obj : HTMLButtonElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.formEnctype  = v}"
  prim__setFormEnctype : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFormEnctype : (obj : HTMLButtonElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.formMethod"
  prim__formMethod : AnyPtr -> PrimIO AnyPtr

  export
  formMethod : (obj : HTMLButtonElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.formMethod  = v}"
  prim__setFormMethod : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFormMethod : (obj : HTMLButtonElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.formNoValidate"
  prim__formNoValidate : AnyPtr -> PrimIO AnyPtr

  export
  formNoValidate : (obj : HTMLButtonElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.formNoValidate  = v}"
  prim__setFormNoValidate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFormNoValidate : (obj : HTMLButtonElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.formTarget"
  prim__formTarget : AnyPtr -> PrimIO AnyPtr

  export
  formTarget : (obj : HTMLButtonElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.formTarget  = v}"
  prim__setFormTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFormTarget : (obj : HTMLButtonElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : HTMLButtonElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : HTMLButtonElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : HTMLButtonElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : HTMLButtonElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : HTMLButtonElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue : (obj : HTMLButtonElement) -> (v : String) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.height  = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeight : (obj : HTMLCanvasElement) -> (v : UInt32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : HTMLCanvasElement) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : HTMLCanvasElement) -> (v : UInt32) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.compact  = v}"
  prim__setCompact : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCompact : (obj : HTMLDListElement) -> (v : Bool) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue : (obj : HTMLDataElement) -> (v : String) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.open  = v}"
  prim__setOpen : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOpen : (obj : HTMLDetailsElement) -> (v : Bool) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.open  = v}"
  prim__setOpen : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOpen : (obj : HTMLDialogElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.returnValue"
  prim__returnValue : AnyPtr -> PrimIO AnyPtr

  export
  returnValue : (obj : HTMLDialogElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.returnValue  = v}"
  prim__setReturnValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReturnValue : (obj : HTMLDialogElement) -> (v : String) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.compact  = v}"
  prim__setCompact : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCompact : (obj : HTMLDirectoryElement) -> (v : Bool) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.align  = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlign : (obj : HTMLDivElement) -> (v : String) -> JSIO ()

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
  
  %foreign "browser:lambda:x=>x.accessKey"
  prim__accessKey : AnyPtr -> PrimIO AnyPtr

  export
  accessKey : (obj : HTMLElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.accessKey  = v}"
  prim__setAccessKey : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAccessKey : (obj : HTMLElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.autocapitalize"
  prim__autocapitalize : AnyPtr -> PrimIO AnyPtr

  export
  autocapitalize : (obj : HTMLElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.autocapitalize  = v}"
  prim__setAutocapitalize : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAutocapitalize : (obj : HTMLElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.dir"
  prim__dir : AnyPtr -> PrimIO AnyPtr

  export
  dir : (obj : HTMLElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.dir  = v}"
  prim__setDir : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDir : (obj : HTMLElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.draggable"
  prim__draggable : AnyPtr -> PrimIO AnyPtr

  export
  draggable : (obj : HTMLElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.draggable  = v}"
  prim__setDraggable : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDraggable : (obj : HTMLElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.hidden"
  prim__hidden : AnyPtr -> PrimIO AnyPtr

  export
  hidden : (obj : HTMLElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.hidden  = v}"
  prim__setHidden : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHidden : (obj : HTMLElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.innerText"
  prim__innerText : AnyPtr -> PrimIO AnyPtr

  export
  innerText : (obj : HTMLElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.innerText  = v}"
  prim__setInnerText : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setInnerText : (obj : HTMLElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.lang"
  prim__lang : AnyPtr -> PrimIO AnyPtr

  export
  lang : (obj : HTMLElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.lang  = v}"
  prim__setLang : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLang : (obj : HTMLElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.spellcheck"
  prim__spellcheck : AnyPtr -> PrimIO AnyPtr

  export
  spellcheck : (obj : HTMLElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.spellcheck  = v}"
  prim__setSpellcheck : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSpellcheck : (obj : HTMLElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.title"
  prim__title : AnyPtr -> PrimIO AnyPtr

  export
  title : (obj : HTMLElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.title  = v}"
  prim__setTitle : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTitle : (obj : HTMLElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.translate"
  prim__translate : AnyPtr -> PrimIO AnyPtr

  export
  translate : (obj : HTMLElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.translate  = v}"
  prim__setTranslate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTranslate : (obj : HTMLElement) -> (v : Bool) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.align  = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlign : (obj : HTMLEmbedElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : HTMLEmbedElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.height  = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeight : (obj : HTMLEmbedElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : HTMLEmbedElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : HTMLEmbedElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.src"
  prim__src : AnyPtr -> PrimIO AnyPtr

  export
  src : (obj : HTMLEmbedElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.src  = v}"
  prim__setSrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSrc : (obj : HTMLEmbedElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : HTMLEmbedElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : HTMLEmbedElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : HTMLEmbedElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : HTMLEmbedElement) -> (v : String) -> JSIO ()

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
  
  %foreign "browser:lambda:x=>x.form"
  prim__form : AnyPtr -> PrimIO AnyPtr

  export
  form : (obj : HTMLFieldSetElement) -> JSIO (Maybe HTMLFormElement)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : HTMLFieldSetElement) -> JSIO String
  
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : AnyPtr -> PrimIO AnyPtr

  export
  validationMessage : (obj : HTMLFieldSetElement) -> JSIO String
  
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : AnyPtr -> PrimIO AnyPtr

  export
  validity : (obj : HTMLFieldSetElement) -> JSIO ValidityState
  
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : AnyPtr -> PrimIO AnyPtr

  export
  willValidate : (obj : HTMLFieldSetElement) -> JSIO Bool
  
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : AnyPtr -> PrimIO AnyPtr

  export
  disabled : (obj : HTMLFieldSetElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.disabled  = v}"
  prim__setDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDisabled : (obj : HTMLFieldSetElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : HTMLFieldSetElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : HTMLFieldSetElement) -> (v : String) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.color  = v}"
  prim__setColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setColor : (obj : HTMLFontElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.face"
  prim__face : AnyPtr -> PrimIO AnyPtr

  export
  face : (obj : HTMLFontElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.face  = v}"
  prim__setFace : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFace : (obj : HTMLFontElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.size"
  prim__size : AnyPtr -> PrimIO AnyPtr

  export
  size : (obj : HTMLFontElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.size  = v}"
  prim__setSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSize : (obj : HTMLFontElement) -> (v : String) -> JSIO ()

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
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : HTMLFormElement) -> JSIO UInt32
  
  %foreign "browser:lambda:x=>x.relList"
  prim__relList : AnyPtr -> PrimIO AnyPtr

  export
  relList : (obj : HTMLFormElement) -> JSIO DOMTokenList
  
  %foreign "browser:lambda:x=>x.acceptCharset"
  prim__acceptCharset : AnyPtr -> PrimIO AnyPtr

  export
  acceptCharset : (obj : HTMLFormElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.acceptCharset  = v}"
  prim__setAcceptCharset : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAcceptCharset : (obj : HTMLFormElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.action"
  prim__action : AnyPtr -> PrimIO AnyPtr

  export
  action : (obj : HTMLFormElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.action  = v}"
  prim__setAction : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAction : (obj : HTMLFormElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.autocomplete"
  prim__autocomplete : AnyPtr -> PrimIO AnyPtr

  export
  autocomplete : (obj : HTMLFormElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.autocomplete  = v}"
  prim__setAutocomplete : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAutocomplete : (obj : HTMLFormElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.encoding"
  prim__encoding : AnyPtr -> PrimIO AnyPtr

  export
  encoding : (obj : HTMLFormElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.encoding  = v}"
  prim__setEncoding : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEncoding : (obj : HTMLFormElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.enctype"
  prim__enctype : AnyPtr -> PrimIO AnyPtr

  export
  enctype : (obj : HTMLFormElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.enctype  = v}"
  prim__setEnctype : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEnctype : (obj : HTMLFormElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.method"
  prim__method : AnyPtr -> PrimIO AnyPtr

  export
  method : (obj : HTMLFormElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.method  = v}"
  prim__setMethod : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMethod : (obj : HTMLFormElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : HTMLFormElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : HTMLFormElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.noValidate"
  prim__noValidate : AnyPtr -> PrimIO AnyPtr

  export
  noValidate : (obj : HTMLFormElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.noValidate  = v}"
  prim__setNoValidate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setNoValidate : (obj : HTMLFormElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.rel"
  prim__rel : AnyPtr -> PrimIO AnyPtr

  export
  rel : (obj : HTMLFormElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.rel  = v}"
  prim__setRel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRel : (obj : HTMLFormElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr

  export
  target : (obj : HTMLFormElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.target  = v}"
  prim__setTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTarget : (obj : HTMLFormElement) -> (v : String) -> JSIO ()

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
  
  %foreign "browser:lambda:x=>x.contentWindow"
  prim__contentWindow : AnyPtr -> PrimIO AnyPtr

  export
  contentWindow : (obj : HTMLFrameElement) -> JSIO (Maybe WindowProxy)
  
  %foreign "browser:lambda:x=>x.frameBorder"
  prim__frameBorder : AnyPtr -> PrimIO AnyPtr

  export
  frameBorder : (obj : HTMLFrameElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.frameBorder  = v}"
  prim__setFrameBorder : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFrameBorder : (obj : HTMLFrameElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.longDesc"
  prim__longDesc : AnyPtr -> PrimIO AnyPtr

  export
  longDesc : (obj : HTMLFrameElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.longDesc  = v}"
  prim__setLongDesc : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLongDesc : (obj : HTMLFrameElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.marginHeight"
  prim__marginHeight : AnyPtr -> PrimIO AnyPtr

  export
  marginHeight : (obj : HTMLFrameElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.marginHeight  = v}"
  prim__setMarginHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMarginHeight : (obj : HTMLFrameElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.marginWidth"
  prim__marginWidth : AnyPtr -> PrimIO AnyPtr

  export
  marginWidth : (obj : HTMLFrameElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.marginWidth  = v}"
  prim__setMarginWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMarginWidth : (obj : HTMLFrameElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : HTMLFrameElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : HTMLFrameElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.noResize"
  prim__noResize : AnyPtr -> PrimIO AnyPtr

  export
  noResize : (obj : HTMLFrameElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.noResize  = v}"
  prim__setNoResize : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setNoResize : (obj : HTMLFrameElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.scrolling"
  prim__scrolling : AnyPtr -> PrimIO AnyPtr

  export
  scrolling : (obj : HTMLFrameElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.scrolling  = v}"
  prim__setScrolling : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setScrolling : (obj : HTMLFrameElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.src"
  prim__src : AnyPtr -> PrimIO AnyPtr

  export
  src : (obj : HTMLFrameElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.src  = v}"
  prim__setSrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSrc : (obj : HTMLFrameElement) -> (v : String) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.cols  = v}"
  prim__setCols : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCols : (obj : HTMLFrameSetElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.rows"
  prim__rows : AnyPtr -> PrimIO AnyPtr

  export
  rows : (obj : HTMLFrameSetElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.rows  = v}"
  prim__setRows : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRows : (obj : HTMLFrameSetElement) -> (v : String) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.align  = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlign : (obj : HTMLHRElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.color"
  prim__color : AnyPtr -> PrimIO AnyPtr

  export
  color : (obj : HTMLHRElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.color  = v}"
  prim__setColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setColor : (obj : HTMLHRElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.noShade"
  prim__noShade : AnyPtr -> PrimIO AnyPtr

  export
  noShade : (obj : HTMLHRElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.noShade  = v}"
  prim__setNoShade : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setNoShade : (obj : HTMLHRElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.size"
  prim__size : AnyPtr -> PrimIO AnyPtr

  export
  size : (obj : HTMLHRElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.size  = v}"
  prim__setSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSize : (obj : HTMLHRElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : HTMLHRElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : HTMLHRElement) -> (v : String) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.align  = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlign : (obj : HTMLHeadingElement) -> (v : String) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.version  = v}"
  prim__setVersion : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setVersion : (obj : HTMLHtmlElement) -> (v : String) -> JSIO ()

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
  
  %foreign "browser:lambda:x=>x.contentWindow"
  prim__contentWindow : AnyPtr -> PrimIO AnyPtr

  export
  contentWindow : (obj : HTMLIFrameElement) -> JSIO (Maybe WindowProxy)
  
  %foreign "browser:lambda:x=>x.sandbox"
  prim__sandbox : AnyPtr -> PrimIO AnyPtr

  export
  sandbox : (obj : HTMLIFrameElement) -> JSIO DOMTokenList
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  export
  align : (obj : HTMLIFrameElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.align  = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlign : (obj : HTMLIFrameElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.allow"
  prim__allow : AnyPtr -> PrimIO AnyPtr

  export
  allow : (obj : HTMLIFrameElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.allow  = v}"
  prim__setAllow : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAllow : (obj : HTMLIFrameElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.allowFullscreen"
  prim__allowFullscreen : AnyPtr -> PrimIO AnyPtr

  export
  allowFullscreen : (obj : HTMLIFrameElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.allowFullscreen  = v}"
  prim__setAllowFullscreen : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAllowFullscreen : (obj : HTMLIFrameElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.frameBorder"
  prim__frameBorder : AnyPtr -> PrimIO AnyPtr

  export
  frameBorder : (obj : HTMLIFrameElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.frameBorder  = v}"
  prim__setFrameBorder : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFrameBorder : (obj : HTMLIFrameElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : HTMLIFrameElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.height  = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeight : (obj : HTMLIFrameElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.loading"
  prim__loading : AnyPtr -> PrimIO AnyPtr

  export
  loading : (obj : HTMLIFrameElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.loading  = v}"
  prim__setLoading : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLoading : (obj : HTMLIFrameElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.longDesc"
  prim__longDesc : AnyPtr -> PrimIO AnyPtr

  export
  longDesc : (obj : HTMLIFrameElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.longDesc  = v}"
  prim__setLongDesc : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLongDesc : (obj : HTMLIFrameElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.marginHeight"
  prim__marginHeight : AnyPtr -> PrimIO AnyPtr

  export
  marginHeight : (obj : HTMLIFrameElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.marginHeight  = v}"
  prim__setMarginHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMarginHeight : (obj : HTMLIFrameElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.marginWidth"
  prim__marginWidth : AnyPtr -> PrimIO AnyPtr

  export
  marginWidth : (obj : HTMLIFrameElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.marginWidth  = v}"
  prim__setMarginWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMarginWidth : (obj : HTMLIFrameElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : HTMLIFrameElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : HTMLIFrameElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : AnyPtr -> PrimIO AnyPtr

  export
  referrerPolicy : (obj : HTMLIFrameElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy  = v}"
  prim__setReferrerPolicy : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReferrerPolicy : (obj : HTMLIFrameElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.scrolling"
  prim__scrolling : AnyPtr -> PrimIO AnyPtr

  export
  scrolling : (obj : HTMLIFrameElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.scrolling  = v}"
  prim__setScrolling : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setScrolling : (obj : HTMLIFrameElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.src"
  prim__src : AnyPtr -> PrimIO AnyPtr

  export
  src : (obj : HTMLIFrameElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.src  = v}"
  prim__setSrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSrc : (obj : HTMLIFrameElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.srcdoc"
  prim__srcdoc : AnyPtr -> PrimIO AnyPtr

  export
  srcdoc : (obj : HTMLIFrameElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.srcdoc  = v}"
  prim__setSrcdoc : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSrcdoc : (obj : HTMLIFrameElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : HTMLIFrameElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : HTMLIFrameElement) -> (v : String) -> JSIO ()

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
  
  %foreign "browser:lambda:x=>x.currentSrc"
  prim__currentSrc : AnyPtr -> PrimIO AnyPtr

  export
  currentSrc : (obj : HTMLImageElement) -> JSIO String
  
  %foreign "browser:lambda:x=>x.naturalHeight"
  prim__naturalHeight : AnyPtr -> PrimIO AnyPtr

  export
  naturalHeight : (obj : HTMLImageElement) -> JSIO UInt32
  
  %foreign "browser:lambda:x=>x.naturalWidth"
  prim__naturalWidth : AnyPtr -> PrimIO AnyPtr

  export
  naturalWidth : (obj : HTMLImageElement) -> JSIO UInt32
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  export
  align : (obj : HTMLImageElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.align  = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlign : (obj : HTMLImageElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.alt"
  prim__alt : AnyPtr -> PrimIO AnyPtr

  export
  alt : (obj : HTMLImageElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.alt  = v}"
  prim__setAlt : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlt : (obj : HTMLImageElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.border"
  prim__border : AnyPtr -> PrimIO AnyPtr

  export
  border : (obj : HTMLImageElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.border  = v}"
  prim__setBorder : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBorder : (obj : HTMLImageElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.crossOrigin"
  prim__crossOrigin : AnyPtr -> PrimIO AnyPtr

  export
  crossOrigin : (obj : HTMLImageElement) -> JSIO (Maybe String)

  %foreign "browser:lambda:(x,v)=>{x.crossOrigin  = v}"
  prim__setCrossOrigin : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCrossOrigin : (obj : HTMLImageElement) -> (v : Maybe String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.decoding"
  prim__decoding : AnyPtr -> PrimIO AnyPtr

  export
  decoding : (obj : HTMLImageElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.decoding  = v}"
  prim__setDecoding : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDecoding : (obj : HTMLImageElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : HTMLImageElement) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.height  = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeight : (obj : HTMLImageElement) -> (v : UInt32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.hspace"
  prim__hspace : AnyPtr -> PrimIO AnyPtr

  export
  hspace : (obj : HTMLImageElement) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.hspace  = v}"
  prim__setHspace : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHspace : (obj : HTMLImageElement) -> (v : UInt32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.isMap"
  prim__isMap : AnyPtr -> PrimIO AnyPtr

  export
  isMap : (obj : HTMLImageElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.isMap  = v}"
  prim__setIsMap : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIsMap : (obj : HTMLImageElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.loading"
  prim__loading : AnyPtr -> PrimIO AnyPtr

  export
  loading : (obj : HTMLImageElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.loading  = v}"
  prim__setLoading : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLoading : (obj : HTMLImageElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.longDesc"
  prim__longDesc : AnyPtr -> PrimIO AnyPtr

  export
  longDesc : (obj : HTMLImageElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.longDesc  = v}"
  prim__setLongDesc : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLongDesc : (obj : HTMLImageElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.lowsrc"
  prim__lowsrc : AnyPtr -> PrimIO AnyPtr

  export
  lowsrc : (obj : HTMLImageElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.lowsrc  = v}"
  prim__setLowsrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLowsrc : (obj : HTMLImageElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : HTMLImageElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : HTMLImageElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : AnyPtr -> PrimIO AnyPtr

  export
  referrerPolicy : (obj : HTMLImageElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy  = v}"
  prim__setReferrerPolicy : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReferrerPolicy : (obj : HTMLImageElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.sizes"
  prim__sizes : AnyPtr -> PrimIO AnyPtr

  export
  sizes : (obj : HTMLImageElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.sizes  = v}"
  prim__setSizes : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSizes : (obj : HTMLImageElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.src"
  prim__src : AnyPtr -> PrimIO AnyPtr

  export
  src : (obj : HTMLImageElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.src  = v}"
  prim__setSrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSrc : (obj : HTMLImageElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.srcset"
  prim__srcset : AnyPtr -> PrimIO AnyPtr

  export
  srcset : (obj : HTMLImageElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.srcset  = v}"
  prim__setSrcset : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSrcset : (obj : HTMLImageElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.useMap"
  prim__useMap : AnyPtr -> PrimIO AnyPtr

  export
  useMap : (obj : HTMLImageElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.useMap  = v}"
  prim__setUseMap : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setUseMap : (obj : HTMLImageElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.vspace"
  prim__vspace : AnyPtr -> PrimIO AnyPtr

  export
  vspace : (obj : HTMLImageElement) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.vspace  = v}"
  prim__setVspace : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setVspace : (obj : HTMLImageElement) -> (v : UInt32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : HTMLImageElement) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : HTMLImageElement) -> (v : UInt32) -> JSIO ()

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
  
  %foreign "browser:lambda:x=>x.labels"
  prim__labels : AnyPtr -> PrimIO AnyPtr

  export
  labels : (obj : HTMLInputElement) -> JSIO (Maybe NodeList)
  
  %foreign "browser:lambda:x=>x.list"
  prim__list : AnyPtr -> PrimIO AnyPtr

  export
  list : (obj : HTMLInputElement) -> JSIO (Maybe HTMLElement)
  
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : AnyPtr -> PrimIO AnyPtr

  export
  validationMessage : (obj : HTMLInputElement) -> JSIO String
  
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : AnyPtr -> PrimIO AnyPtr

  export
  validity : (obj : HTMLInputElement) -> JSIO ValidityState
  
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : AnyPtr -> PrimIO AnyPtr

  export
  willValidate : (obj : HTMLInputElement) -> JSIO Bool
  
  %foreign "browser:lambda:x=>x.accept"
  prim__accept : AnyPtr -> PrimIO AnyPtr

  export
  accept : (obj : HTMLInputElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.accept  = v}"
  prim__setAccept : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAccept : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  export
  align : (obj : HTMLInputElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.align  = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlign : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.alt"
  prim__alt : AnyPtr -> PrimIO AnyPtr

  export
  alt : (obj : HTMLInputElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.alt  = v}"
  prim__setAlt : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlt : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.autocomplete"
  prim__autocomplete : AnyPtr -> PrimIO AnyPtr

  export
  autocomplete : (obj : HTMLInputElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.autocomplete  = v}"
  prim__setAutocomplete : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAutocomplete : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.checked"
  prim__checked : AnyPtr -> PrimIO AnyPtr

  export
  checked : (obj : HTMLInputElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.checked  = v}"
  prim__setChecked : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setChecked : (obj : HTMLInputElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.defaultChecked"
  prim__defaultChecked : AnyPtr -> PrimIO AnyPtr

  export
  defaultChecked : (obj : HTMLInputElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.defaultChecked  = v}"
  prim__setDefaultChecked : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDefaultChecked : (obj : HTMLInputElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.defaultValue"
  prim__defaultValue : AnyPtr -> PrimIO AnyPtr

  export
  defaultValue : (obj : HTMLInputElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.defaultValue  = v}"
  prim__setDefaultValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDefaultValue : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.dirName"
  prim__dirName : AnyPtr -> PrimIO AnyPtr

  export
  dirName : (obj : HTMLInputElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.dirName  = v}"
  prim__setDirName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDirName : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : AnyPtr -> PrimIO AnyPtr

  export
  disabled : (obj : HTMLInputElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.disabled  = v}"
  prim__setDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDisabled : (obj : HTMLInputElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.files"
  prim__files : AnyPtr -> PrimIO AnyPtr

  export
  files : (obj : HTMLInputElement) -> JSIO (Maybe FileList)

  %foreign "browser:lambda:(x,v)=>{x.files  = v}"
  prim__setFiles : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFiles : (obj : HTMLInputElement) -> (v : Maybe FileList) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.formAction"
  prim__formAction : AnyPtr -> PrimIO AnyPtr

  export
  formAction : (obj : HTMLInputElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.formAction  = v}"
  prim__setFormAction : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFormAction : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.formEnctype"
  prim__formEnctype : AnyPtr -> PrimIO AnyPtr

  export
  formEnctype : (obj : HTMLInputElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.formEnctype  = v}"
  prim__setFormEnctype : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFormEnctype : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.formMethod"
  prim__formMethod : AnyPtr -> PrimIO AnyPtr

  export
  formMethod : (obj : HTMLInputElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.formMethod  = v}"
  prim__setFormMethod : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFormMethod : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.formNoValidate"
  prim__formNoValidate : AnyPtr -> PrimIO AnyPtr

  export
  formNoValidate : (obj : HTMLInputElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.formNoValidate  = v}"
  prim__setFormNoValidate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFormNoValidate : (obj : HTMLInputElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.formTarget"
  prim__formTarget : AnyPtr -> PrimIO AnyPtr

  export
  formTarget : (obj : HTMLInputElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.formTarget  = v}"
  prim__setFormTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFormTarget : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : HTMLInputElement) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.height  = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeight : (obj : HTMLInputElement) -> (v : UInt32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.indeterminate"
  prim__indeterminate : AnyPtr -> PrimIO AnyPtr

  export
  indeterminate : (obj : HTMLInputElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.indeterminate  = v}"
  prim__setIndeterminate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIndeterminate : (obj : HTMLInputElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.max"
  prim__max : AnyPtr -> PrimIO AnyPtr

  export
  max : (obj : HTMLInputElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.max  = v}"
  prim__setMax : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMax : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.maxLength"
  prim__maxLength : AnyPtr -> PrimIO AnyPtr

  export
  maxLength : (obj : HTMLInputElement) -> JSIO Int32

  %foreign "browser:lambda:(x,v)=>{x.maxLength  = v}"
  prim__setMaxLength : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMaxLength : (obj : HTMLInputElement) -> (v : Int32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.min"
  prim__min : AnyPtr -> PrimIO AnyPtr

  export
  min : (obj : HTMLInputElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.min  = v}"
  prim__setMin : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMin : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.minLength"
  prim__minLength : AnyPtr -> PrimIO AnyPtr

  export
  minLength : (obj : HTMLInputElement) -> JSIO Int32

  %foreign "browser:lambda:(x,v)=>{x.minLength  = v}"
  prim__setMinLength : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMinLength : (obj : HTMLInputElement) -> (v : Int32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.multiple"
  prim__multiple : AnyPtr -> PrimIO AnyPtr

  export
  multiple : (obj : HTMLInputElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.multiple  = v}"
  prim__setMultiple : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMultiple : (obj : HTMLInputElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : HTMLInputElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.pattern"
  prim__pattern : AnyPtr -> PrimIO AnyPtr

  export
  pattern : (obj : HTMLInputElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.pattern  = v}"
  prim__setPattern : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPattern : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.placeholder"
  prim__placeholder : AnyPtr -> PrimIO AnyPtr

  export
  placeholder : (obj : HTMLInputElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.placeholder  = v}"
  prim__setPlaceholder : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPlaceholder : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.readOnly"
  prim__readOnly : AnyPtr -> PrimIO AnyPtr

  export
  readOnly : (obj : HTMLInputElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.readOnly  = v}"
  prim__setReadOnly : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReadOnly : (obj : HTMLInputElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.required"
  prim__required : AnyPtr -> PrimIO AnyPtr

  export
  required : (obj : HTMLInputElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.required  = v}"
  prim__setRequired : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRequired : (obj : HTMLInputElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.selectionDirection"
  prim__selectionDirection : AnyPtr -> PrimIO AnyPtr

  export
  selectionDirection : (obj : HTMLInputElement) -> JSIO (Maybe String)

  %foreign "browser:lambda:(x,v)=>{x.selectionDirection  = v}"
  prim__setSelectionDirection : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSelectionDirection :  (obj : HTMLInputElement)
                        -> (v : Maybe String)
                        -> JSIO ()
  
  %foreign "browser:lambda:x=>x.selectionEnd"
  prim__selectionEnd : AnyPtr -> PrimIO AnyPtr

  export
  selectionEnd : (obj : HTMLInputElement) -> JSIO (Maybe UInt32)

  %foreign "browser:lambda:(x,v)=>{x.selectionEnd  = v}"
  prim__setSelectionEnd : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSelectionEnd : (obj : HTMLInputElement) -> (v : Maybe UInt32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.selectionStart"
  prim__selectionStart : AnyPtr -> PrimIO AnyPtr

  export
  selectionStart : (obj : HTMLInputElement) -> JSIO (Maybe UInt32)

  %foreign "browser:lambda:(x,v)=>{x.selectionStart  = v}"
  prim__setSelectionStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSelectionStart : (obj : HTMLInputElement) -> (v : Maybe UInt32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.size"
  prim__size : AnyPtr -> PrimIO AnyPtr

  export
  size : (obj : HTMLInputElement) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.size  = v}"
  prim__setSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSize : (obj : HTMLInputElement) -> (v : UInt32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.src"
  prim__src : AnyPtr -> PrimIO AnyPtr

  export
  src : (obj : HTMLInputElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.src  = v}"
  prim__setSrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSrc : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.step"
  prim__step : AnyPtr -> PrimIO AnyPtr

  export
  step : (obj : HTMLInputElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.step  = v}"
  prim__setStep : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStep : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : HTMLInputElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.useMap"
  prim__useMap : AnyPtr -> PrimIO AnyPtr

  export
  useMap : (obj : HTMLInputElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.useMap  = v}"
  prim__setUseMap : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setUseMap : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : HTMLInputElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue : (obj : HTMLInputElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.valueAsDate"
  prim__valueAsDate : AnyPtr -> PrimIO AnyPtr

  export
  valueAsDate : (obj : HTMLInputElement) -> JSIO (Maybe JSObject)

  %foreign "browser:lambda:(x,v)=>{x.valueAsDate  = v}"
  prim__setValueAsDate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValueAsDate : (obj : HTMLInputElement) -> (v : Maybe JSObject) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.valueAsNumber"
  prim__valueAsNumber : AnyPtr -> PrimIO AnyPtr

  export
  valueAsNumber : (obj : HTMLInputElement) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.valueAsNumber  = v}"
  prim__setValueAsNumber : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValueAsNumber : (obj : HTMLInputElement) -> (v : Double) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : HTMLInputElement) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : HTMLInputElement) -> (v : UInt32) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : HTMLLIElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : HTMLLIElement) -> JSIO Int32

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue : (obj : HTMLLIElement) -> (v : Int32) -> JSIO ()

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
  
  %foreign "browser:lambda:x=>x.form"
  prim__form : AnyPtr -> PrimIO AnyPtr

  export
  form : (obj : HTMLLabelElement) -> JSIO (Maybe HTMLFormElement)
  
  %foreign "browser:lambda:x=>x.htmlFor"
  prim__htmlFor : AnyPtr -> PrimIO AnyPtr

  export
  htmlFor : (obj : HTMLLabelElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.htmlFor  = v}"
  prim__setHtmlFor : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHtmlFor : (obj : HTMLLabelElement) -> (v : String) -> JSIO ()

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
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  export
  align : (obj : HTMLLegendElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.align  = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlign : (obj : HTMLLegendElement) -> (v : String) -> JSIO ()

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
  
  %foreign "browser:lambda:x=>x.sizes"
  prim__sizes : AnyPtr -> PrimIO AnyPtr

  export
  sizes : (obj : HTMLLinkElement) -> JSIO DOMTokenList
  
  %foreign "browser:lambda:x=>x.as"
  prim__as : AnyPtr -> PrimIO AnyPtr

  export
  as : (obj : HTMLLinkElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.as  = v}"
  prim__setAs : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAs : (obj : HTMLLinkElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.charset"
  prim__charset : AnyPtr -> PrimIO AnyPtr

  export
  charset : (obj : HTMLLinkElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.charset  = v}"
  prim__setCharset : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCharset : (obj : HTMLLinkElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.crossOrigin"
  prim__crossOrigin : AnyPtr -> PrimIO AnyPtr

  export
  crossOrigin : (obj : HTMLLinkElement) -> JSIO (Maybe String)

  %foreign "browser:lambda:(x,v)=>{x.crossOrigin  = v}"
  prim__setCrossOrigin : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCrossOrigin : (obj : HTMLLinkElement) -> (v : Maybe String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : AnyPtr -> PrimIO AnyPtr

  export
  disabled : (obj : HTMLLinkElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.disabled  = v}"
  prim__setDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDisabled : (obj : HTMLLinkElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.href"
  prim__href : AnyPtr -> PrimIO AnyPtr

  export
  href : (obj : HTMLLinkElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.href  = v}"
  prim__setHref : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHref : (obj : HTMLLinkElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.hreflang"
  prim__hreflang : AnyPtr -> PrimIO AnyPtr

  export
  hreflang : (obj : HTMLLinkElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.hreflang  = v}"
  prim__setHreflang : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHreflang : (obj : HTMLLinkElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.imageSizes"
  prim__imageSizes : AnyPtr -> PrimIO AnyPtr

  export
  imageSizes : (obj : HTMLLinkElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.imageSizes  = v}"
  prim__setImageSizes : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setImageSizes : (obj : HTMLLinkElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.imageSrcset"
  prim__imageSrcset : AnyPtr -> PrimIO AnyPtr

  export
  imageSrcset : (obj : HTMLLinkElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.imageSrcset  = v}"
  prim__setImageSrcset : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setImageSrcset : (obj : HTMLLinkElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.integrity"
  prim__integrity : AnyPtr -> PrimIO AnyPtr

  export
  integrity : (obj : HTMLLinkElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.integrity  = v}"
  prim__setIntegrity : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIntegrity : (obj : HTMLLinkElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.media"
  prim__media : AnyPtr -> PrimIO AnyPtr

  export
  media : (obj : HTMLLinkElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.media  = v}"
  prim__setMedia : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMedia : (obj : HTMLLinkElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : AnyPtr -> PrimIO AnyPtr

  export
  referrerPolicy : (obj : HTMLLinkElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy  = v}"
  prim__setReferrerPolicy : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReferrerPolicy : (obj : HTMLLinkElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.rel"
  prim__rel : AnyPtr -> PrimIO AnyPtr

  export
  rel : (obj : HTMLLinkElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.rel  = v}"
  prim__setRel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRel : (obj : HTMLLinkElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.rev"
  prim__rev : AnyPtr -> PrimIO AnyPtr

  export
  rev : (obj : HTMLLinkElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.rev  = v}"
  prim__setRev : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRev : (obj : HTMLLinkElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr

  export
  target : (obj : HTMLLinkElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.target  = v}"
  prim__setTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTarget : (obj : HTMLLinkElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : HTMLLinkElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : HTMLLinkElement) -> (v : String) -> JSIO ()

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
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : HTMLMapElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : HTMLMapElement) -> (v : String) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.behavior  = v}"
  prim__setBehavior : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBehavior : (obj : HTMLMarqueeElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.bgColor"
  prim__bgColor : AnyPtr -> PrimIO AnyPtr

  export
  bgColor : (obj : HTMLMarqueeElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.bgColor  = v}"
  prim__setBgColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBgColor : (obj : HTMLMarqueeElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.direction"
  prim__direction : AnyPtr -> PrimIO AnyPtr

  export
  direction : (obj : HTMLMarqueeElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.direction  = v}"
  prim__setDirection : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDirection : (obj : HTMLMarqueeElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : HTMLMarqueeElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.height  = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeight : (obj : HTMLMarqueeElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.hspace"
  prim__hspace : AnyPtr -> PrimIO AnyPtr

  export
  hspace : (obj : HTMLMarqueeElement) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.hspace  = v}"
  prim__setHspace : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHspace : (obj : HTMLMarqueeElement) -> (v : UInt32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.loop"
  prim__loop : AnyPtr -> PrimIO AnyPtr

  export
  loop : (obj : HTMLMarqueeElement) -> JSIO Int32

  %foreign "browser:lambda:(x,v)=>{x.loop  = v}"
  prim__setLoop : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLoop : (obj : HTMLMarqueeElement) -> (v : Int32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.scrollAmount"
  prim__scrollAmount : AnyPtr -> PrimIO AnyPtr

  export
  scrollAmount : (obj : HTMLMarqueeElement) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.scrollAmount  = v}"
  prim__setScrollAmount : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setScrollAmount : (obj : HTMLMarqueeElement) -> (v : UInt32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.scrollDelay"
  prim__scrollDelay : AnyPtr -> PrimIO AnyPtr

  export
  scrollDelay : (obj : HTMLMarqueeElement) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.scrollDelay  = v}"
  prim__setScrollDelay : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setScrollDelay : (obj : HTMLMarqueeElement) -> (v : UInt32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.trueSpeed"
  prim__trueSpeed : AnyPtr -> PrimIO AnyPtr

  export
  trueSpeed : (obj : HTMLMarqueeElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.trueSpeed  = v}"
  prim__setTrueSpeed : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTrueSpeed : (obj : HTMLMarqueeElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.vspace"
  prim__vspace : AnyPtr -> PrimIO AnyPtr

  export
  vspace : (obj : HTMLMarqueeElement) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.vspace  = v}"
  prim__setVspace : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setVspace : (obj : HTMLMarqueeElement) -> (v : UInt32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : HTMLMarqueeElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : HTMLMarqueeElement) -> (v : String) -> JSIO ()

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
  
  %foreign "browser:lambda:x=>x.buffered"
  prim__buffered : AnyPtr -> PrimIO AnyPtr

  export
  buffered : (obj : HTMLMediaElement) -> JSIO TimeRanges
  
  %foreign "browser:lambda:x=>x.currentSrc"
  prim__currentSrc : AnyPtr -> PrimIO AnyPtr

  export
  currentSrc : (obj : HTMLMediaElement) -> JSIO String
  
  %foreign "browser:lambda:x=>x.duration"
  prim__duration : AnyPtr -> PrimIO AnyPtr

  export
  duration : (obj : HTMLMediaElement) -> JSIO Double
  
  %foreign "browser:lambda:x=>x.ended"
  prim__ended : AnyPtr -> PrimIO AnyPtr

  export
  ended : (obj : HTMLMediaElement) -> JSIO Bool
  
  %foreign "browser:lambda:x=>x.error"
  prim__error : AnyPtr -> PrimIO AnyPtr

  export
  error : (obj : HTMLMediaElement) -> JSIO (Maybe MediaError)
  
  %foreign "browser:lambda:x=>x.networkState"
  prim__networkState : AnyPtr -> PrimIO AnyPtr

  export
  networkState : (obj : HTMLMediaElement) -> JSIO UInt16
  
  %foreign "browser:lambda:x=>x.paused"
  prim__paused : AnyPtr -> PrimIO AnyPtr

  export
  paused : (obj : HTMLMediaElement) -> JSIO Bool
  
  %foreign "browser:lambda:x=>x.played"
  prim__played : AnyPtr -> PrimIO AnyPtr

  export
  played : (obj : HTMLMediaElement) -> JSIO TimeRanges
  
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : AnyPtr -> PrimIO AnyPtr

  export
  readyState : (obj : HTMLMediaElement) -> JSIO UInt16
  
  %foreign "browser:lambda:x=>x.seekable"
  prim__seekable : AnyPtr -> PrimIO AnyPtr

  export
  seekable : (obj : HTMLMediaElement) -> JSIO TimeRanges
  
  %foreign "browser:lambda:x=>x.seeking"
  prim__seeking : AnyPtr -> PrimIO AnyPtr

  export
  seeking : (obj : HTMLMediaElement) -> JSIO Bool
  
  %foreign "browser:lambda:x=>x.textTracks"
  prim__textTracks : AnyPtr -> PrimIO AnyPtr

  export
  textTracks : (obj : HTMLMediaElement) -> JSIO TextTrackList
  
  %foreign "browser:lambda:x=>x.videoTracks"
  prim__videoTracks : AnyPtr -> PrimIO AnyPtr

  export
  videoTracks : (obj : HTMLMediaElement) -> JSIO VideoTrackList
  
  %foreign "browser:lambda:x=>x.autoplay"
  prim__autoplay : AnyPtr -> PrimIO AnyPtr

  export
  autoplay : (obj : HTMLMediaElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.autoplay  = v}"
  prim__setAutoplay : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAutoplay : (obj : HTMLMediaElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.controls"
  prim__controls : AnyPtr -> PrimIO AnyPtr

  export
  controls : (obj : HTMLMediaElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.controls  = v}"
  prim__setControls : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setControls : (obj : HTMLMediaElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.crossOrigin"
  prim__crossOrigin : AnyPtr -> PrimIO AnyPtr

  export
  crossOrigin : (obj : HTMLMediaElement) -> JSIO (Maybe String)

  %foreign "browser:lambda:(x,v)=>{x.crossOrigin  = v}"
  prim__setCrossOrigin : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCrossOrigin : (obj : HTMLMediaElement) -> (v : Maybe String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.currentTime"
  prim__currentTime : AnyPtr -> PrimIO AnyPtr

  export
  currentTime : (obj : HTMLMediaElement) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.currentTime  = v}"
  prim__setCurrentTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCurrentTime : (obj : HTMLMediaElement) -> (v : Double) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.defaultMuted"
  prim__defaultMuted : AnyPtr -> PrimIO AnyPtr

  export
  defaultMuted : (obj : HTMLMediaElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.defaultMuted  = v}"
  prim__setDefaultMuted : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDefaultMuted : (obj : HTMLMediaElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.defaultPlaybackRate"
  prim__defaultPlaybackRate : AnyPtr -> PrimIO AnyPtr

  export
  defaultPlaybackRate : (obj : HTMLMediaElement) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.defaultPlaybackRate  = v}"
  prim__setDefaultPlaybackRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDefaultPlaybackRate : (obj : HTMLMediaElement) -> (v : Double) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.loop"
  prim__loop : AnyPtr -> PrimIO AnyPtr

  export
  loop : (obj : HTMLMediaElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.loop  = v}"
  prim__setLoop : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLoop : (obj : HTMLMediaElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.muted"
  prim__muted : AnyPtr -> PrimIO AnyPtr

  export
  muted : (obj : HTMLMediaElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.muted  = v}"
  prim__setMuted : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMuted : (obj : HTMLMediaElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.playbackRate"
  prim__playbackRate : AnyPtr -> PrimIO AnyPtr

  export
  playbackRate : (obj : HTMLMediaElement) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.playbackRate  = v}"
  prim__setPlaybackRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPlaybackRate : (obj : HTMLMediaElement) -> (v : Double) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.preload"
  prim__preload : AnyPtr -> PrimIO AnyPtr

  export
  preload : (obj : HTMLMediaElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.preload  = v}"
  prim__setPreload : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPreload : (obj : HTMLMediaElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.preservesPitch"
  prim__preservesPitch : AnyPtr -> PrimIO AnyPtr

  export
  preservesPitch : (obj : HTMLMediaElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.preservesPitch  = v}"
  prim__setPreservesPitch : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPreservesPitch : (obj : HTMLMediaElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.src"
  prim__src : AnyPtr -> PrimIO AnyPtr

  export
  src : (obj : HTMLMediaElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.src  = v}"
  prim__setSrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSrc : (obj : HTMLMediaElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.srcObject"
  prim__srcObject : AnyPtr -> PrimIO AnyPtr

  export
  srcObject : (obj : HTMLMediaElement) -> JSIO (Maybe MediaProvider)

  %foreign "browser:lambda:(x,v)=>{x.srcObject  = v}"
  prim__setSrcObject : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSrcObject :  (obj : HTMLMediaElement)
               -> (v : Maybe MediaProvider)
               -> JSIO ()
  
  %foreign "browser:lambda:x=>x.volume"
  prim__volume : AnyPtr -> PrimIO AnyPtr

  export
  volume : (obj : HTMLMediaElement) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.volume  = v}"
  prim__setVolume : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setVolume : (obj : HTMLMediaElement) -> (v : Double) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.compact  = v}"
  prim__setCompact : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCompact : (obj : HTMLMenuElement) -> (v : Bool) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.content  = v}"
  prim__setContent : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setContent : (obj : HTMLMetaElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.httpEquiv"
  prim__httpEquiv : AnyPtr -> PrimIO AnyPtr

  export
  httpEquiv : (obj : HTMLMetaElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.httpEquiv  = v}"
  prim__setHttpEquiv : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHttpEquiv : (obj : HTMLMetaElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : HTMLMetaElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : HTMLMetaElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.scheme"
  prim__scheme : AnyPtr -> PrimIO AnyPtr

  export
  scheme : (obj : HTMLMetaElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.scheme  = v}"
  prim__setScheme : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setScheme : (obj : HTMLMetaElement) -> (v : String) -> JSIO ()

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
  
  %foreign "browser:lambda:x=>x.high"
  prim__high : AnyPtr -> PrimIO AnyPtr

  export
  high : (obj : HTMLMeterElement) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.high  = v}"
  prim__setHigh : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHigh : (obj : HTMLMeterElement) -> (v : Double) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.low"
  prim__low : AnyPtr -> PrimIO AnyPtr

  export
  low : (obj : HTMLMeterElement) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.low  = v}"
  prim__setLow : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLow : (obj : HTMLMeterElement) -> (v : Double) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.max"
  prim__max : AnyPtr -> PrimIO AnyPtr

  export
  max : (obj : HTMLMeterElement) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.max  = v}"
  prim__setMax : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMax : (obj : HTMLMeterElement) -> (v : Double) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.min"
  prim__min : AnyPtr -> PrimIO AnyPtr

  export
  min : (obj : HTMLMeterElement) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.min  = v}"
  prim__setMin : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMin : (obj : HTMLMeterElement) -> (v : Double) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.optimum"
  prim__optimum : AnyPtr -> PrimIO AnyPtr

  export
  optimum : (obj : HTMLMeterElement) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.optimum  = v}"
  prim__setOptimum : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOptimum : (obj : HTMLMeterElement) -> (v : Double) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : HTMLMeterElement) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue : (obj : HTMLMeterElement) -> (v : Double) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.cite  = v}"
  prim__setCite : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCite : (obj : HTMLModElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.dateTime"
  prim__dateTime : AnyPtr -> PrimIO AnyPtr

  export
  dateTime : (obj : HTMLModElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.dateTime  = v}"
  prim__setDateTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDateTime : (obj : HTMLModElement) -> (v : String) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.compact  = v}"
  prim__setCompact : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCompact : (obj : HTMLOListElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.reversed"
  prim__reversed : AnyPtr -> PrimIO AnyPtr

  export
  reversed : (obj : HTMLOListElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.reversed  = v}"
  prim__setReversed : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReversed : (obj : HTMLOListElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.start"
  prim__start : AnyPtr -> PrimIO AnyPtr

  export
  start : (obj : HTMLOListElement) -> JSIO Int32

  %foreign "browser:lambda:(x,v)=>{x.start  = v}"
  prim__setStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStart : (obj : HTMLOListElement) -> (v : Int32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : HTMLOListElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : HTMLOListElement) -> (v : String) -> JSIO ()

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
  
  %foreign "browser:lambda:x=>x.contentWindow"
  prim__contentWindow : AnyPtr -> PrimIO AnyPtr

  export
  contentWindow : (obj : HTMLObjectElement) -> JSIO (Maybe WindowProxy)
  
  %foreign "browser:lambda:x=>x.form"
  prim__form : AnyPtr -> PrimIO AnyPtr

  export
  form : (obj : HTMLObjectElement) -> JSIO (Maybe HTMLFormElement)
  
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : AnyPtr -> PrimIO AnyPtr

  export
  validationMessage : (obj : HTMLObjectElement) -> JSIO String
  
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : AnyPtr -> PrimIO AnyPtr

  export
  validity : (obj : HTMLObjectElement) -> JSIO ValidityState
  
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : AnyPtr -> PrimIO AnyPtr

  export
  willValidate : (obj : HTMLObjectElement) -> JSIO Bool
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  export
  align : (obj : HTMLObjectElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.align  = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlign : (obj : HTMLObjectElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.archive"
  prim__archive : AnyPtr -> PrimIO AnyPtr

  export
  archive : (obj : HTMLObjectElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.archive  = v}"
  prim__setArchive : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setArchive : (obj : HTMLObjectElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.border"
  prim__border : AnyPtr -> PrimIO AnyPtr

  export
  border : (obj : HTMLObjectElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.border  = v}"
  prim__setBorder : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBorder : (obj : HTMLObjectElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.code"
  prim__code : AnyPtr -> PrimIO AnyPtr

  export
  code : (obj : HTMLObjectElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.code  = v}"
  prim__setCode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCode : (obj : HTMLObjectElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.codeBase"
  prim__codeBase : AnyPtr -> PrimIO AnyPtr

  export
  codeBase : (obj : HTMLObjectElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.codeBase  = v}"
  prim__setCodeBase : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCodeBase : (obj : HTMLObjectElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.codeType"
  prim__codeType : AnyPtr -> PrimIO AnyPtr

  export
  codeType : (obj : HTMLObjectElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.codeType  = v}"
  prim__setCodeType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCodeType : (obj : HTMLObjectElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.data"
  prim__data_ : AnyPtr -> PrimIO AnyPtr

  export
  data_ : (obj : HTMLObjectElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.data  = v}"
  prim__setData : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setData : (obj : HTMLObjectElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.declare"
  prim__declare : AnyPtr -> PrimIO AnyPtr

  export
  declare : (obj : HTMLObjectElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.declare  = v}"
  prim__setDeclare : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDeclare : (obj : HTMLObjectElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : HTMLObjectElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.height  = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeight : (obj : HTMLObjectElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.hspace"
  prim__hspace : AnyPtr -> PrimIO AnyPtr

  export
  hspace : (obj : HTMLObjectElement) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.hspace  = v}"
  prim__setHspace : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHspace : (obj : HTMLObjectElement) -> (v : UInt32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : HTMLObjectElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : HTMLObjectElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.standby"
  prim__standby : AnyPtr -> PrimIO AnyPtr

  export
  standby : (obj : HTMLObjectElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.standby  = v}"
  prim__setStandby : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStandby : (obj : HTMLObjectElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : HTMLObjectElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : HTMLObjectElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.useMap"
  prim__useMap : AnyPtr -> PrimIO AnyPtr

  export
  useMap : (obj : HTMLObjectElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.useMap  = v}"
  prim__setUseMap : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setUseMap : (obj : HTMLObjectElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.vspace"
  prim__vspace : AnyPtr -> PrimIO AnyPtr

  export
  vspace : (obj : HTMLObjectElement) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.vspace  = v}"
  prim__setVspace : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setVspace : (obj : HTMLObjectElement) -> (v : UInt32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : HTMLObjectElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : HTMLObjectElement) -> (v : String) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.disabled  = v}"
  prim__setDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDisabled : (obj : HTMLOptGroupElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.label"
  prim__label : AnyPtr -> PrimIO AnyPtr

  export
  label : (obj : HTMLOptGroupElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.label  = v}"
  prim__setLabel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLabel : (obj : HTMLOptGroupElement) -> (v : String) -> JSIO ()

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
  
  %foreign "browser:lambda:x=>x.index"
  prim__index : AnyPtr -> PrimIO AnyPtr

  export
  index : (obj : HTMLOptionElement) -> JSIO Int32
  
  %foreign "browser:lambda:x=>x.defaultSelected"
  prim__defaultSelected : AnyPtr -> PrimIO AnyPtr

  export
  defaultSelected : (obj : HTMLOptionElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.defaultSelected  = v}"
  prim__setDefaultSelected : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDefaultSelected : (obj : HTMLOptionElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : AnyPtr -> PrimIO AnyPtr

  export
  disabled : (obj : HTMLOptionElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.disabled  = v}"
  prim__setDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDisabled : (obj : HTMLOptionElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.label"
  prim__label : AnyPtr -> PrimIO AnyPtr

  export
  label : (obj : HTMLOptionElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.label  = v}"
  prim__setLabel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLabel : (obj : HTMLOptionElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.selected"
  prim__selected : AnyPtr -> PrimIO AnyPtr

  export
  selected : (obj : HTMLOptionElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.selected  = v}"
  prim__setSelected : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSelected : (obj : HTMLOptionElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.text"
  prim__text : AnyPtr -> PrimIO AnyPtr

  export
  text : (obj : HTMLOptionElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.text  = v}"
  prim__setText : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setText : (obj : HTMLOptionElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : HTMLOptionElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue : (obj : HTMLOptionElement) -> (v : String) -> JSIO ()

namespace HTMLOptionsCollection
  
  public export
  JSType HTMLOptionsCollection where
    parents =  [ HTMLCollection , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : HTMLOptionsCollection) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.length  = v}"
  prim__setLength : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLength : (obj : HTMLOptionsCollection) -> (v : UInt32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.selectedIndex"
  prim__selectedIndex : AnyPtr -> PrimIO AnyPtr

  export
  selectedIndex : (obj : HTMLOptionsCollection) -> JSIO Int32

  %foreign "browser:lambda:(x,v)=>{x.selectedIndex  = v}"
  prim__setSelectedIndex : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSelectedIndex : (obj : HTMLOptionsCollection) -> (v : Int32) -> JSIO ()

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
  
  %foreign "browser:lambda:x=>x.htmlFor"
  prim__htmlFor : AnyPtr -> PrimIO AnyPtr

  export
  htmlFor : (obj : HTMLOutputElement) -> JSIO DOMTokenList
  
  %foreign "browser:lambda:x=>x.labels"
  prim__labels : AnyPtr -> PrimIO AnyPtr

  export
  labels : (obj : HTMLOutputElement) -> JSIO NodeList
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : HTMLOutputElement) -> JSIO String
  
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : AnyPtr -> PrimIO AnyPtr

  export
  validationMessage : (obj : HTMLOutputElement) -> JSIO String
  
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : AnyPtr -> PrimIO AnyPtr

  export
  validity : (obj : HTMLOutputElement) -> JSIO ValidityState
  
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : AnyPtr -> PrimIO AnyPtr

  export
  willValidate : (obj : HTMLOutputElement) -> JSIO Bool
  
  %foreign "browser:lambda:x=>x.defaultValue"
  prim__defaultValue : AnyPtr -> PrimIO AnyPtr

  export
  defaultValue : (obj : HTMLOutputElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.defaultValue  = v}"
  prim__setDefaultValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDefaultValue : (obj : HTMLOutputElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : HTMLOutputElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : HTMLOutputElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : HTMLOutputElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue : (obj : HTMLOutputElement) -> (v : String) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.align  = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlign : (obj : HTMLParagraphElement) -> (v : String) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : HTMLParamElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : HTMLParamElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : HTMLParamElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : HTMLParamElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue : (obj : HTMLParamElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.valueType"
  prim__valueType : AnyPtr -> PrimIO AnyPtr

  export
  valueType : (obj : HTMLParamElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.valueType  = v}"
  prim__setValueType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValueType : (obj : HTMLParamElement) -> (v : String) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : HTMLPreElement) -> (v : Int32) -> JSIO ()

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
  
  %foreign "browser:lambda:x=>x.position"
  prim__position : AnyPtr -> PrimIO AnyPtr

  export
  position : (obj : HTMLProgressElement) -> JSIO Double
  
  %foreign "browser:lambda:x=>x.max"
  prim__max : AnyPtr -> PrimIO AnyPtr

  export
  max : (obj : HTMLProgressElement) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.max  = v}"
  prim__setMax : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMax : (obj : HTMLProgressElement) -> (v : Double) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : HTMLProgressElement) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue : (obj : HTMLProgressElement) -> (v : Double) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.cite  = v}"
  prim__setCite : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCite : (obj : HTMLQuoteElement) -> (v : String) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.async  = v}"
  prim__setAsync : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAsync : (obj : HTMLScriptElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.charset"
  prim__charset : AnyPtr -> PrimIO AnyPtr

  export
  charset : (obj : HTMLScriptElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.charset  = v}"
  prim__setCharset : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCharset : (obj : HTMLScriptElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.crossOrigin"
  prim__crossOrigin : AnyPtr -> PrimIO AnyPtr

  export
  crossOrigin : (obj : HTMLScriptElement) -> JSIO (Maybe String)

  %foreign "browser:lambda:(x,v)=>{x.crossOrigin  = v}"
  prim__setCrossOrigin : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCrossOrigin : (obj : HTMLScriptElement) -> (v : Maybe String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.defer"
  prim__defer : AnyPtr -> PrimIO AnyPtr

  export
  defer : (obj : HTMLScriptElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.defer  = v}"
  prim__setDefer : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDefer : (obj : HTMLScriptElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.event"
  prim__event : AnyPtr -> PrimIO AnyPtr

  export
  event : (obj : HTMLScriptElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.event  = v}"
  prim__setEvent : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEvent : (obj : HTMLScriptElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.htmlFor"
  prim__htmlFor : AnyPtr -> PrimIO AnyPtr

  export
  htmlFor : (obj : HTMLScriptElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.htmlFor  = v}"
  prim__setHtmlFor : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHtmlFor : (obj : HTMLScriptElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.integrity"
  prim__integrity : AnyPtr -> PrimIO AnyPtr

  export
  integrity : (obj : HTMLScriptElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.integrity  = v}"
  prim__setIntegrity : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIntegrity : (obj : HTMLScriptElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.noModule"
  prim__noModule : AnyPtr -> PrimIO AnyPtr

  export
  noModule : (obj : HTMLScriptElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.noModule  = v}"
  prim__setNoModule : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setNoModule : (obj : HTMLScriptElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : AnyPtr -> PrimIO AnyPtr

  export
  referrerPolicy : (obj : HTMLScriptElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy  = v}"
  prim__setReferrerPolicy : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReferrerPolicy : (obj : HTMLScriptElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.src"
  prim__src : AnyPtr -> PrimIO AnyPtr

  export
  src : (obj : HTMLScriptElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.src  = v}"
  prim__setSrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSrc : (obj : HTMLScriptElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.text"
  prim__text : AnyPtr -> PrimIO AnyPtr

  export
  text : (obj : HTMLScriptElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.text  = v}"
  prim__setText : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setText : (obj : HTMLScriptElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : HTMLScriptElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : HTMLScriptElement) -> (v : String) -> JSIO ()

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
  
  %foreign "browser:lambda:x=>x.labels"
  prim__labels : AnyPtr -> PrimIO AnyPtr

  export
  labels : (obj : HTMLSelectElement) -> JSIO NodeList
  
  %foreign "browser:lambda:x=>x.options"
  prim__options : AnyPtr -> PrimIO AnyPtr

  export
  options : (obj : HTMLSelectElement) -> JSIO HTMLOptionsCollection
  
  %foreign "browser:lambda:x=>x.selectedOptions"
  prim__selectedOptions : AnyPtr -> PrimIO AnyPtr

  export
  selectedOptions : (obj : HTMLSelectElement) -> JSIO HTMLCollection
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : HTMLSelectElement) -> JSIO String
  
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : AnyPtr -> PrimIO AnyPtr

  export
  validationMessage : (obj : HTMLSelectElement) -> JSIO String
  
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : AnyPtr -> PrimIO AnyPtr

  export
  validity : (obj : HTMLSelectElement) -> JSIO ValidityState
  
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : AnyPtr -> PrimIO AnyPtr

  export
  willValidate : (obj : HTMLSelectElement) -> JSIO Bool
  
  %foreign "browser:lambda:x=>x.autocomplete"
  prim__autocomplete : AnyPtr -> PrimIO AnyPtr

  export
  autocomplete : (obj : HTMLSelectElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.autocomplete  = v}"
  prim__setAutocomplete : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAutocomplete : (obj : HTMLSelectElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : AnyPtr -> PrimIO AnyPtr

  export
  disabled : (obj : HTMLSelectElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.disabled  = v}"
  prim__setDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDisabled : (obj : HTMLSelectElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : HTMLSelectElement) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.length  = v}"
  prim__setLength : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLength : (obj : HTMLSelectElement) -> (v : UInt32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.multiple"
  prim__multiple : AnyPtr -> PrimIO AnyPtr

  export
  multiple : (obj : HTMLSelectElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.multiple  = v}"
  prim__setMultiple : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMultiple : (obj : HTMLSelectElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : HTMLSelectElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : HTMLSelectElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.required"
  prim__required : AnyPtr -> PrimIO AnyPtr

  export
  required : (obj : HTMLSelectElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.required  = v}"
  prim__setRequired : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRequired : (obj : HTMLSelectElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.selectedIndex"
  prim__selectedIndex : AnyPtr -> PrimIO AnyPtr

  export
  selectedIndex : (obj : HTMLSelectElement) -> JSIO Int32

  %foreign "browser:lambda:(x,v)=>{x.selectedIndex  = v}"
  prim__setSelectedIndex : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSelectedIndex : (obj : HTMLSelectElement) -> (v : Int32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.size"
  prim__size : AnyPtr -> PrimIO AnyPtr

  export
  size : (obj : HTMLSelectElement) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.size  = v}"
  prim__setSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSize : (obj : HTMLSelectElement) -> (v : UInt32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : HTMLSelectElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue : (obj : HTMLSelectElement) -> (v : String) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : HTMLSlotElement) -> (v : String) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.height  = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeight : (obj : HTMLSourceElement) -> (v : UInt32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.media"
  prim__media : AnyPtr -> PrimIO AnyPtr

  export
  media : (obj : HTMLSourceElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.media  = v}"
  prim__setMedia : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMedia : (obj : HTMLSourceElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.sizes"
  prim__sizes : AnyPtr -> PrimIO AnyPtr

  export
  sizes : (obj : HTMLSourceElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.sizes  = v}"
  prim__setSizes : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSizes : (obj : HTMLSourceElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.src"
  prim__src : AnyPtr -> PrimIO AnyPtr

  export
  src : (obj : HTMLSourceElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.src  = v}"
  prim__setSrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSrc : (obj : HTMLSourceElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.srcset"
  prim__srcset : AnyPtr -> PrimIO AnyPtr

  export
  srcset : (obj : HTMLSourceElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.srcset  = v}"
  prim__setSrcset : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSrcset : (obj : HTMLSourceElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : HTMLSourceElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : HTMLSourceElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : HTMLSourceElement) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : HTMLSourceElement) -> (v : UInt32) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.media  = v}"
  prim__setMedia : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMedia : (obj : HTMLStyleElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : HTMLStyleElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : HTMLStyleElement) -> (v : String) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.align  = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlign : (obj : HTMLTableCaptionElement) -> (v : String) -> JSIO ()

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
  
  %foreign "browser:lambda:x=>x.abbr"
  prim__abbr : AnyPtr -> PrimIO AnyPtr

  export
  abbr : (obj : HTMLTableCellElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.abbr  = v}"
  prim__setAbbr : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAbbr : (obj : HTMLTableCellElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  export
  align : (obj : HTMLTableCellElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.align  = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlign : (obj : HTMLTableCellElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.axis"
  prim__axis : AnyPtr -> PrimIO AnyPtr

  export
  axis : (obj : HTMLTableCellElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.axis  = v}"
  prim__setAxis : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAxis : (obj : HTMLTableCellElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.bgColor"
  prim__bgColor : AnyPtr -> PrimIO AnyPtr

  export
  bgColor : (obj : HTMLTableCellElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.bgColor  = v}"
  prim__setBgColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBgColor : (obj : HTMLTableCellElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ch"
  prim__ch : AnyPtr -> PrimIO AnyPtr

  export
  ch : (obj : HTMLTableCellElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ch  = v}"
  prim__setCh : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCh : (obj : HTMLTableCellElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.chOff"
  prim__chOff : AnyPtr -> PrimIO AnyPtr

  export
  chOff : (obj : HTMLTableCellElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.chOff  = v}"
  prim__setChOff : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setChOff : (obj : HTMLTableCellElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.colSpan"
  prim__colSpan : AnyPtr -> PrimIO AnyPtr

  export
  colSpan : (obj : HTMLTableCellElement) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.colSpan  = v}"
  prim__setColSpan : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setColSpan : (obj : HTMLTableCellElement) -> (v : UInt32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.headers"
  prim__headers : AnyPtr -> PrimIO AnyPtr

  export
  headers : (obj : HTMLTableCellElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.headers  = v}"
  prim__setHeaders : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeaders : (obj : HTMLTableCellElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : HTMLTableCellElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.height  = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeight : (obj : HTMLTableCellElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.noWrap"
  prim__noWrap : AnyPtr -> PrimIO AnyPtr

  export
  noWrap : (obj : HTMLTableCellElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.noWrap  = v}"
  prim__setNoWrap : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setNoWrap : (obj : HTMLTableCellElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.rowSpan"
  prim__rowSpan : AnyPtr -> PrimIO AnyPtr

  export
  rowSpan : (obj : HTMLTableCellElement) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.rowSpan  = v}"
  prim__setRowSpan : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRowSpan : (obj : HTMLTableCellElement) -> (v : UInt32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.scope"
  prim__scope : AnyPtr -> PrimIO AnyPtr

  export
  scope : (obj : HTMLTableCellElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.scope  = v}"
  prim__setScope : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setScope : (obj : HTMLTableCellElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.vAlign"
  prim__vAlign : AnyPtr -> PrimIO AnyPtr

  export
  vAlign : (obj : HTMLTableCellElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.vAlign  = v}"
  prim__setVAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setVAlign : (obj : HTMLTableCellElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : HTMLTableCellElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : HTMLTableCellElement) -> (v : String) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.align  = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlign : (obj : HTMLTableColElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ch"
  prim__ch : AnyPtr -> PrimIO AnyPtr

  export
  ch : (obj : HTMLTableColElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ch  = v}"
  prim__setCh : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCh : (obj : HTMLTableColElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.chOff"
  prim__chOff : AnyPtr -> PrimIO AnyPtr

  export
  chOff : (obj : HTMLTableColElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.chOff  = v}"
  prim__setChOff : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setChOff : (obj : HTMLTableColElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.span"
  prim__span : AnyPtr -> PrimIO AnyPtr

  export
  span : (obj : HTMLTableColElement) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.span  = v}"
  prim__setSpan : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSpan : (obj : HTMLTableColElement) -> (v : UInt32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.vAlign"
  prim__vAlign : AnyPtr -> PrimIO AnyPtr

  export
  vAlign : (obj : HTMLTableColElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.vAlign  = v}"
  prim__setVAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setVAlign : (obj : HTMLTableColElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : HTMLTableColElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : HTMLTableColElement) -> (v : String) -> JSIO ()

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
  
  %foreign "browser:lambda:x=>x.tBodies"
  prim__tBodies : AnyPtr -> PrimIO AnyPtr

  export
  tBodies : (obj : HTMLTableElement) -> JSIO HTMLCollection
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  export
  align : (obj : HTMLTableElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.align  = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlign : (obj : HTMLTableElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.bgColor"
  prim__bgColor : AnyPtr -> PrimIO AnyPtr

  export
  bgColor : (obj : HTMLTableElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.bgColor  = v}"
  prim__setBgColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBgColor : (obj : HTMLTableElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.border"
  prim__border : AnyPtr -> PrimIO AnyPtr

  export
  border : (obj : HTMLTableElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.border  = v}"
  prim__setBorder : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBorder : (obj : HTMLTableElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.caption"
  prim__caption : AnyPtr -> PrimIO AnyPtr

  export
  caption : (obj : HTMLTableElement) -> JSIO (Maybe HTMLTableCaptionElement)

  %foreign "browser:lambda:(x,v)=>{x.caption  = v}"
  prim__setCaption : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCaption :  (obj : HTMLTableElement)
             -> (v : Maybe HTMLTableCaptionElement)
             -> JSIO ()
  
  %foreign "browser:lambda:x=>x.cellPadding"
  prim__cellPadding : AnyPtr -> PrimIO AnyPtr

  export
  cellPadding : (obj : HTMLTableElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.cellPadding  = v}"
  prim__setCellPadding : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCellPadding : (obj : HTMLTableElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.cellSpacing"
  prim__cellSpacing : AnyPtr -> PrimIO AnyPtr

  export
  cellSpacing : (obj : HTMLTableElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.cellSpacing  = v}"
  prim__setCellSpacing : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCellSpacing : (obj : HTMLTableElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.frame"
  prim__frame : AnyPtr -> PrimIO AnyPtr

  export
  frame : (obj : HTMLTableElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.frame  = v}"
  prim__setFrame : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFrame : (obj : HTMLTableElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.rules"
  prim__rules : AnyPtr -> PrimIO AnyPtr

  export
  rules : (obj : HTMLTableElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.rules  = v}"
  prim__setRules : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRules : (obj : HTMLTableElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.summary"
  prim__summary : AnyPtr -> PrimIO AnyPtr

  export
  summary : (obj : HTMLTableElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.summary  = v}"
  prim__setSummary : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSummary : (obj : HTMLTableElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.tFoot"
  prim__tFoot : AnyPtr -> PrimIO AnyPtr

  export
  tFoot : (obj : HTMLTableElement) -> JSIO (Maybe HTMLTableSectionElement)

  %foreign "browser:lambda:(x,v)=>{x.tFoot  = v}"
  prim__setTFoot : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTFoot :  (obj : HTMLTableElement)
           -> (v : Maybe HTMLTableSectionElement)
           -> JSIO ()
  
  %foreign "browser:lambda:x=>x.tHead"
  prim__tHead : AnyPtr -> PrimIO AnyPtr

  export
  tHead : (obj : HTMLTableElement) -> JSIO (Maybe HTMLTableSectionElement)

  %foreign "browser:lambda:(x,v)=>{x.tHead  = v}"
  prim__setTHead : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTHead :  (obj : HTMLTableElement)
           -> (v : Maybe HTMLTableSectionElement)
           -> JSIO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : HTMLTableElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : HTMLTableElement) -> (v : String) -> JSIO ()

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
  
  %foreign "browser:lambda:x=>x.rowIndex"
  prim__rowIndex : AnyPtr -> PrimIO AnyPtr

  export
  rowIndex : (obj : HTMLTableRowElement) -> JSIO Int32
  
  %foreign "browser:lambda:x=>x.sectionRowIndex"
  prim__sectionRowIndex : AnyPtr -> PrimIO AnyPtr

  export
  sectionRowIndex : (obj : HTMLTableRowElement) -> JSIO Int32
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  export
  align : (obj : HTMLTableRowElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.align  = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlign : (obj : HTMLTableRowElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.bgColor"
  prim__bgColor : AnyPtr -> PrimIO AnyPtr

  export
  bgColor : (obj : HTMLTableRowElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.bgColor  = v}"
  prim__setBgColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBgColor : (obj : HTMLTableRowElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ch"
  prim__ch : AnyPtr -> PrimIO AnyPtr

  export
  ch : (obj : HTMLTableRowElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ch  = v}"
  prim__setCh : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCh : (obj : HTMLTableRowElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.chOff"
  prim__chOff : AnyPtr -> PrimIO AnyPtr

  export
  chOff : (obj : HTMLTableRowElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.chOff  = v}"
  prim__setChOff : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setChOff : (obj : HTMLTableRowElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.vAlign"
  prim__vAlign : AnyPtr -> PrimIO AnyPtr

  export
  vAlign : (obj : HTMLTableRowElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.vAlign  = v}"
  prim__setVAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setVAlign : (obj : HTMLTableRowElement) -> (v : String) -> JSIO ()

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
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  export
  align : (obj : HTMLTableSectionElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.align  = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlign : (obj : HTMLTableSectionElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ch"
  prim__ch : AnyPtr -> PrimIO AnyPtr

  export
  ch : (obj : HTMLTableSectionElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ch  = v}"
  prim__setCh : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCh : (obj : HTMLTableSectionElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.chOff"
  prim__chOff : AnyPtr -> PrimIO AnyPtr

  export
  chOff : (obj : HTMLTableSectionElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.chOff  = v}"
  prim__setChOff : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setChOff : (obj : HTMLTableSectionElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.vAlign"
  prim__vAlign : AnyPtr -> PrimIO AnyPtr

  export
  vAlign : (obj : HTMLTableSectionElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.vAlign  = v}"
  prim__setVAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setVAlign : (obj : HTMLTableSectionElement) -> (v : String) -> JSIO ()

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
  
  %foreign "browser:lambda:x=>x.labels"
  prim__labels : AnyPtr -> PrimIO AnyPtr

  export
  labels : (obj : HTMLTextAreaElement) -> JSIO NodeList
  
  %foreign "browser:lambda:x=>x.textLength"
  prim__textLength : AnyPtr -> PrimIO AnyPtr

  export
  textLength : (obj : HTMLTextAreaElement) -> JSIO UInt32
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : HTMLTextAreaElement) -> JSIO String
  
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : AnyPtr -> PrimIO AnyPtr

  export
  validationMessage : (obj : HTMLTextAreaElement) -> JSIO String
  
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : AnyPtr -> PrimIO AnyPtr

  export
  validity : (obj : HTMLTextAreaElement) -> JSIO ValidityState
  
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : AnyPtr -> PrimIO AnyPtr

  export
  willValidate : (obj : HTMLTextAreaElement) -> JSIO Bool
  
  %foreign "browser:lambda:x=>x.autocomplete"
  prim__autocomplete : AnyPtr -> PrimIO AnyPtr

  export
  autocomplete : (obj : HTMLTextAreaElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.autocomplete  = v}"
  prim__setAutocomplete : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAutocomplete : (obj : HTMLTextAreaElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.cols"
  prim__cols : AnyPtr -> PrimIO AnyPtr

  export
  cols : (obj : HTMLTextAreaElement) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.cols  = v}"
  prim__setCols : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCols : (obj : HTMLTextAreaElement) -> (v : UInt32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.defaultValue"
  prim__defaultValue : AnyPtr -> PrimIO AnyPtr

  export
  defaultValue : (obj : HTMLTextAreaElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.defaultValue  = v}"
  prim__setDefaultValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDefaultValue : (obj : HTMLTextAreaElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.dirName"
  prim__dirName : AnyPtr -> PrimIO AnyPtr

  export
  dirName : (obj : HTMLTextAreaElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.dirName  = v}"
  prim__setDirName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDirName : (obj : HTMLTextAreaElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : AnyPtr -> PrimIO AnyPtr

  export
  disabled : (obj : HTMLTextAreaElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.disabled  = v}"
  prim__setDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDisabled : (obj : HTMLTextAreaElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.maxLength"
  prim__maxLength : AnyPtr -> PrimIO AnyPtr

  export
  maxLength : (obj : HTMLTextAreaElement) -> JSIO Int32

  %foreign "browser:lambda:(x,v)=>{x.maxLength  = v}"
  prim__setMaxLength : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMaxLength : (obj : HTMLTextAreaElement) -> (v : Int32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.minLength"
  prim__minLength : AnyPtr -> PrimIO AnyPtr

  export
  minLength : (obj : HTMLTextAreaElement) -> JSIO Int32

  %foreign "browser:lambda:(x,v)=>{x.minLength  = v}"
  prim__setMinLength : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMinLength : (obj : HTMLTextAreaElement) -> (v : Int32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : HTMLTextAreaElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : HTMLTextAreaElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.placeholder"
  prim__placeholder : AnyPtr -> PrimIO AnyPtr

  export
  placeholder : (obj : HTMLTextAreaElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.placeholder  = v}"
  prim__setPlaceholder : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPlaceholder : (obj : HTMLTextAreaElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.readOnly"
  prim__readOnly : AnyPtr -> PrimIO AnyPtr

  export
  readOnly : (obj : HTMLTextAreaElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.readOnly  = v}"
  prim__setReadOnly : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReadOnly : (obj : HTMLTextAreaElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.required"
  prim__required : AnyPtr -> PrimIO AnyPtr

  export
  required : (obj : HTMLTextAreaElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.required  = v}"
  prim__setRequired : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRequired : (obj : HTMLTextAreaElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.rows"
  prim__rows : AnyPtr -> PrimIO AnyPtr

  export
  rows : (obj : HTMLTextAreaElement) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.rows  = v}"
  prim__setRows : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRows : (obj : HTMLTextAreaElement) -> (v : UInt32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.selectionDirection"
  prim__selectionDirection : AnyPtr -> PrimIO AnyPtr

  export
  selectionDirection : (obj : HTMLTextAreaElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.selectionDirection  = v}"
  prim__setSelectionDirection : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSelectionDirection : (obj : HTMLTextAreaElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.selectionEnd"
  prim__selectionEnd : AnyPtr -> PrimIO AnyPtr

  export
  selectionEnd : (obj : HTMLTextAreaElement) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.selectionEnd  = v}"
  prim__setSelectionEnd : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSelectionEnd : (obj : HTMLTextAreaElement) -> (v : UInt32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.selectionStart"
  prim__selectionStart : AnyPtr -> PrimIO AnyPtr

  export
  selectionStart : (obj : HTMLTextAreaElement) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.selectionStart  = v}"
  prim__setSelectionStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSelectionStart : (obj : HTMLTextAreaElement) -> (v : UInt32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : HTMLTextAreaElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue : (obj : HTMLTextAreaElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.wrap"
  prim__wrap : AnyPtr -> PrimIO AnyPtr

  export
  wrap : (obj : HTMLTextAreaElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.wrap  = v}"
  prim__setWrap : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWrap : (obj : HTMLTextAreaElement) -> (v : String) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.dateTime  = v}"
  prim__setDateTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDateTime : (obj : HTMLTimeElement) -> (v : String) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.text  = v}"
  prim__setText : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setText : (obj : HTMLTitleElement) -> (v : String) -> JSIO ()

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
  
  %foreign "browser:lambda:x=>x.track"
  prim__track : AnyPtr -> PrimIO AnyPtr

  export
  track : (obj : HTMLTrackElement) -> JSIO TextTrack
  
  %foreign "browser:lambda:x=>x.default"
  prim__default_ : AnyPtr -> PrimIO AnyPtr

  export
  default_ : (obj : HTMLTrackElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.default  = v}"
  prim__setDefault : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDefault : (obj : HTMLTrackElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.kind"
  prim__kind : AnyPtr -> PrimIO AnyPtr

  export
  kind : (obj : HTMLTrackElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.kind  = v}"
  prim__setKind : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setKind : (obj : HTMLTrackElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.label"
  prim__label : AnyPtr -> PrimIO AnyPtr

  export
  label : (obj : HTMLTrackElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.label  = v}"
  prim__setLabel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLabel : (obj : HTMLTrackElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.src"
  prim__src : AnyPtr -> PrimIO AnyPtr

  export
  src : (obj : HTMLTrackElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.src  = v}"
  prim__setSrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSrc : (obj : HTMLTrackElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.srclang"
  prim__srclang : AnyPtr -> PrimIO AnyPtr

  export
  srclang : (obj : HTMLTrackElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.srclang  = v}"
  prim__setSrclang : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSrclang : (obj : HTMLTrackElement) -> (v : String) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.compact  = v}"
  prim__setCompact : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCompact : (obj : HTMLUListElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : HTMLUListElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : HTMLUListElement) -> (v : String) -> JSIO ()

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
  
  %foreign "browser:lambda:x=>x.videoWidth"
  prim__videoWidth : AnyPtr -> PrimIO AnyPtr

  export
  videoWidth : (obj : HTMLVideoElement) -> JSIO UInt32
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : HTMLVideoElement) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.height  = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeight : (obj : HTMLVideoElement) -> (v : UInt32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.playsInline"
  prim__playsInline : AnyPtr -> PrimIO AnyPtr

  export
  playsInline : (obj : HTMLVideoElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.playsInline  = v}"
  prim__setPlaysInline : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPlaysInline : (obj : HTMLVideoElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.poster"
  prim__poster : AnyPtr -> PrimIO AnyPtr

  export
  poster : (obj : HTMLVideoElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.poster  = v}"
  prim__setPoster : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPoster : (obj : HTMLVideoElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : HTMLVideoElement) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : HTMLVideoElement) -> (v : UInt32) -> JSIO ()

namespace HashChangeEvent
  
  public export
  JSType HashChangeEvent where
    parents =  [ Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.newURL"
  prim__newURL : AnyPtr -> PrimIO AnyPtr

  export
  newURL : (obj : HashChangeEvent) -> JSIO String
  
  %foreign "browser:lambda:x=>x.oldURL"
  prim__oldURL : AnyPtr -> PrimIO AnyPtr

  export
  oldURL : (obj : HashChangeEvent) -> JSIO String

namespace History
  
  public export
  JSType History where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : History) -> JSIO UInt32
  
  %foreign "browser:lambda:x=>x.state"
  prim__state : AnyPtr -> PrimIO AnyPtr

  export
  state : (obj : History) -> JSIO Any
  
  %foreign "browser:lambda:x=>x.scrollRestoration"
  prim__scrollRestoration : AnyPtr -> PrimIO AnyPtr

  export
  scrollRestoration : (obj : History) -> JSIO ScrollRestoration

  %foreign "browser:lambda:(x,v)=>{x.scrollRestoration  = v}"
  prim__setScrollRestoration : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setScrollRestoration : (obj : History) -> (v : ScrollRestoration) -> JSIO ()

namespace ImageBitmap
  
  public export
  JSType ImageBitmap where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : ImageBitmap) -> JSIO UInt32
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : ImageBitmap) -> JSIO UInt32

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

namespace ImageData
  
  public export
  JSType ImageData where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.data"
  prim__data_ : AnyPtr -> PrimIO AnyPtr

  export
  data_ : (obj : ImageData) -> JSIO (JSArray UInt8)
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : ImageData) -> JSIO UInt32
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : ImageData) -> JSIO UInt32

namespace Location
  
  public export
  JSType Location where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.ancestorOrigins"
  prim__ancestorOrigins : AnyPtr -> PrimIO AnyPtr

  export
  ancestorOrigins : (obj : Location) -> JSIO DOMStringList
  
  %foreign "browser:lambda:x=>x.origin"
  prim__origin : AnyPtr -> PrimIO AnyPtr

  export
  origin : (obj : Location) -> JSIO String
  
  %foreign "browser:lambda:x=>x.hash"
  prim__hash : AnyPtr -> PrimIO AnyPtr

  export
  hash : (obj : Location) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.hash  = v}"
  prim__setHash : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHash : (obj : Location) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.host"
  prim__host : AnyPtr -> PrimIO AnyPtr

  export
  host : (obj : Location) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.host  = v}"
  prim__setHost : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHost : (obj : Location) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.hostname"
  prim__hostname : AnyPtr -> PrimIO AnyPtr

  export
  hostname : (obj : Location) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.hostname  = v}"
  prim__setHostname : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHostname : (obj : Location) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.pathname"
  prim__pathname : AnyPtr -> PrimIO AnyPtr

  export
  pathname : (obj : Location) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.pathname  = v}"
  prim__setPathname : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPathname : (obj : Location) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.port"
  prim__port : AnyPtr -> PrimIO AnyPtr

  export
  port : (obj : Location) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.port  = v}"
  prim__setPort : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPort : (obj : Location) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.protocol"
  prim__protocol : AnyPtr -> PrimIO AnyPtr

  export
  protocol : (obj : Location) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.protocol  = v}"
  prim__setProtocol : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setProtocol : (obj : Location) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.search"
  prim__search : AnyPtr -> PrimIO AnyPtr

  export
  search : (obj : Location) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.search  = v}"
  prim__setSearch : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSearch : (obj : Location) -> (v : String) -> JSIO ()

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
  
  %foreign "browser:lambda:x=>x.message"
  prim__message : AnyPtr -> PrimIO AnyPtr

  export
  message : (obj : MediaError) -> JSIO String

namespace MessageChannel
  
  public export
  JSType MessageChannel where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.port1"
  prim__port1 : AnyPtr -> PrimIO AnyPtr

  export
  port1 : (obj : MessageChannel) -> JSIO MessagePort
  
  %foreign "browser:lambda:x=>x.port2"
  prim__port2 : AnyPtr -> PrimIO AnyPtr

  export
  port2 : (obj : MessageChannel) -> JSIO MessagePort

namespace MessageEvent
  
  public export
  JSType MessageEvent where
    parents =  [ Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.data"
  prim__data_ : AnyPtr -> PrimIO AnyPtr

  export
  data_ : (obj : MessageEvent) -> JSIO Any
  
  %foreign "browser:lambda:x=>x.lastEventId"
  prim__lastEventId : AnyPtr -> PrimIO AnyPtr

  export
  lastEventId : (obj : MessageEvent) -> JSIO String
  
  %foreign "browser:lambda:x=>x.origin"
  prim__origin : AnyPtr -> PrimIO AnyPtr

  export
  origin : (obj : MessageEvent) -> JSIO String
  
  %foreign "browser:lambda:x=>x.ports"
  prim__ports : AnyPtr -> PrimIO AnyPtr

  export
  ports : (obj : MessageEvent) -> JSIO (JSArray MessagePort)
  
  %foreign "browser:lambda:x=>x.source"
  prim__source : AnyPtr -> PrimIO AnyPtr

  export
  source : (obj : MessageEvent) -> JSIO (Maybe MessageEventSource)

namespace MessagePort
  
  public export
  JSType MessagePort where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : AnyPtr -> PrimIO AnyPtr

  export
  onmessage : (obj : MessagePort) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onmessage  = v}"
  prim__setOnmessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmessage : (obj : MessagePort) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onmessageerror"
  prim__onmessageerror : AnyPtr -> PrimIO AnyPtr

  export
  onmessageerror : (obj : MessagePort) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onmessageerror  = v}"
  prim__setOnmessageerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmessageerror : (obj : MessagePort) -> (v : EventHandler) -> JSIO ()

namespace MimeType
  
  public export
  JSType MimeType where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.description"
  prim__description : AnyPtr -> PrimIO ()

  export
  description : (obj : MimeType) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.enabledPlugin"
  prim__enabledPlugin : AnyPtr -> PrimIO ()

  export
  enabledPlugin : (obj : MimeType) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.suffixes"
  prim__suffixes : AnyPtr -> PrimIO ()

  export
  suffixes : (obj : MimeType) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO ()

  export
  type : (obj : MimeType) -> JSIO ()

namespace MimeTypeArray
  
  public export
  JSType MimeTypeArray where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : MimeTypeArray) -> JSIO UInt32

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
  
  %foreign "browser:lambda:x=>x.mediaDevices"
  prim__mediaDevices : AnyPtr -> PrimIO AnyPtr

  export
  mediaDevices : (obj : Navigator) -> JSIO MediaDevices
  
  %foreign "browser:lambda:x=>x.permissions"
  prim__permissions : AnyPtr -> PrimIO AnyPtr

  export
  permissions : (obj : Navigator) -> JSIO Permissions
  
  %foreign "browser:lambda:x=>x.serviceWorker"
  prim__serviceWorker : AnyPtr -> PrimIO AnyPtr

  export
  serviceWorker : (obj : Navigator) -> JSIO ServiceWorkerContainer

namespace OffscreenCanvas
  
  public export
  JSType OffscreenCanvas where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : OffscreenCanvas) -> JSIO UInt64

  %foreign "browser:lambda:(x,v)=>{x.height  = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeight : (obj : OffscreenCanvas) -> (v : UInt64) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : OffscreenCanvas) -> JSIO UInt64

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : OffscreenCanvas) -> (v : UInt64) -> JSIO ()

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

namespace PageTransitionEvent
  
  public export
  JSType PageTransitionEvent where
    parents =  [ Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.persisted"
  prim__persisted : AnyPtr -> PrimIO AnyPtr

  export
  persisted : (obj : PageTransitionEvent) -> JSIO Bool

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
  
  %foreign "browser:lambda:x=>x.filename"
  prim__filename : AnyPtr -> PrimIO ()

  export
  filename : (obj : Plugin) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO ()

  export
  length : (obj : Plugin) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO ()

  export
  name : (obj : Plugin) -> JSIO ()

namespace PluginArray
  
  public export
  JSType PluginArray where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : PluginArray) -> JSIO UInt32

namespace PopStateEvent
  
  public export
  JSType PopStateEvent where
    parents =  [ Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.state"
  prim__state : AnyPtr -> PrimIO AnyPtr

  export
  state : (obj : PopStateEvent) -> JSIO Any

namespace PromiseRejectionEvent
  
  public export
  JSType PromiseRejectionEvent where
    parents =  [ Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.promise"
  prim__promise : AnyPtr -> PrimIO AnyPtr

  export
  promise : (obj : PromiseRejectionEvent) -> JSIO (JSPromise Any)
  
  %foreign "browser:lambda:x=>x.reason"
  prim__reason : AnyPtr -> PrimIO AnyPtr

  export
  reason : (obj : PromiseRejectionEvent) -> JSIO Any

namespace RadioNodeList
  
  public export
  JSType RadioNodeList where
    parents =  [ NodeList , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : RadioNodeList) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue : (obj : RadioNodeList) -> (v : String) -> JSIO ()

namespace SharedWorker
  
  public export
  JSType SharedWorker where
    parents =  [ EventTarget , JSObject ]

    mixins =  [ AbstractWorker ]
  
  %foreign "browser:lambda:x=>x.port"
  prim__port : AnyPtr -> PrimIO AnyPtr

  export
  port : (obj : SharedWorker) -> JSIO MessagePort

namespace SharedWorkerGlobalScope
  
  public export
  JSType SharedWorkerGlobalScope where
    parents =  [ WorkerGlobalScope , EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : SharedWorkerGlobalScope) -> JSIO String
  
  %foreign "browser:lambda:x=>x.onconnect"
  prim__onconnect : AnyPtr -> PrimIO AnyPtr

  export
  onconnect : (obj : SharedWorkerGlobalScope) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onconnect  = v}"
  prim__setOnconnect : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnconnect :  (obj : SharedWorkerGlobalScope)
               -> (v : EventHandler)
               -> JSIO ()

namespace Storage
  
  public export
  JSType Storage where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : Storage) -> JSIO UInt32

namespace StorageEvent
  
  public export
  JSType StorageEvent where
    parents =  [ Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.key"
  prim__key : AnyPtr -> PrimIO AnyPtr

  export
  key : (obj : StorageEvent) -> JSIO (Maybe String)
  
  %foreign "browser:lambda:x=>x.newValue"
  prim__newValue : AnyPtr -> PrimIO AnyPtr

  export
  newValue : (obj : StorageEvent) -> JSIO (Maybe String)
  
  %foreign "browser:lambda:x=>x.oldValue"
  prim__oldValue : AnyPtr -> PrimIO AnyPtr

  export
  oldValue : (obj : StorageEvent) -> JSIO (Maybe String)
  
  %foreign "browser:lambda:x=>x.storageArea"
  prim__storageArea : AnyPtr -> PrimIO AnyPtr

  export
  storageArea : (obj : StorageEvent) -> JSIO (Maybe Storage)
  
  %foreign "browser:lambda:x=>x.url"
  prim__url : AnyPtr -> PrimIO AnyPtr

  export
  url : (obj : StorageEvent) -> JSIO String

namespace SubmitEvent
  
  public export
  JSType SubmitEvent where
    parents =  [ Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.submitter"
  prim__submitter : AnyPtr -> PrimIO AnyPtr

  export
  submitter : (obj : SubmitEvent) -> JSIO (Maybe HTMLElement)

namespace TextMetrics
  
  public export
  JSType TextMetrics where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.actualBoundingBoxAscent"
  prim__actualBoundingBoxAscent : AnyPtr -> PrimIO AnyPtr

  export
  actualBoundingBoxAscent : (obj : TextMetrics) -> JSIO Double
  
  %foreign "browser:lambda:x=>x.actualBoundingBoxDescent"
  prim__actualBoundingBoxDescent : AnyPtr -> PrimIO AnyPtr

  export
  actualBoundingBoxDescent : (obj : TextMetrics) -> JSIO Double
  
  %foreign "browser:lambda:x=>x.actualBoundingBoxLeft"
  prim__actualBoundingBoxLeft : AnyPtr -> PrimIO AnyPtr

  export
  actualBoundingBoxLeft : (obj : TextMetrics) -> JSIO Double
  
  %foreign "browser:lambda:x=>x.actualBoundingBoxRight"
  prim__actualBoundingBoxRight : AnyPtr -> PrimIO AnyPtr

  export
  actualBoundingBoxRight : (obj : TextMetrics) -> JSIO Double
  
  %foreign "browser:lambda:x=>x.alphabeticBaseline"
  prim__alphabeticBaseline : AnyPtr -> PrimIO AnyPtr

  export
  alphabeticBaseline : (obj : TextMetrics) -> JSIO Double
  
  %foreign "browser:lambda:x=>x.emHeightAscent"
  prim__emHeightAscent : AnyPtr -> PrimIO AnyPtr

  export
  emHeightAscent : (obj : TextMetrics) -> JSIO Double
  
  %foreign "browser:lambda:x=>x.emHeightDescent"
  prim__emHeightDescent : AnyPtr -> PrimIO AnyPtr

  export
  emHeightDescent : (obj : TextMetrics) -> JSIO Double
  
  %foreign "browser:lambda:x=>x.fontBoundingBoxAscent"
  prim__fontBoundingBoxAscent : AnyPtr -> PrimIO AnyPtr

  export
  fontBoundingBoxAscent : (obj : TextMetrics) -> JSIO Double
  
  %foreign "browser:lambda:x=>x.fontBoundingBoxDescent"
  prim__fontBoundingBoxDescent : AnyPtr -> PrimIO AnyPtr

  export
  fontBoundingBoxDescent : (obj : TextMetrics) -> JSIO Double
  
  %foreign "browser:lambda:x=>x.hangingBaseline"
  prim__hangingBaseline : AnyPtr -> PrimIO AnyPtr

  export
  hangingBaseline : (obj : TextMetrics) -> JSIO Double
  
  %foreign "browser:lambda:x=>x.ideographicBaseline"
  prim__ideographicBaseline : AnyPtr -> PrimIO AnyPtr

  export
  ideographicBaseline : (obj : TextMetrics) -> JSIO Double
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : TextMetrics) -> JSIO Double

namespace TextTrack
  
  public export
  JSType TextTrack where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.activeCues"
  prim__activeCues : AnyPtr -> PrimIO AnyPtr

  export
  activeCues : (obj : TextTrack) -> JSIO (Maybe TextTrackCueList)
  
  %foreign "browser:lambda:x=>x.cues"
  prim__cues : AnyPtr -> PrimIO AnyPtr

  export
  cues : (obj : TextTrack) -> JSIO (Maybe TextTrackCueList)
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr

  export
  id : (obj : TextTrack) -> JSIO String
  
  %foreign "browser:lambda:x=>x.inBandMetadataTrackDispatchType"
  prim__inBandMetadataTrackDispatchType : AnyPtr -> PrimIO AnyPtr

  export
  inBandMetadataTrackDispatchType : (obj : TextTrack) -> JSIO String
  
  %foreign "browser:lambda:x=>x.kind"
  prim__kind : AnyPtr -> PrimIO AnyPtr

  export
  kind : (obj : TextTrack) -> JSIO TextTrackKind
  
  %foreign "browser:lambda:x=>x.label"
  prim__label : AnyPtr -> PrimIO AnyPtr

  export
  label : (obj : TextTrack) -> JSIO String
  
  %foreign "browser:lambda:x=>x.language"
  prim__language : AnyPtr -> PrimIO AnyPtr

  export
  language : (obj : TextTrack) -> JSIO String
  
  %foreign "browser:lambda:x=>x.sourceBuffer"
  prim__sourceBuffer : AnyPtr -> PrimIO AnyPtr

  export
  sourceBuffer : (obj : TextTrack) -> JSIO (Maybe SourceBuffer)
  
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : AnyPtr -> PrimIO AnyPtr

  export
  mode : (obj : TextTrack) -> JSIO TextTrackMode

  %foreign "browser:lambda:(x,v)=>{x.mode  = v}"
  prim__setMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMode : (obj : TextTrack) -> (v : TextTrackMode) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.oncuechange"
  prim__oncuechange : AnyPtr -> PrimIO AnyPtr

  export
  oncuechange : (obj : TextTrack) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.oncuechange  = v}"
  prim__setOncuechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOncuechange : (obj : TextTrack) -> (v : EventHandler) -> JSIO ()

namespace TextTrackCue
  
  public export
  JSType TextTrackCue where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.track"
  prim__track : AnyPtr -> PrimIO AnyPtr

  export
  track : (obj : TextTrackCue) -> JSIO (Maybe TextTrack)
  
  %foreign "browser:lambda:x=>x.endTime"
  prim__endTime : AnyPtr -> PrimIO AnyPtr

  export
  endTime : (obj : TextTrackCue) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.endTime  = v}"
  prim__setEndTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEndTime : (obj : TextTrackCue) -> (v : Double) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr

  export
  id : (obj : TextTrackCue) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.id  = v}"
  prim__setId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setId : (obj : TextTrackCue) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onenter"
  prim__onenter : AnyPtr -> PrimIO AnyPtr

  export
  onenter : (obj : TextTrackCue) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onenter  = v}"
  prim__setOnenter : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnenter : (obj : TextTrackCue) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onexit"
  prim__onexit : AnyPtr -> PrimIO AnyPtr

  export
  onexit : (obj : TextTrackCue) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onexit  = v}"
  prim__setOnexit : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnexit : (obj : TextTrackCue) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.pauseOnExit"
  prim__pauseOnExit : AnyPtr -> PrimIO AnyPtr

  export
  pauseOnExit : (obj : TextTrackCue) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.pauseOnExit  = v}"
  prim__setPauseOnExit : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPauseOnExit : (obj : TextTrackCue) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.startTime"
  prim__startTime : AnyPtr -> PrimIO AnyPtr

  export
  startTime : (obj : TextTrackCue) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.startTime  = v}"
  prim__setStartTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStartTime : (obj : TextTrackCue) -> (v : Double) -> JSIO ()

namespace TextTrackCueList
  
  public export
  JSType TextTrackCueList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : TextTrackCueList) -> JSIO UInt32

namespace TextTrackList
  
  public export
  JSType TextTrackList where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : TextTrackList) -> JSIO UInt32
  
  %foreign "browser:lambda:x=>x.onaddtrack"
  prim__onaddtrack : AnyPtr -> PrimIO AnyPtr

  export
  onaddtrack : (obj : TextTrackList) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onaddtrack  = v}"
  prim__setOnaddtrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnaddtrack : (obj : TextTrackList) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onchange"
  prim__onchange : AnyPtr -> PrimIO AnyPtr

  export
  onchange : (obj : TextTrackList) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onchange  = v}"
  prim__setOnchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnchange : (obj : TextTrackList) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onremovetrack"
  prim__onremovetrack : AnyPtr -> PrimIO AnyPtr

  export
  onremovetrack : (obj : TextTrackList) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onremovetrack  = v}"
  prim__setOnremovetrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnremovetrack : (obj : TextTrackList) -> (v : EventHandler) -> JSIO ()

namespace TimeRanges
  
  public export
  JSType TimeRanges where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : TimeRanges) -> JSIO UInt32

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

namespace ValidityState
  
  public export
  JSType ValidityState where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.badInput"
  prim__badInput : AnyPtr -> PrimIO AnyPtr

  export
  badInput : (obj : ValidityState) -> JSIO Bool
  
  %foreign "browser:lambda:x=>x.customError"
  prim__customError : AnyPtr -> PrimIO AnyPtr

  export
  customError : (obj : ValidityState) -> JSIO Bool
  
  %foreign "browser:lambda:x=>x.patternMismatch"
  prim__patternMismatch : AnyPtr -> PrimIO AnyPtr

  export
  patternMismatch : (obj : ValidityState) -> JSIO Bool
  
  %foreign "browser:lambda:x=>x.rangeOverflow"
  prim__rangeOverflow : AnyPtr -> PrimIO AnyPtr

  export
  rangeOverflow : (obj : ValidityState) -> JSIO Bool
  
  %foreign "browser:lambda:x=>x.rangeUnderflow"
  prim__rangeUnderflow : AnyPtr -> PrimIO AnyPtr

  export
  rangeUnderflow : (obj : ValidityState) -> JSIO Bool
  
  %foreign "browser:lambda:x=>x.stepMismatch"
  prim__stepMismatch : AnyPtr -> PrimIO AnyPtr

  export
  stepMismatch : (obj : ValidityState) -> JSIO Bool
  
  %foreign "browser:lambda:x=>x.tooLong"
  prim__tooLong : AnyPtr -> PrimIO AnyPtr

  export
  tooLong : (obj : ValidityState) -> JSIO Bool
  
  %foreign "browser:lambda:x=>x.tooShort"
  prim__tooShort : AnyPtr -> PrimIO AnyPtr

  export
  tooShort : (obj : ValidityState) -> JSIO Bool
  
  %foreign "browser:lambda:x=>x.typeMismatch"
  prim__typeMismatch : AnyPtr -> PrimIO AnyPtr

  export
  typeMismatch : (obj : ValidityState) -> JSIO Bool
  
  %foreign "browser:lambda:x=>x.valid"
  prim__valid : AnyPtr -> PrimIO AnyPtr

  export
  valid : (obj : ValidityState) -> JSIO Bool
  
  %foreign "browser:lambda:x=>x.valueMissing"
  prim__valueMissing : AnyPtr -> PrimIO AnyPtr

  export
  valueMissing : (obj : ValidityState) -> JSIO Bool

namespace VideoTrack
  
  public export
  JSType VideoTrack where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr

  export
  id : (obj : VideoTrack) -> JSIO String
  
  %foreign "browser:lambda:x=>x.kind"
  prim__kind : AnyPtr -> PrimIO AnyPtr

  export
  kind : (obj : VideoTrack) -> JSIO String
  
  %foreign "browser:lambda:x=>x.label"
  prim__label : AnyPtr -> PrimIO AnyPtr

  export
  label : (obj : VideoTrack) -> JSIO String
  
  %foreign "browser:lambda:x=>x.language"
  prim__language : AnyPtr -> PrimIO AnyPtr

  export
  language : (obj : VideoTrack) -> JSIO String
  
  %foreign "browser:lambda:x=>x.sourceBuffer"
  prim__sourceBuffer : AnyPtr -> PrimIO AnyPtr

  export
  sourceBuffer : (obj : VideoTrack) -> JSIO (Maybe SourceBuffer)
  
  %foreign "browser:lambda:x=>x.selected"
  prim__selected : AnyPtr -> PrimIO AnyPtr

  export
  selected : (obj : VideoTrack) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.selected  = v}"
  prim__setSelected : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSelected : (obj : VideoTrack) -> (v : Bool) -> JSIO ()

namespace VideoTrackList
  
  public export
  JSType VideoTrackList where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : VideoTrackList) -> JSIO UInt32
  
  %foreign "browser:lambda:x=>x.selectedIndex"
  prim__selectedIndex : AnyPtr -> PrimIO AnyPtr

  export
  selectedIndex : (obj : VideoTrackList) -> JSIO Int32
  
  %foreign "browser:lambda:x=>x.onaddtrack"
  prim__onaddtrack : AnyPtr -> PrimIO AnyPtr

  export
  onaddtrack : (obj : VideoTrackList) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onaddtrack  = v}"
  prim__setOnaddtrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnaddtrack : (obj : VideoTrackList) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onchange"
  prim__onchange : AnyPtr -> PrimIO AnyPtr

  export
  onchange : (obj : VideoTrackList) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onchange  = v}"
  prim__setOnchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnchange : (obj : VideoTrackList) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onremovetrack"
  prim__onremovetrack : AnyPtr -> PrimIO AnyPtr

  export
  onremovetrack : (obj : VideoTrackList) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onremovetrack  = v}"
  prim__setOnremovetrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnremovetrack : (obj : VideoTrackList) -> (v : EventHandler) -> JSIO ()

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
  
  %foreign "browser:lambda:x=>x.extensions"
  prim__extensions : AnyPtr -> PrimIO AnyPtr

  export
  extensions : (obj : WebSocket) -> JSIO String
  
  %foreign "browser:lambda:x=>x.protocol"
  prim__protocol : AnyPtr -> PrimIO AnyPtr

  export
  protocol : (obj : WebSocket) -> JSIO String
  
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : AnyPtr -> PrimIO AnyPtr

  export
  readyState : (obj : WebSocket) -> JSIO UInt16
  
  %foreign "browser:lambda:x=>x.url"
  prim__url : AnyPtr -> PrimIO AnyPtr

  export
  url : (obj : WebSocket) -> JSIO String
  
  %foreign "browser:lambda:x=>x.binaryType"
  prim__binaryType : AnyPtr -> PrimIO AnyPtr

  export
  binaryType : (obj : WebSocket) -> JSIO BinaryType

  %foreign "browser:lambda:(x,v)=>{x.binaryType  = v}"
  prim__setBinaryType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBinaryType : (obj : WebSocket) -> (v : BinaryType) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onclose"
  prim__onclose : AnyPtr -> PrimIO AnyPtr

  export
  onclose : (obj : WebSocket) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onclose  = v}"
  prim__setOnclose : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnclose : (obj : WebSocket) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : AnyPtr -> PrimIO AnyPtr

  export
  onerror : (obj : WebSocket) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onerror  = v}"
  prim__setOnerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnerror : (obj : WebSocket) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : AnyPtr -> PrimIO AnyPtr

  export
  onmessage : (obj : WebSocket) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onmessage  = v}"
  prim__setOnmessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmessage : (obj : WebSocket) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onopen"
  prim__onopen : AnyPtr -> PrimIO AnyPtr

  export
  onopen : (obj : WebSocket) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onopen  = v}"
  prim__setOnopen : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnopen : (obj : WebSocket) -> (v : EventHandler) -> JSIO ()

namespace Window
  
  public export
  JSType Window where
    parents =  [ EventTarget , JSObject ]

    mixins =  [ GlobalEventHandlers , WindowEventHandlers ]
  
  %foreign "browser:lambda:x=>x.closed"
  prim__closed : AnyPtr -> PrimIO AnyPtr

  export
  closed : (obj : Window) -> JSIO Bool
  
  %foreign "browser:lambda:x=>x.customElements"
  prim__customElements : AnyPtr -> PrimIO AnyPtr

  export
  customElements : (obj : Window) -> JSIO CustomElementRegistry
  
  %foreign "browser:lambda:x=>x.document"
  prim__document : AnyPtr -> PrimIO AnyPtr

  export
  document : (obj : Window) -> JSIO Document
  
  %foreign "browser:lambda:x=>x.event"
  prim__event : AnyPtr -> PrimIO AnyPtr

  export
  event : (obj : Window) -> JSIO (NS I [ Event , Undefined ])
  
  %foreign "browser:lambda:x=>x.external"
  prim__external : AnyPtr -> PrimIO AnyPtr

  export
  external : (obj : Window) -> JSIO External
  
  %foreign "browser:lambda:x=>x.frameElement"
  prim__frameElement : AnyPtr -> PrimIO AnyPtr

  export
  frameElement : (obj : Window) -> JSIO (Maybe Element)
  
  %foreign "browser:lambda:x=>x.frames"
  prim__frames : AnyPtr -> PrimIO AnyPtr

  export
  frames : (obj : Window) -> JSIO WindowProxy
  
  %foreign "browser:lambda:x=>x.history"
  prim__history : AnyPtr -> PrimIO AnyPtr

  export
  history : (obj : Window) -> JSIO History
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : Window) -> JSIO UInt32
  
  %foreign "browser:lambda:x=>x.location"
  prim__location : AnyPtr -> PrimIO AnyPtr

  export
  location : (obj : Window) -> JSIO Location
  
  %foreign "browser:lambda:x=>x.locationbar"
  prim__locationbar : AnyPtr -> PrimIO AnyPtr

  export
  locationbar : (obj : Window) -> JSIO BarProp
  
  %foreign "browser:lambda:x=>x.menubar"
  prim__menubar : AnyPtr -> PrimIO AnyPtr

  export
  menubar : (obj : Window) -> JSIO BarProp
  
  %foreign "browser:lambda:x=>x.navigator"
  prim__navigator : AnyPtr -> PrimIO AnyPtr

  export
  navigator : (obj : Window) -> JSIO Navigator
  
  %foreign "browser:lambda:x=>x.originAgentCluster"
  prim__originAgentCluster : AnyPtr -> PrimIO AnyPtr

  export
  originAgentCluster : (obj : Window) -> JSIO Bool
  
  %foreign "browser:lambda:x=>x.parent"
  prim__parent : AnyPtr -> PrimIO AnyPtr

  export
  parent : (obj : Window) -> JSIO (Maybe WindowProxy)
  
  %foreign "browser:lambda:x=>x.personalbar"
  prim__personalbar : AnyPtr -> PrimIO AnyPtr

  export
  personalbar : (obj : Window) -> JSIO BarProp
  
  %foreign "browser:lambda:x=>x.scrollbars"
  prim__scrollbars : AnyPtr -> PrimIO AnyPtr

  export
  scrollbars : (obj : Window) -> JSIO BarProp
  
  %foreign "browser:lambda:x=>x.self"
  prim__self : AnyPtr -> PrimIO AnyPtr

  export
  self : (obj : Window) -> JSIO WindowProxy
  
  %foreign "browser:lambda:x=>x.statusbar"
  prim__statusbar : AnyPtr -> PrimIO AnyPtr

  export
  statusbar : (obj : Window) -> JSIO BarProp
  
  %foreign "browser:lambda:x=>x.toolbar"
  prim__toolbar : AnyPtr -> PrimIO AnyPtr

  export
  toolbar : (obj : Window) -> JSIO BarProp
  
  %foreign "browser:lambda:x=>x.top"
  prim__top : AnyPtr -> PrimIO AnyPtr

  export
  top : (obj : Window) -> JSIO (Maybe WindowProxy)
  
  %foreign "browser:lambda:x=>x.window"
  prim__window : AnyPtr -> PrimIO AnyPtr

  export
  window : (obj : Window) -> JSIO WindowProxy
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : Window) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : Window) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.opener"
  prim__opener : AnyPtr -> PrimIO AnyPtr

  export
  opener : (obj : Window) -> JSIO Any

  %foreign "browser:lambda:(x,v)=>{x.opener  = v}"
  prim__setOpener : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOpener : (obj : Window) -> (v : Any) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.status"
  prim__status : AnyPtr -> PrimIO AnyPtr

  export
  status : (obj : Window) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.status  = v}"
  prim__setStatus : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStatus : (obj : Window) -> (v : String) -> JSIO ()

namespace Worker
  
  public export
  JSType Worker where
    parents =  [ EventTarget , JSObject ]

    mixins =  [ AbstractWorker ]
  
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : AnyPtr -> PrimIO AnyPtr

  export
  onmessage : (obj : Worker) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onmessage  = v}"
  prim__setOnmessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmessage : (obj : Worker) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onmessageerror"
  prim__onmessageerror : AnyPtr -> PrimIO AnyPtr

  export
  onmessageerror : (obj : Worker) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onmessageerror  = v}"
  prim__setOnmessageerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmessageerror : (obj : Worker) -> (v : EventHandler) -> JSIO ()

namespace WorkerGlobalScope
  
  public export
  JSType WorkerGlobalScope where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.location"
  prim__location : AnyPtr -> PrimIO AnyPtr

  export
  location : (obj : WorkerGlobalScope) -> JSIO WorkerLocation
  
  %foreign "browser:lambda:x=>x.navigator"
  prim__navigator : AnyPtr -> PrimIO AnyPtr

  export
  navigator : (obj : WorkerGlobalScope) -> JSIO WorkerNavigator
  
  %foreign "browser:lambda:x=>x.self"
  prim__self : AnyPtr -> PrimIO AnyPtr

  export
  self : (obj : WorkerGlobalScope) -> JSIO WorkerGlobalScope
  
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : AnyPtr -> PrimIO AnyPtr

  export
  onerror : (obj : WorkerGlobalScope) -> JSIO OnErrorEventHandler

  %foreign "browser:lambda:(x,v)=>{x.onerror  = v}"
  prim__setOnerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnerror : (obj : WorkerGlobalScope) -> (v : OnErrorEventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onlanguagechange"
  prim__onlanguagechange : AnyPtr -> PrimIO AnyPtr

  export
  onlanguagechange : (obj : WorkerGlobalScope) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onlanguagechange  = v}"
  prim__setOnlanguagechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnlanguagechange :  (obj : WorkerGlobalScope)
                      -> (v : EventHandler)
                      -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onoffline"
  prim__onoffline : AnyPtr -> PrimIO AnyPtr

  export
  onoffline : (obj : WorkerGlobalScope) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onoffline  = v}"
  prim__setOnoffline : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnoffline : (obj : WorkerGlobalScope) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ononline"
  prim__ononline : AnyPtr -> PrimIO AnyPtr

  export
  ononline : (obj : WorkerGlobalScope) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.ononline  = v}"
  prim__setOnonline : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnonline : (obj : WorkerGlobalScope) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onrejectionhandled"
  prim__onrejectionhandled : AnyPtr -> PrimIO AnyPtr

  export
  onrejectionhandled : (obj : WorkerGlobalScope) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onrejectionhandled  = v}"
  prim__setOnrejectionhandled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnrejectionhandled :  (obj : WorkerGlobalScope)
                        -> (v : EventHandler)
                        -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onunhandledrejection"
  prim__onunhandledrejection : AnyPtr -> PrimIO AnyPtr

  export
  onunhandledrejection : (obj : WorkerGlobalScope) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onunhandledrejection  = v}"
  prim__setOnunhandledrejection : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnunhandledrejection :  (obj : WorkerGlobalScope)
                          -> (v : EventHandler)
                          -> JSIO ()

namespace WorkerLocation
  
  public export
  JSType WorkerLocation where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.hash"
  prim__hash : AnyPtr -> PrimIO AnyPtr

  export
  hash : (obj : WorkerLocation) -> JSIO String
  
  %foreign "browser:lambda:x=>x.host"
  prim__host : AnyPtr -> PrimIO AnyPtr

  export
  host : (obj : WorkerLocation) -> JSIO String
  
  %foreign "browser:lambda:x=>x.hostname"
  prim__hostname : AnyPtr -> PrimIO AnyPtr

  export
  hostname : (obj : WorkerLocation) -> JSIO String
  
  %foreign "browser:lambda:x=>x.origin"
  prim__origin : AnyPtr -> PrimIO AnyPtr

  export
  origin : (obj : WorkerLocation) -> JSIO String
  
  %foreign "browser:lambda:x=>x.pathname"
  prim__pathname : AnyPtr -> PrimIO AnyPtr

  export
  pathname : (obj : WorkerLocation) -> JSIO String
  
  %foreign "browser:lambda:x=>x.port"
  prim__port : AnyPtr -> PrimIO AnyPtr

  export
  port : (obj : WorkerLocation) -> JSIO String
  
  %foreign "browser:lambda:x=>x.protocol"
  prim__protocol : AnyPtr -> PrimIO AnyPtr

  export
  protocol : (obj : WorkerLocation) -> JSIO String
  
  %foreign "browser:lambda:x=>x.search"
  prim__search : AnyPtr -> PrimIO AnyPtr

  export
  search : (obj : WorkerLocation) -> JSIO String

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
  
  %foreign "browser:lambda:x=>x.serviceWorker"
  prim__serviceWorker : AnyPtr -> PrimIO AnyPtr

  export
  serviceWorker : (obj : WorkerNavigator) -> JSIO ServiceWorkerContainer

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

  %foreign "browser:lambda:(x,v)=>{x.ariaAtomic  = v}"
  prim__setAriaAtomic : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaAtomic : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaAutoComplete"
  prim__ariaAutoComplete : AnyPtr -> PrimIO AnyPtr

  export
  ariaAutoComplete : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaAutoComplete  = v}"
  prim__setAriaAutoComplete : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaAutoComplete : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaBusy"
  prim__ariaBusy : AnyPtr -> PrimIO AnyPtr

  export
  ariaBusy : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaBusy  = v}"
  prim__setAriaBusy : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaBusy : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaChecked"
  prim__ariaChecked : AnyPtr -> PrimIO AnyPtr

  export
  ariaChecked : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaChecked  = v}"
  prim__setAriaChecked : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaChecked : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaColCount"
  prim__ariaColCount : AnyPtr -> PrimIO AnyPtr

  export
  ariaColCount : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaColCount  = v}"
  prim__setAriaColCount : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaColCount : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaColIndex"
  prim__ariaColIndex : AnyPtr -> PrimIO AnyPtr

  export
  ariaColIndex : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaColIndex  = v}"
  prim__setAriaColIndex : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaColIndex : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaColIndexText"
  prim__ariaColIndexText : AnyPtr -> PrimIO AnyPtr

  export
  ariaColIndexText : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaColIndexText  = v}"
  prim__setAriaColIndexText : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaColIndexText : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaColSpan"
  prim__ariaColSpan : AnyPtr -> PrimIO AnyPtr

  export
  ariaColSpan : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaColSpan  = v}"
  prim__setAriaColSpan : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaColSpan : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaCurrent"
  prim__ariaCurrent : AnyPtr -> PrimIO AnyPtr

  export
  ariaCurrent : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaCurrent  = v}"
  prim__setAriaCurrent : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaCurrent : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaDescription"
  prim__ariaDescription : AnyPtr -> PrimIO AnyPtr

  export
  ariaDescription : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaDescription  = v}"
  prim__setAriaDescription : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaDescription : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaDisabled"
  prim__ariaDisabled : AnyPtr -> PrimIO AnyPtr

  export
  ariaDisabled : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaDisabled  = v}"
  prim__setAriaDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaDisabled : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaExpanded"
  prim__ariaExpanded : AnyPtr -> PrimIO AnyPtr

  export
  ariaExpanded : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaExpanded  = v}"
  prim__setAriaExpanded : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaExpanded : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaHasPopup"
  prim__ariaHasPopup : AnyPtr -> PrimIO AnyPtr

  export
  ariaHasPopup : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaHasPopup  = v}"
  prim__setAriaHasPopup : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaHasPopup : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaHidden"
  prim__ariaHidden : AnyPtr -> PrimIO AnyPtr

  export
  ariaHidden : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaHidden  = v}"
  prim__setAriaHidden : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaHidden : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaInvalid"
  prim__ariaInvalid : AnyPtr -> PrimIO AnyPtr

  export
  ariaInvalid : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaInvalid  = v}"
  prim__setAriaInvalid : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaInvalid : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaKeyShortcuts"
  prim__ariaKeyShortcuts : AnyPtr -> PrimIO AnyPtr

  export
  ariaKeyShortcuts : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaKeyShortcuts  = v}"
  prim__setAriaKeyShortcuts : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaKeyShortcuts : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaLabel"
  prim__ariaLabel : AnyPtr -> PrimIO AnyPtr

  export
  ariaLabel : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaLabel  = v}"
  prim__setAriaLabel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaLabel : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaLevel"
  prim__ariaLevel : AnyPtr -> PrimIO AnyPtr

  export
  ariaLevel : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaLevel  = v}"
  prim__setAriaLevel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaLevel : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaLive"
  prim__ariaLive : AnyPtr -> PrimIO AnyPtr

  export
  ariaLive : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaLive  = v}"
  prim__setAriaLive : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaLive : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaModal"
  prim__ariaModal : AnyPtr -> PrimIO AnyPtr

  export
  ariaModal : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaModal  = v}"
  prim__setAriaModal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaModal : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaMultiLine"
  prim__ariaMultiLine : AnyPtr -> PrimIO AnyPtr

  export
  ariaMultiLine : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaMultiLine  = v}"
  prim__setAriaMultiLine : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaMultiLine : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaMultiSelectable"
  prim__ariaMultiSelectable : AnyPtr -> PrimIO AnyPtr

  export
  ariaMultiSelectable : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaMultiSelectable  = v}"
  prim__setAriaMultiSelectable : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaMultiSelectable : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaOrientation"
  prim__ariaOrientation : AnyPtr -> PrimIO AnyPtr

  export
  ariaOrientation : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaOrientation  = v}"
  prim__setAriaOrientation : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaOrientation : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaPlaceholder"
  prim__ariaPlaceholder : AnyPtr -> PrimIO AnyPtr

  export
  ariaPlaceholder : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaPlaceholder  = v}"
  prim__setAriaPlaceholder : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaPlaceholder : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaPosInSet"
  prim__ariaPosInSet : AnyPtr -> PrimIO AnyPtr

  export
  ariaPosInSet : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaPosInSet  = v}"
  prim__setAriaPosInSet : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaPosInSet : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaPressed"
  prim__ariaPressed : AnyPtr -> PrimIO AnyPtr

  export
  ariaPressed : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaPressed  = v}"
  prim__setAriaPressed : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaPressed : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaReadOnly"
  prim__ariaReadOnly : AnyPtr -> PrimIO AnyPtr

  export
  ariaReadOnly : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaReadOnly  = v}"
  prim__setAriaReadOnly : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaReadOnly : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaRequired"
  prim__ariaRequired : AnyPtr -> PrimIO AnyPtr

  export
  ariaRequired : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaRequired  = v}"
  prim__setAriaRequired : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaRequired : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaRoleDescription"
  prim__ariaRoleDescription : AnyPtr -> PrimIO AnyPtr

  export
  ariaRoleDescription : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaRoleDescription  = v}"
  prim__setAriaRoleDescription : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaRoleDescription : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaRowCount"
  prim__ariaRowCount : AnyPtr -> PrimIO AnyPtr

  export
  ariaRowCount : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaRowCount  = v}"
  prim__setAriaRowCount : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaRowCount : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaRowIndex"
  prim__ariaRowIndex : AnyPtr -> PrimIO AnyPtr

  export
  ariaRowIndex : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaRowIndex  = v}"
  prim__setAriaRowIndex : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaRowIndex : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaRowIndexText"
  prim__ariaRowIndexText : AnyPtr -> PrimIO AnyPtr

  export
  ariaRowIndexText : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaRowIndexText  = v}"
  prim__setAriaRowIndexText : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaRowIndexText : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaRowSpan"
  prim__ariaRowSpan : AnyPtr -> PrimIO AnyPtr

  export
  ariaRowSpan : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaRowSpan  = v}"
  prim__setAriaRowSpan : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaRowSpan : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaSelected"
  prim__ariaSelected : AnyPtr -> PrimIO AnyPtr

  export
  ariaSelected : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaSelected  = v}"
  prim__setAriaSelected : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaSelected : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaSetSize"
  prim__ariaSetSize : AnyPtr -> PrimIO AnyPtr

  export
  ariaSetSize : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaSetSize  = v}"
  prim__setAriaSetSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaSetSize : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaSort"
  prim__ariaSort : AnyPtr -> PrimIO AnyPtr

  export
  ariaSort : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaSort  = v}"
  prim__setAriaSort : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaSort : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaValueMax"
  prim__ariaValueMax : AnyPtr -> PrimIO AnyPtr

  export
  ariaValueMax : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaValueMax  = v}"
  prim__setAriaValueMax : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaValueMax : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaValueMin"
  prim__ariaValueMin : AnyPtr -> PrimIO AnyPtr

  export
  ariaValueMin : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaValueMin  = v}"
  prim__setAriaValueMin : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaValueMin : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaValueNow"
  prim__ariaValueNow : AnyPtr -> PrimIO AnyPtr

  export
  ariaValueNow : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaValueNow  = v}"
  prim__setAriaValueNow : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaValueNow : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ariaValueText"
  prim__ariaValueText : AnyPtr -> PrimIO AnyPtr

  export
  ariaValueText : (obj : ARIAMixin) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ariaValueText  = v}"
  prim__setAriaValueText : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAriaValueText : (obj : ARIAMixin) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.role"
  prim__role : AnyPtr -> PrimIO AnyPtr

  export
  role : (obj : ARIAMixin) -> JSIO (Maybe String)

  %foreign "browser:lambda:(x,v)=>{x.role  = v}"
  prim__setRole : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRole : (obj : ARIAMixin) -> (v : Maybe String) -> JSIO ()

namespace AbstractWorker
  
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : AnyPtr -> PrimIO AnyPtr

  export
  onerror : (obj : AbstractWorker) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onerror  = v}"
  prim__setOnerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnerror : (obj : AbstractWorker) -> (v : EventHandler) -> JSIO ()

namespace CanvasCompositing
  
  %foreign "browser:lambda:x=>x.globalAlpha"
  prim__globalAlpha : AnyPtr -> PrimIO AnyPtr

  export
  globalAlpha : (obj : CanvasCompositing) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.globalAlpha  = v}"
  prim__setGlobalAlpha : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setGlobalAlpha : (obj : CanvasCompositing) -> (v : Double) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.globalCompositeOperation"
  prim__globalCompositeOperation : AnyPtr -> PrimIO AnyPtr

  export
  globalCompositeOperation : (obj : CanvasCompositing) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.globalCompositeOperation  = v}"
  prim__setGlobalCompositeOperation : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setGlobalCompositeOperation :  (obj : CanvasCompositing)
                              -> (v : String)
                              -> JSIO ()



namespace CanvasFillStrokeStyles
  
  %foreign "browser:lambda:x=>x.fillStyle"
  prim__fillStyle : AnyPtr -> PrimIO AnyPtr

  export
  fillStyle :  (obj : CanvasFillStrokeStyles)
            -> JSIO (NS I [ String , CanvasGradient , CanvasPattern ])

  %foreign "browser:lambda:(x,v)=>{x.fillStyle  = v}"
  prim__setFillStyle : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFillStyle :  (obj : CanvasFillStrokeStyles)
               -> (v : NS I [ String , CanvasGradient , CanvasPattern ])
               -> JSIO ()
  
  %foreign "browser:lambda:x=>x.strokeStyle"
  prim__strokeStyle : AnyPtr -> PrimIO AnyPtr

  export
  strokeStyle :  (obj : CanvasFillStrokeStyles)
              -> JSIO (NS I [ String , CanvasGradient , CanvasPattern ])

  %foreign "browser:lambda:(x,v)=>{x.strokeStyle  = v}"
  prim__setStrokeStyle : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStrokeStyle :  (obj : CanvasFillStrokeStyles)
                 -> (v : NS I [ String , CanvasGradient , CanvasPattern ])
                 -> JSIO ()

namespace CanvasFilters
  
  %foreign "browser:lambda:x=>x.filter"
  prim__filter : AnyPtr -> PrimIO AnyPtr

  export
  filter : (obj : CanvasFilters) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.filter  = v}"
  prim__setFilter : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFilter : (obj : CanvasFilters) -> (v : String) -> JSIO ()


namespace CanvasImageSmoothing
  
  %foreign "browser:lambda:x=>x.imageSmoothingEnabled"
  prim__imageSmoothingEnabled : AnyPtr -> PrimIO AnyPtr

  export
  imageSmoothingEnabled : (obj : CanvasImageSmoothing) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.imageSmoothingEnabled  = v}"
  prim__setImageSmoothingEnabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setImageSmoothingEnabled :  (obj : CanvasImageSmoothing)
                           -> (v : Bool)
                           -> JSIO ()
  
  %foreign "browser:lambda:x=>x.imageSmoothingQuality"
  prim__imageSmoothingQuality : AnyPtr -> PrimIO AnyPtr

  export
  imageSmoothingQuality :  (obj : CanvasImageSmoothing)
                        -> JSIO ImageSmoothingQuality

  %foreign "browser:lambda:(x,v)=>{x.imageSmoothingQuality  = v}"
  prim__setImageSmoothingQuality : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setImageSmoothingQuality :  (obj : CanvasImageSmoothing)
                           -> (v : ImageSmoothingQuality)
                           -> JSIO ()


namespace CanvasPathDrawingStyles
  
  %foreign "browser:lambda:x=>x.lineCap"
  prim__lineCap : AnyPtr -> PrimIO AnyPtr

  export
  lineCap : (obj : CanvasPathDrawingStyles) -> JSIO CanvasLineCap

  %foreign "browser:lambda:(x,v)=>{x.lineCap  = v}"
  prim__setLineCap : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLineCap : (obj : CanvasPathDrawingStyles) -> (v : CanvasLineCap) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.lineDashOffset"
  prim__lineDashOffset : AnyPtr -> PrimIO AnyPtr

  export
  lineDashOffset : (obj : CanvasPathDrawingStyles) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.lineDashOffset  = v}"
  prim__setLineDashOffset : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLineDashOffset : (obj : CanvasPathDrawingStyles) -> (v : Double) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.lineJoin"
  prim__lineJoin : AnyPtr -> PrimIO AnyPtr

  export
  lineJoin : (obj : CanvasPathDrawingStyles) -> JSIO CanvasLineJoin

  %foreign "browser:lambda:(x,v)=>{x.lineJoin  = v}"
  prim__setLineJoin : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLineJoin :  (obj : CanvasPathDrawingStyles)
              -> (v : CanvasLineJoin)
              -> JSIO ()
  
  %foreign "browser:lambda:x=>x.lineWidth"
  prim__lineWidth : AnyPtr -> PrimIO AnyPtr

  export
  lineWidth : (obj : CanvasPathDrawingStyles) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.lineWidth  = v}"
  prim__setLineWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLineWidth : (obj : CanvasPathDrawingStyles) -> (v : Double) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.miterLimit"
  prim__miterLimit : AnyPtr -> PrimIO AnyPtr

  export
  miterLimit : (obj : CanvasPathDrawingStyles) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.miterLimit  = v}"
  prim__setMiterLimit : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMiterLimit : (obj : CanvasPathDrawingStyles) -> (v : Double) -> JSIO ()


namespace CanvasShadowStyles
  
  %foreign "browser:lambda:x=>x.shadowBlur"
  prim__shadowBlur : AnyPtr -> PrimIO AnyPtr

  export
  shadowBlur : (obj : CanvasShadowStyles) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.shadowBlur  = v}"
  prim__setShadowBlur : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setShadowBlur : (obj : CanvasShadowStyles) -> (v : Double) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.shadowColor"
  prim__shadowColor : AnyPtr -> PrimIO AnyPtr

  export
  shadowColor : (obj : CanvasShadowStyles) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.shadowColor  = v}"
  prim__setShadowColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setShadowColor : (obj : CanvasShadowStyles) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.shadowOffsetX"
  prim__shadowOffsetX : AnyPtr -> PrimIO AnyPtr

  export
  shadowOffsetX : (obj : CanvasShadowStyles) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.shadowOffsetX  = v}"
  prim__setShadowOffsetX : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setShadowOffsetX : (obj : CanvasShadowStyles) -> (v : Double) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.shadowOffsetY"
  prim__shadowOffsetY : AnyPtr -> PrimIO AnyPtr

  export
  shadowOffsetY : (obj : CanvasShadowStyles) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.shadowOffsetY  = v}"
  prim__setShadowOffsetY : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setShadowOffsetY : (obj : CanvasShadowStyles) -> (v : Double) -> JSIO ()



namespace CanvasTextDrawingStyles
  
  %foreign "browser:lambda:x=>x.direction"
  prim__direction : AnyPtr -> PrimIO AnyPtr

  export
  direction : (obj : CanvasTextDrawingStyles) -> JSIO CanvasDirection

  %foreign "browser:lambda:(x,v)=>{x.direction  = v}"
  prim__setDirection : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDirection :  (obj : CanvasTextDrawingStyles)
               -> (v : CanvasDirection)
               -> JSIO ()
  
  %foreign "browser:lambda:x=>x.font"
  prim__font : AnyPtr -> PrimIO AnyPtr

  export
  font : (obj : CanvasTextDrawingStyles) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.font  = v}"
  prim__setFont : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFont : (obj : CanvasTextDrawingStyles) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.textAlign"
  prim__textAlign : AnyPtr -> PrimIO AnyPtr

  export
  textAlign : (obj : CanvasTextDrawingStyles) -> JSIO CanvasTextAlign

  %foreign "browser:lambda:(x,v)=>{x.textAlign  = v}"
  prim__setTextAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTextAlign :  (obj : CanvasTextDrawingStyles)
               -> (v : CanvasTextAlign)
               -> JSIO ()
  
  %foreign "browser:lambda:x=>x.textBaseline"
  prim__textBaseline : AnyPtr -> PrimIO AnyPtr

  export
  textBaseline : (obj : CanvasTextDrawingStyles) -> JSIO CanvasTextBaseline

  %foreign "browser:lambda:(x,v)=>{x.textBaseline  = v}"
  prim__setTextBaseline : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTextBaseline :  (obj : CanvasTextDrawingStyles)
                  -> (v : CanvasTextBaseline)
                  -> JSIO ()



namespace DocumentAndElementEventHandlers
  
  %foreign "browser:lambda:x=>x.oncopy"
  prim__oncopy : AnyPtr -> PrimIO AnyPtr

  export
  oncopy : (obj : DocumentAndElementEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.oncopy  = v}"
  prim__setOncopy : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOncopy :  (obj : DocumentAndElementEventHandlers)
            -> (v : EventHandler)
            -> JSIO ()
  
  %foreign "browser:lambda:x=>x.oncut"
  prim__oncut : AnyPtr -> PrimIO AnyPtr

  export
  oncut : (obj : DocumentAndElementEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.oncut  = v}"
  prim__setOncut : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOncut :  (obj : DocumentAndElementEventHandlers)
           -> (v : EventHandler)
           -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onpaste"
  prim__onpaste : AnyPtr -> PrimIO AnyPtr

  export
  onpaste : (obj : DocumentAndElementEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onpaste  = v}"
  prim__setOnpaste : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnpaste :  (obj : DocumentAndElementEventHandlers)
             -> (v : EventHandler)
             -> JSIO ()

namespace ElementContentEditable
  
  %foreign "browser:lambda:x=>x.isContentEditable"
  prim__isContentEditable : AnyPtr -> PrimIO AnyPtr

  export
  isContentEditable : (obj : ElementContentEditable) -> JSIO Bool
  
  %foreign "browser:lambda:x=>x.contentEditable"
  prim__contentEditable : AnyPtr -> PrimIO AnyPtr

  export
  contentEditable : (obj : ElementContentEditable) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.contentEditable  = v}"
  prim__setContentEditable : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setContentEditable : (obj : ElementContentEditable) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.enterKeyHint"
  prim__enterKeyHint : AnyPtr -> PrimIO AnyPtr

  export
  enterKeyHint : (obj : ElementContentEditable) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.enterKeyHint  = v}"
  prim__setEnterKeyHint : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEnterKeyHint : (obj : ElementContentEditable) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.inputMode"
  prim__inputMode : AnyPtr -> PrimIO AnyPtr

  export
  inputMode : (obj : ElementContentEditable) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.inputMode  = v}"
  prim__setInputMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setInputMode : (obj : ElementContentEditable) -> (v : String) -> JSIO ()

namespace GlobalEventHandlers
  
  %foreign "browser:lambda:x=>x.onabort"
  prim__onabort : AnyPtr -> PrimIO AnyPtr

  export
  onabort : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onabort  = v}"
  prim__setOnabort : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnabort : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onauxclick"
  prim__onauxclick : AnyPtr -> PrimIO AnyPtr

  export
  onauxclick : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onauxclick  = v}"
  prim__setOnauxclick : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnauxclick : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onblur"
  prim__onblur : AnyPtr -> PrimIO AnyPtr

  export
  onblur : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onblur  = v}"
  prim__setOnblur : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnblur : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.oncancel"
  prim__oncancel : AnyPtr -> PrimIO AnyPtr

  export
  oncancel : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.oncancel  = v}"
  prim__setOncancel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOncancel : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.oncanplay"
  prim__oncanplay : AnyPtr -> PrimIO AnyPtr

  export
  oncanplay : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.oncanplay  = v}"
  prim__setOncanplay : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOncanplay : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.oncanplaythrough"
  prim__oncanplaythrough : AnyPtr -> PrimIO AnyPtr

  export
  oncanplaythrough : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.oncanplaythrough  = v}"
  prim__setOncanplaythrough : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOncanplaythrough :  (obj : GlobalEventHandlers)
                      -> (v : EventHandler)
                      -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onchange"
  prim__onchange : AnyPtr -> PrimIO AnyPtr

  export
  onchange : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onchange  = v}"
  prim__setOnchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnchange : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onclick"
  prim__onclick : AnyPtr -> PrimIO AnyPtr

  export
  onclick : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onclick  = v}"
  prim__setOnclick : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnclick : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onclose"
  prim__onclose : AnyPtr -> PrimIO AnyPtr

  export
  onclose : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onclose  = v}"
  prim__setOnclose : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnclose : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.oncontextmenu"
  prim__oncontextmenu : AnyPtr -> PrimIO AnyPtr

  export
  oncontextmenu : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.oncontextmenu  = v}"
  prim__setOncontextmenu : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOncontextmenu :  (obj : GlobalEventHandlers)
                   -> (v : EventHandler)
                   -> JSIO ()
  
  %foreign "browser:lambda:x=>x.oncuechange"
  prim__oncuechange : AnyPtr -> PrimIO AnyPtr

  export
  oncuechange : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.oncuechange  = v}"
  prim__setOncuechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOncuechange : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ondblclick"
  prim__ondblclick : AnyPtr -> PrimIO AnyPtr

  export
  ondblclick : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.ondblclick  = v}"
  prim__setOndblclick : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOndblclick : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ondrag"
  prim__ondrag : AnyPtr -> PrimIO AnyPtr

  export
  ondrag : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.ondrag  = v}"
  prim__setOndrag : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOndrag : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ondragend"
  prim__ondragend : AnyPtr -> PrimIO AnyPtr

  export
  ondragend : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.ondragend  = v}"
  prim__setOndragend : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOndragend : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ondragenter"
  prim__ondragenter : AnyPtr -> PrimIO AnyPtr

  export
  ondragenter : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.ondragenter  = v}"
  prim__setOndragenter : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOndragenter : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ondragleave"
  prim__ondragleave : AnyPtr -> PrimIO AnyPtr

  export
  ondragleave : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.ondragleave  = v}"
  prim__setOndragleave : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOndragleave : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ondragover"
  prim__ondragover : AnyPtr -> PrimIO AnyPtr

  export
  ondragover : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.ondragover  = v}"
  prim__setOndragover : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOndragover : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ondragstart"
  prim__ondragstart : AnyPtr -> PrimIO AnyPtr

  export
  ondragstart : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.ondragstart  = v}"
  prim__setOndragstart : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOndragstart : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ondrop"
  prim__ondrop : AnyPtr -> PrimIO AnyPtr

  export
  ondrop : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.ondrop  = v}"
  prim__setOndrop : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOndrop : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ondurationchange"
  prim__ondurationchange : AnyPtr -> PrimIO AnyPtr

  export
  ondurationchange : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.ondurationchange  = v}"
  prim__setOndurationchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOndurationchange :  (obj : GlobalEventHandlers)
                      -> (v : EventHandler)
                      -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onemptied"
  prim__onemptied : AnyPtr -> PrimIO AnyPtr

  export
  onemptied : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onemptied  = v}"
  prim__setOnemptied : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnemptied : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onended"
  prim__onended : AnyPtr -> PrimIO AnyPtr

  export
  onended : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onended  = v}"
  prim__setOnended : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnended : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : AnyPtr -> PrimIO AnyPtr

  export
  onerror : (obj : GlobalEventHandlers) -> JSIO OnErrorEventHandler

  %foreign "browser:lambda:(x,v)=>{x.onerror  = v}"
  prim__setOnerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnerror :  (obj : GlobalEventHandlers)
             -> (v : OnErrorEventHandler)
             -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onfocus"
  prim__onfocus : AnyPtr -> PrimIO AnyPtr

  export
  onfocus : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onfocus  = v}"
  prim__setOnfocus : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnfocus : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onformdata"
  prim__onformdata : AnyPtr -> PrimIO AnyPtr

  export
  onformdata : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onformdata  = v}"
  prim__setOnformdata : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnformdata : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.oninput"
  prim__oninput : AnyPtr -> PrimIO AnyPtr

  export
  oninput : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.oninput  = v}"
  prim__setOninput : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOninput : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.oninvalid"
  prim__oninvalid : AnyPtr -> PrimIO AnyPtr

  export
  oninvalid : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.oninvalid  = v}"
  prim__setOninvalid : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOninvalid : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onkeydown"
  prim__onkeydown : AnyPtr -> PrimIO AnyPtr

  export
  onkeydown : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onkeydown  = v}"
  prim__setOnkeydown : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnkeydown : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onkeypress"
  prim__onkeypress : AnyPtr -> PrimIO AnyPtr

  export
  onkeypress : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onkeypress  = v}"
  prim__setOnkeypress : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnkeypress : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onkeyup"
  prim__onkeyup : AnyPtr -> PrimIO AnyPtr

  export
  onkeyup : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onkeyup  = v}"
  prim__setOnkeyup : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnkeyup : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onload"
  prim__onload : AnyPtr -> PrimIO AnyPtr

  export
  onload : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onload  = v}"
  prim__setOnload : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnload : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onloadeddata"
  prim__onloadeddata : AnyPtr -> PrimIO AnyPtr

  export
  onloadeddata : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onloadeddata  = v}"
  prim__setOnloadeddata : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnloadeddata : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onloadedmetadata"
  prim__onloadedmetadata : AnyPtr -> PrimIO AnyPtr

  export
  onloadedmetadata : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onloadedmetadata  = v}"
  prim__setOnloadedmetadata : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnloadedmetadata :  (obj : GlobalEventHandlers)
                      -> (v : EventHandler)
                      -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onloadstart"
  prim__onloadstart : AnyPtr -> PrimIO AnyPtr

  export
  onloadstart : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onloadstart  = v}"
  prim__setOnloadstart : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnloadstart : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onmousedown"
  prim__onmousedown : AnyPtr -> PrimIO AnyPtr

  export
  onmousedown : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onmousedown  = v}"
  prim__setOnmousedown : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmousedown : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onmouseenter"
  prim__onmouseenter : AnyPtr -> PrimIO AnyPtr

  export
  onmouseenter : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onmouseenter  = v}"
  prim__setOnmouseenter : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmouseenter : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onmouseleave"
  prim__onmouseleave : AnyPtr -> PrimIO AnyPtr

  export
  onmouseleave : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onmouseleave  = v}"
  prim__setOnmouseleave : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmouseleave : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onmousemove"
  prim__onmousemove : AnyPtr -> PrimIO AnyPtr

  export
  onmousemove : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onmousemove  = v}"
  prim__setOnmousemove : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmousemove : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onmouseout"
  prim__onmouseout : AnyPtr -> PrimIO AnyPtr

  export
  onmouseout : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onmouseout  = v}"
  prim__setOnmouseout : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmouseout : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onmouseover"
  prim__onmouseover : AnyPtr -> PrimIO AnyPtr

  export
  onmouseover : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onmouseover  = v}"
  prim__setOnmouseover : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmouseover : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onmouseup"
  prim__onmouseup : AnyPtr -> PrimIO AnyPtr

  export
  onmouseup : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onmouseup  = v}"
  prim__setOnmouseup : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmouseup : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onpause"
  prim__onpause : AnyPtr -> PrimIO AnyPtr

  export
  onpause : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onpause  = v}"
  prim__setOnpause : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnpause : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onplay"
  prim__onplay : AnyPtr -> PrimIO AnyPtr

  export
  onplay : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onplay  = v}"
  prim__setOnplay : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnplay : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onplaying"
  prim__onplaying : AnyPtr -> PrimIO AnyPtr

  export
  onplaying : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onplaying  = v}"
  prim__setOnplaying : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnplaying : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onprogress"
  prim__onprogress : AnyPtr -> PrimIO AnyPtr

  export
  onprogress : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onprogress  = v}"
  prim__setOnprogress : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnprogress : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onratechange"
  prim__onratechange : AnyPtr -> PrimIO AnyPtr

  export
  onratechange : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onratechange  = v}"
  prim__setOnratechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnratechange : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onreset"
  prim__onreset : AnyPtr -> PrimIO AnyPtr

  export
  onreset : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onreset  = v}"
  prim__setOnreset : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnreset : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onresize"
  prim__onresize : AnyPtr -> PrimIO AnyPtr

  export
  onresize : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onresize  = v}"
  prim__setOnresize : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnresize : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onscroll"
  prim__onscroll : AnyPtr -> PrimIO AnyPtr

  export
  onscroll : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onscroll  = v}"
  prim__setOnscroll : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnscroll : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onsecuritypolicyviolation"
  prim__onsecuritypolicyviolation : AnyPtr -> PrimIO AnyPtr

  export
  onsecuritypolicyviolation : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onsecuritypolicyviolation  = v}"
  prim__setOnsecuritypolicyviolation : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnsecuritypolicyviolation :  (obj : GlobalEventHandlers)
                               -> (v : EventHandler)
                               -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onseeked"
  prim__onseeked : AnyPtr -> PrimIO AnyPtr

  export
  onseeked : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onseeked  = v}"
  prim__setOnseeked : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnseeked : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onseeking"
  prim__onseeking : AnyPtr -> PrimIO AnyPtr

  export
  onseeking : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onseeking  = v}"
  prim__setOnseeking : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnseeking : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onselect"
  prim__onselect : AnyPtr -> PrimIO AnyPtr

  export
  onselect : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onselect  = v}"
  prim__setOnselect : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnselect : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onslotchange"
  prim__onslotchange : AnyPtr -> PrimIO AnyPtr

  export
  onslotchange : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onslotchange  = v}"
  prim__setOnslotchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnslotchange : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onstalled"
  prim__onstalled : AnyPtr -> PrimIO AnyPtr

  export
  onstalled : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onstalled  = v}"
  prim__setOnstalled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnstalled : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onsubmit"
  prim__onsubmit : AnyPtr -> PrimIO AnyPtr

  export
  onsubmit : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onsubmit  = v}"
  prim__setOnsubmit : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnsubmit : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onsuspend"
  prim__onsuspend : AnyPtr -> PrimIO AnyPtr

  export
  onsuspend : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onsuspend  = v}"
  prim__setOnsuspend : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnsuspend : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ontimeupdate"
  prim__ontimeupdate : AnyPtr -> PrimIO AnyPtr

  export
  ontimeupdate : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.ontimeupdate  = v}"
  prim__setOntimeupdate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOntimeupdate : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ontoggle"
  prim__ontoggle : AnyPtr -> PrimIO AnyPtr

  export
  ontoggle : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.ontoggle  = v}"
  prim__setOntoggle : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOntoggle : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onvolumechange"
  prim__onvolumechange : AnyPtr -> PrimIO AnyPtr

  export
  onvolumechange : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onvolumechange  = v}"
  prim__setOnvolumechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnvolumechange :  (obj : GlobalEventHandlers)
                    -> (v : EventHandler)
                    -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onwaiting"
  prim__onwaiting : AnyPtr -> PrimIO AnyPtr

  export
  onwaiting : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onwaiting  = v}"
  prim__setOnwaiting : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnwaiting : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onwebkitanimationend"
  prim__onwebkitanimationend : AnyPtr -> PrimIO AnyPtr

  export
  onwebkitanimationend : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onwebkitanimationend  = v}"
  prim__setOnwebkitanimationend : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnwebkitanimationend :  (obj : GlobalEventHandlers)
                          -> (v : EventHandler)
                          -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onwebkitanimationiteration"
  prim__onwebkitanimationiteration : AnyPtr -> PrimIO AnyPtr

  export
  onwebkitanimationiteration : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onwebkitanimationiteration  = v}"
  prim__setOnwebkitanimationiteration : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnwebkitanimationiteration :  (obj : GlobalEventHandlers)
                                -> (v : EventHandler)
                                -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onwebkitanimationstart"
  prim__onwebkitanimationstart : AnyPtr -> PrimIO AnyPtr

  export
  onwebkitanimationstart : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onwebkitanimationstart  = v}"
  prim__setOnwebkitanimationstart : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnwebkitanimationstart :  (obj : GlobalEventHandlers)
                            -> (v : EventHandler)
                            -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onwebkittransitionend"
  prim__onwebkittransitionend : AnyPtr -> PrimIO AnyPtr

  export
  onwebkittransitionend : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onwebkittransitionend  = v}"
  prim__setOnwebkittransitionend : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnwebkittransitionend :  (obj : GlobalEventHandlers)
                           -> (v : EventHandler)
                           -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onwheel"
  prim__onwheel : AnyPtr -> PrimIO AnyPtr

  export
  onwheel : (obj : GlobalEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onwheel  = v}"
  prim__setOnwheel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnwheel : (obj : GlobalEventHandlers) -> (v : EventHandler) -> JSIO ()

namespace HTMLHyperlinkElementUtils
  
  %foreign "browser:lambda:x=>x.origin"
  prim__origin : AnyPtr -> PrimIO AnyPtr

  export
  origin : (obj : HTMLHyperlinkElementUtils) -> JSIO String
  
  %foreign "browser:lambda:x=>x.hash"
  prim__hash : AnyPtr -> PrimIO AnyPtr

  export
  hash : (obj : HTMLHyperlinkElementUtils) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.hash  = v}"
  prim__setHash : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHash : (obj : HTMLHyperlinkElementUtils) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.host"
  prim__host : AnyPtr -> PrimIO AnyPtr

  export
  host : (obj : HTMLHyperlinkElementUtils) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.host  = v}"
  prim__setHost : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHost : (obj : HTMLHyperlinkElementUtils) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.hostname"
  prim__hostname : AnyPtr -> PrimIO AnyPtr

  export
  hostname : (obj : HTMLHyperlinkElementUtils) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.hostname  = v}"
  prim__setHostname : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHostname : (obj : HTMLHyperlinkElementUtils) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.password"
  prim__password : AnyPtr -> PrimIO AnyPtr

  export
  password : (obj : HTMLHyperlinkElementUtils) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.password  = v}"
  prim__setPassword : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPassword : (obj : HTMLHyperlinkElementUtils) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.pathname"
  prim__pathname : AnyPtr -> PrimIO AnyPtr

  export
  pathname : (obj : HTMLHyperlinkElementUtils) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.pathname  = v}"
  prim__setPathname : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPathname : (obj : HTMLHyperlinkElementUtils) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.port"
  prim__port : AnyPtr -> PrimIO AnyPtr

  export
  port : (obj : HTMLHyperlinkElementUtils) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.port  = v}"
  prim__setPort : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPort : (obj : HTMLHyperlinkElementUtils) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.protocol"
  prim__protocol : AnyPtr -> PrimIO AnyPtr

  export
  protocol : (obj : HTMLHyperlinkElementUtils) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.protocol  = v}"
  prim__setProtocol : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setProtocol : (obj : HTMLHyperlinkElementUtils) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.search"
  prim__search : AnyPtr -> PrimIO AnyPtr

  export
  search : (obj : HTMLHyperlinkElementUtils) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.search  = v}"
  prim__setSearch : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSearch : (obj : HTMLHyperlinkElementUtils) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.username"
  prim__username : AnyPtr -> PrimIO AnyPtr

  export
  username : (obj : HTMLHyperlinkElementUtils) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.username  = v}"
  prim__setUsername : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setUsername : (obj : HTMLHyperlinkElementUtils) -> (v : String) -> JSIO ()

namespace HTMLOrSVGElement
  
  %foreign "browser:lambda:x=>x.dataset"
  prim__dataset : AnyPtr -> PrimIO AnyPtr

  export
  dataset : (obj : HTMLOrSVGElement) -> JSIO DOMStringMap
  
  %foreign "browser:lambda:x=>x.autofocus"
  prim__autofocus : AnyPtr -> PrimIO AnyPtr

  export
  autofocus : (obj : HTMLOrSVGElement) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.autofocus  = v}"
  prim__setAutofocus : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAutofocus : (obj : HTMLOrSVGElement) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.nonce"
  prim__nonce : AnyPtr -> PrimIO AnyPtr

  export
  nonce : (obj : HTMLOrSVGElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.nonce  = v}"
  prim__setNonce : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setNonce : (obj : HTMLOrSVGElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.tabIndex"
  prim__tabIndex : AnyPtr -> PrimIO AnyPtr

  export
  tabIndex : (obj : HTMLOrSVGElement) -> JSIO Int32

  %foreign "browser:lambda:(x,v)=>{x.tabIndex  = v}"
  prim__setTabIndex : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTabIndex : (obj : HTMLOrSVGElement) -> (v : Int32) -> JSIO ()

namespace NavigatorConcurrentHardware
  
  %foreign "browser:lambda:x=>x.hardwareConcurrency"
  prim__hardwareConcurrency : AnyPtr -> PrimIO AnyPtr

  export
  hardwareConcurrency : (obj : NavigatorConcurrentHardware) -> JSIO UInt64


namespace NavigatorCookies
  
  %foreign "browser:lambda:x=>x.cookieEnabled"
  prim__cookieEnabled : AnyPtr -> PrimIO AnyPtr

  export
  cookieEnabled : (obj : NavigatorCookies) -> JSIO Bool

namespace NavigatorID
  
  %foreign "browser:lambda:x=>x.appCodeName"
  prim__appCodeName : AnyPtr -> PrimIO AnyPtr

  export
  appCodeName : (obj : NavigatorID) -> JSIO String
  
  %foreign "browser:lambda:x=>x.appName"
  prim__appName : AnyPtr -> PrimIO AnyPtr

  export
  appName : (obj : NavigatorID) -> JSIO String
  
  %foreign "browser:lambda:x=>x.appVersion"
  prim__appVersion : AnyPtr -> PrimIO AnyPtr

  export
  appVersion : (obj : NavigatorID) -> JSIO String
  
  %foreign "browser:lambda:x=>x.platform"
  prim__platform : AnyPtr -> PrimIO AnyPtr

  export
  platform : (obj : NavigatorID) -> JSIO String
  
  %foreign "browser:lambda:x=>x.product"
  prim__product : AnyPtr -> PrimIO AnyPtr

  export
  product : (obj : NavigatorID) -> JSIO String
  
  %foreign "browser:lambda:x=>x.productSub"
  prim__productSub : AnyPtr -> PrimIO AnyPtr

  export
  productSub : (obj : NavigatorID) -> JSIO String
  
  %foreign "browser:lambda:x=>x.userAgent"
  prim__userAgent : AnyPtr -> PrimIO AnyPtr

  export
  userAgent : (obj : NavigatorID) -> JSIO String
  
  %foreign "browser:lambda:x=>x.vendor"
  prim__vendor : AnyPtr -> PrimIO AnyPtr

  export
  vendor : (obj : NavigatorID) -> JSIO String
  
  %foreign "browser:lambda:x=>x.vendorSub"
  prim__vendorSub : AnyPtr -> PrimIO AnyPtr

  export
  vendorSub : (obj : NavigatorID) -> JSIO String

namespace NavigatorLanguage
  
  %foreign "browser:lambda:x=>x.language"
  prim__language : AnyPtr -> PrimIO AnyPtr

  export
  language : (obj : NavigatorLanguage) -> JSIO String
  
  %foreign "browser:lambda:x=>x.languages"
  prim__languages : AnyPtr -> PrimIO AnyPtr

  export
  languages : (obj : NavigatorLanguage) -> JSIO (JSArray String)

namespace NavigatorOnLine
  
  %foreign "browser:lambda:x=>x.onLine"
  prim__onLine : AnyPtr -> PrimIO AnyPtr

  export
  onLine : (obj : NavigatorOnLine) -> JSIO Bool

namespace NavigatorPlugins
  
  %foreign "browser:lambda:x=>x.mimeTypes"
  prim__mimeTypes : AnyPtr -> PrimIO AnyPtr

  export
  mimeTypes : (obj : NavigatorPlugins) -> JSIO MimeTypeArray
  
  %foreign "browser:lambda:x=>x.plugins"
  prim__plugins : AnyPtr -> PrimIO AnyPtr

  export
  plugins : (obj : NavigatorPlugins) -> JSIO PluginArray

namespace WindowEventHandlers
  
  %foreign "browser:lambda:x=>x.onafterprint"
  prim__onafterprint : AnyPtr -> PrimIO AnyPtr

  export
  onafterprint : (obj : WindowEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onafterprint  = v}"
  prim__setOnafterprint : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnafterprint : (obj : WindowEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onbeforeprint"
  prim__onbeforeprint : AnyPtr -> PrimIO AnyPtr

  export
  onbeforeprint : (obj : WindowEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onbeforeprint  = v}"
  prim__setOnbeforeprint : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnbeforeprint :  (obj : WindowEventHandlers)
                   -> (v : EventHandler)
                   -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onbeforeunload"
  prim__onbeforeunload : AnyPtr -> PrimIO AnyPtr

  export
  onbeforeunload :  (obj : WindowEventHandlers)
                 -> JSIO OnBeforeUnloadEventHandler

  %foreign "browser:lambda:(x,v)=>{x.onbeforeunload  = v}"
  prim__setOnbeforeunload : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnbeforeunload :  (obj : WindowEventHandlers)
                    -> (v : OnBeforeUnloadEventHandler)
                    -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onhashchange"
  prim__onhashchange : AnyPtr -> PrimIO AnyPtr

  export
  onhashchange : (obj : WindowEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onhashchange  = v}"
  prim__setOnhashchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnhashchange : (obj : WindowEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onlanguagechange"
  prim__onlanguagechange : AnyPtr -> PrimIO AnyPtr

  export
  onlanguagechange : (obj : WindowEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onlanguagechange  = v}"
  prim__setOnlanguagechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnlanguagechange :  (obj : WindowEventHandlers)
                      -> (v : EventHandler)
                      -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : AnyPtr -> PrimIO AnyPtr

  export
  onmessage : (obj : WindowEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onmessage  = v}"
  prim__setOnmessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmessage : (obj : WindowEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onmessageerror"
  prim__onmessageerror : AnyPtr -> PrimIO AnyPtr

  export
  onmessageerror : (obj : WindowEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onmessageerror  = v}"
  prim__setOnmessageerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmessageerror :  (obj : WindowEventHandlers)
                    -> (v : EventHandler)
                    -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onoffline"
  prim__onoffline : AnyPtr -> PrimIO AnyPtr

  export
  onoffline : (obj : WindowEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onoffline  = v}"
  prim__setOnoffline : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnoffline : (obj : WindowEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ononline"
  prim__ononline : AnyPtr -> PrimIO AnyPtr

  export
  ononline : (obj : WindowEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.ononline  = v}"
  prim__setOnonline : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnonline : (obj : WindowEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onpagehide"
  prim__onpagehide : AnyPtr -> PrimIO AnyPtr

  export
  onpagehide : (obj : WindowEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onpagehide  = v}"
  prim__setOnpagehide : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnpagehide : (obj : WindowEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onpageshow"
  prim__onpageshow : AnyPtr -> PrimIO AnyPtr

  export
  onpageshow : (obj : WindowEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onpageshow  = v}"
  prim__setOnpageshow : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnpageshow : (obj : WindowEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onpopstate"
  prim__onpopstate : AnyPtr -> PrimIO AnyPtr

  export
  onpopstate : (obj : WindowEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onpopstate  = v}"
  prim__setOnpopstate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnpopstate : (obj : WindowEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onrejectionhandled"
  prim__onrejectionhandled : AnyPtr -> PrimIO AnyPtr

  export
  onrejectionhandled : (obj : WindowEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onrejectionhandled  = v}"
  prim__setOnrejectionhandled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnrejectionhandled :  (obj : WindowEventHandlers)
                        -> (v : EventHandler)
                        -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onstorage"
  prim__onstorage : AnyPtr -> PrimIO AnyPtr

  export
  onstorage : (obj : WindowEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onstorage  = v}"
  prim__setOnstorage : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnstorage : (obj : WindowEventHandlers) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onunhandledrejection"
  prim__onunhandledrejection : AnyPtr -> PrimIO AnyPtr

  export
  onunhandledrejection : (obj : WindowEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onunhandledrejection  = v}"
  prim__setOnunhandledrejection : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnunhandledrejection :  (obj : WindowEventHandlers)
                          -> (v : EventHandler)
                          -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onunload"
  prim__onunload : AnyPtr -> PrimIO AnyPtr

  export
  onunload : (obj : WindowEventHandlers) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onunload  = v}"
  prim__setOnunload : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnunload : (obj : WindowEventHandlers) -> (v : EventHandler) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.flatten  = v}"
  prim__setFlatten : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFlatten : (obj : AssignedNodesOptions) -> (v : Bool) -> JSIO ()

namespace CanvasRenderingContext2DSettings
  
  public export
  JSType CanvasRenderingContext2DSettings where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.alpha"
  prim__alpha : AnyPtr -> PrimIO AnyPtr

  export
  alpha : (obj : CanvasRenderingContext2DSettings) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.alpha  = v}"
  prim__setAlpha : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlpha : (obj : CanvasRenderingContext2DSettings) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.desynchronized"
  prim__desynchronized : AnyPtr -> PrimIO AnyPtr

  export
  desynchronized : (obj : CanvasRenderingContext2DSettings) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.desynchronized  = v}"
  prim__setDesynchronized : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDesynchronized :  (obj : CanvasRenderingContext2DSettings)
                    -> (v : Bool)
                    -> JSIO ()

namespace CloseEventInit
  
  public export
  JSType CloseEventInit where
    parents =  [ EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.code"
  prim__code : AnyPtr -> PrimIO AnyPtr

  export
  code : (obj : CloseEventInit) -> JSIO UInt16

  %foreign "browser:lambda:(x,v)=>{x.code  = v}"
  prim__setCode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCode : (obj : CloseEventInit) -> (v : UInt16) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.reason"
  prim__reason : AnyPtr -> PrimIO AnyPtr

  export
  reason : (obj : CloseEventInit) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.reason  = v}"
  prim__setReason : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReason : (obj : CloseEventInit) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.wasClean"
  prim__wasClean : AnyPtr -> PrimIO AnyPtr

  export
  wasClean : (obj : CloseEventInit) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.wasClean  = v}"
  prim__setWasClean : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWasClean : (obj : CloseEventInit) -> (v : Bool) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.dataTransfer  = v}"
  prim__setDataTransfer : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDataTransfer : (obj : DragEventInit) -> (v : Maybe DataTransfer) -> JSIO ()

namespace ElementDefinitionOptions
  
  public export
  JSType ElementDefinitionOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.extends"
  prim__extends : AnyPtr -> PrimIO AnyPtr

  export
  extends : (obj : ElementDefinitionOptions) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.extends  = v}"
  prim__setExtends : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setExtends : (obj : ElementDefinitionOptions) -> (v : String) -> JSIO ()

namespace ErrorEventInit
  
  public export
  JSType ErrorEventInit where
    parents =  [ EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.colno"
  prim__colno : AnyPtr -> PrimIO AnyPtr

  export
  colno : (obj : ErrorEventInit) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.colno  = v}"
  prim__setColno : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setColno : (obj : ErrorEventInit) -> (v : UInt32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.error"
  prim__error : AnyPtr -> PrimIO AnyPtr

  export
  error : (obj : ErrorEventInit) -> JSIO Any

  %foreign "browser:lambda:(x,v)=>{x.error  = v}"
  prim__setError : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setError : (obj : ErrorEventInit) -> (v : Any) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.filename"
  prim__filename : AnyPtr -> PrimIO AnyPtr

  export
  filename : (obj : ErrorEventInit) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.filename  = v}"
  prim__setFilename : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFilename : (obj : ErrorEventInit) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.lineno"
  prim__lineno : AnyPtr -> PrimIO AnyPtr

  export
  lineno : (obj : ErrorEventInit) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.lineno  = v}"
  prim__setLineno : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLineno : (obj : ErrorEventInit) -> (v : UInt32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.message"
  prim__message : AnyPtr -> PrimIO AnyPtr

  export
  message : (obj : ErrorEventInit) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.message  = v}"
  prim__setMessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMessage : (obj : ErrorEventInit) -> (v : String) -> JSIO ()

namespace EventSourceInit
  
  public export
  JSType EventSourceInit where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.withCredentials"
  prim__withCredentials : AnyPtr -> PrimIO AnyPtr

  export
  withCredentials : (obj : EventSourceInit) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.withCredentials  = v}"
  prim__setWithCredentials : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWithCredentials : (obj : EventSourceInit) -> (v : Bool) -> JSIO ()

namespace FocusOptions
  
  public export
  JSType FocusOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.preventScroll"
  prim__preventScroll : AnyPtr -> PrimIO AnyPtr

  export
  preventScroll : (obj : FocusOptions) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.preventScroll  = v}"
  prim__setPreventScroll : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPreventScroll : (obj : FocusOptions) -> (v : Bool) -> JSIO ()

namespace FormDataEventInit
  
  public export
  JSType FormDataEventInit where
    parents =  [ EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.formData"
  prim__formData : AnyPtr -> PrimIO AnyPtr

  export
  formData : (obj : FormDataEventInit) -> JSIO FormData

  %foreign "browser:lambda:(x,v)=>{x.formData  = v}"
  prim__setFormData : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFormData : (obj : FormDataEventInit) -> (v : FormData) -> JSIO ()

namespace HashChangeEventInit
  
  public export
  JSType HashChangeEventInit where
    parents =  [ EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.newURL"
  prim__newURL : AnyPtr -> PrimIO AnyPtr

  export
  newURL : (obj : HashChangeEventInit) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.newURL  = v}"
  prim__setNewURL : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setNewURL : (obj : HashChangeEventInit) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.oldURL"
  prim__oldURL : AnyPtr -> PrimIO AnyPtr

  export
  oldURL : (obj : HashChangeEventInit) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.oldURL  = v}"
  prim__setOldURL : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOldURL : (obj : HashChangeEventInit) -> (v : String) -> JSIO ()

namespace ImageBitmapOptions
  
  public export
  JSType ImageBitmapOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.colorSpaceConversion"
  prim__colorSpaceConversion : AnyPtr -> PrimIO AnyPtr

  export
  colorSpaceConversion : (obj : ImageBitmapOptions) -> JSIO ColorSpaceConversion

  %foreign "browser:lambda:(x,v)=>{x.colorSpaceConversion  = v}"
  prim__setColorSpaceConversion : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setColorSpaceConversion :  (obj : ImageBitmapOptions)
                          -> (v : ColorSpaceConversion)
                          -> JSIO ()
  
  %foreign "browser:lambda:x=>x.imageOrientation"
  prim__imageOrientation : AnyPtr -> PrimIO AnyPtr

  export
  imageOrientation : (obj : ImageBitmapOptions) -> JSIO ImageOrientation

  %foreign "browser:lambda:(x,v)=>{x.imageOrientation  = v}"
  prim__setImageOrientation : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setImageOrientation :  (obj : ImageBitmapOptions)
                      -> (v : ImageOrientation)
                      -> JSIO ()
  
  %foreign "browser:lambda:x=>x.premultiplyAlpha"
  prim__premultiplyAlpha : AnyPtr -> PrimIO AnyPtr

  export
  premultiplyAlpha : (obj : ImageBitmapOptions) -> JSIO PremultiplyAlpha

  %foreign "browser:lambda:(x,v)=>{x.premultiplyAlpha  = v}"
  prim__setPremultiplyAlpha : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPremultiplyAlpha :  (obj : ImageBitmapOptions)
                      -> (v : PremultiplyAlpha)
                      -> JSIO ()
  
  %foreign "browser:lambda:x=>x.resizeHeight"
  prim__resizeHeight : AnyPtr -> PrimIO AnyPtr

  export
  resizeHeight : (obj : ImageBitmapOptions) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.resizeHeight  = v}"
  prim__setResizeHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setResizeHeight : (obj : ImageBitmapOptions) -> (v : UInt32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.resizeQuality"
  prim__resizeQuality : AnyPtr -> PrimIO AnyPtr

  export
  resizeQuality : (obj : ImageBitmapOptions) -> JSIO ResizeQuality

  %foreign "browser:lambda:(x,v)=>{x.resizeQuality  = v}"
  prim__setResizeQuality : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setResizeQuality :  (obj : ImageBitmapOptions)
                   -> (v : ResizeQuality)
                   -> JSIO ()
  
  %foreign "browser:lambda:x=>x.resizeWidth"
  prim__resizeWidth : AnyPtr -> PrimIO AnyPtr

  export
  resizeWidth : (obj : ImageBitmapOptions) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.resizeWidth  = v}"
  prim__setResizeWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setResizeWidth : (obj : ImageBitmapOptions) -> (v : UInt32) -> JSIO ()

namespace ImageBitmapRenderingContextSettings
  
  public export
  JSType ImageBitmapRenderingContextSettings where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.alpha"
  prim__alpha : AnyPtr -> PrimIO AnyPtr

  export
  alpha : (obj : ImageBitmapRenderingContextSettings) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.alpha  = v}"
  prim__setAlpha : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlpha :  (obj : ImageBitmapRenderingContextSettings)
           -> (v : Bool)
           -> JSIO ()

namespace ImageEncodeOptions
  
  public export
  JSType ImageEncodeOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.quality"
  prim__quality : AnyPtr -> PrimIO AnyPtr

  export
  quality : (obj : ImageEncodeOptions) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.quality  = v}"
  prim__setQuality : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setQuality : (obj : ImageEncodeOptions) -> (v : Double) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : ImageEncodeOptions) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : ImageEncodeOptions) -> (v : String) -> JSIO ()

namespace MessageEventInit
  
  public export
  JSType MessageEventInit where
    parents =  [ EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.data"
  prim__data_ : AnyPtr -> PrimIO AnyPtr

  export
  data_ : (obj : MessageEventInit) -> JSIO Any

  %foreign "browser:lambda:(x,v)=>{x.data  = v}"
  prim__setData : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setData : (obj : MessageEventInit) -> (v : Any) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.lastEventId"
  prim__lastEventId : AnyPtr -> PrimIO AnyPtr

  export
  lastEventId : (obj : MessageEventInit) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.lastEventId  = v}"
  prim__setLastEventId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLastEventId : (obj : MessageEventInit) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.origin"
  prim__origin : AnyPtr -> PrimIO AnyPtr

  export
  origin : (obj : MessageEventInit) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.origin  = v}"
  prim__setOrigin : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOrigin : (obj : MessageEventInit) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ports"
  prim__ports : AnyPtr -> PrimIO AnyPtr

  export
  ports : (obj : MessageEventInit) -> JSIO (JSArray MessagePort)

  %foreign "browser:lambda:(x,v)=>{x.ports  = v}"
  prim__setPorts : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPorts : (obj : MessageEventInit) -> (v : JSArray MessagePort) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.source"
  prim__source : AnyPtr -> PrimIO AnyPtr

  export
  source : (obj : MessageEventInit) -> JSIO (Maybe MessageEventSource)

  %foreign "browser:lambda:(x,v)=>{x.source  = v}"
  prim__setSource : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSource :  (obj : MessageEventInit)
            -> (v : Maybe MessageEventSource)
            -> JSIO ()

namespace PageTransitionEventInit
  
  public export
  JSType PageTransitionEventInit where
    parents =  [ EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.persisted"
  prim__persisted : AnyPtr -> PrimIO AnyPtr

  export
  persisted : (obj : PageTransitionEventInit) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.persisted  = v}"
  prim__setPersisted : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPersisted : (obj : PageTransitionEventInit) -> (v : Bool) -> JSIO ()

namespace PopStateEventInit
  
  public export
  JSType PopStateEventInit where
    parents =  [ EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.state"
  prim__state : AnyPtr -> PrimIO AnyPtr

  export
  state : (obj : PopStateEventInit) -> JSIO Any

  %foreign "browser:lambda:(x,v)=>{x.state  = v}"
  prim__setState : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setState : (obj : PopStateEventInit) -> (v : Any) -> JSIO ()

namespace PostMessageOptions
  
  public export
  JSType PostMessageOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.transfer"
  prim__transfer : AnyPtr -> PrimIO AnyPtr

  export
  transfer : (obj : PostMessageOptions) -> JSIO (JSArray JSObject)

  %foreign "browser:lambda:(x,v)=>{x.transfer  = v}"
  prim__setTransfer : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTransfer : (obj : PostMessageOptions) -> (v : JSArray JSObject) -> JSIO ()

namespace PromiseRejectionEventInit
  
  public export
  JSType PromiseRejectionEventInit where
    parents =  [ EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.promise"
  prim__promise : AnyPtr -> PrimIO AnyPtr

  export
  promise : (obj : PromiseRejectionEventInit) -> JSIO (JSPromise Any)

  %foreign "browser:lambda:(x,v)=>{x.promise  = v}"
  prim__setPromise : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPromise :  (obj : PromiseRejectionEventInit)
             -> (v : JSPromise Any)
             -> JSIO ()
  
  %foreign "browser:lambda:x=>x.reason"
  prim__reason : AnyPtr -> PrimIO AnyPtr

  export
  reason : (obj : PromiseRejectionEventInit) -> JSIO Any

  %foreign "browser:lambda:(x,v)=>{x.reason  = v}"
  prim__setReason : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReason : (obj : PromiseRejectionEventInit) -> (v : Any) -> JSIO ()

namespace StorageEventInit
  
  public export
  JSType StorageEventInit where
    parents =  [ EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.key"
  prim__key : AnyPtr -> PrimIO AnyPtr

  export
  key : (obj : StorageEventInit) -> JSIO (Maybe String)

  %foreign "browser:lambda:(x,v)=>{x.key  = v}"
  prim__setKey : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setKey : (obj : StorageEventInit) -> (v : Maybe String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.newValue"
  prim__newValue : AnyPtr -> PrimIO AnyPtr

  export
  newValue : (obj : StorageEventInit) -> JSIO (Maybe String)

  %foreign "browser:lambda:(x,v)=>{x.newValue  = v}"
  prim__setNewValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setNewValue : (obj : StorageEventInit) -> (v : Maybe String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.oldValue"
  prim__oldValue : AnyPtr -> PrimIO AnyPtr

  export
  oldValue : (obj : StorageEventInit) -> JSIO (Maybe String)

  %foreign "browser:lambda:(x,v)=>{x.oldValue  = v}"
  prim__setOldValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOldValue : (obj : StorageEventInit) -> (v : Maybe String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.storageArea"
  prim__storageArea : AnyPtr -> PrimIO AnyPtr

  export
  storageArea : (obj : StorageEventInit) -> JSIO (Maybe Storage)

  %foreign "browser:lambda:(x,v)=>{x.storageArea  = v}"
  prim__setStorageArea : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStorageArea : (obj : StorageEventInit) -> (v : Maybe Storage) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.url"
  prim__url : AnyPtr -> PrimIO AnyPtr

  export
  url : (obj : StorageEventInit) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.url  = v}"
  prim__setUrl : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setUrl : (obj : StorageEventInit) -> (v : String) -> JSIO ()

namespace SubmitEventInit
  
  public export
  JSType SubmitEventInit where
    parents =  [ EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.submitter"
  prim__submitter : AnyPtr -> PrimIO AnyPtr

  export
  submitter : (obj : SubmitEventInit) -> JSIO (Maybe HTMLElement)

  %foreign "browser:lambda:(x,v)=>{x.submitter  = v}"
  prim__setSubmitter : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSubmitter : (obj : SubmitEventInit) -> (v : Maybe HTMLElement) -> JSIO ()

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

  %foreign "browser:lambda:(x,v)=>{x.track  = v}"
  prim__setTrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTrack :  (obj : TrackEventInit)
           -> (v : Maybe (NS I [ VideoTrack , AudioTrack , TextTrack ]))
           -> JSIO ()

namespace ValidityStateFlags
  
  public export
  JSType ValidityStateFlags where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.badInput"
  prim__badInput : AnyPtr -> PrimIO AnyPtr

  export
  badInput : (obj : ValidityStateFlags) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.badInput  = v}"
  prim__setBadInput : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBadInput : (obj : ValidityStateFlags) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.customError"
  prim__customError : AnyPtr -> PrimIO AnyPtr

  export
  customError : (obj : ValidityStateFlags) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.customError  = v}"
  prim__setCustomError : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCustomError : (obj : ValidityStateFlags) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.patternMismatch"
  prim__patternMismatch : AnyPtr -> PrimIO AnyPtr

  export
  patternMismatch : (obj : ValidityStateFlags) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.patternMismatch  = v}"
  prim__setPatternMismatch : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPatternMismatch : (obj : ValidityStateFlags) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.rangeOverflow"
  prim__rangeOverflow : AnyPtr -> PrimIO AnyPtr

  export
  rangeOverflow : (obj : ValidityStateFlags) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.rangeOverflow  = v}"
  prim__setRangeOverflow : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRangeOverflow : (obj : ValidityStateFlags) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.rangeUnderflow"
  prim__rangeUnderflow : AnyPtr -> PrimIO AnyPtr

  export
  rangeUnderflow : (obj : ValidityStateFlags) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.rangeUnderflow  = v}"
  prim__setRangeUnderflow : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRangeUnderflow : (obj : ValidityStateFlags) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.stepMismatch"
  prim__stepMismatch : AnyPtr -> PrimIO AnyPtr

  export
  stepMismatch : (obj : ValidityStateFlags) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.stepMismatch  = v}"
  prim__setStepMismatch : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStepMismatch : (obj : ValidityStateFlags) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.tooLong"
  prim__tooLong : AnyPtr -> PrimIO AnyPtr

  export
  tooLong : (obj : ValidityStateFlags) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.tooLong  = v}"
  prim__setTooLong : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTooLong : (obj : ValidityStateFlags) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.tooShort"
  prim__tooShort : AnyPtr -> PrimIO AnyPtr

  export
  tooShort : (obj : ValidityStateFlags) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.tooShort  = v}"
  prim__setTooShort : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTooShort : (obj : ValidityStateFlags) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.typeMismatch"
  prim__typeMismatch : AnyPtr -> PrimIO AnyPtr

  export
  typeMismatch : (obj : ValidityStateFlags) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.typeMismatch  = v}"
  prim__setTypeMismatch : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTypeMismatch : (obj : ValidityStateFlags) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.valueMissing"
  prim__valueMissing : AnyPtr -> PrimIO AnyPtr

  export
  valueMissing : (obj : ValidityStateFlags) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.valueMissing  = v}"
  prim__setValueMissing : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValueMissing : (obj : ValidityStateFlags) -> (v : Bool) -> JSIO ()

namespace WindowPostMessageOptions
  
  public export
  JSType WindowPostMessageOptions where
    parents =  [ PostMessageOptions , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.targetOrigin"
  prim__targetOrigin : AnyPtr -> PrimIO AnyPtr

  export
  targetOrigin : (obj : WindowPostMessageOptions) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.targetOrigin  = v}"
  prim__setTargetOrigin : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTargetOrigin : (obj : WindowPostMessageOptions) -> (v : String) -> JSIO ()

namespace WorkerOptions
  
  public export
  JSType WorkerOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.credentials"
  prim__credentials : AnyPtr -> PrimIO AnyPtr

  export
  credentials : (obj : WorkerOptions) -> JSIO RequestCredentials

  %foreign "browser:lambda:(x,v)=>{x.credentials  = v}"
  prim__setCredentials : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCredentials : (obj : WorkerOptions) -> (v : RequestCredentials) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : WorkerOptions) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : WorkerOptions) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : WorkerOptions) -> JSIO WorkerType

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : WorkerOptions) -> (v : WorkerType) -> JSIO ()

namespace WorkletOptions
  
  public export
  JSType WorkletOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.credentials"
  prim__credentials : AnyPtr -> PrimIO AnyPtr

  export
  credentials : (obj : WorkletOptions) -> JSIO RequestCredentials

  %foreign "browser:lambda:(x,v)=>{x.credentials  = v}"
  prim__setCredentials : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCredentials : (obj : WorkletOptions) -> (v : RequestCredentials) -> JSIO ()

