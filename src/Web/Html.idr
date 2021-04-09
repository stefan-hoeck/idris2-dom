module Web.Html
 
import JS
import Web.Internal.HtmlPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace AudioTrack
  
  public export
  JSType AudioTrack where
    parents =  [ Object ]

    mixins =  []
  
  export
  enabled : (obj : AudioTrack) -> JSIO Boolean
  enabled a = primJS $ AudioTrack.prim__enabled a
  
  export
  setEnabled : (obj : AudioTrack) -> (value : Boolean) -> JSIO ()
  setEnabled a b = primJS $ AudioTrack.prim__setEnabled a b
  
  export
  id : (obj : AudioTrack) -> JSIO String
  id a = primJS $ AudioTrack.prim__id a
  
  export
  kind : (obj : AudioTrack) -> JSIO String
  kind a = primJS $ AudioTrack.prim__kind a
  
  export
  label : (obj : AudioTrack) -> JSIO String
  label a = primJS $ AudioTrack.prim__label a
  
  export
  language : (obj : AudioTrack) -> JSIO String
  language a = primJS $ AudioTrack.prim__language a
  
  export
  sourceBuffer : (obj : AudioTrack) -> JSIO (Nullable SourceBuffer)
  sourceBuffer a = primJS $ AudioTrack.prim__sourceBuffer a

namespace AudioTrackList
  
  public export
  JSType AudioTrackList where
    parents =  [ EventTarget , Object ]

    mixins =  []
  
  export
  get : (obj : AudioTrackList) -> (index : UInt32) -> JSIO AudioTrack
  get a b = primJS $ AudioTrackList.prim__get a b
  
  export
  length : (obj : AudioTrackList) -> JSIO UInt32
  length a = primJS $ AudioTrackList.prim__length a
  
  export
  onaddtrack : (obj : AudioTrackList) -> JSIO EventHandler
  onaddtrack a = primJS $ AudioTrackList.prim__onaddtrack a
  
  export
  setOnaddtrack : (obj : AudioTrackList) -> (value : EventHandler) -> JSIO ()
  setOnaddtrack a b = primJS $ AudioTrackList.prim__setOnaddtrack a b
  
  export
  onchange : (obj : AudioTrackList) -> JSIO EventHandler
  onchange a = primJS $ AudioTrackList.prim__onchange a
  
  export
  setOnchange : (obj : AudioTrackList) -> (value : EventHandler) -> JSIO ()
  setOnchange a b = primJS $ AudioTrackList.prim__setOnchange a b
  
  export
  onremovetrack : (obj : AudioTrackList) -> JSIO EventHandler
  onremovetrack a = primJS $ AudioTrackList.prim__onremovetrack a
  
  export
  setOnremovetrack : (obj : AudioTrackList) -> (value : EventHandler) -> JSIO ()
  setOnremovetrack a b = primJS $ AudioTrackList.prim__setOnremovetrack a b
  
  export
  getTrackById :  (obj : AudioTrackList)
               -> (id : String)
               -> JSIO (Nullable AudioTrack)
  getTrackById a b = primJS $ AudioTrackList.prim__getTrackById a b

namespace BarProp
  
  public export
  JSType BarProp where
    parents =  [ Object ]

    mixins =  []
  
  export
  visible : (obj : BarProp) -> JSIO Boolean
  visible a = primJS $ BarProp.prim__visible a

namespace BeforeUnloadEvent
  
  public export
  JSType BeforeUnloadEvent where
    parents =  [ Event , Object ]

    mixins =  []
  
  export
  returnValue : (obj : BeforeUnloadEvent) -> JSIO String
  returnValue a = primJS $ BeforeUnloadEvent.prim__returnValue a
  
  export
  setReturnValue : (obj : BeforeUnloadEvent) -> (value : String) -> JSIO ()
  setReturnValue a b = primJS $ BeforeUnloadEvent.prim__setReturnValue a b

namespace BroadcastChannel
  
  public export
  JSType BroadcastChannel where
    parents =  [ EventTarget , Object ]

    mixins =  []
  
  export
  new : (name : String) -> JSIO BroadcastChannel
  new a = primJS $ BroadcastChannel.prim__new a
  
  export
  name : (obj : BroadcastChannel) -> JSIO String
  name a = primJS $ BroadcastChannel.prim__name a
  
  export
  onmessage : (obj : BroadcastChannel) -> JSIO EventHandler
  onmessage a = primJS $ BroadcastChannel.prim__onmessage a
  
  export
  setOnmessage : (obj : BroadcastChannel) -> (value : EventHandler) -> JSIO ()
  setOnmessage a b = primJS $ BroadcastChannel.prim__setOnmessage a b
  
  export
  onmessageerror : (obj : BroadcastChannel) -> JSIO EventHandler
  onmessageerror a = primJS $ BroadcastChannel.prim__onmessageerror a
  
  export
  setOnmessageerror :  (obj : BroadcastChannel)
                    -> (value : EventHandler)
                    -> JSIO ()
  setOnmessageerror a b = primJS $ BroadcastChannel.prim__setOnmessageerror a b
  
  export
  close : (obj : BroadcastChannel) -> JSIO ()
  close a = primJS $ BroadcastChannel.prim__close a
  
  export
  postMessage : (obj : BroadcastChannel) -> (message : AnyPtr) -> JSIO ()
  postMessage a b = primJS $ BroadcastChannel.prim__postMessage a b

namespace CanvasGradient
  
  public export
  JSType CanvasGradient where
    parents =  [ Object ]

    mixins =  []
  
  export
  addColorStop :  (obj : CanvasGradient)
               -> (offset : Double)
               -> (color : String)
               -> JSIO ()
  addColorStop a b c = primJS $ CanvasGradient.prim__addColorStop a b c

namespace CanvasPattern
  
  public export
  JSType CanvasPattern where
    parents =  [ Object ]

    mixins =  []
  
  export
  setTransform :  (obj : CanvasPattern)
               -> (transform : UndefOr DOMMatrix2DInit)
               -> JSIO ()
  setTransform a b = primJS $ CanvasPattern.prim__setTransform a b

namespace CanvasRenderingContext2D
  
  public export
  JSType CanvasRenderingContext2D where
    parents =  [ Object ]

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
  
  export
  canvas : (obj : CanvasRenderingContext2D) -> JSIO HTMLCanvasElement
  canvas a = primJS $ CanvasRenderingContext2D.prim__canvas a
  
  export
  getContextAttributes :  (obj : CanvasRenderingContext2D)
                       -> JSIO CanvasRenderingContext2DSettings
  getContextAttributes a = primJS $ CanvasRenderingContext2D.prim__getContextAttributes a

namespace CloseEvent
  
  public export
  JSType CloseEvent where
    parents =  [ Event , Object ]

    mixins =  []
  
  export
  new :  (type : String)
      -> (eventInitDict : UndefOr CloseEventInit)
      -> JSIO CloseEvent
  new a b = primJS $ CloseEvent.prim__new a b
  
  export
  code : (obj : CloseEvent) -> JSIO UInt16
  code a = primJS $ CloseEvent.prim__code a
  
  export
  reason : (obj : CloseEvent) -> JSIO String
  reason a = primJS $ CloseEvent.prim__reason a
  
  export
  wasClean : (obj : CloseEvent) -> JSIO Boolean
  wasClean a = primJS $ CloseEvent.prim__wasClean a

namespace CustomElementRegistry
  
  public export
  JSType CustomElementRegistry where
    parents =  [ Object ]

    mixins =  []
  
  export
  define :  (obj : CustomElementRegistry)
         -> (name : String)
         -> (constructor : CustomElementConstructor)
         -> (options : UndefOr ElementDefinitionOptions)
         -> JSIO ()
  define a b c d = primJS $ CustomElementRegistry.prim__define a b c d
  
  export
  get :  (obj : CustomElementRegistry)
      -> (name : String)
      -> JSIO (Union2 CustomElementConstructor Undefined)
  get a b = primJS $ CustomElementRegistry.prim__get a b
  
  export
  upgrade : (obj : CustomElementRegistry) -> (root : Node) -> JSIO ()
  upgrade a b = primJS $ CustomElementRegistry.prim__upgrade a b
  
  export
  whenDefined :  (obj : CustomElementRegistry)
              -> (name : String)
              -> JSIO (Promise CustomElementConstructor)
  whenDefined a b = primJS $ CustomElementRegistry.prim__whenDefined a b

namespace DOMParser
  
  public export
  JSType DOMParser where
    parents =  [ Object ]

    mixins =  []
  
  export
  new : JSIO DOMParser
  new = primJS $ DOMParser.prim__new 
  
  export
  parseFromString :  (obj : DOMParser)
                  -> (string : String)
                  -> (type : DOMParserSupportedType)
                  -> JSIO Document
  parseFromString a b c = primJS $ DOMParser.prim__parseFromString a b c

namespace DOMStringList
  
  public export
  JSType DOMStringList where
    parents =  [ Object ]

    mixins =  []
  
  export
  length : (obj : DOMStringList) -> JSIO UInt32
  length a = primJS $ DOMStringList.prim__length a
  
  export
  contains : (obj : DOMStringList) -> (string : String) -> JSIO Boolean
  contains a b = primJS $ DOMStringList.prim__contains a b
  
  export
  item : (obj : DOMStringList) -> (index : UInt32) -> JSIO (Nullable String)
  item a b = primJS $ DOMStringList.prim__item a b

namespace DOMStringMap
  
  public export
  JSType DOMStringMap where
    parents =  [ Object ]

    mixins =  []
  
  export
  get : (obj : DOMStringMap) -> (name : String) -> JSIO String
  get a b = primJS $ DOMStringMap.prim__get a b
  
  export
  set : (obj : DOMStringMap) -> (name : String) -> (value : String) -> JSIO ()
  set a b c = primJS $ DOMStringMap.prim__set a b c

namespace DataTransfer
  
  public export
  JSType DataTransfer where
    parents =  [ Object ]

    mixins =  []
  
  export
  new : JSIO DataTransfer
  new = primJS $ DataTransfer.prim__new 
  
  export
  dropEffect : (obj : DataTransfer) -> JSIO String
  dropEffect a = primJS $ DataTransfer.prim__dropEffect a
  
  export
  setDropEffect : (obj : DataTransfer) -> (value : String) -> JSIO ()
  setDropEffect a b = primJS $ DataTransfer.prim__setDropEffect a b
  
  export
  effectAllowed : (obj : DataTransfer) -> JSIO String
  effectAllowed a = primJS $ DataTransfer.prim__effectAllowed a
  
  export
  setEffectAllowed : (obj : DataTransfer) -> (value : String) -> JSIO ()
  setEffectAllowed a b = primJS $ DataTransfer.prim__setEffectAllowed a b
  
  export
  files : (obj : DataTransfer) -> JSIO FileList
  files a = primJS $ DataTransfer.prim__files a
  
  export
  items : (obj : DataTransfer) -> JSIO DataTransferItemList
  items a = primJS $ DataTransfer.prim__items a
  
  export
  types : (obj : DataTransfer) -> JSIO (Array String)
  types a = primJS $ DataTransfer.prim__types a
  
  export
  clearData : (obj : DataTransfer) -> (format : UndefOr String) -> JSIO ()
  clearData a b = primJS $ DataTransfer.prim__clearData a b
  
  export
  getData : (obj : DataTransfer) -> (format : String) -> JSIO String
  getData a b = primJS $ DataTransfer.prim__getData a b
  
  export
  setData :  (obj : DataTransfer)
          -> (format : String)
          -> (data_ : String)
          -> JSIO ()
  setData a b c = primJS $ DataTransfer.prim__setData a b c
  
  export
  setDragImage :  (obj : DataTransfer)
               -> (image : Element)
               -> (x : Int32)
               -> (y : Int32)
               -> JSIO ()
  setDragImage a b c d = primJS $ DataTransfer.prim__setDragImage a b c d

namespace DataTransferItem
  
  public export
  JSType DataTransferItem where
    parents =  [ Object ]

    mixins =  []
  
  export
  kind : (obj : DataTransferItem) -> JSIO String
  kind a = primJS $ DataTransferItem.prim__kind a
  
  export
  type : (obj : DataTransferItem) -> JSIO String
  type a = primJS $ DataTransferItem.prim__type a
  
  export
  getAsFile : (obj : DataTransferItem) -> JSIO (Nullable File)
  getAsFile a = primJS $ DataTransferItem.prim__getAsFile a
  
  export
  getAsString :  (obj : DataTransferItem)
              -> (callback : Nullable FunctionStringCallback)
              -> JSIO ()
  getAsString a b = primJS $ DataTransferItem.prim__getAsString a b

namespace DataTransferItemList
  
  public export
  JSType DataTransferItemList where
    parents =  [ Object ]

    mixins =  []
  
  export
  get :  (obj : DataTransferItemList)
      -> (index : UInt32)
      -> JSIO DataTransferItem
  get a b = primJS $ DataTransferItemList.prim__get a b
  
  export
  length : (obj : DataTransferItemList) -> JSIO UInt32
  length a = primJS $ DataTransferItemList.prim__length a
  
  export
  add :  (obj : DataTransferItemList)
      -> (data_ : String)
      -> (type : String)
      -> JSIO (Nullable DataTransferItem)
  add a b c = primJS $ DataTransferItemList.prim__add a b c
  
  export
  add1 :  (obj : DataTransferItemList)
       -> (data_ : File)
       -> JSIO (Nullable DataTransferItem)
  add1 a b = primJS $ DataTransferItemList.prim__add1 a b
  
  export
  clear : (obj : DataTransferItemList) -> JSIO ()
  clear a = primJS $ DataTransferItemList.prim__clear a
  
  export
  remove : (obj : DataTransferItemList) -> (index : UInt32) -> JSIO ()
  remove a b = primJS $ DataTransferItemList.prim__remove a b

namespace DedicatedWorkerGlobalScope
  
  public export
  JSType DedicatedWorkerGlobalScope where
    parents =  [ WorkerGlobalScope , EventTarget , Object ]

    mixins =  []
  
  export
  name : (obj : DedicatedWorkerGlobalScope) -> JSIO String
  name a = primJS $ DedicatedWorkerGlobalScope.prim__name a
  
  export
  onmessage : (obj : DedicatedWorkerGlobalScope) -> JSIO EventHandler
  onmessage a = primJS $ DedicatedWorkerGlobalScope.prim__onmessage a
  
  export
  setOnmessage :  (obj : DedicatedWorkerGlobalScope)
               -> (value : EventHandler)
               -> JSIO ()
  setOnmessage a b = primJS $ DedicatedWorkerGlobalScope.prim__setOnmessage a b
  
  export
  onmessageerror : (obj : DedicatedWorkerGlobalScope) -> JSIO EventHandler
  onmessageerror a = primJS $ DedicatedWorkerGlobalScope.prim__onmessageerror a
  
  export
  setOnmessageerror :  (obj : DedicatedWorkerGlobalScope)
                    -> (value : EventHandler)
                    -> JSIO ()
  setOnmessageerror a b = primJS $ DedicatedWorkerGlobalScope.prim__setOnmessageerror a
                                                                                      b
  
  export
  close : (obj : DedicatedWorkerGlobalScope) -> JSIO ()
  close a = primJS $ DedicatedWorkerGlobalScope.prim__close a
  
  export
  postMessage :  (obj : DedicatedWorkerGlobalScope)
              -> (message : AnyPtr)
              -> (transfer : Array Object)
              -> JSIO ()
  postMessage a b c = primJS $ DedicatedWorkerGlobalScope.prim__postMessage a
                                                                            b
                                                                            c
  
  export
  postMessage1 :  (obj : DedicatedWorkerGlobalScope)
               -> (message : AnyPtr)
               -> (options : UndefOr PostMessageOptions)
               -> JSIO ()
  postMessage1 a b c = primJS $ DedicatedWorkerGlobalScope.prim__postMessage1 a
                                                                              b
                                                                              c

namespace DragEvent
  
  public export
  JSType DragEvent where
    parents =  [ MouseEvent , UIEvent , Event , Object ]

    mixins =  []
  
  export
  new :  (type : String)
      -> (eventInitDict : UndefOr DragEventInit)
      -> JSIO DragEvent
  new a b = primJS $ DragEvent.prim__new a b
  
  export
  dataTransfer : (obj : DragEvent) -> JSIO (Nullable DataTransfer)
  dataTransfer a = primJS $ DragEvent.prim__dataTransfer a

namespace ElementInternals
  
  public export
  JSType ElementInternals where
    parents =  [ Object ]

    mixins =  [ ARIAMixin ]
  
  export
  form : (obj : ElementInternals) -> JSIO (Nullable HTMLFormElement)
  form a = primJS $ ElementInternals.prim__form a
  
  export
  labels : (obj : ElementInternals) -> JSIO NodeList
  labels a = primJS $ ElementInternals.prim__labels a
  
  export
  shadowRoot : (obj : ElementInternals) -> JSIO (Nullable ShadowRoot)
  shadowRoot a = primJS $ ElementInternals.prim__shadowRoot a
  
  export
  validationMessage : (obj : ElementInternals) -> JSIO String
  validationMessage a = primJS $ ElementInternals.prim__validationMessage a
  
  export
  validity : (obj : ElementInternals) -> JSIO ValidityState
  validity a = primJS $ ElementInternals.prim__validity a
  
  export
  willValidate : (obj : ElementInternals) -> JSIO Boolean
  willValidate a = primJS $ ElementInternals.prim__willValidate a
  
  export
  checkValidity : (obj : ElementInternals) -> JSIO Boolean
  checkValidity a = primJS $ ElementInternals.prim__checkValidity a
  
  export
  reportValidity : (obj : ElementInternals) -> JSIO Boolean
  reportValidity a = primJS $ ElementInternals.prim__reportValidity a
  
  export
  setFormValue :  (obj : ElementInternals)
               -> (value : Nullable (Union3 File String FormData))
               -> (state : UndefOr (Nullable (Union3 File String FormData)))
               -> JSIO ()
  setFormValue a b c = primJS $ ElementInternals.prim__setFormValue a b c
  
  export
  setValidity :  (obj : ElementInternals)
              -> (flags : UndefOr ValidityStateFlags)
              -> (message : UndefOr String)
              -> (anchor : UndefOr HTMLElement)
              -> JSIO ()
  setValidity a b c d = primJS $ ElementInternals.prim__setValidity a b c d

namespace ErrorEvent
  
  public export
  JSType ErrorEvent where
    parents =  [ Event , Object ]

    mixins =  []
  
  export
  new :  (type : String)
      -> (eventInitDict : UndefOr ErrorEventInit)
      -> JSIO ErrorEvent
  new a b = primJS $ ErrorEvent.prim__new a b
  
  export
  colno : (obj : ErrorEvent) -> JSIO UInt32
  colno a = primJS $ ErrorEvent.prim__colno a
  
  export
  error : (obj : ErrorEvent) -> JSIO AnyPtr
  error a = primJS $ ErrorEvent.prim__error a
  
  export
  filename : (obj : ErrorEvent) -> JSIO String
  filename a = primJS $ ErrorEvent.prim__filename a
  
  export
  lineno : (obj : ErrorEvent) -> JSIO UInt32
  lineno a = primJS $ ErrorEvent.prim__lineno a
  
  export
  message : (obj : ErrorEvent) -> JSIO String
  message a = primJS $ ErrorEvent.prim__message a

namespace EventSource
  
  public export
  JSType EventSource where
    parents =  [ EventTarget , Object ]

    mixins =  []
  
  public export
  CLOSED : UInt16
  CLOSED = 2
  
  public export
  CONNECTING : UInt16
  CONNECTING = 0
  
  public export
  OPEN : UInt16
  OPEN = 1
  
  export
  new :  (url : String)
      -> (eventSourceInitDict : UndefOr EventSourceInit)
      -> JSIO EventSource
  new a b = primJS $ EventSource.prim__new a b
  
  export
  onerror : (obj : EventSource) -> JSIO EventHandler
  onerror a = primJS $ EventSource.prim__onerror a
  
  export
  setOnerror : (obj : EventSource) -> (value : EventHandler) -> JSIO ()
  setOnerror a b = primJS $ EventSource.prim__setOnerror a b
  
  export
  onmessage : (obj : EventSource) -> JSIO EventHandler
  onmessage a = primJS $ EventSource.prim__onmessage a
  
  export
  setOnmessage : (obj : EventSource) -> (value : EventHandler) -> JSIO ()
  setOnmessage a b = primJS $ EventSource.prim__setOnmessage a b
  
  export
  onopen : (obj : EventSource) -> JSIO EventHandler
  onopen a = primJS $ EventSource.prim__onopen a
  
  export
  setOnopen : (obj : EventSource) -> (value : EventHandler) -> JSIO ()
  setOnopen a b = primJS $ EventSource.prim__setOnopen a b
  
  export
  readyState : (obj : EventSource) -> JSIO UInt16
  readyState a = primJS $ EventSource.prim__readyState a
  
  export
  url : (obj : EventSource) -> JSIO String
  url a = primJS $ EventSource.prim__url a
  
  export
  withCredentials : (obj : EventSource) -> JSIO Boolean
  withCredentials a = primJS $ EventSource.prim__withCredentials a
  
  export
  close : (obj : EventSource) -> JSIO ()
  close a = primJS $ EventSource.prim__close a

namespace External
  
  public export
  JSType External where
    parents =  [ Object ]

    mixins =  []
  
  export
  AddSearchProvider : (obj : External) -> JSIO ()
  AddSearchProvider a = primJS $ External.prim__AddSearchProvider a
  
  export
  IsSearchProviderInstalled : (obj : External) -> JSIO ()
  IsSearchProviderInstalled a = primJS $ External.prim__IsSearchProviderInstalled a

namespace FormDataEvent
  
  public export
  JSType FormDataEvent where
    parents =  [ Event , Object ]

    mixins =  []
  
  export
  new :  (type : String)
      -> (eventInitDict : FormDataEventInit)
      -> JSIO FormDataEvent
  new a b = primJS $ FormDataEvent.prim__new a b
  
  export
  formData : (obj : FormDataEvent) -> JSIO FormData
  formData a = primJS $ FormDataEvent.prim__formData a

namespace HTMLAllCollection
  
  public export
  JSType HTMLAllCollection where
    parents =  [ Object ]

    mixins =  []
  
  export
  get : (obj : HTMLAllCollection) -> (index : UInt32) -> JSIO Element
  get a b = primJS $ HTMLAllCollection.prim__get a b
  
  export
  length : (obj : HTMLAllCollection) -> JSIO UInt32
  length a = primJS $ HTMLAllCollection.prim__length a
  
  export
  item :  (obj : HTMLAllCollection)
       -> (nameOrIndex : UndefOr String)
       -> JSIO (Nullable (Union2 HTMLCollection Element))
  item a b = primJS $ HTMLAllCollection.prim__item a b
  
  export
  namedItem :  (obj : HTMLAllCollection)
            -> (name : String)
            -> JSIO (Nullable (Union2 HTMLCollection Element))
  namedItem a b = primJS $ HTMLAllCollection.prim__namedItem a b

namespace HTMLAnchorElement
  
  public export
  JSType HTMLAnchorElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLAnchorElement
  new = primJS $ HTMLAnchorElement.prim__new 
  
  export
  charset : (obj : HTMLAnchorElement) -> JSIO String
  charset a = primJS $ HTMLAnchorElement.prim__charset a
  
  export
  setCharset : (obj : HTMLAnchorElement) -> (value : String) -> JSIO ()
  setCharset a b = primJS $ HTMLAnchorElement.prim__setCharset a b
  
  export
  coords : (obj : HTMLAnchorElement) -> JSIO String
  coords a = primJS $ HTMLAnchorElement.prim__coords a
  
  export
  setCoords : (obj : HTMLAnchorElement) -> (value : String) -> JSIO ()
  setCoords a b = primJS $ HTMLAnchorElement.prim__setCoords a b
  
  export
  download : (obj : HTMLAnchorElement) -> JSIO String
  download a = primJS $ HTMLAnchorElement.prim__download a
  
  export
  setDownload : (obj : HTMLAnchorElement) -> (value : String) -> JSIO ()
  setDownload a b = primJS $ HTMLAnchorElement.prim__setDownload a b
  
  export
  hreflang : (obj : HTMLAnchorElement) -> JSIO String
  hreflang a = primJS $ HTMLAnchorElement.prim__hreflang a
  
  export
  setHreflang : (obj : HTMLAnchorElement) -> (value : String) -> JSIO ()
  setHreflang a b = primJS $ HTMLAnchorElement.prim__setHreflang a b
  
  export
  name : (obj : HTMLAnchorElement) -> JSIO String
  name a = primJS $ HTMLAnchorElement.prim__name a
  
  export
  setName : (obj : HTMLAnchorElement) -> (value : String) -> JSIO ()
  setName a b = primJS $ HTMLAnchorElement.prim__setName a b
  
  export
  ping : (obj : HTMLAnchorElement) -> JSIO String
  ping a = primJS $ HTMLAnchorElement.prim__ping a
  
  export
  setPing : (obj : HTMLAnchorElement) -> (value : String) -> JSIO ()
  setPing a b = primJS $ HTMLAnchorElement.prim__setPing a b
  
  export
  referrerPolicy : (obj : HTMLAnchorElement) -> JSIO String
  referrerPolicy a = primJS $ HTMLAnchorElement.prim__referrerPolicy a
  
  export
  setReferrerPolicy : (obj : HTMLAnchorElement) -> (value : String) -> JSIO ()
  setReferrerPolicy a b = primJS $ HTMLAnchorElement.prim__setReferrerPolicy a b
  
  export
  rel : (obj : HTMLAnchorElement) -> JSIO String
  rel a = primJS $ HTMLAnchorElement.prim__rel a
  
  export
  setRel : (obj : HTMLAnchorElement) -> (value : String) -> JSIO ()
  setRel a b = primJS $ HTMLAnchorElement.prim__setRel a b
  
  export
  relList : (obj : HTMLAnchorElement) -> JSIO DOMTokenList
  relList a = primJS $ HTMLAnchorElement.prim__relList a
  
  export
  rev : (obj : HTMLAnchorElement) -> JSIO String
  rev a = primJS $ HTMLAnchorElement.prim__rev a
  
  export
  setRev : (obj : HTMLAnchorElement) -> (value : String) -> JSIO ()
  setRev a b = primJS $ HTMLAnchorElement.prim__setRev a b
  
  export
  shape : (obj : HTMLAnchorElement) -> JSIO String
  shape a = primJS $ HTMLAnchorElement.prim__shape a
  
  export
  setShape : (obj : HTMLAnchorElement) -> (value : String) -> JSIO ()
  setShape a b = primJS $ HTMLAnchorElement.prim__setShape a b
  
  export
  target : (obj : HTMLAnchorElement) -> JSIO String
  target a = primJS $ HTMLAnchorElement.prim__target a
  
  export
  setTarget : (obj : HTMLAnchorElement) -> (value : String) -> JSIO ()
  setTarget a b = primJS $ HTMLAnchorElement.prim__setTarget a b
  
  export
  text : (obj : HTMLAnchorElement) -> JSIO String
  text a = primJS $ HTMLAnchorElement.prim__text a
  
  export
  setText : (obj : HTMLAnchorElement) -> (value : String) -> JSIO ()
  setText a b = primJS $ HTMLAnchorElement.prim__setText a b
  
  export
  type : (obj : HTMLAnchorElement) -> JSIO String
  type a = primJS $ HTMLAnchorElement.prim__type a
  
  export
  setType : (obj : HTMLAnchorElement) -> (value : String) -> JSIO ()
  setType a b = primJS $ HTMLAnchorElement.prim__setType a b

namespace HTMLAreaElement
  
  public export
  JSType HTMLAreaElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLAreaElement
  new = primJS $ HTMLAreaElement.prim__new 
  
  export
  alt : (obj : HTMLAreaElement) -> JSIO String
  alt a = primJS $ HTMLAreaElement.prim__alt a
  
  export
  setAlt : (obj : HTMLAreaElement) -> (value : String) -> JSIO ()
  setAlt a b = primJS $ HTMLAreaElement.prim__setAlt a b
  
  export
  coords : (obj : HTMLAreaElement) -> JSIO String
  coords a = primJS $ HTMLAreaElement.prim__coords a
  
  export
  setCoords : (obj : HTMLAreaElement) -> (value : String) -> JSIO ()
  setCoords a b = primJS $ HTMLAreaElement.prim__setCoords a b
  
  export
  download : (obj : HTMLAreaElement) -> JSIO String
  download a = primJS $ HTMLAreaElement.prim__download a
  
  export
  setDownload : (obj : HTMLAreaElement) -> (value : String) -> JSIO ()
  setDownload a b = primJS $ HTMLAreaElement.prim__setDownload a b
  
  export
  noHref : (obj : HTMLAreaElement) -> JSIO Boolean
  noHref a = primJS $ HTMLAreaElement.prim__noHref a
  
  export
  setNoHref : (obj : HTMLAreaElement) -> (value : Boolean) -> JSIO ()
  setNoHref a b = primJS $ HTMLAreaElement.prim__setNoHref a b
  
  export
  ping : (obj : HTMLAreaElement) -> JSIO String
  ping a = primJS $ HTMLAreaElement.prim__ping a
  
  export
  setPing : (obj : HTMLAreaElement) -> (value : String) -> JSIO ()
  setPing a b = primJS $ HTMLAreaElement.prim__setPing a b
  
  export
  referrerPolicy : (obj : HTMLAreaElement) -> JSIO String
  referrerPolicy a = primJS $ HTMLAreaElement.prim__referrerPolicy a
  
  export
  setReferrerPolicy : (obj : HTMLAreaElement) -> (value : String) -> JSIO ()
  setReferrerPolicy a b = primJS $ HTMLAreaElement.prim__setReferrerPolicy a b
  
  export
  rel : (obj : HTMLAreaElement) -> JSIO String
  rel a = primJS $ HTMLAreaElement.prim__rel a
  
  export
  setRel : (obj : HTMLAreaElement) -> (value : String) -> JSIO ()
  setRel a b = primJS $ HTMLAreaElement.prim__setRel a b
  
  export
  relList : (obj : HTMLAreaElement) -> JSIO DOMTokenList
  relList a = primJS $ HTMLAreaElement.prim__relList a
  
  export
  shape : (obj : HTMLAreaElement) -> JSIO String
  shape a = primJS $ HTMLAreaElement.prim__shape a
  
  export
  setShape : (obj : HTMLAreaElement) -> (value : String) -> JSIO ()
  setShape a b = primJS $ HTMLAreaElement.prim__setShape a b
  
  export
  target : (obj : HTMLAreaElement) -> JSIO String
  target a = primJS $ HTMLAreaElement.prim__target a
  
  export
  setTarget : (obj : HTMLAreaElement) -> (value : String) -> JSIO ()
  setTarget a b = primJS $ HTMLAreaElement.prim__setTarget a b

namespace HTMLAudioElement
  
  public export
  JSType HTMLAudioElement where
    parents =  [ HTMLMediaElement
               , HTMLElement
               , Element
               , Node
               , EventTarget
               , Object
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
  
  export
  new : JSIO HTMLAudioElement
  new = primJS $ HTMLAudioElement.prim__new 

namespace HTMLBRElement
  
  public export
  JSType HTMLBRElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLBRElement
  new = primJS $ HTMLBRElement.prim__new 
  
  export
  clear : (obj : HTMLBRElement) -> JSIO String
  clear a = primJS $ HTMLBRElement.prim__clear a
  
  export
  setClear : (obj : HTMLBRElement) -> (value : String) -> JSIO ()
  setClear a b = primJS $ HTMLBRElement.prim__setClear a b

namespace HTMLBaseElement
  
  public export
  JSType HTMLBaseElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLBaseElement
  new = primJS $ HTMLBaseElement.prim__new 
  
  export
  href : (obj : HTMLBaseElement) -> JSIO String
  href a = primJS $ HTMLBaseElement.prim__href a
  
  export
  setHref : (obj : HTMLBaseElement) -> (value : String) -> JSIO ()
  setHref a b = primJS $ HTMLBaseElement.prim__setHref a b
  
  export
  target : (obj : HTMLBaseElement) -> JSIO String
  target a = primJS $ HTMLBaseElement.prim__target a
  
  export
  setTarget : (obj : HTMLBaseElement) -> (value : String) -> JSIO ()
  setTarget a b = primJS $ HTMLBaseElement.prim__setTarget a b

namespace HTMLBodyElement
  
  public export
  JSType HTMLBodyElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLBodyElement
  new = primJS $ HTMLBodyElement.prim__new 
  
  export
  aLink : (obj : HTMLBodyElement) -> JSIO String
  aLink a = primJS $ HTMLBodyElement.prim__aLink a
  
  export
  setALink : (obj : HTMLBodyElement) -> (value : String) -> JSIO ()
  setALink a b = primJS $ HTMLBodyElement.prim__setALink a b
  
  export
  background : (obj : HTMLBodyElement) -> JSIO String
  background a = primJS $ HTMLBodyElement.prim__background a
  
  export
  setBackground : (obj : HTMLBodyElement) -> (value : String) -> JSIO ()
  setBackground a b = primJS $ HTMLBodyElement.prim__setBackground a b
  
  export
  bgColor : (obj : HTMLBodyElement) -> JSIO String
  bgColor a = primJS $ HTMLBodyElement.prim__bgColor a
  
  export
  setBgColor : (obj : HTMLBodyElement) -> (value : String) -> JSIO ()
  setBgColor a b = primJS $ HTMLBodyElement.prim__setBgColor a b
  
  export
  link : (obj : HTMLBodyElement) -> JSIO String
  link a = primJS $ HTMLBodyElement.prim__link a
  
  export
  setLink : (obj : HTMLBodyElement) -> (value : String) -> JSIO ()
  setLink a b = primJS $ HTMLBodyElement.prim__setLink a b
  
  export
  text : (obj : HTMLBodyElement) -> JSIO String
  text a = primJS $ HTMLBodyElement.prim__text a
  
  export
  setText : (obj : HTMLBodyElement) -> (value : String) -> JSIO ()
  setText a b = primJS $ HTMLBodyElement.prim__setText a b
  
  export
  vLink : (obj : HTMLBodyElement) -> JSIO String
  vLink a = primJS $ HTMLBodyElement.prim__vLink a
  
  export
  setVLink : (obj : HTMLBodyElement) -> (value : String) -> JSIO ()
  setVLink a b = primJS $ HTMLBodyElement.prim__setVLink a b

namespace HTMLButtonElement
  
  public export
  JSType HTMLButtonElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLButtonElement
  new = primJS $ HTMLButtonElement.prim__new 
  
  export
  disabled : (obj : HTMLButtonElement) -> JSIO Boolean
  disabled a = primJS $ HTMLButtonElement.prim__disabled a
  
  export
  setDisabled : (obj : HTMLButtonElement) -> (value : Boolean) -> JSIO ()
  setDisabled a b = primJS $ HTMLButtonElement.prim__setDisabled a b
  
  export
  form : (obj : HTMLButtonElement) -> JSIO (Nullable HTMLFormElement)
  form a = primJS $ HTMLButtonElement.prim__form a
  
  export
  formAction : (obj : HTMLButtonElement) -> JSIO String
  formAction a = primJS $ HTMLButtonElement.prim__formAction a
  
  export
  setFormAction : (obj : HTMLButtonElement) -> (value : String) -> JSIO ()
  setFormAction a b = primJS $ HTMLButtonElement.prim__setFormAction a b
  
  export
  formEnctype : (obj : HTMLButtonElement) -> JSIO String
  formEnctype a = primJS $ HTMLButtonElement.prim__formEnctype a
  
  export
  setFormEnctype : (obj : HTMLButtonElement) -> (value : String) -> JSIO ()
  setFormEnctype a b = primJS $ HTMLButtonElement.prim__setFormEnctype a b
  
  export
  formMethod : (obj : HTMLButtonElement) -> JSIO String
  formMethod a = primJS $ HTMLButtonElement.prim__formMethod a
  
  export
  setFormMethod : (obj : HTMLButtonElement) -> (value : String) -> JSIO ()
  setFormMethod a b = primJS $ HTMLButtonElement.prim__setFormMethod a b
  
  export
  formNoValidate : (obj : HTMLButtonElement) -> JSIO Boolean
  formNoValidate a = primJS $ HTMLButtonElement.prim__formNoValidate a
  
  export
  setFormNoValidate : (obj : HTMLButtonElement) -> (value : Boolean) -> JSIO ()
  setFormNoValidate a b = primJS $ HTMLButtonElement.prim__setFormNoValidate a b
  
  export
  formTarget : (obj : HTMLButtonElement) -> JSIO String
  formTarget a = primJS $ HTMLButtonElement.prim__formTarget a
  
  export
  setFormTarget : (obj : HTMLButtonElement) -> (value : String) -> JSIO ()
  setFormTarget a b = primJS $ HTMLButtonElement.prim__setFormTarget a b
  
  export
  labels : (obj : HTMLButtonElement) -> JSIO NodeList
  labels a = primJS $ HTMLButtonElement.prim__labels a
  
  export
  name : (obj : HTMLButtonElement) -> JSIO String
  name a = primJS $ HTMLButtonElement.prim__name a
  
  export
  setName : (obj : HTMLButtonElement) -> (value : String) -> JSIO ()
  setName a b = primJS $ HTMLButtonElement.prim__setName a b
  
  export
  type : (obj : HTMLButtonElement) -> JSIO String
  type a = primJS $ HTMLButtonElement.prim__type a
  
  export
  setType : (obj : HTMLButtonElement) -> (value : String) -> JSIO ()
  setType a b = primJS $ HTMLButtonElement.prim__setType a b
  
  export
  validationMessage : (obj : HTMLButtonElement) -> JSIO String
  validationMessage a = primJS $ HTMLButtonElement.prim__validationMessage a
  
  export
  validity : (obj : HTMLButtonElement) -> JSIO ValidityState
  validity a = primJS $ HTMLButtonElement.prim__validity a
  
  export
  value : (obj : HTMLButtonElement) -> JSIO String
  value a = primJS $ HTMLButtonElement.prim__value a
  
  export
  setValue : (obj : HTMLButtonElement) -> (value : String) -> JSIO ()
  setValue a b = primJS $ HTMLButtonElement.prim__setValue a b
  
  export
  willValidate : (obj : HTMLButtonElement) -> JSIO Boolean
  willValidate a = primJS $ HTMLButtonElement.prim__willValidate a
  
  export
  checkValidity : (obj : HTMLButtonElement) -> JSIO Boolean
  checkValidity a = primJS $ HTMLButtonElement.prim__checkValidity a
  
  export
  reportValidity : (obj : HTMLButtonElement) -> JSIO Boolean
  reportValidity a = primJS $ HTMLButtonElement.prim__reportValidity a
  
  export
  setCustomValidity : (obj : HTMLButtonElement) -> (error : String) -> JSIO ()
  setCustomValidity a b = primJS $ HTMLButtonElement.prim__setCustomValidity a b

namespace HTMLCanvasElement
  
  public export
  JSType HTMLCanvasElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLCanvasElement
  new = primJS $ HTMLCanvasElement.prim__new 
  
  export
  height : (obj : HTMLCanvasElement) -> JSIO UInt32
  height a = primJS $ HTMLCanvasElement.prim__height a
  
  export
  setHeight : (obj : HTMLCanvasElement) -> (value : UInt32) -> JSIO ()
  setHeight a b = primJS $ HTMLCanvasElement.prim__setHeight a b
  
  export
  width : (obj : HTMLCanvasElement) -> JSIO UInt32
  width a = primJS $ HTMLCanvasElement.prim__width a
  
  export
  setWidth : (obj : HTMLCanvasElement) -> (value : UInt32) -> JSIO ()
  setWidth a b = primJS $ HTMLCanvasElement.prim__setWidth a b
  
  export
  getContext :  (obj : HTMLCanvasElement)
             -> (contextId : String)
             -> (options : UndefOr AnyPtr)
             -> JSIO (Nullable RenderingContext)
  getContext a b c = primJS $ HTMLCanvasElement.prim__getContext a b c
  
  export
  toBlob :  (obj : HTMLCanvasElement)
         -> (callback : BlobCallback)
         -> (type : UndefOr String)
         -> (quality : UndefOr AnyPtr)
         -> JSIO ()
  toBlob a b c d = primJS $ HTMLCanvasElement.prim__toBlob a b c d
  
  export
  toDataURL :  (obj : HTMLCanvasElement)
            -> (type : UndefOr String)
            -> (quality : UndefOr AnyPtr)
            -> JSIO String
  toDataURL a b c = primJS $ HTMLCanvasElement.prim__toDataURL a b c
  
  export
  transferControlToOffscreen : (obj : HTMLCanvasElement) -> JSIO OffscreenCanvas
  transferControlToOffscreen a = primJS $ HTMLCanvasElement.prim__transferControlToOffscreen a

namespace HTMLDListElement
  
  public export
  JSType HTMLDListElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLDListElement
  new = primJS $ HTMLDListElement.prim__new 
  
  export
  compact : (obj : HTMLDListElement) -> JSIO Boolean
  compact a = primJS $ HTMLDListElement.prim__compact a
  
  export
  setCompact : (obj : HTMLDListElement) -> (value : Boolean) -> JSIO ()
  setCompact a b = primJS $ HTMLDListElement.prim__setCompact a b

namespace HTMLDataElement
  
  public export
  JSType HTMLDataElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLDataElement
  new = primJS $ HTMLDataElement.prim__new 
  
  export
  value : (obj : HTMLDataElement) -> JSIO String
  value a = primJS $ HTMLDataElement.prim__value a
  
  export
  setValue : (obj : HTMLDataElement) -> (value : String) -> JSIO ()
  setValue a b = primJS $ HTMLDataElement.prim__setValue a b

namespace HTMLDataListElement
  
  public export
  JSType HTMLDataListElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLDataListElement
  new = primJS $ HTMLDataListElement.prim__new 
  
  export
  options : (obj : HTMLDataListElement) -> JSIO HTMLCollection
  options a = primJS $ HTMLDataListElement.prim__options a

namespace HTMLDetailsElement
  
  public export
  JSType HTMLDetailsElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLDetailsElement
  new = primJS $ HTMLDetailsElement.prim__new 
  
  export
  open_ : (obj : HTMLDetailsElement) -> JSIO Boolean
  open_ a = primJS $ HTMLDetailsElement.prim__open a
  
  export
  setOpen : (obj : HTMLDetailsElement) -> (value : Boolean) -> JSIO ()
  setOpen a b = primJS $ HTMLDetailsElement.prim__setOpen a b

namespace HTMLDialogElement
  
  public export
  JSType HTMLDialogElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLDialogElement
  new = primJS $ HTMLDialogElement.prim__new 
  
  export
  open_ : (obj : HTMLDialogElement) -> JSIO Boolean
  open_ a = primJS $ HTMLDialogElement.prim__open a
  
  export
  setOpen : (obj : HTMLDialogElement) -> (value : Boolean) -> JSIO ()
  setOpen a b = primJS $ HTMLDialogElement.prim__setOpen a b
  
  export
  returnValue : (obj : HTMLDialogElement) -> JSIO String
  returnValue a = primJS $ HTMLDialogElement.prim__returnValue a
  
  export
  setReturnValue : (obj : HTMLDialogElement) -> (value : String) -> JSIO ()
  setReturnValue a b = primJS $ HTMLDialogElement.prim__setReturnValue a b
  
  export
  close : (obj : HTMLDialogElement) -> (returnValue : UndefOr String) -> JSIO ()
  close a b = primJS $ HTMLDialogElement.prim__close a b
  
  export
  show : (obj : HTMLDialogElement) -> JSIO ()
  show a = primJS $ HTMLDialogElement.prim__show a
  
  export
  showModal : (obj : HTMLDialogElement) -> JSIO ()
  showModal a = primJS $ HTMLDialogElement.prim__showModal a

namespace HTMLDirectoryElement
  
  public export
  JSType HTMLDirectoryElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLDirectoryElement
  new = primJS $ HTMLDirectoryElement.prim__new 
  
  export
  compact : (obj : HTMLDirectoryElement) -> JSIO Boolean
  compact a = primJS $ HTMLDirectoryElement.prim__compact a
  
  export
  setCompact : (obj : HTMLDirectoryElement) -> (value : Boolean) -> JSIO ()
  setCompact a b = primJS $ HTMLDirectoryElement.prim__setCompact a b

namespace HTMLDivElement
  
  public export
  JSType HTMLDivElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLDivElement
  new = primJS $ HTMLDivElement.prim__new 
  
  export
  align : (obj : HTMLDivElement) -> JSIO String
  align a = primJS $ HTMLDivElement.prim__align a
  
  export
  setAlign : (obj : HTMLDivElement) -> (value : String) -> JSIO ()
  setAlign a b = primJS $ HTMLDivElement.prim__setAlign a b

namespace HTMLElement
  
  public export
  JSType HTMLElement where
    parents =  [ Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLElement
  new = primJS $ HTMLElement.prim__new 
  
  export
  accessKey : (obj : HTMLElement) -> JSIO String
  accessKey a = primJS $ HTMLElement.prim__accessKey a
  
  export
  setAccessKey : (obj : HTMLElement) -> (value : String) -> JSIO ()
  setAccessKey a b = primJS $ HTMLElement.prim__setAccessKey a b
  
  export
  accessKeyLabel : (obj : HTMLElement) -> JSIO String
  accessKeyLabel a = primJS $ HTMLElement.prim__accessKeyLabel a
  
  export
  autocapitalize : (obj : HTMLElement) -> JSIO String
  autocapitalize a = primJS $ HTMLElement.prim__autocapitalize a
  
  export
  setAutocapitalize : (obj : HTMLElement) -> (value : String) -> JSIO ()
  setAutocapitalize a b = primJS $ HTMLElement.prim__setAutocapitalize a b
  
  export
  dir : (obj : HTMLElement) -> JSIO String
  dir a = primJS $ HTMLElement.prim__dir a
  
  export
  setDir : (obj : HTMLElement) -> (value : String) -> JSIO ()
  setDir a b = primJS $ HTMLElement.prim__setDir a b
  
  export
  draggable : (obj : HTMLElement) -> JSIO Boolean
  draggable a = primJS $ HTMLElement.prim__draggable a
  
  export
  setDraggable : (obj : HTMLElement) -> (value : Boolean) -> JSIO ()
  setDraggable a b = primJS $ HTMLElement.prim__setDraggable a b
  
  export
  hidden : (obj : HTMLElement) -> JSIO Boolean
  hidden a = primJS $ HTMLElement.prim__hidden a
  
  export
  setHidden : (obj : HTMLElement) -> (value : Boolean) -> JSIO ()
  setHidden a b = primJS $ HTMLElement.prim__setHidden a b
  
  export
  innerText : (obj : HTMLElement) -> JSIO String
  innerText a = primJS $ HTMLElement.prim__innerText a
  
  export
  setInnerText : (obj : HTMLElement) -> (value : String) -> JSIO ()
  setInnerText a b = primJS $ HTMLElement.prim__setInnerText a b
  
  export
  lang : (obj : HTMLElement) -> JSIO String
  lang a = primJS $ HTMLElement.prim__lang a
  
  export
  setLang : (obj : HTMLElement) -> (value : String) -> JSIO ()
  setLang a b = primJS $ HTMLElement.prim__setLang a b
  
  export
  spellcheck : (obj : HTMLElement) -> JSIO Boolean
  spellcheck a = primJS $ HTMLElement.prim__spellcheck a
  
  export
  setSpellcheck : (obj : HTMLElement) -> (value : Boolean) -> JSIO ()
  setSpellcheck a b = primJS $ HTMLElement.prim__setSpellcheck a b
  
  export
  title : (obj : HTMLElement) -> JSIO String
  title a = primJS $ HTMLElement.prim__title a
  
  export
  setTitle : (obj : HTMLElement) -> (value : String) -> JSIO ()
  setTitle a b = primJS $ HTMLElement.prim__setTitle a b
  
  export
  translate : (obj : HTMLElement) -> JSIO Boolean
  translate a = primJS $ HTMLElement.prim__translate a
  
  export
  setTranslate : (obj : HTMLElement) -> (value : Boolean) -> JSIO ()
  setTranslate a b = primJS $ HTMLElement.prim__setTranslate a b
  
  export
  attachInternals : (obj : HTMLElement) -> JSIO ElementInternals
  attachInternals a = primJS $ HTMLElement.prim__attachInternals a
  
  export
  click : (obj : HTMLElement) -> JSIO ()
  click a = primJS $ HTMLElement.prim__click a

namespace HTMLEmbedElement
  
  public export
  JSType HTMLEmbedElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLEmbedElement
  new = primJS $ HTMLEmbedElement.prim__new 
  
  export
  align : (obj : HTMLEmbedElement) -> JSIO String
  align a = primJS $ HTMLEmbedElement.prim__align a
  
  export
  setAlign : (obj : HTMLEmbedElement) -> (value : String) -> JSIO ()
  setAlign a b = primJS $ HTMLEmbedElement.prim__setAlign a b
  
  export
  height : (obj : HTMLEmbedElement) -> JSIO String
  height a = primJS $ HTMLEmbedElement.prim__height a
  
  export
  setHeight : (obj : HTMLEmbedElement) -> (value : String) -> JSIO ()
  setHeight a b = primJS $ HTMLEmbedElement.prim__setHeight a b
  
  export
  name : (obj : HTMLEmbedElement) -> JSIO String
  name a = primJS $ HTMLEmbedElement.prim__name a
  
  export
  setName : (obj : HTMLEmbedElement) -> (value : String) -> JSIO ()
  setName a b = primJS $ HTMLEmbedElement.prim__setName a b
  
  export
  src : (obj : HTMLEmbedElement) -> JSIO String
  src a = primJS $ HTMLEmbedElement.prim__src a
  
  export
  setSrc : (obj : HTMLEmbedElement) -> (value : String) -> JSIO ()
  setSrc a b = primJS $ HTMLEmbedElement.prim__setSrc a b
  
  export
  type : (obj : HTMLEmbedElement) -> JSIO String
  type a = primJS $ HTMLEmbedElement.prim__type a
  
  export
  setType : (obj : HTMLEmbedElement) -> (value : String) -> JSIO ()
  setType a b = primJS $ HTMLEmbedElement.prim__setType a b
  
  export
  width : (obj : HTMLEmbedElement) -> JSIO String
  width a = primJS $ HTMLEmbedElement.prim__width a
  
  export
  setWidth : (obj : HTMLEmbedElement) -> (value : String) -> JSIO ()
  setWidth a b = primJS $ HTMLEmbedElement.prim__setWidth a b
  
  export
  getSVGDocument : (obj : HTMLEmbedElement) -> JSIO (Nullable Document)
  getSVGDocument a = primJS $ HTMLEmbedElement.prim__getSVGDocument a

namespace HTMLFieldSetElement
  
  public export
  JSType HTMLFieldSetElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLFieldSetElement
  new = primJS $ HTMLFieldSetElement.prim__new 
  
  export
  disabled : (obj : HTMLFieldSetElement) -> JSIO Boolean
  disabled a = primJS $ HTMLFieldSetElement.prim__disabled a
  
  export
  setDisabled : (obj : HTMLFieldSetElement) -> (value : Boolean) -> JSIO ()
  setDisabled a b = primJS $ HTMLFieldSetElement.prim__setDisabled a b
  
  export
  elements : (obj : HTMLFieldSetElement) -> JSIO HTMLCollection
  elements a = primJS $ HTMLFieldSetElement.prim__elements a
  
  export
  form : (obj : HTMLFieldSetElement) -> JSIO (Nullable HTMLFormElement)
  form a = primJS $ HTMLFieldSetElement.prim__form a
  
  export
  name : (obj : HTMLFieldSetElement) -> JSIO String
  name a = primJS $ HTMLFieldSetElement.prim__name a
  
  export
  setName : (obj : HTMLFieldSetElement) -> (value : String) -> JSIO ()
  setName a b = primJS $ HTMLFieldSetElement.prim__setName a b
  
  export
  type : (obj : HTMLFieldSetElement) -> JSIO String
  type a = primJS $ HTMLFieldSetElement.prim__type a
  
  export
  validationMessage : (obj : HTMLFieldSetElement) -> JSIO String
  validationMessage a = primJS $ HTMLFieldSetElement.prim__validationMessage a
  
  export
  validity : (obj : HTMLFieldSetElement) -> JSIO ValidityState
  validity a = primJS $ HTMLFieldSetElement.prim__validity a
  
  export
  willValidate : (obj : HTMLFieldSetElement) -> JSIO Boolean
  willValidate a = primJS $ HTMLFieldSetElement.prim__willValidate a
  
  export
  checkValidity : (obj : HTMLFieldSetElement) -> JSIO Boolean
  checkValidity a = primJS $ HTMLFieldSetElement.prim__checkValidity a
  
  export
  reportValidity : (obj : HTMLFieldSetElement) -> JSIO Boolean
  reportValidity a = primJS $ HTMLFieldSetElement.prim__reportValidity a
  
  export
  setCustomValidity : (obj : HTMLFieldSetElement) -> (error : String) -> JSIO ()
  setCustomValidity a b = primJS $ HTMLFieldSetElement.prim__setCustomValidity a
                                                                               b

namespace HTMLFontElement
  
  public export
  JSType HTMLFontElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLFontElement
  new = primJS $ HTMLFontElement.prim__new 
  
  export
  color : (obj : HTMLFontElement) -> JSIO String
  color a = primJS $ HTMLFontElement.prim__color a
  
  export
  setColor : (obj : HTMLFontElement) -> (value : String) -> JSIO ()
  setColor a b = primJS $ HTMLFontElement.prim__setColor a b
  
  export
  face : (obj : HTMLFontElement) -> JSIO String
  face a = primJS $ HTMLFontElement.prim__face a
  
  export
  setFace : (obj : HTMLFontElement) -> (value : String) -> JSIO ()
  setFace a b = primJS $ HTMLFontElement.prim__setFace a b
  
  export
  size : (obj : HTMLFontElement) -> JSIO String
  size a = primJS $ HTMLFontElement.prim__size a
  
  export
  setSize : (obj : HTMLFontElement) -> (value : String) -> JSIO ()
  setSize a b = primJS $ HTMLFontElement.prim__setSize a b

namespace HTMLFormControlsCollection
  
  public export
  JSType HTMLFormControlsCollection where
    parents =  [ HTMLCollection , Object ]

    mixins =  []
  
  export
  namedItem :  (obj : HTMLFormControlsCollection)
            -> (name : String)
            -> JSIO (Nullable (Union2 RadioNodeList Element))
  namedItem a b = primJS $ HTMLFormControlsCollection.prim__namedItem a b

namespace HTMLFormElement
  
  public export
  JSType HTMLFormElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLFormElement
  new = primJS $ HTMLFormElement.prim__new 
  
  export
  get : (obj : HTMLFormElement) -> (index : UInt32) -> JSIO Element
  get a b = primJS $ HTMLFormElement.prim__get a b
  
  export
  get1 :  (obj : HTMLFormElement)
       -> (name : String)
       -> JSIO (Union2 RadioNodeList Element)
  get1 a b = primJS $ HTMLFormElement.prim__get1 a b
  
  export
  acceptCharset : (obj : HTMLFormElement) -> JSIO String
  acceptCharset a = primJS $ HTMLFormElement.prim__acceptCharset a
  
  export
  setAcceptCharset : (obj : HTMLFormElement) -> (value : String) -> JSIO ()
  setAcceptCharset a b = primJS $ HTMLFormElement.prim__setAcceptCharset a b
  
  export
  action : (obj : HTMLFormElement) -> JSIO String
  action a = primJS $ HTMLFormElement.prim__action a
  
  export
  setAction : (obj : HTMLFormElement) -> (value : String) -> JSIO ()
  setAction a b = primJS $ HTMLFormElement.prim__setAction a b
  
  export
  autocomplete : (obj : HTMLFormElement) -> JSIO String
  autocomplete a = primJS $ HTMLFormElement.prim__autocomplete a
  
  export
  setAutocomplete : (obj : HTMLFormElement) -> (value : String) -> JSIO ()
  setAutocomplete a b = primJS $ HTMLFormElement.prim__setAutocomplete a b
  
  export
  elements : (obj : HTMLFormElement) -> JSIO HTMLFormControlsCollection
  elements a = primJS $ HTMLFormElement.prim__elements a
  
  export
  encoding : (obj : HTMLFormElement) -> JSIO String
  encoding a = primJS $ HTMLFormElement.prim__encoding a
  
  export
  setEncoding : (obj : HTMLFormElement) -> (value : String) -> JSIO ()
  setEncoding a b = primJS $ HTMLFormElement.prim__setEncoding a b
  
  export
  enctype : (obj : HTMLFormElement) -> JSIO String
  enctype a = primJS $ HTMLFormElement.prim__enctype a
  
  export
  setEnctype : (obj : HTMLFormElement) -> (value : String) -> JSIO ()
  setEnctype a b = primJS $ HTMLFormElement.prim__setEnctype a b
  
  export
  length : (obj : HTMLFormElement) -> JSIO UInt32
  length a = primJS $ HTMLFormElement.prim__length a
  
  export
  method : (obj : HTMLFormElement) -> JSIO String
  method a = primJS $ HTMLFormElement.prim__method a
  
  export
  setMethod : (obj : HTMLFormElement) -> (value : String) -> JSIO ()
  setMethod a b = primJS $ HTMLFormElement.prim__setMethod a b
  
  export
  name : (obj : HTMLFormElement) -> JSIO String
  name a = primJS $ HTMLFormElement.prim__name a
  
  export
  setName : (obj : HTMLFormElement) -> (value : String) -> JSIO ()
  setName a b = primJS $ HTMLFormElement.prim__setName a b
  
  export
  noValidate : (obj : HTMLFormElement) -> JSIO Boolean
  noValidate a = primJS $ HTMLFormElement.prim__noValidate a
  
  export
  setNoValidate : (obj : HTMLFormElement) -> (value : Boolean) -> JSIO ()
  setNoValidate a b = primJS $ HTMLFormElement.prim__setNoValidate a b
  
  export
  rel : (obj : HTMLFormElement) -> JSIO String
  rel a = primJS $ HTMLFormElement.prim__rel a
  
  export
  setRel : (obj : HTMLFormElement) -> (value : String) -> JSIO ()
  setRel a b = primJS $ HTMLFormElement.prim__setRel a b
  
  export
  relList : (obj : HTMLFormElement) -> JSIO DOMTokenList
  relList a = primJS $ HTMLFormElement.prim__relList a
  
  export
  target : (obj : HTMLFormElement) -> JSIO String
  target a = primJS $ HTMLFormElement.prim__target a
  
  export
  setTarget : (obj : HTMLFormElement) -> (value : String) -> JSIO ()
  setTarget a b = primJS $ HTMLFormElement.prim__setTarget a b
  
  export
  checkValidity : (obj : HTMLFormElement) -> JSIO Boolean
  checkValidity a = primJS $ HTMLFormElement.prim__checkValidity a
  
  export
  reportValidity : (obj : HTMLFormElement) -> JSIO Boolean
  reportValidity a = primJS $ HTMLFormElement.prim__reportValidity a
  
  export
  requestSubmit :  (obj : HTMLFormElement)
                -> (submitter : UndefOr (Nullable HTMLElement))
                -> JSIO ()
  requestSubmit a b = primJS $ HTMLFormElement.prim__requestSubmit a b
  
  export
  reset : (obj : HTMLFormElement) -> JSIO ()
  reset a = primJS $ HTMLFormElement.prim__reset a
  
  export
  submit : (obj : HTMLFormElement) -> JSIO ()
  submit a = primJS $ HTMLFormElement.prim__submit a

namespace HTMLFrameElement
  
  public export
  JSType HTMLFrameElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLFrameElement
  new = primJS $ HTMLFrameElement.prim__new 
  
  export
  contentDocument : (obj : HTMLFrameElement) -> JSIO (Nullable Document)
  contentDocument a = primJS $ HTMLFrameElement.prim__contentDocument a
  
  export
  contentWindow : (obj : HTMLFrameElement) -> JSIO (Nullable WindowProxy)
  contentWindow a = primJS $ HTMLFrameElement.prim__contentWindow a
  
  export
  frameBorder : (obj : HTMLFrameElement) -> JSIO String
  frameBorder a = primJS $ HTMLFrameElement.prim__frameBorder a
  
  export
  setFrameBorder : (obj : HTMLFrameElement) -> (value : String) -> JSIO ()
  setFrameBorder a b = primJS $ HTMLFrameElement.prim__setFrameBorder a b
  
  export
  longDesc : (obj : HTMLFrameElement) -> JSIO String
  longDesc a = primJS $ HTMLFrameElement.prim__longDesc a
  
  export
  setLongDesc : (obj : HTMLFrameElement) -> (value : String) -> JSIO ()
  setLongDesc a b = primJS $ HTMLFrameElement.prim__setLongDesc a b
  
  export
  marginHeight : (obj : HTMLFrameElement) -> JSIO String
  marginHeight a = primJS $ HTMLFrameElement.prim__marginHeight a
  
  export
  setMarginHeight : (obj : HTMLFrameElement) -> (value : String) -> JSIO ()
  setMarginHeight a b = primJS $ HTMLFrameElement.prim__setMarginHeight a b
  
  export
  marginWidth : (obj : HTMLFrameElement) -> JSIO String
  marginWidth a = primJS $ HTMLFrameElement.prim__marginWidth a
  
  export
  setMarginWidth : (obj : HTMLFrameElement) -> (value : String) -> JSIO ()
  setMarginWidth a b = primJS $ HTMLFrameElement.prim__setMarginWidth a b
  
  export
  name : (obj : HTMLFrameElement) -> JSIO String
  name a = primJS $ HTMLFrameElement.prim__name a
  
  export
  setName : (obj : HTMLFrameElement) -> (value : String) -> JSIO ()
  setName a b = primJS $ HTMLFrameElement.prim__setName a b
  
  export
  noResize : (obj : HTMLFrameElement) -> JSIO Boolean
  noResize a = primJS $ HTMLFrameElement.prim__noResize a
  
  export
  setNoResize : (obj : HTMLFrameElement) -> (value : Boolean) -> JSIO ()
  setNoResize a b = primJS $ HTMLFrameElement.prim__setNoResize a b
  
  export
  scrolling : (obj : HTMLFrameElement) -> JSIO String
  scrolling a = primJS $ HTMLFrameElement.prim__scrolling a
  
  export
  setScrolling : (obj : HTMLFrameElement) -> (value : String) -> JSIO ()
  setScrolling a b = primJS $ HTMLFrameElement.prim__setScrolling a b
  
  export
  src : (obj : HTMLFrameElement) -> JSIO String
  src a = primJS $ HTMLFrameElement.prim__src a
  
  export
  setSrc : (obj : HTMLFrameElement) -> (value : String) -> JSIO ()
  setSrc a b = primJS $ HTMLFrameElement.prim__setSrc a b

namespace HTMLFrameSetElement
  
  public export
  JSType HTMLFrameSetElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLFrameSetElement
  new = primJS $ HTMLFrameSetElement.prim__new 
  
  export
  cols : (obj : HTMLFrameSetElement) -> JSIO String
  cols a = primJS $ HTMLFrameSetElement.prim__cols a
  
  export
  setCols : (obj : HTMLFrameSetElement) -> (value : String) -> JSIO ()
  setCols a b = primJS $ HTMLFrameSetElement.prim__setCols a b
  
  export
  rows : (obj : HTMLFrameSetElement) -> JSIO String
  rows a = primJS $ HTMLFrameSetElement.prim__rows a
  
  export
  setRows : (obj : HTMLFrameSetElement) -> (value : String) -> JSIO ()
  setRows a b = primJS $ HTMLFrameSetElement.prim__setRows a b

namespace HTMLHRElement
  
  public export
  JSType HTMLHRElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLHRElement
  new = primJS $ HTMLHRElement.prim__new 
  
  export
  align : (obj : HTMLHRElement) -> JSIO String
  align a = primJS $ HTMLHRElement.prim__align a
  
  export
  setAlign : (obj : HTMLHRElement) -> (value : String) -> JSIO ()
  setAlign a b = primJS $ HTMLHRElement.prim__setAlign a b
  
  export
  color : (obj : HTMLHRElement) -> JSIO String
  color a = primJS $ HTMLHRElement.prim__color a
  
  export
  setColor : (obj : HTMLHRElement) -> (value : String) -> JSIO ()
  setColor a b = primJS $ HTMLHRElement.prim__setColor a b
  
  export
  noShade : (obj : HTMLHRElement) -> JSIO Boolean
  noShade a = primJS $ HTMLHRElement.prim__noShade a
  
  export
  setNoShade : (obj : HTMLHRElement) -> (value : Boolean) -> JSIO ()
  setNoShade a b = primJS $ HTMLHRElement.prim__setNoShade a b
  
  export
  size : (obj : HTMLHRElement) -> JSIO String
  size a = primJS $ HTMLHRElement.prim__size a
  
  export
  setSize : (obj : HTMLHRElement) -> (value : String) -> JSIO ()
  setSize a b = primJS $ HTMLHRElement.prim__setSize a b
  
  export
  width : (obj : HTMLHRElement) -> JSIO String
  width a = primJS $ HTMLHRElement.prim__width a
  
  export
  setWidth : (obj : HTMLHRElement) -> (value : String) -> JSIO ()
  setWidth a b = primJS $ HTMLHRElement.prim__setWidth a b

namespace HTMLHeadElement
  
  public export
  JSType HTMLHeadElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLHeadElement
  new = primJS $ HTMLHeadElement.prim__new 

namespace HTMLHeadingElement
  
  public export
  JSType HTMLHeadingElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLHeadingElement
  new = primJS $ HTMLHeadingElement.prim__new 
  
  export
  align : (obj : HTMLHeadingElement) -> JSIO String
  align a = primJS $ HTMLHeadingElement.prim__align a
  
  export
  setAlign : (obj : HTMLHeadingElement) -> (value : String) -> JSIO ()
  setAlign a b = primJS $ HTMLHeadingElement.prim__setAlign a b

namespace HTMLHtmlElement
  
  public export
  JSType HTMLHtmlElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLHtmlElement
  new = primJS $ HTMLHtmlElement.prim__new 
  
  export
  version : (obj : HTMLHtmlElement) -> JSIO String
  version a = primJS $ HTMLHtmlElement.prim__version a
  
  export
  setVersion : (obj : HTMLHtmlElement) -> (value : String) -> JSIO ()
  setVersion a b = primJS $ HTMLHtmlElement.prim__setVersion a b

namespace HTMLIFrameElement
  
  public export
  JSType HTMLIFrameElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLIFrameElement
  new = primJS $ HTMLIFrameElement.prim__new 
  
  export
  align : (obj : HTMLIFrameElement) -> JSIO String
  align a = primJS $ HTMLIFrameElement.prim__align a
  
  export
  setAlign : (obj : HTMLIFrameElement) -> (value : String) -> JSIO ()
  setAlign a b = primJS $ HTMLIFrameElement.prim__setAlign a b
  
  export
  allow : (obj : HTMLIFrameElement) -> JSIO String
  allow a = primJS $ HTMLIFrameElement.prim__allow a
  
  export
  setAllow : (obj : HTMLIFrameElement) -> (value : String) -> JSIO ()
  setAllow a b = primJS $ HTMLIFrameElement.prim__setAllow a b
  
  export
  allowFullscreen : (obj : HTMLIFrameElement) -> JSIO Boolean
  allowFullscreen a = primJS $ HTMLIFrameElement.prim__allowFullscreen a
  
  export
  setAllowFullscreen : (obj : HTMLIFrameElement) -> (value : Boolean) -> JSIO ()
  setAllowFullscreen a b = primJS $ HTMLIFrameElement.prim__setAllowFullscreen a
                                                                               b
  
  export
  contentDocument : (obj : HTMLIFrameElement) -> JSIO (Nullable Document)
  contentDocument a = primJS $ HTMLIFrameElement.prim__contentDocument a
  
  export
  contentWindow : (obj : HTMLIFrameElement) -> JSIO (Nullable WindowProxy)
  contentWindow a = primJS $ HTMLIFrameElement.prim__contentWindow a
  
  export
  frameBorder : (obj : HTMLIFrameElement) -> JSIO String
  frameBorder a = primJS $ HTMLIFrameElement.prim__frameBorder a
  
  export
  setFrameBorder : (obj : HTMLIFrameElement) -> (value : String) -> JSIO ()
  setFrameBorder a b = primJS $ HTMLIFrameElement.prim__setFrameBorder a b
  
  export
  height : (obj : HTMLIFrameElement) -> JSIO String
  height a = primJS $ HTMLIFrameElement.prim__height a
  
  export
  setHeight : (obj : HTMLIFrameElement) -> (value : String) -> JSIO ()
  setHeight a b = primJS $ HTMLIFrameElement.prim__setHeight a b
  
  export
  loading : (obj : HTMLIFrameElement) -> JSIO String
  loading a = primJS $ HTMLIFrameElement.prim__loading a
  
  export
  setLoading : (obj : HTMLIFrameElement) -> (value : String) -> JSIO ()
  setLoading a b = primJS $ HTMLIFrameElement.prim__setLoading a b
  
  export
  longDesc : (obj : HTMLIFrameElement) -> JSIO String
  longDesc a = primJS $ HTMLIFrameElement.prim__longDesc a
  
  export
  setLongDesc : (obj : HTMLIFrameElement) -> (value : String) -> JSIO ()
  setLongDesc a b = primJS $ HTMLIFrameElement.prim__setLongDesc a b
  
  export
  marginHeight : (obj : HTMLIFrameElement) -> JSIO String
  marginHeight a = primJS $ HTMLIFrameElement.prim__marginHeight a
  
  export
  setMarginHeight : (obj : HTMLIFrameElement) -> (value : String) -> JSIO ()
  setMarginHeight a b = primJS $ HTMLIFrameElement.prim__setMarginHeight a b
  
  export
  marginWidth : (obj : HTMLIFrameElement) -> JSIO String
  marginWidth a = primJS $ HTMLIFrameElement.prim__marginWidth a
  
  export
  setMarginWidth : (obj : HTMLIFrameElement) -> (value : String) -> JSIO ()
  setMarginWidth a b = primJS $ HTMLIFrameElement.prim__setMarginWidth a b
  
  export
  name : (obj : HTMLIFrameElement) -> JSIO String
  name a = primJS $ HTMLIFrameElement.prim__name a
  
  export
  setName : (obj : HTMLIFrameElement) -> (value : String) -> JSIO ()
  setName a b = primJS $ HTMLIFrameElement.prim__setName a b
  
  export
  referrerPolicy : (obj : HTMLIFrameElement) -> JSIO String
  referrerPolicy a = primJS $ HTMLIFrameElement.prim__referrerPolicy a
  
  export
  setReferrerPolicy : (obj : HTMLIFrameElement) -> (value : String) -> JSIO ()
  setReferrerPolicy a b = primJS $ HTMLIFrameElement.prim__setReferrerPolicy a b
  
  export
  sandbox : (obj : HTMLIFrameElement) -> JSIO DOMTokenList
  sandbox a = primJS $ HTMLIFrameElement.prim__sandbox a
  
  export
  scrolling : (obj : HTMLIFrameElement) -> JSIO String
  scrolling a = primJS $ HTMLIFrameElement.prim__scrolling a
  
  export
  setScrolling : (obj : HTMLIFrameElement) -> (value : String) -> JSIO ()
  setScrolling a b = primJS $ HTMLIFrameElement.prim__setScrolling a b
  
  export
  src : (obj : HTMLIFrameElement) -> JSIO String
  src a = primJS $ HTMLIFrameElement.prim__src a
  
  export
  setSrc : (obj : HTMLIFrameElement) -> (value : String) -> JSIO ()
  setSrc a b = primJS $ HTMLIFrameElement.prim__setSrc a b
  
  export
  srcdoc : (obj : HTMLIFrameElement) -> JSIO String
  srcdoc a = primJS $ HTMLIFrameElement.prim__srcdoc a
  
  export
  setSrcdoc : (obj : HTMLIFrameElement) -> (value : String) -> JSIO ()
  setSrcdoc a b = primJS $ HTMLIFrameElement.prim__setSrcdoc a b
  
  export
  width : (obj : HTMLIFrameElement) -> JSIO String
  width a = primJS $ HTMLIFrameElement.prim__width a
  
  export
  setWidth : (obj : HTMLIFrameElement) -> (value : String) -> JSIO ()
  setWidth a b = primJS $ HTMLIFrameElement.prim__setWidth a b
  
  export
  getSVGDocument : (obj : HTMLIFrameElement) -> JSIO (Nullable Document)
  getSVGDocument a = primJS $ HTMLIFrameElement.prim__getSVGDocument a

namespace HTMLImageElement
  
  public export
  JSType HTMLImageElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLImageElement
  new = primJS $ HTMLImageElement.prim__new 
  
  export
  align : (obj : HTMLImageElement) -> JSIO String
  align a = primJS $ HTMLImageElement.prim__align a
  
  export
  setAlign : (obj : HTMLImageElement) -> (value : String) -> JSIO ()
  setAlign a b = primJS $ HTMLImageElement.prim__setAlign a b
  
  export
  alt : (obj : HTMLImageElement) -> JSIO String
  alt a = primJS $ HTMLImageElement.prim__alt a
  
  export
  setAlt : (obj : HTMLImageElement) -> (value : String) -> JSIO ()
  setAlt a b = primJS $ HTMLImageElement.prim__setAlt a b
  
  export
  border : (obj : HTMLImageElement) -> JSIO String
  border a = primJS $ HTMLImageElement.prim__border a
  
  export
  setBorder : (obj : HTMLImageElement) -> (value : String) -> JSIO ()
  setBorder a b = primJS $ HTMLImageElement.prim__setBorder a b
  
  export
  complete : (obj : HTMLImageElement) -> JSIO Boolean
  complete a = primJS $ HTMLImageElement.prim__complete a
  
  export
  crossOrigin : (obj : HTMLImageElement) -> JSIO (Nullable String)
  crossOrigin a = primJS $ HTMLImageElement.prim__crossOrigin a
  
  export
  setCrossOrigin :  (obj : HTMLImageElement)
                 -> (value : Nullable String)
                 -> JSIO ()
  setCrossOrigin a b = primJS $ HTMLImageElement.prim__setCrossOrigin a b
  
  export
  currentSrc : (obj : HTMLImageElement) -> JSIO String
  currentSrc a = primJS $ HTMLImageElement.prim__currentSrc a
  
  export
  decoding : (obj : HTMLImageElement) -> JSIO String
  decoding a = primJS $ HTMLImageElement.prim__decoding a
  
  export
  setDecoding : (obj : HTMLImageElement) -> (value : String) -> JSIO ()
  setDecoding a b = primJS $ HTMLImageElement.prim__setDecoding a b
  
  export
  height : (obj : HTMLImageElement) -> JSIO UInt32
  height a = primJS $ HTMLImageElement.prim__height a
  
  export
  setHeight : (obj : HTMLImageElement) -> (value : UInt32) -> JSIO ()
  setHeight a b = primJS $ HTMLImageElement.prim__setHeight a b
  
  export
  hspace : (obj : HTMLImageElement) -> JSIO UInt32
  hspace a = primJS $ HTMLImageElement.prim__hspace a
  
  export
  setHspace : (obj : HTMLImageElement) -> (value : UInt32) -> JSIO ()
  setHspace a b = primJS $ HTMLImageElement.prim__setHspace a b
  
  export
  isMap : (obj : HTMLImageElement) -> JSIO Boolean
  isMap a = primJS $ HTMLImageElement.prim__isMap a
  
  export
  setIsMap : (obj : HTMLImageElement) -> (value : Boolean) -> JSIO ()
  setIsMap a b = primJS $ HTMLImageElement.prim__setIsMap a b
  
  export
  loading : (obj : HTMLImageElement) -> JSIO String
  loading a = primJS $ HTMLImageElement.prim__loading a
  
  export
  setLoading : (obj : HTMLImageElement) -> (value : String) -> JSIO ()
  setLoading a b = primJS $ HTMLImageElement.prim__setLoading a b
  
  export
  longDesc : (obj : HTMLImageElement) -> JSIO String
  longDesc a = primJS $ HTMLImageElement.prim__longDesc a
  
  export
  setLongDesc : (obj : HTMLImageElement) -> (value : String) -> JSIO ()
  setLongDesc a b = primJS $ HTMLImageElement.prim__setLongDesc a b
  
  export
  lowsrc : (obj : HTMLImageElement) -> JSIO String
  lowsrc a = primJS $ HTMLImageElement.prim__lowsrc a
  
  export
  setLowsrc : (obj : HTMLImageElement) -> (value : String) -> JSIO ()
  setLowsrc a b = primJS $ HTMLImageElement.prim__setLowsrc a b
  
  export
  name : (obj : HTMLImageElement) -> JSIO String
  name a = primJS $ HTMLImageElement.prim__name a
  
  export
  setName : (obj : HTMLImageElement) -> (value : String) -> JSIO ()
  setName a b = primJS $ HTMLImageElement.prim__setName a b
  
  export
  naturalHeight : (obj : HTMLImageElement) -> JSIO UInt32
  naturalHeight a = primJS $ HTMLImageElement.prim__naturalHeight a
  
  export
  naturalWidth : (obj : HTMLImageElement) -> JSIO UInt32
  naturalWidth a = primJS $ HTMLImageElement.prim__naturalWidth a
  
  export
  referrerPolicy : (obj : HTMLImageElement) -> JSIO String
  referrerPolicy a = primJS $ HTMLImageElement.prim__referrerPolicy a
  
  export
  setReferrerPolicy : (obj : HTMLImageElement) -> (value : String) -> JSIO ()
  setReferrerPolicy a b = primJS $ HTMLImageElement.prim__setReferrerPolicy a b
  
  export
  sizes : (obj : HTMLImageElement) -> JSIO String
  sizes a = primJS $ HTMLImageElement.prim__sizes a
  
  export
  setSizes : (obj : HTMLImageElement) -> (value : String) -> JSIO ()
  setSizes a b = primJS $ HTMLImageElement.prim__setSizes a b
  
  export
  src : (obj : HTMLImageElement) -> JSIO String
  src a = primJS $ HTMLImageElement.prim__src a
  
  export
  setSrc : (obj : HTMLImageElement) -> (value : String) -> JSIO ()
  setSrc a b = primJS $ HTMLImageElement.prim__setSrc a b
  
  export
  srcset : (obj : HTMLImageElement) -> JSIO String
  srcset a = primJS $ HTMLImageElement.prim__srcset a
  
  export
  setSrcset : (obj : HTMLImageElement) -> (value : String) -> JSIO ()
  setSrcset a b = primJS $ HTMLImageElement.prim__setSrcset a b
  
  export
  useMap : (obj : HTMLImageElement) -> JSIO String
  useMap a = primJS $ HTMLImageElement.prim__useMap a
  
  export
  setUseMap : (obj : HTMLImageElement) -> (value : String) -> JSIO ()
  setUseMap a b = primJS $ HTMLImageElement.prim__setUseMap a b
  
  export
  vspace : (obj : HTMLImageElement) -> JSIO UInt32
  vspace a = primJS $ HTMLImageElement.prim__vspace a
  
  export
  setVspace : (obj : HTMLImageElement) -> (value : UInt32) -> JSIO ()
  setVspace a b = primJS $ HTMLImageElement.prim__setVspace a b
  
  export
  width : (obj : HTMLImageElement) -> JSIO UInt32
  width a = primJS $ HTMLImageElement.prim__width a
  
  export
  setWidth : (obj : HTMLImageElement) -> (value : UInt32) -> JSIO ()
  setWidth a b = primJS $ HTMLImageElement.prim__setWidth a b
  
  export
  decode : (obj : HTMLImageElement) -> JSIO (Promise Undefined)
  decode a = primJS $ HTMLImageElement.prim__decode a

namespace HTMLInputElement
  
  public export
  JSType HTMLInputElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLInputElement
  new = primJS $ HTMLInputElement.prim__new 
  
  export
  accept : (obj : HTMLInputElement) -> JSIO String
  accept a = primJS $ HTMLInputElement.prim__accept a
  
  export
  setAccept : (obj : HTMLInputElement) -> (value : String) -> JSIO ()
  setAccept a b = primJS $ HTMLInputElement.prim__setAccept a b
  
  export
  align : (obj : HTMLInputElement) -> JSIO String
  align a = primJS $ HTMLInputElement.prim__align a
  
  export
  setAlign : (obj : HTMLInputElement) -> (value : String) -> JSIO ()
  setAlign a b = primJS $ HTMLInputElement.prim__setAlign a b
  
  export
  alt : (obj : HTMLInputElement) -> JSIO String
  alt a = primJS $ HTMLInputElement.prim__alt a
  
  export
  setAlt : (obj : HTMLInputElement) -> (value : String) -> JSIO ()
  setAlt a b = primJS $ HTMLInputElement.prim__setAlt a b
  
  export
  autocomplete : (obj : HTMLInputElement) -> JSIO String
  autocomplete a = primJS $ HTMLInputElement.prim__autocomplete a
  
  export
  setAutocomplete : (obj : HTMLInputElement) -> (value : String) -> JSIO ()
  setAutocomplete a b = primJS $ HTMLInputElement.prim__setAutocomplete a b
  
  export
  checked : (obj : HTMLInputElement) -> JSIO Boolean
  checked a = primJS $ HTMLInputElement.prim__checked a
  
  export
  setChecked : (obj : HTMLInputElement) -> (value : Boolean) -> JSIO ()
  setChecked a b = primJS $ HTMLInputElement.prim__setChecked a b
  
  export
  defaultChecked : (obj : HTMLInputElement) -> JSIO Boolean
  defaultChecked a = primJS $ HTMLInputElement.prim__defaultChecked a
  
  export
  setDefaultChecked : (obj : HTMLInputElement) -> (value : Boolean) -> JSIO ()
  setDefaultChecked a b = primJS $ HTMLInputElement.prim__setDefaultChecked a b
  
  export
  defaultValue : (obj : HTMLInputElement) -> JSIO String
  defaultValue a = primJS $ HTMLInputElement.prim__defaultValue a
  
  export
  setDefaultValue : (obj : HTMLInputElement) -> (value : String) -> JSIO ()
  setDefaultValue a b = primJS $ HTMLInputElement.prim__setDefaultValue a b
  
  export
  dirName : (obj : HTMLInputElement) -> JSIO String
  dirName a = primJS $ HTMLInputElement.prim__dirName a
  
  export
  setDirName : (obj : HTMLInputElement) -> (value : String) -> JSIO ()
  setDirName a b = primJS $ HTMLInputElement.prim__setDirName a b
  
  export
  disabled : (obj : HTMLInputElement) -> JSIO Boolean
  disabled a = primJS $ HTMLInputElement.prim__disabled a
  
  export
  setDisabled : (obj : HTMLInputElement) -> (value : Boolean) -> JSIO ()
  setDisabled a b = primJS $ HTMLInputElement.prim__setDisabled a b
  
  export
  files : (obj : HTMLInputElement) -> JSIO (Nullable FileList)
  files a = primJS $ HTMLInputElement.prim__files a
  
  export
  setFiles : (obj : HTMLInputElement) -> (value : Nullable FileList) -> JSIO ()
  setFiles a b = primJS $ HTMLInputElement.prim__setFiles a b
  
  export
  form : (obj : HTMLInputElement) -> JSIO (Nullable HTMLFormElement)
  form a = primJS $ HTMLInputElement.prim__form a
  
  export
  formAction : (obj : HTMLInputElement) -> JSIO String
  formAction a = primJS $ HTMLInputElement.prim__formAction a
  
  export
  setFormAction : (obj : HTMLInputElement) -> (value : String) -> JSIO ()
  setFormAction a b = primJS $ HTMLInputElement.prim__setFormAction a b
  
  export
  formEnctype : (obj : HTMLInputElement) -> JSIO String
  formEnctype a = primJS $ HTMLInputElement.prim__formEnctype a
  
  export
  setFormEnctype : (obj : HTMLInputElement) -> (value : String) -> JSIO ()
  setFormEnctype a b = primJS $ HTMLInputElement.prim__setFormEnctype a b
  
  export
  formMethod : (obj : HTMLInputElement) -> JSIO String
  formMethod a = primJS $ HTMLInputElement.prim__formMethod a
  
  export
  setFormMethod : (obj : HTMLInputElement) -> (value : String) -> JSIO ()
  setFormMethod a b = primJS $ HTMLInputElement.prim__setFormMethod a b
  
  export
  formNoValidate : (obj : HTMLInputElement) -> JSIO Boolean
  formNoValidate a = primJS $ HTMLInputElement.prim__formNoValidate a
  
  export
  setFormNoValidate : (obj : HTMLInputElement) -> (value : Boolean) -> JSIO ()
  setFormNoValidate a b = primJS $ HTMLInputElement.prim__setFormNoValidate a b
  
  export
  formTarget : (obj : HTMLInputElement) -> JSIO String
  formTarget a = primJS $ HTMLInputElement.prim__formTarget a
  
  export
  setFormTarget : (obj : HTMLInputElement) -> (value : String) -> JSIO ()
  setFormTarget a b = primJS $ HTMLInputElement.prim__setFormTarget a b
  
  export
  height : (obj : HTMLInputElement) -> JSIO UInt32
  height a = primJS $ HTMLInputElement.prim__height a
  
  export
  setHeight : (obj : HTMLInputElement) -> (value : UInt32) -> JSIO ()
  setHeight a b = primJS $ HTMLInputElement.prim__setHeight a b
  
  export
  indeterminate : (obj : HTMLInputElement) -> JSIO Boolean
  indeterminate a = primJS $ HTMLInputElement.prim__indeterminate a
  
  export
  setIndeterminate : (obj : HTMLInputElement) -> (value : Boolean) -> JSIO ()
  setIndeterminate a b = primJS $ HTMLInputElement.prim__setIndeterminate a b
  
  export
  labels : (obj : HTMLInputElement) -> JSIO (Nullable NodeList)
  labels a = primJS $ HTMLInputElement.prim__labels a
  
  export
  list : (obj : HTMLInputElement) -> JSIO (Nullable HTMLElement)
  list a = primJS $ HTMLInputElement.prim__list a
  
  export
  max : (obj : HTMLInputElement) -> JSIO String
  max a = primJS $ HTMLInputElement.prim__max a
  
  export
  setMax : (obj : HTMLInputElement) -> (value : String) -> JSIO ()
  setMax a b = primJS $ HTMLInputElement.prim__setMax a b
  
  export
  maxLength : (obj : HTMLInputElement) -> JSIO Int32
  maxLength a = primJS $ HTMLInputElement.prim__maxLength a
  
  export
  setMaxLength : (obj : HTMLInputElement) -> (value : Int32) -> JSIO ()
  setMaxLength a b = primJS $ HTMLInputElement.prim__setMaxLength a b
  
  export
  min : (obj : HTMLInputElement) -> JSIO String
  min a = primJS $ HTMLInputElement.prim__min a
  
  export
  setMin : (obj : HTMLInputElement) -> (value : String) -> JSIO ()
  setMin a b = primJS $ HTMLInputElement.prim__setMin a b
  
  export
  minLength : (obj : HTMLInputElement) -> JSIO Int32
  minLength a = primJS $ HTMLInputElement.prim__minLength a
  
  export
  setMinLength : (obj : HTMLInputElement) -> (value : Int32) -> JSIO ()
  setMinLength a b = primJS $ HTMLInputElement.prim__setMinLength a b
  
  export
  multiple : (obj : HTMLInputElement) -> JSIO Boolean
  multiple a = primJS $ HTMLInputElement.prim__multiple a
  
  export
  setMultiple : (obj : HTMLInputElement) -> (value : Boolean) -> JSIO ()
  setMultiple a b = primJS $ HTMLInputElement.prim__setMultiple a b
  
  export
  name : (obj : HTMLInputElement) -> JSIO String
  name a = primJS $ HTMLInputElement.prim__name a
  
  export
  setName : (obj : HTMLInputElement) -> (value : String) -> JSIO ()
  setName a b = primJS $ HTMLInputElement.prim__setName a b
  
  export
  pattern : (obj : HTMLInputElement) -> JSIO String
  pattern a = primJS $ HTMLInputElement.prim__pattern a
  
  export
  setPattern : (obj : HTMLInputElement) -> (value : String) -> JSIO ()
  setPattern a b = primJS $ HTMLInputElement.prim__setPattern a b
  
  export
  placeholder : (obj : HTMLInputElement) -> JSIO String
  placeholder a = primJS $ HTMLInputElement.prim__placeholder a
  
  export
  setPlaceholder : (obj : HTMLInputElement) -> (value : String) -> JSIO ()
  setPlaceholder a b = primJS $ HTMLInputElement.prim__setPlaceholder a b
  
  export
  readOnly : (obj : HTMLInputElement) -> JSIO Boolean
  readOnly a = primJS $ HTMLInputElement.prim__readOnly a
  
  export
  setReadOnly : (obj : HTMLInputElement) -> (value : Boolean) -> JSIO ()
  setReadOnly a b = primJS $ HTMLInputElement.prim__setReadOnly a b
  
  export
  required : (obj : HTMLInputElement) -> JSIO Boolean
  required a = primJS $ HTMLInputElement.prim__required a
  
  export
  setRequired : (obj : HTMLInputElement) -> (value : Boolean) -> JSIO ()
  setRequired a b = primJS $ HTMLInputElement.prim__setRequired a b
  
  export
  selectionDirection : (obj : HTMLInputElement) -> JSIO (Nullable String)
  selectionDirection a = primJS $ HTMLInputElement.prim__selectionDirection a
  
  export
  setSelectionDirection :  (obj : HTMLInputElement)
                        -> (value : Nullable String)
                        -> JSIO ()
  setSelectionDirection a b = primJS $ HTMLInputElement.prim__setSelectionDirection a
                                                                                    b
  
  export
  selectionEnd : (obj : HTMLInputElement) -> JSIO (Nullable UInt32)
  selectionEnd a = primJS $ HTMLInputElement.prim__selectionEnd a
  
  export
  setSelectionEnd :  (obj : HTMLInputElement)
                  -> (value : Nullable UInt32)
                  -> JSIO ()
  setSelectionEnd a b = primJS $ HTMLInputElement.prim__setSelectionEnd a b
  
  export
  selectionStart : (obj : HTMLInputElement) -> JSIO (Nullable UInt32)
  selectionStart a = primJS $ HTMLInputElement.prim__selectionStart a
  
  export
  setSelectionStart :  (obj : HTMLInputElement)
                    -> (value : Nullable UInt32)
                    -> JSIO ()
  setSelectionStart a b = primJS $ HTMLInputElement.prim__setSelectionStart a b
  
  export
  size : (obj : HTMLInputElement) -> JSIO UInt32
  size a = primJS $ HTMLInputElement.prim__size a
  
  export
  setSize : (obj : HTMLInputElement) -> (value : UInt32) -> JSIO ()
  setSize a b = primJS $ HTMLInputElement.prim__setSize a b
  
  export
  src : (obj : HTMLInputElement) -> JSIO String
  src a = primJS $ HTMLInputElement.prim__src a
  
  export
  setSrc : (obj : HTMLInputElement) -> (value : String) -> JSIO ()
  setSrc a b = primJS $ HTMLInputElement.prim__setSrc a b
  
  export
  step : (obj : HTMLInputElement) -> JSIO String
  step a = primJS $ HTMLInputElement.prim__step a
  
  export
  setStep : (obj : HTMLInputElement) -> (value : String) -> JSIO ()
  setStep a b = primJS $ HTMLInputElement.prim__setStep a b
  
  export
  type : (obj : HTMLInputElement) -> JSIO String
  type a = primJS $ HTMLInputElement.prim__type a
  
  export
  setType : (obj : HTMLInputElement) -> (value : String) -> JSIO ()
  setType a b = primJS $ HTMLInputElement.prim__setType a b
  
  export
  useMap : (obj : HTMLInputElement) -> JSIO String
  useMap a = primJS $ HTMLInputElement.prim__useMap a
  
  export
  setUseMap : (obj : HTMLInputElement) -> (value : String) -> JSIO ()
  setUseMap a b = primJS $ HTMLInputElement.prim__setUseMap a b
  
  export
  validationMessage : (obj : HTMLInputElement) -> JSIO String
  validationMessage a = primJS $ HTMLInputElement.prim__validationMessage a
  
  export
  validity : (obj : HTMLInputElement) -> JSIO ValidityState
  validity a = primJS $ HTMLInputElement.prim__validity a
  
  export
  value : (obj : HTMLInputElement) -> JSIO String
  value a = primJS $ HTMLInputElement.prim__value a
  
  export
  setValue : (obj : HTMLInputElement) -> (value : String) -> JSIO ()
  setValue a b = primJS $ HTMLInputElement.prim__setValue a b
  
  export
  valueAsDate : (obj : HTMLInputElement) -> JSIO (Nullable Object)
  valueAsDate a = primJS $ HTMLInputElement.prim__valueAsDate a
  
  export
  setValueAsDate :  (obj : HTMLInputElement)
                 -> (value : Nullable Object)
                 -> JSIO ()
  setValueAsDate a b = primJS $ HTMLInputElement.prim__setValueAsDate a b
  
  export
  valueAsNumber : (obj : HTMLInputElement) -> JSIO Double
  valueAsNumber a = primJS $ HTMLInputElement.prim__valueAsNumber a
  
  export
  setValueAsNumber : (obj : HTMLInputElement) -> (value : Double) -> JSIO ()
  setValueAsNumber a b = primJS $ HTMLInputElement.prim__setValueAsNumber a b
  
  export
  width : (obj : HTMLInputElement) -> JSIO UInt32
  width a = primJS $ HTMLInputElement.prim__width a
  
  export
  setWidth : (obj : HTMLInputElement) -> (value : UInt32) -> JSIO ()
  setWidth a b = primJS $ HTMLInputElement.prim__setWidth a b
  
  export
  willValidate : (obj : HTMLInputElement) -> JSIO Boolean
  willValidate a = primJS $ HTMLInputElement.prim__willValidate a
  
  export
  checkValidity : (obj : HTMLInputElement) -> JSIO Boolean
  checkValidity a = primJS $ HTMLInputElement.prim__checkValidity a
  
  export
  reportValidity : (obj : HTMLInputElement) -> JSIO Boolean
  reportValidity a = primJS $ HTMLInputElement.prim__reportValidity a
  
  export
  select : (obj : HTMLInputElement) -> JSIO ()
  select a = primJS $ HTMLInputElement.prim__select a
  
  export
  setCustomValidity : (obj : HTMLInputElement) -> (error : String) -> JSIO ()
  setCustomValidity a b = primJS $ HTMLInputElement.prim__setCustomValidity a b
  
  export
  setRangeText : (obj : HTMLInputElement) -> (replacement : String) -> JSIO ()
  setRangeText a b = primJS $ HTMLInputElement.prim__setRangeText a b
  
  export
  setRangeText1 :  (obj : HTMLInputElement)
                -> (replacement : String)
                -> (start : UInt32)
                -> (end : UInt32)
                -> (selectionMode : UndefOr SelectionMode)
                -> JSIO ()
  setRangeText1 a b c d e = primJS $ HTMLInputElement.prim__setRangeText1 a
                                                                          b
                                                                          c
                                                                          d
                                                                          e
  
  export
  setSelectionRange :  (obj : HTMLInputElement)
                    -> (start : UInt32)
                    -> (end : UInt32)
                    -> (direction : UndefOr String)
                    -> JSIO ()
  setSelectionRange a b c d = primJS $ HTMLInputElement.prim__setSelectionRange a
                                                                                b
                                                                                c
                                                                                d
  
  export
  stepDown : (obj : HTMLInputElement) -> (n : UndefOr Int32) -> JSIO ()
  stepDown a b = primJS $ HTMLInputElement.prim__stepDown a b
  
  export
  stepUp : (obj : HTMLInputElement) -> (n : UndefOr Int32) -> JSIO ()
  stepUp a b = primJS $ HTMLInputElement.prim__stepUp a b

namespace HTMLLIElement
  
  public export
  JSType HTMLLIElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLLIElement
  new = primJS $ HTMLLIElement.prim__new 
  
  export
  type : (obj : HTMLLIElement) -> JSIO String
  type a = primJS $ HTMLLIElement.prim__type a
  
  export
  setType : (obj : HTMLLIElement) -> (value : String) -> JSIO ()
  setType a b = primJS $ HTMLLIElement.prim__setType a b
  
  export
  value : (obj : HTMLLIElement) -> JSIO Int32
  value a = primJS $ HTMLLIElement.prim__value a
  
  export
  setValue : (obj : HTMLLIElement) -> (value : Int32) -> JSIO ()
  setValue a b = primJS $ HTMLLIElement.prim__setValue a b

namespace HTMLLabelElement
  
  public export
  JSType HTMLLabelElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLLabelElement
  new = primJS $ HTMLLabelElement.prim__new 
  
  export
  control : (obj : HTMLLabelElement) -> JSIO (Nullable HTMLElement)
  control a = primJS $ HTMLLabelElement.prim__control a
  
  export
  form : (obj : HTMLLabelElement) -> JSIO (Nullable HTMLFormElement)
  form a = primJS $ HTMLLabelElement.prim__form a
  
  export
  htmlFor : (obj : HTMLLabelElement) -> JSIO String
  htmlFor a = primJS $ HTMLLabelElement.prim__htmlFor a
  
  export
  setHtmlFor : (obj : HTMLLabelElement) -> (value : String) -> JSIO ()
  setHtmlFor a b = primJS $ HTMLLabelElement.prim__setHtmlFor a b

namespace HTMLLegendElement
  
  public export
  JSType HTMLLegendElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLLegendElement
  new = primJS $ HTMLLegendElement.prim__new 
  
  export
  align : (obj : HTMLLegendElement) -> JSIO String
  align a = primJS $ HTMLLegendElement.prim__align a
  
  export
  setAlign : (obj : HTMLLegendElement) -> (value : String) -> JSIO ()
  setAlign a b = primJS $ HTMLLegendElement.prim__setAlign a b
  
  export
  form : (obj : HTMLLegendElement) -> JSIO (Nullable HTMLFormElement)
  form a = primJS $ HTMLLegendElement.prim__form a

namespace HTMLLinkElement
  
  public export
  JSType HTMLLinkElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLLinkElement
  new = primJS $ HTMLLinkElement.prim__new 
  
  export
  as : (obj : HTMLLinkElement) -> JSIO String
  as a = primJS $ HTMLLinkElement.prim__as a
  
  export
  setAs : (obj : HTMLLinkElement) -> (value : String) -> JSIO ()
  setAs a b = primJS $ HTMLLinkElement.prim__setAs a b
  
  export
  charset : (obj : HTMLLinkElement) -> JSIO String
  charset a = primJS $ HTMLLinkElement.prim__charset a
  
  export
  setCharset : (obj : HTMLLinkElement) -> (value : String) -> JSIO ()
  setCharset a b = primJS $ HTMLLinkElement.prim__setCharset a b
  
  export
  crossOrigin : (obj : HTMLLinkElement) -> JSIO (Nullable String)
  crossOrigin a = primJS $ HTMLLinkElement.prim__crossOrigin a
  
  export
  setCrossOrigin :  (obj : HTMLLinkElement)
                 -> (value : Nullable String)
                 -> JSIO ()
  setCrossOrigin a b = primJS $ HTMLLinkElement.prim__setCrossOrigin a b
  
  export
  disabled : (obj : HTMLLinkElement) -> JSIO Boolean
  disabled a = primJS $ HTMLLinkElement.prim__disabled a
  
  export
  setDisabled : (obj : HTMLLinkElement) -> (value : Boolean) -> JSIO ()
  setDisabled a b = primJS $ HTMLLinkElement.prim__setDisabled a b
  
  export
  href : (obj : HTMLLinkElement) -> JSIO String
  href a = primJS $ HTMLLinkElement.prim__href a
  
  export
  setHref : (obj : HTMLLinkElement) -> (value : String) -> JSIO ()
  setHref a b = primJS $ HTMLLinkElement.prim__setHref a b
  
  export
  hreflang : (obj : HTMLLinkElement) -> JSIO String
  hreflang a = primJS $ HTMLLinkElement.prim__hreflang a
  
  export
  setHreflang : (obj : HTMLLinkElement) -> (value : String) -> JSIO ()
  setHreflang a b = primJS $ HTMLLinkElement.prim__setHreflang a b
  
  export
  imageSizes : (obj : HTMLLinkElement) -> JSIO String
  imageSizes a = primJS $ HTMLLinkElement.prim__imageSizes a
  
  export
  setImageSizes : (obj : HTMLLinkElement) -> (value : String) -> JSIO ()
  setImageSizes a b = primJS $ HTMLLinkElement.prim__setImageSizes a b
  
  export
  imageSrcset : (obj : HTMLLinkElement) -> JSIO String
  imageSrcset a = primJS $ HTMLLinkElement.prim__imageSrcset a
  
  export
  setImageSrcset : (obj : HTMLLinkElement) -> (value : String) -> JSIO ()
  setImageSrcset a b = primJS $ HTMLLinkElement.prim__setImageSrcset a b
  
  export
  integrity : (obj : HTMLLinkElement) -> JSIO String
  integrity a = primJS $ HTMLLinkElement.prim__integrity a
  
  export
  setIntegrity : (obj : HTMLLinkElement) -> (value : String) -> JSIO ()
  setIntegrity a b = primJS $ HTMLLinkElement.prim__setIntegrity a b
  
  export
  media : (obj : HTMLLinkElement) -> JSIO String
  media a = primJS $ HTMLLinkElement.prim__media a
  
  export
  setMedia : (obj : HTMLLinkElement) -> (value : String) -> JSIO ()
  setMedia a b = primJS $ HTMLLinkElement.prim__setMedia a b
  
  export
  referrerPolicy : (obj : HTMLLinkElement) -> JSIO String
  referrerPolicy a = primJS $ HTMLLinkElement.prim__referrerPolicy a
  
  export
  setReferrerPolicy : (obj : HTMLLinkElement) -> (value : String) -> JSIO ()
  setReferrerPolicy a b = primJS $ HTMLLinkElement.prim__setReferrerPolicy a b
  
  export
  rel : (obj : HTMLLinkElement) -> JSIO String
  rel a = primJS $ HTMLLinkElement.prim__rel a
  
  export
  setRel : (obj : HTMLLinkElement) -> (value : String) -> JSIO ()
  setRel a b = primJS $ HTMLLinkElement.prim__setRel a b
  
  export
  relList : (obj : HTMLLinkElement) -> JSIO DOMTokenList
  relList a = primJS $ HTMLLinkElement.prim__relList a
  
  export
  rev : (obj : HTMLLinkElement) -> JSIO String
  rev a = primJS $ HTMLLinkElement.prim__rev a
  
  export
  setRev : (obj : HTMLLinkElement) -> (value : String) -> JSIO ()
  setRev a b = primJS $ HTMLLinkElement.prim__setRev a b
  
  export
  sizes : (obj : HTMLLinkElement) -> JSIO DOMTokenList
  sizes a = primJS $ HTMLLinkElement.prim__sizes a
  
  export
  target : (obj : HTMLLinkElement) -> JSIO String
  target a = primJS $ HTMLLinkElement.prim__target a
  
  export
  setTarget : (obj : HTMLLinkElement) -> (value : String) -> JSIO ()
  setTarget a b = primJS $ HTMLLinkElement.prim__setTarget a b
  
  export
  type : (obj : HTMLLinkElement) -> JSIO String
  type a = primJS $ HTMLLinkElement.prim__type a
  
  export
  setType : (obj : HTMLLinkElement) -> (value : String) -> JSIO ()
  setType a b = primJS $ HTMLLinkElement.prim__setType a b

namespace HTMLMapElement
  
  public export
  JSType HTMLMapElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLMapElement
  new = primJS $ HTMLMapElement.prim__new 
  
  export
  areas : (obj : HTMLMapElement) -> JSIO HTMLCollection
  areas a = primJS $ HTMLMapElement.prim__areas a
  
  export
  name : (obj : HTMLMapElement) -> JSIO String
  name a = primJS $ HTMLMapElement.prim__name a
  
  export
  setName : (obj : HTMLMapElement) -> (value : String) -> JSIO ()
  setName a b = primJS $ HTMLMapElement.prim__setName a b

namespace HTMLMarqueeElement
  
  public export
  JSType HTMLMarqueeElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLMarqueeElement
  new = primJS $ HTMLMarqueeElement.prim__new 
  
  export
  behavior : (obj : HTMLMarqueeElement) -> JSIO String
  behavior a = primJS $ HTMLMarqueeElement.prim__behavior a
  
  export
  setBehavior : (obj : HTMLMarqueeElement) -> (value : String) -> JSIO ()
  setBehavior a b = primJS $ HTMLMarqueeElement.prim__setBehavior a b
  
  export
  bgColor : (obj : HTMLMarqueeElement) -> JSIO String
  bgColor a = primJS $ HTMLMarqueeElement.prim__bgColor a
  
  export
  setBgColor : (obj : HTMLMarqueeElement) -> (value : String) -> JSIO ()
  setBgColor a b = primJS $ HTMLMarqueeElement.prim__setBgColor a b
  
  export
  direction : (obj : HTMLMarqueeElement) -> JSIO String
  direction a = primJS $ HTMLMarqueeElement.prim__direction a
  
  export
  setDirection : (obj : HTMLMarqueeElement) -> (value : String) -> JSIO ()
  setDirection a b = primJS $ HTMLMarqueeElement.prim__setDirection a b
  
  export
  height : (obj : HTMLMarqueeElement) -> JSIO String
  height a = primJS $ HTMLMarqueeElement.prim__height a
  
  export
  setHeight : (obj : HTMLMarqueeElement) -> (value : String) -> JSIO ()
  setHeight a b = primJS $ HTMLMarqueeElement.prim__setHeight a b
  
  export
  hspace : (obj : HTMLMarqueeElement) -> JSIO UInt32
  hspace a = primJS $ HTMLMarqueeElement.prim__hspace a
  
  export
  setHspace : (obj : HTMLMarqueeElement) -> (value : UInt32) -> JSIO ()
  setHspace a b = primJS $ HTMLMarqueeElement.prim__setHspace a b
  
  export
  loop : (obj : HTMLMarqueeElement) -> JSIO Int32
  loop a = primJS $ HTMLMarqueeElement.prim__loop a
  
  export
  setLoop : (obj : HTMLMarqueeElement) -> (value : Int32) -> JSIO ()
  setLoop a b = primJS $ HTMLMarqueeElement.prim__setLoop a b
  
  export
  scrollAmount : (obj : HTMLMarqueeElement) -> JSIO UInt32
  scrollAmount a = primJS $ HTMLMarqueeElement.prim__scrollAmount a
  
  export
  setScrollAmount : (obj : HTMLMarqueeElement) -> (value : UInt32) -> JSIO ()
  setScrollAmount a b = primJS $ HTMLMarqueeElement.prim__setScrollAmount a b
  
  export
  scrollDelay : (obj : HTMLMarqueeElement) -> JSIO UInt32
  scrollDelay a = primJS $ HTMLMarqueeElement.prim__scrollDelay a
  
  export
  setScrollDelay : (obj : HTMLMarqueeElement) -> (value : UInt32) -> JSIO ()
  setScrollDelay a b = primJS $ HTMLMarqueeElement.prim__setScrollDelay a b
  
  export
  trueSpeed : (obj : HTMLMarqueeElement) -> JSIO Boolean
  trueSpeed a = primJS $ HTMLMarqueeElement.prim__trueSpeed a
  
  export
  setTrueSpeed : (obj : HTMLMarqueeElement) -> (value : Boolean) -> JSIO ()
  setTrueSpeed a b = primJS $ HTMLMarqueeElement.prim__setTrueSpeed a b
  
  export
  vspace : (obj : HTMLMarqueeElement) -> JSIO UInt32
  vspace a = primJS $ HTMLMarqueeElement.prim__vspace a
  
  export
  setVspace : (obj : HTMLMarqueeElement) -> (value : UInt32) -> JSIO ()
  setVspace a b = primJS $ HTMLMarqueeElement.prim__setVspace a b
  
  export
  width : (obj : HTMLMarqueeElement) -> JSIO String
  width a = primJS $ HTMLMarqueeElement.prim__width a
  
  export
  setWidth : (obj : HTMLMarqueeElement) -> (value : String) -> JSIO ()
  setWidth a b = primJS $ HTMLMarqueeElement.prim__setWidth a b
  
  export
  start : (obj : HTMLMarqueeElement) -> JSIO ()
  start a = primJS $ HTMLMarqueeElement.prim__start a
  
  export
  stop : (obj : HTMLMarqueeElement) -> JSIO ()
  stop a = primJS $ HTMLMarqueeElement.prim__stop a

namespace HTMLMediaElement
  
  public export
  JSType HTMLMediaElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  HAVE_NOTHING = 0
  
  public export
  NETWORK_EMPTY : UInt16
  NETWORK_EMPTY = 0
  
  public export
  NETWORK_IDLE : UInt16
  NETWORK_IDLE = 1
  
  public export
  NETWORK_LOADING : UInt16
  NETWORK_LOADING = 2
  
  public export
  NETWORK_NO_SOURCE : UInt16
  NETWORK_NO_SOURCE = 3
  
  export
  audioTracks : (obj : HTMLMediaElement) -> JSIO AudioTrackList
  audioTracks a = primJS $ HTMLMediaElement.prim__audioTracks a
  
  export
  autoplay : (obj : HTMLMediaElement) -> JSIO Boolean
  autoplay a = primJS $ HTMLMediaElement.prim__autoplay a
  
  export
  setAutoplay : (obj : HTMLMediaElement) -> (value : Boolean) -> JSIO ()
  setAutoplay a b = primJS $ HTMLMediaElement.prim__setAutoplay a b
  
  export
  buffered : (obj : HTMLMediaElement) -> JSIO TimeRanges
  buffered a = primJS $ HTMLMediaElement.prim__buffered a
  
  export
  controls : (obj : HTMLMediaElement) -> JSIO Boolean
  controls a = primJS $ HTMLMediaElement.prim__controls a
  
  export
  setControls : (obj : HTMLMediaElement) -> (value : Boolean) -> JSIO ()
  setControls a b = primJS $ HTMLMediaElement.prim__setControls a b
  
  export
  crossOrigin : (obj : HTMLMediaElement) -> JSIO (Nullable String)
  crossOrigin a = primJS $ HTMLMediaElement.prim__crossOrigin a
  
  export
  setCrossOrigin :  (obj : HTMLMediaElement)
                 -> (value : Nullable String)
                 -> JSIO ()
  setCrossOrigin a b = primJS $ HTMLMediaElement.prim__setCrossOrigin a b
  
  export
  currentSrc : (obj : HTMLMediaElement) -> JSIO String
  currentSrc a = primJS $ HTMLMediaElement.prim__currentSrc a
  
  export
  currentTime : (obj : HTMLMediaElement) -> JSIO Double
  currentTime a = primJS $ HTMLMediaElement.prim__currentTime a
  
  export
  setCurrentTime : (obj : HTMLMediaElement) -> (value : Double) -> JSIO ()
  setCurrentTime a b = primJS $ HTMLMediaElement.prim__setCurrentTime a b
  
  export
  defaultMuted : (obj : HTMLMediaElement) -> JSIO Boolean
  defaultMuted a = primJS $ HTMLMediaElement.prim__defaultMuted a
  
  export
  setDefaultMuted : (obj : HTMLMediaElement) -> (value : Boolean) -> JSIO ()
  setDefaultMuted a b = primJS $ HTMLMediaElement.prim__setDefaultMuted a b
  
  export
  defaultPlaybackRate : (obj : HTMLMediaElement) -> JSIO Double
  defaultPlaybackRate a = primJS $ HTMLMediaElement.prim__defaultPlaybackRate a
  
  export
  setDefaultPlaybackRate :  (obj : HTMLMediaElement)
                         -> (value : Double)
                         -> JSIO ()
  setDefaultPlaybackRate a b = primJS $ HTMLMediaElement.prim__setDefaultPlaybackRate a
                                                                                      b
  
  export
  duration : (obj : HTMLMediaElement) -> JSIO Double
  duration a = primJS $ HTMLMediaElement.prim__duration a
  
  export
  ended : (obj : HTMLMediaElement) -> JSIO Boolean
  ended a = primJS $ HTMLMediaElement.prim__ended a
  
  export
  error : (obj : HTMLMediaElement) -> JSIO (Nullable MediaError)
  error a = primJS $ HTMLMediaElement.prim__error a
  
  export
  loop : (obj : HTMLMediaElement) -> JSIO Boolean
  loop a = primJS $ HTMLMediaElement.prim__loop a
  
  export
  setLoop : (obj : HTMLMediaElement) -> (value : Boolean) -> JSIO ()
  setLoop a b = primJS $ HTMLMediaElement.prim__setLoop a b
  
  export
  muted : (obj : HTMLMediaElement) -> JSIO Boolean
  muted a = primJS $ HTMLMediaElement.prim__muted a
  
  export
  setMuted : (obj : HTMLMediaElement) -> (value : Boolean) -> JSIO ()
  setMuted a b = primJS $ HTMLMediaElement.prim__setMuted a b
  
  export
  networkState : (obj : HTMLMediaElement) -> JSIO UInt16
  networkState a = primJS $ HTMLMediaElement.prim__networkState a
  
  export
  paused : (obj : HTMLMediaElement) -> JSIO Boolean
  paused a = primJS $ HTMLMediaElement.prim__paused a
  
  export
  playbackRate : (obj : HTMLMediaElement) -> JSIO Double
  playbackRate a = primJS $ HTMLMediaElement.prim__playbackRate a
  
  export
  setPlaybackRate : (obj : HTMLMediaElement) -> (value : Double) -> JSIO ()
  setPlaybackRate a b = primJS $ HTMLMediaElement.prim__setPlaybackRate a b
  
  export
  played : (obj : HTMLMediaElement) -> JSIO TimeRanges
  played a = primJS $ HTMLMediaElement.prim__played a
  
  export
  preload : (obj : HTMLMediaElement) -> JSIO String
  preload a = primJS $ HTMLMediaElement.prim__preload a
  
  export
  setPreload : (obj : HTMLMediaElement) -> (value : String) -> JSIO ()
  setPreload a b = primJS $ HTMLMediaElement.prim__setPreload a b
  
  export
  preservesPitch : (obj : HTMLMediaElement) -> JSIO Boolean
  preservesPitch a = primJS $ HTMLMediaElement.prim__preservesPitch a
  
  export
  setPreservesPitch : (obj : HTMLMediaElement) -> (value : Boolean) -> JSIO ()
  setPreservesPitch a b = primJS $ HTMLMediaElement.prim__setPreservesPitch a b
  
  export
  readyState : (obj : HTMLMediaElement) -> JSIO UInt16
  readyState a = primJS $ HTMLMediaElement.prim__readyState a
  
  export
  seekable : (obj : HTMLMediaElement) -> JSIO TimeRanges
  seekable a = primJS $ HTMLMediaElement.prim__seekable a
  
  export
  seeking : (obj : HTMLMediaElement) -> JSIO Boolean
  seeking a = primJS $ HTMLMediaElement.prim__seeking a
  
  export
  src : (obj : HTMLMediaElement) -> JSIO String
  src a = primJS $ HTMLMediaElement.prim__src a
  
  export
  setSrc : (obj : HTMLMediaElement) -> (value : String) -> JSIO ()
  setSrc a b = primJS $ HTMLMediaElement.prim__setSrc a b
  
  export
  srcObject : (obj : HTMLMediaElement) -> JSIO (Nullable MediaProvider)
  srcObject a = primJS $ HTMLMediaElement.prim__srcObject a
  
  export
  setSrcObject :  (obj : HTMLMediaElement)
               -> (value : Nullable MediaProvider)
               -> JSIO ()
  setSrcObject a b = primJS $ HTMLMediaElement.prim__setSrcObject a b
  
  export
  textTracks : (obj : HTMLMediaElement) -> JSIO TextTrackList
  textTracks a = primJS $ HTMLMediaElement.prim__textTracks a
  
  export
  videoTracks : (obj : HTMLMediaElement) -> JSIO VideoTrackList
  videoTracks a = primJS $ HTMLMediaElement.prim__videoTracks a
  
  export
  volume : (obj : HTMLMediaElement) -> JSIO Double
  volume a = primJS $ HTMLMediaElement.prim__volume a
  
  export
  setVolume : (obj : HTMLMediaElement) -> (value : Double) -> JSIO ()
  setVolume a b = primJS $ HTMLMediaElement.prim__setVolume a b
  
  export
  addTextTrack :  (obj : HTMLMediaElement)
               -> (kind : TextTrackKind)
               -> (label : UndefOr String)
               -> (language : UndefOr String)
               -> JSIO TextTrack
  addTextTrack a b c d = primJS $ HTMLMediaElement.prim__addTextTrack a b c d
  
  export
  canPlayType :  (obj : HTMLMediaElement)
              -> (type : String)
              -> JSIO CanPlayTypeResult
  canPlayType a b = primJS $ HTMLMediaElement.prim__canPlayType a b
  
  export
  fastSeek : (obj : HTMLMediaElement) -> (time : Double) -> JSIO ()
  fastSeek a b = primJS $ HTMLMediaElement.prim__fastSeek a b
  
  export
  getStartDate : (obj : HTMLMediaElement) -> JSIO Object
  getStartDate a = primJS $ HTMLMediaElement.prim__getStartDate a
  
  export
  load : (obj : HTMLMediaElement) -> JSIO ()
  load a = primJS $ HTMLMediaElement.prim__load a
  
  export
  pause : (obj : HTMLMediaElement) -> JSIO ()
  pause a = primJS $ HTMLMediaElement.prim__pause a
  
  export
  play : (obj : HTMLMediaElement) -> JSIO (Promise Undefined)
  play a = primJS $ HTMLMediaElement.prim__play a

namespace HTMLMenuElement
  
  public export
  JSType HTMLMenuElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLMenuElement
  new = primJS $ HTMLMenuElement.prim__new 
  
  export
  compact : (obj : HTMLMenuElement) -> JSIO Boolean
  compact a = primJS $ HTMLMenuElement.prim__compact a
  
  export
  setCompact : (obj : HTMLMenuElement) -> (value : Boolean) -> JSIO ()
  setCompact a b = primJS $ HTMLMenuElement.prim__setCompact a b

namespace HTMLMetaElement
  
  public export
  JSType HTMLMetaElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLMetaElement
  new = primJS $ HTMLMetaElement.prim__new 
  
  export
  content : (obj : HTMLMetaElement) -> JSIO String
  content a = primJS $ HTMLMetaElement.prim__content a
  
  export
  setContent : (obj : HTMLMetaElement) -> (value : String) -> JSIO ()
  setContent a b = primJS $ HTMLMetaElement.prim__setContent a b
  
  export
  httpEquiv : (obj : HTMLMetaElement) -> JSIO String
  httpEquiv a = primJS $ HTMLMetaElement.prim__httpEquiv a
  
  export
  setHttpEquiv : (obj : HTMLMetaElement) -> (value : String) -> JSIO ()
  setHttpEquiv a b = primJS $ HTMLMetaElement.prim__setHttpEquiv a b
  
  export
  name : (obj : HTMLMetaElement) -> JSIO String
  name a = primJS $ HTMLMetaElement.prim__name a
  
  export
  setName : (obj : HTMLMetaElement) -> (value : String) -> JSIO ()
  setName a b = primJS $ HTMLMetaElement.prim__setName a b
  
  export
  scheme : (obj : HTMLMetaElement) -> JSIO String
  scheme a = primJS $ HTMLMetaElement.prim__scheme a
  
  export
  setScheme : (obj : HTMLMetaElement) -> (value : String) -> JSIO ()
  setScheme a b = primJS $ HTMLMetaElement.prim__setScheme a b

namespace HTMLMeterElement
  
  public export
  JSType HTMLMeterElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLMeterElement
  new = primJS $ HTMLMeterElement.prim__new 
  
  export
  high : (obj : HTMLMeterElement) -> JSIO Double
  high a = primJS $ HTMLMeterElement.prim__high a
  
  export
  setHigh : (obj : HTMLMeterElement) -> (value : Double) -> JSIO ()
  setHigh a b = primJS $ HTMLMeterElement.prim__setHigh a b
  
  export
  labels : (obj : HTMLMeterElement) -> JSIO NodeList
  labels a = primJS $ HTMLMeterElement.prim__labels a
  
  export
  low : (obj : HTMLMeterElement) -> JSIO Double
  low a = primJS $ HTMLMeterElement.prim__low a
  
  export
  setLow : (obj : HTMLMeterElement) -> (value : Double) -> JSIO ()
  setLow a b = primJS $ HTMLMeterElement.prim__setLow a b
  
  export
  max : (obj : HTMLMeterElement) -> JSIO Double
  max a = primJS $ HTMLMeterElement.prim__max a
  
  export
  setMax : (obj : HTMLMeterElement) -> (value : Double) -> JSIO ()
  setMax a b = primJS $ HTMLMeterElement.prim__setMax a b
  
  export
  min : (obj : HTMLMeterElement) -> JSIO Double
  min a = primJS $ HTMLMeterElement.prim__min a
  
  export
  setMin : (obj : HTMLMeterElement) -> (value : Double) -> JSIO ()
  setMin a b = primJS $ HTMLMeterElement.prim__setMin a b
  
  export
  optimum : (obj : HTMLMeterElement) -> JSIO Double
  optimum a = primJS $ HTMLMeterElement.prim__optimum a
  
  export
  setOptimum : (obj : HTMLMeterElement) -> (value : Double) -> JSIO ()
  setOptimum a b = primJS $ HTMLMeterElement.prim__setOptimum a b
  
  export
  value : (obj : HTMLMeterElement) -> JSIO Double
  value a = primJS $ HTMLMeterElement.prim__value a
  
  export
  setValue : (obj : HTMLMeterElement) -> (value : Double) -> JSIO ()
  setValue a b = primJS $ HTMLMeterElement.prim__setValue a b

namespace HTMLModElement
  
  public export
  JSType HTMLModElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLModElement
  new = primJS $ HTMLModElement.prim__new 
  
  export
  cite : (obj : HTMLModElement) -> JSIO String
  cite a = primJS $ HTMLModElement.prim__cite a
  
  export
  setCite : (obj : HTMLModElement) -> (value : String) -> JSIO ()
  setCite a b = primJS $ HTMLModElement.prim__setCite a b
  
  export
  dateTime : (obj : HTMLModElement) -> JSIO String
  dateTime a = primJS $ HTMLModElement.prim__dateTime a
  
  export
  setDateTime : (obj : HTMLModElement) -> (value : String) -> JSIO ()
  setDateTime a b = primJS $ HTMLModElement.prim__setDateTime a b

namespace HTMLOListElement
  
  public export
  JSType HTMLOListElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLOListElement
  new = primJS $ HTMLOListElement.prim__new 
  
  export
  compact : (obj : HTMLOListElement) -> JSIO Boolean
  compact a = primJS $ HTMLOListElement.prim__compact a
  
  export
  setCompact : (obj : HTMLOListElement) -> (value : Boolean) -> JSIO ()
  setCompact a b = primJS $ HTMLOListElement.prim__setCompact a b
  
  export
  reversed : (obj : HTMLOListElement) -> JSIO Boolean
  reversed a = primJS $ HTMLOListElement.prim__reversed a
  
  export
  setReversed : (obj : HTMLOListElement) -> (value : Boolean) -> JSIO ()
  setReversed a b = primJS $ HTMLOListElement.prim__setReversed a b
  
  export
  start : (obj : HTMLOListElement) -> JSIO Int32
  start a = primJS $ HTMLOListElement.prim__start a
  
  export
  setStart : (obj : HTMLOListElement) -> (value : Int32) -> JSIO ()
  setStart a b = primJS $ HTMLOListElement.prim__setStart a b
  
  export
  type : (obj : HTMLOListElement) -> JSIO String
  type a = primJS $ HTMLOListElement.prim__type a
  
  export
  setType : (obj : HTMLOListElement) -> (value : String) -> JSIO ()
  setType a b = primJS $ HTMLOListElement.prim__setType a b

namespace HTMLObjectElement
  
  public export
  JSType HTMLObjectElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLObjectElement
  new = primJS $ HTMLObjectElement.prim__new 
  
  export
  align : (obj : HTMLObjectElement) -> JSIO String
  align a = primJS $ HTMLObjectElement.prim__align a
  
  export
  setAlign : (obj : HTMLObjectElement) -> (value : String) -> JSIO ()
  setAlign a b = primJS $ HTMLObjectElement.prim__setAlign a b
  
  export
  archive : (obj : HTMLObjectElement) -> JSIO String
  archive a = primJS $ HTMLObjectElement.prim__archive a
  
  export
  setArchive : (obj : HTMLObjectElement) -> (value : String) -> JSIO ()
  setArchive a b = primJS $ HTMLObjectElement.prim__setArchive a b
  
  export
  border : (obj : HTMLObjectElement) -> JSIO String
  border a = primJS $ HTMLObjectElement.prim__border a
  
  export
  setBorder : (obj : HTMLObjectElement) -> (value : String) -> JSIO ()
  setBorder a b = primJS $ HTMLObjectElement.prim__setBorder a b
  
  export
  code : (obj : HTMLObjectElement) -> JSIO String
  code a = primJS $ HTMLObjectElement.prim__code a
  
  export
  setCode : (obj : HTMLObjectElement) -> (value : String) -> JSIO ()
  setCode a b = primJS $ HTMLObjectElement.prim__setCode a b
  
  export
  codeBase : (obj : HTMLObjectElement) -> JSIO String
  codeBase a = primJS $ HTMLObjectElement.prim__codeBase a
  
  export
  setCodeBase : (obj : HTMLObjectElement) -> (value : String) -> JSIO ()
  setCodeBase a b = primJS $ HTMLObjectElement.prim__setCodeBase a b
  
  export
  codeType : (obj : HTMLObjectElement) -> JSIO String
  codeType a = primJS $ HTMLObjectElement.prim__codeType a
  
  export
  setCodeType : (obj : HTMLObjectElement) -> (value : String) -> JSIO ()
  setCodeType a b = primJS $ HTMLObjectElement.prim__setCodeType a b
  
  export
  contentDocument : (obj : HTMLObjectElement) -> JSIO (Nullable Document)
  contentDocument a = primJS $ HTMLObjectElement.prim__contentDocument a
  
  export
  contentWindow : (obj : HTMLObjectElement) -> JSIO (Nullable WindowProxy)
  contentWindow a = primJS $ HTMLObjectElement.prim__contentWindow a
  
  export
  data_ : (obj : HTMLObjectElement) -> JSIO String
  data_ a = primJS $ HTMLObjectElement.prim__data a
  
  export
  setData : (obj : HTMLObjectElement) -> (value : String) -> JSIO ()
  setData a b = primJS $ HTMLObjectElement.prim__setData a b
  
  export
  declare : (obj : HTMLObjectElement) -> JSIO Boolean
  declare a = primJS $ HTMLObjectElement.prim__declare a
  
  export
  setDeclare : (obj : HTMLObjectElement) -> (value : Boolean) -> JSIO ()
  setDeclare a b = primJS $ HTMLObjectElement.prim__setDeclare a b
  
  export
  form : (obj : HTMLObjectElement) -> JSIO (Nullable HTMLFormElement)
  form a = primJS $ HTMLObjectElement.prim__form a
  
  export
  height : (obj : HTMLObjectElement) -> JSIO String
  height a = primJS $ HTMLObjectElement.prim__height a
  
  export
  setHeight : (obj : HTMLObjectElement) -> (value : String) -> JSIO ()
  setHeight a b = primJS $ HTMLObjectElement.prim__setHeight a b
  
  export
  hspace : (obj : HTMLObjectElement) -> JSIO UInt32
  hspace a = primJS $ HTMLObjectElement.prim__hspace a
  
  export
  setHspace : (obj : HTMLObjectElement) -> (value : UInt32) -> JSIO ()
  setHspace a b = primJS $ HTMLObjectElement.prim__setHspace a b
  
  export
  name : (obj : HTMLObjectElement) -> JSIO String
  name a = primJS $ HTMLObjectElement.prim__name a
  
  export
  setName : (obj : HTMLObjectElement) -> (value : String) -> JSIO ()
  setName a b = primJS $ HTMLObjectElement.prim__setName a b
  
  export
  standby : (obj : HTMLObjectElement) -> JSIO String
  standby a = primJS $ HTMLObjectElement.prim__standby a
  
  export
  setStandby : (obj : HTMLObjectElement) -> (value : String) -> JSIO ()
  setStandby a b = primJS $ HTMLObjectElement.prim__setStandby a b
  
  export
  type : (obj : HTMLObjectElement) -> JSIO String
  type a = primJS $ HTMLObjectElement.prim__type a
  
  export
  setType : (obj : HTMLObjectElement) -> (value : String) -> JSIO ()
  setType a b = primJS $ HTMLObjectElement.prim__setType a b
  
  export
  useMap : (obj : HTMLObjectElement) -> JSIO String
  useMap a = primJS $ HTMLObjectElement.prim__useMap a
  
  export
  setUseMap : (obj : HTMLObjectElement) -> (value : String) -> JSIO ()
  setUseMap a b = primJS $ HTMLObjectElement.prim__setUseMap a b
  
  export
  validationMessage : (obj : HTMLObjectElement) -> JSIO String
  validationMessage a = primJS $ HTMLObjectElement.prim__validationMessage a
  
  export
  validity : (obj : HTMLObjectElement) -> JSIO ValidityState
  validity a = primJS $ HTMLObjectElement.prim__validity a
  
  export
  vspace : (obj : HTMLObjectElement) -> JSIO UInt32
  vspace a = primJS $ HTMLObjectElement.prim__vspace a
  
  export
  setVspace : (obj : HTMLObjectElement) -> (value : UInt32) -> JSIO ()
  setVspace a b = primJS $ HTMLObjectElement.prim__setVspace a b
  
  export
  width : (obj : HTMLObjectElement) -> JSIO String
  width a = primJS $ HTMLObjectElement.prim__width a
  
  export
  setWidth : (obj : HTMLObjectElement) -> (value : String) -> JSIO ()
  setWidth a b = primJS $ HTMLObjectElement.prim__setWidth a b
  
  export
  willValidate : (obj : HTMLObjectElement) -> JSIO Boolean
  willValidate a = primJS $ HTMLObjectElement.prim__willValidate a
  
  export
  checkValidity : (obj : HTMLObjectElement) -> JSIO Boolean
  checkValidity a = primJS $ HTMLObjectElement.prim__checkValidity a
  
  export
  getSVGDocument : (obj : HTMLObjectElement) -> JSIO (Nullable Document)
  getSVGDocument a = primJS $ HTMLObjectElement.prim__getSVGDocument a
  
  export
  reportValidity : (obj : HTMLObjectElement) -> JSIO Boolean
  reportValidity a = primJS $ HTMLObjectElement.prim__reportValidity a
  
  export
  setCustomValidity : (obj : HTMLObjectElement) -> (error : String) -> JSIO ()
  setCustomValidity a b = primJS $ HTMLObjectElement.prim__setCustomValidity a b

namespace HTMLOptGroupElement
  
  public export
  JSType HTMLOptGroupElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLOptGroupElement
  new = primJS $ HTMLOptGroupElement.prim__new 
  
  export
  disabled : (obj : HTMLOptGroupElement) -> JSIO Boolean
  disabled a = primJS $ HTMLOptGroupElement.prim__disabled a
  
  export
  setDisabled : (obj : HTMLOptGroupElement) -> (value : Boolean) -> JSIO ()
  setDisabled a b = primJS $ HTMLOptGroupElement.prim__setDisabled a b
  
  export
  label : (obj : HTMLOptGroupElement) -> JSIO String
  label a = primJS $ HTMLOptGroupElement.prim__label a
  
  export
  setLabel : (obj : HTMLOptGroupElement) -> (value : String) -> JSIO ()
  setLabel a b = primJS $ HTMLOptGroupElement.prim__setLabel a b

namespace HTMLOptionElement
  
  public export
  JSType HTMLOptionElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLOptionElement
  new = primJS $ HTMLOptionElement.prim__new 
  
  export
  defaultSelected : (obj : HTMLOptionElement) -> JSIO Boolean
  defaultSelected a = primJS $ HTMLOptionElement.prim__defaultSelected a
  
  export
  setDefaultSelected : (obj : HTMLOptionElement) -> (value : Boolean) -> JSIO ()
  setDefaultSelected a b = primJS $ HTMLOptionElement.prim__setDefaultSelected a
                                                                               b
  
  export
  disabled : (obj : HTMLOptionElement) -> JSIO Boolean
  disabled a = primJS $ HTMLOptionElement.prim__disabled a
  
  export
  setDisabled : (obj : HTMLOptionElement) -> (value : Boolean) -> JSIO ()
  setDisabled a b = primJS $ HTMLOptionElement.prim__setDisabled a b
  
  export
  form : (obj : HTMLOptionElement) -> JSIO (Nullable HTMLFormElement)
  form a = primJS $ HTMLOptionElement.prim__form a
  
  export
  index : (obj : HTMLOptionElement) -> JSIO Int32
  index a = primJS $ HTMLOptionElement.prim__index a
  
  export
  label : (obj : HTMLOptionElement) -> JSIO String
  label a = primJS $ HTMLOptionElement.prim__label a
  
  export
  setLabel : (obj : HTMLOptionElement) -> (value : String) -> JSIO ()
  setLabel a b = primJS $ HTMLOptionElement.prim__setLabel a b
  
  export
  selected : (obj : HTMLOptionElement) -> JSIO Boolean
  selected a = primJS $ HTMLOptionElement.prim__selected a
  
  export
  setSelected : (obj : HTMLOptionElement) -> (value : Boolean) -> JSIO ()
  setSelected a b = primJS $ HTMLOptionElement.prim__setSelected a b
  
  export
  text : (obj : HTMLOptionElement) -> JSIO String
  text a = primJS $ HTMLOptionElement.prim__text a
  
  export
  setText : (obj : HTMLOptionElement) -> (value : String) -> JSIO ()
  setText a b = primJS $ HTMLOptionElement.prim__setText a b
  
  export
  value : (obj : HTMLOptionElement) -> JSIO String
  value a = primJS $ HTMLOptionElement.prim__value a
  
  export
  setValue : (obj : HTMLOptionElement) -> (value : String) -> JSIO ()
  setValue a b = primJS $ HTMLOptionElement.prim__setValue a b

namespace HTMLOptionsCollection
  
  public export
  JSType HTMLOptionsCollection where
    parents =  [ HTMLCollection , Object ]

    mixins =  []
  
  export
  set :  (obj : HTMLOptionsCollection)
      -> (index : UInt32)
      -> (option : Nullable HTMLOptionElement)
      -> JSIO ()
  set a b c = primJS $ HTMLOptionsCollection.prim__set a b c
  
  export
  length : (obj : HTMLOptionsCollection) -> JSIO UInt32
  length a = primJS $ HTMLOptionsCollection.prim__length a
  
  export
  setLength : (obj : HTMLOptionsCollection) -> (value : UInt32) -> JSIO ()
  setLength a b = primJS $ HTMLOptionsCollection.prim__setLength a b
  
  export
  selectedIndex : (obj : HTMLOptionsCollection) -> JSIO Int32
  selectedIndex a = primJS $ HTMLOptionsCollection.prim__selectedIndex a
  
  export
  setSelectedIndex : (obj : HTMLOptionsCollection) -> (value : Int32) -> JSIO ()
  setSelectedIndex a b = primJS $ HTMLOptionsCollection.prim__setSelectedIndex a
                                                                               b
  
  export
  add :  (obj : HTMLOptionsCollection)
      -> (element : Union2 HTMLOptionElement HTMLOptGroupElement)
      -> (before : UndefOr (Nullable (Union2 HTMLElement Int32)))
      -> JSIO ()
  add a b c = primJS $ HTMLOptionsCollection.prim__add a b c
  
  export
  remove : (obj : HTMLOptionsCollection) -> (index : Int32) -> JSIO ()
  remove a b = primJS $ HTMLOptionsCollection.prim__remove a b

namespace HTMLOutputElement
  
  public export
  JSType HTMLOutputElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLOutputElement
  new = primJS $ HTMLOutputElement.prim__new 
  
  export
  defaultValue : (obj : HTMLOutputElement) -> JSIO String
  defaultValue a = primJS $ HTMLOutputElement.prim__defaultValue a
  
  export
  setDefaultValue : (obj : HTMLOutputElement) -> (value : String) -> JSIO ()
  setDefaultValue a b = primJS $ HTMLOutputElement.prim__setDefaultValue a b
  
  export
  form : (obj : HTMLOutputElement) -> JSIO (Nullable HTMLFormElement)
  form a = primJS $ HTMLOutputElement.prim__form a
  
  export
  htmlFor : (obj : HTMLOutputElement) -> JSIO DOMTokenList
  htmlFor a = primJS $ HTMLOutputElement.prim__htmlFor a
  
  export
  labels : (obj : HTMLOutputElement) -> JSIO NodeList
  labels a = primJS $ HTMLOutputElement.prim__labels a
  
  export
  name : (obj : HTMLOutputElement) -> JSIO String
  name a = primJS $ HTMLOutputElement.prim__name a
  
  export
  setName : (obj : HTMLOutputElement) -> (value : String) -> JSIO ()
  setName a b = primJS $ HTMLOutputElement.prim__setName a b
  
  export
  type : (obj : HTMLOutputElement) -> JSIO String
  type a = primJS $ HTMLOutputElement.prim__type a
  
  export
  validationMessage : (obj : HTMLOutputElement) -> JSIO String
  validationMessage a = primJS $ HTMLOutputElement.prim__validationMessage a
  
  export
  validity : (obj : HTMLOutputElement) -> JSIO ValidityState
  validity a = primJS $ HTMLOutputElement.prim__validity a
  
  export
  value : (obj : HTMLOutputElement) -> JSIO String
  value a = primJS $ HTMLOutputElement.prim__value a
  
  export
  setValue : (obj : HTMLOutputElement) -> (value : String) -> JSIO ()
  setValue a b = primJS $ HTMLOutputElement.prim__setValue a b
  
  export
  willValidate : (obj : HTMLOutputElement) -> JSIO Boolean
  willValidate a = primJS $ HTMLOutputElement.prim__willValidate a
  
  export
  checkValidity : (obj : HTMLOutputElement) -> JSIO Boolean
  checkValidity a = primJS $ HTMLOutputElement.prim__checkValidity a
  
  export
  reportValidity : (obj : HTMLOutputElement) -> JSIO Boolean
  reportValidity a = primJS $ HTMLOutputElement.prim__reportValidity a
  
  export
  setCustomValidity : (obj : HTMLOutputElement) -> (error : String) -> JSIO ()
  setCustomValidity a b = primJS $ HTMLOutputElement.prim__setCustomValidity a b

namespace HTMLParagraphElement
  
  public export
  JSType HTMLParagraphElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLParagraphElement
  new = primJS $ HTMLParagraphElement.prim__new 
  
  export
  align : (obj : HTMLParagraphElement) -> JSIO String
  align a = primJS $ HTMLParagraphElement.prim__align a
  
  export
  setAlign : (obj : HTMLParagraphElement) -> (value : String) -> JSIO ()
  setAlign a b = primJS $ HTMLParagraphElement.prim__setAlign a b

namespace HTMLParamElement
  
  public export
  JSType HTMLParamElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLParamElement
  new = primJS $ HTMLParamElement.prim__new 
  
  export
  name : (obj : HTMLParamElement) -> JSIO String
  name a = primJS $ HTMLParamElement.prim__name a
  
  export
  setName : (obj : HTMLParamElement) -> (value : String) -> JSIO ()
  setName a b = primJS $ HTMLParamElement.prim__setName a b
  
  export
  type : (obj : HTMLParamElement) -> JSIO String
  type a = primJS $ HTMLParamElement.prim__type a
  
  export
  setType : (obj : HTMLParamElement) -> (value : String) -> JSIO ()
  setType a b = primJS $ HTMLParamElement.prim__setType a b
  
  export
  value : (obj : HTMLParamElement) -> JSIO String
  value a = primJS $ HTMLParamElement.prim__value a
  
  export
  setValue : (obj : HTMLParamElement) -> (value : String) -> JSIO ()
  setValue a b = primJS $ HTMLParamElement.prim__setValue a b
  
  export
  valueType : (obj : HTMLParamElement) -> JSIO String
  valueType a = primJS $ HTMLParamElement.prim__valueType a
  
  export
  setValueType : (obj : HTMLParamElement) -> (value : String) -> JSIO ()
  setValueType a b = primJS $ HTMLParamElement.prim__setValueType a b

namespace HTMLPictureElement
  
  public export
  JSType HTMLPictureElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLPictureElement
  new = primJS $ HTMLPictureElement.prim__new 

namespace HTMLPreElement
  
  public export
  JSType HTMLPreElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLPreElement
  new = primJS $ HTMLPreElement.prim__new 
  
  export
  width : (obj : HTMLPreElement) -> JSIO Int32
  width a = primJS $ HTMLPreElement.prim__width a
  
  export
  setWidth : (obj : HTMLPreElement) -> (value : Int32) -> JSIO ()
  setWidth a b = primJS $ HTMLPreElement.prim__setWidth a b

namespace HTMLProgressElement
  
  public export
  JSType HTMLProgressElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLProgressElement
  new = primJS $ HTMLProgressElement.prim__new 
  
  export
  labels : (obj : HTMLProgressElement) -> JSIO NodeList
  labels a = primJS $ HTMLProgressElement.prim__labels a
  
  export
  max : (obj : HTMLProgressElement) -> JSIO Double
  max a = primJS $ HTMLProgressElement.prim__max a
  
  export
  setMax : (obj : HTMLProgressElement) -> (value : Double) -> JSIO ()
  setMax a b = primJS $ HTMLProgressElement.prim__setMax a b
  
  export
  position : (obj : HTMLProgressElement) -> JSIO Double
  position a = primJS $ HTMLProgressElement.prim__position a
  
  export
  value : (obj : HTMLProgressElement) -> JSIO Double
  value a = primJS $ HTMLProgressElement.prim__value a
  
  export
  setValue : (obj : HTMLProgressElement) -> (value : Double) -> JSIO ()
  setValue a b = primJS $ HTMLProgressElement.prim__setValue a b

namespace HTMLQuoteElement
  
  public export
  JSType HTMLQuoteElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLQuoteElement
  new = primJS $ HTMLQuoteElement.prim__new 
  
  export
  cite : (obj : HTMLQuoteElement) -> JSIO String
  cite a = primJS $ HTMLQuoteElement.prim__cite a
  
  export
  setCite : (obj : HTMLQuoteElement) -> (value : String) -> JSIO ()
  setCite a b = primJS $ HTMLQuoteElement.prim__setCite a b

namespace HTMLScriptElement
  
  public export
  JSType HTMLScriptElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLScriptElement
  new = primJS $ HTMLScriptElement.prim__new 
  
  export
  async : (obj : HTMLScriptElement) -> JSIO Boolean
  async a = primJS $ HTMLScriptElement.prim__async a
  
  export
  setAsync : (obj : HTMLScriptElement) -> (value : Boolean) -> JSIO ()
  setAsync a b = primJS $ HTMLScriptElement.prim__setAsync a b
  
  export
  charset : (obj : HTMLScriptElement) -> JSIO String
  charset a = primJS $ HTMLScriptElement.prim__charset a
  
  export
  setCharset : (obj : HTMLScriptElement) -> (value : String) -> JSIO ()
  setCharset a b = primJS $ HTMLScriptElement.prim__setCharset a b
  
  export
  crossOrigin : (obj : HTMLScriptElement) -> JSIO (Nullable String)
  crossOrigin a = primJS $ HTMLScriptElement.prim__crossOrigin a
  
  export
  setCrossOrigin :  (obj : HTMLScriptElement)
                 -> (value : Nullable String)
                 -> JSIO ()
  setCrossOrigin a b = primJS $ HTMLScriptElement.prim__setCrossOrigin a b
  
  export
  defer : (obj : HTMLScriptElement) -> JSIO Boolean
  defer a = primJS $ HTMLScriptElement.prim__defer a
  
  export
  setDefer : (obj : HTMLScriptElement) -> (value : Boolean) -> JSIO ()
  setDefer a b = primJS $ HTMLScriptElement.prim__setDefer a b
  
  export
  event : (obj : HTMLScriptElement) -> JSIO String
  event a = primJS $ HTMLScriptElement.prim__event a
  
  export
  setEvent : (obj : HTMLScriptElement) -> (value : String) -> JSIO ()
  setEvent a b = primJS $ HTMLScriptElement.prim__setEvent a b
  
  export
  htmlFor : (obj : HTMLScriptElement) -> JSIO String
  htmlFor a = primJS $ HTMLScriptElement.prim__htmlFor a
  
  export
  setHtmlFor : (obj : HTMLScriptElement) -> (value : String) -> JSIO ()
  setHtmlFor a b = primJS $ HTMLScriptElement.prim__setHtmlFor a b
  
  export
  integrity : (obj : HTMLScriptElement) -> JSIO String
  integrity a = primJS $ HTMLScriptElement.prim__integrity a
  
  export
  setIntegrity : (obj : HTMLScriptElement) -> (value : String) -> JSIO ()
  setIntegrity a b = primJS $ HTMLScriptElement.prim__setIntegrity a b
  
  export
  noModule : (obj : HTMLScriptElement) -> JSIO Boolean
  noModule a = primJS $ HTMLScriptElement.prim__noModule a
  
  export
  setNoModule : (obj : HTMLScriptElement) -> (value : Boolean) -> JSIO ()
  setNoModule a b = primJS $ HTMLScriptElement.prim__setNoModule a b
  
  export
  referrerPolicy : (obj : HTMLScriptElement) -> JSIO String
  referrerPolicy a = primJS $ HTMLScriptElement.prim__referrerPolicy a
  
  export
  setReferrerPolicy : (obj : HTMLScriptElement) -> (value : String) -> JSIO ()
  setReferrerPolicy a b = primJS $ HTMLScriptElement.prim__setReferrerPolicy a b
  
  export
  src : (obj : HTMLScriptElement) -> JSIO String
  src a = primJS $ HTMLScriptElement.prim__src a
  
  export
  setSrc : (obj : HTMLScriptElement) -> (value : String) -> JSIO ()
  setSrc a b = primJS $ HTMLScriptElement.prim__setSrc a b
  
  export
  text : (obj : HTMLScriptElement) -> JSIO String
  text a = primJS $ HTMLScriptElement.prim__text a
  
  export
  setText : (obj : HTMLScriptElement) -> (value : String) -> JSIO ()
  setText a b = primJS $ HTMLScriptElement.prim__setText a b
  
  export
  type : (obj : HTMLScriptElement) -> JSIO String
  type a = primJS $ HTMLScriptElement.prim__type a
  
  export
  setType : (obj : HTMLScriptElement) -> (value : String) -> JSIO ()
  setType a b = primJS $ HTMLScriptElement.prim__setType a b

namespace HTMLSelectElement
  
  public export
  JSType HTMLSelectElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLSelectElement
  new = primJS $ HTMLSelectElement.prim__new 
  
  export
  set :  (obj : HTMLSelectElement)
      -> (index : UInt32)
      -> (option : Nullable HTMLOptionElement)
      -> JSIO ()
  set a b c = primJS $ HTMLSelectElement.prim__set a b c
  
  export
  autocomplete : (obj : HTMLSelectElement) -> JSIO String
  autocomplete a = primJS $ HTMLSelectElement.prim__autocomplete a
  
  export
  setAutocomplete : (obj : HTMLSelectElement) -> (value : String) -> JSIO ()
  setAutocomplete a b = primJS $ HTMLSelectElement.prim__setAutocomplete a b
  
  export
  disabled : (obj : HTMLSelectElement) -> JSIO Boolean
  disabled a = primJS $ HTMLSelectElement.prim__disabled a
  
  export
  setDisabled : (obj : HTMLSelectElement) -> (value : Boolean) -> JSIO ()
  setDisabled a b = primJS $ HTMLSelectElement.prim__setDisabled a b
  
  export
  form : (obj : HTMLSelectElement) -> JSIO (Nullable HTMLFormElement)
  form a = primJS $ HTMLSelectElement.prim__form a
  
  export
  labels : (obj : HTMLSelectElement) -> JSIO NodeList
  labels a = primJS $ HTMLSelectElement.prim__labels a
  
  export
  length : (obj : HTMLSelectElement) -> JSIO UInt32
  length a = primJS $ HTMLSelectElement.prim__length a
  
  export
  setLength : (obj : HTMLSelectElement) -> (value : UInt32) -> JSIO ()
  setLength a b = primJS $ HTMLSelectElement.prim__setLength a b
  
  export
  multiple : (obj : HTMLSelectElement) -> JSIO Boolean
  multiple a = primJS $ HTMLSelectElement.prim__multiple a
  
  export
  setMultiple : (obj : HTMLSelectElement) -> (value : Boolean) -> JSIO ()
  setMultiple a b = primJS $ HTMLSelectElement.prim__setMultiple a b
  
  export
  name : (obj : HTMLSelectElement) -> JSIO String
  name a = primJS $ HTMLSelectElement.prim__name a
  
  export
  setName : (obj : HTMLSelectElement) -> (value : String) -> JSIO ()
  setName a b = primJS $ HTMLSelectElement.prim__setName a b
  
  export
  options : (obj : HTMLSelectElement) -> JSIO HTMLOptionsCollection
  options a = primJS $ HTMLSelectElement.prim__options a
  
  export
  required : (obj : HTMLSelectElement) -> JSIO Boolean
  required a = primJS $ HTMLSelectElement.prim__required a
  
  export
  setRequired : (obj : HTMLSelectElement) -> (value : Boolean) -> JSIO ()
  setRequired a b = primJS $ HTMLSelectElement.prim__setRequired a b
  
  export
  selectedIndex : (obj : HTMLSelectElement) -> JSIO Int32
  selectedIndex a = primJS $ HTMLSelectElement.prim__selectedIndex a
  
  export
  setSelectedIndex : (obj : HTMLSelectElement) -> (value : Int32) -> JSIO ()
  setSelectedIndex a b = primJS $ HTMLSelectElement.prim__setSelectedIndex a b
  
  export
  selectedOptions : (obj : HTMLSelectElement) -> JSIO HTMLCollection
  selectedOptions a = primJS $ HTMLSelectElement.prim__selectedOptions a
  
  export
  size : (obj : HTMLSelectElement) -> JSIO UInt32
  size a = primJS $ HTMLSelectElement.prim__size a
  
  export
  setSize : (obj : HTMLSelectElement) -> (value : UInt32) -> JSIO ()
  setSize a b = primJS $ HTMLSelectElement.prim__setSize a b
  
  export
  type : (obj : HTMLSelectElement) -> JSIO String
  type a = primJS $ HTMLSelectElement.prim__type a
  
  export
  validationMessage : (obj : HTMLSelectElement) -> JSIO String
  validationMessage a = primJS $ HTMLSelectElement.prim__validationMessage a
  
  export
  validity : (obj : HTMLSelectElement) -> JSIO ValidityState
  validity a = primJS $ HTMLSelectElement.prim__validity a
  
  export
  value : (obj : HTMLSelectElement) -> JSIO String
  value a = primJS $ HTMLSelectElement.prim__value a
  
  export
  setValue : (obj : HTMLSelectElement) -> (value : String) -> JSIO ()
  setValue a b = primJS $ HTMLSelectElement.prim__setValue a b
  
  export
  willValidate : (obj : HTMLSelectElement) -> JSIO Boolean
  willValidate a = primJS $ HTMLSelectElement.prim__willValidate a
  
  export
  add :  (obj : HTMLSelectElement)
      -> (element : Union2 HTMLOptionElement HTMLOptGroupElement)
      -> (before : UndefOr (Nullable (Union2 HTMLElement Int32)))
      -> JSIO ()
  add a b c = primJS $ HTMLSelectElement.prim__add a b c
  
  export
  checkValidity : (obj : HTMLSelectElement) -> JSIO Boolean
  checkValidity a = primJS $ HTMLSelectElement.prim__checkValidity a
  
  export
  item :  (obj : HTMLSelectElement)
       -> (index : UInt32)
       -> JSIO (Nullable Element)
  item a b = primJS $ HTMLSelectElement.prim__item a b
  
  export
  namedItem :  (obj : HTMLSelectElement)
            -> (name : String)
            -> JSIO (Nullable HTMLOptionElement)
  namedItem a b = primJS $ HTMLSelectElement.prim__namedItem a b
  
  export
  remove : (obj : HTMLSelectElement) -> JSIO ()
  remove a = primJS $ HTMLSelectElement.prim__remove a
  
  export
  remove1 : (obj : HTMLSelectElement) -> (index : Int32) -> JSIO ()
  remove1 a b = primJS $ HTMLSelectElement.prim__remove1 a b
  
  export
  reportValidity : (obj : HTMLSelectElement) -> JSIO Boolean
  reportValidity a = primJS $ HTMLSelectElement.prim__reportValidity a
  
  export
  setCustomValidity : (obj : HTMLSelectElement) -> (error : String) -> JSIO ()
  setCustomValidity a b = primJS $ HTMLSelectElement.prim__setCustomValidity a b

namespace HTMLSlotElement
  
  public export
  JSType HTMLSlotElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLSlotElement
  new = primJS $ HTMLSlotElement.prim__new 
  
  export
  name : (obj : HTMLSlotElement) -> JSIO String
  name a = primJS $ HTMLSlotElement.prim__name a
  
  export
  setName : (obj : HTMLSlotElement) -> (value : String) -> JSIO ()
  setName a b = primJS $ HTMLSlotElement.prim__setName a b
  
  export
  assignedElements :  (obj : HTMLSlotElement)
                   -> (options : UndefOr AssignedNodesOptions)
                   -> JSIO (Array Element)
  assignedElements a b = primJS $ HTMLSlotElement.prim__assignedElements a b
  
  export
  assignedNodes :  (obj : HTMLSlotElement)
                -> (options : UndefOr AssignedNodesOptions)
                -> JSIO (Array Node)
  assignedNodes a b = primJS $ HTMLSlotElement.prim__assignedNodes a b

namespace HTMLSourceElement
  
  public export
  JSType HTMLSourceElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLSourceElement
  new = primJS $ HTMLSourceElement.prim__new 
  
  export
  height : (obj : HTMLSourceElement) -> JSIO UInt32
  height a = primJS $ HTMLSourceElement.prim__height a
  
  export
  setHeight : (obj : HTMLSourceElement) -> (value : UInt32) -> JSIO ()
  setHeight a b = primJS $ HTMLSourceElement.prim__setHeight a b
  
  export
  media : (obj : HTMLSourceElement) -> JSIO String
  media a = primJS $ HTMLSourceElement.prim__media a
  
  export
  setMedia : (obj : HTMLSourceElement) -> (value : String) -> JSIO ()
  setMedia a b = primJS $ HTMLSourceElement.prim__setMedia a b
  
  export
  sizes : (obj : HTMLSourceElement) -> JSIO String
  sizes a = primJS $ HTMLSourceElement.prim__sizes a
  
  export
  setSizes : (obj : HTMLSourceElement) -> (value : String) -> JSIO ()
  setSizes a b = primJS $ HTMLSourceElement.prim__setSizes a b
  
  export
  src : (obj : HTMLSourceElement) -> JSIO String
  src a = primJS $ HTMLSourceElement.prim__src a
  
  export
  setSrc : (obj : HTMLSourceElement) -> (value : String) -> JSIO ()
  setSrc a b = primJS $ HTMLSourceElement.prim__setSrc a b
  
  export
  srcset : (obj : HTMLSourceElement) -> JSIO String
  srcset a = primJS $ HTMLSourceElement.prim__srcset a
  
  export
  setSrcset : (obj : HTMLSourceElement) -> (value : String) -> JSIO ()
  setSrcset a b = primJS $ HTMLSourceElement.prim__setSrcset a b
  
  export
  type : (obj : HTMLSourceElement) -> JSIO String
  type a = primJS $ HTMLSourceElement.prim__type a
  
  export
  setType : (obj : HTMLSourceElement) -> (value : String) -> JSIO ()
  setType a b = primJS $ HTMLSourceElement.prim__setType a b
  
  export
  width : (obj : HTMLSourceElement) -> JSIO UInt32
  width a = primJS $ HTMLSourceElement.prim__width a
  
  export
  setWidth : (obj : HTMLSourceElement) -> (value : UInt32) -> JSIO ()
  setWidth a b = primJS $ HTMLSourceElement.prim__setWidth a b

namespace HTMLSpanElement
  
  public export
  JSType HTMLSpanElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLSpanElement
  new = primJS $ HTMLSpanElement.prim__new 

namespace HTMLStyleElement
  
  public export
  JSType HTMLStyleElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLStyleElement
  new = primJS $ HTMLStyleElement.prim__new 
  
  export
  media : (obj : HTMLStyleElement) -> JSIO String
  media a = primJS $ HTMLStyleElement.prim__media a
  
  export
  setMedia : (obj : HTMLStyleElement) -> (value : String) -> JSIO ()
  setMedia a b = primJS $ HTMLStyleElement.prim__setMedia a b
  
  export
  type : (obj : HTMLStyleElement) -> JSIO String
  type a = primJS $ HTMLStyleElement.prim__type a
  
  export
  setType : (obj : HTMLStyleElement) -> (value : String) -> JSIO ()
  setType a b = primJS $ HTMLStyleElement.prim__setType a b

namespace HTMLTableCaptionElement
  
  public export
  JSType HTMLTableCaptionElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLTableCaptionElement
  new = primJS $ HTMLTableCaptionElement.prim__new 
  
  export
  align : (obj : HTMLTableCaptionElement) -> JSIO String
  align a = primJS $ HTMLTableCaptionElement.prim__align a
  
  export
  setAlign : (obj : HTMLTableCaptionElement) -> (value : String) -> JSIO ()
  setAlign a b = primJS $ HTMLTableCaptionElement.prim__setAlign a b

namespace HTMLTableCellElement
  
  public export
  JSType HTMLTableCellElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLTableCellElement
  new = primJS $ HTMLTableCellElement.prim__new 
  
  export
  abbr : (obj : HTMLTableCellElement) -> JSIO String
  abbr a = primJS $ HTMLTableCellElement.prim__abbr a
  
  export
  setAbbr : (obj : HTMLTableCellElement) -> (value : String) -> JSIO ()
  setAbbr a b = primJS $ HTMLTableCellElement.prim__setAbbr a b
  
  export
  align : (obj : HTMLTableCellElement) -> JSIO String
  align a = primJS $ HTMLTableCellElement.prim__align a
  
  export
  setAlign : (obj : HTMLTableCellElement) -> (value : String) -> JSIO ()
  setAlign a b = primJS $ HTMLTableCellElement.prim__setAlign a b
  
  export
  axis : (obj : HTMLTableCellElement) -> JSIO String
  axis a = primJS $ HTMLTableCellElement.prim__axis a
  
  export
  setAxis : (obj : HTMLTableCellElement) -> (value : String) -> JSIO ()
  setAxis a b = primJS $ HTMLTableCellElement.prim__setAxis a b
  
  export
  bgColor : (obj : HTMLTableCellElement) -> JSIO String
  bgColor a = primJS $ HTMLTableCellElement.prim__bgColor a
  
  export
  setBgColor : (obj : HTMLTableCellElement) -> (value : String) -> JSIO ()
  setBgColor a b = primJS $ HTMLTableCellElement.prim__setBgColor a b
  
  export
  cellIndex : (obj : HTMLTableCellElement) -> JSIO Int32
  cellIndex a = primJS $ HTMLTableCellElement.prim__cellIndex a
  
  export
  ch : (obj : HTMLTableCellElement) -> JSIO String
  ch a = primJS $ HTMLTableCellElement.prim__ch a
  
  export
  setCh : (obj : HTMLTableCellElement) -> (value : String) -> JSIO ()
  setCh a b = primJS $ HTMLTableCellElement.prim__setCh a b
  
  export
  chOff : (obj : HTMLTableCellElement) -> JSIO String
  chOff a = primJS $ HTMLTableCellElement.prim__chOff a
  
  export
  setChOff : (obj : HTMLTableCellElement) -> (value : String) -> JSIO ()
  setChOff a b = primJS $ HTMLTableCellElement.prim__setChOff a b
  
  export
  colSpan : (obj : HTMLTableCellElement) -> JSIO UInt32
  colSpan a = primJS $ HTMLTableCellElement.prim__colSpan a
  
  export
  setColSpan : (obj : HTMLTableCellElement) -> (value : UInt32) -> JSIO ()
  setColSpan a b = primJS $ HTMLTableCellElement.prim__setColSpan a b
  
  export
  headers : (obj : HTMLTableCellElement) -> JSIO String
  headers a = primJS $ HTMLTableCellElement.prim__headers a
  
  export
  setHeaders : (obj : HTMLTableCellElement) -> (value : String) -> JSIO ()
  setHeaders a b = primJS $ HTMLTableCellElement.prim__setHeaders a b
  
  export
  height : (obj : HTMLTableCellElement) -> JSIO String
  height a = primJS $ HTMLTableCellElement.prim__height a
  
  export
  setHeight : (obj : HTMLTableCellElement) -> (value : String) -> JSIO ()
  setHeight a b = primJS $ HTMLTableCellElement.prim__setHeight a b
  
  export
  noWrap : (obj : HTMLTableCellElement) -> JSIO Boolean
  noWrap a = primJS $ HTMLTableCellElement.prim__noWrap a
  
  export
  setNoWrap : (obj : HTMLTableCellElement) -> (value : Boolean) -> JSIO ()
  setNoWrap a b = primJS $ HTMLTableCellElement.prim__setNoWrap a b
  
  export
  rowSpan : (obj : HTMLTableCellElement) -> JSIO UInt32
  rowSpan a = primJS $ HTMLTableCellElement.prim__rowSpan a
  
  export
  setRowSpan : (obj : HTMLTableCellElement) -> (value : UInt32) -> JSIO ()
  setRowSpan a b = primJS $ HTMLTableCellElement.prim__setRowSpan a b
  
  export
  scope : (obj : HTMLTableCellElement) -> JSIO String
  scope a = primJS $ HTMLTableCellElement.prim__scope a
  
  export
  setScope : (obj : HTMLTableCellElement) -> (value : String) -> JSIO ()
  setScope a b = primJS $ HTMLTableCellElement.prim__setScope a b
  
  export
  vAlign : (obj : HTMLTableCellElement) -> JSIO String
  vAlign a = primJS $ HTMLTableCellElement.prim__vAlign a
  
  export
  setVAlign : (obj : HTMLTableCellElement) -> (value : String) -> JSIO ()
  setVAlign a b = primJS $ HTMLTableCellElement.prim__setVAlign a b
  
  export
  width : (obj : HTMLTableCellElement) -> JSIO String
  width a = primJS $ HTMLTableCellElement.prim__width a
  
  export
  setWidth : (obj : HTMLTableCellElement) -> (value : String) -> JSIO ()
  setWidth a b = primJS $ HTMLTableCellElement.prim__setWidth a b

namespace HTMLTableColElement
  
  public export
  JSType HTMLTableColElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLTableColElement
  new = primJS $ HTMLTableColElement.prim__new 
  
  export
  align : (obj : HTMLTableColElement) -> JSIO String
  align a = primJS $ HTMLTableColElement.prim__align a
  
  export
  setAlign : (obj : HTMLTableColElement) -> (value : String) -> JSIO ()
  setAlign a b = primJS $ HTMLTableColElement.prim__setAlign a b
  
  export
  ch : (obj : HTMLTableColElement) -> JSIO String
  ch a = primJS $ HTMLTableColElement.prim__ch a
  
  export
  setCh : (obj : HTMLTableColElement) -> (value : String) -> JSIO ()
  setCh a b = primJS $ HTMLTableColElement.prim__setCh a b
  
  export
  chOff : (obj : HTMLTableColElement) -> JSIO String
  chOff a = primJS $ HTMLTableColElement.prim__chOff a
  
  export
  setChOff : (obj : HTMLTableColElement) -> (value : String) -> JSIO ()
  setChOff a b = primJS $ HTMLTableColElement.prim__setChOff a b
  
  export
  span : (obj : HTMLTableColElement) -> JSIO UInt32
  span a = primJS $ HTMLTableColElement.prim__span a
  
  export
  setSpan : (obj : HTMLTableColElement) -> (value : UInt32) -> JSIO ()
  setSpan a b = primJS $ HTMLTableColElement.prim__setSpan a b
  
  export
  vAlign : (obj : HTMLTableColElement) -> JSIO String
  vAlign a = primJS $ HTMLTableColElement.prim__vAlign a
  
  export
  setVAlign : (obj : HTMLTableColElement) -> (value : String) -> JSIO ()
  setVAlign a b = primJS $ HTMLTableColElement.prim__setVAlign a b
  
  export
  width : (obj : HTMLTableColElement) -> JSIO String
  width a = primJS $ HTMLTableColElement.prim__width a
  
  export
  setWidth : (obj : HTMLTableColElement) -> (value : String) -> JSIO ()
  setWidth a b = primJS $ HTMLTableColElement.prim__setWidth a b

namespace HTMLTableElement
  
  public export
  JSType HTMLTableElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLTableElement
  new = primJS $ HTMLTableElement.prim__new 
  
  export
  align : (obj : HTMLTableElement) -> JSIO String
  align a = primJS $ HTMLTableElement.prim__align a
  
  export
  setAlign : (obj : HTMLTableElement) -> (value : String) -> JSIO ()
  setAlign a b = primJS $ HTMLTableElement.prim__setAlign a b
  
  export
  bgColor : (obj : HTMLTableElement) -> JSIO String
  bgColor a = primJS $ HTMLTableElement.prim__bgColor a
  
  export
  setBgColor : (obj : HTMLTableElement) -> (value : String) -> JSIO ()
  setBgColor a b = primJS $ HTMLTableElement.prim__setBgColor a b
  
  export
  border : (obj : HTMLTableElement) -> JSIO String
  border a = primJS $ HTMLTableElement.prim__border a
  
  export
  setBorder : (obj : HTMLTableElement) -> (value : String) -> JSIO ()
  setBorder a b = primJS $ HTMLTableElement.prim__setBorder a b
  
  export
  caption : (obj : HTMLTableElement) -> JSIO (Nullable HTMLTableCaptionElement)
  caption a = primJS $ HTMLTableElement.prim__caption a
  
  export
  setCaption :  (obj : HTMLTableElement)
             -> (value : Nullable HTMLTableCaptionElement)
             -> JSIO ()
  setCaption a b = primJS $ HTMLTableElement.prim__setCaption a b
  
  export
  cellPadding : (obj : HTMLTableElement) -> JSIO String
  cellPadding a = primJS $ HTMLTableElement.prim__cellPadding a
  
  export
  setCellPadding : (obj : HTMLTableElement) -> (value : String) -> JSIO ()
  setCellPadding a b = primJS $ HTMLTableElement.prim__setCellPadding a b
  
  export
  cellSpacing : (obj : HTMLTableElement) -> JSIO String
  cellSpacing a = primJS $ HTMLTableElement.prim__cellSpacing a
  
  export
  setCellSpacing : (obj : HTMLTableElement) -> (value : String) -> JSIO ()
  setCellSpacing a b = primJS $ HTMLTableElement.prim__setCellSpacing a b
  
  export
  frame : (obj : HTMLTableElement) -> JSIO String
  frame a = primJS $ HTMLTableElement.prim__frame a
  
  export
  setFrame : (obj : HTMLTableElement) -> (value : String) -> JSIO ()
  setFrame a b = primJS $ HTMLTableElement.prim__setFrame a b
  
  export
  rows : (obj : HTMLTableElement) -> JSIO HTMLCollection
  rows a = primJS $ HTMLTableElement.prim__rows a
  
  export
  rules : (obj : HTMLTableElement) -> JSIO String
  rules a = primJS $ HTMLTableElement.prim__rules a
  
  export
  setRules : (obj : HTMLTableElement) -> (value : String) -> JSIO ()
  setRules a b = primJS $ HTMLTableElement.prim__setRules a b
  
  export
  summary : (obj : HTMLTableElement) -> JSIO String
  summary a = primJS $ HTMLTableElement.prim__summary a
  
  export
  setSummary : (obj : HTMLTableElement) -> (value : String) -> JSIO ()
  setSummary a b = primJS $ HTMLTableElement.prim__setSummary a b
  
  export
  tBodies : (obj : HTMLTableElement) -> JSIO HTMLCollection
  tBodies a = primJS $ HTMLTableElement.prim__tBodies a
  
  export
  tFoot : (obj : HTMLTableElement) -> JSIO (Nullable HTMLTableSectionElement)
  tFoot a = primJS $ HTMLTableElement.prim__tFoot a
  
  export
  setTFoot :  (obj : HTMLTableElement)
           -> (value : Nullable HTMLTableSectionElement)
           -> JSIO ()
  setTFoot a b = primJS $ HTMLTableElement.prim__setTFoot a b
  
  export
  tHead : (obj : HTMLTableElement) -> JSIO (Nullable HTMLTableSectionElement)
  tHead a = primJS $ HTMLTableElement.prim__tHead a
  
  export
  setTHead :  (obj : HTMLTableElement)
           -> (value : Nullable HTMLTableSectionElement)
           -> JSIO ()
  setTHead a b = primJS $ HTMLTableElement.prim__setTHead a b
  
  export
  width : (obj : HTMLTableElement) -> JSIO String
  width a = primJS $ HTMLTableElement.prim__width a
  
  export
  setWidth : (obj : HTMLTableElement) -> (value : String) -> JSIO ()
  setWidth a b = primJS $ HTMLTableElement.prim__setWidth a b
  
  export
  createCaption : (obj : HTMLTableElement) -> JSIO HTMLTableCaptionElement
  createCaption a = primJS $ HTMLTableElement.prim__createCaption a
  
  export
  createTBody : (obj : HTMLTableElement) -> JSIO HTMLTableSectionElement
  createTBody a = primJS $ HTMLTableElement.prim__createTBody a
  
  export
  createTFoot : (obj : HTMLTableElement) -> JSIO HTMLTableSectionElement
  createTFoot a = primJS $ HTMLTableElement.prim__createTFoot a
  
  export
  createTHead : (obj : HTMLTableElement) -> JSIO HTMLTableSectionElement
  createTHead a = primJS $ HTMLTableElement.prim__createTHead a
  
  export
  deleteCaption : (obj : HTMLTableElement) -> JSIO ()
  deleteCaption a = primJS $ HTMLTableElement.prim__deleteCaption a
  
  export
  deleteRow : (obj : HTMLTableElement) -> (index : Int32) -> JSIO ()
  deleteRow a b = primJS $ HTMLTableElement.prim__deleteRow a b
  
  export
  deleteTFoot : (obj : HTMLTableElement) -> JSIO ()
  deleteTFoot a = primJS $ HTMLTableElement.prim__deleteTFoot a
  
  export
  deleteTHead : (obj : HTMLTableElement) -> JSIO ()
  deleteTHead a = primJS $ HTMLTableElement.prim__deleteTHead a
  
  export
  insertRow :  (obj : HTMLTableElement)
            -> (index : UndefOr Int32)
            -> JSIO HTMLTableRowElement
  insertRow a b = primJS $ HTMLTableElement.prim__insertRow a b

namespace HTMLTableRowElement
  
  public export
  JSType HTMLTableRowElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLTableRowElement
  new = primJS $ HTMLTableRowElement.prim__new 
  
  export
  align : (obj : HTMLTableRowElement) -> JSIO String
  align a = primJS $ HTMLTableRowElement.prim__align a
  
  export
  setAlign : (obj : HTMLTableRowElement) -> (value : String) -> JSIO ()
  setAlign a b = primJS $ HTMLTableRowElement.prim__setAlign a b
  
  export
  bgColor : (obj : HTMLTableRowElement) -> JSIO String
  bgColor a = primJS $ HTMLTableRowElement.prim__bgColor a
  
  export
  setBgColor : (obj : HTMLTableRowElement) -> (value : String) -> JSIO ()
  setBgColor a b = primJS $ HTMLTableRowElement.prim__setBgColor a b
  
  export
  cells : (obj : HTMLTableRowElement) -> JSIO HTMLCollection
  cells a = primJS $ HTMLTableRowElement.prim__cells a
  
  export
  ch : (obj : HTMLTableRowElement) -> JSIO String
  ch a = primJS $ HTMLTableRowElement.prim__ch a
  
  export
  setCh : (obj : HTMLTableRowElement) -> (value : String) -> JSIO ()
  setCh a b = primJS $ HTMLTableRowElement.prim__setCh a b
  
  export
  chOff : (obj : HTMLTableRowElement) -> JSIO String
  chOff a = primJS $ HTMLTableRowElement.prim__chOff a
  
  export
  setChOff : (obj : HTMLTableRowElement) -> (value : String) -> JSIO ()
  setChOff a b = primJS $ HTMLTableRowElement.prim__setChOff a b
  
  export
  rowIndex : (obj : HTMLTableRowElement) -> JSIO Int32
  rowIndex a = primJS $ HTMLTableRowElement.prim__rowIndex a
  
  export
  sectionRowIndex : (obj : HTMLTableRowElement) -> JSIO Int32
  sectionRowIndex a = primJS $ HTMLTableRowElement.prim__sectionRowIndex a
  
  export
  vAlign : (obj : HTMLTableRowElement) -> JSIO String
  vAlign a = primJS $ HTMLTableRowElement.prim__vAlign a
  
  export
  setVAlign : (obj : HTMLTableRowElement) -> (value : String) -> JSIO ()
  setVAlign a b = primJS $ HTMLTableRowElement.prim__setVAlign a b
  
  export
  deleteCell : (obj : HTMLTableRowElement) -> (index : Int32) -> JSIO ()
  deleteCell a b = primJS $ HTMLTableRowElement.prim__deleteCell a b
  
  export
  insertCell :  (obj : HTMLTableRowElement)
             -> (index : UndefOr Int32)
             -> JSIO HTMLTableCellElement
  insertCell a b = primJS $ HTMLTableRowElement.prim__insertCell a b

namespace HTMLTableSectionElement
  
  public export
  JSType HTMLTableSectionElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLTableSectionElement
  new = primJS $ HTMLTableSectionElement.prim__new 
  
  export
  align : (obj : HTMLTableSectionElement) -> JSIO String
  align a = primJS $ HTMLTableSectionElement.prim__align a
  
  export
  setAlign : (obj : HTMLTableSectionElement) -> (value : String) -> JSIO ()
  setAlign a b = primJS $ HTMLTableSectionElement.prim__setAlign a b
  
  export
  ch : (obj : HTMLTableSectionElement) -> JSIO String
  ch a = primJS $ HTMLTableSectionElement.prim__ch a
  
  export
  setCh : (obj : HTMLTableSectionElement) -> (value : String) -> JSIO ()
  setCh a b = primJS $ HTMLTableSectionElement.prim__setCh a b
  
  export
  chOff : (obj : HTMLTableSectionElement) -> JSIO String
  chOff a = primJS $ HTMLTableSectionElement.prim__chOff a
  
  export
  setChOff : (obj : HTMLTableSectionElement) -> (value : String) -> JSIO ()
  setChOff a b = primJS $ HTMLTableSectionElement.prim__setChOff a b
  
  export
  rows : (obj : HTMLTableSectionElement) -> JSIO HTMLCollection
  rows a = primJS $ HTMLTableSectionElement.prim__rows a
  
  export
  vAlign : (obj : HTMLTableSectionElement) -> JSIO String
  vAlign a = primJS $ HTMLTableSectionElement.prim__vAlign a
  
  export
  setVAlign : (obj : HTMLTableSectionElement) -> (value : String) -> JSIO ()
  setVAlign a b = primJS $ HTMLTableSectionElement.prim__setVAlign a b
  
  export
  deleteRow : (obj : HTMLTableSectionElement) -> (index : Int32) -> JSIO ()
  deleteRow a b = primJS $ HTMLTableSectionElement.prim__deleteRow a b
  
  export
  insertRow :  (obj : HTMLTableSectionElement)
            -> (index : UndefOr Int32)
            -> JSIO HTMLTableRowElement
  insertRow a b = primJS $ HTMLTableSectionElement.prim__insertRow a b

namespace HTMLTemplateElement
  
  public export
  JSType HTMLTemplateElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLTemplateElement
  new = primJS $ HTMLTemplateElement.prim__new 
  
  export
  content : (obj : HTMLTemplateElement) -> JSIO DocumentFragment
  content a = primJS $ HTMLTemplateElement.prim__content a

namespace HTMLTextAreaElement
  
  public export
  JSType HTMLTextAreaElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLTextAreaElement
  new = primJS $ HTMLTextAreaElement.prim__new 
  
  export
  autocomplete : (obj : HTMLTextAreaElement) -> JSIO String
  autocomplete a = primJS $ HTMLTextAreaElement.prim__autocomplete a
  
  export
  setAutocomplete : (obj : HTMLTextAreaElement) -> (value : String) -> JSIO ()
  setAutocomplete a b = primJS $ HTMLTextAreaElement.prim__setAutocomplete a b
  
  export
  cols : (obj : HTMLTextAreaElement) -> JSIO UInt32
  cols a = primJS $ HTMLTextAreaElement.prim__cols a
  
  export
  setCols : (obj : HTMLTextAreaElement) -> (value : UInt32) -> JSIO ()
  setCols a b = primJS $ HTMLTextAreaElement.prim__setCols a b
  
  export
  defaultValue : (obj : HTMLTextAreaElement) -> JSIO String
  defaultValue a = primJS $ HTMLTextAreaElement.prim__defaultValue a
  
  export
  setDefaultValue : (obj : HTMLTextAreaElement) -> (value : String) -> JSIO ()
  setDefaultValue a b = primJS $ HTMLTextAreaElement.prim__setDefaultValue a b
  
  export
  dirName : (obj : HTMLTextAreaElement) -> JSIO String
  dirName a = primJS $ HTMLTextAreaElement.prim__dirName a
  
  export
  setDirName : (obj : HTMLTextAreaElement) -> (value : String) -> JSIO ()
  setDirName a b = primJS $ HTMLTextAreaElement.prim__setDirName a b
  
  export
  disabled : (obj : HTMLTextAreaElement) -> JSIO Boolean
  disabled a = primJS $ HTMLTextAreaElement.prim__disabled a
  
  export
  setDisabled : (obj : HTMLTextAreaElement) -> (value : Boolean) -> JSIO ()
  setDisabled a b = primJS $ HTMLTextAreaElement.prim__setDisabled a b
  
  export
  form : (obj : HTMLTextAreaElement) -> JSIO (Nullable HTMLFormElement)
  form a = primJS $ HTMLTextAreaElement.prim__form a
  
  export
  labels : (obj : HTMLTextAreaElement) -> JSIO NodeList
  labels a = primJS $ HTMLTextAreaElement.prim__labels a
  
  export
  maxLength : (obj : HTMLTextAreaElement) -> JSIO Int32
  maxLength a = primJS $ HTMLTextAreaElement.prim__maxLength a
  
  export
  setMaxLength : (obj : HTMLTextAreaElement) -> (value : Int32) -> JSIO ()
  setMaxLength a b = primJS $ HTMLTextAreaElement.prim__setMaxLength a b
  
  export
  minLength : (obj : HTMLTextAreaElement) -> JSIO Int32
  minLength a = primJS $ HTMLTextAreaElement.prim__minLength a
  
  export
  setMinLength : (obj : HTMLTextAreaElement) -> (value : Int32) -> JSIO ()
  setMinLength a b = primJS $ HTMLTextAreaElement.prim__setMinLength a b
  
  export
  name : (obj : HTMLTextAreaElement) -> JSIO String
  name a = primJS $ HTMLTextAreaElement.prim__name a
  
  export
  setName : (obj : HTMLTextAreaElement) -> (value : String) -> JSIO ()
  setName a b = primJS $ HTMLTextAreaElement.prim__setName a b
  
  export
  placeholder : (obj : HTMLTextAreaElement) -> JSIO String
  placeholder a = primJS $ HTMLTextAreaElement.prim__placeholder a
  
  export
  setPlaceholder : (obj : HTMLTextAreaElement) -> (value : String) -> JSIO ()
  setPlaceholder a b = primJS $ HTMLTextAreaElement.prim__setPlaceholder a b
  
  export
  readOnly : (obj : HTMLTextAreaElement) -> JSIO Boolean
  readOnly a = primJS $ HTMLTextAreaElement.prim__readOnly a
  
  export
  setReadOnly : (obj : HTMLTextAreaElement) -> (value : Boolean) -> JSIO ()
  setReadOnly a b = primJS $ HTMLTextAreaElement.prim__setReadOnly a b
  
  export
  required : (obj : HTMLTextAreaElement) -> JSIO Boolean
  required a = primJS $ HTMLTextAreaElement.prim__required a
  
  export
  setRequired : (obj : HTMLTextAreaElement) -> (value : Boolean) -> JSIO ()
  setRequired a b = primJS $ HTMLTextAreaElement.prim__setRequired a b
  
  export
  rows : (obj : HTMLTextAreaElement) -> JSIO UInt32
  rows a = primJS $ HTMLTextAreaElement.prim__rows a
  
  export
  setRows : (obj : HTMLTextAreaElement) -> (value : UInt32) -> JSIO ()
  setRows a b = primJS $ HTMLTextAreaElement.prim__setRows a b
  
  export
  selectionDirection : (obj : HTMLTextAreaElement) -> JSIO String
  selectionDirection a = primJS $ HTMLTextAreaElement.prim__selectionDirection a
  
  export
  setSelectionDirection :  (obj : HTMLTextAreaElement)
                        -> (value : String)
                        -> JSIO ()
  setSelectionDirection a b = primJS $ HTMLTextAreaElement.prim__setSelectionDirection a
                                                                                       b
  
  export
  selectionEnd : (obj : HTMLTextAreaElement) -> JSIO UInt32
  selectionEnd a = primJS $ HTMLTextAreaElement.prim__selectionEnd a
  
  export
  setSelectionEnd : (obj : HTMLTextAreaElement) -> (value : UInt32) -> JSIO ()
  setSelectionEnd a b = primJS $ HTMLTextAreaElement.prim__setSelectionEnd a b
  
  export
  selectionStart : (obj : HTMLTextAreaElement) -> JSIO UInt32
  selectionStart a = primJS $ HTMLTextAreaElement.prim__selectionStart a
  
  export
  setSelectionStart : (obj : HTMLTextAreaElement) -> (value : UInt32) -> JSIO ()
  setSelectionStart a b = primJS $ HTMLTextAreaElement.prim__setSelectionStart a
                                                                               b
  
  export
  textLength : (obj : HTMLTextAreaElement) -> JSIO UInt32
  textLength a = primJS $ HTMLTextAreaElement.prim__textLength a
  
  export
  type : (obj : HTMLTextAreaElement) -> JSIO String
  type a = primJS $ HTMLTextAreaElement.prim__type a
  
  export
  validationMessage : (obj : HTMLTextAreaElement) -> JSIO String
  validationMessage a = primJS $ HTMLTextAreaElement.prim__validationMessage a
  
  export
  validity : (obj : HTMLTextAreaElement) -> JSIO ValidityState
  validity a = primJS $ HTMLTextAreaElement.prim__validity a
  
  export
  value : (obj : HTMLTextAreaElement) -> JSIO String
  value a = primJS $ HTMLTextAreaElement.prim__value a
  
  export
  setValue : (obj : HTMLTextAreaElement) -> (value : String) -> JSIO ()
  setValue a b = primJS $ HTMLTextAreaElement.prim__setValue a b
  
  export
  willValidate : (obj : HTMLTextAreaElement) -> JSIO Boolean
  willValidate a = primJS $ HTMLTextAreaElement.prim__willValidate a
  
  export
  wrap : (obj : HTMLTextAreaElement) -> JSIO String
  wrap a = primJS $ HTMLTextAreaElement.prim__wrap a
  
  export
  setWrap : (obj : HTMLTextAreaElement) -> (value : String) -> JSIO ()
  setWrap a b = primJS $ HTMLTextAreaElement.prim__setWrap a b
  
  export
  checkValidity : (obj : HTMLTextAreaElement) -> JSIO Boolean
  checkValidity a = primJS $ HTMLTextAreaElement.prim__checkValidity a
  
  export
  reportValidity : (obj : HTMLTextAreaElement) -> JSIO Boolean
  reportValidity a = primJS $ HTMLTextAreaElement.prim__reportValidity a
  
  export
  select : (obj : HTMLTextAreaElement) -> JSIO ()
  select a = primJS $ HTMLTextAreaElement.prim__select a
  
  export
  setCustomValidity : (obj : HTMLTextAreaElement) -> (error : String) -> JSIO ()
  setCustomValidity a b = primJS $ HTMLTextAreaElement.prim__setCustomValidity a
                                                                               b
  
  export
  setRangeText :  (obj : HTMLTextAreaElement)
               -> (replacement : String)
               -> JSIO ()
  setRangeText a b = primJS $ HTMLTextAreaElement.prim__setRangeText a b
  
  export
  setRangeText1 :  (obj : HTMLTextAreaElement)
                -> (replacement : String)
                -> (start : UInt32)
                -> (end : UInt32)
                -> (selectionMode : UndefOr SelectionMode)
                -> JSIO ()
  setRangeText1 a b c d e = primJS $ HTMLTextAreaElement.prim__setRangeText1 a
                                                                             b
                                                                             c
                                                                             d
                                                                             e
  
  export
  setSelectionRange :  (obj : HTMLTextAreaElement)
                    -> (start : UInt32)
                    -> (end : UInt32)
                    -> (direction : UndefOr String)
                    -> JSIO ()
  setSelectionRange a b c d = primJS $ HTMLTextAreaElement.prim__setSelectionRange a
                                                                                   b
                                                                                   c
                                                                                   d

namespace HTMLTimeElement
  
  public export
  JSType HTMLTimeElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLTimeElement
  new = primJS $ HTMLTimeElement.prim__new 
  
  export
  dateTime : (obj : HTMLTimeElement) -> JSIO String
  dateTime a = primJS $ HTMLTimeElement.prim__dateTime a
  
  export
  setDateTime : (obj : HTMLTimeElement) -> (value : String) -> JSIO ()
  setDateTime a b = primJS $ HTMLTimeElement.prim__setDateTime a b

namespace HTMLTitleElement
  
  public export
  JSType HTMLTitleElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLTitleElement
  new = primJS $ HTMLTitleElement.prim__new 
  
  export
  text : (obj : HTMLTitleElement) -> JSIO String
  text a = primJS $ HTMLTitleElement.prim__text a
  
  export
  setText : (obj : HTMLTitleElement) -> (value : String) -> JSIO ()
  setText a b = primJS $ HTMLTitleElement.prim__setText a b

namespace HTMLTrackElement
  
  public export
  JSType HTMLTrackElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  NONE = 0
  
  export
  new : JSIO HTMLTrackElement
  new = primJS $ HTMLTrackElement.prim__new 
  
  export
  default_ : (obj : HTMLTrackElement) -> JSIO Boolean
  default_ a = primJS $ HTMLTrackElement.prim__default a
  
  export
  setDefault : (obj : HTMLTrackElement) -> (value : Boolean) -> JSIO ()
  setDefault a b = primJS $ HTMLTrackElement.prim__setDefault a b
  
  export
  kind : (obj : HTMLTrackElement) -> JSIO String
  kind a = primJS $ HTMLTrackElement.prim__kind a
  
  export
  setKind : (obj : HTMLTrackElement) -> (value : String) -> JSIO ()
  setKind a b = primJS $ HTMLTrackElement.prim__setKind a b
  
  export
  label : (obj : HTMLTrackElement) -> JSIO String
  label a = primJS $ HTMLTrackElement.prim__label a
  
  export
  setLabel : (obj : HTMLTrackElement) -> (value : String) -> JSIO ()
  setLabel a b = primJS $ HTMLTrackElement.prim__setLabel a b
  
  export
  readyState : (obj : HTMLTrackElement) -> JSIO UInt16
  readyState a = primJS $ HTMLTrackElement.prim__readyState a
  
  export
  src : (obj : HTMLTrackElement) -> JSIO String
  src a = primJS $ HTMLTrackElement.prim__src a
  
  export
  setSrc : (obj : HTMLTrackElement) -> (value : String) -> JSIO ()
  setSrc a b = primJS $ HTMLTrackElement.prim__setSrc a b
  
  export
  srclang : (obj : HTMLTrackElement) -> JSIO String
  srclang a = primJS $ HTMLTrackElement.prim__srclang a
  
  export
  setSrclang : (obj : HTMLTrackElement) -> (value : String) -> JSIO ()
  setSrclang a b = primJS $ HTMLTrackElement.prim__setSrclang a b
  
  export
  track : (obj : HTMLTrackElement) -> JSIO TextTrack
  track a = primJS $ HTMLTrackElement.prim__track a

namespace HTMLUListElement
  
  public export
  JSType HTMLUListElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
  
  export
  new : JSIO HTMLUListElement
  new = primJS $ HTMLUListElement.prim__new 
  
  export
  compact : (obj : HTMLUListElement) -> JSIO Boolean
  compact a = primJS $ HTMLUListElement.prim__compact a
  
  export
  setCompact : (obj : HTMLUListElement) -> (value : Boolean) -> JSIO ()
  setCompact a b = primJS $ HTMLUListElement.prim__setCompact a b
  
  export
  type : (obj : HTMLUListElement) -> JSIO String
  type a = primJS $ HTMLUListElement.prim__type a
  
  export
  setType : (obj : HTMLUListElement) -> (value : String) -> JSIO ()
  setType a b = primJS $ HTMLUListElement.prim__setType a b

namespace HTMLUnknownElement
  
  public export
  JSType HTMLUnknownElement where
    parents =  [ HTMLElement , Element , Node , EventTarget , Object ]

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
               , Object
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
  
  export
  new : JSIO HTMLVideoElement
  new = primJS $ HTMLVideoElement.prim__new 
  
  export
  height : (obj : HTMLVideoElement) -> JSIO UInt32
  height a = primJS $ HTMLVideoElement.prim__height a
  
  export
  setHeight : (obj : HTMLVideoElement) -> (value : UInt32) -> JSIO ()
  setHeight a b = primJS $ HTMLVideoElement.prim__setHeight a b
  
  export
  playsInline : (obj : HTMLVideoElement) -> JSIO Boolean
  playsInline a = primJS $ HTMLVideoElement.prim__playsInline a
  
  export
  setPlaysInline : (obj : HTMLVideoElement) -> (value : Boolean) -> JSIO ()
  setPlaysInline a b = primJS $ HTMLVideoElement.prim__setPlaysInline a b
  
  export
  poster : (obj : HTMLVideoElement) -> JSIO String
  poster a = primJS $ HTMLVideoElement.prim__poster a
  
  export
  setPoster : (obj : HTMLVideoElement) -> (value : String) -> JSIO ()
  setPoster a b = primJS $ HTMLVideoElement.prim__setPoster a b
  
  export
  videoHeight : (obj : HTMLVideoElement) -> JSIO UInt32
  videoHeight a = primJS $ HTMLVideoElement.prim__videoHeight a
  
  export
  videoWidth : (obj : HTMLVideoElement) -> JSIO UInt32
  videoWidth a = primJS $ HTMLVideoElement.prim__videoWidth a
  
  export
  width : (obj : HTMLVideoElement) -> JSIO UInt32
  width a = primJS $ HTMLVideoElement.prim__width a
  
  export
  setWidth : (obj : HTMLVideoElement) -> (value : UInt32) -> JSIO ()
  setWidth a b = primJS $ HTMLVideoElement.prim__setWidth a b

namespace HashChangeEvent
  
  public export
  JSType HashChangeEvent where
    parents =  [ Event , Object ]

    mixins =  []
  
  export
  new :  (type : String)
      -> (eventInitDict : UndefOr HashChangeEventInit)
      -> JSIO HashChangeEvent
  new a b = primJS $ HashChangeEvent.prim__new a b
  
  export
  newURL : (obj : HashChangeEvent) -> JSIO String
  newURL a = primJS $ HashChangeEvent.prim__newURL a
  
  export
  oldURL : (obj : HashChangeEvent) -> JSIO String
  oldURL a = primJS $ HashChangeEvent.prim__oldURL a

namespace History
  
  public export
  JSType History where
    parents =  [ Object ]

    mixins =  []
  
  export
  length : (obj : History) -> JSIO UInt32
  length a = primJS $ History.prim__length a
  
  export
  scrollRestoration : (obj : History) -> JSIO ScrollRestoration
  scrollRestoration a = primJS $ History.prim__scrollRestoration a
  
  export
  setScrollRestoration :  (obj : History)
                       -> (value : ScrollRestoration)
                       -> JSIO ()
  setScrollRestoration a b = primJS $ History.prim__setScrollRestoration a b
  
  export
  state : (obj : History) -> JSIO AnyPtr
  state a = primJS $ History.prim__state a
  
  export
  back : (obj : History) -> JSIO ()
  back a = primJS $ History.prim__back a
  
  export
  forward : (obj : History) -> JSIO ()
  forward a = primJS $ History.prim__forward a
  
  export
  go : (obj : History) -> (delta : UndefOr Int32) -> JSIO ()
  go a b = primJS $ History.prim__go a b
  
  export
  pushState :  (obj : History)
            -> (data_ : AnyPtr)
            -> (unused : String)
            -> (url : UndefOr (Nullable String))
            -> JSIO ()
  pushState a b c d = primJS $ History.prim__pushState a b c d
  
  export
  replaceState :  (obj : History)
               -> (data_ : AnyPtr)
               -> (unused : String)
               -> (url : UndefOr (Nullable String))
               -> JSIO ()
  replaceState a b c d = primJS $ History.prim__replaceState a b c d

namespace ImageBitmap
  
  public export
  JSType ImageBitmap where
    parents =  [ Object ]

    mixins =  []
  
  export
  height : (obj : ImageBitmap) -> JSIO UInt32
  height a = primJS $ ImageBitmap.prim__height a
  
  export
  width : (obj : ImageBitmap) -> JSIO UInt32
  width a = primJS $ ImageBitmap.prim__width a
  
  export
  close : (obj : ImageBitmap) -> JSIO ()
  close a = primJS $ ImageBitmap.prim__close a

namespace ImageBitmapRenderingContext
  
  public export
  JSType ImageBitmapRenderingContext where
    parents =  [ Object ]

    mixins =  []
  
  export
  canvas :  (obj : ImageBitmapRenderingContext)
         -> JSIO (Union2 HTMLCanvasElement OffscreenCanvas)
  canvas a = primJS $ ImageBitmapRenderingContext.prim__canvas a
  
  export
  transferFromImageBitmap :  (obj : ImageBitmapRenderingContext)
                          -> (bitmap : Nullable ImageBitmap)
                          -> JSIO ()
  transferFromImageBitmap a b = primJS $ ImageBitmapRenderingContext.prim__transferFromImageBitmap a
                                                                                                   b

namespace ImageData
  
  public export
  JSType ImageData where
    parents =  [ Object ]

    mixins =  []
  
  export
  new : (sw : UInt32) -> (sh : UInt32) -> JSIO ImageData
  new a b = primJS $ ImageData.prim__new a b
  
  export
  new1 :  (data_ : UInt8ClampedArray)
       -> (sw : UInt32)
       -> (sh : UndefOr UInt32)
       -> JSIO ImageData
  new1 a b c = primJS $ ImageData.prim__new1 a b c
  
  export
  data_ : (obj : ImageData) -> JSIO UInt8ClampedArray
  data_ a = primJS $ ImageData.prim__data a
  
  export
  height : (obj : ImageData) -> JSIO UInt32
  height a = primJS $ ImageData.prim__height a
  
  export
  width : (obj : ImageData) -> JSIO UInt32
  width a = primJS $ ImageData.prim__width a

namespace Location
  
  public export
  JSType Location where
    parents =  [ Object ]

    mixins =  []
  
  export
  ancestorOrigins : (obj : Location) -> JSIO DOMStringList
  ancestorOrigins a = primJS $ Location.prim__ancestorOrigins a
  
  export
  hash : (obj : Location) -> JSIO String
  hash a = primJS $ Location.prim__hash a
  
  export
  setHash : (obj : Location) -> (value : String) -> JSIO ()
  setHash a b = primJS $ Location.prim__setHash a b
  
  export
  host : (obj : Location) -> JSIO String
  host a = primJS $ Location.prim__host a
  
  export
  setHost : (obj : Location) -> (value : String) -> JSIO ()
  setHost a b = primJS $ Location.prim__setHost a b
  
  export
  hostname : (obj : Location) -> JSIO String
  hostname a = primJS $ Location.prim__hostname a
  
  export
  setHostname : (obj : Location) -> (value : String) -> JSIO ()
  setHostname a b = primJS $ Location.prim__setHostname a b
  
  export
  origin : (obj : Location) -> JSIO String
  origin a = primJS $ Location.prim__origin a
  
  export
  pathname : (obj : Location) -> JSIO String
  pathname a = primJS $ Location.prim__pathname a
  
  export
  setPathname : (obj : Location) -> (value : String) -> JSIO ()
  setPathname a b = primJS $ Location.prim__setPathname a b
  
  export
  port : (obj : Location) -> JSIO String
  port a = primJS $ Location.prim__port a
  
  export
  setPort : (obj : Location) -> (value : String) -> JSIO ()
  setPort a b = primJS $ Location.prim__setPort a b
  
  export
  protocol : (obj : Location) -> JSIO String
  protocol a = primJS $ Location.prim__protocol a
  
  export
  setProtocol : (obj : Location) -> (value : String) -> JSIO ()
  setProtocol a b = primJS $ Location.prim__setProtocol a b
  
  export
  search : (obj : Location) -> JSIO String
  search a = primJS $ Location.prim__search a
  
  export
  setSearch : (obj : Location) -> (value : String) -> JSIO ()
  setSearch a b = primJS $ Location.prim__setSearch a b
  
  export
  assign : (obj : Location) -> (url : String) -> JSIO ()
  assign a b = primJS $ Location.prim__assign a b
  
  export
  reload : (obj : Location) -> JSIO ()
  reload a = primJS $ Location.prim__reload a
  
  export
  replace : (obj : Location) -> (url : String) -> JSIO ()
  replace a b = primJS $ Location.prim__replace a b

namespace MediaError
  
  public export
  JSType MediaError where
    parents =  [ Object ]

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
  
  export
  code : (obj : MediaError) -> JSIO UInt16
  code a = primJS $ MediaError.prim__code a
  
  export
  message : (obj : MediaError) -> JSIO String
  message a = primJS $ MediaError.prim__message a

namespace MessageChannel
  
  public export
  JSType MessageChannel where
    parents =  [ Object ]

    mixins =  []
  
  export
  new : JSIO MessageChannel
  new = primJS $ MessageChannel.prim__new 
  
  export
  port1 : (obj : MessageChannel) -> JSIO MessagePort
  port1 a = primJS $ MessageChannel.prim__port1 a
  
  export
  port2 : (obj : MessageChannel) -> JSIO MessagePort
  port2 a = primJS $ MessageChannel.prim__port2 a

namespace MessageEvent
  
  public export
  JSType MessageEvent where
    parents =  [ Event , Object ]

    mixins =  []
  
  export
  new :  (type : String)
      -> (eventInitDict : UndefOr MessageEventInit)
      -> JSIO MessageEvent
  new a b = primJS $ MessageEvent.prim__new a b
  
  export
  data_ : (obj : MessageEvent) -> JSIO AnyPtr
  data_ a = primJS $ MessageEvent.prim__data a
  
  export
  lastEventId : (obj : MessageEvent) -> JSIO String
  lastEventId a = primJS $ MessageEvent.prim__lastEventId a
  
  export
  origin : (obj : MessageEvent) -> JSIO String
  origin a = primJS $ MessageEvent.prim__origin a
  
  export
  ports : (obj : MessageEvent) -> JSIO (Array MessagePort)
  ports a = primJS $ MessageEvent.prim__ports a
  
  export
  source : (obj : MessageEvent) -> JSIO (Nullable MessageEventSource)
  source a = primJS $ MessageEvent.prim__source a
  
  export
  initMessageEvent :  (obj : MessageEvent)
                   -> (type : String)
                   -> (bubbles : UndefOr Boolean)
                   -> (cancelable : UndefOr Boolean)
                   -> (data_ : UndefOr AnyPtr)
                   -> (origin : UndefOr String)
                   -> (lastEventId : UndefOr String)
                   -> (source : UndefOr (Nullable MessageEventSource))
                   -> (ports : UndefOr (Array MessagePort))
                   -> JSIO ()
  initMessageEvent a b c d e f g h i = primJS $ MessageEvent.prim__initMessageEvent a
                                                                                    b
                                                                                    c
                                                                                    d
                                                                                    e
                                                                                    f
                                                                                    g
                                                                                    h
                                                                                    i

namespace MessagePort
  
  public export
  JSType MessagePort where
    parents =  [ EventTarget , Object ]

    mixins =  []
  
  export
  onmessage : (obj : MessagePort) -> JSIO EventHandler
  onmessage a = primJS $ MessagePort.prim__onmessage a
  
  export
  setOnmessage : (obj : MessagePort) -> (value : EventHandler) -> JSIO ()
  setOnmessage a b = primJS $ MessagePort.prim__setOnmessage a b
  
  export
  onmessageerror : (obj : MessagePort) -> JSIO EventHandler
  onmessageerror a = primJS $ MessagePort.prim__onmessageerror a
  
  export
  setOnmessageerror : (obj : MessagePort) -> (value : EventHandler) -> JSIO ()
  setOnmessageerror a b = primJS $ MessagePort.prim__setOnmessageerror a b
  
  export
  close : (obj : MessagePort) -> JSIO ()
  close a = primJS $ MessagePort.prim__close a
  
  export
  postMessage :  (obj : MessagePort)
              -> (message : AnyPtr)
              -> (transfer : Array Object)
              -> JSIO ()
  postMessage a b c = primJS $ MessagePort.prim__postMessage a b c
  
  export
  postMessage1 :  (obj : MessagePort)
               -> (message : AnyPtr)
               -> (options : UndefOr PostMessageOptions)
               -> JSIO ()
  postMessage1 a b c = primJS $ MessagePort.prim__postMessage1 a b c
  
  export
  start : (obj : MessagePort) -> JSIO ()
  start a = primJS $ MessagePort.prim__start a

namespace MimeType
  
  public export
  JSType MimeType where
    parents =  [ Object ]

    mixins =  []
  
  export
  description : (obj : MimeType) -> JSIO ()
  description a = primJS $ MimeType.prim__description a
  
  export
  enabledPlugin : (obj : MimeType) -> JSIO ()
  enabledPlugin a = primJS $ MimeType.prim__enabledPlugin a
  
  export
  suffixes : (obj : MimeType) -> JSIO ()
  suffixes a = primJS $ MimeType.prim__suffixes a
  
  export
  type : (obj : MimeType) -> JSIO ()
  type a = primJS $ MimeType.prim__type a

namespace MimeTypeArray
  
  public export
  JSType MimeTypeArray where
    parents =  [ Object ]

    mixins =  []
  
  export
  length : (obj : MimeTypeArray) -> JSIO UInt32
  length a = primJS $ MimeTypeArray.prim__length a
  
  export
  item : (obj : MimeTypeArray) -> (index : UInt32) -> JSIO (Nullable Object)
  item a b = primJS $ MimeTypeArray.prim__item a b
  
  export
  namedItem : (obj : MimeTypeArray) -> (name : String) -> JSIO (Nullable Object)
  namedItem a b = primJS $ MimeTypeArray.prim__namedItem a b

namespace Navigator
  
  public export
  JSType Navigator where
    parents =  [ Object ]

    mixins =  [ NavigatorConcurrentHardware
              , NavigatorContentUtils
              , NavigatorCookies
              , NavigatorID
              , NavigatorLanguage
              , NavigatorOnLine
              , NavigatorPlugins
              ]
  
  export
  clipboard : (obj : Navigator) -> JSIO Clipboard
  clipboard a = primJS $ Navigator.prim__clipboard a
  
  export
  mediaDevices : (obj : Navigator) -> JSIO MediaDevices
  mediaDevices a = primJS $ Navigator.prim__mediaDevices a
  
  export
  permissions : (obj : Navigator) -> JSIO Permissions
  permissions a = primJS $ Navigator.prim__permissions a
  
  export
  serviceWorker : (obj : Navigator) -> JSIO ServiceWorkerContainer
  serviceWorker a = primJS $ Navigator.prim__serviceWorker a
  
  export
  getUserMedia :  (obj : Navigator)
               -> (constraints : MediaStreamConstraints)
               -> (successCallback : NavigatorUserMediaSuccessCallback)
               -> (errorCallback : NavigatorUserMediaErrorCallback)
               -> JSIO ()
  getUserMedia a b c d = primJS $ Navigator.prim__getUserMedia a b c d

namespace OffscreenCanvas
  
  public export
  JSType OffscreenCanvas where
    parents =  [ EventTarget , Object ]

    mixins =  []
  
  export
  new : (width : UInt64) -> (height : UInt64) -> JSIO OffscreenCanvas
  new a b = primJS $ OffscreenCanvas.prim__new a b
  
  export
  height : (obj : OffscreenCanvas) -> JSIO UInt64
  height a = primJS $ OffscreenCanvas.prim__height a
  
  export
  setHeight : (obj : OffscreenCanvas) -> (value : UInt64) -> JSIO ()
  setHeight a b = primJS $ OffscreenCanvas.prim__setHeight a b
  
  export
  width : (obj : OffscreenCanvas) -> JSIO UInt64
  width a = primJS $ OffscreenCanvas.prim__width a
  
  export
  setWidth : (obj : OffscreenCanvas) -> (value : UInt64) -> JSIO ()
  setWidth a b = primJS $ OffscreenCanvas.prim__setWidth a b
  
  export
  convertToBlob :  (obj : OffscreenCanvas)
                -> (options : UndefOr ImageEncodeOptions)
                -> JSIO (Promise Blob)
  convertToBlob a b = primJS $ OffscreenCanvas.prim__convertToBlob a b
  
  export
  getContext :  (obj : OffscreenCanvas)
             -> (contextId : OffscreenRenderingContextId)
             -> (options : UndefOr AnyPtr)
             -> JSIO (Nullable OffscreenRenderingContext)
  getContext a b c = primJS $ OffscreenCanvas.prim__getContext a b c
  
  export
  transferToImageBitmap : (obj : OffscreenCanvas) -> JSIO ImageBitmap
  transferToImageBitmap a = primJS $ OffscreenCanvas.prim__transferToImageBitmap a

namespace OffscreenCanvasRenderingContext2D
  
  public export
  JSType OffscreenCanvasRenderingContext2D where
    parents =  [ Object ]

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
  
  export
  canvas : (obj : OffscreenCanvasRenderingContext2D) -> JSIO OffscreenCanvas
  canvas a = primJS $ OffscreenCanvasRenderingContext2D.prim__canvas a
  
  export
  commit : (obj : OffscreenCanvasRenderingContext2D) -> JSIO ()
  commit a = primJS $ OffscreenCanvasRenderingContext2D.prim__commit a

namespace PageTransitionEvent
  
  public export
  JSType PageTransitionEvent where
    parents =  [ Event , Object ]

    mixins =  []
  
  export
  new :  (type : String)
      -> (eventInitDict : UndefOr PageTransitionEventInit)
      -> JSIO PageTransitionEvent
  new a b = primJS $ PageTransitionEvent.prim__new a b
  
  export
  persisted : (obj : PageTransitionEvent) -> JSIO Boolean
  persisted a = primJS $ PageTransitionEvent.prim__persisted a

namespace Path2D
  
  public export
  JSType Path2D where
    parents =  [ Object ]

    mixins =  [ CanvasPath ]
  
  export
  new : (path : UndefOr (Union2 Path2D String)) -> JSIO Path2D
  new a = primJS $ Path2D.prim__new a
  
  export
  addPath :  (obj : Path2D)
          -> (path : Path2D)
          -> (transform : UndefOr DOMMatrix2DInit)
          -> JSIO ()
  addPath a b c = primJS $ Path2D.prim__addPath a b c

namespace Plugin
  
  public export
  JSType Plugin where
    parents =  [ Object ]

    mixins =  []
  
  export
  description : (obj : Plugin) -> JSIO ()
  description a = primJS $ Plugin.prim__description a
  
  export
  filename : (obj : Plugin) -> JSIO ()
  filename a = primJS $ Plugin.prim__filename a
  
  export
  length : (obj : Plugin) -> JSIO ()
  length a = primJS $ Plugin.prim__length a
  
  export
  name : (obj : Plugin) -> JSIO ()
  name a = primJS $ Plugin.prim__name a
  
  export
  item : (obj : Plugin) -> (index : UInt32) -> JSIO ()
  item a b = primJS $ Plugin.prim__item a b
  
  export
  namedItem : (obj : Plugin) -> (name : String) -> JSIO ()
  namedItem a b = primJS $ Plugin.prim__namedItem a b

namespace PluginArray
  
  public export
  JSType PluginArray where
    parents =  [ Object ]

    mixins =  []
  
  export
  length : (obj : PluginArray) -> JSIO UInt32
  length a = primJS $ PluginArray.prim__length a
  
  export
  item : (obj : PluginArray) -> (index : UInt32) -> JSIO (Nullable Object)
  item a b = primJS $ PluginArray.prim__item a b
  
  export
  namedItem : (obj : PluginArray) -> (name : String) -> JSIO (Nullable Object)
  namedItem a b = primJS $ PluginArray.prim__namedItem a b
  
  export
  refresh : (obj : PluginArray) -> JSIO ()
  refresh a = primJS $ PluginArray.prim__refresh a

namespace PopStateEvent
  
  public export
  JSType PopStateEvent where
    parents =  [ Event , Object ]

    mixins =  []
  
  export
  new :  (type : String)
      -> (eventInitDict : UndefOr PopStateEventInit)
      -> JSIO PopStateEvent
  new a b = primJS $ PopStateEvent.prim__new a b
  
  export
  state : (obj : PopStateEvent) -> JSIO AnyPtr
  state a = primJS $ PopStateEvent.prim__state a

namespace PromiseRejectionEvent
  
  public export
  JSType PromiseRejectionEvent where
    parents =  [ Event , Object ]

    mixins =  []
  
  export
  new :  (type : String)
      -> (eventInitDict : PromiseRejectionEventInit)
      -> JSIO PromiseRejectionEvent
  new a b = primJS $ PromiseRejectionEvent.prim__new a b
  
  export
  promise : (obj : PromiseRejectionEvent) -> JSIO (Promise AnyPtr)
  promise a = primJS $ PromiseRejectionEvent.prim__promise a
  
  export
  reason : (obj : PromiseRejectionEvent) -> JSIO AnyPtr
  reason a = primJS $ PromiseRejectionEvent.prim__reason a

namespace RadioNodeList
  
  public export
  JSType RadioNodeList where
    parents =  [ NodeList , Object ]

    mixins =  []
  
  export
  value : (obj : RadioNodeList) -> JSIO String
  value a = primJS $ RadioNodeList.prim__value a
  
  export
  setValue : (obj : RadioNodeList) -> (value : String) -> JSIO ()
  setValue a b = primJS $ RadioNodeList.prim__setValue a b

namespace SharedWorker
  
  public export
  JSType SharedWorker where
    parents =  [ EventTarget , Object ]

    mixins =  [ AbstractWorker ]
  
  export
  new :  (scriptURL : String)
      -> (options : UndefOr (Union2 String WorkerOptions))
      -> JSIO SharedWorker
  new a b = primJS $ SharedWorker.prim__new a b
  
  export
  port : (obj : SharedWorker) -> JSIO MessagePort
  port a = primJS $ SharedWorker.prim__port a

namespace SharedWorkerGlobalScope
  
  public export
  JSType SharedWorkerGlobalScope where
    parents =  [ WorkerGlobalScope , EventTarget , Object ]

    mixins =  []
  
  export
  name : (obj : SharedWorkerGlobalScope) -> JSIO String
  name a = primJS $ SharedWorkerGlobalScope.prim__name a
  
  export
  onconnect : (obj : SharedWorkerGlobalScope) -> JSIO EventHandler
  onconnect a = primJS $ SharedWorkerGlobalScope.prim__onconnect a
  
  export
  setOnconnect :  (obj : SharedWorkerGlobalScope)
               -> (value : EventHandler)
               -> JSIO ()
  setOnconnect a b = primJS $ SharedWorkerGlobalScope.prim__setOnconnect a b
  
  export
  close : (obj : SharedWorkerGlobalScope) -> JSIO ()
  close a = primJS $ SharedWorkerGlobalScope.prim__close a

namespace Storage
  
  public export
  JSType Storage where
    parents =  [ Object ]

    mixins =  []
  
  export
  length : (obj : Storage) -> JSIO UInt32
  length a = primJS $ Storage.prim__length a
  
  export
  clear : (obj : Storage) -> JSIO ()
  clear a = primJS $ Storage.prim__clear a
  
  export
  getItem : (obj : Storage) -> (key : String) -> JSIO (Nullable String)
  getItem a b = primJS $ Storage.prim__getItem a b
  
  export
  key : (obj : Storage) -> (index : UInt32) -> JSIO (Nullable String)
  key a b = primJS $ Storage.prim__key a b
  
  export
  setItem : (obj : Storage) -> (key : String) -> (value : String) -> JSIO ()
  setItem a b c = primJS $ Storage.prim__setItem a b c

namespace StorageEvent
  
  public export
  JSType StorageEvent where
    parents =  [ Event , Object ]

    mixins =  []
  
  export
  new :  (type : String)
      -> (eventInitDict : UndefOr StorageEventInit)
      -> JSIO StorageEvent
  new a b = primJS $ StorageEvent.prim__new a b
  
  export
  key : (obj : StorageEvent) -> JSIO (Nullable String)
  key a = primJS $ StorageEvent.prim__key a
  
  export
  newValue : (obj : StorageEvent) -> JSIO (Nullable String)
  newValue a = primJS $ StorageEvent.prim__newValue a
  
  export
  oldValue : (obj : StorageEvent) -> JSIO (Nullable String)
  oldValue a = primJS $ StorageEvent.prim__oldValue a
  
  export
  storageArea : (obj : StorageEvent) -> JSIO (Nullable Storage)
  storageArea a = primJS $ StorageEvent.prim__storageArea a
  
  export
  url : (obj : StorageEvent) -> JSIO String
  url a = primJS $ StorageEvent.prim__url a
  
  export
  initStorageEvent :  (obj : StorageEvent)
                   -> (type : String)
                   -> (bubbles : UndefOr Boolean)
                   -> (cancelable : UndefOr Boolean)
                   -> (key : UndefOr (Nullable String))
                   -> (oldValue : UndefOr (Nullable String))
                   -> (newValue : UndefOr (Nullable String))
                   -> (url : UndefOr String)
                   -> (storageArea : UndefOr (Nullable Storage))
                   -> JSIO ()
  initStorageEvent a b c d e f g h i = primJS $ StorageEvent.prim__initStorageEvent a
                                                                                    b
                                                                                    c
                                                                                    d
                                                                                    e
                                                                                    f
                                                                                    g
                                                                                    h
                                                                                    i

namespace SubmitEvent
  
  public export
  JSType SubmitEvent where
    parents =  [ Event , Object ]

    mixins =  []
  
  export
  new :  (type : String)
      -> (eventInitDict : UndefOr SubmitEventInit)
      -> JSIO SubmitEvent
  new a b = primJS $ SubmitEvent.prim__new a b
  
  export
  submitter : (obj : SubmitEvent) -> JSIO (Nullable HTMLElement)
  submitter a = primJS $ SubmitEvent.prim__submitter a

namespace TextMetrics
  
  public export
  JSType TextMetrics where
    parents =  [ Object ]

    mixins =  []
  
  export
  actualBoundingBoxAscent : (obj : TextMetrics) -> JSIO Double
  actualBoundingBoxAscent a = primJS $ TextMetrics.prim__actualBoundingBoxAscent a
  
  export
  actualBoundingBoxDescent : (obj : TextMetrics) -> JSIO Double
  actualBoundingBoxDescent a = primJS $ TextMetrics.prim__actualBoundingBoxDescent a
  
  export
  actualBoundingBoxLeft : (obj : TextMetrics) -> JSIO Double
  actualBoundingBoxLeft a = primJS $ TextMetrics.prim__actualBoundingBoxLeft a
  
  export
  actualBoundingBoxRight : (obj : TextMetrics) -> JSIO Double
  actualBoundingBoxRight a = primJS $ TextMetrics.prim__actualBoundingBoxRight a
  
  export
  alphabeticBaseline : (obj : TextMetrics) -> JSIO Double
  alphabeticBaseline a = primJS $ TextMetrics.prim__alphabeticBaseline a
  
  export
  emHeightAscent : (obj : TextMetrics) -> JSIO Double
  emHeightAscent a = primJS $ TextMetrics.prim__emHeightAscent a
  
  export
  emHeightDescent : (obj : TextMetrics) -> JSIO Double
  emHeightDescent a = primJS $ TextMetrics.prim__emHeightDescent a
  
  export
  fontBoundingBoxAscent : (obj : TextMetrics) -> JSIO Double
  fontBoundingBoxAscent a = primJS $ TextMetrics.prim__fontBoundingBoxAscent a
  
  export
  fontBoundingBoxDescent : (obj : TextMetrics) -> JSIO Double
  fontBoundingBoxDescent a = primJS $ TextMetrics.prim__fontBoundingBoxDescent a
  
  export
  hangingBaseline : (obj : TextMetrics) -> JSIO Double
  hangingBaseline a = primJS $ TextMetrics.prim__hangingBaseline a
  
  export
  ideographicBaseline : (obj : TextMetrics) -> JSIO Double
  ideographicBaseline a = primJS $ TextMetrics.prim__ideographicBaseline a
  
  export
  width : (obj : TextMetrics) -> JSIO Double
  width a = primJS $ TextMetrics.prim__width a

namespace TextTrack
  
  public export
  JSType TextTrack where
    parents =  [ EventTarget , Object ]

    mixins =  []
  
  export
  activeCues : (obj : TextTrack) -> JSIO (Nullable TextTrackCueList)
  activeCues a = primJS $ TextTrack.prim__activeCues a
  
  export
  cues : (obj : TextTrack) -> JSIO (Nullable TextTrackCueList)
  cues a = primJS $ TextTrack.prim__cues a
  
  export
  id : (obj : TextTrack) -> JSIO String
  id a = primJS $ TextTrack.prim__id a
  
  export
  inBandMetadataTrackDispatchType : (obj : TextTrack) -> JSIO String
  inBandMetadataTrackDispatchType a = primJS $ TextTrack.prim__inBandMetadataTrackDispatchType a
  
  export
  kind : (obj : TextTrack) -> JSIO TextTrackKind
  kind a = primJS $ TextTrack.prim__kind a
  
  export
  label : (obj : TextTrack) -> JSIO String
  label a = primJS $ TextTrack.prim__label a
  
  export
  language : (obj : TextTrack) -> JSIO String
  language a = primJS $ TextTrack.prim__language a
  
  export
  mode : (obj : TextTrack) -> JSIO TextTrackMode
  mode a = primJS $ TextTrack.prim__mode a
  
  export
  setMode : (obj : TextTrack) -> (value : TextTrackMode) -> JSIO ()
  setMode a b = primJS $ TextTrack.prim__setMode a b
  
  export
  oncuechange : (obj : TextTrack) -> JSIO EventHandler
  oncuechange a = primJS $ TextTrack.prim__oncuechange a
  
  export
  setOncuechange : (obj : TextTrack) -> (value : EventHandler) -> JSIO ()
  setOncuechange a b = primJS $ TextTrack.prim__setOncuechange a b
  
  export
  sourceBuffer : (obj : TextTrack) -> JSIO (Nullable SourceBuffer)
  sourceBuffer a = primJS $ TextTrack.prim__sourceBuffer a
  
  export
  addCue : (obj : TextTrack) -> (cue : TextTrackCue) -> JSIO ()
  addCue a b = primJS $ TextTrack.prim__addCue a b
  
  export
  removeCue : (obj : TextTrack) -> (cue : TextTrackCue) -> JSIO ()
  removeCue a b = primJS $ TextTrack.prim__removeCue a b

namespace TextTrackCue
  
  public export
  JSType TextTrackCue where
    parents =  [ EventTarget , Object ]

    mixins =  []
  
  export
  endTime : (obj : TextTrackCue) -> JSIO Double
  endTime a = primJS $ TextTrackCue.prim__endTime a
  
  export
  setEndTime : (obj : TextTrackCue) -> (value : Double) -> JSIO ()
  setEndTime a b = primJS $ TextTrackCue.prim__setEndTime a b
  
  export
  id : (obj : TextTrackCue) -> JSIO String
  id a = primJS $ TextTrackCue.prim__id a
  
  export
  setId : (obj : TextTrackCue) -> (value : String) -> JSIO ()
  setId a b = primJS $ TextTrackCue.prim__setId a b
  
  export
  onenter : (obj : TextTrackCue) -> JSIO EventHandler
  onenter a = primJS $ TextTrackCue.prim__onenter a
  
  export
  setOnenter : (obj : TextTrackCue) -> (value : EventHandler) -> JSIO ()
  setOnenter a b = primJS $ TextTrackCue.prim__setOnenter a b
  
  export
  onexit : (obj : TextTrackCue) -> JSIO EventHandler
  onexit a = primJS $ TextTrackCue.prim__onexit a
  
  export
  setOnexit : (obj : TextTrackCue) -> (value : EventHandler) -> JSIO ()
  setOnexit a b = primJS $ TextTrackCue.prim__setOnexit a b
  
  export
  pauseOnExit : (obj : TextTrackCue) -> JSIO Boolean
  pauseOnExit a = primJS $ TextTrackCue.prim__pauseOnExit a
  
  export
  setPauseOnExit : (obj : TextTrackCue) -> (value : Boolean) -> JSIO ()
  setPauseOnExit a b = primJS $ TextTrackCue.prim__setPauseOnExit a b
  
  export
  startTime : (obj : TextTrackCue) -> JSIO Double
  startTime a = primJS $ TextTrackCue.prim__startTime a
  
  export
  setStartTime : (obj : TextTrackCue) -> (value : Double) -> JSIO ()
  setStartTime a b = primJS $ TextTrackCue.prim__setStartTime a b
  
  export
  track : (obj : TextTrackCue) -> JSIO (Nullable TextTrack)
  track a = primJS $ TextTrackCue.prim__track a

namespace TextTrackCueList
  
  public export
  JSType TextTrackCueList where
    parents =  [ Object ]

    mixins =  []
  
  export
  get : (obj : TextTrackCueList) -> (index : UInt32) -> JSIO TextTrackCue
  get a b = primJS $ TextTrackCueList.prim__get a b
  
  export
  length : (obj : TextTrackCueList) -> JSIO UInt32
  length a = primJS $ TextTrackCueList.prim__length a
  
  export
  getCueById :  (obj : TextTrackCueList)
             -> (id : String)
             -> JSIO (Nullable TextTrackCue)
  getCueById a b = primJS $ TextTrackCueList.prim__getCueById a b

namespace TextTrackList
  
  public export
  JSType TextTrackList where
    parents =  [ EventTarget , Object ]

    mixins =  []
  
  export
  get : (obj : TextTrackList) -> (index : UInt32) -> JSIO TextTrack
  get a b = primJS $ TextTrackList.prim__get a b
  
  export
  length : (obj : TextTrackList) -> JSIO UInt32
  length a = primJS $ TextTrackList.prim__length a
  
  export
  onaddtrack : (obj : TextTrackList) -> JSIO EventHandler
  onaddtrack a = primJS $ TextTrackList.prim__onaddtrack a
  
  export
  setOnaddtrack : (obj : TextTrackList) -> (value : EventHandler) -> JSIO ()
  setOnaddtrack a b = primJS $ TextTrackList.prim__setOnaddtrack a b
  
  export
  onchange : (obj : TextTrackList) -> JSIO EventHandler
  onchange a = primJS $ TextTrackList.prim__onchange a
  
  export
  setOnchange : (obj : TextTrackList) -> (value : EventHandler) -> JSIO ()
  setOnchange a b = primJS $ TextTrackList.prim__setOnchange a b
  
  export
  onremovetrack : (obj : TextTrackList) -> JSIO EventHandler
  onremovetrack a = primJS $ TextTrackList.prim__onremovetrack a
  
  export
  setOnremovetrack : (obj : TextTrackList) -> (value : EventHandler) -> JSIO ()
  setOnremovetrack a b = primJS $ TextTrackList.prim__setOnremovetrack a b
  
  export
  getTrackById :  (obj : TextTrackList)
               -> (id : String)
               -> JSIO (Nullable TextTrack)
  getTrackById a b = primJS $ TextTrackList.prim__getTrackById a b

namespace TimeRanges
  
  public export
  JSType TimeRanges where
    parents =  [ Object ]

    mixins =  []
  
  export
  length : (obj : TimeRanges) -> JSIO UInt32
  length a = primJS $ TimeRanges.prim__length a
  
  export
  end : (obj : TimeRanges) -> (index : UInt32) -> JSIO Double
  end a b = primJS $ TimeRanges.prim__end a b
  
  export
  start : (obj : TimeRanges) -> (index : UInt32) -> JSIO Double
  start a b = primJS $ TimeRanges.prim__start a b

namespace TrackEvent
  
  public export
  JSType TrackEvent where
    parents =  [ Event , Object ]

    mixins =  []
  
  export
  new :  (type : String)
      -> (eventInitDict : UndefOr TrackEventInit)
      -> JSIO TrackEvent
  new a b = primJS $ TrackEvent.prim__new a b
  
  export
  track :  (obj : TrackEvent)
        -> JSIO (Nullable (Union3 VideoTrack AudioTrack TextTrack))
  track a = primJS $ TrackEvent.prim__track a

namespace ValidityState
  
  public export
  JSType ValidityState where
    parents =  [ Object ]

    mixins =  []
  
  export
  badInput : (obj : ValidityState) -> JSIO Boolean
  badInput a = primJS $ ValidityState.prim__badInput a
  
  export
  customError : (obj : ValidityState) -> JSIO Boolean
  customError a = primJS $ ValidityState.prim__customError a
  
  export
  patternMismatch : (obj : ValidityState) -> JSIO Boolean
  patternMismatch a = primJS $ ValidityState.prim__patternMismatch a
  
  export
  rangeOverflow : (obj : ValidityState) -> JSIO Boolean
  rangeOverflow a = primJS $ ValidityState.prim__rangeOverflow a
  
  export
  rangeUnderflow : (obj : ValidityState) -> JSIO Boolean
  rangeUnderflow a = primJS $ ValidityState.prim__rangeUnderflow a
  
  export
  stepMismatch : (obj : ValidityState) -> JSIO Boolean
  stepMismatch a = primJS $ ValidityState.prim__stepMismatch a
  
  export
  tooLong : (obj : ValidityState) -> JSIO Boolean
  tooLong a = primJS $ ValidityState.prim__tooLong a
  
  export
  tooShort : (obj : ValidityState) -> JSIO Boolean
  tooShort a = primJS $ ValidityState.prim__tooShort a
  
  export
  typeMismatch : (obj : ValidityState) -> JSIO Boolean
  typeMismatch a = primJS $ ValidityState.prim__typeMismatch a
  
  export
  valid : (obj : ValidityState) -> JSIO Boolean
  valid a = primJS $ ValidityState.prim__valid a
  
  export
  valueMissing : (obj : ValidityState) -> JSIO Boolean
  valueMissing a = primJS $ ValidityState.prim__valueMissing a

namespace VideoTrack
  
  public export
  JSType VideoTrack where
    parents =  [ Object ]

    mixins =  []
  
  export
  id : (obj : VideoTrack) -> JSIO String
  id a = primJS $ VideoTrack.prim__id a
  
  export
  kind : (obj : VideoTrack) -> JSIO String
  kind a = primJS $ VideoTrack.prim__kind a
  
  export
  label : (obj : VideoTrack) -> JSIO String
  label a = primJS $ VideoTrack.prim__label a
  
  export
  language : (obj : VideoTrack) -> JSIO String
  language a = primJS $ VideoTrack.prim__language a
  
  export
  selected : (obj : VideoTrack) -> JSIO Boolean
  selected a = primJS $ VideoTrack.prim__selected a
  
  export
  setSelected : (obj : VideoTrack) -> (value : Boolean) -> JSIO ()
  setSelected a b = primJS $ VideoTrack.prim__setSelected a b
  
  export
  sourceBuffer : (obj : VideoTrack) -> JSIO (Nullable SourceBuffer)
  sourceBuffer a = primJS $ VideoTrack.prim__sourceBuffer a

namespace VideoTrackList
  
  public export
  JSType VideoTrackList where
    parents =  [ EventTarget , Object ]

    mixins =  []
  
  export
  get : (obj : VideoTrackList) -> (index : UInt32) -> JSIO VideoTrack
  get a b = primJS $ VideoTrackList.prim__get a b
  
  export
  length : (obj : VideoTrackList) -> JSIO UInt32
  length a = primJS $ VideoTrackList.prim__length a
  
  export
  onaddtrack : (obj : VideoTrackList) -> JSIO EventHandler
  onaddtrack a = primJS $ VideoTrackList.prim__onaddtrack a
  
  export
  setOnaddtrack : (obj : VideoTrackList) -> (value : EventHandler) -> JSIO ()
  setOnaddtrack a b = primJS $ VideoTrackList.prim__setOnaddtrack a b
  
  export
  onchange : (obj : VideoTrackList) -> JSIO EventHandler
  onchange a = primJS $ VideoTrackList.prim__onchange a
  
  export
  setOnchange : (obj : VideoTrackList) -> (value : EventHandler) -> JSIO ()
  setOnchange a b = primJS $ VideoTrackList.prim__setOnchange a b
  
  export
  onremovetrack : (obj : VideoTrackList) -> JSIO EventHandler
  onremovetrack a = primJS $ VideoTrackList.prim__onremovetrack a
  
  export
  setOnremovetrack : (obj : VideoTrackList) -> (value : EventHandler) -> JSIO ()
  setOnremovetrack a b = primJS $ VideoTrackList.prim__setOnremovetrack a b
  
  export
  selectedIndex : (obj : VideoTrackList) -> JSIO Int32
  selectedIndex a = primJS $ VideoTrackList.prim__selectedIndex a
  
  export
  getTrackById :  (obj : VideoTrackList)
               -> (id : String)
               -> JSIO (Nullable VideoTrack)
  getTrackById a b = primJS $ VideoTrackList.prim__getTrackById a b

namespace WebSocket
  
  public export
  JSType WebSocket where
    parents =  [ EventTarget , Object ]

    mixins =  []
  
  public export
  CLOSED : UInt16
  CLOSED = 3
  
  public export
  CLOSING : UInt16
  CLOSING = 2
  
  public export
  CONNECTING : UInt16
  CONNECTING = 0
  
  public export
  OPEN : UInt16
  OPEN = 1
  
  export
  new :  (url : String)
      -> (protocols : UndefOr (Union2 String (Array String)))
      -> JSIO WebSocket
  new a b = primJS $ WebSocket.prim__new a b
  
  export
  binaryType : (obj : WebSocket) -> JSIO BinaryType
  binaryType a = primJS $ WebSocket.prim__binaryType a
  
  export
  setBinaryType : (obj : WebSocket) -> (value : BinaryType) -> JSIO ()
  setBinaryType a b = primJS $ WebSocket.prim__setBinaryType a b
  
  export
  bufferedAmount : (obj : WebSocket) -> JSIO UInt64
  bufferedAmount a = primJS $ WebSocket.prim__bufferedAmount a
  
  export
  extensions : (obj : WebSocket) -> JSIO String
  extensions a = primJS $ WebSocket.prim__extensions a
  
  export
  onclose : (obj : WebSocket) -> JSIO EventHandler
  onclose a = primJS $ WebSocket.prim__onclose a
  
  export
  setOnclose : (obj : WebSocket) -> (value : EventHandler) -> JSIO ()
  setOnclose a b = primJS $ WebSocket.prim__setOnclose a b
  
  export
  onerror : (obj : WebSocket) -> JSIO EventHandler
  onerror a = primJS $ WebSocket.prim__onerror a
  
  export
  setOnerror : (obj : WebSocket) -> (value : EventHandler) -> JSIO ()
  setOnerror a b = primJS $ WebSocket.prim__setOnerror a b
  
  export
  onmessage : (obj : WebSocket) -> JSIO EventHandler
  onmessage a = primJS $ WebSocket.prim__onmessage a
  
  export
  setOnmessage : (obj : WebSocket) -> (value : EventHandler) -> JSIO ()
  setOnmessage a b = primJS $ WebSocket.prim__setOnmessage a b
  
  export
  onopen : (obj : WebSocket) -> JSIO EventHandler
  onopen a = primJS $ WebSocket.prim__onopen a
  
  export
  setOnopen : (obj : WebSocket) -> (value : EventHandler) -> JSIO ()
  setOnopen a b = primJS $ WebSocket.prim__setOnopen a b
  
  export
  protocol : (obj : WebSocket) -> JSIO String
  protocol a = primJS $ WebSocket.prim__protocol a
  
  export
  readyState : (obj : WebSocket) -> JSIO UInt16
  readyState a = primJS $ WebSocket.prim__readyState a
  
  export
  url : (obj : WebSocket) -> JSIO String
  url a = primJS $ WebSocket.prim__url a
  
  export
  close :  (obj : WebSocket)
        -> (code : UndefOr UInt16)
        -> (reason : UndefOr String)
        -> JSIO ()
  close a b c = primJS $ WebSocket.prim__close a b c
  
  export
  send : (obj : WebSocket) -> (data_ : String) -> JSIO ()
  send a b = primJS $ WebSocket.prim__send a b
  
  export
  send1 : (obj : WebSocket) -> (data_ : Blob) -> JSIO ()
  send1 a b = primJS $ WebSocket.prim__send1 a b
  
  export
  send2 : (obj : WebSocket) -> (data_ : ArrayBuffer) -> JSIO ()
  send2 a b = primJS $ WebSocket.prim__send2 a b
  
  export
  send3 : (obj : WebSocket) -> (data_ : ArrayBufferView) -> JSIO ()
  send3 a b = primJS $ WebSocket.prim__send3 a b

namespace Window
  
  public export
  JSType Window where
    parents =  [ EventTarget , Object ]

    mixins =  [ GlobalEventHandlers , WindowEventHandlers ]
  
  export
  get : (obj : Window) -> (name : String) -> JSIO Object
  get a b = primJS $ Window.prim__get a b
  
  export
  closed : (obj : Window) -> JSIO Boolean
  closed a = primJS $ Window.prim__closed a
  
  export
  customElements : (obj : Window) -> JSIO CustomElementRegistry
  customElements a = primJS $ Window.prim__customElements a
  
  export
  document : (obj : Window) -> JSIO Document
  document a = primJS $ Window.prim__document a
  
  export
  event : (obj : Window) -> JSIO (Union2 Event Undefined)
  event a = primJS $ Window.prim__event a
  
  export
  external : (obj : Window) -> JSIO External
  external a = primJS $ Window.prim__external a
  
  export
  frameElement : (obj : Window) -> JSIO (Nullable Element)
  frameElement a = primJS $ Window.prim__frameElement a
  
  export
  frames : (obj : Window) -> JSIO WindowProxy
  frames a = primJS $ Window.prim__frames a
  
  export
  history : (obj : Window) -> JSIO History
  history a = primJS $ Window.prim__history a
  
  export
  length : (obj : Window) -> JSIO UInt32
  length a = primJS $ Window.prim__length a
  
  export
  location : (obj : Window) -> JSIO Location
  location a = primJS $ Window.prim__location a
  
  export
  locationbar : (obj : Window) -> JSIO BarProp
  locationbar a = primJS $ Window.prim__locationbar a
  
  export
  menubar : (obj : Window) -> JSIO BarProp
  menubar a = primJS $ Window.prim__menubar a
  
  export
  name : (obj : Window) -> JSIO String
  name a = primJS $ Window.prim__name a
  
  export
  setName : (obj : Window) -> (value : String) -> JSIO ()
  setName a b = primJS $ Window.prim__setName a b
  
  export
  navigator : (obj : Window) -> JSIO Navigator
  navigator a = primJS $ Window.prim__navigator a
  
  export
  opener : (obj : Window) -> JSIO AnyPtr
  opener a = primJS $ Window.prim__opener a
  
  export
  setOpener : (obj : Window) -> (value : AnyPtr) -> JSIO ()
  setOpener a b = primJS $ Window.prim__setOpener a b
  
  export
  originAgentCluster : (obj : Window) -> JSIO Boolean
  originAgentCluster a = primJS $ Window.prim__originAgentCluster a
  
  export
  parent : (obj : Window) -> JSIO (Nullable WindowProxy)
  parent a = primJS $ Window.prim__parent a
  
  export
  personalbar : (obj : Window) -> JSIO BarProp
  personalbar a = primJS $ Window.prim__personalbar a
  
  export
  scrollbars : (obj : Window) -> JSIO BarProp
  scrollbars a = primJS $ Window.prim__scrollbars a
  
  export
  self : (obj : Window) -> JSIO WindowProxy
  self a = primJS $ Window.prim__self a
  
  export
  status : (obj : Window) -> JSIO String
  status a = primJS $ Window.prim__status a
  
  export
  setStatus : (obj : Window) -> (value : String) -> JSIO ()
  setStatus a b = primJS $ Window.prim__setStatus a b
  
  export
  statusbar : (obj : Window) -> JSIO BarProp
  statusbar a = primJS $ Window.prim__statusbar a
  
  export
  toolbar : (obj : Window) -> JSIO BarProp
  toolbar a = primJS $ Window.prim__toolbar a
  
  export
  top : (obj : Window) -> JSIO (Nullable WindowProxy)
  top a = primJS $ Window.prim__top a
  
  export
  window : (obj : Window) -> JSIO WindowProxy
  window a = primJS $ Window.prim__window a
  
  export
  alert : (obj : Window) -> JSIO ()
  alert a = primJS $ Window.prim__alert a
  
  export
  alert1 : (obj : Window) -> (message : String) -> JSIO ()
  alert1 a b = primJS $ Window.prim__alert1 a b
  
  export
  blur : (obj : Window) -> JSIO ()
  blur a = primJS $ Window.prim__blur a
  
  export
  captureEvents : (obj : Window) -> JSIO ()
  captureEvents a = primJS $ Window.prim__captureEvents a
  
  export
  close : (obj : Window) -> JSIO ()
  close a = primJS $ Window.prim__close a
  
  export
  confirm : (obj : Window) -> (message : UndefOr String) -> JSIO Boolean
  confirm a b = primJS $ Window.prim__confirm a b
  
  export
  focus : (obj : Window) -> JSIO ()
  focus a = primJS $ Window.prim__focus a
  
  export
  getComputedStyle :  (obj : Window)
                   -> (elt : Element)
                   -> (pseudoElt : UndefOr (Nullable CSSOMString))
                   -> JSIO CSSStyleDeclaration
  getComputedStyle a b c = primJS $ Window.prim__getComputedStyle a b c
  
  export
  open_ :  (obj : Window)
        -> (url : UndefOr String)
        -> (target : UndefOr String)
        -> (features : UndefOr String)
        -> JSIO (Nullable WindowProxy)
  open_ a b c d = primJS $ Window.prim__open a b c d
  
  export
  postMessage :  (obj : Window)
              -> (message : AnyPtr)
              -> (targetOrigin : String)
              -> (transfer : UndefOr (Array Object))
              -> JSIO ()
  postMessage a b c d = primJS $ Window.prim__postMessage a b c d
  
  export
  postMessage1 :  (obj : Window)
               -> (message : AnyPtr)
               -> (options : UndefOr WindowPostMessageOptions)
               -> JSIO ()
  postMessage1 a b c = primJS $ Window.prim__postMessage1 a b c
  
  export
  print : (obj : Window) -> JSIO ()
  print a = primJS $ Window.prim__print a
  
  export
  prompt :  (obj : Window)
         -> (message : UndefOr String)
         -> (default_ : UndefOr String)
         -> JSIO (Nullable String)
  prompt a b c = primJS $ Window.prim__prompt a b c
  
  export
  releaseEvents : (obj : Window) -> JSIO ()
  releaseEvents a = primJS $ Window.prim__releaseEvents a
  
  export
  stop : (obj : Window) -> JSIO ()
  stop a = primJS $ Window.prim__stop a

namespace Worker
  
  public export
  JSType Worker where
    parents =  [ EventTarget , Object ]

    mixins =  [ AbstractWorker ]
  
  export
  new : (scriptURL : String) -> (options : UndefOr WorkerOptions) -> JSIO Worker
  new a b = primJS $ Worker.prim__new a b
  
  export
  onmessage : (obj : Worker) -> JSIO EventHandler
  onmessage a = primJS $ Worker.prim__onmessage a
  
  export
  setOnmessage : (obj : Worker) -> (value : EventHandler) -> JSIO ()
  setOnmessage a b = primJS $ Worker.prim__setOnmessage a b
  
  export
  onmessageerror : (obj : Worker) -> JSIO EventHandler
  onmessageerror a = primJS $ Worker.prim__onmessageerror a
  
  export
  setOnmessageerror : (obj : Worker) -> (value : EventHandler) -> JSIO ()
  setOnmessageerror a b = primJS $ Worker.prim__setOnmessageerror a b
  
  export
  postMessage :  (obj : Worker)
              -> (message : AnyPtr)
              -> (transfer : Array Object)
              -> JSIO ()
  postMessage a b c = primJS $ Worker.prim__postMessage a b c
  
  export
  postMessage1 :  (obj : Worker)
               -> (message : AnyPtr)
               -> (options : UndefOr PostMessageOptions)
               -> JSIO ()
  postMessage1 a b c = primJS $ Worker.prim__postMessage1 a b c
  
  export
  terminate : (obj : Worker) -> JSIO ()
  terminate a = primJS $ Worker.prim__terminate a

namespace WorkerGlobalScope
  
  public export
  JSType WorkerGlobalScope where
    parents =  [ EventTarget , Object ]

    mixins =  []
  
  export
  location : (obj : WorkerGlobalScope) -> JSIO WorkerLocation
  location a = primJS $ WorkerGlobalScope.prim__location a
  
  export
  navigator : (obj : WorkerGlobalScope) -> JSIO WorkerNavigator
  navigator a = primJS $ WorkerGlobalScope.prim__navigator a
  
  export
  onerror : (obj : WorkerGlobalScope) -> JSIO OnErrorEventHandler
  onerror a = primJS $ WorkerGlobalScope.prim__onerror a
  
  export
  setOnerror :  (obj : WorkerGlobalScope)
             -> (value : OnErrorEventHandler)
             -> JSIO ()
  setOnerror a b = primJS $ WorkerGlobalScope.prim__setOnerror a b
  
  export
  onlanguagechange : (obj : WorkerGlobalScope) -> JSIO EventHandler
  onlanguagechange a = primJS $ WorkerGlobalScope.prim__onlanguagechange a
  
  export
  setOnlanguagechange :  (obj : WorkerGlobalScope)
                      -> (value : EventHandler)
                      -> JSIO ()
  setOnlanguagechange a b = primJS $ WorkerGlobalScope.prim__setOnlanguagechange a
                                                                                 b
  
  export
  onoffline : (obj : WorkerGlobalScope) -> JSIO EventHandler
  onoffline a = primJS $ WorkerGlobalScope.prim__onoffline a
  
  export
  setOnoffline : (obj : WorkerGlobalScope) -> (value : EventHandler) -> JSIO ()
  setOnoffline a b = primJS $ WorkerGlobalScope.prim__setOnoffline a b
  
  export
  ononline : (obj : WorkerGlobalScope) -> JSIO EventHandler
  ononline a = primJS $ WorkerGlobalScope.prim__ononline a
  
  export
  setOnonline : (obj : WorkerGlobalScope) -> (value : EventHandler) -> JSIO ()
  setOnonline a b = primJS $ WorkerGlobalScope.prim__setOnonline a b
  
  export
  onrejectionhandled : (obj : WorkerGlobalScope) -> JSIO EventHandler
  onrejectionhandled a = primJS $ WorkerGlobalScope.prim__onrejectionhandled a
  
  export
  setOnrejectionhandled :  (obj : WorkerGlobalScope)
                        -> (value : EventHandler)
                        -> JSIO ()
  setOnrejectionhandled a b = primJS $ WorkerGlobalScope.prim__setOnrejectionhandled a
                                                                                     b
  
  export
  onunhandledrejection : (obj : WorkerGlobalScope) -> JSIO EventHandler
  onunhandledrejection a = primJS $ WorkerGlobalScope.prim__onunhandledrejection a
  
  export
  setOnunhandledrejection :  (obj : WorkerGlobalScope)
                          -> (value : EventHandler)
                          -> JSIO ()
  setOnunhandledrejection a b = primJS $ WorkerGlobalScope.prim__setOnunhandledrejection a
                                                                                         b
  
  export
  self : (obj : WorkerGlobalScope) -> JSIO WorkerGlobalScope
  self a = primJS $ WorkerGlobalScope.prim__self a
  
  export
  importScripts : (obj : WorkerGlobalScope) -> (urls : VarArg String) -> JSIO ()
  importScripts a b = primJS $ WorkerGlobalScope.prim__importScripts a b

namespace WorkerLocation
  
  public export
  JSType WorkerLocation where
    parents =  [ Object ]

    mixins =  []
  
  export
  hash : (obj : WorkerLocation) -> JSIO String
  hash a = primJS $ WorkerLocation.prim__hash a
  
  export
  host : (obj : WorkerLocation) -> JSIO String
  host a = primJS $ WorkerLocation.prim__host a
  
  export
  hostname : (obj : WorkerLocation) -> JSIO String
  hostname a = primJS $ WorkerLocation.prim__hostname a
  
  export
  origin : (obj : WorkerLocation) -> JSIO String
  origin a = primJS $ WorkerLocation.prim__origin a
  
  export
  pathname : (obj : WorkerLocation) -> JSIO String
  pathname a = primJS $ WorkerLocation.prim__pathname a
  
  export
  port : (obj : WorkerLocation) -> JSIO String
  port a = primJS $ WorkerLocation.prim__port a
  
  export
  protocol : (obj : WorkerLocation) -> JSIO String
  protocol a = primJS $ WorkerLocation.prim__protocol a
  
  export
  search : (obj : WorkerLocation) -> JSIO String
  search a = primJS $ WorkerLocation.prim__search a

namespace WorkerNavigator
  
  public export
  JSType WorkerNavigator where
    parents =  [ Object ]

    mixins =  [ NavigatorConcurrentHardware
              , NavigatorID
              , NavigatorLanguage
              , NavigatorOnLine
              ]
  
  export
  permissions : (obj : WorkerNavigator) -> JSIO Permissions
  permissions a = primJS $ WorkerNavigator.prim__permissions a
  
  export
  serviceWorker : (obj : WorkerNavigator) -> JSIO ServiceWorkerContainer
  serviceWorker a = primJS $ WorkerNavigator.prim__serviceWorker a

namespace Worklet
  
  public export
  JSType Worklet where
    parents =  [ Object ]

    mixins =  []
  
  export
  addModule :  (obj : Worklet)
            -> (moduleURL : String)
            -> (options : UndefOr WorkletOptions)
            -> JSIO (Promise Undefined)
  addModule a b c = primJS $ Worklet.prim__addModule a b c

namespace WorkletGlobalScope
  
  public export
  JSType WorkletGlobalScope where
    parents =  [ Object ]

    mixins =  []

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace ARIAMixin
  
  export
  ariaAtomic : (obj : ARIAMixin) -> JSIO String
  ariaAtomic a = primJS $ ARIAMixin.prim__ariaAtomic a
  
  export
  setAriaAtomic : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaAtomic a b = primJS $ ARIAMixin.prim__setAriaAtomic a b
  
  export
  ariaAutoComplete : (obj : ARIAMixin) -> JSIO String
  ariaAutoComplete a = primJS $ ARIAMixin.prim__ariaAutoComplete a
  
  export
  setAriaAutoComplete : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaAutoComplete a b = primJS $ ARIAMixin.prim__setAriaAutoComplete a b
  
  export
  ariaBusy : (obj : ARIAMixin) -> JSIO String
  ariaBusy a = primJS $ ARIAMixin.prim__ariaBusy a
  
  export
  setAriaBusy : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaBusy a b = primJS $ ARIAMixin.prim__setAriaBusy a b
  
  export
  ariaChecked : (obj : ARIAMixin) -> JSIO String
  ariaChecked a = primJS $ ARIAMixin.prim__ariaChecked a
  
  export
  setAriaChecked : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaChecked a b = primJS $ ARIAMixin.prim__setAriaChecked a b
  
  export
  ariaColCount : (obj : ARIAMixin) -> JSIO String
  ariaColCount a = primJS $ ARIAMixin.prim__ariaColCount a
  
  export
  setAriaColCount : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaColCount a b = primJS $ ARIAMixin.prim__setAriaColCount a b
  
  export
  ariaColIndex : (obj : ARIAMixin) -> JSIO String
  ariaColIndex a = primJS $ ARIAMixin.prim__ariaColIndex a
  
  export
  setAriaColIndex : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaColIndex a b = primJS $ ARIAMixin.prim__setAriaColIndex a b
  
  export
  ariaColIndexText : (obj : ARIAMixin) -> JSIO String
  ariaColIndexText a = primJS $ ARIAMixin.prim__ariaColIndexText a
  
  export
  setAriaColIndexText : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaColIndexText a b = primJS $ ARIAMixin.prim__setAriaColIndexText a b
  
  export
  ariaColSpan : (obj : ARIAMixin) -> JSIO String
  ariaColSpan a = primJS $ ARIAMixin.prim__ariaColSpan a
  
  export
  setAriaColSpan : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaColSpan a b = primJS $ ARIAMixin.prim__setAriaColSpan a b
  
  export
  ariaCurrent : (obj : ARIAMixin) -> JSIO String
  ariaCurrent a = primJS $ ARIAMixin.prim__ariaCurrent a
  
  export
  setAriaCurrent : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaCurrent a b = primJS $ ARIAMixin.prim__setAriaCurrent a b
  
  export
  ariaDescription : (obj : ARIAMixin) -> JSIO String
  ariaDescription a = primJS $ ARIAMixin.prim__ariaDescription a
  
  export
  setAriaDescription : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaDescription a b = primJS $ ARIAMixin.prim__setAriaDescription a b
  
  export
  ariaDisabled : (obj : ARIAMixin) -> JSIO String
  ariaDisabled a = primJS $ ARIAMixin.prim__ariaDisabled a
  
  export
  setAriaDisabled : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaDisabled a b = primJS $ ARIAMixin.prim__setAriaDisabled a b
  
  export
  ariaExpanded : (obj : ARIAMixin) -> JSIO String
  ariaExpanded a = primJS $ ARIAMixin.prim__ariaExpanded a
  
  export
  setAriaExpanded : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaExpanded a b = primJS $ ARIAMixin.prim__setAriaExpanded a b
  
  export
  ariaHasPopup : (obj : ARIAMixin) -> JSIO String
  ariaHasPopup a = primJS $ ARIAMixin.prim__ariaHasPopup a
  
  export
  setAriaHasPopup : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaHasPopup a b = primJS $ ARIAMixin.prim__setAriaHasPopup a b
  
  export
  ariaHidden : (obj : ARIAMixin) -> JSIO String
  ariaHidden a = primJS $ ARIAMixin.prim__ariaHidden a
  
  export
  setAriaHidden : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaHidden a b = primJS $ ARIAMixin.prim__setAriaHidden a b
  
  export
  ariaInvalid : (obj : ARIAMixin) -> JSIO String
  ariaInvalid a = primJS $ ARIAMixin.prim__ariaInvalid a
  
  export
  setAriaInvalid : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaInvalid a b = primJS $ ARIAMixin.prim__setAriaInvalid a b
  
  export
  ariaKeyShortcuts : (obj : ARIAMixin) -> JSIO String
  ariaKeyShortcuts a = primJS $ ARIAMixin.prim__ariaKeyShortcuts a
  
  export
  setAriaKeyShortcuts : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaKeyShortcuts a b = primJS $ ARIAMixin.prim__setAriaKeyShortcuts a b
  
  export
  ariaLabel : (obj : ARIAMixin) -> JSIO String
  ariaLabel a = primJS $ ARIAMixin.prim__ariaLabel a
  
  export
  setAriaLabel : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaLabel a b = primJS $ ARIAMixin.prim__setAriaLabel a b
  
  export
  ariaLevel : (obj : ARIAMixin) -> JSIO String
  ariaLevel a = primJS $ ARIAMixin.prim__ariaLevel a
  
  export
  setAriaLevel : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaLevel a b = primJS $ ARIAMixin.prim__setAriaLevel a b
  
  export
  ariaLive : (obj : ARIAMixin) -> JSIO String
  ariaLive a = primJS $ ARIAMixin.prim__ariaLive a
  
  export
  setAriaLive : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaLive a b = primJS $ ARIAMixin.prim__setAriaLive a b
  
  export
  ariaModal : (obj : ARIAMixin) -> JSIO String
  ariaModal a = primJS $ ARIAMixin.prim__ariaModal a
  
  export
  setAriaModal : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaModal a b = primJS $ ARIAMixin.prim__setAriaModal a b
  
  export
  ariaMultiLine : (obj : ARIAMixin) -> JSIO String
  ariaMultiLine a = primJS $ ARIAMixin.prim__ariaMultiLine a
  
  export
  setAriaMultiLine : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaMultiLine a b = primJS $ ARIAMixin.prim__setAriaMultiLine a b
  
  export
  ariaMultiSelectable : (obj : ARIAMixin) -> JSIO String
  ariaMultiSelectable a = primJS $ ARIAMixin.prim__ariaMultiSelectable a
  
  export
  setAriaMultiSelectable : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaMultiSelectable a b = primJS $ ARIAMixin.prim__setAriaMultiSelectable a
                                                                               b
  
  export
  ariaOrientation : (obj : ARIAMixin) -> JSIO String
  ariaOrientation a = primJS $ ARIAMixin.prim__ariaOrientation a
  
  export
  setAriaOrientation : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaOrientation a b = primJS $ ARIAMixin.prim__setAriaOrientation a b
  
  export
  ariaPlaceholder : (obj : ARIAMixin) -> JSIO String
  ariaPlaceholder a = primJS $ ARIAMixin.prim__ariaPlaceholder a
  
  export
  setAriaPlaceholder : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaPlaceholder a b = primJS $ ARIAMixin.prim__setAriaPlaceholder a b
  
  export
  ariaPosInSet : (obj : ARIAMixin) -> JSIO String
  ariaPosInSet a = primJS $ ARIAMixin.prim__ariaPosInSet a
  
  export
  setAriaPosInSet : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaPosInSet a b = primJS $ ARIAMixin.prim__setAriaPosInSet a b
  
  export
  ariaPressed : (obj : ARIAMixin) -> JSIO String
  ariaPressed a = primJS $ ARIAMixin.prim__ariaPressed a
  
  export
  setAriaPressed : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaPressed a b = primJS $ ARIAMixin.prim__setAriaPressed a b
  
  export
  ariaReadOnly : (obj : ARIAMixin) -> JSIO String
  ariaReadOnly a = primJS $ ARIAMixin.prim__ariaReadOnly a
  
  export
  setAriaReadOnly : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaReadOnly a b = primJS $ ARIAMixin.prim__setAriaReadOnly a b
  
  export
  ariaRequired : (obj : ARIAMixin) -> JSIO String
  ariaRequired a = primJS $ ARIAMixin.prim__ariaRequired a
  
  export
  setAriaRequired : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaRequired a b = primJS $ ARIAMixin.prim__setAriaRequired a b
  
  export
  ariaRoleDescription : (obj : ARIAMixin) -> JSIO String
  ariaRoleDescription a = primJS $ ARIAMixin.prim__ariaRoleDescription a
  
  export
  setAriaRoleDescription : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaRoleDescription a b = primJS $ ARIAMixin.prim__setAriaRoleDescription a
                                                                               b
  
  export
  ariaRowCount : (obj : ARIAMixin) -> JSIO String
  ariaRowCount a = primJS $ ARIAMixin.prim__ariaRowCount a
  
  export
  setAriaRowCount : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaRowCount a b = primJS $ ARIAMixin.prim__setAriaRowCount a b
  
  export
  ariaRowIndex : (obj : ARIAMixin) -> JSIO String
  ariaRowIndex a = primJS $ ARIAMixin.prim__ariaRowIndex a
  
  export
  setAriaRowIndex : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaRowIndex a b = primJS $ ARIAMixin.prim__setAriaRowIndex a b
  
  export
  ariaRowIndexText : (obj : ARIAMixin) -> JSIO String
  ariaRowIndexText a = primJS $ ARIAMixin.prim__ariaRowIndexText a
  
  export
  setAriaRowIndexText : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaRowIndexText a b = primJS $ ARIAMixin.prim__setAriaRowIndexText a b
  
  export
  ariaRowSpan : (obj : ARIAMixin) -> JSIO String
  ariaRowSpan a = primJS $ ARIAMixin.prim__ariaRowSpan a
  
  export
  setAriaRowSpan : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaRowSpan a b = primJS $ ARIAMixin.prim__setAriaRowSpan a b
  
  export
  ariaSelected : (obj : ARIAMixin) -> JSIO String
  ariaSelected a = primJS $ ARIAMixin.prim__ariaSelected a
  
  export
  setAriaSelected : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaSelected a b = primJS $ ARIAMixin.prim__setAriaSelected a b
  
  export
  ariaSetSize : (obj : ARIAMixin) -> JSIO String
  ariaSetSize a = primJS $ ARIAMixin.prim__ariaSetSize a
  
  export
  setAriaSetSize : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaSetSize a b = primJS $ ARIAMixin.prim__setAriaSetSize a b
  
  export
  ariaSort : (obj : ARIAMixin) -> JSIO String
  ariaSort a = primJS $ ARIAMixin.prim__ariaSort a
  
  export
  setAriaSort : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaSort a b = primJS $ ARIAMixin.prim__setAriaSort a b
  
  export
  ariaValueMax : (obj : ARIAMixin) -> JSIO String
  ariaValueMax a = primJS $ ARIAMixin.prim__ariaValueMax a
  
  export
  setAriaValueMax : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaValueMax a b = primJS $ ARIAMixin.prim__setAriaValueMax a b
  
  export
  ariaValueMin : (obj : ARIAMixin) -> JSIO String
  ariaValueMin a = primJS $ ARIAMixin.prim__ariaValueMin a
  
  export
  setAriaValueMin : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaValueMin a b = primJS $ ARIAMixin.prim__setAriaValueMin a b
  
  export
  ariaValueNow : (obj : ARIAMixin) -> JSIO String
  ariaValueNow a = primJS $ ARIAMixin.prim__ariaValueNow a
  
  export
  setAriaValueNow : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaValueNow a b = primJS $ ARIAMixin.prim__setAriaValueNow a b
  
  export
  ariaValueText : (obj : ARIAMixin) -> JSIO String
  ariaValueText a = primJS $ ARIAMixin.prim__ariaValueText a
  
  export
  setAriaValueText : (obj : ARIAMixin) -> (value : String) -> JSIO ()
  setAriaValueText a b = primJS $ ARIAMixin.prim__setAriaValueText a b
  
  export
  role : (obj : ARIAMixin) -> JSIO (Nullable String)
  role a = primJS $ ARIAMixin.prim__role a
  
  export
  setRole : (obj : ARIAMixin) -> (value : Nullable String) -> JSIO ()
  setRole a b = primJS $ ARIAMixin.prim__setRole a b

namespace AbstractWorker
  
  export
  onerror : (obj : AbstractWorker) -> JSIO EventHandler
  onerror a = primJS $ AbstractWorker.prim__onerror a
  
  export
  setOnerror : (obj : AbstractWorker) -> (value : EventHandler) -> JSIO ()
  setOnerror a b = primJS $ AbstractWorker.prim__setOnerror a b

namespace CanvasCompositing
  
  export
  globalAlpha : (obj : CanvasCompositing) -> JSIO Double
  globalAlpha a = primJS $ CanvasCompositing.prim__globalAlpha a
  
  export
  setGlobalAlpha : (obj : CanvasCompositing) -> (value : Double) -> JSIO ()
  setGlobalAlpha a b = primJS $ CanvasCompositing.prim__setGlobalAlpha a b
  
  export
  globalCompositeOperation : (obj : CanvasCompositing) -> JSIO String
  globalCompositeOperation a = primJS $ CanvasCompositing.prim__globalCompositeOperation a
  
  export
  setGlobalCompositeOperation :  (obj : CanvasCompositing)
                              -> (value : String)
                              -> JSIO ()
  setGlobalCompositeOperation a b = primJS $ CanvasCompositing.prim__setGlobalCompositeOperation a
                                                                                                 b

namespace CanvasDrawImage
  
  export
  drawImage :  (obj : CanvasDrawImage)
            -> (image : CanvasImageSource)
            -> (dx : Double)
            -> (dy : Double)
            -> JSIO ()
  drawImage a b c d = primJS $ CanvasDrawImage.prim__drawImage a b c d
  
  export
  drawImage1 :  (obj : CanvasDrawImage)
             -> (image : CanvasImageSource)
             -> (dx : Double)
             -> (dy : Double)
             -> (dw : Double)
             -> (dh : Double)
             -> JSIO ()
  drawImage1 a b c d e f = primJS $ CanvasDrawImage.prim__drawImage1 a b c d e f
  
  export
  drawImage2 :  (obj : CanvasDrawImage)
             -> (image : CanvasImageSource)
             -> (sx : Double)
             -> (sy : Double)
             -> (sw : Double)
             -> (sh : Double)
             -> (dx : Double)
             -> (dy : Double)
             -> (dw : Double)
             -> (dh : Double)
             -> JSIO ()
  drawImage2 a b c d e f g h i j = primJS $ CanvasDrawImage.prim__drawImage2 a
                                                                             b
                                                                             c
                                                                             d
                                                                             e
                                                                             f
                                                                             g
                                                                             h
                                                                             i
                                                                             j

namespace CanvasDrawPath
  
  export
  beginPath : (obj : CanvasDrawPath) -> JSIO ()
  beginPath a = primJS $ CanvasDrawPath.prim__beginPath a
  
  export
  clip :  (obj : CanvasDrawPath)
       -> (fillRule : UndefOr CanvasFillRule)
       -> JSIO ()
  clip a b = primJS $ CanvasDrawPath.prim__clip a b
  
  export
  clip1 :  (obj : CanvasDrawPath)
        -> (path : Path2D)
        -> (fillRule : UndefOr CanvasFillRule)
        -> JSIO ()
  clip1 a b c = primJS $ CanvasDrawPath.prim__clip1 a b c
  
  export
  fill :  (obj : CanvasDrawPath)
       -> (fillRule : UndefOr CanvasFillRule)
       -> JSIO ()
  fill a b = primJS $ CanvasDrawPath.prim__fill a b
  
  export
  fill1 :  (obj : CanvasDrawPath)
        -> (path : Path2D)
        -> (fillRule : UndefOr CanvasFillRule)
        -> JSIO ()
  fill1 a b c = primJS $ CanvasDrawPath.prim__fill1 a b c
  
  export
  isPointInPath :  (obj : CanvasDrawPath)
                -> (x : Double)
                -> (y : Double)
                -> (fillRule : UndefOr CanvasFillRule)
                -> JSIO Boolean
  isPointInPath a b c d = primJS $ CanvasDrawPath.prim__isPointInPath a b c d
  
  export
  isPointInPath1 :  (obj : CanvasDrawPath)
                 -> (path : Path2D)
                 -> (x : Double)
                 -> (y : Double)
                 -> (fillRule : UndefOr CanvasFillRule)
                 -> JSIO Boolean
  isPointInPath1 a b c d e = primJS $ CanvasDrawPath.prim__isPointInPath1 a
                                                                          b
                                                                          c
                                                                          d
                                                                          e
  
  export
  isPointInStroke :  (obj : CanvasDrawPath)
                  -> (x : Double)
                  -> (y : Double)
                  -> JSIO Boolean
  isPointInStroke a b c = primJS $ CanvasDrawPath.prim__isPointInStroke a b c
  
  export
  isPointInStroke1 :  (obj : CanvasDrawPath)
                   -> (path : Path2D)
                   -> (x : Double)
                   -> (y : Double)
                   -> JSIO Boolean
  isPointInStroke1 a b c d = primJS $ CanvasDrawPath.prim__isPointInStroke1 a
                                                                            b
                                                                            c
                                                                            d
  
  export
  stroke : (obj : CanvasDrawPath) -> JSIO ()
  stroke a = primJS $ CanvasDrawPath.prim__stroke a
  
  export
  stroke1 : (obj : CanvasDrawPath) -> (path : Path2D) -> JSIO ()
  stroke1 a b = primJS $ CanvasDrawPath.prim__stroke1 a b

namespace CanvasFillStrokeStyles
  
  export
  fillStyle :  (obj : CanvasFillStrokeStyles)
            -> JSIO (Union3 String CanvasGradient CanvasPattern)
  fillStyle a = primJS $ CanvasFillStrokeStyles.prim__fillStyle a
  
  export
  setFillStyle :  (obj : CanvasFillStrokeStyles)
               -> (value : Union3 String CanvasGradient CanvasPattern)
               -> JSIO ()
  setFillStyle a b = primJS $ CanvasFillStrokeStyles.prim__setFillStyle a b
  
  export
  strokeStyle :  (obj : CanvasFillStrokeStyles)
              -> JSIO (Union3 String CanvasGradient CanvasPattern)
  strokeStyle a = primJS $ CanvasFillStrokeStyles.prim__strokeStyle a
  
  export
  setStrokeStyle :  (obj : CanvasFillStrokeStyles)
                 -> (value : Union3 String CanvasGradient CanvasPattern)
                 -> JSIO ()
  setStrokeStyle a b = primJS $ CanvasFillStrokeStyles.prim__setStrokeStyle a b
  
  export
  createLinearGradient :  (obj : CanvasFillStrokeStyles)
                       -> (x0 : Double)
                       -> (y0 : Double)
                       -> (x1 : Double)
                       -> (y1 : Double)
                       -> JSIO CanvasGradient
  createLinearGradient a b c d e = primJS $ CanvasFillStrokeStyles.prim__createLinearGradient a
                                                                                              b
                                                                                              c
                                                                                              d
                                                                                              e
  
  export
  createPattern :  (obj : CanvasFillStrokeStyles)
                -> (image : CanvasImageSource)
                -> (repetition : String)
                -> JSIO (Nullable CanvasPattern)
  createPattern a b c = primJS $ CanvasFillStrokeStyles.prim__createPattern a
                                                                            b
                                                                            c
  
  export
  createRadialGradient :  (obj : CanvasFillStrokeStyles)
                       -> (x0 : Double)
                       -> (y0 : Double)
                       -> (r0 : Double)
                       -> (x1 : Double)
                       -> (y1 : Double)
                       -> (r1 : Double)
                       -> JSIO CanvasGradient
  createRadialGradient a b c d e f g = primJS $ CanvasFillStrokeStyles.prim__createRadialGradient a
                                                                                                  b
                                                                                                  c
                                                                                                  d
                                                                                                  e
                                                                                                  f
                                                                                                  g

namespace CanvasFilters
  
  export
  filter : (obj : CanvasFilters) -> JSIO String
  filter a = primJS $ CanvasFilters.prim__filter a
  
  export
  setFilter : (obj : CanvasFilters) -> (value : String) -> JSIO ()
  setFilter a b = primJS $ CanvasFilters.prim__setFilter a b

namespace CanvasImageData
  
  export
  createImageData :  (obj : CanvasImageData)
                  -> (sw : Int32)
                  -> (sh : Int32)
                  -> JSIO ImageData
  createImageData a b c = primJS $ CanvasImageData.prim__createImageData a b c
  
  export
  createImageData1 :  (obj : CanvasImageData)
                   -> (imagedata : ImageData)
                   -> JSIO ImageData
  createImageData1 a b = primJS $ CanvasImageData.prim__createImageData1 a b
  
  export
  getImageData :  (obj : CanvasImageData)
               -> (sx : Int32)
               -> (sy : Int32)
               -> (sw : Int32)
               -> (sh : Int32)
               -> JSIO ImageData
  getImageData a b c d e = primJS $ CanvasImageData.prim__getImageData a b c d e
  
  export
  putImageData :  (obj : CanvasImageData)
               -> (imagedata : ImageData)
               -> (dx : Int32)
               -> (dy : Int32)
               -> JSIO ()
  putImageData a b c d = primJS $ CanvasImageData.prim__putImageData a b c d
  
  export
  putImageData1 :  (obj : CanvasImageData)
                -> (imagedata : ImageData)
                -> (dx : Int32)
                -> (dy : Int32)
                -> (dirtyX : Int32)
                -> (dirtyY : Int32)
                -> (dirtyWidth : Int32)
                -> (dirtyHeight : Int32)
                -> JSIO ()
  putImageData1 a b c d e f g h = primJS $ CanvasImageData.prim__putImageData1 a
                                                                               b
                                                                               c
                                                                               d
                                                                               e
                                                                               f
                                                                               g
                                                                               h

namespace CanvasImageSmoothing
  
  export
  imageSmoothingEnabled : (obj : CanvasImageSmoothing) -> JSIO Boolean
  imageSmoothingEnabled a = primJS $ CanvasImageSmoothing.prim__imageSmoothingEnabled a
  
  export
  setImageSmoothingEnabled :  (obj : CanvasImageSmoothing)
                           -> (value : Boolean)
                           -> JSIO ()
  setImageSmoothingEnabled a b = primJS $ CanvasImageSmoothing.prim__setImageSmoothingEnabled a
                                                                                              b
  
  export
  imageSmoothingQuality :  (obj : CanvasImageSmoothing)
                        -> JSIO ImageSmoothingQuality
  imageSmoothingQuality a = primJS $ CanvasImageSmoothing.prim__imageSmoothingQuality a
  
  export
  setImageSmoothingQuality :  (obj : CanvasImageSmoothing)
                           -> (value : ImageSmoothingQuality)
                           -> JSIO ()
  setImageSmoothingQuality a b = primJS $ CanvasImageSmoothing.prim__setImageSmoothingQuality a
                                                                                              b

namespace CanvasPath
  
  export
  arc :  (obj : CanvasPath)
      -> (x : Double)
      -> (y : Double)
      -> (radius : Double)
      -> (startAngle : Double)
      -> (endAngle : Double)
      -> (counterclockwise : UndefOr Boolean)
      -> JSIO ()
  arc a b c d e f g = primJS $ CanvasPath.prim__arc a b c d e f g
  
  export
  arcTo :  (obj : CanvasPath)
        -> (x1 : Double)
        -> (y1 : Double)
        -> (x2 : Double)
        -> (y2 : Double)
        -> (radius : Double)
        -> JSIO ()
  arcTo a b c d e f = primJS $ CanvasPath.prim__arcTo a b c d e f
  
  export
  bezierCurveTo :  (obj : CanvasPath)
                -> (cp1x : Double)
                -> (cp1y : Double)
                -> (cp2x : Double)
                -> (cp2y : Double)
                -> (x : Double)
                -> (y : Double)
                -> JSIO ()
  bezierCurveTo a b c d e f g = primJS $ CanvasPath.prim__bezierCurveTo a
                                                                        b
                                                                        c
                                                                        d
                                                                        e
                                                                        f
                                                                        g
  
  export
  closePath : (obj : CanvasPath) -> JSIO ()
  closePath a = primJS $ CanvasPath.prim__closePath a
  
  export
  ellipse :  (obj : CanvasPath)
          -> (x : Double)
          -> (y : Double)
          -> (radiusX : Double)
          -> (radiusY : Double)
          -> (rotation : Double)
          -> (startAngle : Double)
          -> (endAngle : Double)
          -> (counterclockwise : UndefOr Boolean)
          -> JSIO ()
  ellipse a b c d e f g h i = primJS $ CanvasPath.prim__ellipse a
                                                                b
                                                                c
                                                                d
                                                                e
                                                                f
                                                                g
                                                                h
                                                                i
  
  export
  lineTo : (obj : CanvasPath) -> (x : Double) -> (y : Double) -> JSIO ()
  lineTo a b c = primJS $ CanvasPath.prim__lineTo a b c
  
  export
  moveTo : (obj : CanvasPath) -> (x : Double) -> (y : Double) -> JSIO ()
  moveTo a b c = primJS $ CanvasPath.prim__moveTo a b c
  
  export
  quadraticCurveTo :  (obj : CanvasPath)
                   -> (cpx : Double)
                   -> (cpy : Double)
                   -> (x : Double)
                   -> (y : Double)
                   -> JSIO ()
  quadraticCurveTo a b c d e = primJS $ CanvasPath.prim__quadraticCurveTo a
                                                                          b
                                                                          c
                                                                          d
                                                                          e
  
  export
  rect :  (obj : CanvasPath)
       -> (x : Double)
       -> (y : Double)
       -> (w : Double)
       -> (h : Double)
       -> JSIO ()
  rect a b c d e = primJS $ CanvasPath.prim__rect a b c d e

namespace CanvasPathDrawingStyles
  
  export
  lineCap : (obj : CanvasPathDrawingStyles) -> JSIO CanvasLineCap
  lineCap a = primJS $ CanvasPathDrawingStyles.prim__lineCap a
  
  export
  setLineCap :  (obj : CanvasPathDrawingStyles)
             -> (value : CanvasLineCap)
             -> JSIO ()
  setLineCap a b = primJS $ CanvasPathDrawingStyles.prim__setLineCap a b
  
  export
  lineDashOffset : (obj : CanvasPathDrawingStyles) -> JSIO Double
  lineDashOffset a = primJS $ CanvasPathDrawingStyles.prim__lineDashOffset a
  
  export
  setLineDashOffset :  (obj : CanvasPathDrawingStyles)
                    -> (value : Double)
                    -> JSIO ()
  setLineDashOffset a b = primJS $ CanvasPathDrawingStyles.prim__setLineDashOffset a
                                                                                   b
  
  export
  lineJoin : (obj : CanvasPathDrawingStyles) -> JSIO CanvasLineJoin
  lineJoin a = primJS $ CanvasPathDrawingStyles.prim__lineJoin a
  
  export
  setLineJoin :  (obj : CanvasPathDrawingStyles)
              -> (value : CanvasLineJoin)
              -> JSIO ()
  setLineJoin a b = primJS $ CanvasPathDrawingStyles.prim__setLineJoin a b
  
  export
  lineWidth : (obj : CanvasPathDrawingStyles) -> JSIO Double
  lineWidth a = primJS $ CanvasPathDrawingStyles.prim__lineWidth a
  
  export
  setLineWidth : (obj : CanvasPathDrawingStyles) -> (value : Double) -> JSIO ()
  setLineWidth a b = primJS $ CanvasPathDrawingStyles.prim__setLineWidth a b
  
  export
  miterLimit : (obj : CanvasPathDrawingStyles) -> JSIO Double
  miterLimit a = primJS $ CanvasPathDrawingStyles.prim__miterLimit a
  
  export
  setMiterLimit : (obj : CanvasPathDrawingStyles) -> (value : Double) -> JSIO ()
  setMiterLimit a b = primJS $ CanvasPathDrawingStyles.prim__setMiterLimit a b
  
  export
  getLineDash : (obj : CanvasPathDrawingStyles) -> JSIO (Array Double)
  getLineDash a = primJS $ CanvasPathDrawingStyles.prim__getLineDash a
  
  export
  setLineDash :  (obj : CanvasPathDrawingStyles)
              -> (segments : Array Double)
              -> JSIO ()
  setLineDash a b = primJS $ CanvasPathDrawingStyles.prim__setLineDash a b

namespace CanvasRect
  
  export
  clearRect :  (obj : CanvasRect)
            -> (x : Double)
            -> (y : Double)
            -> (w : Double)
            -> (h : Double)
            -> JSIO ()
  clearRect a b c d e = primJS $ CanvasRect.prim__clearRect a b c d e
  
  export
  fillRect :  (obj : CanvasRect)
           -> (x : Double)
           -> (y : Double)
           -> (w : Double)
           -> (h : Double)
           -> JSIO ()
  fillRect a b c d e = primJS $ CanvasRect.prim__fillRect a b c d e
  
  export
  strokeRect :  (obj : CanvasRect)
             -> (x : Double)
             -> (y : Double)
             -> (w : Double)
             -> (h : Double)
             -> JSIO ()
  strokeRect a b c d e = primJS $ CanvasRect.prim__strokeRect a b c d e

namespace CanvasShadowStyles
  
  export
  shadowBlur : (obj : CanvasShadowStyles) -> JSIO Double
  shadowBlur a = primJS $ CanvasShadowStyles.prim__shadowBlur a
  
  export
  setShadowBlur : (obj : CanvasShadowStyles) -> (value : Double) -> JSIO ()
  setShadowBlur a b = primJS $ CanvasShadowStyles.prim__setShadowBlur a b
  
  export
  shadowColor : (obj : CanvasShadowStyles) -> JSIO String
  shadowColor a = primJS $ CanvasShadowStyles.prim__shadowColor a
  
  export
  setShadowColor : (obj : CanvasShadowStyles) -> (value : String) -> JSIO ()
  setShadowColor a b = primJS $ CanvasShadowStyles.prim__setShadowColor a b
  
  export
  shadowOffsetX : (obj : CanvasShadowStyles) -> JSIO Double
  shadowOffsetX a = primJS $ CanvasShadowStyles.prim__shadowOffsetX a
  
  export
  setShadowOffsetX : (obj : CanvasShadowStyles) -> (value : Double) -> JSIO ()
  setShadowOffsetX a b = primJS $ CanvasShadowStyles.prim__setShadowOffsetX a b
  
  export
  shadowOffsetY : (obj : CanvasShadowStyles) -> JSIO Double
  shadowOffsetY a = primJS $ CanvasShadowStyles.prim__shadowOffsetY a
  
  export
  setShadowOffsetY : (obj : CanvasShadowStyles) -> (value : Double) -> JSIO ()
  setShadowOffsetY a b = primJS $ CanvasShadowStyles.prim__setShadowOffsetY a b

namespace CanvasState
  
  export
  restore : (obj : CanvasState) -> JSIO ()
  restore a = primJS $ CanvasState.prim__restore a
  
  export
  save : (obj : CanvasState) -> JSIO ()
  save a = primJS $ CanvasState.prim__save a

namespace CanvasText
  
  export
  fillText :  (obj : CanvasText)
           -> (text : String)
           -> (x : Double)
           -> (y : Double)
           -> (maxWidth : UndefOr Double)
           -> JSIO ()
  fillText a b c d e = primJS $ CanvasText.prim__fillText a b c d e
  
  export
  measureText : (obj : CanvasText) -> (text : String) -> JSIO TextMetrics
  measureText a b = primJS $ CanvasText.prim__measureText a b
  
  export
  strokeText :  (obj : CanvasText)
             -> (text : String)
             -> (x : Double)
             -> (y : Double)
             -> (maxWidth : UndefOr Double)
             -> JSIO ()
  strokeText a b c d e = primJS $ CanvasText.prim__strokeText a b c d e

namespace CanvasTextDrawingStyles
  
  export
  direction : (obj : CanvasTextDrawingStyles) -> JSIO CanvasDirection
  direction a = primJS $ CanvasTextDrawingStyles.prim__direction a
  
  export
  setDirection :  (obj : CanvasTextDrawingStyles)
               -> (value : CanvasDirection)
               -> JSIO ()
  setDirection a b = primJS $ CanvasTextDrawingStyles.prim__setDirection a b
  
  export
  font : (obj : CanvasTextDrawingStyles) -> JSIO String
  font a = primJS $ CanvasTextDrawingStyles.prim__font a
  
  export
  setFont : (obj : CanvasTextDrawingStyles) -> (value : String) -> JSIO ()
  setFont a b = primJS $ CanvasTextDrawingStyles.prim__setFont a b
  
  export
  textAlign : (obj : CanvasTextDrawingStyles) -> JSIO CanvasTextAlign
  textAlign a = primJS $ CanvasTextDrawingStyles.prim__textAlign a
  
  export
  setTextAlign :  (obj : CanvasTextDrawingStyles)
               -> (value : CanvasTextAlign)
               -> JSIO ()
  setTextAlign a b = primJS $ CanvasTextDrawingStyles.prim__setTextAlign a b
  
  export
  textBaseline : (obj : CanvasTextDrawingStyles) -> JSIO CanvasTextBaseline
  textBaseline a = primJS $ CanvasTextDrawingStyles.prim__textBaseline a
  
  export
  setTextBaseline :  (obj : CanvasTextDrawingStyles)
                  -> (value : CanvasTextBaseline)
                  -> JSIO ()
  setTextBaseline a b = primJS $ CanvasTextDrawingStyles.prim__setTextBaseline a
                                                                               b

namespace CanvasTransform
  
  export
  getTransform : (obj : CanvasTransform) -> JSIO DOMMatrix
  getTransform a = primJS $ CanvasTransform.prim__getTransform a
  
  export
  resetTransform : (obj : CanvasTransform) -> JSIO ()
  resetTransform a = primJS $ CanvasTransform.prim__resetTransform a
  
  export
  rotate : (obj : CanvasTransform) -> (angle : Double) -> JSIO ()
  rotate a b = primJS $ CanvasTransform.prim__rotate a b
  
  export
  scale : (obj : CanvasTransform) -> (x : Double) -> (y : Double) -> JSIO ()
  scale a b c = primJS $ CanvasTransform.prim__scale a b c
  
  export
  setTransform :  (obj : CanvasTransform)
               -> (a : Double)
               -> (b : Double)
               -> (c : Double)
               -> (d : Double)
               -> (e : Double)
               -> (f : Double)
               -> JSIO ()
  setTransform a b c d e f g = primJS $ CanvasTransform.prim__setTransform a
                                                                           b
                                                                           c
                                                                           d
                                                                           e
                                                                           f
                                                                           g
  
  export
  setTransform1 :  (obj : CanvasTransform)
                -> (transform : UndefOr DOMMatrix2DInit)
                -> JSIO ()
  setTransform1 a b = primJS $ CanvasTransform.prim__setTransform1 a b
  
  export
  transform :  (obj : CanvasTransform)
            -> (a : Double)
            -> (b : Double)
            -> (c : Double)
            -> (d : Double)
            -> (e : Double)
            -> (f : Double)
            -> JSIO ()
  transform a b c d e f g = primJS $ CanvasTransform.prim__transform a
                                                                     b
                                                                     c
                                                                     d
                                                                     e
                                                                     f
                                                                     g
  
  export
  translate : (obj : CanvasTransform) -> (x : Double) -> (y : Double) -> JSIO ()
  translate a b c = primJS $ CanvasTransform.prim__translate a b c

namespace CanvasUserInterface
  
  export
  drawFocusIfNeeded :  (obj : CanvasUserInterface)
                    -> (element : Element)
                    -> JSIO ()
  drawFocusIfNeeded a b = primJS $ CanvasUserInterface.prim__drawFocusIfNeeded a
                                                                               b
  
  export
  drawFocusIfNeeded1 :  (obj : CanvasUserInterface)
                     -> (path : Path2D)
                     -> (element : Element)
                     -> JSIO ()
  drawFocusIfNeeded1 a b c = primJS $ CanvasUserInterface.prim__drawFocusIfNeeded1 a
                                                                                   b
                                                                                   c
  
  export
  scrollPathIntoView : (obj : CanvasUserInterface) -> JSIO ()
  scrollPathIntoView a = primJS $ CanvasUserInterface.prim__scrollPathIntoView a
  
  export
  scrollPathIntoView1 :  (obj : CanvasUserInterface)
                      -> (path : Path2D)
                      -> JSIO ()
  scrollPathIntoView1 a b = primJS $ CanvasUserInterface.prim__scrollPathIntoView1 a
                                                                                   b

namespace DocumentAndElementEventHandlers
  
  export
  oncopy : (obj : DocumentAndElementEventHandlers) -> JSIO EventHandler
  oncopy a = primJS $ DocumentAndElementEventHandlers.prim__oncopy a
  
  export
  setOncopy :  (obj : DocumentAndElementEventHandlers)
            -> (value : EventHandler)
            -> JSIO ()
  setOncopy a b = primJS $ DocumentAndElementEventHandlers.prim__setOncopy a b
  
  export
  oncut : (obj : DocumentAndElementEventHandlers) -> JSIO EventHandler
  oncut a = primJS $ DocumentAndElementEventHandlers.prim__oncut a
  
  export
  setOncut :  (obj : DocumentAndElementEventHandlers)
           -> (value : EventHandler)
           -> JSIO ()
  setOncut a b = primJS $ DocumentAndElementEventHandlers.prim__setOncut a b
  
  export
  onpaste : (obj : DocumentAndElementEventHandlers) -> JSIO EventHandler
  onpaste a = primJS $ DocumentAndElementEventHandlers.prim__onpaste a
  
  export
  setOnpaste :  (obj : DocumentAndElementEventHandlers)
             -> (value : EventHandler)
             -> JSIO ()
  setOnpaste a b = primJS $ DocumentAndElementEventHandlers.prim__setOnpaste a b

namespace ElementContentEditable
  
  export
  contentEditable : (obj : ElementContentEditable) -> JSIO String
  contentEditable a = primJS $ ElementContentEditable.prim__contentEditable a
  
  export
  setContentEditable :  (obj : ElementContentEditable)
                     -> (value : String)
                     -> JSIO ()
  setContentEditable a b = primJS $ ElementContentEditable.prim__setContentEditable a
                                                                                    b
  
  export
  enterKeyHint : (obj : ElementContentEditable) -> JSIO String
  enterKeyHint a = primJS $ ElementContentEditable.prim__enterKeyHint a
  
  export
  setEnterKeyHint :  (obj : ElementContentEditable)
                  -> (value : String)
                  -> JSIO ()
  setEnterKeyHint a b = primJS $ ElementContentEditable.prim__setEnterKeyHint a
                                                                              b
  
  export
  inputMode : (obj : ElementContentEditable) -> JSIO String
  inputMode a = primJS $ ElementContentEditable.prim__inputMode a
  
  export
  setInputMode : (obj : ElementContentEditable) -> (value : String) -> JSIO ()
  setInputMode a b = primJS $ ElementContentEditable.prim__setInputMode a b
  
  export
  isContentEditable : (obj : ElementContentEditable) -> JSIO Boolean
  isContentEditable a = primJS $ ElementContentEditable.prim__isContentEditable a

namespace GlobalEventHandlers
  
  export
  onabort : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onabort a = primJS $ GlobalEventHandlers.prim__onabort a
  
  export
  setOnabort : (obj : GlobalEventHandlers) -> (value : EventHandler) -> JSIO ()
  setOnabort a b = primJS $ GlobalEventHandlers.prim__setOnabort a b
  
  export
  onauxclick : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onauxclick a = primJS $ GlobalEventHandlers.prim__onauxclick a
  
  export
  setOnauxclick :  (obj : GlobalEventHandlers)
                -> (value : EventHandler)
                -> JSIO ()
  setOnauxclick a b = primJS $ GlobalEventHandlers.prim__setOnauxclick a b
  
  export
  onblur : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onblur a = primJS $ GlobalEventHandlers.prim__onblur a
  
  export
  setOnblur : (obj : GlobalEventHandlers) -> (value : EventHandler) -> JSIO ()
  setOnblur a b = primJS $ GlobalEventHandlers.prim__setOnblur a b
  
  export
  oncancel : (obj : GlobalEventHandlers) -> JSIO EventHandler
  oncancel a = primJS $ GlobalEventHandlers.prim__oncancel a
  
  export
  setOncancel : (obj : GlobalEventHandlers) -> (value : EventHandler) -> JSIO ()
  setOncancel a b = primJS $ GlobalEventHandlers.prim__setOncancel a b
  
  export
  oncanplay : (obj : GlobalEventHandlers) -> JSIO EventHandler
  oncanplay a = primJS $ GlobalEventHandlers.prim__oncanplay a
  
  export
  setOncanplay :  (obj : GlobalEventHandlers)
               -> (value : EventHandler)
               -> JSIO ()
  setOncanplay a b = primJS $ GlobalEventHandlers.prim__setOncanplay a b
  
  export
  oncanplaythrough : (obj : GlobalEventHandlers) -> JSIO EventHandler
  oncanplaythrough a = primJS $ GlobalEventHandlers.prim__oncanplaythrough a
  
  export
  setOncanplaythrough :  (obj : GlobalEventHandlers)
                      -> (value : EventHandler)
                      -> JSIO ()
  setOncanplaythrough a b = primJS $ GlobalEventHandlers.prim__setOncanplaythrough a
                                                                                   b
  
  export
  onchange : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onchange a = primJS $ GlobalEventHandlers.prim__onchange a
  
  export
  setOnchange : (obj : GlobalEventHandlers) -> (value : EventHandler) -> JSIO ()
  setOnchange a b = primJS $ GlobalEventHandlers.prim__setOnchange a b
  
  export
  onclick : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onclick a = primJS $ GlobalEventHandlers.prim__onclick a
  
  export
  setOnclick : (obj : GlobalEventHandlers) -> (value : EventHandler) -> JSIO ()
  setOnclick a b = primJS $ GlobalEventHandlers.prim__setOnclick a b
  
  export
  onclose : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onclose a = primJS $ GlobalEventHandlers.prim__onclose a
  
  export
  setOnclose : (obj : GlobalEventHandlers) -> (value : EventHandler) -> JSIO ()
  setOnclose a b = primJS $ GlobalEventHandlers.prim__setOnclose a b
  
  export
  oncontextmenu : (obj : GlobalEventHandlers) -> JSIO EventHandler
  oncontextmenu a = primJS $ GlobalEventHandlers.prim__oncontextmenu a
  
  export
  setOncontextmenu :  (obj : GlobalEventHandlers)
                   -> (value : EventHandler)
                   -> JSIO ()
  setOncontextmenu a b = primJS $ GlobalEventHandlers.prim__setOncontextmenu a b
  
  export
  oncuechange : (obj : GlobalEventHandlers) -> JSIO EventHandler
  oncuechange a = primJS $ GlobalEventHandlers.prim__oncuechange a
  
  export
  setOncuechange :  (obj : GlobalEventHandlers)
                 -> (value : EventHandler)
                 -> JSIO ()
  setOncuechange a b = primJS $ GlobalEventHandlers.prim__setOncuechange a b
  
  export
  ondblclick : (obj : GlobalEventHandlers) -> JSIO EventHandler
  ondblclick a = primJS $ GlobalEventHandlers.prim__ondblclick a
  
  export
  setOndblclick :  (obj : GlobalEventHandlers)
                -> (value : EventHandler)
                -> JSIO ()
  setOndblclick a b = primJS $ GlobalEventHandlers.prim__setOndblclick a b
  
  export
  ondrag : (obj : GlobalEventHandlers) -> JSIO EventHandler
  ondrag a = primJS $ GlobalEventHandlers.prim__ondrag a
  
  export
  setOndrag : (obj : GlobalEventHandlers) -> (value : EventHandler) -> JSIO ()
  setOndrag a b = primJS $ GlobalEventHandlers.prim__setOndrag a b
  
  export
  ondragend : (obj : GlobalEventHandlers) -> JSIO EventHandler
  ondragend a = primJS $ GlobalEventHandlers.prim__ondragend a
  
  export
  setOndragend :  (obj : GlobalEventHandlers)
               -> (value : EventHandler)
               -> JSIO ()
  setOndragend a b = primJS $ GlobalEventHandlers.prim__setOndragend a b
  
  export
  ondragenter : (obj : GlobalEventHandlers) -> JSIO EventHandler
  ondragenter a = primJS $ GlobalEventHandlers.prim__ondragenter a
  
  export
  setOndragenter :  (obj : GlobalEventHandlers)
                 -> (value : EventHandler)
                 -> JSIO ()
  setOndragenter a b = primJS $ GlobalEventHandlers.prim__setOndragenter a b
  
  export
  ondragleave : (obj : GlobalEventHandlers) -> JSIO EventHandler
  ondragleave a = primJS $ GlobalEventHandlers.prim__ondragleave a
  
  export
  setOndragleave :  (obj : GlobalEventHandlers)
                 -> (value : EventHandler)
                 -> JSIO ()
  setOndragleave a b = primJS $ GlobalEventHandlers.prim__setOndragleave a b
  
  export
  ondragover : (obj : GlobalEventHandlers) -> JSIO EventHandler
  ondragover a = primJS $ GlobalEventHandlers.prim__ondragover a
  
  export
  setOndragover :  (obj : GlobalEventHandlers)
                -> (value : EventHandler)
                -> JSIO ()
  setOndragover a b = primJS $ GlobalEventHandlers.prim__setOndragover a b
  
  export
  ondragstart : (obj : GlobalEventHandlers) -> JSIO EventHandler
  ondragstart a = primJS $ GlobalEventHandlers.prim__ondragstart a
  
  export
  setOndragstart :  (obj : GlobalEventHandlers)
                 -> (value : EventHandler)
                 -> JSIO ()
  setOndragstart a b = primJS $ GlobalEventHandlers.prim__setOndragstart a b
  
  export
  ondrop : (obj : GlobalEventHandlers) -> JSIO EventHandler
  ondrop a = primJS $ GlobalEventHandlers.prim__ondrop a
  
  export
  setOndrop : (obj : GlobalEventHandlers) -> (value : EventHandler) -> JSIO ()
  setOndrop a b = primJS $ GlobalEventHandlers.prim__setOndrop a b
  
  export
  ondurationchange : (obj : GlobalEventHandlers) -> JSIO EventHandler
  ondurationchange a = primJS $ GlobalEventHandlers.prim__ondurationchange a
  
  export
  setOndurationchange :  (obj : GlobalEventHandlers)
                      -> (value : EventHandler)
                      -> JSIO ()
  setOndurationchange a b = primJS $ GlobalEventHandlers.prim__setOndurationchange a
                                                                                   b
  
  export
  onemptied : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onemptied a = primJS $ GlobalEventHandlers.prim__onemptied a
  
  export
  setOnemptied :  (obj : GlobalEventHandlers)
               -> (value : EventHandler)
               -> JSIO ()
  setOnemptied a b = primJS $ GlobalEventHandlers.prim__setOnemptied a b
  
  export
  onended : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onended a = primJS $ GlobalEventHandlers.prim__onended a
  
  export
  setOnended : (obj : GlobalEventHandlers) -> (value : EventHandler) -> JSIO ()
  setOnended a b = primJS $ GlobalEventHandlers.prim__setOnended a b
  
  export
  onerror : (obj : GlobalEventHandlers) -> JSIO OnErrorEventHandler
  onerror a = primJS $ GlobalEventHandlers.prim__onerror a
  
  export
  setOnerror :  (obj : GlobalEventHandlers)
             -> (value : OnErrorEventHandler)
             -> JSIO ()
  setOnerror a b = primJS $ GlobalEventHandlers.prim__setOnerror a b
  
  export
  onfocus : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onfocus a = primJS $ GlobalEventHandlers.prim__onfocus a
  
  export
  setOnfocus : (obj : GlobalEventHandlers) -> (value : EventHandler) -> JSIO ()
  setOnfocus a b = primJS $ GlobalEventHandlers.prim__setOnfocus a b
  
  export
  onformdata : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onformdata a = primJS $ GlobalEventHandlers.prim__onformdata a
  
  export
  setOnformdata :  (obj : GlobalEventHandlers)
                -> (value : EventHandler)
                -> JSIO ()
  setOnformdata a b = primJS $ GlobalEventHandlers.prim__setOnformdata a b
  
  export
  oninput : (obj : GlobalEventHandlers) -> JSIO EventHandler
  oninput a = primJS $ GlobalEventHandlers.prim__oninput a
  
  export
  setOninput : (obj : GlobalEventHandlers) -> (value : EventHandler) -> JSIO ()
  setOninput a b = primJS $ GlobalEventHandlers.prim__setOninput a b
  
  export
  oninvalid : (obj : GlobalEventHandlers) -> JSIO EventHandler
  oninvalid a = primJS $ GlobalEventHandlers.prim__oninvalid a
  
  export
  setOninvalid :  (obj : GlobalEventHandlers)
               -> (value : EventHandler)
               -> JSIO ()
  setOninvalid a b = primJS $ GlobalEventHandlers.prim__setOninvalid a b
  
  export
  onkeydown : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onkeydown a = primJS $ GlobalEventHandlers.prim__onkeydown a
  
  export
  setOnkeydown :  (obj : GlobalEventHandlers)
               -> (value : EventHandler)
               -> JSIO ()
  setOnkeydown a b = primJS $ GlobalEventHandlers.prim__setOnkeydown a b
  
  export
  onkeypress : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onkeypress a = primJS $ GlobalEventHandlers.prim__onkeypress a
  
  export
  setOnkeypress :  (obj : GlobalEventHandlers)
                -> (value : EventHandler)
                -> JSIO ()
  setOnkeypress a b = primJS $ GlobalEventHandlers.prim__setOnkeypress a b
  
  export
  onkeyup : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onkeyup a = primJS $ GlobalEventHandlers.prim__onkeyup a
  
  export
  setOnkeyup : (obj : GlobalEventHandlers) -> (value : EventHandler) -> JSIO ()
  setOnkeyup a b = primJS $ GlobalEventHandlers.prim__setOnkeyup a b
  
  export
  onload : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onload a = primJS $ GlobalEventHandlers.prim__onload a
  
  export
  setOnload : (obj : GlobalEventHandlers) -> (value : EventHandler) -> JSIO ()
  setOnload a b = primJS $ GlobalEventHandlers.prim__setOnload a b
  
  export
  onloadeddata : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onloadeddata a = primJS $ GlobalEventHandlers.prim__onloadeddata a
  
  export
  setOnloadeddata :  (obj : GlobalEventHandlers)
                  -> (value : EventHandler)
                  -> JSIO ()
  setOnloadeddata a b = primJS $ GlobalEventHandlers.prim__setOnloadeddata a b
  
  export
  onloadedmetadata : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onloadedmetadata a = primJS $ GlobalEventHandlers.prim__onloadedmetadata a
  
  export
  setOnloadedmetadata :  (obj : GlobalEventHandlers)
                      -> (value : EventHandler)
                      -> JSIO ()
  setOnloadedmetadata a b = primJS $ GlobalEventHandlers.prim__setOnloadedmetadata a
                                                                                   b
  
  export
  onloadstart : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onloadstart a = primJS $ GlobalEventHandlers.prim__onloadstart a
  
  export
  setOnloadstart :  (obj : GlobalEventHandlers)
                 -> (value : EventHandler)
                 -> JSIO ()
  setOnloadstart a b = primJS $ GlobalEventHandlers.prim__setOnloadstart a b
  
  export
  onmousedown : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onmousedown a = primJS $ GlobalEventHandlers.prim__onmousedown a
  
  export
  setOnmousedown :  (obj : GlobalEventHandlers)
                 -> (value : EventHandler)
                 -> JSIO ()
  setOnmousedown a b = primJS $ GlobalEventHandlers.prim__setOnmousedown a b
  
  export
  onmouseenter : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onmouseenter a = primJS $ GlobalEventHandlers.prim__onmouseenter a
  
  export
  setOnmouseenter :  (obj : GlobalEventHandlers)
                  -> (value : EventHandler)
                  -> JSIO ()
  setOnmouseenter a b = primJS $ GlobalEventHandlers.prim__setOnmouseenter a b
  
  export
  onmouseleave : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onmouseleave a = primJS $ GlobalEventHandlers.prim__onmouseleave a
  
  export
  setOnmouseleave :  (obj : GlobalEventHandlers)
                  -> (value : EventHandler)
                  -> JSIO ()
  setOnmouseleave a b = primJS $ GlobalEventHandlers.prim__setOnmouseleave a b
  
  export
  onmousemove : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onmousemove a = primJS $ GlobalEventHandlers.prim__onmousemove a
  
  export
  setOnmousemove :  (obj : GlobalEventHandlers)
                 -> (value : EventHandler)
                 -> JSIO ()
  setOnmousemove a b = primJS $ GlobalEventHandlers.prim__setOnmousemove a b
  
  export
  onmouseout : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onmouseout a = primJS $ GlobalEventHandlers.prim__onmouseout a
  
  export
  setOnmouseout :  (obj : GlobalEventHandlers)
                -> (value : EventHandler)
                -> JSIO ()
  setOnmouseout a b = primJS $ GlobalEventHandlers.prim__setOnmouseout a b
  
  export
  onmouseover : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onmouseover a = primJS $ GlobalEventHandlers.prim__onmouseover a
  
  export
  setOnmouseover :  (obj : GlobalEventHandlers)
                 -> (value : EventHandler)
                 -> JSIO ()
  setOnmouseover a b = primJS $ GlobalEventHandlers.prim__setOnmouseover a b
  
  export
  onmouseup : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onmouseup a = primJS $ GlobalEventHandlers.prim__onmouseup a
  
  export
  setOnmouseup :  (obj : GlobalEventHandlers)
               -> (value : EventHandler)
               -> JSIO ()
  setOnmouseup a b = primJS $ GlobalEventHandlers.prim__setOnmouseup a b
  
  export
  onpause : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onpause a = primJS $ GlobalEventHandlers.prim__onpause a
  
  export
  setOnpause : (obj : GlobalEventHandlers) -> (value : EventHandler) -> JSIO ()
  setOnpause a b = primJS $ GlobalEventHandlers.prim__setOnpause a b
  
  export
  onplay : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onplay a = primJS $ GlobalEventHandlers.prim__onplay a
  
  export
  setOnplay : (obj : GlobalEventHandlers) -> (value : EventHandler) -> JSIO ()
  setOnplay a b = primJS $ GlobalEventHandlers.prim__setOnplay a b
  
  export
  onplaying : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onplaying a = primJS $ GlobalEventHandlers.prim__onplaying a
  
  export
  setOnplaying :  (obj : GlobalEventHandlers)
               -> (value : EventHandler)
               -> JSIO ()
  setOnplaying a b = primJS $ GlobalEventHandlers.prim__setOnplaying a b
  
  export
  onprogress : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onprogress a = primJS $ GlobalEventHandlers.prim__onprogress a
  
  export
  setOnprogress :  (obj : GlobalEventHandlers)
                -> (value : EventHandler)
                -> JSIO ()
  setOnprogress a b = primJS $ GlobalEventHandlers.prim__setOnprogress a b
  
  export
  onratechange : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onratechange a = primJS $ GlobalEventHandlers.prim__onratechange a
  
  export
  setOnratechange :  (obj : GlobalEventHandlers)
                  -> (value : EventHandler)
                  -> JSIO ()
  setOnratechange a b = primJS $ GlobalEventHandlers.prim__setOnratechange a b
  
  export
  onreset : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onreset a = primJS $ GlobalEventHandlers.prim__onreset a
  
  export
  setOnreset : (obj : GlobalEventHandlers) -> (value : EventHandler) -> JSIO ()
  setOnreset a b = primJS $ GlobalEventHandlers.prim__setOnreset a b
  
  export
  onresize : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onresize a = primJS $ GlobalEventHandlers.prim__onresize a
  
  export
  setOnresize : (obj : GlobalEventHandlers) -> (value : EventHandler) -> JSIO ()
  setOnresize a b = primJS $ GlobalEventHandlers.prim__setOnresize a b
  
  export
  onscroll : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onscroll a = primJS $ GlobalEventHandlers.prim__onscroll a
  
  export
  setOnscroll : (obj : GlobalEventHandlers) -> (value : EventHandler) -> JSIO ()
  setOnscroll a b = primJS $ GlobalEventHandlers.prim__setOnscroll a b
  
  export
  onsecuritypolicyviolation : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onsecuritypolicyviolation a = primJS $ GlobalEventHandlers.prim__onsecuritypolicyviolation a
  
  export
  setOnsecuritypolicyviolation :  (obj : GlobalEventHandlers)
                               -> (value : EventHandler)
                               -> JSIO ()
  setOnsecuritypolicyviolation a b = primJS $ GlobalEventHandlers.prim__setOnsecuritypolicyviolation a
                                                                                                     b
  
  export
  onseeked : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onseeked a = primJS $ GlobalEventHandlers.prim__onseeked a
  
  export
  setOnseeked : (obj : GlobalEventHandlers) -> (value : EventHandler) -> JSIO ()
  setOnseeked a b = primJS $ GlobalEventHandlers.prim__setOnseeked a b
  
  export
  onseeking : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onseeking a = primJS $ GlobalEventHandlers.prim__onseeking a
  
  export
  setOnseeking :  (obj : GlobalEventHandlers)
               -> (value : EventHandler)
               -> JSIO ()
  setOnseeking a b = primJS $ GlobalEventHandlers.prim__setOnseeking a b
  
  export
  onselect : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onselect a = primJS $ GlobalEventHandlers.prim__onselect a
  
  export
  setOnselect : (obj : GlobalEventHandlers) -> (value : EventHandler) -> JSIO ()
  setOnselect a b = primJS $ GlobalEventHandlers.prim__setOnselect a b
  
  export
  onslotchange : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onslotchange a = primJS $ GlobalEventHandlers.prim__onslotchange a
  
  export
  setOnslotchange :  (obj : GlobalEventHandlers)
                  -> (value : EventHandler)
                  -> JSIO ()
  setOnslotchange a b = primJS $ GlobalEventHandlers.prim__setOnslotchange a b
  
  export
  onstalled : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onstalled a = primJS $ GlobalEventHandlers.prim__onstalled a
  
  export
  setOnstalled :  (obj : GlobalEventHandlers)
               -> (value : EventHandler)
               -> JSIO ()
  setOnstalled a b = primJS $ GlobalEventHandlers.prim__setOnstalled a b
  
  export
  onsubmit : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onsubmit a = primJS $ GlobalEventHandlers.prim__onsubmit a
  
  export
  setOnsubmit : (obj : GlobalEventHandlers) -> (value : EventHandler) -> JSIO ()
  setOnsubmit a b = primJS $ GlobalEventHandlers.prim__setOnsubmit a b
  
  export
  onsuspend : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onsuspend a = primJS $ GlobalEventHandlers.prim__onsuspend a
  
  export
  setOnsuspend :  (obj : GlobalEventHandlers)
               -> (value : EventHandler)
               -> JSIO ()
  setOnsuspend a b = primJS $ GlobalEventHandlers.prim__setOnsuspend a b
  
  export
  ontimeupdate : (obj : GlobalEventHandlers) -> JSIO EventHandler
  ontimeupdate a = primJS $ GlobalEventHandlers.prim__ontimeupdate a
  
  export
  setOntimeupdate :  (obj : GlobalEventHandlers)
                  -> (value : EventHandler)
                  -> JSIO ()
  setOntimeupdate a b = primJS $ GlobalEventHandlers.prim__setOntimeupdate a b
  
  export
  ontoggle : (obj : GlobalEventHandlers) -> JSIO EventHandler
  ontoggle a = primJS $ GlobalEventHandlers.prim__ontoggle a
  
  export
  setOntoggle : (obj : GlobalEventHandlers) -> (value : EventHandler) -> JSIO ()
  setOntoggle a b = primJS $ GlobalEventHandlers.prim__setOntoggle a b
  
  export
  onvolumechange : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onvolumechange a = primJS $ GlobalEventHandlers.prim__onvolumechange a
  
  export
  setOnvolumechange :  (obj : GlobalEventHandlers)
                    -> (value : EventHandler)
                    -> JSIO ()
  setOnvolumechange a b = primJS $ GlobalEventHandlers.prim__setOnvolumechange a
                                                                               b
  
  export
  onwaiting : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onwaiting a = primJS $ GlobalEventHandlers.prim__onwaiting a
  
  export
  setOnwaiting :  (obj : GlobalEventHandlers)
               -> (value : EventHandler)
               -> JSIO ()
  setOnwaiting a b = primJS $ GlobalEventHandlers.prim__setOnwaiting a b
  
  export
  onwebkitanimationend : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onwebkitanimationend a = primJS $ GlobalEventHandlers.prim__onwebkitanimationend a
  
  export
  setOnwebkitanimationend :  (obj : GlobalEventHandlers)
                          -> (value : EventHandler)
                          -> JSIO ()
  setOnwebkitanimationend a b = primJS $ GlobalEventHandlers.prim__setOnwebkitanimationend a
                                                                                           b
  
  export
  onwebkitanimationiteration : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onwebkitanimationiteration a = primJS $ GlobalEventHandlers.prim__onwebkitanimationiteration a
  
  export
  setOnwebkitanimationiteration :  (obj : GlobalEventHandlers)
                                -> (value : EventHandler)
                                -> JSIO ()
  setOnwebkitanimationiteration a b = primJS $ GlobalEventHandlers.prim__setOnwebkitanimationiteration a
                                                                                                       b
  
  export
  onwebkitanimationstart : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onwebkitanimationstart a = primJS $ GlobalEventHandlers.prim__onwebkitanimationstart a
  
  export
  setOnwebkitanimationstart :  (obj : GlobalEventHandlers)
                            -> (value : EventHandler)
                            -> JSIO ()
  setOnwebkitanimationstart a b = primJS $ GlobalEventHandlers.prim__setOnwebkitanimationstart a
                                                                                               b
  
  export
  onwebkittransitionend : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onwebkittransitionend a = primJS $ GlobalEventHandlers.prim__onwebkittransitionend a
  
  export
  setOnwebkittransitionend :  (obj : GlobalEventHandlers)
                           -> (value : EventHandler)
                           -> JSIO ()
  setOnwebkittransitionend a b = primJS $ GlobalEventHandlers.prim__setOnwebkittransitionend a
                                                                                             b
  
  export
  onwheel : (obj : GlobalEventHandlers) -> JSIO EventHandler
  onwheel a = primJS $ GlobalEventHandlers.prim__onwheel a
  
  export
  setOnwheel : (obj : GlobalEventHandlers) -> (value : EventHandler) -> JSIO ()
  setOnwheel a b = primJS $ GlobalEventHandlers.prim__setOnwheel a b

namespace HTMLHyperlinkElementUtils
  
  export
  hash : (obj : HTMLHyperlinkElementUtils) -> JSIO String
  hash a = primJS $ HTMLHyperlinkElementUtils.prim__hash a
  
  export
  setHash : (obj : HTMLHyperlinkElementUtils) -> (value : String) -> JSIO ()
  setHash a b = primJS $ HTMLHyperlinkElementUtils.prim__setHash a b
  
  export
  host : (obj : HTMLHyperlinkElementUtils) -> JSIO String
  host a = primJS $ HTMLHyperlinkElementUtils.prim__host a
  
  export
  setHost : (obj : HTMLHyperlinkElementUtils) -> (value : String) -> JSIO ()
  setHost a b = primJS $ HTMLHyperlinkElementUtils.prim__setHost a b
  
  export
  hostname : (obj : HTMLHyperlinkElementUtils) -> JSIO String
  hostname a = primJS $ HTMLHyperlinkElementUtils.prim__hostname a
  
  export
  setHostname : (obj : HTMLHyperlinkElementUtils) -> (value : String) -> JSIO ()
  setHostname a b = primJS $ HTMLHyperlinkElementUtils.prim__setHostname a b
  
  export
  origin : (obj : HTMLHyperlinkElementUtils) -> JSIO String
  origin a = primJS $ HTMLHyperlinkElementUtils.prim__origin a
  
  export
  password : (obj : HTMLHyperlinkElementUtils) -> JSIO String
  password a = primJS $ HTMLHyperlinkElementUtils.prim__password a
  
  export
  setPassword : (obj : HTMLHyperlinkElementUtils) -> (value : String) -> JSIO ()
  setPassword a b = primJS $ HTMLHyperlinkElementUtils.prim__setPassword a b
  
  export
  pathname : (obj : HTMLHyperlinkElementUtils) -> JSIO String
  pathname a = primJS $ HTMLHyperlinkElementUtils.prim__pathname a
  
  export
  setPathname : (obj : HTMLHyperlinkElementUtils) -> (value : String) -> JSIO ()
  setPathname a b = primJS $ HTMLHyperlinkElementUtils.prim__setPathname a b
  
  export
  port : (obj : HTMLHyperlinkElementUtils) -> JSIO String
  port a = primJS $ HTMLHyperlinkElementUtils.prim__port a
  
  export
  setPort : (obj : HTMLHyperlinkElementUtils) -> (value : String) -> JSIO ()
  setPort a b = primJS $ HTMLHyperlinkElementUtils.prim__setPort a b
  
  export
  protocol : (obj : HTMLHyperlinkElementUtils) -> JSIO String
  protocol a = primJS $ HTMLHyperlinkElementUtils.prim__protocol a
  
  export
  setProtocol : (obj : HTMLHyperlinkElementUtils) -> (value : String) -> JSIO ()
  setProtocol a b = primJS $ HTMLHyperlinkElementUtils.prim__setProtocol a b
  
  export
  search : (obj : HTMLHyperlinkElementUtils) -> JSIO String
  search a = primJS $ HTMLHyperlinkElementUtils.prim__search a
  
  export
  setSearch : (obj : HTMLHyperlinkElementUtils) -> (value : String) -> JSIO ()
  setSearch a b = primJS $ HTMLHyperlinkElementUtils.prim__setSearch a b
  
  export
  username : (obj : HTMLHyperlinkElementUtils) -> JSIO String
  username a = primJS $ HTMLHyperlinkElementUtils.prim__username a
  
  export
  setUsername : (obj : HTMLHyperlinkElementUtils) -> (value : String) -> JSIO ()
  setUsername a b = primJS $ HTMLHyperlinkElementUtils.prim__setUsername a b

namespace HTMLOrSVGElement
  
  export
  autofocus : (obj : HTMLOrSVGElement) -> JSIO Boolean
  autofocus a = primJS $ HTMLOrSVGElement.prim__autofocus a
  
  export
  setAutofocus : (obj : HTMLOrSVGElement) -> (value : Boolean) -> JSIO ()
  setAutofocus a b = primJS $ HTMLOrSVGElement.prim__setAutofocus a b
  
  export
  dataset : (obj : HTMLOrSVGElement) -> JSIO DOMStringMap
  dataset a = primJS $ HTMLOrSVGElement.prim__dataset a
  
  export
  nonce : (obj : HTMLOrSVGElement) -> JSIO String
  nonce a = primJS $ HTMLOrSVGElement.prim__nonce a
  
  export
  setNonce : (obj : HTMLOrSVGElement) -> (value : String) -> JSIO ()
  setNonce a b = primJS $ HTMLOrSVGElement.prim__setNonce a b
  
  export
  tabIndex : (obj : HTMLOrSVGElement) -> JSIO Int32
  tabIndex a = primJS $ HTMLOrSVGElement.prim__tabIndex a
  
  export
  setTabIndex : (obj : HTMLOrSVGElement) -> (value : Int32) -> JSIO ()
  setTabIndex a b = primJS $ HTMLOrSVGElement.prim__setTabIndex a b
  
  export
  blur : (obj : HTMLOrSVGElement) -> JSIO ()
  blur a = primJS $ HTMLOrSVGElement.prim__blur a
  
  export
  focus :  (obj : HTMLOrSVGElement)
        -> (options : UndefOr FocusOptions)
        -> JSIO ()
  focus a b = primJS $ HTMLOrSVGElement.prim__focus a b

namespace NavigatorConcurrentHardware
  
  export
  hardwareConcurrency : (obj : NavigatorConcurrentHardware) -> JSIO UInt64
  hardwareConcurrency a = primJS $ NavigatorConcurrentHardware.prim__hardwareConcurrency a

namespace NavigatorContentUtils
  
  export
  registerProtocolHandler :  (obj : NavigatorContentUtils)
                          -> (scheme : String)
                          -> (url : String)
                          -> JSIO ()
  registerProtocolHandler a b c = primJS $ NavigatorContentUtils.prim__registerProtocolHandler a
                                                                                               b
                                                                                               c
  
  export
  unregisterProtocolHandler :  (obj : NavigatorContentUtils)
                            -> (scheme : String)
                            -> (url : String)
                            -> JSIO ()
  unregisterProtocolHandler a b c = primJS $ NavigatorContentUtils.prim__unregisterProtocolHandler a
                                                                                                   b
                                                                                                   c

namespace NavigatorCookies
  
  export
  cookieEnabled : (obj : NavigatorCookies) -> JSIO Boolean
  cookieEnabled a = primJS $ NavigatorCookies.prim__cookieEnabled a

namespace NavigatorID
  
  export
  appCodeName : (obj : NavigatorID) -> JSIO String
  appCodeName a = primJS $ NavigatorID.prim__appCodeName a
  
  export
  appName : (obj : NavigatorID) -> JSIO String
  appName a = primJS $ NavigatorID.prim__appName a
  
  export
  appVersion : (obj : NavigatorID) -> JSIO String
  appVersion a = primJS $ NavigatorID.prim__appVersion a
  
  export
  platform : (obj : NavigatorID) -> JSIO String
  platform a = primJS $ NavigatorID.prim__platform a
  
  export
  product : (obj : NavigatorID) -> JSIO String
  product a = primJS $ NavigatorID.prim__product a
  
  export
  productSub : (obj : NavigatorID) -> JSIO String
  productSub a = primJS $ NavigatorID.prim__productSub a
  
  export
  userAgent : (obj : NavigatorID) -> JSIO String
  userAgent a = primJS $ NavigatorID.prim__userAgent a
  
  export
  vendor : (obj : NavigatorID) -> JSIO String
  vendor a = primJS $ NavigatorID.prim__vendor a
  
  export
  vendorSub : (obj : NavigatorID) -> JSIO String
  vendorSub a = primJS $ NavigatorID.prim__vendorSub a

namespace NavigatorLanguage
  
  export
  language : (obj : NavigatorLanguage) -> JSIO String
  language a = primJS $ NavigatorLanguage.prim__language a
  
  export
  languages : (obj : NavigatorLanguage) -> JSIO (Array String)
  languages a = primJS $ NavigatorLanguage.prim__languages a

namespace NavigatorOnLine
  
  export
  onLine : (obj : NavigatorOnLine) -> JSIO Boolean
  onLine a = primJS $ NavigatorOnLine.prim__onLine a

namespace NavigatorPlugins
  
  export
  mimeTypes : (obj : NavigatorPlugins) -> JSIO MimeTypeArray
  mimeTypes a = primJS $ NavigatorPlugins.prim__mimeTypes a
  
  export
  plugins : (obj : NavigatorPlugins) -> JSIO PluginArray
  plugins a = primJS $ NavigatorPlugins.prim__plugins a
  
  export
  javaEnabled : (obj : NavigatorPlugins) -> JSIO Boolean
  javaEnabled a = primJS $ NavigatorPlugins.prim__javaEnabled a

namespace WindowEventHandlers
  
  export
  onafterprint : (obj : WindowEventHandlers) -> JSIO EventHandler
  onafterprint a = primJS $ WindowEventHandlers.prim__onafterprint a
  
  export
  setOnafterprint :  (obj : WindowEventHandlers)
                  -> (value : EventHandler)
                  -> JSIO ()
  setOnafterprint a b = primJS $ WindowEventHandlers.prim__setOnafterprint a b
  
  export
  onbeforeprint : (obj : WindowEventHandlers) -> JSIO EventHandler
  onbeforeprint a = primJS $ WindowEventHandlers.prim__onbeforeprint a
  
  export
  setOnbeforeprint :  (obj : WindowEventHandlers)
                   -> (value : EventHandler)
                   -> JSIO ()
  setOnbeforeprint a b = primJS $ WindowEventHandlers.prim__setOnbeforeprint a b
  
  export
  onbeforeunload :  (obj : WindowEventHandlers)
                 -> JSIO OnBeforeUnloadEventHandler
  onbeforeunload a = primJS $ WindowEventHandlers.prim__onbeforeunload a
  
  export
  setOnbeforeunload :  (obj : WindowEventHandlers)
                    -> (value : OnBeforeUnloadEventHandler)
                    -> JSIO ()
  setOnbeforeunload a b = primJS $ WindowEventHandlers.prim__setOnbeforeunload a
                                                                               b
  
  export
  onhashchange : (obj : WindowEventHandlers) -> JSIO EventHandler
  onhashchange a = primJS $ WindowEventHandlers.prim__onhashchange a
  
  export
  setOnhashchange :  (obj : WindowEventHandlers)
                  -> (value : EventHandler)
                  -> JSIO ()
  setOnhashchange a b = primJS $ WindowEventHandlers.prim__setOnhashchange a b
  
  export
  onlanguagechange : (obj : WindowEventHandlers) -> JSIO EventHandler
  onlanguagechange a = primJS $ WindowEventHandlers.prim__onlanguagechange a
  
  export
  setOnlanguagechange :  (obj : WindowEventHandlers)
                      -> (value : EventHandler)
                      -> JSIO ()
  setOnlanguagechange a b = primJS $ WindowEventHandlers.prim__setOnlanguagechange a
                                                                                   b
  
  export
  onmessage : (obj : WindowEventHandlers) -> JSIO EventHandler
  onmessage a = primJS $ WindowEventHandlers.prim__onmessage a
  
  export
  setOnmessage :  (obj : WindowEventHandlers)
               -> (value : EventHandler)
               -> JSIO ()
  setOnmessage a b = primJS $ WindowEventHandlers.prim__setOnmessage a b
  
  export
  onmessageerror : (obj : WindowEventHandlers) -> JSIO EventHandler
  onmessageerror a = primJS $ WindowEventHandlers.prim__onmessageerror a
  
  export
  setOnmessageerror :  (obj : WindowEventHandlers)
                    -> (value : EventHandler)
                    -> JSIO ()
  setOnmessageerror a b = primJS $ WindowEventHandlers.prim__setOnmessageerror a
                                                                               b
  
  export
  onoffline : (obj : WindowEventHandlers) -> JSIO EventHandler
  onoffline a = primJS $ WindowEventHandlers.prim__onoffline a
  
  export
  setOnoffline :  (obj : WindowEventHandlers)
               -> (value : EventHandler)
               -> JSIO ()
  setOnoffline a b = primJS $ WindowEventHandlers.prim__setOnoffline a b
  
  export
  ononline : (obj : WindowEventHandlers) -> JSIO EventHandler
  ononline a = primJS $ WindowEventHandlers.prim__ononline a
  
  export
  setOnonline : (obj : WindowEventHandlers) -> (value : EventHandler) -> JSIO ()
  setOnonline a b = primJS $ WindowEventHandlers.prim__setOnonline a b
  
  export
  onpagehide : (obj : WindowEventHandlers) -> JSIO EventHandler
  onpagehide a = primJS $ WindowEventHandlers.prim__onpagehide a
  
  export
  setOnpagehide :  (obj : WindowEventHandlers)
                -> (value : EventHandler)
                -> JSIO ()
  setOnpagehide a b = primJS $ WindowEventHandlers.prim__setOnpagehide a b
  
  export
  onpageshow : (obj : WindowEventHandlers) -> JSIO EventHandler
  onpageshow a = primJS $ WindowEventHandlers.prim__onpageshow a
  
  export
  setOnpageshow :  (obj : WindowEventHandlers)
                -> (value : EventHandler)
                -> JSIO ()
  setOnpageshow a b = primJS $ WindowEventHandlers.prim__setOnpageshow a b
  
  export
  onpopstate : (obj : WindowEventHandlers) -> JSIO EventHandler
  onpopstate a = primJS $ WindowEventHandlers.prim__onpopstate a
  
  export
  setOnpopstate :  (obj : WindowEventHandlers)
                -> (value : EventHandler)
                -> JSIO ()
  setOnpopstate a b = primJS $ WindowEventHandlers.prim__setOnpopstate a b
  
  export
  onrejectionhandled : (obj : WindowEventHandlers) -> JSIO EventHandler
  onrejectionhandled a = primJS $ WindowEventHandlers.prim__onrejectionhandled a
  
  export
  setOnrejectionhandled :  (obj : WindowEventHandlers)
                        -> (value : EventHandler)
                        -> JSIO ()
  setOnrejectionhandled a b = primJS $ WindowEventHandlers.prim__setOnrejectionhandled a
                                                                                       b
  
  export
  onstorage : (obj : WindowEventHandlers) -> JSIO EventHandler
  onstorage a = primJS $ WindowEventHandlers.prim__onstorage a
  
  export
  setOnstorage :  (obj : WindowEventHandlers)
               -> (value : EventHandler)
               -> JSIO ()
  setOnstorage a b = primJS $ WindowEventHandlers.prim__setOnstorage a b
  
  export
  onunhandledrejection : (obj : WindowEventHandlers) -> JSIO EventHandler
  onunhandledrejection a = primJS $ WindowEventHandlers.prim__onunhandledrejection a
  
  export
  setOnunhandledrejection :  (obj : WindowEventHandlers)
                          -> (value : EventHandler)
                          -> JSIO ()
  setOnunhandledrejection a b = primJS $ WindowEventHandlers.prim__setOnunhandledrejection a
                                                                                           b
  
  export
  onunload : (obj : WindowEventHandlers) -> JSIO EventHandler
  onunload a = primJS $ WindowEventHandlers.prim__onunload a
  
  export
  setOnunload : (obj : WindowEventHandlers) -> (value : EventHandler) -> JSIO ()
  setOnunload a b = primJS $ WindowEventHandlers.prim__setOnunload a b

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace AssignedNodesOptions
  
  public export
  JSType AssignedNodesOptions where
    parents =  [ Object ]

    mixins =  []
  
  export
  new : (flatten : UndefOr Boolean) -> JSIO AssignedNodesOptions
  new a = primJS $ AssignedNodesOptions.prim__new a
  
  export
  flatten : (obj : AssignedNodesOptions) -> JSIO (UndefOr Boolean)
  flatten a = primJS $ AssignedNodesOptions.prim__flatten a
  
  export
  setFlatten :  (obj : AssignedNodesOptions)
             -> (value : UndefOr Boolean)
             -> JSIO ()
  setFlatten a b = primJS $ AssignedNodesOptions.prim__setFlatten a b

namespace CanvasRenderingContext2DSettings
  
  public export
  JSType CanvasRenderingContext2DSettings where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (alpha : UndefOr Boolean)
      -> (desynchronized : UndefOr Boolean)
      -> JSIO CanvasRenderingContext2DSettings
  new a b = primJS $ CanvasRenderingContext2DSettings.prim__new a b
  
  export
  alpha : (obj : CanvasRenderingContext2DSettings) -> JSIO (UndefOr Boolean)
  alpha a = primJS $ CanvasRenderingContext2DSettings.prim__alpha a
  
  export
  setAlpha :  (obj : CanvasRenderingContext2DSettings)
           -> (value : UndefOr Boolean)
           -> JSIO ()
  setAlpha a b = primJS $ CanvasRenderingContext2DSettings.prim__setAlpha a b
  
  export
  desynchronized :  (obj : CanvasRenderingContext2DSettings)
                 -> JSIO (UndefOr Boolean)
  desynchronized a = primJS $ CanvasRenderingContext2DSettings.prim__desynchronized a
  
  export
  setDesynchronized :  (obj : CanvasRenderingContext2DSettings)
                    -> (value : UndefOr Boolean)
                    -> JSIO ()
  setDesynchronized a b = primJS $ CanvasRenderingContext2DSettings.prim__setDesynchronized a
                                                                                            b

namespace CloseEventInit
  
  public export
  JSType CloseEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []
  
  export
  new :  (wasClean : UndefOr Boolean)
      -> (code : UndefOr UInt16)
      -> (reason : UndefOr String)
      -> JSIO CloseEventInit
  new a b c = primJS $ CloseEventInit.prim__new a b c
  
  export
  code : (obj : CloseEventInit) -> JSIO (UndefOr UInt16)
  code a = primJS $ CloseEventInit.prim__code a
  
  export
  setCode : (obj : CloseEventInit) -> (value : UndefOr UInt16) -> JSIO ()
  setCode a b = primJS $ CloseEventInit.prim__setCode a b
  
  export
  reason : (obj : CloseEventInit) -> JSIO (UndefOr String)
  reason a = primJS $ CloseEventInit.prim__reason a
  
  export
  setReason : (obj : CloseEventInit) -> (value : UndefOr String) -> JSIO ()
  setReason a b = primJS $ CloseEventInit.prim__setReason a b
  
  export
  wasClean : (obj : CloseEventInit) -> JSIO (UndefOr Boolean)
  wasClean a = primJS $ CloseEventInit.prim__wasClean a
  
  export
  setWasClean : (obj : CloseEventInit) -> (value : UndefOr Boolean) -> JSIO ()
  setWasClean a b = primJS $ CloseEventInit.prim__setWasClean a b

namespace DragEventInit
  
  public export
  JSType DragEventInit where
    parents =  [ MouseEventInit
               , EventModifierInit
               , UIEventInit
               , EventInit
               , Object
               ]

    mixins =  []
  
  export
  new : (dataTransfer : UndefOr (Nullable DataTransfer)) -> JSIO DragEventInit
  new a = primJS $ DragEventInit.prim__new a
  
  export
  dataTransfer : (obj : DragEventInit) -> JSIO (UndefOr (Nullable DataTransfer))
  dataTransfer a = primJS $ DragEventInit.prim__dataTransfer a
  
  export
  setDataTransfer :  (obj : DragEventInit)
                  -> (value : UndefOr (Nullable DataTransfer))
                  -> JSIO ()
  setDataTransfer a b = primJS $ DragEventInit.prim__setDataTransfer a b

namespace ElementDefinitionOptions
  
  public export
  JSType ElementDefinitionOptions where
    parents =  [ Object ]

    mixins =  []
  
  export
  new : (extends : UndefOr String) -> JSIO ElementDefinitionOptions
  new a = primJS $ ElementDefinitionOptions.prim__new a
  
  export
  extends : (obj : ElementDefinitionOptions) -> JSIO (UndefOr String)
  extends a = primJS $ ElementDefinitionOptions.prim__extends a
  
  export
  setExtends :  (obj : ElementDefinitionOptions)
             -> (value : UndefOr String)
             -> JSIO ()
  setExtends a b = primJS $ ElementDefinitionOptions.prim__setExtends a b

namespace ErrorEventInit
  
  public export
  JSType ErrorEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []
  
  export
  new :  (message : UndefOr String)
      -> (filename : UndefOr String)
      -> (lineno : UndefOr UInt32)
      -> (colno : UndefOr UInt32)
      -> (error : UndefOr AnyPtr)
      -> JSIO ErrorEventInit
  new a b c d e = primJS $ ErrorEventInit.prim__new a b c d e
  
  export
  colno : (obj : ErrorEventInit) -> JSIO (UndefOr UInt32)
  colno a = primJS $ ErrorEventInit.prim__colno a
  
  export
  setColno : (obj : ErrorEventInit) -> (value : UndefOr UInt32) -> JSIO ()
  setColno a b = primJS $ ErrorEventInit.prim__setColno a b
  
  export
  error : (obj : ErrorEventInit) -> JSIO (UndefOr AnyPtr)
  error a = primJS $ ErrorEventInit.prim__error a
  
  export
  setError : (obj : ErrorEventInit) -> (value : UndefOr AnyPtr) -> JSIO ()
  setError a b = primJS $ ErrorEventInit.prim__setError a b
  
  export
  filename : (obj : ErrorEventInit) -> JSIO (UndefOr String)
  filename a = primJS $ ErrorEventInit.prim__filename a
  
  export
  setFilename : (obj : ErrorEventInit) -> (value : UndefOr String) -> JSIO ()
  setFilename a b = primJS $ ErrorEventInit.prim__setFilename a b
  
  export
  lineno : (obj : ErrorEventInit) -> JSIO (UndefOr UInt32)
  lineno a = primJS $ ErrorEventInit.prim__lineno a
  
  export
  setLineno : (obj : ErrorEventInit) -> (value : UndefOr UInt32) -> JSIO ()
  setLineno a b = primJS $ ErrorEventInit.prim__setLineno a b
  
  export
  message : (obj : ErrorEventInit) -> JSIO (UndefOr String)
  message a = primJS $ ErrorEventInit.prim__message a
  
  export
  setMessage : (obj : ErrorEventInit) -> (value : UndefOr String) -> JSIO ()
  setMessage a b = primJS $ ErrorEventInit.prim__setMessage a b

namespace EventSourceInit
  
  public export
  JSType EventSourceInit where
    parents =  [ Object ]

    mixins =  []
  
  export
  new : (withCredentials : UndefOr Boolean) -> JSIO EventSourceInit
  new a = primJS $ EventSourceInit.prim__new a
  
  export
  withCredentials : (obj : EventSourceInit) -> JSIO (UndefOr Boolean)
  withCredentials a = primJS $ EventSourceInit.prim__withCredentials a
  
  export
  setWithCredentials :  (obj : EventSourceInit)
                     -> (value : UndefOr Boolean)
                     -> JSIO ()
  setWithCredentials a b = primJS $ EventSourceInit.prim__setWithCredentials a b

namespace FocusOptions
  
  public export
  JSType FocusOptions where
    parents =  [ Object ]

    mixins =  []
  
  export
  new : (preventScroll : UndefOr Boolean) -> JSIO FocusOptions
  new a = primJS $ FocusOptions.prim__new a
  
  export
  preventScroll : (obj : FocusOptions) -> JSIO (UndefOr Boolean)
  preventScroll a = primJS $ FocusOptions.prim__preventScroll a
  
  export
  setPreventScroll :  (obj : FocusOptions)
                   -> (value : UndefOr Boolean)
                   -> JSIO ()
  setPreventScroll a b = primJS $ FocusOptions.prim__setPreventScroll a b

namespace FormDataEventInit
  
  public export
  JSType FormDataEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []
  
  export
  new : (formData : FormData) -> JSIO FormDataEventInit
  new a = primJS $ FormDataEventInit.prim__new a
  
  export
  formData : (obj : FormDataEventInit) -> JSIO FormData
  formData a = primJS $ FormDataEventInit.prim__formData a
  
  export
  setFormData : (obj : FormDataEventInit) -> (value : FormData) -> JSIO ()
  setFormData a b = primJS $ FormDataEventInit.prim__setFormData a b

namespace HashChangeEventInit
  
  public export
  JSType HashChangeEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []
  
  export
  new :  (oldURL : UndefOr String)
      -> (newURL : UndefOr String)
      -> JSIO HashChangeEventInit
  new a b = primJS $ HashChangeEventInit.prim__new a b
  
  export
  newURL : (obj : HashChangeEventInit) -> JSIO (UndefOr String)
  newURL a = primJS $ HashChangeEventInit.prim__newURL a
  
  export
  setNewURL : (obj : HashChangeEventInit) -> (value : UndefOr String) -> JSIO ()
  setNewURL a b = primJS $ HashChangeEventInit.prim__setNewURL a b
  
  export
  oldURL : (obj : HashChangeEventInit) -> JSIO (UndefOr String)
  oldURL a = primJS $ HashChangeEventInit.prim__oldURL a
  
  export
  setOldURL : (obj : HashChangeEventInit) -> (value : UndefOr String) -> JSIO ()
  setOldURL a b = primJS $ HashChangeEventInit.prim__setOldURL a b

namespace ImageBitmapOptions
  
  public export
  JSType ImageBitmapOptions where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (imageOrientation : UndefOr ImageOrientation)
      -> (premultiplyAlpha : UndefOr PremultiplyAlpha)
      -> (colorSpaceConversion : UndefOr ColorSpaceConversion)
      -> (resizeWidth : UndefOr UInt32)
      -> (resizeHeight : UndefOr UInt32)
      -> (resizeQuality : UndefOr ResizeQuality)
      -> JSIO ImageBitmapOptions
  new a b c d e f = primJS $ ImageBitmapOptions.prim__new a b c d e f
  
  export
  colorSpaceConversion :  (obj : ImageBitmapOptions)
                       -> JSIO (UndefOr ColorSpaceConversion)
  colorSpaceConversion a = primJS $ ImageBitmapOptions.prim__colorSpaceConversion a
  
  export
  setColorSpaceConversion :  (obj : ImageBitmapOptions)
                          -> (value : UndefOr ColorSpaceConversion)
                          -> JSIO ()
  setColorSpaceConversion a b = primJS $ ImageBitmapOptions.prim__setColorSpaceConversion a
                                                                                          b
  
  export
  imageOrientation :  (obj : ImageBitmapOptions)
                   -> JSIO (UndefOr ImageOrientation)
  imageOrientation a = primJS $ ImageBitmapOptions.prim__imageOrientation a
  
  export
  setImageOrientation :  (obj : ImageBitmapOptions)
                      -> (value : UndefOr ImageOrientation)
                      -> JSIO ()
  setImageOrientation a b = primJS $ ImageBitmapOptions.prim__setImageOrientation a
                                                                                  b
  
  export
  premultiplyAlpha :  (obj : ImageBitmapOptions)
                   -> JSIO (UndefOr PremultiplyAlpha)
  premultiplyAlpha a = primJS $ ImageBitmapOptions.prim__premultiplyAlpha a
  
  export
  setPremultiplyAlpha :  (obj : ImageBitmapOptions)
                      -> (value : UndefOr PremultiplyAlpha)
                      -> JSIO ()
  setPremultiplyAlpha a b = primJS $ ImageBitmapOptions.prim__setPremultiplyAlpha a
                                                                                  b
  
  export
  resizeHeight : (obj : ImageBitmapOptions) -> JSIO (UndefOr UInt32)
  resizeHeight a = primJS $ ImageBitmapOptions.prim__resizeHeight a
  
  export
  setResizeHeight :  (obj : ImageBitmapOptions)
                  -> (value : UndefOr UInt32)
                  -> JSIO ()
  setResizeHeight a b = primJS $ ImageBitmapOptions.prim__setResizeHeight a b
  
  export
  resizeQuality : (obj : ImageBitmapOptions) -> JSIO (UndefOr ResizeQuality)
  resizeQuality a = primJS $ ImageBitmapOptions.prim__resizeQuality a
  
  export
  setResizeQuality :  (obj : ImageBitmapOptions)
                   -> (value : UndefOr ResizeQuality)
                   -> JSIO ()
  setResizeQuality a b = primJS $ ImageBitmapOptions.prim__setResizeQuality a b
  
  export
  resizeWidth : (obj : ImageBitmapOptions) -> JSIO (UndefOr UInt32)
  resizeWidth a = primJS $ ImageBitmapOptions.prim__resizeWidth a
  
  export
  setResizeWidth :  (obj : ImageBitmapOptions)
                 -> (value : UndefOr UInt32)
                 -> JSIO ()
  setResizeWidth a b = primJS $ ImageBitmapOptions.prim__setResizeWidth a b

namespace ImageBitmapRenderingContextSettings
  
  public export
  JSType ImageBitmapRenderingContextSettings where
    parents =  [ Object ]

    mixins =  []
  
  export
  new : (alpha : UndefOr Boolean) -> JSIO ImageBitmapRenderingContextSettings
  new a = primJS $ ImageBitmapRenderingContextSettings.prim__new a
  
  export
  alpha : (obj : ImageBitmapRenderingContextSettings) -> JSIO (UndefOr Boolean)
  alpha a = primJS $ ImageBitmapRenderingContextSettings.prim__alpha a
  
  export
  setAlpha :  (obj : ImageBitmapRenderingContextSettings)
           -> (value : UndefOr Boolean)
           -> JSIO ()
  setAlpha a b = primJS $ ImageBitmapRenderingContextSettings.prim__setAlpha a b

namespace ImageEncodeOptions
  
  public export
  JSType ImageEncodeOptions where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (type : UndefOr String)
      -> (quality : UndefOr Double)
      -> JSIO ImageEncodeOptions
  new a b = primJS $ ImageEncodeOptions.prim__new a b
  
  export
  quality : (obj : ImageEncodeOptions) -> JSIO (UndefOr Double)
  quality a = primJS $ ImageEncodeOptions.prim__quality a
  
  export
  setQuality : (obj : ImageEncodeOptions) -> (value : UndefOr Double) -> JSIO ()
  setQuality a b = primJS $ ImageEncodeOptions.prim__setQuality a b
  
  export
  type : (obj : ImageEncodeOptions) -> JSIO (UndefOr String)
  type a = primJS $ ImageEncodeOptions.prim__type a
  
  export
  setType : (obj : ImageEncodeOptions) -> (value : UndefOr String) -> JSIO ()
  setType a b = primJS $ ImageEncodeOptions.prim__setType a b

namespace MessageEventInit
  
  public export
  JSType MessageEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []
  
  export
  new :  (data_ : UndefOr AnyPtr)
      -> (origin : UndefOr String)
      -> (lastEventId : UndefOr String)
      -> (source : UndefOr (Nullable MessageEventSource))
      -> (ports : UndefOr (Array MessagePort))
      -> JSIO MessageEventInit
  new a b c d e = primJS $ MessageEventInit.prim__new a b c d e
  
  export
  data_ : (obj : MessageEventInit) -> JSIO (UndefOr AnyPtr)
  data_ a = primJS $ MessageEventInit.prim__data a
  
  export
  setData : (obj : MessageEventInit) -> (value : UndefOr AnyPtr) -> JSIO ()
  setData a b = primJS $ MessageEventInit.prim__setData a b
  
  export
  lastEventId : (obj : MessageEventInit) -> JSIO (UndefOr String)
  lastEventId a = primJS $ MessageEventInit.prim__lastEventId a
  
  export
  setLastEventId :  (obj : MessageEventInit)
                 -> (value : UndefOr String)
                 -> JSIO ()
  setLastEventId a b = primJS $ MessageEventInit.prim__setLastEventId a b
  
  export
  origin : (obj : MessageEventInit) -> JSIO (UndefOr String)
  origin a = primJS $ MessageEventInit.prim__origin a
  
  export
  setOrigin : (obj : MessageEventInit) -> (value : UndefOr String) -> JSIO ()
  setOrigin a b = primJS $ MessageEventInit.prim__setOrigin a b
  
  export
  ports : (obj : MessageEventInit) -> JSIO (UndefOr (Array MessagePort))
  ports a = primJS $ MessageEventInit.prim__ports a
  
  export
  setPorts :  (obj : MessageEventInit)
           -> (value : UndefOr (Array MessagePort))
           -> JSIO ()
  setPorts a b = primJS $ MessageEventInit.prim__setPorts a b
  
  export
  source :  (obj : MessageEventInit)
         -> JSIO (UndefOr (Nullable MessageEventSource))
  source a = primJS $ MessageEventInit.prim__source a
  
  export
  setSource :  (obj : MessageEventInit)
            -> (value : UndefOr (Nullable MessageEventSource))
            -> JSIO ()
  setSource a b = primJS $ MessageEventInit.prim__setSource a b

namespace PageTransitionEventInit
  
  public export
  JSType PageTransitionEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []
  
  export
  new : (persisted : UndefOr Boolean) -> JSIO PageTransitionEventInit
  new a = primJS $ PageTransitionEventInit.prim__new a
  
  export
  persisted : (obj : PageTransitionEventInit) -> JSIO (UndefOr Boolean)
  persisted a = primJS $ PageTransitionEventInit.prim__persisted a
  
  export
  setPersisted :  (obj : PageTransitionEventInit)
               -> (value : UndefOr Boolean)
               -> JSIO ()
  setPersisted a b = primJS $ PageTransitionEventInit.prim__setPersisted a b

namespace PopStateEventInit
  
  public export
  JSType PopStateEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []
  
  export
  new : (state : UndefOr AnyPtr) -> JSIO PopStateEventInit
  new a = primJS $ PopStateEventInit.prim__new a
  
  export
  state : (obj : PopStateEventInit) -> JSIO (UndefOr AnyPtr)
  state a = primJS $ PopStateEventInit.prim__state a
  
  export
  setState : (obj : PopStateEventInit) -> (value : UndefOr AnyPtr) -> JSIO ()
  setState a b = primJS $ PopStateEventInit.prim__setState a b

namespace PostMessageOptions
  
  public export
  JSType PostMessageOptions where
    parents =  [ Object ]

    mixins =  []
  
  export
  new : (transfer : UndefOr (Array Object)) -> JSIO PostMessageOptions
  new a = primJS $ PostMessageOptions.prim__new a
  
  export
  transfer : (obj : PostMessageOptions) -> JSIO (UndefOr (Array Object))
  transfer a = primJS $ PostMessageOptions.prim__transfer a
  
  export
  setTransfer :  (obj : PostMessageOptions)
              -> (value : UndefOr (Array Object))
              -> JSIO ()
  setTransfer a b = primJS $ PostMessageOptions.prim__setTransfer a b

namespace PromiseRejectionEventInit
  
  public export
  JSType PromiseRejectionEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []
  
  export
  new :  (promise : Promise AnyPtr)
      -> (reason : UndefOr AnyPtr)
      -> JSIO PromiseRejectionEventInit
  new a b = primJS $ PromiseRejectionEventInit.prim__new a b
  
  export
  promise : (obj : PromiseRejectionEventInit) -> JSIO (Promise AnyPtr)
  promise a = primJS $ PromiseRejectionEventInit.prim__promise a
  
  export
  setPromise :  (obj : PromiseRejectionEventInit)
             -> (value : Promise AnyPtr)
             -> JSIO ()
  setPromise a b = primJS $ PromiseRejectionEventInit.prim__setPromise a b
  
  export
  reason : (obj : PromiseRejectionEventInit) -> JSIO (UndefOr AnyPtr)
  reason a = primJS $ PromiseRejectionEventInit.prim__reason a
  
  export
  setReason :  (obj : PromiseRejectionEventInit)
            -> (value : UndefOr AnyPtr)
            -> JSIO ()
  setReason a b = primJS $ PromiseRejectionEventInit.prim__setReason a b

namespace StorageEventInit
  
  public export
  JSType StorageEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []
  
  export
  new :  (key : UndefOr (Nullable String))
      -> (oldValue : UndefOr (Nullable String))
      -> (newValue : UndefOr (Nullable String))
      -> (url : UndefOr String)
      -> (storageArea : UndefOr (Nullable Storage))
      -> JSIO StorageEventInit
  new a b c d e = primJS $ StorageEventInit.prim__new a b c d e
  
  export
  key : (obj : StorageEventInit) -> JSIO (UndefOr (Nullable String))
  key a = primJS $ StorageEventInit.prim__key a
  
  export
  setKey :  (obj : StorageEventInit)
         -> (value : UndefOr (Nullable String))
         -> JSIO ()
  setKey a b = primJS $ StorageEventInit.prim__setKey a b
  
  export
  newValue : (obj : StorageEventInit) -> JSIO (UndefOr (Nullable String))
  newValue a = primJS $ StorageEventInit.prim__newValue a
  
  export
  setNewValue :  (obj : StorageEventInit)
              -> (value : UndefOr (Nullable String))
              -> JSIO ()
  setNewValue a b = primJS $ StorageEventInit.prim__setNewValue a b
  
  export
  oldValue : (obj : StorageEventInit) -> JSIO (UndefOr (Nullable String))
  oldValue a = primJS $ StorageEventInit.prim__oldValue a
  
  export
  setOldValue :  (obj : StorageEventInit)
              -> (value : UndefOr (Nullable String))
              -> JSIO ()
  setOldValue a b = primJS $ StorageEventInit.prim__setOldValue a b
  
  export
  storageArea : (obj : StorageEventInit) -> JSIO (UndefOr (Nullable Storage))
  storageArea a = primJS $ StorageEventInit.prim__storageArea a
  
  export
  setStorageArea :  (obj : StorageEventInit)
                 -> (value : UndefOr (Nullable Storage))
                 -> JSIO ()
  setStorageArea a b = primJS $ StorageEventInit.prim__setStorageArea a b
  
  export
  url : (obj : StorageEventInit) -> JSIO (UndefOr String)
  url a = primJS $ StorageEventInit.prim__url a
  
  export
  setUrl : (obj : StorageEventInit) -> (value : UndefOr String) -> JSIO ()
  setUrl a b = primJS $ StorageEventInit.prim__setUrl a b

namespace SubmitEventInit
  
  public export
  JSType SubmitEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []
  
  export
  new : (submitter : UndefOr (Nullable HTMLElement)) -> JSIO SubmitEventInit
  new a = primJS $ SubmitEventInit.prim__new a
  
  export
  submitter : (obj : SubmitEventInit) -> JSIO (UndefOr (Nullable HTMLElement))
  submitter a = primJS $ SubmitEventInit.prim__submitter a
  
  export
  setSubmitter :  (obj : SubmitEventInit)
               -> (value : UndefOr (Nullable HTMLElement))
               -> JSIO ()
  setSubmitter a b = primJS $ SubmitEventInit.prim__setSubmitter a b

namespace TrackEventInit
  
  public export
  JSType TrackEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []
  
  export
  new :  (track : UndefOr (Nullable (Union3 VideoTrack AudioTrack TextTrack)))
      -> JSIO TrackEventInit
  new a = primJS $ TrackEventInit.prim__new a
  
  export
  track :  (obj : TrackEventInit)
        -> JSIO (UndefOr (Nullable (Union3 VideoTrack AudioTrack TextTrack)))
  track a = primJS $ TrackEventInit.prim__track a
  
  export
  setTrack :  (obj : TrackEventInit)
           -> (value : UndefOr (Nullable (Union3 VideoTrack
                                                 AudioTrack
                                                 TextTrack)))
           -> JSIO ()
  setTrack a b = primJS $ TrackEventInit.prim__setTrack a b

namespace ValidityStateFlags
  
  public export
  JSType ValidityStateFlags where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (valueMissing : UndefOr Boolean)
      -> (typeMismatch : UndefOr Boolean)
      -> (patternMismatch : UndefOr Boolean)
      -> (tooLong : UndefOr Boolean)
      -> (tooShort : UndefOr Boolean)
      -> (rangeUnderflow : UndefOr Boolean)
      -> (rangeOverflow : UndefOr Boolean)
      -> (stepMismatch : UndefOr Boolean)
      -> (badInput : UndefOr Boolean)
      -> (customError : UndefOr Boolean)
      -> JSIO ValidityStateFlags
  new a b c d e f g h i j = primJS $ ValidityStateFlags.prim__new a
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
  badInput : (obj : ValidityStateFlags) -> JSIO (UndefOr Boolean)
  badInput a = primJS $ ValidityStateFlags.prim__badInput a
  
  export
  setBadInput :  (obj : ValidityStateFlags)
              -> (value : UndefOr Boolean)
              -> JSIO ()
  setBadInput a b = primJS $ ValidityStateFlags.prim__setBadInput a b
  
  export
  customError : (obj : ValidityStateFlags) -> JSIO (UndefOr Boolean)
  customError a = primJS $ ValidityStateFlags.prim__customError a
  
  export
  setCustomError :  (obj : ValidityStateFlags)
                 -> (value : UndefOr Boolean)
                 -> JSIO ()
  setCustomError a b = primJS $ ValidityStateFlags.prim__setCustomError a b
  
  export
  patternMismatch : (obj : ValidityStateFlags) -> JSIO (UndefOr Boolean)
  patternMismatch a = primJS $ ValidityStateFlags.prim__patternMismatch a
  
  export
  setPatternMismatch :  (obj : ValidityStateFlags)
                     -> (value : UndefOr Boolean)
                     -> JSIO ()
  setPatternMismatch a b = primJS $ ValidityStateFlags.prim__setPatternMismatch a
                                                                                b
  
  export
  rangeOverflow : (obj : ValidityStateFlags) -> JSIO (UndefOr Boolean)
  rangeOverflow a = primJS $ ValidityStateFlags.prim__rangeOverflow a
  
  export
  setRangeOverflow :  (obj : ValidityStateFlags)
                   -> (value : UndefOr Boolean)
                   -> JSIO ()
  setRangeOverflow a b = primJS $ ValidityStateFlags.prim__setRangeOverflow a b
  
  export
  rangeUnderflow : (obj : ValidityStateFlags) -> JSIO (UndefOr Boolean)
  rangeUnderflow a = primJS $ ValidityStateFlags.prim__rangeUnderflow a
  
  export
  setRangeUnderflow :  (obj : ValidityStateFlags)
                    -> (value : UndefOr Boolean)
                    -> JSIO ()
  setRangeUnderflow a b = primJS $ ValidityStateFlags.prim__setRangeUnderflow a
                                                                              b
  
  export
  stepMismatch : (obj : ValidityStateFlags) -> JSIO (UndefOr Boolean)
  stepMismatch a = primJS $ ValidityStateFlags.prim__stepMismatch a
  
  export
  setStepMismatch :  (obj : ValidityStateFlags)
                  -> (value : UndefOr Boolean)
                  -> JSIO ()
  setStepMismatch a b = primJS $ ValidityStateFlags.prim__setStepMismatch a b
  
  export
  tooLong : (obj : ValidityStateFlags) -> JSIO (UndefOr Boolean)
  tooLong a = primJS $ ValidityStateFlags.prim__tooLong a
  
  export
  setTooLong :  (obj : ValidityStateFlags)
             -> (value : UndefOr Boolean)
             -> JSIO ()
  setTooLong a b = primJS $ ValidityStateFlags.prim__setTooLong a b
  
  export
  tooShort : (obj : ValidityStateFlags) -> JSIO (UndefOr Boolean)
  tooShort a = primJS $ ValidityStateFlags.prim__tooShort a
  
  export
  setTooShort :  (obj : ValidityStateFlags)
              -> (value : UndefOr Boolean)
              -> JSIO ()
  setTooShort a b = primJS $ ValidityStateFlags.prim__setTooShort a b
  
  export
  typeMismatch : (obj : ValidityStateFlags) -> JSIO (UndefOr Boolean)
  typeMismatch a = primJS $ ValidityStateFlags.prim__typeMismatch a
  
  export
  setTypeMismatch :  (obj : ValidityStateFlags)
                  -> (value : UndefOr Boolean)
                  -> JSIO ()
  setTypeMismatch a b = primJS $ ValidityStateFlags.prim__setTypeMismatch a b
  
  export
  valueMissing : (obj : ValidityStateFlags) -> JSIO (UndefOr Boolean)
  valueMissing a = primJS $ ValidityStateFlags.prim__valueMissing a
  
  export
  setValueMissing :  (obj : ValidityStateFlags)
                  -> (value : UndefOr Boolean)
                  -> JSIO ()
  setValueMissing a b = primJS $ ValidityStateFlags.prim__setValueMissing a b

namespace WindowPostMessageOptions
  
  public export
  JSType WindowPostMessageOptions where
    parents =  [ PostMessageOptions , Object ]

    mixins =  []
  
  export
  new : (targetOrigin : UndefOr String) -> JSIO WindowPostMessageOptions
  new a = primJS $ WindowPostMessageOptions.prim__new a
  
  export
  targetOrigin : (obj : WindowPostMessageOptions) -> JSIO (UndefOr String)
  targetOrigin a = primJS $ WindowPostMessageOptions.prim__targetOrigin a
  
  export
  setTargetOrigin :  (obj : WindowPostMessageOptions)
                  -> (value : UndefOr String)
                  -> JSIO ()
  setTargetOrigin a b = primJS $ WindowPostMessageOptions.prim__setTargetOrigin a
                                                                                b

namespace WorkerOptions
  
  public export
  JSType WorkerOptions where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (type : UndefOr WorkerType)
      -> (credentials : UndefOr RequestCredentials)
      -> (name : UndefOr String)
      -> JSIO WorkerOptions
  new a b c = primJS $ WorkerOptions.prim__new a b c
  
  export
  credentials : (obj : WorkerOptions) -> JSIO (UndefOr RequestCredentials)
  credentials a = primJS $ WorkerOptions.prim__credentials a
  
  export
  setCredentials :  (obj : WorkerOptions)
                 -> (value : UndefOr RequestCredentials)
                 -> JSIO ()
  setCredentials a b = primJS $ WorkerOptions.prim__setCredentials a b
  
  export
  name : (obj : WorkerOptions) -> JSIO (UndefOr String)
  name a = primJS $ WorkerOptions.prim__name a
  
  export
  setName : (obj : WorkerOptions) -> (value : UndefOr String) -> JSIO ()
  setName a b = primJS $ WorkerOptions.prim__setName a b
  
  export
  type : (obj : WorkerOptions) -> JSIO (UndefOr WorkerType)
  type a = primJS $ WorkerOptions.prim__type a
  
  export
  setType : (obj : WorkerOptions) -> (value : UndefOr WorkerType) -> JSIO ()
  setType a b = primJS $ WorkerOptions.prim__setType a b

namespace WorkletOptions
  
  public export
  JSType WorkletOptions where
    parents =  [ Object ]

    mixins =  []
  
  export
  new : (credentials : UndefOr RequestCredentials) -> JSIO WorkletOptions
  new a = primJS $ WorkletOptions.prim__new a
  
  export
  credentials : (obj : WorkletOptions) -> JSIO (UndefOr RequestCredentials)
  credentials a = primJS $ WorkletOptions.prim__credentials a
  
  export
  setCredentials :  (obj : WorkletOptions)
                 -> (value : UndefOr RequestCredentials)
                 -> JSIO ()
  setCredentials a b = primJS $ WorkletOptions.prim__setCredentials a b

--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------





