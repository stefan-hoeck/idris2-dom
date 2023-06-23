module Web.Raw.Html

import JS
import Web.Internal.HtmlPrim
import Web.Internal.Types

%default total


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace AudioTrack

  export
  enabled : AudioTrack -> Attribute True Prelude.id Bool
  enabled v = fromPrim "AudioTrack.getenabled" prim__enabled prim__setEnabled v


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
  sourceBuffer : (obj : AudioTrack) -> JSIO (Maybe SourceBuffer)
  sourceBuffer a = tryJS "AudioTrack.sourceBuffer" $
    AudioTrack.prim__sourceBuffer a



namespace AudioTrackList

  export
  get : (obj : AudioTrackList) -> (index : Bits32) -> JSIO AudioTrack
  get a b = primJS $ AudioTrackList.prim__get a b


  export
  length : (obj : AudioTrackList) -> JSIO Bits32
  length a = primJS $ AudioTrackList.prim__length a


  export
  onaddtrack : AudioTrackList -> Attribute False Maybe EventHandlerNonNull
  onaddtrack v = fromNullablePrim
                   "AudioTrackList.getonaddtrack"
                   prim__onaddtrack
                   prim__setOnaddtrack
                   v


  export
  onchange : AudioTrackList -> Attribute False Maybe EventHandlerNonNull
  onchange v = fromNullablePrim
                 "AudioTrackList.getonchange"
                 prim__onchange
                 prim__setOnchange
                 v


  export
  onremovetrack : AudioTrackList -> Attribute False Maybe EventHandlerNonNull
  onremovetrack v = fromNullablePrim
                      "AudioTrackList.getonremovetrack"
                      prim__onremovetrack
                      prim__setOnremovetrack
                      v


  export
  getTrackById :
       (obj : AudioTrackList)
    -> (id : String)
    -> JSIO (Maybe AudioTrack)
  getTrackById a b = tryJS "AudioTrackList.getTrackById" $
    AudioTrackList.prim__getTrackById a b



namespace BarProp

  export
  visible : (obj : BarProp) -> JSIO Bool
  visible a = tryJS "BarProp.visible" $ BarProp.prim__visible a



namespace BeforeUnloadEvent

  export
  returnValue : BeforeUnloadEvent -> Attribute True Prelude.id String
  returnValue v = fromPrim
                    "BeforeUnloadEvent.getreturnValue"
                    prim__returnValue
                    prim__setReturnValue
                    v



namespace BroadcastChannel

  export
  new : (name : String) -> JSIO BroadcastChannel
  new a = primJS $ BroadcastChannel.prim__new a


  export
  name : (obj : BroadcastChannel) -> JSIO String
  name a = primJS $ BroadcastChannel.prim__name a


  export
  onmessage : BroadcastChannel -> Attribute False Maybe EventHandlerNonNull
  onmessage v = fromNullablePrim
                  "BroadcastChannel.getonmessage"
                  prim__onmessage
                  prim__setOnmessage
                  v


  export
  onmessageerror : BroadcastChannel -> Attribute False Maybe EventHandlerNonNull
  onmessageerror v = fromNullablePrim
                       "BroadcastChannel.getonmessageerror"
                       prim__onmessageerror
                       prim__setOnmessageerror
                       v


  export
  close : (obj : BroadcastChannel) -> JSIO ()
  close a = primJS $ BroadcastChannel.prim__close a


  export
  postMessage : (obj : BroadcastChannel) -> (message : Any) -> JSIO ()
  postMessage a b = primJS $ BroadcastChannel.prim__postMessage a (toFFI b)



namespace CanvasGradient

  export
  addColorStop :
       (obj : CanvasGradient)
    -> (offset : Double)
    -> (color : String)
    -> JSIO ()
  addColorStop a b c = primJS $ CanvasGradient.prim__addColorStop a b c



namespace CanvasPattern

  export
  setTransform' :
       {auto _ : Cast t2 DOMMatrix2DInit}
    -> (obj : CanvasPattern)
    -> (transform : Optional t2)
    -> JSIO ()
  setTransform' a b = primJS $ CanvasPattern.prim__setTransform a (optUp b)

  export
  setTransform : (obj : CanvasPattern) -> JSIO ()
  setTransform a = primJS $ CanvasPattern.prim__setTransform a undef



namespace CanvasRenderingContext2D

  export
  canvas : (obj : CanvasRenderingContext2D) -> JSIO HTMLCanvasElement
  canvas a = primJS $ CanvasRenderingContext2D.prim__canvas a


  export
  getContextAttributes :
       (obj : CanvasRenderingContext2D)
    -> JSIO CanvasRenderingContext2DSettings
  getContextAttributes a = primJS $
    CanvasRenderingContext2D.prim__getContextAttributes a



namespace CloseEvent

  export
  new' :
       {auto _ : Cast t2 CloseEventInit}
    -> (type : String)
    -> (eventInitDict : Optional t2)
    -> JSIO CloseEvent
  new' a b = primJS $ CloseEvent.prim__new a (optUp b)

  export
  new : (type : String) -> JSIO CloseEvent
  new a = primJS $ CloseEvent.prim__new a undef


  export
  code : (obj : CloseEvent) -> JSIO Bits16
  code a = primJS $ CloseEvent.prim__code a


  export
  reason : (obj : CloseEvent) -> JSIO String
  reason a = primJS $ CloseEvent.prim__reason a


  export
  wasClean : (obj : CloseEvent) -> JSIO Bool
  wasClean a = tryJS "CloseEvent.wasClean" $ CloseEvent.prim__wasClean a



namespace CustomElementRegistry

  export
  define' :
       {auto _ : Cast t4 ElementDefinitionOptions}
    -> (obj : CustomElementRegistry)
    -> (name : String)
    -> (constructor : CustomElementConstructor)
    -> (options : Optional t4)
    -> JSIO ()
  define' a b c d = primJS $ CustomElementRegistry.prim__define a b c (optUp d)

  export
  define :
       (obj : CustomElementRegistry)
    -> (name : String)
    -> (constructor : CustomElementConstructor)
    -> JSIO ()
  define a b c = primJS $ CustomElementRegistry.prim__define a b c undef


  export
  get :
       (obj : CustomElementRegistry)
    -> (name : String)
    -> JSIO (Union2 CustomElementConstructor Undefined)
  get a b = primJS $ CustomElementRegistry.prim__get a b


  export
  upgrade :
       {auto _ : Cast t2 Node}
    -> (obj : CustomElementRegistry)
    -> (root : t2)
    -> JSIO ()
  upgrade a b = primJS $ CustomElementRegistry.prim__upgrade a (cast b)


  export
  whenDefined :
       (obj : CustomElementRegistry)
    -> (name : String)
    -> JSIO (Promise CustomElementConstructor)
  whenDefined a b = primJS $ CustomElementRegistry.prim__whenDefined a b



namespace DOMParser

  export
  new : JSIO DOMParser
  new = primJS $ DOMParser.prim__new


  export
  parseFromString :
       (obj : DOMParser)
    -> (string : String)
    -> (type : DOMParserSupportedType)
    -> JSIO Document
  parseFromString a b c = primJS $ DOMParser.prim__parseFromString a b (toFFI c)



namespace DOMStringList

  export
  length : (obj : DOMStringList) -> JSIO Bits32
  length a = primJS $ DOMStringList.prim__length a


  export
  contains : (obj : DOMStringList) -> (string : String) -> JSIO Bool
  contains a b = tryJS "DOMStringList.contains" $
    DOMStringList.prim__contains a b


  export
  item : (obj : DOMStringList) -> (index : Bits32) -> JSIO (Maybe String)
  item a b = tryJS "DOMStringList.item" $ DOMStringList.prim__item a b



namespace DOMStringMap

  export
  get : (obj : DOMStringMap) -> (name : String) -> JSIO String
  get a b = primJS $ DOMStringMap.prim__get a b


  export
  set : (obj : DOMStringMap) -> (name : String) -> (value : String) -> JSIO ()
  set a b c = primJS $ DOMStringMap.prim__set a b c



namespace DataTransfer

  export
  new : JSIO DataTransfer
  new = primJS $ DataTransfer.prim__new


  export
  dropEffect : DataTransfer -> Attribute True Prelude.id String
  dropEffect v = fromPrim
                   "DataTransfer.getdropEffect"
                   prim__dropEffect
                   prim__setDropEffect
                   v


  export
  effectAllowed : DataTransfer -> Attribute True Prelude.id String
  effectAllowed v = fromPrim
                      "DataTransfer.geteffectAllowed"
                      prim__effectAllowed
                      prim__setEffectAllowed
                      v


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
  clearData' : (obj : DataTransfer) -> (format : Optional String) -> JSIO ()
  clearData' a b = primJS $ DataTransfer.prim__clearData a (toFFI b)

  export
  clearData : (obj : DataTransfer) -> JSIO ()
  clearData a = primJS $ DataTransfer.prim__clearData a undef


  export
  getData : (obj : DataTransfer) -> (format : String) -> JSIO String
  getData a b = primJS $ DataTransfer.prim__getData a b


  export
  setData :
       (obj : DataTransfer)
    -> (format : String)
    -> (data_ : String)
    -> JSIO ()
  setData a b c = primJS $ DataTransfer.prim__setData a b c


  export
  setDragImage :
       {auto _ : Cast t2 Element}
    -> (obj : DataTransfer)
    -> (image : t2)
    -> (x : Int32)
    -> (y : Int32)
    -> JSIO ()
  setDragImage a b c d = primJS $ DataTransfer.prim__setDragImage a (cast b) c d



namespace DataTransferItem

  export
  kind : (obj : DataTransferItem) -> JSIO String
  kind a = primJS $ DataTransferItem.prim__kind a


  export
  type : (obj : DataTransferItem) -> JSIO String
  type a = primJS $ DataTransferItem.prim__type a


  export
  getAsFile : (obj : DataTransferItem) -> JSIO (Maybe File)
  getAsFile a = tryJS "DataTransferItem.getAsFile" $
    DataTransferItem.prim__getAsFile a


  export
  getAsString :
       (obj : DataTransferItem)
    -> (callback : Maybe FunctionStringCallback)
    -> JSIO ()
  getAsString a b = primJS $ DataTransferItem.prim__getAsString a (toFFI b)



namespace DataTransferItemList

  export
  get :
       (obj : DataTransferItemList)
    -> (index : Bits32)
    -> JSIO DataTransferItem
  get a b = primJS $ DataTransferItemList.prim__get a b


  export
  length : (obj : DataTransferItemList) -> JSIO Bits32
  length a = primJS $ DataTransferItemList.prim__length a


  export
  add :
       (obj : DataTransferItemList)
    -> (data_ : String)
    -> (type : String)
    -> JSIO (Maybe DataTransferItem)
  add a b c = tryJS "DataTransferItemList.add" $
    DataTransferItemList.prim__add a b c


  export
  add1 :
       (obj : DataTransferItemList)
    -> (data_ : File)
    -> JSIO (Maybe DataTransferItem)
  add1 a b = tryJS "DataTransferItemList.add1" $
    DataTransferItemList.prim__add1 a b


  export
  clear : (obj : DataTransferItemList) -> JSIO ()
  clear a = primJS $ DataTransferItemList.prim__clear a


  export
  remove : (obj : DataTransferItemList) -> (index : Bits32) -> JSIO ()
  remove a b = primJS $ DataTransferItemList.prim__remove a b



namespace DedicatedWorkerGlobalScope

  export
  name : (obj : DedicatedWorkerGlobalScope) -> JSIO String
  name a = primJS $ DedicatedWorkerGlobalScope.prim__name a


  export
  onmessage :
       DedicatedWorkerGlobalScope
    -> Attribute False Maybe EventHandlerNonNull
  onmessage v = fromNullablePrim
                  "DedicatedWorkerGlobalScope.getonmessage"
                  prim__onmessage
                  prim__setOnmessage
                  v


  export
  onmessageerror :
       DedicatedWorkerGlobalScope
    -> Attribute False Maybe EventHandlerNonNull
  onmessageerror v = fromNullablePrim
                       "DedicatedWorkerGlobalScope.getonmessageerror"
                       prim__onmessageerror
                       prim__setOnmessageerror
                       v


  export
  close : (obj : DedicatedWorkerGlobalScope) -> JSIO ()
  close a = primJS $ DedicatedWorkerGlobalScope.prim__close a


  export
  postMessage :
       (obj : DedicatedWorkerGlobalScope)
    -> (message : Any)
    -> (transfer : Array Object)
    -> JSIO ()
  postMessage a b c = primJS $
    DedicatedWorkerGlobalScope.prim__postMessage a (toFFI b) c


  export
  postMessage1' :
       {auto _ : Cast t3 PostMessageOptions}
    -> (obj : DedicatedWorkerGlobalScope)
    -> (message : Any)
    -> (options : Optional t3)
    -> JSIO ()
  postMessage1' a b c = primJS $
    DedicatedWorkerGlobalScope.prim__postMessage1 a (toFFI b) (optUp c)

  export
  postMessage1 :
       (obj : DedicatedWorkerGlobalScope)
    -> (message : Any)
    -> JSIO ()
  postMessage1 a b = primJS $
    DedicatedWorkerGlobalScope.prim__postMessage1 a (toFFI b) undef



namespace DragEvent

  export
  new' :
       {auto _ : Cast t2 DragEventInit}
    -> (type : String)
    -> (eventInitDict : Optional t2)
    -> JSIO DragEvent
  new' a b = primJS $ DragEvent.prim__new a (optUp b)

  export
  new : (type : String) -> JSIO DragEvent
  new a = primJS $ DragEvent.prim__new a undef


  export
  dataTransfer : (obj : DragEvent) -> JSIO (Maybe DataTransfer)
  dataTransfer a = tryJS "DragEvent.dataTransfer" $
    DragEvent.prim__dataTransfer a



namespace ElementInternals

  export
  form : (obj : ElementInternals) -> JSIO (Maybe HTMLFormElement)
  form a = tryJS "ElementInternals.form" $ ElementInternals.prim__form a


  export
  labels : (obj : ElementInternals) -> JSIO NodeList
  labels a = primJS $ ElementInternals.prim__labels a


  export
  shadowRoot : (obj : ElementInternals) -> JSIO (Maybe ShadowRoot)
  shadowRoot a = tryJS "ElementInternals.shadowRoot" $
    ElementInternals.prim__shadowRoot a


  export
  validationMessage : (obj : ElementInternals) -> JSIO String
  validationMessage a = primJS $ ElementInternals.prim__validationMessage a


  export
  validity : (obj : ElementInternals) -> JSIO ValidityState
  validity a = primJS $ ElementInternals.prim__validity a


  export
  willValidate : (obj : ElementInternals) -> JSIO Bool
  willValidate a = tryJS "ElementInternals.willValidate" $
    ElementInternals.prim__willValidate a


  export
  checkValidity : (obj : ElementInternals) -> JSIO Bool
  checkValidity a = tryJS "ElementInternals.checkValidity" $
    ElementInternals.prim__checkValidity a


  export
  reportValidity : (obj : ElementInternals) -> JSIO Bool
  reportValidity a = tryJS "ElementInternals.reportValidity" $
    ElementInternals.prim__reportValidity a


  export
  setFormValue' :
       (obj : ElementInternals)
    -> (value : Maybe (HSum [File, String, FormData]))
    -> (state : Optional (Maybe (HSum [File, String, FormData])))
    -> JSIO ()
  setFormValue' a b c = primJS $
    ElementInternals.prim__setFormValue a (toFFI b) (toFFI c)

  export
  setFormValue :
       (obj : ElementInternals)
    -> (value : Maybe (HSum [File, String, FormData]))
    -> JSIO ()
  setFormValue a b = primJS $
    ElementInternals.prim__setFormValue a (toFFI b) undef


  export
  setValidity' :
       {auto _ : Cast t2 ValidityStateFlags}
    -> {auto _ : Cast t4 HTMLElement}
    -> (obj : ElementInternals)
    -> (flags : Optional t2)
    -> (message : Optional String)
    -> (anchor : Optional t4)
    -> JSIO ()
  setValidity' a b c d = primJS $
    ElementInternals.prim__setValidity a (optUp b) (toFFI c) (optUp d)

  export
  setValidity : (obj : ElementInternals) -> JSIO ()
  setValidity a = primJS $
    ElementInternals.prim__setValidity a undef undef undef



namespace ErrorEvent

  export
  new' :
       {auto _ : Cast t2 ErrorEventInit}
    -> (type : String)
    -> (eventInitDict : Optional t2)
    -> JSIO ErrorEvent
  new' a b = primJS $ ErrorEvent.prim__new a (optUp b)

  export
  new : (type : String) -> JSIO ErrorEvent
  new a = primJS $ ErrorEvent.prim__new a undef


  export
  colno : (obj : ErrorEvent) -> JSIO Bits32
  colno a = primJS $ ErrorEvent.prim__colno a


  export
  error : (obj : ErrorEvent) -> JSIO Any
  error a = tryJS "ErrorEvent.error" $ ErrorEvent.prim__error a


  export
  filename : (obj : ErrorEvent) -> JSIO String
  filename a = primJS $ ErrorEvent.prim__filename a


  export
  lineno : (obj : ErrorEvent) -> JSIO Bits32
  lineno a = primJS $ ErrorEvent.prim__lineno a


  export
  message : (obj : ErrorEvent) -> JSIO String
  message a = primJS $ ErrorEvent.prim__message a



namespace EventSource

  export
  CLOSED : Bits16
  CLOSED = 2


  export
  CONNECTING : Bits16
  CONNECTING = 0


  export
  OPEN : Bits16
  OPEN = 1


  export
  new' :
       {auto _ : Cast t2 EventSourceInit}
    -> (url : String)
    -> (eventSourceInitDict : Optional t2)
    -> JSIO EventSource
  new' a b = primJS $ EventSource.prim__new a (optUp b)

  export
  new : (url : String) -> JSIO EventSource
  new a = primJS $ EventSource.prim__new a undef


  export
  onerror : EventSource -> Attribute False Maybe EventHandlerNonNull
  onerror v = fromNullablePrim
                "EventSource.getonerror"
                prim__onerror
                prim__setOnerror
                v


  export
  onmessage : EventSource -> Attribute False Maybe EventHandlerNonNull
  onmessage v = fromNullablePrim
                  "EventSource.getonmessage"
                  prim__onmessage
                  prim__setOnmessage
                  v


  export
  onopen : EventSource -> Attribute False Maybe EventHandlerNonNull
  onopen v = fromNullablePrim
               "EventSource.getonopen"
               prim__onopen
               prim__setOnopen
               v


  export
  readyState : (obj : EventSource) -> JSIO Bits16
  readyState a = primJS $ EventSource.prim__readyState a


  export
  url : (obj : EventSource) -> JSIO String
  url a = primJS $ EventSource.prim__url a


  export
  withCredentials : (obj : EventSource) -> JSIO Bool
  withCredentials a = tryJS "EventSource.withCredentials" $
    EventSource.prim__withCredentials a


  export
  close : (obj : EventSource) -> JSIO ()
  close a = primJS $ EventSource.prim__close a



namespace External

  export
  AddSearchProvider : (obj : External) -> JSIO ()
  AddSearchProvider a = primJS $ External.prim__AddSearchProvider a


  export
  IsSearchProviderInstalled : (obj : External) -> JSIO ()
  IsSearchProviderInstalled a = primJS $
    External.prim__IsSearchProviderInstalled a



namespace FormDataEvent

  export
  new :
       {auto _ : Cast t2 FormDataEventInit}
    -> (type : String)
    -> (eventInitDict : t2)
    -> JSIO FormDataEvent
  new a b = primJS $ FormDataEvent.prim__new a (cast b)


  export
  formData : (obj : FormDataEvent) -> JSIO FormData
  formData a = primJS $ FormDataEvent.prim__formData a



namespace HTMLAllCollection

  export
  get : (obj : HTMLAllCollection) -> (index : Bits32) -> JSIO Element
  get a b = primJS $ HTMLAllCollection.prim__get a b


  export
  length : (obj : HTMLAllCollection) -> JSIO Bits32
  length a = primJS $ HTMLAllCollection.prim__length a


  export
  item' :
       (obj : HTMLAllCollection)
    -> (nameOrIndex : Optional String)
    -> JSIO (Maybe (HSum [HTMLCollection, Element]))
  item' a b = tryJS "HTMLAllCollection.item'" $
    HTMLAllCollection.prim__item a (toFFI b)

  export
  item :
       (obj : HTMLAllCollection)
    -> JSIO (Maybe (HSum [HTMLCollection, Element]))
  item a = tryJS "HTMLAllCollection.item" $ HTMLAllCollection.prim__item a undef


  export
  namedItem :
       (obj : HTMLAllCollection)
    -> (name : String)
    -> JSIO (Maybe (HSum [HTMLCollection, Element]))
  namedItem a b = tryJS "HTMLAllCollection.namedItem" $
    HTMLAllCollection.prim__namedItem a b



namespace HTMLAnchorElement

  export
  new : JSIO HTMLAnchorElement
  new = primJS $ HTMLAnchorElement.prim__new


  export
  charset : HTMLAnchorElement -> Attribute True Prelude.id String
  charset v = fromPrim
                "HTMLAnchorElement.getcharset"
                prim__charset
                prim__setCharset
                v


  export
  coords : HTMLAnchorElement -> Attribute True Prelude.id String
  coords v = fromPrim
               "HTMLAnchorElement.getcoords"
               prim__coords
               prim__setCoords
               v


  export
  download : HTMLAnchorElement -> Attribute True Prelude.id String
  download v = fromPrim
                 "HTMLAnchorElement.getdownload"
                 prim__download
                 prim__setDownload
                 v


  export
  hreflang : HTMLAnchorElement -> Attribute True Prelude.id String
  hreflang v = fromPrim
                 "HTMLAnchorElement.gethreflang"
                 prim__hreflang
                 prim__setHreflang
                 v


  export
  name : HTMLAnchorElement -> Attribute True Prelude.id String
  name v = fromPrim "HTMLAnchorElement.getname" prim__name prim__setName v


  export
  ping : HTMLAnchorElement -> Attribute True Prelude.id String
  ping v = fromPrim "HTMLAnchorElement.getping" prim__ping prim__setPing v


  export
  referrerPolicy : HTMLAnchorElement -> Attribute True Prelude.id String
  referrerPolicy v = fromPrim
                       "HTMLAnchorElement.getreferrerPolicy"
                       prim__referrerPolicy
                       prim__setReferrerPolicy
                       v


  export
  rel : HTMLAnchorElement -> Attribute True Prelude.id String
  rel v = fromPrim "HTMLAnchorElement.getrel" prim__rel prim__setRel v


  export
  relList : (obj : HTMLAnchorElement) -> JSIO DOMTokenList
  relList a = primJS $ HTMLAnchorElement.prim__relList a


  export
  rev : HTMLAnchorElement -> Attribute True Prelude.id String
  rev v = fromPrim "HTMLAnchorElement.getrev" prim__rev prim__setRev v


  export
  shape : HTMLAnchorElement -> Attribute True Prelude.id String
  shape v = fromPrim "HTMLAnchorElement.getshape" prim__shape prim__setShape v


  export
  target : HTMLAnchorElement -> Attribute True Prelude.id String
  target v = fromPrim
               "HTMLAnchorElement.gettarget"
               prim__target
               prim__setTarget
               v


  export
  text : HTMLAnchorElement -> Attribute True Prelude.id String
  text v = fromPrim "HTMLAnchorElement.gettext" prim__text prim__setText v


  export
  type : HTMLAnchorElement -> Attribute True Prelude.id String
  type v = fromPrim "HTMLAnchorElement.gettype" prim__type prim__setType v



namespace HTMLAreaElement

  export
  new : JSIO HTMLAreaElement
  new = primJS $ HTMLAreaElement.prim__new


  export
  alt : HTMLAreaElement -> Attribute True Prelude.id String
  alt v = fromPrim "HTMLAreaElement.getalt" prim__alt prim__setAlt v


  export
  coords : HTMLAreaElement -> Attribute True Prelude.id String
  coords v = fromPrim "HTMLAreaElement.getcoords" prim__coords prim__setCoords v


  export
  download : HTMLAreaElement -> Attribute True Prelude.id String
  download v = fromPrim
                 "HTMLAreaElement.getdownload"
                 prim__download
                 prim__setDownload
                 v


  export
  noHref : HTMLAreaElement -> Attribute True Prelude.id Bool
  noHref v = fromPrim "HTMLAreaElement.getnoHref" prim__noHref prim__setNoHref v


  export
  ping : HTMLAreaElement -> Attribute True Prelude.id String
  ping v = fromPrim "HTMLAreaElement.getping" prim__ping prim__setPing v


  export
  referrerPolicy : HTMLAreaElement -> Attribute True Prelude.id String
  referrerPolicy v = fromPrim
                       "HTMLAreaElement.getreferrerPolicy"
                       prim__referrerPolicy
                       prim__setReferrerPolicy
                       v


  export
  rel : HTMLAreaElement -> Attribute True Prelude.id String
  rel v = fromPrim "HTMLAreaElement.getrel" prim__rel prim__setRel v


  export
  relList : (obj : HTMLAreaElement) -> JSIO DOMTokenList
  relList a = primJS $ HTMLAreaElement.prim__relList a


  export
  shape : HTMLAreaElement -> Attribute True Prelude.id String
  shape v = fromPrim "HTMLAreaElement.getshape" prim__shape prim__setShape v


  export
  target : HTMLAreaElement -> Attribute True Prelude.id String
  target v = fromPrim "HTMLAreaElement.gettarget" prim__target prim__setTarget v



namespace HTMLAudioElement

  export
  new : JSIO HTMLAudioElement
  new = primJS $ HTMLAudioElement.prim__new



namespace HTMLBRElement

  export
  new : JSIO HTMLBRElement
  new = primJS $ HTMLBRElement.prim__new


  export
  clear : HTMLBRElement -> Attribute True Prelude.id String
  clear v = fromPrim "HTMLBRElement.getclear" prim__clear prim__setClear v



namespace HTMLBaseElement

  export
  new : JSIO HTMLBaseElement
  new = primJS $ HTMLBaseElement.prim__new


  export
  href : HTMLBaseElement -> Attribute True Prelude.id String
  href v = fromPrim "HTMLBaseElement.gethref" prim__href prim__setHref v


  export
  target : HTMLBaseElement -> Attribute True Prelude.id String
  target v = fromPrim "HTMLBaseElement.gettarget" prim__target prim__setTarget v



namespace HTMLBodyElement

  export
  new : JSIO HTMLBodyElement
  new = primJS $ HTMLBodyElement.prim__new


  export
  aLink : HTMLBodyElement -> Attribute True Prelude.id String
  aLink v = fromPrim "HTMLBodyElement.getaLink" prim__aLink prim__setALink v


  export
  background : HTMLBodyElement -> Attribute True Prelude.id String
  background v = fromPrim
                   "HTMLBodyElement.getbackground"
                   prim__background
                   prim__setBackground
                   v


  export
  bgColor : HTMLBodyElement -> Attribute True Prelude.id String
  bgColor v = fromPrim
                "HTMLBodyElement.getbgColor"
                prim__bgColor
                prim__setBgColor
                v


  export
  link : HTMLBodyElement -> Attribute True Prelude.id String
  link v = fromPrim "HTMLBodyElement.getlink" prim__link prim__setLink v


  export
  text : HTMLBodyElement -> Attribute True Prelude.id String
  text v = fromPrim "HTMLBodyElement.gettext" prim__text prim__setText v


  export
  vLink : HTMLBodyElement -> Attribute True Prelude.id String
  vLink v = fromPrim "HTMLBodyElement.getvLink" prim__vLink prim__setVLink v



namespace HTMLButtonElement

  export
  new : JSIO HTMLButtonElement
  new = primJS $ HTMLButtonElement.prim__new


  export
  disabled : HTMLButtonElement -> Attribute True Prelude.id Bool
  disabled v = fromPrim
                 "HTMLButtonElement.getdisabled"
                 prim__disabled
                 prim__setDisabled
                 v


  export
  form : (obj : HTMLButtonElement) -> JSIO (Maybe HTMLFormElement)
  form a = tryJS "HTMLButtonElement.form" $ HTMLButtonElement.prim__form a


  export
  formAction : HTMLButtonElement -> Attribute True Prelude.id String
  formAction v = fromPrim
                   "HTMLButtonElement.getformAction"
                   prim__formAction
                   prim__setFormAction
                   v


  export
  formEnctype : HTMLButtonElement -> Attribute True Prelude.id String
  formEnctype v = fromPrim
                    "HTMLButtonElement.getformEnctype"
                    prim__formEnctype
                    prim__setFormEnctype
                    v


  export
  formMethod : HTMLButtonElement -> Attribute True Prelude.id String
  formMethod v = fromPrim
                   "HTMLButtonElement.getformMethod"
                   prim__formMethod
                   prim__setFormMethod
                   v


  export
  formNoValidate : HTMLButtonElement -> Attribute True Prelude.id Bool
  formNoValidate v = fromPrim
                       "HTMLButtonElement.getformNoValidate"
                       prim__formNoValidate
                       prim__setFormNoValidate
                       v


  export
  formTarget : HTMLButtonElement -> Attribute True Prelude.id String
  formTarget v = fromPrim
                   "HTMLButtonElement.getformTarget"
                   prim__formTarget
                   prim__setFormTarget
                   v


  export
  labels : (obj : HTMLButtonElement) -> JSIO NodeList
  labels a = primJS $ HTMLButtonElement.prim__labels a


  export
  name : HTMLButtonElement -> Attribute True Prelude.id String
  name v = fromPrim "HTMLButtonElement.getname" prim__name prim__setName v


  export
  type : HTMLButtonElement -> Attribute True Prelude.id String
  type v = fromPrim "HTMLButtonElement.gettype" prim__type prim__setType v


  export
  validationMessage : (obj : HTMLButtonElement) -> JSIO String
  validationMessage a = primJS $ HTMLButtonElement.prim__validationMessage a


  export
  validity : (obj : HTMLButtonElement) -> JSIO ValidityState
  validity a = primJS $ HTMLButtonElement.prim__validity a


  export
  value : HTMLButtonElement -> Attribute True Prelude.id String
  value v = fromPrim "HTMLButtonElement.getvalue" prim__value prim__setValue v


  export
  willValidate : (obj : HTMLButtonElement) -> JSIO Bool
  willValidate a = tryJS "HTMLButtonElement.willValidate" $
    HTMLButtonElement.prim__willValidate a


  export
  checkValidity : (obj : HTMLButtonElement) -> JSIO Bool
  checkValidity a = tryJS "HTMLButtonElement.checkValidity" $
    HTMLButtonElement.prim__checkValidity a


  export
  reportValidity : (obj : HTMLButtonElement) -> JSIO Bool
  reportValidity a = tryJS "HTMLButtonElement.reportValidity" $
    HTMLButtonElement.prim__reportValidity a


  export
  setCustomValidity : (obj : HTMLButtonElement) -> (error : String) -> JSIO ()
  setCustomValidity a b = primJS $ HTMLButtonElement.prim__setCustomValidity a b



namespace HTMLCanvasElement

  export
  new : JSIO HTMLCanvasElement
  new = primJS $ HTMLCanvasElement.prim__new


  export
  height : HTMLCanvasElement -> Attribute True Prelude.id Bits32
  height v = fromPrim
               "HTMLCanvasElement.getheight"
               prim__height
               prim__setHeight
               v


  export
  width : HTMLCanvasElement -> Attribute True Prelude.id Bits32
  width v = fromPrim "HTMLCanvasElement.getwidth" prim__width prim__setWidth v


  export
  getContext' :
       (obj : HTMLCanvasElement)
    -> (contextId : String)
    -> (options : Optional Any)
    -> JSIO
         (Maybe
            (HSum
               [ CanvasRenderingContext2D
               , ImageBitmapRenderingContext
               , WebGLRenderingContext
               , WebGL2RenderingContext
               ]))
  getContext' a b c = tryJS "HTMLCanvasElement.getContext'" $
    HTMLCanvasElement.prim__getContext a b (toFFI c)

  export
  getContext :
       (obj : HTMLCanvasElement)
    -> (contextId : String)
    -> JSIO
         (Maybe
            (HSum
               [ CanvasRenderingContext2D
               , ImageBitmapRenderingContext
               , WebGLRenderingContext
               , WebGL2RenderingContext
               ]))
  getContext a b = tryJS "HTMLCanvasElement.getContext" $
    HTMLCanvasElement.prim__getContext a b undef


  export
  toBlob' :
       (obj : HTMLCanvasElement)
    -> (callback : BlobCallback)
    -> (type : Optional String)
    -> (quality : Optional Any)
    -> JSIO ()
  toBlob' a b c d = primJS $
    HTMLCanvasElement.prim__toBlob a b (toFFI c) (toFFI d)

  export
  toBlob : (obj : HTMLCanvasElement) -> (callback : BlobCallback) -> JSIO ()
  toBlob a b = primJS $ HTMLCanvasElement.prim__toBlob a b undef undef


  export
  toDataURL' :
       (obj : HTMLCanvasElement)
    -> (type : Optional String)
    -> (quality : Optional Any)
    -> JSIO String
  toDataURL' a b c = primJS $
    HTMLCanvasElement.prim__toDataURL a (toFFI b) (toFFI c)

  export
  toDataURL : (obj : HTMLCanvasElement) -> JSIO String
  toDataURL a = primJS $ HTMLCanvasElement.prim__toDataURL a undef undef


  export
  transferControlToOffscreen : (obj : HTMLCanvasElement) -> JSIO OffscreenCanvas
  transferControlToOffscreen a = primJS $
    HTMLCanvasElement.prim__transferControlToOffscreen a



namespace HTMLDListElement

  export
  new : JSIO HTMLDListElement
  new = primJS $ HTMLDListElement.prim__new


  export
  compact : HTMLDListElement -> Attribute True Prelude.id Bool
  compact v = fromPrim
                "HTMLDListElement.getcompact"
                prim__compact
                prim__setCompact
                v



namespace HTMLDataElement

  export
  new : JSIO HTMLDataElement
  new = primJS $ HTMLDataElement.prim__new


  export
  value : HTMLDataElement -> Attribute True Prelude.id String
  value v = fromPrim "HTMLDataElement.getvalue" prim__value prim__setValue v



namespace HTMLDataListElement

  export
  new : JSIO HTMLDataListElement
  new = primJS $ HTMLDataListElement.prim__new


  export
  options : (obj : HTMLDataListElement) -> JSIO HTMLCollection
  options a = primJS $ HTMLDataListElement.prim__options a



namespace HTMLDetailsElement

  export
  new : JSIO HTMLDetailsElement
  new = primJS $ HTMLDetailsElement.prim__new


  export
  open_ : HTMLDetailsElement -> Attribute True Prelude.id Bool
  open_ v = fromPrim "HTMLDetailsElement.getopen" prim__open prim__setOpen v



namespace HTMLDialogElement

  export
  new : JSIO HTMLDialogElement
  new = primJS $ HTMLDialogElement.prim__new


  export
  open_ : HTMLDialogElement -> Attribute True Prelude.id Bool
  open_ v = fromPrim "HTMLDialogElement.getopen" prim__open prim__setOpen v


  export
  returnValue : HTMLDialogElement -> Attribute True Prelude.id String
  returnValue v = fromPrim
                    "HTMLDialogElement.getreturnValue"
                    prim__returnValue
                    prim__setReturnValue
                    v


  export
  close' :
       (obj : HTMLDialogElement)
    -> (returnValue : Optional String)
    -> JSIO ()
  close' a b = primJS $ HTMLDialogElement.prim__close a (toFFI b)

  export
  close : (obj : HTMLDialogElement) -> JSIO ()
  close a = primJS $ HTMLDialogElement.prim__close a undef


  export
  show : (obj : HTMLDialogElement) -> JSIO ()
  show a = primJS $ HTMLDialogElement.prim__show a


  export
  showModal : (obj : HTMLDialogElement) -> JSIO ()
  showModal a = primJS $ HTMLDialogElement.prim__showModal a



namespace HTMLDirectoryElement

  export
  new : JSIO HTMLDirectoryElement
  new = primJS $ HTMLDirectoryElement.prim__new


  export
  compact : HTMLDirectoryElement -> Attribute True Prelude.id Bool
  compact v = fromPrim
                "HTMLDirectoryElement.getcompact"
                prim__compact
                prim__setCompact
                v



namespace HTMLDivElement

  export
  new : JSIO HTMLDivElement
  new = primJS $ HTMLDivElement.prim__new


  export
  align : HTMLDivElement -> Attribute True Prelude.id String
  align v = fromPrim "HTMLDivElement.getalign" prim__align prim__setAlign v



namespace HTMLElement

  export
  new : JSIO HTMLElement
  new = primJS $ HTMLElement.prim__new


  export
  accessKey :
       {auto _ : Cast t HTMLElement}
    -> t
    -> Attribute True Prelude.id String
  accessKey v = fromPrim
                  "HTMLElement.getaccessKey"
                  prim__accessKey
                  prim__setAccessKey
                  (cast {to = HTMLElement} v)


  export
  accessKeyLabel : {auto _ : Cast t1 HTMLElement} -> (obj : t1) -> JSIO String
  accessKeyLabel a = primJS $ HTMLElement.prim__accessKeyLabel (cast a)


  export
  autocapitalize :
       {auto _ : Cast t HTMLElement}
    -> t
    -> Attribute True Prelude.id String
  autocapitalize v = fromPrim
                       "HTMLElement.getautocapitalize"
                       prim__autocapitalize
                       prim__setAutocapitalize
                       (cast {to = HTMLElement} v)


  export
  dir : {auto _ : Cast t HTMLElement} -> t -> Attribute True Prelude.id String
  dir v = fromPrim
            "HTMLElement.getdir"
            prim__dir
            prim__setDir
            (cast {to = HTMLElement} v)


  export
  draggable :
       {auto _ : Cast t HTMLElement}
    -> t
    -> Attribute True Prelude.id Bool
  draggable v = fromPrim
                  "HTMLElement.getdraggable"
                  prim__draggable
                  prim__setDraggable
                  (cast {to = HTMLElement} v)


  export
  hidden : {auto _ : Cast t HTMLElement} -> t -> Attribute True Prelude.id Bool
  hidden v = fromPrim
               "HTMLElement.gethidden"
               prim__hidden
               prim__setHidden
               (cast {to = HTMLElement} v)


  export
  innerText :
       {auto _ : Cast t HTMLElement}
    -> t
    -> Attribute True Prelude.id String
  innerText v = fromPrim
                  "HTMLElement.getinnerText"
                  prim__innerText
                  prim__setInnerText
                  (cast {to = HTMLElement} v)


  export
  lang : {auto _ : Cast t HTMLElement} -> t -> Attribute True Prelude.id String
  lang v = fromPrim
             "HTMLElement.getlang"
             prim__lang
             prim__setLang
             (cast {to = HTMLElement} v)


  export
  offsetHeight : {auto _ : Cast t1 HTMLElement} -> (obj : t1) -> JSIO Int32
  offsetHeight a = primJS $ HTMLElement.prim__offsetHeight (cast a)


  export
  offsetLeft : {auto _ : Cast t1 HTMLElement} -> (obj : t1) -> JSIO Int32
  offsetLeft a = primJS $ HTMLElement.prim__offsetLeft (cast a)


  export
  offsetParent :
       {auto _ : Cast t1 HTMLElement}
    -> (obj : t1)
    -> JSIO (Maybe Element)
  offsetParent a = tryJS "HTMLElement.offsetParent" $
    HTMLElement.prim__offsetParent (cast a)


  export
  offsetTop : {auto _ : Cast t1 HTMLElement} -> (obj : t1) -> JSIO Int32
  offsetTop a = primJS $ HTMLElement.prim__offsetTop (cast a)


  export
  offsetWidth : {auto _ : Cast t1 HTMLElement} -> (obj : t1) -> JSIO Int32
  offsetWidth a = primJS $ HTMLElement.prim__offsetWidth (cast a)


  export
  spellcheck :
       {auto _ : Cast t HTMLElement}
    -> t
    -> Attribute True Prelude.id Bool
  spellcheck v = fromPrim
                   "HTMLElement.getspellcheck"
                   prim__spellcheck
                   prim__setSpellcheck
                   (cast {to = HTMLElement} v)


  export
  title : {auto _ : Cast t HTMLElement} -> t -> Attribute True Prelude.id String
  title v = fromPrim
              "HTMLElement.gettitle"
              prim__title
              prim__setTitle
              (cast {to = HTMLElement} v)


  export
  translate :
       {auto _ : Cast t HTMLElement}
    -> t
    -> Attribute True Prelude.id Bool
  translate v = fromPrim
                  "HTMLElement.gettranslate"
                  prim__translate
                  prim__setTranslate
                  (cast {to = HTMLElement} v)


  export
  attachInternals :
       {auto _ : Cast t1 HTMLElement}
    -> (obj : t1)
    -> JSIO ElementInternals
  attachInternals a = primJS $ HTMLElement.prim__attachInternals (cast a)


  export
  click : {auto _ : Cast t1 HTMLElement} -> (obj : t1) -> JSIO ()
  click a = primJS $ HTMLElement.prim__click (cast a)



namespace HTMLEmbedElement

  export
  new : JSIO HTMLEmbedElement
  new = primJS $ HTMLEmbedElement.prim__new


  export
  align : HTMLEmbedElement -> Attribute True Prelude.id String
  align v = fromPrim "HTMLEmbedElement.getalign" prim__align prim__setAlign v


  export
  height : HTMLEmbedElement -> Attribute True Prelude.id String
  height v = fromPrim
               "HTMLEmbedElement.getheight"
               prim__height
               prim__setHeight
               v


  export
  name : HTMLEmbedElement -> Attribute True Prelude.id String
  name v = fromPrim "HTMLEmbedElement.getname" prim__name prim__setName v


  export
  src : HTMLEmbedElement -> Attribute True Prelude.id String
  src v = fromPrim "HTMLEmbedElement.getsrc" prim__src prim__setSrc v


  export
  type : HTMLEmbedElement -> Attribute True Prelude.id String
  type v = fromPrim "HTMLEmbedElement.gettype" prim__type prim__setType v


  export
  width : HTMLEmbedElement -> Attribute True Prelude.id String
  width v = fromPrim "HTMLEmbedElement.getwidth" prim__width prim__setWidth v


  export
  getSVGDocument : (obj : HTMLEmbedElement) -> JSIO (Maybe Document)
  getSVGDocument a = tryJS "HTMLEmbedElement.getSVGDocument" $
    HTMLEmbedElement.prim__getSVGDocument a



namespace HTMLFieldSetElement

  export
  new : JSIO HTMLFieldSetElement
  new = primJS $ HTMLFieldSetElement.prim__new


  export
  disabled : HTMLFieldSetElement -> Attribute True Prelude.id Bool
  disabled v = fromPrim
                 "HTMLFieldSetElement.getdisabled"
                 prim__disabled
                 prim__setDisabled
                 v


  export
  elements : (obj : HTMLFieldSetElement) -> JSIO HTMLCollection
  elements a = primJS $ HTMLFieldSetElement.prim__elements a


  export
  form : (obj : HTMLFieldSetElement) -> JSIO (Maybe HTMLFormElement)
  form a = tryJS "HTMLFieldSetElement.form" $ HTMLFieldSetElement.prim__form a


  export
  name : HTMLFieldSetElement -> Attribute True Prelude.id String
  name v = fromPrim "HTMLFieldSetElement.getname" prim__name prim__setName v


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
  willValidate : (obj : HTMLFieldSetElement) -> JSIO Bool
  willValidate a = tryJS "HTMLFieldSetElement.willValidate" $
    HTMLFieldSetElement.prim__willValidate a


  export
  checkValidity : (obj : HTMLFieldSetElement) -> JSIO Bool
  checkValidity a = tryJS "HTMLFieldSetElement.checkValidity" $
    HTMLFieldSetElement.prim__checkValidity a


  export
  reportValidity : (obj : HTMLFieldSetElement) -> JSIO Bool
  reportValidity a = tryJS "HTMLFieldSetElement.reportValidity" $
    HTMLFieldSetElement.prim__reportValidity a


  export
  setCustomValidity : (obj : HTMLFieldSetElement) -> (error : String) -> JSIO ()
  setCustomValidity a b = primJS $
    HTMLFieldSetElement.prim__setCustomValidity a b



namespace HTMLFontElement

  export
  new : JSIO HTMLFontElement
  new = primJS $ HTMLFontElement.prim__new


  export
  color : HTMLFontElement -> Attribute True Prelude.id String
  color v = fromPrim "HTMLFontElement.getcolor" prim__color prim__setColor v


  export
  face : HTMLFontElement -> Attribute True Prelude.id String
  face v = fromPrim "HTMLFontElement.getface" prim__face prim__setFace v


  export
  size : HTMLFontElement -> Attribute True Prelude.id String
  size v = fromPrim "HTMLFontElement.getsize" prim__size prim__setSize v



namespace HTMLFormControlsCollection

  export
  namedItem :
       (obj : HTMLFormControlsCollection)
    -> (name : String)
    -> JSIO (Maybe (HSum [RadioNodeList, Element]))
  namedItem a b = tryJS "HTMLFormControlsCollection.namedItem" $
    HTMLFormControlsCollection.prim__namedItem a b



namespace HTMLFormElement

  export
  new : JSIO HTMLFormElement
  new = primJS $ HTMLFormElement.prim__new


  export
  get : (obj : HTMLFormElement) -> (index : Bits32) -> JSIO Element
  get a b = primJS $ HTMLFormElement.prim__get a b


  export
  get1 :
       (obj : HTMLFormElement)
    -> (name : String)
    -> JSIO (HSum [RadioNodeList, Element])
  get1 a b = tryJS "HTMLFormElement.get1" $ HTMLFormElement.prim__get1 a b


  export
  acceptCharset : HTMLFormElement -> Attribute True Prelude.id String
  acceptCharset v = fromPrim
                      "HTMLFormElement.getacceptCharset"
                      prim__acceptCharset
                      prim__setAcceptCharset
                      v


  export
  action : HTMLFormElement -> Attribute True Prelude.id String
  action v = fromPrim "HTMLFormElement.getaction" prim__action prim__setAction v


  export
  autocomplete : HTMLFormElement -> Attribute True Prelude.id String
  autocomplete v = fromPrim
                     "HTMLFormElement.getautocomplete"
                     prim__autocomplete
                     prim__setAutocomplete
                     v


  export
  elements : (obj : HTMLFormElement) -> JSIO HTMLFormControlsCollection
  elements a = primJS $ HTMLFormElement.prim__elements a


  export
  encoding : HTMLFormElement -> Attribute True Prelude.id String
  encoding v = fromPrim
                 "HTMLFormElement.getencoding"
                 prim__encoding
                 prim__setEncoding
                 v


  export
  enctype : HTMLFormElement -> Attribute True Prelude.id String
  enctype v = fromPrim
                "HTMLFormElement.getenctype"
                prim__enctype
                prim__setEnctype
                v


  export
  length : (obj : HTMLFormElement) -> JSIO Bits32
  length a = primJS $ HTMLFormElement.prim__length a


  export
  method : HTMLFormElement -> Attribute True Prelude.id String
  method v = fromPrim "HTMLFormElement.getmethod" prim__method prim__setMethod v


  export
  name : HTMLFormElement -> Attribute True Prelude.id String
  name v = fromPrim "HTMLFormElement.getname" prim__name prim__setName v


  export
  noValidate : HTMLFormElement -> Attribute True Prelude.id Bool
  noValidate v = fromPrim
                   "HTMLFormElement.getnoValidate"
                   prim__noValidate
                   prim__setNoValidate
                   v


  export
  rel : HTMLFormElement -> Attribute True Prelude.id String
  rel v = fromPrim "HTMLFormElement.getrel" prim__rel prim__setRel v


  export
  relList : (obj : HTMLFormElement) -> JSIO DOMTokenList
  relList a = primJS $ HTMLFormElement.prim__relList a


  export
  target : HTMLFormElement -> Attribute True Prelude.id String
  target v = fromPrim "HTMLFormElement.gettarget" prim__target prim__setTarget v


  export
  checkValidity : (obj : HTMLFormElement) -> JSIO Bool
  checkValidity a = tryJS "HTMLFormElement.checkValidity" $
    HTMLFormElement.prim__checkValidity a


  export
  reportValidity : (obj : HTMLFormElement) -> JSIO Bool
  reportValidity a = tryJS "HTMLFormElement.reportValidity" $
    HTMLFormElement.prim__reportValidity a


  export
  requestSubmit' :
       {auto _ : Cast t2 HTMLElement}
    -> (obj : HTMLFormElement)
    -> (submitter : Optional (Maybe t2))
    -> JSIO ()
  requestSubmit' a b = primJS $ HTMLFormElement.prim__requestSubmit a (omyUp b)

  export
  requestSubmit : (obj : HTMLFormElement) -> JSIO ()
  requestSubmit a = primJS $ HTMLFormElement.prim__requestSubmit a undef


  export
  reset : (obj : HTMLFormElement) -> JSIO ()
  reset a = primJS $ HTMLFormElement.prim__reset a


  export
  submit : (obj : HTMLFormElement) -> JSIO ()
  submit a = primJS $ HTMLFormElement.prim__submit a



namespace HTMLFrameElement

  export
  new : JSIO HTMLFrameElement
  new = primJS $ HTMLFrameElement.prim__new


  export
  contentDocument : (obj : HTMLFrameElement) -> JSIO (Maybe Document)
  contentDocument a = tryJS "HTMLFrameElement.contentDocument" $
    HTMLFrameElement.prim__contentDocument a


  export
  contentWindow : (obj : HTMLFrameElement) -> JSIO (Maybe WindowProxy)
  contentWindow a = tryJS "HTMLFrameElement.contentWindow" $
    HTMLFrameElement.prim__contentWindow a


  export
  frameBorder : HTMLFrameElement -> Attribute True Prelude.id String
  frameBorder v = fromPrim
                    "HTMLFrameElement.getframeBorder"
                    prim__frameBorder
                    prim__setFrameBorder
                    v


  export
  longDesc : HTMLFrameElement -> Attribute True Prelude.id String
  longDesc v = fromPrim
                 "HTMLFrameElement.getlongDesc"
                 prim__longDesc
                 prim__setLongDesc
                 v


  export
  marginHeight : HTMLFrameElement -> Attribute True Prelude.id String
  marginHeight v = fromPrim
                     "HTMLFrameElement.getmarginHeight"
                     prim__marginHeight
                     prim__setMarginHeight
                     v


  export
  marginWidth : HTMLFrameElement -> Attribute True Prelude.id String
  marginWidth v = fromPrim
                    "HTMLFrameElement.getmarginWidth"
                    prim__marginWidth
                    prim__setMarginWidth
                    v


  export
  name : HTMLFrameElement -> Attribute True Prelude.id String
  name v = fromPrim "HTMLFrameElement.getname" prim__name prim__setName v


  export
  noResize : HTMLFrameElement -> Attribute True Prelude.id Bool
  noResize v = fromPrim
                 "HTMLFrameElement.getnoResize"
                 prim__noResize
                 prim__setNoResize
                 v


  export
  scrolling : HTMLFrameElement -> Attribute True Prelude.id String
  scrolling v = fromPrim
                  "HTMLFrameElement.getscrolling"
                  prim__scrolling
                  prim__setScrolling
                  v


  export
  src : HTMLFrameElement -> Attribute True Prelude.id String
  src v = fromPrim "HTMLFrameElement.getsrc" prim__src prim__setSrc v



namespace HTMLFrameSetElement

  export
  new : JSIO HTMLFrameSetElement
  new = primJS $ HTMLFrameSetElement.prim__new


  export
  cols : HTMLFrameSetElement -> Attribute True Prelude.id String
  cols v = fromPrim "HTMLFrameSetElement.getcols" prim__cols prim__setCols v


  export
  rows : HTMLFrameSetElement -> Attribute True Prelude.id String
  rows v = fromPrim "HTMLFrameSetElement.getrows" prim__rows prim__setRows v



namespace HTMLHRElement

  export
  new : JSIO HTMLHRElement
  new = primJS $ HTMLHRElement.prim__new


  export
  align : HTMLHRElement -> Attribute True Prelude.id String
  align v = fromPrim "HTMLHRElement.getalign" prim__align prim__setAlign v


  export
  color : HTMLHRElement -> Attribute True Prelude.id String
  color v = fromPrim "HTMLHRElement.getcolor" prim__color prim__setColor v


  export
  noShade : HTMLHRElement -> Attribute True Prelude.id Bool
  noShade v = fromPrim
                "HTMLHRElement.getnoShade"
                prim__noShade
                prim__setNoShade
                v


  export
  size : HTMLHRElement -> Attribute True Prelude.id String
  size v = fromPrim "HTMLHRElement.getsize" prim__size prim__setSize v


  export
  width : HTMLHRElement -> Attribute True Prelude.id String
  width v = fromPrim "HTMLHRElement.getwidth" prim__width prim__setWidth v



namespace HTMLHeadElement

  export
  new : JSIO HTMLHeadElement
  new = primJS $ HTMLHeadElement.prim__new



namespace HTMLHeadingElement

  export
  new : JSIO HTMLHeadingElement
  new = primJS $ HTMLHeadingElement.prim__new


  export
  align : HTMLHeadingElement -> Attribute True Prelude.id String
  align v = fromPrim "HTMLHeadingElement.getalign" prim__align prim__setAlign v



namespace HTMLHtmlElement

  export
  new : JSIO HTMLHtmlElement
  new = primJS $ HTMLHtmlElement.prim__new


  export
  version : HTMLHtmlElement -> Attribute True Prelude.id String
  version v = fromPrim
                "HTMLHtmlElement.getversion"
                prim__version
                prim__setVersion
                v



namespace HTMLIFrameElement

  export
  new : JSIO HTMLIFrameElement
  new = primJS $ HTMLIFrameElement.prim__new


  export
  align : HTMLIFrameElement -> Attribute True Prelude.id String
  align v = fromPrim "HTMLIFrameElement.getalign" prim__align prim__setAlign v


  export
  allow : HTMLIFrameElement -> Attribute True Prelude.id String
  allow v = fromPrim "HTMLIFrameElement.getallow" prim__allow prim__setAllow v


  export
  allowFullscreen : HTMLIFrameElement -> Attribute True Prelude.id Bool
  allowFullscreen v = fromPrim
                        "HTMLIFrameElement.getallowFullscreen"
                        prim__allowFullscreen
                        prim__setAllowFullscreen
                        v


  export
  contentDocument : (obj : HTMLIFrameElement) -> JSIO (Maybe Document)
  contentDocument a = tryJS "HTMLIFrameElement.contentDocument" $
    HTMLIFrameElement.prim__contentDocument a


  export
  contentWindow : (obj : HTMLIFrameElement) -> JSIO (Maybe WindowProxy)
  contentWindow a = tryJS "HTMLIFrameElement.contentWindow" $
    HTMLIFrameElement.prim__contentWindow a


  export
  frameBorder : HTMLIFrameElement -> Attribute True Prelude.id String
  frameBorder v = fromPrim
                    "HTMLIFrameElement.getframeBorder"
                    prim__frameBorder
                    prim__setFrameBorder
                    v


  export
  height : HTMLIFrameElement -> Attribute True Prelude.id String
  height v = fromPrim
               "HTMLIFrameElement.getheight"
               prim__height
               prim__setHeight
               v


  export
  loading : HTMLIFrameElement -> Attribute True Prelude.id String
  loading v = fromPrim
                "HTMLIFrameElement.getloading"
                prim__loading
                prim__setLoading
                v


  export
  longDesc : HTMLIFrameElement -> Attribute True Prelude.id String
  longDesc v = fromPrim
                 "HTMLIFrameElement.getlongDesc"
                 prim__longDesc
                 prim__setLongDesc
                 v


  export
  marginHeight : HTMLIFrameElement -> Attribute True Prelude.id String
  marginHeight v = fromPrim
                     "HTMLIFrameElement.getmarginHeight"
                     prim__marginHeight
                     prim__setMarginHeight
                     v


  export
  marginWidth : HTMLIFrameElement -> Attribute True Prelude.id String
  marginWidth v = fromPrim
                    "HTMLIFrameElement.getmarginWidth"
                    prim__marginWidth
                    prim__setMarginWidth
                    v


  export
  name : HTMLIFrameElement -> Attribute True Prelude.id String
  name v = fromPrim "HTMLIFrameElement.getname" prim__name prim__setName v


  export
  referrerPolicy : HTMLIFrameElement -> Attribute True Prelude.id String
  referrerPolicy v = fromPrim
                       "HTMLIFrameElement.getreferrerPolicy"
                       prim__referrerPolicy
                       prim__setReferrerPolicy
                       v


  export
  sandbox : (obj : HTMLIFrameElement) -> JSIO DOMTokenList
  sandbox a = primJS $ HTMLIFrameElement.prim__sandbox a


  export
  scrolling : HTMLIFrameElement -> Attribute True Prelude.id String
  scrolling v = fromPrim
                  "HTMLIFrameElement.getscrolling"
                  prim__scrolling
                  prim__setScrolling
                  v


  export
  src : HTMLIFrameElement -> Attribute True Prelude.id String
  src v = fromPrim "HTMLIFrameElement.getsrc" prim__src prim__setSrc v


  export
  srcdoc : HTMLIFrameElement -> Attribute True Prelude.id String
  srcdoc v = fromPrim
               "HTMLIFrameElement.getsrcdoc"
               prim__srcdoc
               prim__setSrcdoc
               v


  export
  width : HTMLIFrameElement -> Attribute True Prelude.id String
  width v = fromPrim "HTMLIFrameElement.getwidth" prim__width prim__setWidth v


  export
  getSVGDocument : (obj : HTMLIFrameElement) -> JSIO (Maybe Document)
  getSVGDocument a = tryJS "HTMLIFrameElement.getSVGDocument" $
    HTMLIFrameElement.prim__getSVGDocument a



namespace HTMLImageElement

  export
  new : JSIO HTMLImageElement
  new = primJS $ HTMLImageElement.prim__new


  export
  align : HTMLImageElement -> Attribute True Prelude.id String
  align v = fromPrim "HTMLImageElement.getalign" prim__align prim__setAlign v


  export
  alt : HTMLImageElement -> Attribute True Prelude.id String
  alt v = fromPrim "HTMLImageElement.getalt" prim__alt prim__setAlt v


  export
  border : HTMLImageElement -> Attribute True Prelude.id String
  border v = fromPrim
               "HTMLImageElement.getborder"
               prim__border
               prim__setBorder
               v


  export
  complete : (obj : HTMLImageElement) -> JSIO Bool
  complete a = tryJS "HTMLImageElement.complete" $
    HTMLImageElement.prim__complete a


  export
  crossOrigin : HTMLImageElement -> Attribute False Maybe String
  crossOrigin v = fromNullablePrim
                    "HTMLImageElement.getcrossOrigin"
                    prim__crossOrigin
                    prim__setCrossOrigin
                    v


  export
  currentSrc : (obj : HTMLImageElement) -> JSIO String
  currentSrc a = primJS $ HTMLImageElement.prim__currentSrc a


  export
  decoding : HTMLImageElement -> Attribute True Prelude.id String
  decoding v = fromPrim
                 "HTMLImageElement.getdecoding"
                 prim__decoding
                 prim__setDecoding
                 v


  export
  height : HTMLImageElement -> Attribute True Prelude.id Bits32
  height v = fromPrim
               "HTMLImageElement.getheight"
               prim__height
               prim__setHeight
               v


  export
  hspace : HTMLImageElement -> Attribute True Prelude.id Bits32
  hspace v = fromPrim
               "HTMLImageElement.gethspace"
               prim__hspace
               prim__setHspace
               v


  export
  isMap : HTMLImageElement -> Attribute True Prelude.id Bool
  isMap v = fromPrim "HTMLImageElement.getisMap" prim__isMap prim__setIsMap v


  export
  loading : HTMLImageElement -> Attribute True Prelude.id String
  loading v = fromPrim
                "HTMLImageElement.getloading"
                prim__loading
                prim__setLoading
                v


  export
  longDesc : HTMLImageElement -> Attribute True Prelude.id String
  longDesc v = fromPrim
                 "HTMLImageElement.getlongDesc"
                 prim__longDesc
                 prim__setLongDesc
                 v


  export
  lowsrc : HTMLImageElement -> Attribute True Prelude.id String
  lowsrc v = fromPrim
               "HTMLImageElement.getlowsrc"
               prim__lowsrc
               prim__setLowsrc
               v


  export
  name : HTMLImageElement -> Attribute True Prelude.id String
  name v = fromPrim "HTMLImageElement.getname" prim__name prim__setName v


  export
  naturalHeight : (obj : HTMLImageElement) -> JSIO Bits32
  naturalHeight a = primJS $ HTMLImageElement.prim__naturalHeight a


  export
  naturalWidth : (obj : HTMLImageElement) -> JSIO Bits32
  naturalWidth a = primJS $ HTMLImageElement.prim__naturalWidth a


  export
  referrerPolicy : HTMLImageElement -> Attribute True Prelude.id String
  referrerPolicy v = fromPrim
                       "HTMLImageElement.getreferrerPolicy"
                       prim__referrerPolicy
                       prim__setReferrerPolicy
                       v


  export
  sizes : HTMLImageElement -> Attribute True Prelude.id String
  sizes v = fromPrim "HTMLImageElement.getsizes" prim__sizes prim__setSizes v


  export
  src : HTMLImageElement -> Attribute True Prelude.id String
  src v = fromPrim "HTMLImageElement.getsrc" prim__src prim__setSrc v


  export
  srcset : HTMLImageElement -> Attribute True Prelude.id String
  srcset v = fromPrim
               "HTMLImageElement.getsrcset"
               prim__srcset
               prim__setSrcset
               v


  export
  useMap : HTMLImageElement -> Attribute True Prelude.id String
  useMap v = fromPrim
               "HTMLImageElement.getuseMap"
               prim__useMap
               prim__setUseMap
               v


  export
  vspace : HTMLImageElement -> Attribute True Prelude.id Bits32
  vspace v = fromPrim
               "HTMLImageElement.getvspace"
               prim__vspace
               prim__setVspace
               v


  export
  width : HTMLImageElement -> Attribute True Prelude.id Bits32
  width v = fromPrim "HTMLImageElement.getwidth" prim__width prim__setWidth v


  export
  x : (obj : HTMLImageElement) -> JSIO Int32
  x a = primJS $ HTMLImageElement.prim__x a


  export
  y : (obj : HTMLImageElement) -> JSIO Int32
  y a = primJS $ HTMLImageElement.prim__y a


  export
  decode : (obj : HTMLImageElement) -> JSIO (Promise Undefined)
  decode a = primJS $ HTMLImageElement.prim__decode a



namespace HTMLInputElement

  export
  new : JSIO HTMLInputElement
  new = primJS $ HTMLInputElement.prim__new


  export
  accept : HTMLInputElement -> Attribute True Prelude.id String
  accept v = fromPrim
               "HTMLInputElement.getaccept"
               prim__accept
               prim__setAccept
               v


  export
  align : HTMLInputElement -> Attribute True Prelude.id String
  align v = fromPrim "HTMLInputElement.getalign" prim__align prim__setAlign v


  export
  alt : HTMLInputElement -> Attribute True Prelude.id String
  alt v = fromPrim "HTMLInputElement.getalt" prim__alt prim__setAlt v


  export
  autocomplete : HTMLInputElement -> Attribute True Prelude.id String
  autocomplete v = fromPrim
                     "HTMLInputElement.getautocomplete"
                     prim__autocomplete
                     prim__setAutocomplete
                     v


  export
  checked : HTMLInputElement -> Attribute True Prelude.id Bool
  checked v = fromPrim
                "HTMLInputElement.getchecked"
                prim__checked
                prim__setChecked
                v


  export
  defaultChecked : HTMLInputElement -> Attribute True Prelude.id Bool
  defaultChecked v = fromPrim
                       "HTMLInputElement.getdefaultChecked"
                       prim__defaultChecked
                       prim__setDefaultChecked
                       v


  export
  defaultValue : HTMLInputElement -> Attribute True Prelude.id String
  defaultValue v = fromPrim
                     "HTMLInputElement.getdefaultValue"
                     prim__defaultValue
                     prim__setDefaultValue
                     v


  export
  dirName : HTMLInputElement -> Attribute True Prelude.id String
  dirName v = fromPrim
                "HTMLInputElement.getdirName"
                prim__dirName
                prim__setDirName
                v


  export
  disabled : HTMLInputElement -> Attribute True Prelude.id Bool
  disabled v = fromPrim
                 "HTMLInputElement.getdisabled"
                 prim__disabled
                 prim__setDisabled
                 v


  export
  files : HTMLInputElement -> Attribute False Maybe FileList
  files v = fromNullablePrim
              "HTMLInputElement.getfiles"
              prim__files
              prim__setFiles
              v


  export
  form : (obj : HTMLInputElement) -> JSIO (Maybe HTMLFormElement)
  form a = tryJS "HTMLInputElement.form" $ HTMLInputElement.prim__form a


  export
  formAction : HTMLInputElement -> Attribute True Prelude.id String
  formAction v = fromPrim
                   "HTMLInputElement.getformAction"
                   prim__formAction
                   prim__setFormAction
                   v


  export
  formEnctype : HTMLInputElement -> Attribute True Prelude.id String
  formEnctype v = fromPrim
                    "HTMLInputElement.getformEnctype"
                    prim__formEnctype
                    prim__setFormEnctype
                    v


  export
  formMethod : HTMLInputElement -> Attribute True Prelude.id String
  formMethod v = fromPrim
                   "HTMLInputElement.getformMethod"
                   prim__formMethod
                   prim__setFormMethod
                   v


  export
  formNoValidate : HTMLInputElement -> Attribute True Prelude.id Bool
  formNoValidate v = fromPrim
                       "HTMLInputElement.getformNoValidate"
                       prim__formNoValidate
                       prim__setFormNoValidate
                       v


  export
  formTarget : HTMLInputElement -> Attribute True Prelude.id String
  formTarget v = fromPrim
                   "HTMLInputElement.getformTarget"
                   prim__formTarget
                   prim__setFormTarget
                   v


  export
  height : HTMLInputElement -> Attribute True Prelude.id Bits32
  height v = fromPrim
               "HTMLInputElement.getheight"
               prim__height
               prim__setHeight
               v


  export
  indeterminate : HTMLInputElement -> Attribute True Prelude.id Bool
  indeterminate v = fromPrim
                      "HTMLInputElement.getindeterminate"
                      prim__indeterminate
                      prim__setIndeterminate
                      v


  export
  labels : (obj : HTMLInputElement) -> JSIO (Maybe NodeList)
  labels a = tryJS "HTMLInputElement.labels" $ HTMLInputElement.prim__labels a


  export
  list : (obj : HTMLInputElement) -> JSIO (Maybe HTMLElement)
  list a = tryJS "HTMLInputElement.list" $ HTMLInputElement.prim__list a


  export
  max : HTMLInputElement -> Attribute True Prelude.id String
  max v = fromPrim "HTMLInputElement.getmax" prim__max prim__setMax v


  export
  maxLength : HTMLInputElement -> Attribute True Prelude.id Int32
  maxLength v = fromPrim
                  "HTMLInputElement.getmaxLength"
                  prim__maxLength
                  prim__setMaxLength
                  v


  export
  min : HTMLInputElement -> Attribute True Prelude.id String
  min v = fromPrim "HTMLInputElement.getmin" prim__min prim__setMin v


  export
  minLength : HTMLInputElement -> Attribute True Prelude.id Int32
  minLength v = fromPrim
                  "HTMLInputElement.getminLength"
                  prim__minLength
                  prim__setMinLength
                  v


  export
  multiple : HTMLInputElement -> Attribute True Prelude.id Bool
  multiple v = fromPrim
                 "HTMLInputElement.getmultiple"
                 prim__multiple
                 prim__setMultiple
                 v


  export
  name : HTMLInputElement -> Attribute True Prelude.id String
  name v = fromPrim "HTMLInputElement.getname" prim__name prim__setName v


  export
  pattern : HTMLInputElement -> Attribute True Prelude.id String
  pattern v = fromPrim
                "HTMLInputElement.getpattern"
                prim__pattern
                prim__setPattern
                v


  export
  placeholder : HTMLInputElement -> Attribute True Prelude.id String
  placeholder v = fromPrim
                    "HTMLInputElement.getplaceholder"
                    prim__placeholder
                    prim__setPlaceholder
                    v


  export
  readOnly : HTMLInputElement -> Attribute True Prelude.id Bool
  readOnly v = fromPrim
                 "HTMLInputElement.getreadOnly"
                 prim__readOnly
                 prim__setReadOnly
                 v


  export
  required : HTMLInputElement -> Attribute True Prelude.id Bool
  required v = fromPrim
                 "HTMLInputElement.getrequired"
                 prim__required
                 prim__setRequired
                 v


  export
  selectionDirection : HTMLInputElement -> Attribute False Maybe String
  selectionDirection v = fromNullablePrim
                           "HTMLInputElement.getselectionDirection"
                           prim__selectionDirection
                           prim__setSelectionDirection
                           v


  export
  selectionEnd : HTMLInputElement -> Attribute False Maybe Bits32
  selectionEnd v = fromNullablePrim
                     "HTMLInputElement.getselectionEnd"
                     prim__selectionEnd
                     prim__setSelectionEnd
                     v


  export
  selectionStart : HTMLInputElement -> Attribute False Maybe Bits32
  selectionStart v = fromNullablePrim
                       "HTMLInputElement.getselectionStart"
                       prim__selectionStart
                       prim__setSelectionStart
                       v


  export
  size : HTMLInputElement -> Attribute True Prelude.id Bits32
  size v = fromPrim "HTMLInputElement.getsize" prim__size prim__setSize v


  export
  src : HTMLInputElement -> Attribute True Prelude.id String
  src v = fromPrim "HTMLInputElement.getsrc" prim__src prim__setSrc v


  export
  step : HTMLInputElement -> Attribute True Prelude.id String
  step v = fromPrim "HTMLInputElement.getstep" prim__step prim__setStep v


  export
  type : HTMLInputElement -> Attribute True Prelude.id String
  type v = fromPrim "HTMLInputElement.gettype" prim__type prim__setType v


  export
  useMap : HTMLInputElement -> Attribute True Prelude.id String
  useMap v = fromPrim
               "HTMLInputElement.getuseMap"
               prim__useMap
               prim__setUseMap
               v


  export
  validationMessage : (obj : HTMLInputElement) -> JSIO String
  validationMessage a = primJS $ HTMLInputElement.prim__validationMessage a


  export
  validity : (obj : HTMLInputElement) -> JSIO ValidityState
  validity a = primJS $ HTMLInputElement.prim__validity a


  export
  value : HTMLInputElement -> Attribute True Prelude.id String
  value v = fromPrim "HTMLInputElement.getvalue" prim__value prim__setValue v


  export
  valueAsDate : HTMLInputElement -> Attribute False Maybe Object
  valueAsDate v = fromNullablePrim
                    "HTMLInputElement.getvalueAsDate"
                    prim__valueAsDate
                    prim__setValueAsDate
                    v


  export
  valueAsNumber : HTMLInputElement -> Attribute True Prelude.id Double
  valueAsNumber v = fromPrim
                      "HTMLInputElement.getvalueAsNumber"
                      prim__valueAsNumber
                      prim__setValueAsNumber
                      v


  export
  width : HTMLInputElement -> Attribute True Prelude.id Bits32
  width v = fromPrim "HTMLInputElement.getwidth" prim__width prim__setWidth v


  export
  willValidate : (obj : HTMLInputElement) -> JSIO Bool
  willValidate a = tryJS "HTMLInputElement.willValidate" $
    HTMLInputElement.prim__willValidate a


  export
  checkValidity : (obj : HTMLInputElement) -> JSIO Bool
  checkValidity a = tryJS "HTMLInputElement.checkValidity" $
    HTMLInputElement.prim__checkValidity a


  export
  reportValidity : (obj : HTMLInputElement) -> JSIO Bool
  reportValidity a = tryJS "HTMLInputElement.reportValidity" $
    HTMLInputElement.prim__reportValidity a


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
  setRangeText1' :
       (obj : HTMLInputElement)
    -> (replacement : String)
    -> (start : Bits32)
    -> (end : Bits32)
    -> (selectionMode : Optional SelectionMode)
    -> JSIO ()
  setRangeText1' a b c d e = primJS $
    HTMLInputElement.prim__setRangeText1 a b c d (toFFI e)

  export
  setRangeText1 :
       (obj : HTMLInputElement)
    -> (replacement : String)
    -> (start : Bits32)
    -> (end : Bits32)
    -> JSIO ()
  setRangeText1 a b c d = primJS $
    HTMLInputElement.prim__setRangeText1 a b c d undef


  export
  setSelectionRange' :
       (obj : HTMLInputElement)
    -> (start : Bits32)
    -> (end : Bits32)
    -> (direction : Optional String)
    -> JSIO ()
  setSelectionRange' a b c d = primJS $
    HTMLInputElement.prim__setSelectionRange a b c (toFFI d)

  export
  setSelectionRange :
       (obj : HTMLInputElement)
    -> (start : Bits32)
    -> (end : Bits32)
    -> JSIO ()
  setSelectionRange a b c = primJS $
    HTMLInputElement.prim__setSelectionRange a b c undef


  export
  stepDown' : (obj : HTMLInputElement) -> (n : Optional Int32) -> JSIO ()
  stepDown' a b = primJS $ HTMLInputElement.prim__stepDown a (toFFI b)

  export
  stepDown : (obj : HTMLInputElement) -> JSIO ()
  stepDown a = primJS $ HTMLInputElement.prim__stepDown a undef


  export
  stepUp' : (obj : HTMLInputElement) -> (n : Optional Int32) -> JSIO ()
  stepUp' a b = primJS $ HTMLInputElement.prim__stepUp a (toFFI b)

  export
  stepUp : (obj : HTMLInputElement) -> JSIO ()
  stepUp a = primJS $ HTMLInputElement.prim__stepUp a undef



namespace HTMLLIElement

  export
  new : JSIO HTMLLIElement
  new = primJS $ HTMLLIElement.prim__new


  export
  type : HTMLLIElement -> Attribute True Prelude.id String
  type v = fromPrim "HTMLLIElement.gettype" prim__type prim__setType v


  export
  value : HTMLLIElement -> Attribute True Prelude.id Int32
  value v = fromPrim "HTMLLIElement.getvalue" prim__value prim__setValue v



namespace HTMLLabelElement

  export
  new : JSIO HTMLLabelElement
  new = primJS $ HTMLLabelElement.prim__new


  export
  control : (obj : HTMLLabelElement) -> JSIO (Maybe HTMLElement)
  control a = tryJS "HTMLLabelElement.control" $
    HTMLLabelElement.prim__control a


  export
  form : (obj : HTMLLabelElement) -> JSIO (Maybe HTMLFormElement)
  form a = tryJS "HTMLLabelElement.form" $ HTMLLabelElement.prim__form a


  export
  htmlFor : HTMLLabelElement -> Attribute True Prelude.id String
  htmlFor v = fromPrim
                "HTMLLabelElement.gethtmlFor"
                prim__htmlFor
                prim__setHtmlFor
                v



namespace HTMLLegendElement

  export
  new : JSIO HTMLLegendElement
  new = primJS $ HTMLLegendElement.prim__new


  export
  align : HTMLLegendElement -> Attribute True Prelude.id String
  align v = fromPrim "HTMLLegendElement.getalign" prim__align prim__setAlign v


  export
  form : (obj : HTMLLegendElement) -> JSIO (Maybe HTMLFormElement)
  form a = tryJS "HTMLLegendElement.form" $ HTMLLegendElement.prim__form a



namespace HTMLLinkElement

  export
  new : JSIO HTMLLinkElement
  new = primJS $ HTMLLinkElement.prim__new


  export
  as : HTMLLinkElement -> Attribute True Prelude.id String
  as v = fromPrim "HTMLLinkElement.getas" prim__as prim__setAs v


  export
  charset : HTMLLinkElement -> Attribute True Prelude.id String
  charset v = fromPrim
                "HTMLLinkElement.getcharset"
                prim__charset
                prim__setCharset
                v


  export
  crossOrigin : HTMLLinkElement -> Attribute False Maybe String
  crossOrigin v = fromNullablePrim
                    "HTMLLinkElement.getcrossOrigin"
                    prim__crossOrigin
                    prim__setCrossOrigin
                    v


  export
  disabled : HTMLLinkElement -> Attribute True Prelude.id Bool
  disabled v = fromPrim
                 "HTMLLinkElement.getdisabled"
                 prim__disabled
                 prim__setDisabled
                 v


  export
  href : HTMLLinkElement -> Attribute True Prelude.id String
  href v = fromPrim "HTMLLinkElement.gethref" prim__href prim__setHref v


  export
  hreflang : HTMLLinkElement -> Attribute True Prelude.id String
  hreflang v = fromPrim
                 "HTMLLinkElement.gethreflang"
                 prim__hreflang
                 prim__setHreflang
                 v


  export
  imageSizes : HTMLLinkElement -> Attribute True Prelude.id String
  imageSizes v = fromPrim
                   "HTMLLinkElement.getimageSizes"
                   prim__imageSizes
                   prim__setImageSizes
                   v


  export
  imageSrcset : HTMLLinkElement -> Attribute True Prelude.id String
  imageSrcset v = fromPrim
                    "HTMLLinkElement.getimageSrcset"
                    prim__imageSrcset
                    prim__setImageSrcset
                    v


  export
  integrity : HTMLLinkElement -> Attribute True Prelude.id String
  integrity v = fromPrim
                  "HTMLLinkElement.getintegrity"
                  prim__integrity
                  prim__setIntegrity
                  v


  export
  media : HTMLLinkElement -> Attribute True Prelude.id String
  media v = fromPrim "HTMLLinkElement.getmedia" prim__media prim__setMedia v


  export
  referrerPolicy : HTMLLinkElement -> Attribute True Prelude.id String
  referrerPolicy v = fromPrim
                       "HTMLLinkElement.getreferrerPolicy"
                       prim__referrerPolicy
                       prim__setReferrerPolicy
                       v


  export
  rel : HTMLLinkElement -> Attribute True Prelude.id String
  rel v = fromPrim "HTMLLinkElement.getrel" prim__rel prim__setRel v


  export
  relList : (obj : HTMLLinkElement) -> JSIO DOMTokenList
  relList a = primJS $ HTMLLinkElement.prim__relList a


  export
  rev : HTMLLinkElement -> Attribute True Prelude.id String
  rev v = fromPrim "HTMLLinkElement.getrev" prim__rev prim__setRev v


  export
  sizes : (obj : HTMLLinkElement) -> JSIO DOMTokenList
  sizes a = primJS $ HTMLLinkElement.prim__sizes a


  export
  target : HTMLLinkElement -> Attribute True Prelude.id String
  target v = fromPrim "HTMLLinkElement.gettarget" prim__target prim__setTarget v


  export
  type : HTMLLinkElement -> Attribute True Prelude.id String
  type v = fromPrim "HTMLLinkElement.gettype" prim__type prim__setType v



namespace HTMLMapElement

  export
  new : JSIO HTMLMapElement
  new = primJS $ HTMLMapElement.prim__new


  export
  areas : (obj : HTMLMapElement) -> JSIO HTMLCollection
  areas a = primJS $ HTMLMapElement.prim__areas a


  export
  name : HTMLMapElement -> Attribute True Prelude.id String
  name v = fromPrim "HTMLMapElement.getname" prim__name prim__setName v



namespace HTMLMarqueeElement

  export
  new : JSIO HTMLMarqueeElement
  new = primJS $ HTMLMarqueeElement.prim__new


  export
  behavior : HTMLMarqueeElement -> Attribute True Prelude.id String
  behavior v = fromPrim
                 "HTMLMarqueeElement.getbehavior"
                 prim__behavior
                 prim__setBehavior
                 v


  export
  bgColor : HTMLMarqueeElement -> Attribute True Prelude.id String
  bgColor v = fromPrim
                "HTMLMarqueeElement.getbgColor"
                prim__bgColor
                prim__setBgColor
                v


  export
  direction : HTMLMarqueeElement -> Attribute True Prelude.id String
  direction v = fromPrim
                  "HTMLMarqueeElement.getdirection"
                  prim__direction
                  prim__setDirection
                  v


  export
  height : HTMLMarqueeElement -> Attribute True Prelude.id String
  height v = fromPrim
               "HTMLMarqueeElement.getheight"
               prim__height
               prim__setHeight
               v


  export
  hspace : HTMLMarqueeElement -> Attribute True Prelude.id Bits32
  hspace v = fromPrim
               "HTMLMarqueeElement.gethspace"
               prim__hspace
               prim__setHspace
               v


  export
  loop : HTMLMarqueeElement -> Attribute True Prelude.id Int32
  loop v = fromPrim "HTMLMarqueeElement.getloop" prim__loop prim__setLoop v


  export
  scrollAmount : HTMLMarqueeElement -> Attribute True Prelude.id Bits32
  scrollAmount v = fromPrim
                     "HTMLMarqueeElement.getscrollAmount"
                     prim__scrollAmount
                     prim__setScrollAmount
                     v


  export
  scrollDelay : HTMLMarqueeElement -> Attribute True Prelude.id Bits32
  scrollDelay v = fromPrim
                    "HTMLMarqueeElement.getscrollDelay"
                    prim__scrollDelay
                    prim__setScrollDelay
                    v


  export
  trueSpeed : HTMLMarqueeElement -> Attribute True Prelude.id Bool
  trueSpeed v = fromPrim
                  "HTMLMarqueeElement.gettrueSpeed"
                  prim__trueSpeed
                  prim__setTrueSpeed
                  v


  export
  vspace : HTMLMarqueeElement -> Attribute True Prelude.id Bits32
  vspace v = fromPrim
               "HTMLMarqueeElement.getvspace"
               prim__vspace
               prim__setVspace
               v


  export
  width : HTMLMarqueeElement -> Attribute True Prelude.id String
  width v = fromPrim "HTMLMarqueeElement.getwidth" prim__width prim__setWidth v


  export
  start : (obj : HTMLMarqueeElement) -> JSIO ()
  start a = primJS $ HTMLMarqueeElement.prim__start a


  export
  stop : (obj : HTMLMarqueeElement) -> JSIO ()
  stop a = primJS $ HTMLMarqueeElement.prim__stop a



namespace HTMLMediaElement

  export
  HAVE_CURRENT_DATA : Bits16
  HAVE_CURRENT_DATA = 2


  export
  HAVE_ENOUGH_DATA : Bits16
  HAVE_ENOUGH_DATA = 4


  export
  HAVE_FUTURE_DATA : Bits16
  HAVE_FUTURE_DATA = 3


  export
  HAVE_METADATA : Bits16
  HAVE_METADATA = 1


  export
  HAVE_NOTHING : Bits16
  HAVE_NOTHING = 0


  export
  NETWORK_EMPTY : Bits16
  NETWORK_EMPTY = 0


  export
  NETWORK_IDLE : Bits16
  NETWORK_IDLE = 1


  export
  NETWORK_LOADING : Bits16
  NETWORK_LOADING = 2


  export
  NETWORK_NO_SOURCE : Bits16
  NETWORK_NO_SOURCE = 3


  export
  audioTracks :
       {auto _ : Cast t1 HTMLMediaElement}
    -> (obj : t1)
    -> JSIO AudioTrackList
  audioTracks a = primJS $ HTMLMediaElement.prim__audioTracks (cast a)


  export
  autoplay :
       {auto _ : Cast t HTMLMediaElement}
    -> t
    -> Attribute True Prelude.id Bool
  autoplay v = fromPrim
                 "HTMLMediaElement.getautoplay"
                 prim__autoplay
                 prim__setAutoplay
                 (cast {to = HTMLMediaElement} v)


  export
  buffered :
       {auto _ : Cast t1 HTMLMediaElement}
    -> (obj : t1)
    -> JSIO TimeRanges
  buffered a = primJS $ HTMLMediaElement.prim__buffered (cast a)


  export
  controls :
       {auto _ : Cast t HTMLMediaElement}
    -> t
    -> Attribute True Prelude.id Bool
  controls v = fromPrim
                 "HTMLMediaElement.getcontrols"
                 prim__controls
                 prim__setControls
                 (cast {to = HTMLMediaElement} v)


  export
  crossOrigin :
       {auto _ : Cast t HTMLMediaElement}
    -> t
    -> Attribute False Maybe String
  crossOrigin v = fromNullablePrim
                    "HTMLMediaElement.getcrossOrigin"
                    prim__crossOrigin
                    prim__setCrossOrigin
                    (cast {to = HTMLMediaElement} v)


  export
  currentSrc : {auto _ : Cast t1 HTMLMediaElement} -> (obj : t1) -> JSIO String
  currentSrc a = primJS $ HTMLMediaElement.prim__currentSrc (cast a)


  export
  currentTime :
       {auto _ : Cast t HTMLMediaElement}
    -> t
    -> Attribute True Prelude.id Double
  currentTime v = fromPrim
                    "HTMLMediaElement.getcurrentTime"
                    prim__currentTime
                    prim__setCurrentTime
                    (cast {to = HTMLMediaElement} v)


  export
  defaultMuted :
       {auto _ : Cast t HTMLMediaElement}
    -> t
    -> Attribute True Prelude.id Bool
  defaultMuted v = fromPrim
                     "HTMLMediaElement.getdefaultMuted"
                     prim__defaultMuted
                     prim__setDefaultMuted
                     (cast {to = HTMLMediaElement} v)


  export
  defaultPlaybackRate :
       {auto _ : Cast t HTMLMediaElement}
    -> t
    -> Attribute True Prelude.id Double
  defaultPlaybackRate v = fromPrim
                            "HTMLMediaElement.getdefaultPlaybackRate"
                            prim__defaultPlaybackRate
                            prim__setDefaultPlaybackRate
                            (cast {to = HTMLMediaElement} v)


  export
  duration : {auto _ : Cast t1 HTMLMediaElement} -> (obj : t1) -> JSIO Double
  duration a = primJS $ HTMLMediaElement.prim__duration (cast a)


  export
  ended : {auto _ : Cast t1 HTMLMediaElement} -> (obj : t1) -> JSIO Bool
  ended a = tryJS "HTMLMediaElement.ended" $
    HTMLMediaElement.prim__ended (cast a)


  export
  error :
       {auto _ : Cast t1 HTMLMediaElement}
    -> (obj : t1)
    -> JSIO (Maybe MediaError)
  error a = tryJS "HTMLMediaElement.error" $
    HTMLMediaElement.prim__error (cast a)


  export
  loop :
       {auto _ : Cast t HTMLMediaElement}
    -> t
    -> Attribute True Prelude.id Bool
  loop v = fromPrim
             "HTMLMediaElement.getloop"
             prim__loop
             prim__setLoop
             (cast {to = HTMLMediaElement} v)


  export
  muted :
       {auto _ : Cast t HTMLMediaElement}
    -> t
    -> Attribute True Prelude.id Bool
  muted v = fromPrim
              "HTMLMediaElement.getmuted"
              prim__muted
              prim__setMuted
              (cast {to = HTMLMediaElement} v)


  export
  networkState :
       {auto _ : Cast t1 HTMLMediaElement}
    -> (obj : t1)
    -> JSIO Bits16
  networkState a = primJS $ HTMLMediaElement.prim__networkState (cast a)


  export
  paused : {auto _ : Cast t1 HTMLMediaElement} -> (obj : t1) -> JSIO Bool
  paused a = tryJS "HTMLMediaElement.paused" $
    HTMLMediaElement.prim__paused (cast a)


  export
  playbackRate :
       {auto _ : Cast t HTMLMediaElement}
    -> t
    -> Attribute True Prelude.id Double
  playbackRate v = fromPrim
                     "HTMLMediaElement.getplaybackRate"
                     prim__playbackRate
                     prim__setPlaybackRate
                     (cast {to = HTMLMediaElement} v)


  export
  played : {auto _ : Cast t1 HTMLMediaElement} -> (obj : t1) -> JSIO TimeRanges
  played a = primJS $ HTMLMediaElement.prim__played (cast a)


  export
  preload :
       {auto _ : Cast t HTMLMediaElement}
    -> t
    -> Attribute True Prelude.id String
  preload v = fromPrim
                "HTMLMediaElement.getpreload"
                prim__preload
                prim__setPreload
                (cast {to = HTMLMediaElement} v)


  export
  preservesPitch :
       {auto _ : Cast t HTMLMediaElement}
    -> t
    -> Attribute True Prelude.id Bool
  preservesPitch v = fromPrim
                       "HTMLMediaElement.getpreservesPitch"
                       prim__preservesPitch
                       prim__setPreservesPitch
                       (cast {to = HTMLMediaElement} v)


  export
  readyState : {auto _ : Cast t1 HTMLMediaElement} -> (obj : t1) -> JSIO Bits16
  readyState a = primJS $ HTMLMediaElement.prim__readyState (cast a)


  export
  seekable :
       {auto _ : Cast t1 HTMLMediaElement}
    -> (obj : t1)
    -> JSIO TimeRanges
  seekable a = primJS $ HTMLMediaElement.prim__seekable (cast a)


  export
  seeking : {auto _ : Cast t1 HTMLMediaElement} -> (obj : t1) -> JSIO Bool
  seeking a = tryJS "HTMLMediaElement.seeking" $
    HTMLMediaElement.prim__seeking (cast a)


  export
  src :
       {auto _ : Cast t HTMLMediaElement}
    -> t
    -> Attribute True Prelude.id String
  src v = fromPrim
            "HTMLMediaElement.getsrc"
            prim__src
            prim__setSrc
            (cast {to = HTMLMediaElement} v)


  export
  srcObject :
       {auto _ : Cast t HTMLMediaElement}
    -> t
    -> Attribute False Maybe (HSum [MediaStream, MediaSource, Blob])
  srcObject v = fromNullablePrim
                  "HTMLMediaElement.getsrcObject"
                  prim__srcObject
                  prim__setSrcObject
                  (cast {to = HTMLMediaElement} v)


  export
  textTracks :
       {auto _ : Cast t1 HTMLMediaElement}
    -> (obj : t1)
    -> JSIO TextTrackList
  textTracks a = primJS $ HTMLMediaElement.prim__textTracks (cast a)


  export
  videoTracks :
       {auto _ : Cast t1 HTMLMediaElement}
    -> (obj : t1)
    -> JSIO VideoTrackList
  videoTracks a = primJS $ HTMLMediaElement.prim__videoTracks (cast a)


  export
  volume :
       {auto _ : Cast t HTMLMediaElement}
    -> t
    -> Attribute True Prelude.id Double
  volume v = fromPrim
               "HTMLMediaElement.getvolume"
               prim__volume
               prim__setVolume
               (cast {to = HTMLMediaElement} v)


  export
  addTextTrack' :
       {auto _ : Cast t1 HTMLMediaElement}
    -> (obj : t1)
    -> (kind : TextTrackKind)
    -> (label : Optional String)
    -> (language : Optional String)
    -> JSIO TextTrack
  addTextTrack' a b c d = primJS $
    HTMLMediaElement.prim__addTextTrack (cast a) (toFFI b) (toFFI c) (toFFI d)

  export
  addTextTrack :
       {auto _ : Cast t1 HTMLMediaElement}
    -> (obj : t1)
    -> (kind : TextTrackKind)
    -> JSIO TextTrack
  addTextTrack a b = primJS $
    HTMLMediaElement.prim__addTextTrack (cast a) (toFFI b) undef undef


  export
  canPlayType :
       {auto _ : Cast t1 HTMLMediaElement}
    -> (obj : t1)
    -> (type : String)
    -> JSIO CanPlayTypeResult
  canPlayType a b = tryJS "HTMLMediaElement.canPlayType" $
    HTMLMediaElement.prim__canPlayType (cast a) b


  export
  fastSeek :
       {auto _ : Cast t1 HTMLMediaElement}
    -> (obj : t1)
    -> (time : Double)
    -> JSIO ()
  fastSeek a b = primJS $ HTMLMediaElement.prim__fastSeek (cast a) b


  export
  getStartDate :
       {auto _ : Cast t1 HTMLMediaElement}
    -> (obj : t1)
    -> JSIO Object
  getStartDate a = primJS $ HTMLMediaElement.prim__getStartDate (cast a)


  export
  load : {auto _ : Cast t1 HTMLMediaElement} -> (obj : t1) -> JSIO ()
  load a = primJS $ HTMLMediaElement.prim__load (cast a)


  export
  pause : {auto _ : Cast t1 HTMLMediaElement} -> (obj : t1) -> JSIO ()
  pause a = primJS $ HTMLMediaElement.prim__pause (cast a)


  export
  play :
       {auto _ : Cast t1 HTMLMediaElement}
    -> (obj : t1)
    -> JSIO (Promise Undefined)
  play a = primJS $ HTMLMediaElement.prim__play (cast a)



namespace HTMLMenuElement

  export
  new : JSIO HTMLMenuElement
  new = primJS $ HTMLMenuElement.prim__new


  export
  compact : HTMLMenuElement -> Attribute True Prelude.id Bool
  compact v = fromPrim
                "HTMLMenuElement.getcompact"
                prim__compact
                prim__setCompact
                v



namespace HTMLMetaElement

  export
  new : JSIO HTMLMetaElement
  new = primJS $ HTMLMetaElement.prim__new


  export
  content : HTMLMetaElement -> Attribute True Prelude.id String
  content v = fromPrim
                "HTMLMetaElement.getcontent"
                prim__content
                prim__setContent
                v


  export
  httpEquiv : HTMLMetaElement -> Attribute True Prelude.id String
  httpEquiv v = fromPrim
                  "HTMLMetaElement.gethttpEquiv"
                  prim__httpEquiv
                  prim__setHttpEquiv
                  v


  export
  name : HTMLMetaElement -> Attribute True Prelude.id String
  name v = fromPrim "HTMLMetaElement.getname" prim__name prim__setName v


  export
  scheme : HTMLMetaElement -> Attribute True Prelude.id String
  scheme v = fromPrim "HTMLMetaElement.getscheme" prim__scheme prim__setScheme v



namespace HTMLMeterElement

  export
  new : JSIO HTMLMeterElement
  new = primJS $ HTMLMeterElement.prim__new


  export
  high : HTMLMeterElement -> Attribute True Prelude.id Double
  high v = fromPrim "HTMLMeterElement.gethigh" prim__high prim__setHigh v


  export
  labels : (obj : HTMLMeterElement) -> JSIO NodeList
  labels a = primJS $ HTMLMeterElement.prim__labels a


  export
  low : HTMLMeterElement -> Attribute True Prelude.id Double
  low v = fromPrim "HTMLMeterElement.getlow" prim__low prim__setLow v


  export
  max : HTMLMeterElement -> Attribute True Prelude.id Double
  max v = fromPrim "HTMLMeterElement.getmax" prim__max prim__setMax v


  export
  min : HTMLMeterElement -> Attribute True Prelude.id Double
  min v = fromPrim "HTMLMeterElement.getmin" prim__min prim__setMin v


  export
  optimum : HTMLMeterElement -> Attribute True Prelude.id Double
  optimum v = fromPrim
                "HTMLMeterElement.getoptimum"
                prim__optimum
                prim__setOptimum
                v


  export
  value : HTMLMeterElement -> Attribute True Prelude.id Double
  value v = fromPrim "HTMLMeterElement.getvalue" prim__value prim__setValue v



namespace HTMLModElement

  export
  new : JSIO HTMLModElement
  new = primJS $ HTMLModElement.prim__new


  export
  cite : HTMLModElement -> Attribute True Prelude.id String
  cite v = fromPrim "HTMLModElement.getcite" prim__cite prim__setCite v


  export
  dateTime : HTMLModElement -> Attribute True Prelude.id String
  dateTime v = fromPrim
                 "HTMLModElement.getdateTime"
                 prim__dateTime
                 prim__setDateTime
                 v



namespace HTMLOListElement

  export
  new : JSIO HTMLOListElement
  new = primJS $ HTMLOListElement.prim__new


  export
  compact : HTMLOListElement -> Attribute True Prelude.id Bool
  compact v = fromPrim
                "HTMLOListElement.getcompact"
                prim__compact
                prim__setCompact
                v


  export
  reversed : HTMLOListElement -> Attribute True Prelude.id Bool
  reversed v = fromPrim
                 "HTMLOListElement.getreversed"
                 prim__reversed
                 prim__setReversed
                 v


  export
  start : HTMLOListElement -> Attribute True Prelude.id Int32
  start v = fromPrim "HTMLOListElement.getstart" prim__start prim__setStart v


  export
  type : HTMLOListElement -> Attribute True Prelude.id String
  type v = fromPrim "HTMLOListElement.gettype" prim__type prim__setType v



namespace HTMLObjectElement

  export
  new : JSIO HTMLObjectElement
  new = primJS $ HTMLObjectElement.prim__new


  export
  align : HTMLObjectElement -> Attribute True Prelude.id String
  align v = fromPrim "HTMLObjectElement.getalign" prim__align prim__setAlign v


  export
  archive : HTMLObjectElement -> Attribute True Prelude.id String
  archive v = fromPrim
                "HTMLObjectElement.getarchive"
                prim__archive
                prim__setArchive
                v


  export
  border : HTMLObjectElement -> Attribute True Prelude.id String
  border v = fromPrim
               "HTMLObjectElement.getborder"
               prim__border
               prim__setBorder
               v


  export
  code : HTMLObjectElement -> Attribute True Prelude.id String
  code v = fromPrim "HTMLObjectElement.getcode" prim__code prim__setCode v


  export
  codeBase : HTMLObjectElement -> Attribute True Prelude.id String
  codeBase v = fromPrim
                 "HTMLObjectElement.getcodeBase"
                 prim__codeBase
                 prim__setCodeBase
                 v


  export
  codeType : HTMLObjectElement -> Attribute True Prelude.id String
  codeType v = fromPrim
                 "HTMLObjectElement.getcodeType"
                 prim__codeType
                 prim__setCodeType
                 v


  export
  contentDocument : (obj : HTMLObjectElement) -> JSIO (Maybe Document)
  contentDocument a = tryJS "HTMLObjectElement.contentDocument" $
    HTMLObjectElement.prim__contentDocument a


  export
  contentWindow : (obj : HTMLObjectElement) -> JSIO (Maybe WindowProxy)
  contentWindow a = tryJS "HTMLObjectElement.contentWindow" $
    HTMLObjectElement.prim__contentWindow a


  export
  data_ : HTMLObjectElement -> Attribute True Prelude.id String
  data_ v = fromPrim "HTMLObjectElement.getdata" prim__data prim__setData v


  export
  declare : HTMLObjectElement -> Attribute True Prelude.id Bool
  declare v = fromPrim
                "HTMLObjectElement.getdeclare"
                prim__declare
                prim__setDeclare
                v


  export
  form : (obj : HTMLObjectElement) -> JSIO (Maybe HTMLFormElement)
  form a = tryJS "HTMLObjectElement.form" $ HTMLObjectElement.prim__form a


  export
  height : HTMLObjectElement -> Attribute True Prelude.id String
  height v = fromPrim
               "HTMLObjectElement.getheight"
               prim__height
               prim__setHeight
               v


  export
  hspace : HTMLObjectElement -> Attribute True Prelude.id Bits32
  hspace v = fromPrim
               "HTMLObjectElement.gethspace"
               prim__hspace
               prim__setHspace
               v


  export
  name : HTMLObjectElement -> Attribute True Prelude.id String
  name v = fromPrim "HTMLObjectElement.getname" prim__name prim__setName v


  export
  standby : HTMLObjectElement -> Attribute True Prelude.id String
  standby v = fromPrim
                "HTMLObjectElement.getstandby"
                prim__standby
                prim__setStandby
                v


  export
  type : HTMLObjectElement -> Attribute True Prelude.id String
  type v = fromPrim "HTMLObjectElement.gettype" prim__type prim__setType v


  export
  useMap : HTMLObjectElement -> Attribute True Prelude.id String
  useMap v = fromPrim
               "HTMLObjectElement.getuseMap"
               prim__useMap
               prim__setUseMap
               v


  export
  validationMessage : (obj : HTMLObjectElement) -> JSIO String
  validationMessage a = primJS $ HTMLObjectElement.prim__validationMessage a


  export
  validity : (obj : HTMLObjectElement) -> JSIO ValidityState
  validity a = primJS $ HTMLObjectElement.prim__validity a


  export
  vspace : HTMLObjectElement -> Attribute True Prelude.id Bits32
  vspace v = fromPrim
               "HTMLObjectElement.getvspace"
               prim__vspace
               prim__setVspace
               v


  export
  width : HTMLObjectElement -> Attribute True Prelude.id String
  width v = fromPrim "HTMLObjectElement.getwidth" prim__width prim__setWidth v


  export
  willValidate : (obj : HTMLObjectElement) -> JSIO Bool
  willValidate a = tryJS "HTMLObjectElement.willValidate" $
    HTMLObjectElement.prim__willValidate a


  export
  checkValidity : (obj : HTMLObjectElement) -> JSIO Bool
  checkValidity a = tryJS "HTMLObjectElement.checkValidity" $
    HTMLObjectElement.prim__checkValidity a


  export
  getSVGDocument : (obj : HTMLObjectElement) -> JSIO (Maybe Document)
  getSVGDocument a = tryJS "HTMLObjectElement.getSVGDocument" $
    HTMLObjectElement.prim__getSVGDocument a


  export
  reportValidity : (obj : HTMLObjectElement) -> JSIO Bool
  reportValidity a = tryJS "HTMLObjectElement.reportValidity" $
    HTMLObjectElement.prim__reportValidity a


  export
  setCustomValidity : (obj : HTMLObjectElement) -> (error : String) -> JSIO ()
  setCustomValidity a b = primJS $ HTMLObjectElement.prim__setCustomValidity a b



namespace HTMLOptGroupElement

  export
  new : JSIO HTMLOptGroupElement
  new = primJS $ HTMLOptGroupElement.prim__new


  export
  disabled : HTMLOptGroupElement -> Attribute True Prelude.id Bool
  disabled v = fromPrim
                 "HTMLOptGroupElement.getdisabled"
                 prim__disabled
                 prim__setDisabled
                 v


  export
  label : HTMLOptGroupElement -> Attribute True Prelude.id String
  label v = fromPrim "HTMLOptGroupElement.getlabel" prim__label prim__setLabel v



namespace HTMLOptionElement

  export
  new : JSIO HTMLOptionElement
  new = primJS $ HTMLOptionElement.prim__new


  export
  defaultSelected : HTMLOptionElement -> Attribute True Prelude.id Bool
  defaultSelected v = fromPrim
                        "HTMLOptionElement.getdefaultSelected"
                        prim__defaultSelected
                        prim__setDefaultSelected
                        v


  export
  disabled : HTMLOptionElement -> Attribute True Prelude.id Bool
  disabled v = fromPrim
                 "HTMLOptionElement.getdisabled"
                 prim__disabled
                 prim__setDisabled
                 v


  export
  form : (obj : HTMLOptionElement) -> JSIO (Maybe HTMLFormElement)
  form a = tryJS "HTMLOptionElement.form" $ HTMLOptionElement.prim__form a


  export
  index : (obj : HTMLOptionElement) -> JSIO Int32
  index a = primJS $ HTMLOptionElement.prim__index a


  export
  label : HTMLOptionElement -> Attribute True Prelude.id String
  label v = fromPrim "HTMLOptionElement.getlabel" prim__label prim__setLabel v


  export
  selected : HTMLOptionElement -> Attribute True Prelude.id Bool
  selected v = fromPrim
                 "HTMLOptionElement.getselected"
                 prim__selected
                 prim__setSelected
                 v


  export
  text : HTMLOptionElement -> Attribute True Prelude.id String
  text v = fromPrim "HTMLOptionElement.gettext" prim__text prim__setText v


  export
  value : HTMLOptionElement -> Attribute True Prelude.id String
  value v = fromPrim "HTMLOptionElement.getvalue" prim__value prim__setValue v



namespace HTMLOptionsCollection

  export
  set :
       (obj : HTMLOptionsCollection)
    -> (index : Bits32)
    -> (option : Maybe HTMLOptionElement)
    -> JSIO ()
  set a b c = primJS $ HTMLOptionsCollection.prim__set a b (toFFI c)


  export
  length : HTMLOptionsCollection -> Attribute True Prelude.id Bits32
  length v = fromPrim
               "HTMLOptionsCollection.getlength"
               prim__length
               prim__setLength
               v


  export
  selectedIndex : HTMLOptionsCollection -> Attribute True Prelude.id Int32
  selectedIndex v = fromPrim
                      "HTMLOptionsCollection.getselectedIndex"
                      prim__selectedIndex
                      prim__setSelectedIndex
                      v


  export
  add' :
       (obj : HTMLOptionsCollection)
    -> (element : HSum [HTMLOptionElement, HTMLOptGroupElement])
    -> (before : Optional (Maybe (HSum [HTMLElement, Int32])))
    -> JSIO ()
  add' a b c = primJS $ HTMLOptionsCollection.prim__add a (toFFI b) (toFFI c)

  export
  add :
       (obj : HTMLOptionsCollection)
    -> (element : HSum [HTMLOptionElement, HTMLOptGroupElement])
    -> JSIO ()
  add a b = primJS $ HTMLOptionsCollection.prim__add a (toFFI b) undef


  export
  remove : (obj : HTMLOptionsCollection) -> (index : Int32) -> JSIO ()
  remove a b = primJS $ HTMLOptionsCollection.prim__remove a b



namespace HTMLOutputElement

  export
  new : JSIO HTMLOutputElement
  new = primJS $ HTMLOutputElement.prim__new


  export
  defaultValue : HTMLOutputElement -> Attribute True Prelude.id String
  defaultValue v = fromPrim
                     "HTMLOutputElement.getdefaultValue"
                     prim__defaultValue
                     prim__setDefaultValue
                     v


  export
  form : (obj : HTMLOutputElement) -> JSIO (Maybe HTMLFormElement)
  form a = tryJS "HTMLOutputElement.form" $ HTMLOutputElement.prim__form a


  export
  htmlFor : (obj : HTMLOutputElement) -> JSIO DOMTokenList
  htmlFor a = primJS $ HTMLOutputElement.prim__htmlFor a


  export
  labels : (obj : HTMLOutputElement) -> JSIO NodeList
  labels a = primJS $ HTMLOutputElement.prim__labels a


  export
  name : HTMLOutputElement -> Attribute True Prelude.id String
  name v = fromPrim "HTMLOutputElement.getname" prim__name prim__setName v


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
  value : HTMLOutputElement -> Attribute True Prelude.id String
  value v = fromPrim "HTMLOutputElement.getvalue" prim__value prim__setValue v


  export
  willValidate : (obj : HTMLOutputElement) -> JSIO Bool
  willValidate a = tryJS "HTMLOutputElement.willValidate" $
    HTMLOutputElement.prim__willValidate a


  export
  checkValidity : (obj : HTMLOutputElement) -> JSIO Bool
  checkValidity a = tryJS "HTMLOutputElement.checkValidity" $
    HTMLOutputElement.prim__checkValidity a


  export
  reportValidity : (obj : HTMLOutputElement) -> JSIO Bool
  reportValidity a = tryJS "HTMLOutputElement.reportValidity" $
    HTMLOutputElement.prim__reportValidity a


  export
  setCustomValidity : (obj : HTMLOutputElement) -> (error : String) -> JSIO ()
  setCustomValidity a b = primJS $ HTMLOutputElement.prim__setCustomValidity a b



namespace HTMLParagraphElement

  export
  new : JSIO HTMLParagraphElement
  new = primJS $ HTMLParagraphElement.prim__new


  export
  align : HTMLParagraphElement -> Attribute True Prelude.id String
  align v = fromPrim
              "HTMLParagraphElement.getalign"
              prim__align
              prim__setAlign
              v



namespace HTMLParamElement

  export
  new : JSIO HTMLParamElement
  new = primJS $ HTMLParamElement.prim__new


  export
  name : HTMLParamElement -> Attribute True Prelude.id String
  name v = fromPrim "HTMLParamElement.getname" prim__name prim__setName v


  export
  type : HTMLParamElement -> Attribute True Prelude.id String
  type v = fromPrim "HTMLParamElement.gettype" prim__type prim__setType v


  export
  value : HTMLParamElement -> Attribute True Prelude.id String
  value v = fromPrim "HTMLParamElement.getvalue" prim__value prim__setValue v


  export
  valueType : HTMLParamElement -> Attribute True Prelude.id String
  valueType v = fromPrim
                  "HTMLParamElement.getvalueType"
                  prim__valueType
                  prim__setValueType
                  v



namespace HTMLPictureElement

  export
  new : JSIO HTMLPictureElement
  new = primJS $ HTMLPictureElement.prim__new



namespace HTMLPreElement

  export
  new : JSIO HTMLPreElement
  new = primJS $ HTMLPreElement.prim__new


  export
  width : HTMLPreElement -> Attribute True Prelude.id Int32
  width v = fromPrim "HTMLPreElement.getwidth" prim__width prim__setWidth v



namespace HTMLProgressElement

  export
  new : JSIO HTMLProgressElement
  new = primJS $ HTMLProgressElement.prim__new


  export
  labels : (obj : HTMLProgressElement) -> JSIO NodeList
  labels a = primJS $ HTMLProgressElement.prim__labels a


  export
  max : HTMLProgressElement -> Attribute True Prelude.id Double
  max v = fromPrim "HTMLProgressElement.getmax" prim__max prim__setMax v


  export
  position : (obj : HTMLProgressElement) -> JSIO Double
  position a = primJS $ HTMLProgressElement.prim__position a


  export
  value : HTMLProgressElement -> Attribute True Prelude.id Double
  value v = fromPrim "HTMLProgressElement.getvalue" prim__value prim__setValue v



namespace HTMLQuoteElement

  export
  new : JSIO HTMLQuoteElement
  new = primJS $ HTMLQuoteElement.prim__new


  export
  cite : HTMLQuoteElement -> Attribute True Prelude.id String
  cite v = fromPrim "HTMLQuoteElement.getcite" prim__cite prim__setCite v



namespace HTMLScriptElement

  export
  new : JSIO HTMLScriptElement
  new = primJS $ HTMLScriptElement.prim__new


  export
  async : HTMLScriptElement -> Attribute True Prelude.id Bool
  async v = fromPrim "HTMLScriptElement.getasync" prim__async prim__setAsync v


  export
  charset : HTMLScriptElement -> Attribute True Prelude.id String
  charset v = fromPrim
                "HTMLScriptElement.getcharset"
                prim__charset
                prim__setCharset
                v


  export
  crossOrigin : HTMLScriptElement -> Attribute False Maybe String
  crossOrigin v = fromNullablePrim
                    "HTMLScriptElement.getcrossOrigin"
                    prim__crossOrigin
                    prim__setCrossOrigin
                    v


  export
  defer : HTMLScriptElement -> Attribute True Prelude.id Bool
  defer v = fromPrim "HTMLScriptElement.getdefer" prim__defer prim__setDefer v


  export
  event : HTMLScriptElement -> Attribute True Prelude.id String
  event v = fromPrim "HTMLScriptElement.getevent" prim__event prim__setEvent v


  export
  htmlFor : HTMLScriptElement -> Attribute True Prelude.id String
  htmlFor v = fromPrim
                "HTMLScriptElement.gethtmlFor"
                prim__htmlFor
                prim__setHtmlFor
                v


  export
  integrity : HTMLScriptElement -> Attribute True Prelude.id String
  integrity v = fromPrim
                  "HTMLScriptElement.getintegrity"
                  prim__integrity
                  prim__setIntegrity
                  v


  export
  noModule : HTMLScriptElement -> Attribute True Prelude.id Bool
  noModule v = fromPrim
                 "HTMLScriptElement.getnoModule"
                 prim__noModule
                 prim__setNoModule
                 v


  export
  referrerPolicy : HTMLScriptElement -> Attribute True Prelude.id String
  referrerPolicy v = fromPrim
                       "HTMLScriptElement.getreferrerPolicy"
                       prim__referrerPolicy
                       prim__setReferrerPolicy
                       v


  export
  src : HTMLScriptElement -> Attribute True Prelude.id String
  src v = fromPrim "HTMLScriptElement.getsrc" prim__src prim__setSrc v


  export
  text : HTMLScriptElement -> Attribute True Prelude.id String
  text v = fromPrim "HTMLScriptElement.gettext" prim__text prim__setText v


  export
  type : HTMLScriptElement -> Attribute True Prelude.id String
  type v = fromPrim "HTMLScriptElement.gettype" prim__type prim__setType v



namespace HTMLSelectElement

  export
  new : JSIO HTMLSelectElement
  new = primJS $ HTMLSelectElement.prim__new


  export
  set :
       (obj : HTMLSelectElement)
    -> (index : Bits32)
    -> (option : Maybe HTMLOptionElement)
    -> JSIO ()
  set a b c = primJS $ HTMLSelectElement.prim__set a b (toFFI c)


  export
  autocomplete : HTMLSelectElement -> Attribute True Prelude.id String
  autocomplete v = fromPrim
                     "HTMLSelectElement.getautocomplete"
                     prim__autocomplete
                     prim__setAutocomplete
                     v


  export
  disabled : HTMLSelectElement -> Attribute True Prelude.id Bool
  disabled v = fromPrim
                 "HTMLSelectElement.getdisabled"
                 prim__disabled
                 prim__setDisabled
                 v


  export
  form : (obj : HTMLSelectElement) -> JSIO (Maybe HTMLFormElement)
  form a = tryJS "HTMLSelectElement.form" $ HTMLSelectElement.prim__form a


  export
  labels : (obj : HTMLSelectElement) -> JSIO NodeList
  labels a = primJS $ HTMLSelectElement.prim__labels a


  export
  length : HTMLSelectElement -> Attribute True Prelude.id Bits32
  length v = fromPrim
               "HTMLSelectElement.getlength"
               prim__length
               prim__setLength
               v


  export
  multiple : HTMLSelectElement -> Attribute True Prelude.id Bool
  multiple v = fromPrim
                 "HTMLSelectElement.getmultiple"
                 prim__multiple
                 prim__setMultiple
                 v


  export
  name : HTMLSelectElement -> Attribute True Prelude.id String
  name v = fromPrim "HTMLSelectElement.getname" prim__name prim__setName v


  export
  options : (obj : HTMLSelectElement) -> JSIO HTMLOptionsCollection
  options a = primJS $ HTMLSelectElement.prim__options a


  export
  required : HTMLSelectElement -> Attribute True Prelude.id Bool
  required v = fromPrim
                 "HTMLSelectElement.getrequired"
                 prim__required
                 prim__setRequired
                 v


  export
  selectedIndex : HTMLSelectElement -> Attribute True Prelude.id Int32
  selectedIndex v = fromPrim
                      "HTMLSelectElement.getselectedIndex"
                      prim__selectedIndex
                      prim__setSelectedIndex
                      v


  export
  selectedOptions : (obj : HTMLSelectElement) -> JSIO HTMLCollection
  selectedOptions a = primJS $ HTMLSelectElement.prim__selectedOptions a


  export
  size : HTMLSelectElement -> Attribute True Prelude.id Bits32
  size v = fromPrim "HTMLSelectElement.getsize" prim__size prim__setSize v


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
  value : HTMLSelectElement -> Attribute True Prelude.id String
  value v = fromPrim "HTMLSelectElement.getvalue" prim__value prim__setValue v


  export
  willValidate : (obj : HTMLSelectElement) -> JSIO Bool
  willValidate a = tryJS "HTMLSelectElement.willValidate" $
    HTMLSelectElement.prim__willValidate a


  export
  add' :
       (obj : HTMLSelectElement)
    -> (element : HSum [HTMLOptionElement, HTMLOptGroupElement])
    -> (before : Optional (Maybe (HSum [HTMLElement, Int32])))
    -> JSIO ()
  add' a b c = primJS $ HTMLSelectElement.prim__add a (toFFI b) (toFFI c)

  export
  add :
       (obj : HTMLSelectElement)
    -> (element : HSum [HTMLOptionElement, HTMLOptGroupElement])
    -> JSIO ()
  add a b = primJS $ HTMLSelectElement.prim__add a (toFFI b) undef


  export
  checkValidity : (obj : HTMLSelectElement) -> JSIO Bool
  checkValidity a = tryJS "HTMLSelectElement.checkValidity" $
    HTMLSelectElement.prim__checkValidity a


  export
  item : (obj : HTMLSelectElement) -> (index : Bits32) -> JSIO (Maybe Element)
  item a b = tryJS "HTMLSelectElement.item" $ HTMLSelectElement.prim__item a b


  export
  namedItem :
       (obj : HTMLSelectElement)
    -> (name : String)
    -> JSIO (Maybe HTMLOptionElement)
  namedItem a b = tryJS "HTMLSelectElement.namedItem" $
    HTMLSelectElement.prim__namedItem a b


  export
  remove : (obj : HTMLSelectElement) -> JSIO ()
  remove a = primJS $ HTMLSelectElement.prim__remove a


  export
  remove1 : (obj : HTMLSelectElement) -> (index : Int32) -> JSIO ()
  remove1 a b = primJS $ HTMLSelectElement.prim__remove1 a b


  export
  reportValidity : (obj : HTMLSelectElement) -> JSIO Bool
  reportValidity a = tryJS "HTMLSelectElement.reportValidity" $
    HTMLSelectElement.prim__reportValidity a


  export
  setCustomValidity : (obj : HTMLSelectElement) -> (error : String) -> JSIO ()
  setCustomValidity a b = primJS $ HTMLSelectElement.prim__setCustomValidity a b



namespace HTMLSlotElement

  export
  new : JSIO HTMLSlotElement
  new = primJS $ HTMLSlotElement.prim__new


  export
  name : HTMLSlotElement -> Attribute True Prelude.id String
  name v = fromPrim "HTMLSlotElement.getname" prim__name prim__setName v


  export
  assignedElements' :
       {auto _ : Cast t2 AssignedNodesOptions}
    -> (obj : HTMLSlotElement)
    -> (options : Optional t2)
    -> JSIO (Array Element)
  assignedElements' a b = primJS $
    HTMLSlotElement.prim__assignedElements a (optUp b)

  export
  assignedElements : (obj : HTMLSlotElement) -> JSIO (Array Element)
  assignedElements a = primJS $ HTMLSlotElement.prim__assignedElements a undef


  export
  assignedNodes' :
       {auto _ : Cast t2 AssignedNodesOptions}
    -> (obj : HTMLSlotElement)
    -> (options : Optional t2)
    -> JSIO (Array Node)
  assignedNodes' a b = primJS $ HTMLSlotElement.prim__assignedNodes a (optUp b)

  export
  assignedNodes : (obj : HTMLSlotElement) -> JSIO (Array Node)
  assignedNodes a = primJS $ HTMLSlotElement.prim__assignedNodes a undef



namespace HTMLSourceElement

  export
  new : JSIO HTMLSourceElement
  new = primJS $ HTMLSourceElement.prim__new


  export
  height : HTMLSourceElement -> Attribute True Prelude.id Bits32
  height v = fromPrim
               "HTMLSourceElement.getheight"
               prim__height
               prim__setHeight
               v


  export
  media : HTMLSourceElement -> Attribute True Prelude.id String
  media v = fromPrim "HTMLSourceElement.getmedia" prim__media prim__setMedia v


  export
  sizes : HTMLSourceElement -> Attribute True Prelude.id String
  sizes v = fromPrim "HTMLSourceElement.getsizes" prim__sizes prim__setSizes v


  export
  src : HTMLSourceElement -> Attribute True Prelude.id String
  src v = fromPrim "HTMLSourceElement.getsrc" prim__src prim__setSrc v


  export
  srcset : HTMLSourceElement -> Attribute True Prelude.id String
  srcset v = fromPrim
               "HTMLSourceElement.getsrcset"
               prim__srcset
               prim__setSrcset
               v


  export
  type : HTMLSourceElement -> Attribute True Prelude.id String
  type v = fromPrim "HTMLSourceElement.gettype" prim__type prim__setType v


  export
  width : HTMLSourceElement -> Attribute True Prelude.id Bits32
  width v = fromPrim "HTMLSourceElement.getwidth" prim__width prim__setWidth v



namespace HTMLSpanElement

  export
  new : JSIO HTMLSpanElement
  new = primJS $ HTMLSpanElement.prim__new



namespace HTMLStyleElement

  export
  new : JSIO HTMLStyleElement
  new = primJS $ HTMLStyleElement.prim__new


  export
  media : HTMLStyleElement -> Attribute True Prelude.id String
  media v = fromPrim "HTMLStyleElement.getmedia" prim__media prim__setMedia v


  export
  type : HTMLStyleElement -> Attribute True Prelude.id String
  type v = fromPrim "HTMLStyleElement.gettype" prim__type prim__setType v



namespace HTMLTableCaptionElement

  export
  new : JSIO HTMLTableCaptionElement
  new = primJS $ HTMLTableCaptionElement.prim__new


  export
  align : HTMLTableCaptionElement -> Attribute True Prelude.id String
  align v = fromPrim
              "HTMLTableCaptionElement.getalign"
              prim__align
              prim__setAlign
              v



namespace HTMLTableCellElement

  export
  new : JSIO HTMLTableCellElement
  new = primJS $ HTMLTableCellElement.prim__new


  export
  abbr : HTMLTableCellElement -> Attribute True Prelude.id String
  abbr v = fromPrim "HTMLTableCellElement.getabbr" prim__abbr prim__setAbbr v


  export
  align : HTMLTableCellElement -> Attribute True Prelude.id String
  align v = fromPrim
              "HTMLTableCellElement.getalign"
              prim__align
              prim__setAlign
              v


  export
  axis : HTMLTableCellElement -> Attribute True Prelude.id String
  axis v = fromPrim "HTMLTableCellElement.getaxis" prim__axis prim__setAxis v


  export
  bgColor : HTMLTableCellElement -> Attribute True Prelude.id String
  bgColor v = fromPrim
                "HTMLTableCellElement.getbgColor"
                prim__bgColor
                prim__setBgColor
                v


  export
  cellIndex : (obj : HTMLTableCellElement) -> JSIO Int32
  cellIndex a = primJS $ HTMLTableCellElement.prim__cellIndex a


  export
  ch : HTMLTableCellElement -> Attribute True Prelude.id String
  ch v = fromPrim "HTMLTableCellElement.getch" prim__ch prim__setCh v


  export
  chOff : HTMLTableCellElement -> Attribute True Prelude.id String
  chOff v = fromPrim
              "HTMLTableCellElement.getchOff"
              prim__chOff
              prim__setChOff
              v


  export
  colSpan : HTMLTableCellElement -> Attribute True Prelude.id Bits32
  colSpan v = fromPrim
                "HTMLTableCellElement.getcolSpan"
                prim__colSpan
                prim__setColSpan
                v


  export
  headers : HTMLTableCellElement -> Attribute True Prelude.id String
  headers v = fromPrim
                "HTMLTableCellElement.getheaders"
                prim__headers
                prim__setHeaders
                v


  export
  height : HTMLTableCellElement -> Attribute True Prelude.id String
  height v = fromPrim
               "HTMLTableCellElement.getheight"
               prim__height
               prim__setHeight
               v


  export
  noWrap : HTMLTableCellElement -> Attribute True Prelude.id Bool
  noWrap v = fromPrim
               "HTMLTableCellElement.getnoWrap"
               prim__noWrap
               prim__setNoWrap
               v


  export
  rowSpan : HTMLTableCellElement -> Attribute True Prelude.id Bits32
  rowSpan v = fromPrim
                "HTMLTableCellElement.getrowSpan"
                prim__rowSpan
                prim__setRowSpan
                v


  export
  scope : HTMLTableCellElement -> Attribute True Prelude.id String
  scope v = fromPrim
              "HTMLTableCellElement.getscope"
              prim__scope
              prim__setScope
              v


  export
  vAlign : HTMLTableCellElement -> Attribute True Prelude.id String
  vAlign v = fromPrim
               "HTMLTableCellElement.getvAlign"
               prim__vAlign
               prim__setVAlign
               v


  export
  width : HTMLTableCellElement -> Attribute True Prelude.id String
  width v = fromPrim
              "HTMLTableCellElement.getwidth"
              prim__width
              prim__setWidth
              v



namespace HTMLTableColElement

  export
  new : JSIO HTMLTableColElement
  new = primJS $ HTMLTableColElement.prim__new


  export
  align : HTMLTableColElement -> Attribute True Prelude.id String
  align v = fromPrim "HTMLTableColElement.getalign" prim__align prim__setAlign v


  export
  ch : HTMLTableColElement -> Attribute True Prelude.id String
  ch v = fromPrim "HTMLTableColElement.getch" prim__ch prim__setCh v


  export
  chOff : HTMLTableColElement -> Attribute True Prelude.id String
  chOff v = fromPrim "HTMLTableColElement.getchOff" prim__chOff prim__setChOff v


  export
  span : HTMLTableColElement -> Attribute True Prelude.id Bits32
  span v = fromPrim "HTMLTableColElement.getspan" prim__span prim__setSpan v


  export
  vAlign : HTMLTableColElement -> Attribute True Prelude.id String
  vAlign v = fromPrim
               "HTMLTableColElement.getvAlign"
               prim__vAlign
               prim__setVAlign
               v


  export
  width : HTMLTableColElement -> Attribute True Prelude.id String
  width v = fromPrim "HTMLTableColElement.getwidth" prim__width prim__setWidth v



namespace HTMLTableElement

  export
  new : JSIO HTMLTableElement
  new = primJS $ HTMLTableElement.prim__new


  export
  align : HTMLTableElement -> Attribute True Prelude.id String
  align v = fromPrim "HTMLTableElement.getalign" prim__align prim__setAlign v


  export
  bgColor : HTMLTableElement -> Attribute True Prelude.id String
  bgColor v = fromPrim
                "HTMLTableElement.getbgColor"
                prim__bgColor
                prim__setBgColor
                v


  export
  border : HTMLTableElement -> Attribute True Prelude.id String
  border v = fromPrim
               "HTMLTableElement.getborder"
               prim__border
               prim__setBorder
               v


  export
  caption : HTMLTableElement -> Attribute False Maybe HTMLTableCaptionElement
  caption v = fromNullablePrim
                "HTMLTableElement.getcaption"
                prim__caption
                prim__setCaption
                v


  export
  cellPadding : HTMLTableElement -> Attribute True Prelude.id String
  cellPadding v = fromPrim
                    "HTMLTableElement.getcellPadding"
                    prim__cellPadding
                    prim__setCellPadding
                    v


  export
  cellSpacing : HTMLTableElement -> Attribute True Prelude.id String
  cellSpacing v = fromPrim
                    "HTMLTableElement.getcellSpacing"
                    prim__cellSpacing
                    prim__setCellSpacing
                    v


  export
  frame : HTMLTableElement -> Attribute True Prelude.id String
  frame v = fromPrim "HTMLTableElement.getframe" prim__frame prim__setFrame v


  export
  rows : (obj : HTMLTableElement) -> JSIO HTMLCollection
  rows a = primJS $ HTMLTableElement.prim__rows a


  export
  rules : HTMLTableElement -> Attribute True Prelude.id String
  rules v = fromPrim "HTMLTableElement.getrules" prim__rules prim__setRules v


  export
  summary : HTMLTableElement -> Attribute True Prelude.id String
  summary v = fromPrim
                "HTMLTableElement.getsummary"
                prim__summary
                prim__setSummary
                v


  export
  tBodies : (obj : HTMLTableElement) -> JSIO HTMLCollection
  tBodies a = primJS $ HTMLTableElement.prim__tBodies a


  export
  tFoot : HTMLTableElement -> Attribute False Maybe HTMLTableSectionElement
  tFoot v = fromNullablePrim
              "HTMLTableElement.gettFoot"
              prim__tFoot
              prim__setTFoot
              v


  export
  tHead : HTMLTableElement -> Attribute False Maybe HTMLTableSectionElement
  tHead v = fromNullablePrim
              "HTMLTableElement.gettHead"
              prim__tHead
              prim__setTHead
              v


  export
  width : HTMLTableElement -> Attribute True Prelude.id String
  width v = fromPrim "HTMLTableElement.getwidth" prim__width prim__setWidth v


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
  insertRow' :
       (obj : HTMLTableElement)
    -> (index : Optional Int32)
    -> JSIO HTMLTableRowElement
  insertRow' a b = primJS $ HTMLTableElement.prim__insertRow a (toFFI b)

  export
  insertRow : (obj : HTMLTableElement) -> JSIO HTMLTableRowElement
  insertRow a = primJS $ HTMLTableElement.prim__insertRow a undef



namespace HTMLTableRowElement

  export
  new : JSIO HTMLTableRowElement
  new = primJS $ HTMLTableRowElement.prim__new


  export
  align : HTMLTableRowElement -> Attribute True Prelude.id String
  align v = fromPrim "HTMLTableRowElement.getalign" prim__align prim__setAlign v


  export
  bgColor : HTMLTableRowElement -> Attribute True Prelude.id String
  bgColor v = fromPrim
                "HTMLTableRowElement.getbgColor"
                prim__bgColor
                prim__setBgColor
                v


  export
  cells : (obj : HTMLTableRowElement) -> JSIO HTMLCollection
  cells a = primJS $ HTMLTableRowElement.prim__cells a


  export
  ch : HTMLTableRowElement -> Attribute True Prelude.id String
  ch v = fromPrim "HTMLTableRowElement.getch" prim__ch prim__setCh v


  export
  chOff : HTMLTableRowElement -> Attribute True Prelude.id String
  chOff v = fromPrim "HTMLTableRowElement.getchOff" prim__chOff prim__setChOff v


  export
  rowIndex : (obj : HTMLTableRowElement) -> JSIO Int32
  rowIndex a = primJS $ HTMLTableRowElement.prim__rowIndex a


  export
  sectionRowIndex : (obj : HTMLTableRowElement) -> JSIO Int32
  sectionRowIndex a = primJS $ HTMLTableRowElement.prim__sectionRowIndex a


  export
  vAlign : HTMLTableRowElement -> Attribute True Prelude.id String
  vAlign v = fromPrim
               "HTMLTableRowElement.getvAlign"
               prim__vAlign
               prim__setVAlign
               v


  export
  deleteCell : (obj : HTMLTableRowElement) -> (index : Int32) -> JSIO ()
  deleteCell a b = primJS $ HTMLTableRowElement.prim__deleteCell a b


  export
  insertCell' :
       (obj : HTMLTableRowElement)
    -> (index : Optional Int32)
    -> JSIO HTMLTableCellElement
  insertCell' a b = primJS $ HTMLTableRowElement.prim__insertCell a (toFFI b)

  export
  insertCell : (obj : HTMLTableRowElement) -> JSIO HTMLTableCellElement
  insertCell a = primJS $ HTMLTableRowElement.prim__insertCell a undef



namespace HTMLTableSectionElement

  export
  new : JSIO HTMLTableSectionElement
  new = primJS $ HTMLTableSectionElement.prim__new


  export
  align : HTMLTableSectionElement -> Attribute True Prelude.id String
  align v = fromPrim
              "HTMLTableSectionElement.getalign"
              prim__align
              prim__setAlign
              v


  export
  ch : HTMLTableSectionElement -> Attribute True Prelude.id String
  ch v = fromPrim "HTMLTableSectionElement.getch" prim__ch prim__setCh v


  export
  chOff : HTMLTableSectionElement -> Attribute True Prelude.id String
  chOff v = fromPrim
              "HTMLTableSectionElement.getchOff"
              prim__chOff
              prim__setChOff
              v


  export
  rows : (obj : HTMLTableSectionElement) -> JSIO HTMLCollection
  rows a = primJS $ HTMLTableSectionElement.prim__rows a


  export
  vAlign : HTMLTableSectionElement -> Attribute True Prelude.id String
  vAlign v = fromPrim
               "HTMLTableSectionElement.getvAlign"
               prim__vAlign
               prim__setVAlign
               v


  export
  deleteRow : (obj : HTMLTableSectionElement) -> (index : Int32) -> JSIO ()
  deleteRow a b = primJS $ HTMLTableSectionElement.prim__deleteRow a b


  export
  insertRow' :
       (obj : HTMLTableSectionElement)
    -> (index : Optional Int32)
    -> JSIO HTMLTableRowElement
  insertRow' a b = primJS $ HTMLTableSectionElement.prim__insertRow a (toFFI b)

  export
  insertRow : (obj : HTMLTableSectionElement) -> JSIO HTMLTableRowElement
  insertRow a = primJS $ HTMLTableSectionElement.prim__insertRow a undef



namespace HTMLTemplateElement

  export
  new : JSIO HTMLTemplateElement
  new = primJS $ HTMLTemplateElement.prim__new


  export
  content : (obj : HTMLTemplateElement) -> JSIO DocumentFragment
  content a = primJS $ HTMLTemplateElement.prim__content a



namespace HTMLTextAreaElement

  export
  new : JSIO HTMLTextAreaElement
  new = primJS $ HTMLTextAreaElement.prim__new


  export
  autocomplete : HTMLTextAreaElement -> Attribute True Prelude.id String
  autocomplete v = fromPrim
                     "HTMLTextAreaElement.getautocomplete"
                     prim__autocomplete
                     prim__setAutocomplete
                     v


  export
  cols : HTMLTextAreaElement -> Attribute True Prelude.id Bits32
  cols v = fromPrim "HTMLTextAreaElement.getcols" prim__cols prim__setCols v


  export
  defaultValue : HTMLTextAreaElement -> Attribute True Prelude.id String
  defaultValue v = fromPrim
                     "HTMLTextAreaElement.getdefaultValue"
                     prim__defaultValue
                     prim__setDefaultValue
                     v


  export
  dirName : HTMLTextAreaElement -> Attribute True Prelude.id String
  dirName v = fromPrim
                "HTMLTextAreaElement.getdirName"
                prim__dirName
                prim__setDirName
                v


  export
  disabled : HTMLTextAreaElement -> Attribute True Prelude.id Bool
  disabled v = fromPrim
                 "HTMLTextAreaElement.getdisabled"
                 prim__disabled
                 prim__setDisabled
                 v


  export
  form : (obj : HTMLTextAreaElement) -> JSIO (Maybe HTMLFormElement)
  form a = tryJS "HTMLTextAreaElement.form" $ HTMLTextAreaElement.prim__form a


  export
  labels : (obj : HTMLTextAreaElement) -> JSIO NodeList
  labels a = primJS $ HTMLTextAreaElement.prim__labels a


  export
  maxLength : HTMLTextAreaElement -> Attribute True Prelude.id Int32
  maxLength v = fromPrim
                  "HTMLTextAreaElement.getmaxLength"
                  prim__maxLength
                  prim__setMaxLength
                  v


  export
  minLength : HTMLTextAreaElement -> Attribute True Prelude.id Int32
  minLength v = fromPrim
                  "HTMLTextAreaElement.getminLength"
                  prim__minLength
                  prim__setMinLength
                  v


  export
  name : HTMLTextAreaElement -> Attribute True Prelude.id String
  name v = fromPrim "HTMLTextAreaElement.getname" prim__name prim__setName v


  export
  placeholder : HTMLTextAreaElement -> Attribute True Prelude.id String
  placeholder v = fromPrim
                    "HTMLTextAreaElement.getplaceholder"
                    prim__placeholder
                    prim__setPlaceholder
                    v


  export
  readOnly : HTMLTextAreaElement -> Attribute True Prelude.id Bool
  readOnly v = fromPrim
                 "HTMLTextAreaElement.getreadOnly"
                 prim__readOnly
                 prim__setReadOnly
                 v


  export
  required : HTMLTextAreaElement -> Attribute True Prelude.id Bool
  required v = fromPrim
                 "HTMLTextAreaElement.getrequired"
                 prim__required
                 prim__setRequired
                 v


  export
  rows : HTMLTextAreaElement -> Attribute True Prelude.id Bits32
  rows v = fromPrim "HTMLTextAreaElement.getrows" prim__rows prim__setRows v


  export
  selectionDirection : HTMLTextAreaElement -> Attribute True Prelude.id String
  selectionDirection v = fromPrim
                           "HTMLTextAreaElement.getselectionDirection"
                           prim__selectionDirection
                           prim__setSelectionDirection
                           v


  export
  selectionEnd : HTMLTextAreaElement -> Attribute True Prelude.id Bits32
  selectionEnd v = fromPrim
                     "HTMLTextAreaElement.getselectionEnd"
                     prim__selectionEnd
                     prim__setSelectionEnd
                     v


  export
  selectionStart : HTMLTextAreaElement -> Attribute True Prelude.id Bits32
  selectionStart v = fromPrim
                       "HTMLTextAreaElement.getselectionStart"
                       prim__selectionStart
                       prim__setSelectionStart
                       v


  export
  textLength : (obj : HTMLTextAreaElement) -> JSIO Bits32
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
  value : HTMLTextAreaElement -> Attribute True Prelude.id String
  value v = fromPrim "HTMLTextAreaElement.getvalue" prim__value prim__setValue v


  export
  willValidate : (obj : HTMLTextAreaElement) -> JSIO Bool
  willValidate a = tryJS "HTMLTextAreaElement.willValidate" $
    HTMLTextAreaElement.prim__willValidate a


  export
  wrap : HTMLTextAreaElement -> Attribute True Prelude.id String
  wrap v = fromPrim "HTMLTextAreaElement.getwrap" prim__wrap prim__setWrap v


  export
  checkValidity : (obj : HTMLTextAreaElement) -> JSIO Bool
  checkValidity a = tryJS "HTMLTextAreaElement.checkValidity" $
    HTMLTextAreaElement.prim__checkValidity a


  export
  reportValidity : (obj : HTMLTextAreaElement) -> JSIO Bool
  reportValidity a = tryJS "HTMLTextAreaElement.reportValidity" $
    HTMLTextAreaElement.prim__reportValidity a


  export
  select : (obj : HTMLTextAreaElement) -> JSIO ()
  select a = primJS $ HTMLTextAreaElement.prim__select a


  export
  setCustomValidity : (obj : HTMLTextAreaElement) -> (error : String) -> JSIO ()
  setCustomValidity a b = primJS $
    HTMLTextAreaElement.prim__setCustomValidity a b


  export
  setRangeText :
       (obj : HTMLTextAreaElement)
    -> (replacement : String)
    -> JSIO ()
  setRangeText a b = primJS $ HTMLTextAreaElement.prim__setRangeText a b


  export
  setRangeText1' :
       (obj : HTMLTextAreaElement)
    -> (replacement : String)
    -> (start : Bits32)
    -> (end : Bits32)
    -> (selectionMode : Optional SelectionMode)
    -> JSIO ()
  setRangeText1' a b c d e = primJS $
    HTMLTextAreaElement.prim__setRangeText1 a b c d (toFFI e)

  export
  setRangeText1 :
       (obj : HTMLTextAreaElement)
    -> (replacement : String)
    -> (start : Bits32)
    -> (end : Bits32)
    -> JSIO ()
  setRangeText1 a b c d = primJS $
    HTMLTextAreaElement.prim__setRangeText1 a b c d undef


  export
  setSelectionRange' :
       (obj : HTMLTextAreaElement)
    -> (start : Bits32)
    -> (end : Bits32)
    -> (direction : Optional String)
    -> JSIO ()
  setSelectionRange' a b c d = primJS $
    HTMLTextAreaElement.prim__setSelectionRange a b c (toFFI d)

  export
  setSelectionRange :
       (obj : HTMLTextAreaElement)
    -> (start : Bits32)
    -> (end : Bits32)
    -> JSIO ()
  setSelectionRange a b c = primJS $
    HTMLTextAreaElement.prim__setSelectionRange a b c undef



namespace HTMLTimeElement

  export
  new : JSIO HTMLTimeElement
  new = primJS $ HTMLTimeElement.prim__new


  export
  dateTime : HTMLTimeElement -> Attribute True Prelude.id String
  dateTime v = fromPrim
                 "HTMLTimeElement.getdateTime"
                 prim__dateTime
                 prim__setDateTime
                 v



namespace HTMLTitleElement

  export
  new : JSIO HTMLTitleElement
  new = primJS $ HTMLTitleElement.prim__new


  export
  text : HTMLTitleElement -> Attribute True Prelude.id String
  text v = fromPrim "HTMLTitleElement.gettext" prim__text prim__setText v



namespace HTMLTrackElement

  export
  ERROR : Bits16
  ERROR = 3


  export
  LOADED : Bits16
  LOADED = 2


  export
  LOADING : Bits16
  LOADING = 1


  export
  NONE : Bits16
  NONE = 0


  export
  new : JSIO HTMLTrackElement
  new = primJS $ HTMLTrackElement.prim__new


  export
  default_ : HTMLTrackElement -> Attribute True Prelude.id Bool
  default_ v = fromPrim
                 "HTMLTrackElement.getdefault"
                 prim__default
                 prim__setDefault
                 v


  export
  kind : HTMLTrackElement -> Attribute True Prelude.id String
  kind v = fromPrim "HTMLTrackElement.getkind" prim__kind prim__setKind v


  export
  label : HTMLTrackElement -> Attribute True Prelude.id String
  label v = fromPrim "HTMLTrackElement.getlabel" prim__label prim__setLabel v


  export
  readyState : (obj : HTMLTrackElement) -> JSIO Bits16
  readyState a = primJS $ HTMLTrackElement.prim__readyState a


  export
  src : HTMLTrackElement -> Attribute True Prelude.id String
  src v = fromPrim "HTMLTrackElement.getsrc" prim__src prim__setSrc v


  export
  srclang : HTMLTrackElement -> Attribute True Prelude.id String
  srclang v = fromPrim
                "HTMLTrackElement.getsrclang"
                prim__srclang
                prim__setSrclang
                v


  export
  track : (obj : HTMLTrackElement) -> JSIO TextTrack
  track a = primJS $ HTMLTrackElement.prim__track a



namespace HTMLUListElement

  export
  new : JSIO HTMLUListElement
  new = primJS $ HTMLUListElement.prim__new


  export
  compact : HTMLUListElement -> Attribute True Prelude.id Bool
  compact v = fromPrim
                "HTMLUListElement.getcompact"
                prim__compact
                prim__setCompact
                v


  export
  type : HTMLUListElement -> Attribute True Prelude.id String
  type v = fromPrim "HTMLUListElement.gettype" prim__type prim__setType v




namespace HTMLVideoElement

  export
  new : JSIO HTMLVideoElement
  new = primJS $ HTMLVideoElement.prim__new


  export
  height : HTMLVideoElement -> Attribute True Prelude.id Bits32
  height v = fromPrim
               "HTMLVideoElement.getheight"
               prim__height
               prim__setHeight
               v


  export
  playsInline : HTMLVideoElement -> Attribute True Prelude.id Bool
  playsInline v = fromPrim
                    "HTMLVideoElement.getplaysInline"
                    prim__playsInline
                    prim__setPlaysInline
                    v


  export
  poster : HTMLVideoElement -> Attribute True Prelude.id String
  poster v = fromPrim
               "HTMLVideoElement.getposter"
               prim__poster
               prim__setPoster
               v


  export
  videoHeight : (obj : HTMLVideoElement) -> JSIO Bits32
  videoHeight a = primJS $ HTMLVideoElement.prim__videoHeight a


  export
  videoWidth : (obj : HTMLVideoElement) -> JSIO Bits32
  videoWidth a = primJS $ HTMLVideoElement.prim__videoWidth a


  export
  width : HTMLVideoElement -> Attribute True Prelude.id Bits32
  width v = fromPrim "HTMLVideoElement.getwidth" prim__width prim__setWidth v



namespace HashChangeEvent

  export
  new' :
       {auto _ : Cast t2 HashChangeEventInit}
    -> (type : String)
    -> (eventInitDict : Optional t2)
    -> JSIO HashChangeEvent
  new' a b = primJS $ HashChangeEvent.prim__new a (optUp b)

  export
  new : (type : String) -> JSIO HashChangeEvent
  new a = primJS $ HashChangeEvent.prim__new a undef


  export
  newURL : (obj : HashChangeEvent) -> JSIO String
  newURL a = primJS $ HashChangeEvent.prim__newURL a


  export
  oldURL : (obj : HashChangeEvent) -> JSIO String
  oldURL a = primJS $ HashChangeEvent.prim__oldURL a



namespace History

  export
  length : (obj : History) -> JSIO Bits32
  length a = primJS $ History.prim__length a


  export
  scrollRestoration : History -> Attribute True Prelude.id ScrollRestoration
  scrollRestoration v = fromPrim
                          "History.getscrollRestoration"
                          prim__scrollRestoration
                          prim__setScrollRestoration
                          v


  export
  state : (obj : History) -> JSIO Any
  state a = tryJS "History.state" $ History.prim__state a


  export
  back : (obj : History) -> JSIO ()
  back a = primJS $ History.prim__back a


  export
  forward : (obj : History) -> JSIO ()
  forward a = primJS $ History.prim__forward a


  export
  go' : (obj : History) -> (delta : Optional Int32) -> JSIO ()
  go' a b = primJS $ History.prim__go a (toFFI b)

  export
  go : (obj : History) -> JSIO ()
  go a = primJS $ History.prim__go a undef


  export
  pushState' :
       (obj : History)
    -> (data_ : Any)
    -> (unused : String)
    -> (url : Optional (Maybe String))
    -> JSIO ()
  pushState' a b c d = primJS $ History.prim__pushState a (toFFI b) c (toFFI d)

  export
  pushState : (obj : History) -> (data_ : Any) -> (unused : String) -> JSIO ()
  pushState a b c = primJS $ History.prim__pushState a (toFFI b) c undef


  export
  replaceState' :
       (obj : History)
    -> (data_ : Any)
    -> (unused : String)
    -> (url : Optional (Maybe String))
    -> JSIO ()
  replaceState' a b c d = primJS $
    History.prim__replaceState a (toFFI b) c (toFFI d)

  export
  replaceState :
       (obj : History)
    -> (data_ : Any)
    -> (unused : String)
    -> JSIO ()
  replaceState a b c = primJS $ History.prim__replaceState a (toFFI b) c undef



namespace ImageBitmap

  export
  height : (obj : ImageBitmap) -> JSIO Bits32
  height a = primJS $ ImageBitmap.prim__height a


  export
  width : (obj : ImageBitmap) -> JSIO Bits32
  width a = primJS $ ImageBitmap.prim__width a


  export
  close : (obj : ImageBitmap) -> JSIO ()
  close a = primJS $ ImageBitmap.prim__close a



namespace ImageBitmapRenderingContext

  export
  canvas :
       (obj : ImageBitmapRenderingContext)
    -> JSIO (HSum [HTMLCanvasElement, OffscreenCanvas])
  canvas a = tryJS "ImageBitmapRenderingContext.canvas" $
    ImageBitmapRenderingContext.prim__canvas a


  export
  transferFromImageBitmap :
       (obj : ImageBitmapRenderingContext)
    -> (bitmap : Maybe ImageBitmap)
    -> JSIO ()
  transferFromImageBitmap a b = primJS $
    ImageBitmapRenderingContext.prim__transferFromImageBitmap a (toFFI b)



namespace ImageData

  export
  new : (sw : Bits32) -> (sh : Bits32) -> JSIO ImageData
  new a b = primJS $ ImageData.prim__new a b


  export
  new1' :
       (data_ : UInt8ClampedArray)
    -> (sw : Bits32)
    -> (sh : Optional Bits32)
    -> JSIO ImageData
  new1' a b c = primJS $ ImageData.prim__new1 a b (toFFI c)

  export
  new1 : (data_ : UInt8ClampedArray) -> (sw : Bits32) -> JSIO ImageData
  new1 a b = primJS $ ImageData.prim__new1 a b undef


  export
  data_ : (obj : ImageData) -> JSIO UInt8ClampedArray
  data_ a = primJS $ ImageData.prim__data a


  export
  height : (obj : ImageData) -> JSIO Bits32
  height a = primJS $ ImageData.prim__height a


  export
  width : (obj : ImageData) -> JSIO Bits32
  width a = primJS $ ImageData.prim__width a



namespace Location

  export
  ancestorOrigins : (obj : Location) -> JSIO DOMStringList
  ancestorOrigins a = primJS $ Location.prim__ancestorOrigins a


  export
  hash : Location -> Attribute True Prelude.id String
  hash v = fromPrim "Location.gethash" prim__hash prim__setHash v


  export
  host : Location -> Attribute True Prelude.id String
  host v = fromPrim "Location.gethost" prim__host prim__setHost v


  export
  hostname : Location -> Attribute True Prelude.id String
  hostname v = fromPrim
                 "Location.gethostname"
                 prim__hostname
                 prim__setHostname
                 v


  export
  href : Location -> Attribute True Prelude.id String
  href v = fromPrim "Location.gethref" prim__href prim__setHref v


  export
  origin : (obj : Location) -> JSIO String
  origin a = primJS $ Location.prim__origin a


  export
  pathname : Location -> Attribute True Prelude.id String
  pathname v = fromPrim
                 "Location.getpathname"
                 prim__pathname
                 prim__setPathname
                 v


  export
  port : Location -> Attribute True Prelude.id String
  port v = fromPrim "Location.getport" prim__port prim__setPort v


  export
  protocol : Location -> Attribute True Prelude.id String
  protocol v = fromPrim
                 "Location.getprotocol"
                 prim__protocol
                 prim__setProtocol
                 v


  export
  search : Location -> Attribute True Prelude.id String
  search v = fromPrim "Location.getsearch" prim__search prim__setSearch v


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

  export
  MEDIA_ERR_ABORTED : Bits16
  MEDIA_ERR_ABORTED = 1


  export
  MEDIA_ERR_DECODE : Bits16
  MEDIA_ERR_DECODE = 3


  export
  MEDIA_ERR_NETWORK : Bits16
  MEDIA_ERR_NETWORK = 2


  export
  MEDIA_ERR_SRC_NOT_SUPPORTED : Bits16
  MEDIA_ERR_SRC_NOT_SUPPORTED = 4


  export
  code : (obj : MediaError) -> JSIO Bits16
  code a = primJS $ MediaError.prim__code a


  export
  message : (obj : MediaError) -> JSIO String
  message a = primJS $ MediaError.prim__message a



namespace MessageChannel

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

  export
  new' :
       {auto _ : Cast t2 MessageEventInit}
    -> (type : String)
    -> (eventInitDict : Optional t2)
    -> JSIO MessageEvent
  new' a b = primJS $ MessageEvent.prim__new a (optUp b)

  export
  new : (type : String) -> JSIO MessageEvent
  new a = primJS $ MessageEvent.prim__new a undef


  export
  data_ : (obj : MessageEvent) -> JSIO Any
  data_ a = tryJS "MessageEvent.data_" $ MessageEvent.prim__data a


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
  source :
       (obj : MessageEvent)
    -> JSIO (Maybe (Union3 WindowProxy MessagePort ServiceWorker))
  source a = tryJS "MessageEvent.source" $ MessageEvent.prim__source a


  export
  initMessageEvent' :
       (obj : MessageEvent)
    -> (type : String)
    -> (bubbles : Optional Bool)
    -> (cancelable : Optional Bool)
    -> (data_ : Optional Any)
    -> (origin : Optional String)
    -> (lastEventId : Optional String)
    -> (source : Optional
                   (Maybe (HSum [WindowProxy, MessagePort, ServiceWorker])))
    -> (ports : Optional (Array MessagePort))
    -> JSIO ()
  initMessageEvent' a b c d e f g h i = primJS $
    MessageEvent.prim__initMessageEvent
      a
      b
      (toFFI c)
      (toFFI d)
      (toFFI e)
      (toFFI f)
      (toFFI g)
      (toFFI h)
      (toFFI i)

  export
  initMessageEvent : (obj : MessageEvent) -> (type : String) -> JSIO ()
  initMessageEvent a b = primJS $
    MessageEvent.prim__initMessageEvent
      a
      b
      undef
      undef
      undef
      undef
      undef
      undef
      undef



namespace MessagePort

  export
  onmessage : MessagePort -> Attribute False Maybe EventHandlerNonNull
  onmessage v = fromNullablePrim
                  "MessagePort.getonmessage"
                  prim__onmessage
                  prim__setOnmessage
                  v


  export
  onmessageerror : MessagePort -> Attribute False Maybe EventHandlerNonNull
  onmessageerror v = fromNullablePrim
                       "MessagePort.getonmessageerror"
                       prim__onmessageerror
                       prim__setOnmessageerror
                       v


  export
  close : (obj : MessagePort) -> JSIO ()
  close a = primJS $ MessagePort.prim__close a


  export
  postMessage :
       (obj : MessagePort)
    -> (message : Any)
    -> (transfer : Array Object)
    -> JSIO ()
  postMessage a b c = primJS $ MessagePort.prim__postMessage a (toFFI b) c


  export
  postMessage1' :
       {auto _ : Cast t3 PostMessageOptions}
    -> (obj : MessagePort)
    -> (message : Any)
    -> (options : Optional t3)
    -> JSIO ()
  postMessage1' a b c = primJS $
    MessagePort.prim__postMessage1 a (toFFI b) (optUp c)

  export
  postMessage1 : (obj : MessagePort) -> (message : Any) -> JSIO ()
  postMessage1 a b = primJS $ MessagePort.prim__postMessage1 a (toFFI b) undef


  export
  start : (obj : MessagePort) -> JSIO ()
  start a = primJS $ MessagePort.prim__start a



namespace MimeType

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

  export
  length : (obj : MimeTypeArray) -> JSIO Bits32
  length a = primJS $ MimeTypeArray.prim__length a


  export
  item : (obj : MimeTypeArray) -> (index : Bits32) -> JSIO (Maybe Object)
  item a b = tryJS "MimeTypeArray.item" $ MimeTypeArray.prim__item a b


  export
  namedItem : (obj : MimeTypeArray) -> (name : String) -> JSIO (Maybe Object)
  namedItem a b = tryJS "MimeTypeArray.namedItem" $
    MimeTypeArray.prim__namedItem a b



namespace Navigator

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
  getUserMedia :
       {auto _ : Cast t2 MediaStreamConstraints}
    -> (obj : Navigator)
    -> (constraints : t2)
    -> (successCallback : NavigatorUserMediaSuccessCallback)
    -> (errorCallback : NavigatorUserMediaErrorCallback)
    -> JSIO ()
  getUserMedia a b c d = primJS $ Navigator.prim__getUserMedia a (cast b) c d



namespace OffscreenCanvas

  export
  new : (width : JSBits64) -> (height : JSBits64) -> JSIO OffscreenCanvas
  new a b = primJS $ OffscreenCanvas.prim__new a b


  export
  height : OffscreenCanvas -> Attribute True Prelude.id JSBits64
  height v = fromPrim "OffscreenCanvas.getheight" prim__height prim__setHeight v


  export
  width : OffscreenCanvas -> Attribute True Prelude.id JSBits64
  width v = fromPrim "OffscreenCanvas.getwidth" prim__width prim__setWidth v


  export
  convertToBlob' :
       {auto _ : Cast t2 ImageEncodeOptions}
    -> (obj : OffscreenCanvas)
    -> (options : Optional t2)
    -> JSIO (Promise Blob)
  convertToBlob' a b = primJS $ OffscreenCanvas.prim__convertToBlob a (optUp b)

  export
  convertToBlob : (obj : OffscreenCanvas) -> JSIO (Promise Blob)
  convertToBlob a = primJS $ OffscreenCanvas.prim__convertToBlob a undef


  export
  getContext' :
       (obj : OffscreenCanvas)
    -> (contextId : OffscreenRenderingContextId)
    -> (options : Optional Any)
    -> JSIO
         (Maybe
            (HSum
               [ OffscreenCanvasRenderingContext2D
               , ImageBitmapRenderingContext
               , WebGLRenderingContext
               , WebGL2RenderingContext
               ]))
  getContext' a b c = tryJS "OffscreenCanvas.getContext'" $
    OffscreenCanvas.prim__getContext a (toFFI b) (toFFI c)

  export
  getContext :
       (obj : OffscreenCanvas)
    -> (contextId : OffscreenRenderingContextId)
    -> JSIO
         (Maybe
            (HSum
               [ OffscreenCanvasRenderingContext2D
               , ImageBitmapRenderingContext
               , WebGLRenderingContext
               , WebGL2RenderingContext
               ]))
  getContext a b = tryJS "OffscreenCanvas.getContext" $
    OffscreenCanvas.prim__getContext a (toFFI b) undef


  export
  transferToImageBitmap : (obj : OffscreenCanvas) -> JSIO ImageBitmap
  transferToImageBitmap a = primJS $
    OffscreenCanvas.prim__transferToImageBitmap a



namespace OffscreenCanvasRenderingContext2D

  export
  canvas : (obj : OffscreenCanvasRenderingContext2D) -> JSIO OffscreenCanvas
  canvas a = primJS $ OffscreenCanvasRenderingContext2D.prim__canvas a


  export
  commit : (obj : OffscreenCanvasRenderingContext2D) -> JSIO ()
  commit a = primJS $ OffscreenCanvasRenderingContext2D.prim__commit a



namespace PageTransitionEvent

  export
  new' :
       {auto _ : Cast t2 PageTransitionEventInit}
    -> (type : String)
    -> (eventInitDict : Optional t2)
    -> JSIO PageTransitionEvent
  new' a b = primJS $ PageTransitionEvent.prim__new a (optUp b)

  export
  new : (type : String) -> JSIO PageTransitionEvent
  new a = primJS $ PageTransitionEvent.prim__new a undef


  export
  persisted : (obj : PageTransitionEvent) -> JSIO Bool
  persisted a = tryJS "PageTransitionEvent.persisted" $
    PageTransitionEvent.prim__persisted a



namespace Path2D

  export
  new' : (path : Optional (HSum [Path2D, String])) -> JSIO Path2D
  new' a = primJS $ Path2D.prim__new (toFFI a)

  export
  new : JSIO Path2D
  new = primJS $ Path2D.prim__new undef


  export
  addPath' :
       {auto _ : Cast t3 DOMMatrix2DInit}
    -> (obj : Path2D)
    -> (path : Path2D)
    -> (transform : Optional t3)
    -> JSIO ()
  addPath' a b c = primJS $ Path2D.prim__addPath a b (optUp c)

  export
  addPath : (obj : Path2D) -> (path : Path2D) -> JSIO ()
  addPath a b = primJS $ Path2D.prim__addPath a b undef



namespace Plugin

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
  item : (obj : Plugin) -> (index : Bits32) -> JSIO ()
  item a b = primJS $ Plugin.prim__item a b


  export
  namedItem : (obj : Plugin) -> (name : String) -> JSIO ()
  namedItem a b = primJS $ Plugin.prim__namedItem a b



namespace PluginArray

  export
  length : (obj : PluginArray) -> JSIO Bits32
  length a = primJS $ PluginArray.prim__length a


  export
  item : (obj : PluginArray) -> (index : Bits32) -> JSIO (Maybe Object)
  item a b = tryJS "PluginArray.item" $ PluginArray.prim__item a b


  export
  namedItem : (obj : PluginArray) -> (name : String) -> JSIO (Maybe Object)
  namedItem a b = tryJS "PluginArray.namedItem" $
    PluginArray.prim__namedItem a b


  export
  refresh : (obj : PluginArray) -> JSIO ()
  refresh a = primJS $ PluginArray.prim__refresh a



namespace PopStateEvent

  export
  new' :
       {auto _ : Cast t2 PopStateEventInit}
    -> (type : String)
    -> (eventInitDict : Optional t2)
    -> JSIO PopStateEvent
  new' a b = primJS $ PopStateEvent.prim__new a (optUp b)

  export
  new : (type : String) -> JSIO PopStateEvent
  new a = primJS $ PopStateEvent.prim__new a undef


  export
  state : (obj : PopStateEvent) -> JSIO Any
  state a = tryJS "PopStateEvent.state" $ PopStateEvent.prim__state a



namespace PromiseRejectionEvent

  export
  new :
       {auto _ : Cast t2 PromiseRejectionEventInit}
    -> (type : String)
    -> (eventInitDict : t2)
    -> JSIO PromiseRejectionEvent
  new a b = primJS $ PromiseRejectionEvent.prim__new a (cast b)


  export
  promise : (obj : PromiseRejectionEvent) -> JSIO (Promise AnyPtr)
  promise a = primJS $ PromiseRejectionEvent.prim__promise a


  export
  reason : (obj : PromiseRejectionEvent) -> JSIO Any
  reason a = tryJS "PromiseRejectionEvent.reason" $
    PromiseRejectionEvent.prim__reason a



namespace RadioNodeList

  export
  value : RadioNodeList -> Attribute True Prelude.id String
  value v = fromPrim "RadioNodeList.getvalue" prim__value prim__setValue v



namespace SharedWorker

  export
  new' :
       (scriptURL : String)
    -> (options : Optional (HSum [String, WorkerOptions]))
    -> JSIO SharedWorker
  new' a b = primJS $ SharedWorker.prim__new a (toFFI b)

  export
  new : (scriptURL : String) -> JSIO SharedWorker
  new a = primJS $ SharedWorker.prim__new a undef


  export
  port : (obj : SharedWorker) -> JSIO MessagePort
  port a = primJS $ SharedWorker.prim__port a



namespace SharedWorkerGlobalScope

  export
  name : (obj : SharedWorkerGlobalScope) -> JSIO String
  name a = primJS $ SharedWorkerGlobalScope.prim__name a


  export
  onconnect :
       SharedWorkerGlobalScope
    -> Attribute False Maybe EventHandlerNonNull
  onconnect v = fromNullablePrim
                  "SharedWorkerGlobalScope.getonconnect"
                  prim__onconnect
                  prim__setOnconnect
                  v


  export
  close : (obj : SharedWorkerGlobalScope) -> JSIO ()
  close a = primJS $ SharedWorkerGlobalScope.prim__close a



namespace Storage

  export
  length : (obj : Storage) -> JSIO Bits32
  length a = primJS $ Storage.prim__length a


  export
  clear : (obj : Storage) -> JSIO ()
  clear a = primJS $ Storage.prim__clear a


  export
  getItem : (obj : Storage) -> (key : String) -> JSIO (Maybe String)
  getItem a b = tryJS "Storage.getItem" $ Storage.prim__getItem a b


  export
  key : (obj : Storage) -> (index : Bits32) -> JSIO (Maybe String)
  key a b = tryJS "Storage.key" $ Storage.prim__key a b


  export
  setItem : (obj : Storage) -> (key : String) -> (value : String) -> JSIO ()
  setItem a b c = primJS $ Storage.prim__setItem a b c



namespace StorageEvent

  export
  new' :
       {auto _ : Cast t2 StorageEventInit}
    -> (type : String)
    -> (eventInitDict : Optional t2)
    -> JSIO StorageEvent
  new' a b = primJS $ StorageEvent.prim__new a (optUp b)

  export
  new : (type : String) -> JSIO StorageEvent
  new a = primJS $ StorageEvent.prim__new a undef


  export
  key : (obj : StorageEvent) -> JSIO (Maybe String)
  key a = tryJS "StorageEvent.key" $ StorageEvent.prim__key a


  export
  newValue : (obj : StorageEvent) -> JSIO (Maybe String)
  newValue a = tryJS "StorageEvent.newValue" $ StorageEvent.prim__newValue a


  export
  oldValue : (obj : StorageEvent) -> JSIO (Maybe String)
  oldValue a = tryJS "StorageEvent.oldValue" $ StorageEvent.prim__oldValue a


  export
  storageArea : (obj : StorageEvent) -> JSIO (Maybe Storage)
  storageArea a = tryJS "StorageEvent.storageArea" $
    StorageEvent.prim__storageArea a


  export
  url : (obj : StorageEvent) -> JSIO String
  url a = primJS $ StorageEvent.prim__url a


  export
  initStorageEvent' :
       (obj : StorageEvent)
    -> (type : String)
    -> (bubbles : Optional Bool)
    -> (cancelable : Optional Bool)
    -> (key : Optional (Maybe String))
    -> (oldValue : Optional (Maybe String))
    -> (newValue : Optional (Maybe String))
    -> (url : Optional String)
    -> (storageArea : Optional (Maybe Storage))
    -> JSIO ()
  initStorageEvent' a b c d e f g h i = primJS $
    StorageEvent.prim__initStorageEvent
      a
      b
      (toFFI c)
      (toFFI d)
      (toFFI e)
      (toFFI f)
      (toFFI g)
      (toFFI h)
      (toFFI i)

  export
  initStorageEvent : (obj : StorageEvent) -> (type : String) -> JSIO ()
  initStorageEvent a b = primJS $
    StorageEvent.prim__initStorageEvent
      a
      b
      undef
      undef
      undef
      undef
      undef
      undef
      undef



namespace SubmitEvent

  export
  new' :
       {auto _ : Cast t2 SubmitEventInit}
    -> (type : String)
    -> (eventInitDict : Optional t2)
    -> JSIO SubmitEvent
  new' a b = primJS $ SubmitEvent.prim__new a (optUp b)

  export
  new : (type : String) -> JSIO SubmitEvent
  new a = primJS $ SubmitEvent.prim__new a undef


  export
  submitter : (obj : SubmitEvent) -> JSIO (Maybe HTMLElement)
  submitter a = tryJS "SubmitEvent.submitter" $ SubmitEvent.prim__submitter a



namespace TextMetrics

  export
  actualBoundingBoxAscent : (obj : TextMetrics) -> JSIO Double
  actualBoundingBoxAscent a = primJS $
    TextMetrics.prim__actualBoundingBoxAscent a


  export
  actualBoundingBoxDescent : (obj : TextMetrics) -> JSIO Double
  actualBoundingBoxDescent a = primJS $
    TextMetrics.prim__actualBoundingBoxDescent a


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

  export
  activeCues : (obj : TextTrack) -> JSIO (Maybe TextTrackCueList)
  activeCues a = tryJS "TextTrack.activeCues" $ TextTrack.prim__activeCues a


  export
  cues : (obj : TextTrack) -> JSIO (Maybe TextTrackCueList)
  cues a = tryJS "TextTrack.cues" $ TextTrack.prim__cues a


  export
  id : (obj : TextTrack) -> JSIO String
  id a = primJS $ TextTrack.prim__id a


  export
  inBandMetadataTrackDispatchType : (obj : TextTrack) -> JSIO String
  inBandMetadataTrackDispatchType a = primJS $
    TextTrack.prim__inBandMetadataTrackDispatchType a


  export
  kind : (obj : TextTrack) -> JSIO TextTrackKind
  kind a = tryJS "TextTrack.kind" $ TextTrack.prim__kind a


  export
  label : (obj : TextTrack) -> JSIO String
  label a = primJS $ TextTrack.prim__label a


  export
  language : (obj : TextTrack) -> JSIO String
  language a = primJS $ TextTrack.prim__language a


  export
  mode : TextTrack -> Attribute True Prelude.id TextTrackMode
  mode v = fromPrim "TextTrack.getmode" prim__mode prim__setMode v


  export
  oncuechange : TextTrack -> Attribute False Maybe EventHandlerNonNull
  oncuechange v = fromNullablePrim
                    "TextTrack.getoncuechange"
                    prim__oncuechange
                    prim__setOncuechange
                    v


  export
  sourceBuffer : (obj : TextTrack) -> JSIO (Maybe SourceBuffer)
  sourceBuffer a = tryJS "TextTrack.sourceBuffer" $
    TextTrack.prim__sourceBuffer a


  export
  addCue : (obj : TextTrack) -> (cue : TextTrackCue) -> JSIO ()
  addCue a b = primJS $ TextTrack.prim__addCue a b


  export
  removeCue : (obj : TextTrack) -> (cue : TextTrackCue) -> JSIO ()
  removeCue a b = primJS $ TextTrack.prim__removeCue a b



namespace TextTrackCue

  export
  endTime : TextTrackCue -> Attribute True Prelude.id Double
  endTime v = fromPrim
                "TextTrackCue.getendTime"
                prim__endTime
                prim__setEndTime
                v


  export
  id : TextTrackCue -> Attribute True Prelude.id String
  id v = fromPrim "TextTrackCue.getid" prim__id prim__setId v


  export
  onenter : TextTrackCue -> Attribute False Maybe EventHandlerNonNull
  onenter v = fromNullablePrim
                "TextTrackCue.getonenter"
                prim__onenter
                prim__setOnenter
                v


  export
  onexit : TextTrackCue -> Attribute False Maybe EventHandlerNonNull
  onexit v = fromNullablePrim
               "TextTrackCue.getonexit"
               prim__onexit
               prim__setOnexit
               v


  export
  pauseOnExit : TextTrackCue -> Attribute True Prelude.id Bool
  pauseOnExit v = fromPrim
                    "TextTrackCue.getpauseOnExit"
                    prim__pauseOnExit
                    prim__setPauseOnExit
                    v


  export
  startTime : TextTrackCue -> Attribute True Prelude.id Double
  startTime v = fromPrim
                  "TextTrackCue.getstartTime"
                  prim__startTime
                  prim__setStartTime
                  v


  export
  track : (obj : TextTrackCue) -> JSIO (Maybe TextTrack)
  track a = tryJS "TextTrackCue.track" $ TextTrackCue.prim__track a



namespace TextTrackCueList

  export
  get : (obj : TextTrackCueList) -> (index : Bits32) -> JSIO TextTrackCue
  get a b = primJS $ TextTrackCueList.prim__get a b


  export
  length : (obj : TextTrackCueList) -> JSIO Bits32
  length a = primJS $ TextTrackCueList.prim__length a


  export
  getCueById :
       (obj : TextTrackCueList)
    -> (id : String)
    -> JSIO (Maybe TextTrackCue)
  getCueById a b = tryJS "TextTrackCueList.getCueById" $
    TextTrackCueList.prim__getCueById a b



namespace TextTrackList

  export
  get : (obj : TextTrackList) -> (index : Bits32) -> JSIO TextTrack
  get a b = primJS $ TextTrackList.prim__get a b


  export
  length : (obj : TextTrackList) -> JSIO Bits32
  length a = primJS $ TextTrackList.prim__length a


  export
  onaddtrack : TextTrackList -> Attribute False Maybe EventHandlerNonNull
  onaddtrack v = fromNullablePrim
                   "TextTrackList.getonaddtrack"
                   prim__onaddtrack
                   prim__setOnaddtrack
                   v


  export
  onchange : TextTrackList -> Attribute False Maybe EventHandlerNonNull
  onchange v = fromNullablePrim
                 "TextTrackList.getonchange"
                 prim__onchange
                 prim__setOnchange
                 v


  export
  onremovetrack : TextTrackList -> Attribute False Maybe EventHandlerNonNull
  onremovetrack v = fromNullablePrim
                      "TextTrackList.getonremovetrack"
                      prim__onremovetrack
                      prim__setOnremovetrack
                      v


  export
  getTrackById :
       (obj : TextTrackList)
    -> (id : String)
    -> JSIO (Maybe TextTrack)
  getTrackById a b = tryJS "TextTrackList.getTrackById" $
    TextTrackList.prim__getTrackById a b



namespace TimeRanges

  export
  length : (obj : TimeRanges) -> JSIO Bits32
  length a = primJS $ TimeRanges.prim__length a


  export
  end : (obj : TimeRanges) -> (index : Bits32) -> JSIO Double
  end a b = primJS $ TimeRanges.prim__end a b


  export
  start : (obj : TimeRanges) -> (index : Bits32) -> JSIO Double
  start a b = primJS $ TimeRanges.prim__start a b



namespace TrackEvent

  export
  new' :
       {auto _ : Cast t2 TrackEventInit}
    -> (type : String)
    -> (eventInitDict : Optional t2)
    -> JSIO TrackEvent
  new' a b = primJS $ TrackEvent.prim__new a (optUp b)

  export
  new : (type : String) -> JSIO TrackEvent
  new a = primJS $ TrackEvent.prim__new a undef


  export
  track :
       (obj : TrackEvent)
    -> JSIO (Maybe (HSum [VideoTrack, AudioTrack, TextTrack]))
  track a = tryJS "TrackEvent.track" $ TrackEvent.prim__track a



namespace ValidityState

  export
  badInput : (obj : ValidityState) -> JSIO Bool
  badInput a = tryJS "ValidityState.badInput" $ ValidityState.prim__badInput a


  export
  customError : (obj : ValidityState) -> JSIO Bool
  customError a = tryJS "ValidityState.customError" $
    ValidityState.prim__customError a


  export
  patternMismatch : (obj : ValidityState) -> JSIO Bool
  patternMismatch a = tryJS "ValidityState.patternMismatch" $
    ValidityState.prim__patternMismatch a


  export
  rangeOverflow : (obj : ValidityState) -> JSIO Bool
  rangeOverflow a = tryJS "ValidityState.rangeOverflow" $
    ValidityState.prim__rangeOverflow a


  export
  rangeUnderflow : (obj : ValidityState) -> JSIO Bool
  rangeUnderflow a = tryJS "ValidityState.rangeUnderflow" $
    ValidityState.prim__rangeUnderflow a


  export
  stepMismatch : (obj : ValidityState) -> JSIO Bool
  stepMismatch a = tryJS "ValidityState.stepMismatch" $
    ValidityState.prim__stepMismatch a


  export
  tooLong : (obj : ValidityState) -> JSIO Bool
  tooLong a = tryJS "ValidityState.tooLong" $ ValidityState.prim__tooLong a


  export
  tooShort : (obj : ValidityState) -> JSIO Bool
  tooShort a = tryJS "ValidityState.tooShort" $ ValidityState.prim__tooShort a


  export
  typeMismatch : (obj : ValidityState) -> JSIO Bool
  typeMismatch a = tryJS "ValidityState.typeMismatch" $
    ValidityState.prim__typeMismatch a


  export
  valid : (obj : ValidityState) -> JSIO Bool
  valid a = tryJS "ValidityState.valid" $ ValidityState.prim__valid a


  export
  valueMissing : (obj : ValidityState) -> JSIO Bool
  valueMissing a = tryJS "ValidityState.valueMissing" $
    ValidityState.prim__valueMissing a



namespace VideoTrack

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
  selected : VideoTrack -> Attribute True Prelude.id Bool
  selected v = fromPrim
                 "VideoTrack.getselected"
                 prim__selected
                 prim__setSelected
                 v


  export
  sourceBuffer : (obj : VideoTrack) -> JSIO (Maybe SourceBuffer)
  sourceBuffer a = tryJS "VideoTrack.sourceBuffer" $
    VideoTrack.prim__sourceBuffer a



namespace VideoTrackList

  export
  get : (obj : VideoTrackList) -> (index : Bits32) -> JSIO VideoTrack
  get a b = primJS $ VideoTrackList.prim__get a b


  export
  length : (obj : VideoTrackList) -> JSIO Bits32
  length a = primJS $ VideoTrackList.prim__length a


  export
  onaddtrack : VideoTrackList -> Attribute False Maybe EventHandlerNonNull
  onaddtrack v = fromNullablePrim
                   "VideoTrackList.getonaddtrack"
                   prim__onaddtrack
                   prim__setOnaddtrack
                   v


  export
  onchange : VideoTrackList -> Attribute False Maybe EventHandlerNonNull
  onchange v = fromNullablePrim
                 "VideoTrackList.getonchange"
                 prim__onchange
                 prim__setOnchange
                 v


  export
  onremovetrack : VideoTrackList -> Attribute False Maybe EventHandlerNonNull
  onremovetrack v = fromNullablePrim
                      "VideoTrackList.getonremovetrack"
                      prim__onremovetrack
                      prim__setOnremovetrack
                      v


  export
  selectedIndex : (obj : VideoTrackList) -> JSIO Int32
  selectedIndex a = primJS $ VideoTrackList.prim__selectedIndex a


  export
  getTrackById :
       (obj : VideoTrackList)
    -> (id : String)
    -> JSIO (Maybe VideoTrack)
  getTrackById a b = tryJS "VideoTrackList.getTrackById" $
    VideoTrackList.prim__getTrackById a b



namespace WebSocket

  export
  CLOSED : Bits16
  CLOSED = 3


  export
  CLOSING : Bits16
  CLOSING = 2


  export
  CONNECTING : Bits16
  CONNECTING = 0


  export
  OPEN : Bits16
  OPEN = 1


  export
  new' :
       (url : String)
    -> (protocols : Optional (HSum [String, Array String]))
    -> JSIO WebSocket
  new' a b = primJS $ WebSocket.prim__new a (toFFI b)

  export
  new : (url : String) -> JSIO WebSocket
  new a = primJS $ WebSocket.prim__new a undef


  export
  binaryType : WebSocket -> Attribute True Prelude.id BinaryType
  binaryType v = fromPrim
                   "WebSocket.getbinaryType"
                   prim__binaryType
                   prim__setBinaryType
                   v


  export
  bufferedAmount : (obj : WebSocket) -> JSIO JSBits64
  bufferedAmount a = primJS $ WebSocket.prim__bufferedAmount a


  export
  extensions : (obj : WebSocket) -> JSIO String
  extensions a = primJS $ WebSocket.prim__extensions a


  export
  onclose : WebSocket -> Attribute False Maybe EventHandlerNonNull
  onclose v = fromNullablePrim
                "WebSocket.getonclose"
                prim__onclose
                prim__setOnclose
                v


  export
  onerror : WebSocket -> Attribute False Maybe EventHandlerNonNull
  onerror v = fromNullablePrim
                "WebSocket.getonerror"
                prim__onerror
                prim__setOnerror
                v


  export
  onmessage : WebSocket -> Attribute False Maybe EventHandlerNonNull
  onmessage v = fromNullablePrim
                  "WebSocket.getonmessage"
                  prim__onmessage
                  prim__setOnmessage
                  v


  export
  onopen : WebSocket -> Attribute False Maybe EventHandlerNonNull
  onopen v = fromNullablePrim
               "WebSocket.getonopen"
               prim__onopen
               prim__setOnopen
               v


  export
  protocol : (obj : WebSocket) -> JSIO String
  protocol a = primJS $ WebSocket.prim__protocol a


  export
  readyState : (obj : WebSocket) -> JSIO Bits16
  readyState a = primJS $ WebSocket.prim__readyState a


  export
  url : (obj : WebSocket) -> JSIO String
  url a = primJS $ WebSocket.prim__url a


  export
  close' :
       (obj : WebSocket)
    -> (code : Optional Bits16)
    -> (reason : Optional String)
    -> JSIO ()
  close' a b c = primJS $ WebSocket.prim__close a (toFFI b) (toFFI c)

  export
  close : (obj : WebSocket) -> JSIO ()
  close a = primJS $ WebSocket.prim__close a undef undef


  export
  send : (obj : WebSocket) -> (data_ : String) -> JSIO ()
  send a b = primJS $ WebSocket.prim__send a b


  export
  send1 :
       {auto _ : Cast t2 Blob}
    -> (obj : WebSocket)
    -> (data_ : t2)
    -> JSIO ()
  send1 a b = primJS $ WebSocket.prim__send1 a (cast b)


  export
  send2 : (obj : WebSocket) -> (data_ : ArrayBuffer) -> JSIO ()
  send2 a b = primJS $ WebSocket.prim__send2 a b


  export
  send3 :
       (obj : WebSocket)
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
  send3 a b = primJS $ WebSocket.prim__send3 a (toFFI b)



namespace Window

  export
  get : (obj : Window) -> (name : String) -> JSIO Object
  get a b = primJS $ Window.prim__get a b


  export
  closed : (obj : Window) -> JSIO Bool
  closed a = tryJS "Window.closed" $ Window.prim__closed a


  export
  customElements : (obj : Window) -> JSIO CustomElementRegistry
  customElements a = primJS $ Window.prim__customElements a


  export
  devicePixelRatio : (obj : Window) -> JSIO Double
  devicePixelRatio a = primJS $ Window.prim__devicePixelRatio a


  export
  document : (obj : Window) -> JSIO Document
  document a = primJS $ Window.prim__document a


  export
  event : (obj : Window) -> JSIO (HSum [Event, Undefined])
  event a = tryJS "Window.event" $ Window.prim__event a


  export
  external : (obj : Window) -> JSIO External
  external a = primJS $ Window.prim__external a


  export
  frameElement : (obj : Window) -> JSIO (Maybe Element)
  frameElement a = tryJS "Window.frameElement" $ Window.prim__frameElement a


  export
  frames : (obj : Window) -> JSIO WindowProxy
  frames a = primJS $ Window.prim__frames a


  export
  history : (obj : Window) -> JSIO History
  history a = primJS $ Window.prim__history a


  export
  innerHeight : (obj : Window) -> JSIO Int32
  innerHeight a = primJS $ Window.prim__innerHeight a


  export
  innerWidth : (obj : Window) -> JSIO Int32
  innerWidth a = primJS $ Window.prim__innerWidth a


  export
  length : (obj : Window) -> JSIO Bits32
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
  name : Window -> Attribute True Prelude.id String
  name v = fromPrim "Window.getname" prim__name prim__setName v


  export
  navigator : (obj : Window) -> JSIO Navigator
  navigator a = primJS $ Window.prim__navigator a


  export
  opener : Window -> Attribute True Prelude.id Any
  opener v = fromPrim "Window.getopener" prim__opener prim__setOpener v


  export
  originAgentCluster : (obj : Window) -> JSIO Bool
  originAgentCluster a = tryJS "Window.originAgentCluster" $
    Window.prim__originAgentCluster a


  export
  outerHeight : (obj : Window) -> JSIO Int32
  outerHeight a = primJS $ Window.prim__outerHeight a


  export
  outerWidth : (obj : Window) -> JSIO Int32
  outerWidth a = primJS $ Window.prim__outerWidth a


  export
  pageXOffset : (obj : Window) -> JSIO Double
  pageXOffset a = primJS $ Window.prim__pageXOffset a


  export
  pageYOffset : (obj : Window) -> JSIO Double
  pageYOffset a = primJS $ Window.prim__pageYOffset a


  export
  parent : (obj : Window) -> JSIO (Maybe WindowProxy)
  parent a = tryJS "Window.parent" $ Window.prim__parent a


  export
  personalbar : (obj : Window) -> JSIO BarProp
  personalbar a = primJS $ Window.prim__personalbar a


  export
  screen : (obj : Window) -> JSIO Screen
  screen a = primJS $ Window.prim__screen a


  export
  screenLeft : (obj : Window) -> JSIO Int32
  screenLeft a = primJS $ Window.prim__screenLeft a


  export
  screenTop : (obj : Window) -> JSIO Int32
  screenTop a = primJS $ Window.prim__screenTop a


  export
  screenX : (obj : Window) -> JSIO Int32
  screenX a = primJS $ Window.prim__screenX a


  export
  screenY : (obj : Window) -> JSIO Int32
  screenY a = primJS $ Window.prim__screenY a


  export
  scrollX : (obj : Window) -> JSIO Double
  scrollX a = primJS $ Window.prim__scrollX a


  export
  scrollY : (obj : Window) -> JSIO Double
  scrollY a = primJS $ Window.prim__scrollY a


  export
  scrollbars : (obj : Window) -> JSIO BarProp
  scrollbars a = primJS $ Window.prim__scrollbars a


  export
  self : (obj : Window) -> JSIO WindowProxy
  self a = primJS $ Window.prim__self a


  export
  status : Window -> Attribute True Prelude.id String
  status v = fromPrim "Window.getstatus" prim__status prim__setStatus v


  export
  statusbar : (obj : Window) -> JSIO BarProp
  statusbar a = primJS $ Window.prim__statusbar a


  export
  toolbar : (obj : Window) -> JSIO BarProp
  toolbar a = primJS $ Window.prim__toolbar a


  export
  top : (obj : Window) -> JSIO (Maybe WindowProxy)
  top a = tryJS "Window.top" $ Window.prim__top a


  export
  visualViewport : (obj : Window) -> JSIO (Maybe VisualViewport)
  visualViewport a = tryJS "Window.visualViewport" $
    Window.prim__visualViewport a


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
  confirm' : (obj : Window) -> (message : Optional String) -> JSIO Bool
  confirm' a b = tryJS "Window.confirm'" $ Window.prim__confirm a (toFFI b)

  export
  confirm : (obj : Window) -> JSIO Bool
  confirm a = tryJS "Window.confirm" $ Window.prim__confirm a undef


  export
  focus : (obj : Window) -> JSIO ()
  focus a = primJS $ Window.prim__focus a


  export
  getComputedStyle' :
       {auto _ : Cast t2 Element}
    -> (obj : Window)
    -> (elt : t2)
    -> (pseudoElt : Optional (Maybe String))
    -> JSIO CSSStyleDeclaration
  getComputedStyle' a b c = primJS $
    Window.prim__getComputedStyle a (cast b) (toFFI c)

  export
  getComputedStyle :
       {auto _ : Cast t2 Element}
    -> (obj : Window)
    -> (elt : t2)
    -> JSIO CSSStyleDeclaration
  getComputedStyle a b = primJS $ Window.prim__getComputedStyle a (cast b) undef


  export
  matchMedia : (obj : Window) -> (query : String) -> JSIO MediaQueryList
  matchMedia a b = primJS $ Window.prim__matchMedia a b


  export
  moveBy : (obj : Window) -> (x : Int32) -> (y : Int32) -> JSIO ()
  moveBy a b c = primJS $ Window.prim__moveBy a b c


  export
  moveTo : (obj : Window) -> (x : Int32) -> (y : Int32) -> JSIO ()
  moveTo a b c = primJS $ Window.prim__moveTo a b c


  export
  open' :
       (obj : Window)
    -> (url : Optional String)
    -> (target : Optional String)
    -> (features : Optional String)
    -> JSIO (Maybe WindowProxy)
  open' a b c d = tryJS "Window.open'" $
    Window.prim__open a (toFFI b) (toFFI c) (toFFI d)

  export
  open_ : (obj : Window) -> JSIO (Maybe WindowProxy)
  open_ a = tryJS "Window.open_" $ Window.prim__open a undef undef undef


  export
  postMessage' :
       (obj : Window)
    -> (message : Any)
    -> (targetOrigin : String)
    -> (transfer : Optional (Array Object))
    -> JSIO ()
  postMessage' a b c d = primJS $
    Window.prim__postMessage a (toFFI b) c (toFFI d)

  export
  postMessage :
       (obj : Window)
    -> (message : Any)
    -> (targetOrigin : String)
    -> JSIO ()
  postMessage a b c = primJS $ Window.prim__postMessage a (toFFI b) c undef


  export
  postMessage1' :
       {auto _ : Cast t3 WindowPostMessageOptions}
    -> (obj : Window)
    -> (message : Any)
    -> (options : Optional t3)
    -> JSIO ()
  postMessage1' a b c = primJS $ Window.prim__postMessage1 a (toFFI b) (optUp c)

  export
  postMessage1 : (obj : Window) -> (message : Any) -> JSIO ()
  postMessage1 a b = primJS $ Window.prim__postMessage1 a (toFFI b) undef


  export
  print : (obj : Window) -> JSIO ()
  print a = primJS $ Window.prim__print a


  export
  prompt' :
       (obj : Window)
    -> (message : Optional String)
    -> (default_ : Optional String)
    -> JSIO (Maybe String)
  prompt' a b c = tryJS "Window.prompt'" $
    Window.prim__prompt a (toFFI b) (toFFI c)

  export
  prompt : (obj : Window) -> JSIO (Maybe String)
  prompt a = tryJS "Window.prompt" $ Window.prim__prompt a undef undef


  export
  releaseEvents : (obj : Window) -> JSIO ()
  releaseEvents a = primJS $ Window.prim__releaseEvents a


  export
  resizeBy : (obj : Window) -> (x : Int32) -> (y : Int32) -> JSIO ()
  resizeBy a b c = primJS $ Window.prim__resizeBy a b c


  export
  resizeTo : (obj : Window) -> (width : Int32) -> (height : Int32) -> JSIO ()
  resizeTo a b c = primJS $ Window.prim__resizeTo a b c


  export
  scrollBy' :
       {auto _ : Cast t2 ScrollToOptions}
    -> (obj : Window)
    -> (options : Optional t2)
    -> JSIO ()
  scrollBy' a b = primJS $ Window.prim__scrollBy a (optUp b)

  export
  scrollBy : (obj : Window) -> JSIO ()
  scrollBy a = primJS $ Window.prim__scrollBy a undef


  export
  scrollBy1 : (obj : Window) -> (x : Double) -> (y : Double) -> JSIO ()
  scrollBy1 a b c = primJS $ Window.prim__scrollBy1 a b c


  export
  scrollTo' :
       {auto _ : Cast t2 ScrollToOptions}
    -> (obj : Window)
    -> (options : Optional t2)
    -> JSIO ()
  scrollTo' a b = primJS $ Window.prim__scrollTo a (optUp b)

  export
  scrollTo : (obj : Window) -> JSIO ()
  scrollTo a = primJS $ Window.prim__scrollTo a undef


  export
  scrollTo1 : (obj : Window) -> (x : Double) -> (y : Double) -> JSIO ()
  scrollTo1 a b c = primJS $ Window.prim__scrollTo1 a b c


  export
  scroll' :
       {auto _ : Cast t2 ScrollToOptions}
    -> (obj : Window)
    -> (options : Optional t2)
    -> JSIO ()
  scroll' a b = primJS $ Window.prim__scroll a (optUp b)

  export
  scroll : (obj : Window) -> JSIO ()
  scroll a = primJS $ Window.prim__scroll a undef


  export
  scroll1 : (obj : Window) -> (x : Double) -> (y : Double) -> JSIO ()
  scroll1 a b c = primJS $ Window.prim__scroll1 a b c


  export
  stop : (obj : Window) -> JSIO ()
  stop a = primJS $ Window.prim__stop a



namespace Worker

  export
  new' :
       {auto _ : Cast t2 WorkerOptions}
    -> (scriptURL : String)
    -> (options : Optional t2)
    -> JSIO Worker
  new' a b = primJS $ Worker.prim__new a (optUp b)

  export
  new : (scriptURL : String) -> JSIO Worker
  new a = primJS $ Worker.prim__new a undef


  export
  onmessage : Worker -> Attribute False Maybe EventHandlerNonNull
  onmessage v = fromNullablePrim
                  "Worker.getonmessage"
                  prim__onmessage
                  prim__setOnmessage
                  v


  export
  onmessageerror : Worker -> Attribute False Maybe EventHandlerNonNull
  onmessageerror v = fromNullablePrim
                       "Worker.getonmessageerror"
                       prim__onmessageerror
                       prim__setOnmessageerror
                       v


  export
  postMessage :
       (obj : Worker)
    -> (message : Any)
    -> (transfer : Array Object)
    -> JSIO ()
  postMessage a b c = primJS $ Worker.prim__postMessage a (toFFI b) c


  export
  postMessage1' :
       {auto _ : Cast t3 PostMessageOptions}
    -> (obj : Worker)
    -> (message : Any)
    -> (options : Optional t3)
    -> JSIO ()
  postMessage1' a b c = primJS $ Worker.prim__postMessage1 a (toFFI b) (optUp c)

  export
  postMessage1 : (obj : Worker) -> (message : Any) -> JSIO ()
  postMessage1 a b = primJS $ Worker.prim__postMessage1 a (toFFI b) undef


  export
  terminate : (obj : Worker) -> JSIO ()
  terminate a = primJS $ Worker.prim__terminate a



namespace WorkerGlobalScope

  export
  location :
       {auto _ : Cast t1 WorkerGlobalScope}
    -> (obj : t1)
    -> JSIO WorkerLocation
  location a = primJS $ WorkerGlobalScope.prim__location (cast a)


  export
  navigator :
       {auto _ : Cast t1 WorkerGlobalScope}
    -> (obj : t1)
    -> JSIO WorkerNavigator
  navigator a = primJS $ WorkerGlobalScope.prim__navigator (cast a)


  export
  onerror :
       {auto _ : Cast t WorkerGlobalScope}
    -> t
    -> Attribute False Maybe OnErrorEventHandlerNonNull
  onerror v = fromNullablePrim
                "WorkerGlobalScope.getonerror"
                prim__onerror
                prim__setOnerror
                (cast {to = WorkerGlobalScope} v)


  export
  onlanguagechange :
       {auto _ : Cast t WorkerGlobalScope}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onlanguagechange v = fromNullablePrim
                         "WorkerGlobalScope.getonlanguagechange"
                         prim__onlanguagechange
                         prim__setOnlanguagechange
                         (cast {to = WorkerGlobalScope} v)


  export
  onoffline :
       {auto _ : Cast t WorkerGlobalScope}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onoffline v = fromNullablePrim
                  "WorkerGlobalScope.getonoffline"
                  prim__onoffline
                  prim__setOnoffline
                  (cast {to = WorkerGlobalScope} v)


  export
  ononline :
       {auto _ : Cast t WorkerGlobalScope}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  ononline v = fromNullablePrim
                 "WorkerGlobalScope.getononline"
                 prim__ononline
                 prim__setOnonline
                 (cast {to = WorkerGlobalScope} v)


  export
  onrejectionhandled :
       {auto _ : Cast t WorkerGlobalScope}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onrejectionhandled v = fromNullablePrim
                           "WorkerGlobalScope.getonrejectionhandled"
                           prim__onrejectionhandled
                           prim__setOnrejectionhandled
                           (cast {to = WorkerGlobalScope} v)


  export
  onunhandledrejection :
       {auto _ : Cast t WorkerGlobalScope}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onunhandledrejection v = fromNullablePrim
                             "WorkerGlobalScope.getonunhandledrejection"
                             prim__onunhandledrejection
                             prim__setOnunhandledrejection
                             (cast {to = WorkerGlobalScope} v)


  export
  self :
       {auto _ : Cast t1 WorkerGlobalScope}
    -> (obj : t1)
    -> JSIO WorkerGlobalScope
  self a = primJS $ WorkerGlobalScope.prim__self (cast a)


  export
  importScripts :
       {auto _ : Cast t1 WorkerGlobalScope}
    -> (obj : t1)
    -> (urls : List String)
    -> JSIO ()
  importScripts a b = primJS $
    WorkerGlobalScope.prim__importScripts (cast a) (toFFI b)



namespace WorkerLocation

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
  href : (obj : WorkerLocation) -> JSIO String
  href a = primJS $ WorkerLocation.prim__href a


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

  export
  permissions : (obj : WorkerNavigator) -> JSIO Permissions
  permissions a = primJS $ WorkerNavigator.prim__permissions a


  export
  serviceWorker : (obj : WorkerNavigator) -> JSIO ServiceWorkerContainer
  serviceWorker a = primJS $ WorkerNavigator.prim__serviceWorker a



namespace Worklet

  export
  addModule' :
       {auto _ : Cast t3 WorkletOptions}
    -> (obj : Worklet)
    -> (moduleURL : String)
    -> (options : Optional t3)
    -> JSIO (Promise Undefined)
  addModule' a b c = primJS $ Worklet.prim__addModule a b (optUp c)

  export
  addModule :
       (obj : Worklet)
    -> (moduleURL : String)
    -> JSIO (Promise Undefined)
  addModule a b = primJS $ Worklet.prim__addModule a b undef





--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace ARIAMixin

  export
  ariaAtomic :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaAtomic v = fromPrim
                   "ARIAMixin.getariaAtomic"
                   prim__ariaAtomic
                   prim__setAriaAtomic
                   (cast {to = ARIAMixin} v)


  export
  ariaAutoComplete :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaAutoComplete v = fromPrim
                         "ARIAMixin.getariaAutoComplete"
                         prim__ariaAutoComplete
                         prim__setAriaAutoComplete
                         (cast {to = ARIAMixin} v)


  export
  ariaBusy :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaBusy v = fromPrim
                 "ARIAMixin.getariaBusy"
                 prim__ariaBusy
                 prim__setAriaBusy
                 (cast {to = ARIAMixin} v)


  export
  ariaChecked :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaChecked v = fromPrim
                    "ARIAMixin.getariaChecked"
                    prim__ariaChecked
                    prim__setAriaChecked
                    (cast {to = ARIAMixin} v)


  export
  ariaColCount :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaColCount v = fromPrim
                     "ARIAMixin.getariaColCount"
                     prim__ariaColCount
                     prim__setAriaColCount
                     (cast {to = ARIAMixin} v)


  export
  ariaColIndex :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaColIndex v = fromPrim
                     "ARIAMixin.getariaColIndex"
                     prim__ariaColIndex
                     prim__setAriaColIndex
                     (cast {to = ARIAMixin} v)


  export
  ariaColIndexText :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaColIndexText v = fromPrim
                         "ARIAMixin.getariaColIndexText"
                         prim__ariaColIndexText
                         prim__setAriaColIndexText
                         (cast {to = ARIAMixin} v)


  export
  ariaColSpan :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaColSpan v = fromPrim
                    "ARIAMixin.getariaColSpan"
                    prim__ariaColSpan
                    prim__setAriaColSpan
                    (cast {to = ARIAMixin} v)


  export
  ariaCurrent :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaCurrent v = fromPrim
                    "ARIAMixin.getariaCurrent"
                    prim__ariaCurrent
                    prim__setAriaCurrent
                    (cast {to = ARIAMixin} v)


  export
  ariaDescription :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaDescription v = fromPrim
                        "ARIAMixin.getariaDescription"
                        prim__ariaDescription
                        prim__setAriaDescription
                        (cast {to = ARIAMixin} v)


  export
  ariaDisabled :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaDisabled v = fromPrim
                     "ARIAMixin.getariaDisabled"
                     prim__ariaDisabled
                     prim__setAriaDisabled
                     (cast {to = ARIAMixin} v)


  export
  ariaExpanded :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaExpanded v = fromPrim
                     "ARIAMixin.getariaExpanded"
                     prim__ariaExpanded
                     prim__setAriaExpanded
                     (cast {to = ARIAMixin} v)


  export
  ariaHasPopup :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaHasPopup v = fromPrim
                     "ARIAMixin.getariaHasPopup"
                     prim__ariaHasPopup
                     prim__setAriaHasPopup
                     (cast {to = ARIAMixin} v)


  export
  ariaHidden :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaHidden v = fromPrim
                   "ARIAMixin.getariaHidden"
                   prim__ariaHidden
                   prim__setAriaHidden
                   (cast {to = ARIAMixin} v)


  export
  ariaInvalid :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaInvalid v = fromPrim
                    "ARIAMixin.getariaInvalid"
                    prim__ariaInvalid
                    prim__setAriaInvalid
                    (cast {to = ARIAMixin} v)


  export
  ariaKeyShortcuts :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaKeyShortcuts v = fromPrim
                         "ARIAMixin.getariaKeyShortcuts"
                         prim__ariaKeyShortcuts
                         prim__setAriaKeyShortcuts
                         (cast {to = ARIAMixin} v)


  export
  ariaLabel :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaLabel v = fromPrim
                  "ARIAMixin.getariaLabel"
                  prim__ariaLabel
                  prim__setAriaLabel
                  (cast {to = ARIAMixin} v)


  export
  ariaLevel :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaLevel v = fromPrim
                  "ARIAMixin.getariaLevel"
                  prim__ariaLevel
                  prim__setAriaLevel
                  (cast {to = ARIAMixin} v)


  export
  ariaLive :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaLive v = fromPrim
                 "ARIAMixin.getariaLive"
                 prim__ariaLive
                 prim__setAriaLive
                 (cast {to = ARIAMixin} v)


  export
  ariaModal :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaModal v = fromPrim
                  "ARIAMixin.getariaModal"
                  prim__ariaModal
                  prim__setAriaModal
                  (cast {to = ARIAMixin} v)


  export
  ariaMultiLine :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaMultiLine v = fromPrim
                      "ARIAMixin.getariaMultiLine"
                      prim__ariaMultiLine
                      prim__setAriaMultiLine
                      (cast {to = ARIAMixin} v)


  export
  ariaMultiSelectable :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaMultiSelectable v = fromPrim
                            "ARIAMixin.getariaMultiSelectable"
                            prim__ariaMultiSelectable
                            prim__setAriaMultiSelectable
                            (cast {to = ARIAMixin} v)


  export
  ariaOrientation :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaOrientation v = fromPrim
                        "ARIAMixin.getariaOrientation"
                        prim__ariaOrientation
                        prim__setAriaOrientation
                        (cast {to = ARIAMixin} v)


  export
  ariaPlaceholder :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaPlaceholder v = fromPrim
                        "ARIAMixin.getariaPlaceholder"
                        prim__ariaPlaceholder
                        prim__setAriaPlaceholder
                        (cast {to = ARIAMixin} v)


  export
  ariaPosInSet :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaPosInSet v = fromPrim
                     "ARIAMixin.getariaPosInSet"
                     prim__ariaPosInSet
                     prim__setAriaPosInSet
                     (cast {to = ARIAMixin} v)


  export
  ariaPressed :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaPressed v = fromPrim
                    "ARIAMixin.getariaPressed"
                    prim__ariaPressed
                    prim__setAriaPressed
                    (cast {to = ARIAMixin} v)


  export
  ariaReadOnly :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaReadOnly v = fromPrim
                     "ARIAMixin.getariaReadOnly"
                     prim__ariaReadOnly
                     prim__setAriaReadOnly
                     (cast {to = ARIAMixin} v)


  export
  ariaRequired :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaRequired v = fromPrim
                     "ARIAMixin.getariaRequired"
                     prim__ariaRequired
                     prim__setAriaRequired
                     (cast {to = ARIAMixin} v)


  export
  ariaRoleDescription :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaRoleDescription v = fromPrim
                            "ARIAMixin.getariaRoleDescription"
                            prim__ariaRoleDescription
                            prim__setAriaRoleDescription
                            (cast {to = ARIAMixin} v)


  export
  ariaRowCount :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaRowCount v = fromPrim
                     "ARIAMixin.getariaRowCount"
                     prim__ariaRowCount
                     prim__setAriaRowCount
                     (cast {to = ARIAMixin} v)


  export
  ariaRowIndex :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaRowIndex v = fromPrim
                     "ARIAMixin.getariaRowIndex"
                     prim__ariaRowIndex
                     prim__setAriaRowIndex
                     (cast {to = ARIAMixin} v)


  export
  ariaRowIndexText :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaRowIndexText v = fromPrim
                         "ARIAMixin.getariaRowIndexText"
                         prim__ariaRowIndexText
                         prim__setAriaRowIndexText
                         (cast {to = ARIAMixin} v)


  export
  ariaRowSpan :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaRowSpan v = fromPrim
                    "ARIAMixin.getariaRowSpan"
                    prim__ariaRowSpan
                    prim__setAriaRowSpan
                    (cast {to = ARIAMixin} v)


  export
  ariaSelected :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaSelected v = fromPrim
                     "ARIAMixin.getariaSelected"
                     prim__ariaSelected
                     prim__setAriaSelected
                     (cast {to = ARIAMixin} v)


  export
  ariaSetSize :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaSetSize v = fromPrim
                    "ARIAMixin.getariaSetSize"
                    prim__ariaSetSize
                    prim__setAriaSetSize
                    (cast {to = ARIAMixin} v)


  export
  ariaSort :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaSort v = fromPrim
                 "ARIAMixin.getariaSort"
                 prim__ariaSort
                 prim__setAriaSort
                 (cast {to = ARIAMixin} v)


  export
  ariaValueMax :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaValueMax v = fromPrim
                     "ARIAMixin.getariaValueMax"
                     prim__ariaValueMax
                     prim__setAriaValueMax
                     (cast {to = ARIAMixin} v)


  export
  ariaValueMin :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaValueMin v = fromPrim
                     "ARIAMixin.getariaValueMin"
                     prim__ariaValueMin
                     prim__setAriaValueMin
                     (cast {to = ARIAMixin} v)


  export
  ariaValueNow :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaValueNow v = fromPrim
                     "ARIAMixin.getariaValueNow"
                     prim__ariaValueNow
                     prim__setAriaValueNow
                     (cast {to = ARIAMixin} v)


  export
  ariaValueText :
       {auto _ : Cast t ARIAMixin}
    -> t
    -> Attribute True Prelude.id String
  ariaValueText v = fromPrim
                      "ARIAMixin.getariaValueText"
                      prim__ariaValueText
                      prim__setAriaValueText
                      (cast {to = ARIAMixin} v)


  export
  role : {auto _ : Cast t ARIAMixin} -> t -> Attribute False Maybe String
  role v = fromNullablePrim
             "ARIAMixin.getrole"
             prim__role
             prim__setRole
             (cast {to = ARIAMixin} v)



namespace AbstractWorker

  export
  onerror :
       {auto _ : Cast t AbstractWorker}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onerror v = fromNullablePrim
                "AbstractWorker.getonerror"
                prim__onerror
                prim__setOnerror
                (cast {to = AbstractWorker} v)



namespace CanvasCompositing

  export
  globalAlpha :
       {auto _ : Cast t CanvasCompositing}
    -> t
    -> Attribute True Prelude.id Double
  globalAlpha v = fromPrim
                    "CanvasCompositing.getglobalAlpha"
                    prim__globalAlpha
                    prim__setGlobalAlpha
                    (cast {to = CanvasCompositing} v)


  export
  globalCompositeOperation :
       {auto _ : Cast t CanvasCompositing}
    -> t
    -> Attribute True Prelude.id String
  globalCompositeOperation v = fromPrim
                                 "CanvasCompositing.getglobalCompositeOperation"
                                 prim__globalCompositeOperation
                                 prim__setGlobalCompositeOperation
                                 (cast {to = CanvasCompositing} v)



namespace CanvasDrawImage

  export
  drawImage :
       {auto _ : Cast t1 CanvasDrawImage}
    -> (obj : t1)
    -> (image : HSum
                  [ HTMLImageElement
                  , SVGImageElement
                  , HTMLVideoElement
                  , HTMLCanvasElement
                  , ImageBitmap
                  , OffscreenCanvas
                  ])
    -> (dx : Double)
    -> (dy : Double)
    -> JSIO ()
  drawImage a b c d = primJS $
    CanvasDrawImage.prim__drawImage (cast a) (toFFI b) c d


  export
  drawImage1 :
       {auto _ : Cast t1 CanvasDrawImage}
    -> (obj : t1)
    -> (image : HSum
                  [ HTMLImageElement
                  , SVGImageElement
                  , HTMLVideoElement
                  , HTMLCanvasElement
                  , ImageBitmap
                  , OffscreenCanvas
                  ])
    -> (dx : Double)
    -> (dy : Double)
    -> (dw : Double)
    -> (dh : Double)
    -> JSIO ()
  drawImage1 a b c d e f = primJS $
    CanvasDrawImage.prim__drawImage1 (cast a) (toFFI b) c d e f


  export
  drawImage2 :
       {auto _ : Cast t1 CanvasDrawImage}
    -> (obj : t1)
    -> (image : HSum
                  [ HTMLImageElement
                  , SVGImageElement
                  , HTMLVideoElement
                  , HTMLCanvasElement
                  , ImageBitmap
                  , OffscreenCanvas
                  ])
    -> (sx : Double)
    -> (sy : Double)
    -> (sw : Double)
    -> (sh : Double)
    -> (dx : Double)
    -> (dy : Double)
    -> (dw : Double)
    -> (dh : Double)
    -> JSIO ()
  drawImage2 a b c d e f g h i j = primJS $
    CanvasDrawImage.prim__drawImage2 (cast a) (toFFI b) c d e f g h i j



namespace CanvasDrawPath

  export
  beginPath : {auto _ : Cast t1 CanvasDrawPath} -> (obj : t1) -> JSIO ()
  beginPath a = primJS $ CanvasDrawPath.prim__beginPath (cast a)


  export
  clip' :
       {auto _ : Cast t1 CanvasDrawPath}
    -> (obj : t1)
    -> (fillRule : Optional CanvasFillRule)
    -> JSIO ()
  clip' a b = primJS $ CanvasDrawPath.prim__clip (cast a) (toFFI b)

  export
  clip : {auto _ : Cast t1 CanvasDrawPath} -> (obj : t1) -> JSIO ()
  clip a = primJS $ CanvasDrawPath.prim__clip (cast a) undef


  export
  clip1' :
       {auto _ : Cast t1 CanvasDrawPath}
    -> (obj : t1)
    -> (path : Path2D)
    -> (fillRule : Optional CanvasFillRule)
    -> JSIO ()
  clip1' a b c = primJS $ CanvasDrawPath.prim__clip1 (cast a) b (toFFI c)

  export
  clip1 :
       {auto _ : Cast t1 CanvasDrawPath}
    -> (obj : t1)
    -> (path : Path2D)
    -> JSIO ()
  clip1 a b = primJS $ CanvasDrawPath.prim__clip1 (cast a) b undef


  export
  fill' :
       {auto _ : Cast t1 CanvasDrawPath}
    -> (obj : t1)
    -> (fillRule : Optional CanvasFillRule)
    -> JSIO ()
  fill' a b = primJS $ CanvasDrawPath.prim__fill (cast a) (toFFI b)

  export
  fill : {auto _ : Cast t1 CanvasDrawPath} -> (obj : t1) -> JSIO ()
  fill a = primJS $ CanvasDrawPath.prim__fill (cast a) undef


  export
  fill1' :
       {auto _ : Cast t1 CanvasDrawPath}
    -> (obj : t1)
    -> (path : Path2D)
    -> (fillRule : Optional CanvasFillRule)
    -> JSIO ()
  fill1' a b c = primJS $ CanvasDrawPath.prim__fill1 (cast a) b (toFFI c)

  export
  fill1 :
       {auto _ : Cast t1 CanvasDrawPath}
    -> (obj : t1)
    -> (path : Path2D)
    -> JSIO ()
  fill1 a b = primJS $ CanvasDrawPath.prim__fill1 (cast a) b undef


  export
  isPointInPath' :
       {auto _ : Cast t1 CanvasDrawPath}
    -> (obj : t1)
    -> (x : Double)
    -> (y : Double)
    -> (fillRule : Optional CanvasFillRule)
    -> JSIO Bool
  isPointInPath' a b c d = tryJS "CanvasDrawPath.isPointInPath'" $
    CanvasDrawPath.prim__isPointInPath (cast a) b c (toFFI d)

  export
  isPointInPath :
       {auto _ : Cast t1 CanvasDrawPath}
    -> (obj : t1)
    -> (x : Double)
    -> (y : Double)
    -> JSIO Bool
  isPointInPath a b c = tryJS "CanvasDrawPath.isPointInPath" $
    CanvasDrawPath.prim__isPointInPath (cast a) b c undef


  export
  isPointInPath1' :
       {auto _ : Cast t1 CanvasDrawPath}
    -> (obj : t1)
    -> (path : Path2D)
    -> (x : Double)
    -> (y : Double)
    -> (fillRule : Optional CanvasFillRule)
    -> JSIO Bool
  isPointInPath1' a b c d e = tryJS "CanvasDrawPath.isPointInPath1'" $
    CanvasDrawPath.prim__isPointInPath1 (cast a) b c d (toFFI e)

  export
  isPointInPath1 :
       {auto _ : Cast t1 CanvasDrawPath}
    -> (obj : t1)
    -> (path : Path2D)
    -> (x : Double)
    -> (y : Double)
    -> JSIO Bool
  isPointInPath1 a b c d = tryJS "CanvasDrawPath.isPointInPath1" $
    CanvasDrawPath.prim__isPointInPath1 (cast a) b c d undef


  export
  isPointInStroke :
       {auto _ : Cast t1 CanvasDrawPath}
    -> (obj : t1)
    -> (x : Double)
    -> (y : Double)
    -> JSIO Bool
  isPointInStroke a b c = tryJS "CanvasDrawPath.isPointInStroke" $
    CanvasDrawPath.prim__isPointInStroke (cast a) b c


  export
  isPointInStroke1 :
       {auto _ : Cast t1 CanvasDrawPath}
    -> (obj : t1)
    -> (path : Path2D)
    -> (x : Double)
    -> (y : Double)
    -> JSIO Bool
  isPointInStroke1 a b c d = tryJS "CanvasDrawPath.isPointInStroke1" $
    CanvasDrawPath.prim__isPointInStroke1 (cast a) b c d


  export
  stroke : {auto _ : Cast t1 CanvasDrawPath} -> (obj : t1) -> JSIO ()
  stroke a = primJS $ CanvasDrawPath.prim__stroke (cast a)


  export
  stroke1 :
       {auto _ : Cast t1 CanvasDrawPath}
    -> (obj : t1)
    -> (path : Path2D)
    -> JSIO ()
  stroke1 a b = primJS $ CanvasDrawPath.prim__stroke1 (cast a) b



namespace CanvasFillStrokeStyles

  export
  fillStyle :
       {auto _ : Cast t CanvasFillStrokeStyles}
    -> t
    -> Attribute True Prelude.id (HSum [String, CanvasGradient, CanvasPattern])
  fillStyle v = fromPrim
                  "CanvasFillStrokeStyles.getfillStyle"
                  prim__fillStyle
                  prim__setFillStyle
                  (cast {to = CanvasFillStrokeStyles} v)


  export
  strokeStyle :
       {auto _ : Cast t CanvasFillStrokeStyles}
    -> t
    -> Attribute True Prelude.id (HSum [String, CanvasGradient, CanvasPattern])
  strokeStyle v = fromPrim
                    "CanvasFillStrokeStyles.getstrokeStyle"
                    prim__strokeStyle
                    prim__setStrokeStyle
                    (cast {to = CanvasFillStrokeStyles} v)


  export
  createLinearGradient :
       {auto _ : Cast t1 CanvasFillStrokeStyles}
    -> (obj : t1)
    -> (x0 : Double)
    -> (y0 : Double)
    -> (x1 : Double)
    -> (y1 : Double)
    -> JSIO CanvasGradient
  createLinearGradient a b c d e = primJS $
    CanvasFillStrokeStyles.prim__createLinearGradient (cast a) b c d e


  export
  createPattern :
       {auto _ : Cast t1 CanvasFillStrokeStyles}
    -> (obj : t1)
    -> (image : HSum
                  [ HTMLImageElement
                  , SVGImageElement
                  , HTMLVideoElement
                  , HTMLCanvasElement
                  , ImageBitmap
                  , OffscreenCanvas
                  ])
    -> (repetition : String)
    -> JSIO (Maybe CanvasPattern)
  createPattern a b c = tryJS "CanvasFillStrokeStyles.createPattern" $
    CanvasFillStrokeStyles.prim__createPattern (cast a) (toFFI b) c


  export
  createRadialGradient :
       {auto _ : Cast t1 CanvasFillStrokeStyles}
    -> (obj : t1)
    -> (x0 : Double)
    -> (y0 : Double)
    -> (r0 : Double)
    -> (x1 : Double)
    -> (y1 : Double)
    -> (r1 : Double)
    -> JSIO CanvasGradient
  createRadialGradient a b c d e f g = primJS $
    CanvasFillStrokeStyles.prim__createRadialGradient (cast a) b c d e f g



namespace CanvasFilters

  export
  filter :
       {auto _ : Cast t CanvasFilters}
    -> t
    -> Attribute True Prelude.id String
  filter v = fromPrim
               "CanvasFilters.getfilter"
               prim__filter
               prim__setFilter
               (cast {to = CanvasFilters} v)



namespace CanvasImageData

  export
  createImageData :
       {auto _ : Cast t1 CanvasImageData}
    -> (obj : t1)
    -> (sw : Int32)
    -> (sh : Int32)
    -> JSIO ImageData
  createImageData a b c = primJS $
    CanvasImageData.prim__createImageData (cast a) b c


  export
  createImageData1 :
       {auto _ : Cast t1 CanvasImageData}
    -> (obj : t1)
    -> (imagedata : ImageData)
    -> JSIO ImageData
  createImageData1 a b = primJS $
    CanvasImageData.prim__createImageData1 (cast a) b


  export
  getImageData :
       {auto _ : Cast t1 CanvasImageData}
    -> (obj : t1)
    -> (sx : Int32)
    -> (sy : Int32)
    -> (sw : Int32)
    -> (sh : Int32)
    -> JSIO ImageData
  getImageData a b c d e = primJS $
    CanvasImageData.prim__getImageData (cast a) b c d e


  export
  putImageData :
       {auto _ : Cast t1 CanvasImageData}
    -> (obj : t1)
    -> (imagedata : ImageData)
    -> (dx : Int32)
    -> (dy : Int32)
    -> JSIO ()
  putImageData a b c d = primJS $
    CanvasImageData.prim__putImageData (cast a) b c d


  export
  putImageData1 :
       {auto _ : Cast t1 CanvasImageData}
    -> (obj : t1)
    -> (imagedata : ImageData)
    -> (dx : Int32)
    -> (dy : Int32)
    -> (dirtyX : Int32)
    -> (dirtyY : Int32)
    -> (dirtyWidth : Int32)
    -> (dirtyHeight : Int32)
    -> JSIO ()
  putImageData1 a b c d e f g h = primJS $
    CanvasImageData.prim__putImageData1 (cast a) b c d e f g h



namespace CanvasImageSmoothing

  export
  imageSmoothingEnabled :
       {auto _ : Cast t CanvasImageSmoothing}
    -> t
    -> Attribute True Prelude.id Bool
  imageSmoothingEnabled v = fromPrim
                              "CanvasImageSmoothing.getimageSmoothingEnabled"
                              prim__imageSmoothingEnabled
                              prim__setImageSmoothingEnabled
                              (cast {to = CanvasImageSmoothing} v)


  export
  imageSmoothingQuality :
       {auto _ : Cast t CanvasImageSmoothing}
    -> t
    -> Attribute True Prelude.id ImageSmoothingQuality
  imageSmoothingQuality v = fromPrim
                              "CanvasImageSmoothing.getimageSmoothingQuality"
                              prim__imageSmoothingQuality
                              prim__setImageSmoothingQuality
                              (cast {to = CanvasImageSmoothing} v)



namespace CanvasPath

  export
  arc' :
       {auto _ : Cast t1 CanvasPath}
    -> (obj : t1)
    -> (x : Double)
    -> (y : Double)
    -> (radius : Double)
    -> (startAngle : Double)
    -> (endAngle : Double)
    -> (counterclockwise : Optional Bool)
    -> JSIO ()
  arc' a b c d e f g = primJS $
    CanvasPath.prim__arc (cast a) b c d e f (toFFI g)

  export
  arc :
       {auto _ : Cast t1 CanvasPath}
    -> (obj : t1)
    -> (x : Double)
    -> (y : Double)
    -> (radius : Double)
    -> (startAngle : Double)
    -> (endAngle : Double)
    -> JSIO ()
  arc a b c d e f = primJS $ CanvasPath.prim__arc (cast a) b c d e f undef


  export
  arcTo :
       {auto _ : Cast t1 CanvasPath}
    -> (obj : t1)
    -> (x1 : Double)
    -> (y1 : Double)
    -> (x2 : Double)
    -> (y2 : Double)
    -> (radius : Double)
    -> JSIO ()
  arcTo a b c d e f = primJS $ CanvasPath.prim__arcTo (cast a) b c d e f


  export
  bezierCurveTo :
       {auto _ : Cast t1 CanvasPath}
    -> (obj : t1)
    -> (cp1x : Double)
    -> (cp1y : Double)
    -> (cp2x : Double)
    -> (cp2y : Double)
    -> (x : Double)
    -> (y : Double)
    -> JSIO ()
  bezierCurveTo a b c d e f g = primJS $
    CanvasPath.prim__bezierCurveTo (cast a) b c d e f g


  export
  closePath : {auto _ : Cast t1 CanvasPath} -> (obj : t1) -> JSIO ()
  closePath a = primJS $ CanvasPath.prim__closePath (cast a)


  export
  ellipse' :
       {auto _ : Cast t1 CanvasPath}
    -> (obj : t1)
    -> (x : Double)
    -> (y : Double)
    -> (radiusX : Double)
    -> (radiusY : Double)
    -> (rotation : Double)
    -> (startAngle : Double)
    -> (endAngle : Double)
    -> (counterclockwise : Optional Bool)
    -> JSIO ()
  ellipse' a b c d e f g h i = primJS $
    CanvasPath.prim__ellipse (cast a) b c d e f g h (toFFI i)

  export
  ellipse :
       {auto _ : Cast t1 CanvasPath}
    -> (obj : t1)
    -> (x : Double)
    -> (y : Double)
    -> (radiusX : Double)
    -> (radiusY : Double)
    -> (rotation : Double)
    -> (startAngle : Double)
    -> (endAngle : Double)
    -> JSIO ()
  ellipse a b c d e f g h = primJS $
    CanvasPath.prim__ellipse (cast a) b c d e f g h undef


  export
  lineTo :
       {auto _ : Cast t1 CanvasPath}
    -> (obj : t1)
    -> (x : Double)
    -> (y : Double)
    -> JSIO ()
  lineTo a b c = primJS $ CanvasPath.prim__lineTo (cast a) b c


  export
  moveTo :
       {auto _ : Cast t1 CanvasPath}
    -> (obj : t1)
    -> (x : Double)
    -> (y : Double)
    -> JSIO ()
  moveTo a b c = primJS $ CanvasPath.prim__moveTo (cast a) b c


  export
  quadraticCurveTo :
       {auto _ : Cast t1 CanvasPath}
    -> (obj : t1)
    -> (cpx : Double)
    -> (cpy : Double)
    -> (x : Double)
    -> (y : Double)
    -> JSIO ()
  quadraticCurveTo a b c d e = primJS $
    CanvasPath.prim__quadraticCurveTo (cast a) b c d e


  export
  rect :
       {auto _ : Cast t1 CanvasPath}
    -> (obj : t1)
    -> (x : Double)
    -> (y : Double)
    -> (w : Double)
    -> (h : Double)
    -> JSIO ()
  rect a b c d e = primJS $ CanvasPath.prim__rect (cast a) b c d e



namespace CanvasPathDrawingStyles

  export
  lineCap :
       {auto _ : Cast t CanvasPathDrawingStyles}
    -> t
    -> Attribute True Prelude.id CanvasLineCap
  lineCap v = fromPrim
                "CanvasPathDrawingStyles.getlineCap"
                prim__lineCap
                prim__setLineCap
                (cast {to = CanvasPathDrawingStyles} v)


  export
  lineDashOffset :
       {auto _ : Cast t CanvasPathDrawingStyles}
    -> t
    -> Attribute True Prelude.id Double
  lineDashOffset v = fromPrim
                       "CanvasPathDrawingStyles.getlineDashOffset"
                       prim__lineDashOffset
                       prim__setLineDashOffset
                       (cast {to = CanvasPathDrawingStyles} v)


  export
  lineJoin :
       {auto _ : Cast t CanvasPathDrawingStyles}
    -> t
    -> Attribute True Prelude.id CanvasLineJoin
  lineJoin v = fromPrim
                 "CanvasPathDrawingStyles.getlineJoin"
                 prim__lineJoin
                 prim__setLineJoin
                 (cast {to = CanvasPathDrawingStyles} v)


  export
  lineWidth :
       {auto _ : Cast t CanvasPathDrawingStyles}
    -> t
    -> Attribute True Prelude.id Double
  lineWidth v = fromPrim
                  "CanvasPathDrawingStyles.getlineWidth"
                  prim__lineWidth
                  prim__setLineWidth
                  (cast {to = CanvasPathDrawingStyles} v)


  export
  miterLimit :
       {auto _ : Cast t CanvasPathDrawingStyles}
    -> t
    -> Attribute True Prelude.id Double
  miterLimit v = fromPrim
                   "CanvasPathDrawingStyles.getmiterLimit"
                   prim__miterLimit
                   prim__setMiterLimit
                   (cast {to = CanvasPathDrawingStyles} v)


  export
  getLineDash :
       {auto _ : Cast t1 CanvasPathDrawingStyles}
    -> (obj : t1)
    -> JSIO (Array Double)
  getLineDash a = primJS $ CanvasPathDrawingStyles.prim__getLineDash (cast a)


  export
  setLineDash :
       {auto _ : Cast t1 CanvasPathDrawingStyles}
    -> (obj : t1)
    -> (segments : Array Double)
    -> JSIO ()
  setLineDash a b = primJS $
    CanvasPathDrawingStyles.prim__setLineDash (cast a) b



namespace CanvasRect

  export
  clearRect :
       {auto _ : Cast t1 CanvasRect}
    -> (obj : t1)
    -> (x : Double)
    -> (y : Double)
    -> (w : Double)
    -> (h : Double)
    -> JSIO ()
  clearRect a b c d e = primJS $ CanvasRect.prim__clearRect (cast a) b c d e


  export
  fillRect :
       {auto _ : Cast t1 CanvasRect}
    -> (obj : t1)
    -> (x : Double)
    -> (y : Double)
    -> (w : Double)
    -> (h : Double)
    -> JSIO ()
  fillRect a b c d e = primJS $ CanvasRect.prim__fillRect (cast a) b c d e


  export
  strokeRect :
       {auto _ : Cast t1 CanvasRect}
    -> (obj : t1)
    -> (x : Double)
    -> (y : Double)
    -> (w : Double)
    -> (h : Double)
    -> JSIO ()
  strokeRect a b c d e = primJS $ CanvasRect.prim__strokeRect (cast a) b c d e



namespace CanvasShadowStyles

  export
  shadowBlur :
       {auto _ : Cast t CanvasShadowStyles}
    -> t
    -> Attribute True Prelude.id Double
  shadowBlur v = fromPrim
                   "CanvasShadowStyles.getshadowBlur"
                   prim__shadowBlur
                   prim__setShadowBlur
                   (cast {to = CanvasShadowStyles} v)


  export
  shadowColor :
       {auto _ : Cast t CanvasShadowStyles}
    -> t
    -> Attribute True Prelude.id String
  shadowColor v = fromPrim
                    "CanvasShadowStyles.getshadowColor"
                    prim__shadowColor
                    prim__setShadowColor
                    (cast {to = CanvasShadowStyles} v)


  export
  shadowOffsetX :
       {auto _ : Cast t CanvasShadowStyles}
    -> t
    -> Attribute True Prelude.id Double
  shadowOffsetX v = fromPrim
                      "CanvasShadowStyles.getshadowOffsetX"
                      prim__shadowOffsetX
                      prim__setShadowOffsetX
                      (cast {to = CanvasShadowStyles} v)


  export
  shadowOffsetY :
       {auto _ : Cast t CanvasShadowStyles}
    -> t
    -> Attribute True Prelude.id Double
  shadowOffsetY v = fromPrim
                      "CanvasShadowStyles.getshadowOffsetY"
                      prim__shadowOffsetY
                      prim__setShadowOffsetY
                      (cast {to = CanvasShadowStyles} v)



namespace CanvasState

  export
  restore : {auto _ : Cast t1 CanvasState} -> (obj : t1) -> JSIO ()
  restore a = primJS $ CanvasState.prim__restore (cast a)


  export
  save : {auto _ : Cast t1 CanvasState} -> (obj : t1) -> JSIO ()
  save a = primJS $ CanvasState.prim__save (cast a)



namespace CanvasText

  export
  fillText' :
       {auto _ : Cast t1 CanvasText}
    -> (obj : t1)
    -> (text : String)
    -> (x : Double)
    -> (y : Double)
    -> (maxWidth : Optional Double)
    -> JSIO ()
  fillText' a b c d e = primJS $
    CanvasText.prim__fillText (cast a) b c d (toFFI e)

  export
  fillText :
       {auto _ : Cast t1 CanvasText}
    -> (obj : t1)
    -> (text : String)
    -> (x : Double)
    -> (y : Double)
    -> JSIO ()
  fillText a b c d = primJS $ CanvasText.prim__fillText (cast a) b c d undef


  export
  measureText :
       {auto _ : Cast t1 CanvasText}
    -> (obj : t1)
    -> (text : String)
    -> JSIO TextMetrics
  measureText a b = primJS $ CanvasText.prim__measureText (cast a) b


  export
  strokeText' :
       {auto _ : Cast t1 CanvasText}
    -> (obj : t1)
    -> (text : String)
    -> (x : Double)
    -> (y : Double)
    -> (maxWidth : Optional Double)
    -> JSIO ()
  strokeText' a b c d e = primJS $
    CanvasText.prim__strokeText (cast a) b c d (toFFI e)

  export
  strokeText :
       {auto _ : Cast t1 CanvasText}
    -> (obj : t1)
    -> (text : String)
    -> (x : Double)
    -> (y : Double)
    -> JSIO ()
  strokeText a b c d = primJS $ CanvasText.prim__strokeText (cast a) b c d undef



namespace CanvasTextDrawingStyles

  export
  direction :
       {auto _ : Cast t CanvasTextDrawingStyles}
    -> t
    -> Attribute True Prelude.id CanvasDirection
  direction v = fromPrim
                  "CanvasTextDrawingStyles.getdirection"
                  prim__direction
                  prim__setDirection
                  (cast {to = CanvasTextDrawingStyles} v)


  export
  font :
       {auto _ : Cast t CanvasTextDrawingStyles}
    -> t
    -> Attribute True Prelude.id String
  font v = fromPrim
             "CanvasTextDrawingStyles.getfont"
             prim__font
             prim__setFont
             (cast {to = CanvasTextDrawingStyles} v)


  export
  textAlign :
       {auto _ : Cast t CanvasTextDrawingStyles}
    -> t
    -> Attribute True Prelude.id CanvasTextAlign
  textAlign v = fromPrim
                  "CanvasTextDrawingStyles.gettextAlign"
                  prim__textAlign
                  prim__setTextAlign
                  (cast {to = CanvasTextDrawingStyles} v)


  export
  textBaseline :
       {auto _ : Cast t CanvasTextDrawingStyles}
    -> t
    -> Attribute True Prelude.id CanvasTextBaseline
  textBaseline v = fromPrim
                     "CanvasTextDrawingStyles.gettextBaseline"
                     prim__textBaseline
                     prim__setTextBaseline
                     (cast {to = CanvasTextDrawingStyles} v)



namespace CanvasTransform

  export
  getTransform :
       {auto _ : Cast t1 CanvasTransform}
    -> (obj : t1)
    -> JSIO DOMMatrix
  getTransform a = primJS $ CanvasTransform.prim__getTransform (cast a)


  export
  resetTransform : {auto _ : Cast t1 CanvasTransform} -> (obj : t1) -> JSIO ()
  resetTransform a = primJS $ CanvasTransform.prim__resetTransform (cast a)


  export
  rotate :
       {auto _ : Cast t1 CanvasTransform}
    -> (obj : t1)
    -> (angle : Double)
    -> JSIO ()
  rotate a b = primJS $ CanvasTransform.prim__rotate (cast a) b


  export
  scale :
       {auto _ : Cast t1 CanvasTransform}
    -> (obj : t1)
    -> (x : Double)
    -> (y : Double)
    -> JSIO ()
  scale a b c = primJS $ CanvasTransform.prim__scale (cast a) b c


  export
  setTransform :
       {auto _ : Cast t1 CanvasTransform}
    -> (obj : t1)
    -> (a : Double)
    -> (b : Double)
    -> (c : Double)
    -> (d : Double)
    -> (e : Double)
    -> (f : Double)
    -> JSIO ()
  setTransform a b c d e f g = primJS $
    CanvasTransform.prim__setTransform (cast a) b c d e f g


  export
  setTransform1' :
       {auto _ : Cast t1 CanvasTransform}
    -> {auto _ : Cast t2 DOMMatrix2DInit}
    -> (obj : t1)
    -> (transform : Optional t2)
    -> JSIO ()
  setTransform1' a b = primJS $
    CanvasTransform.prim__setTransform1 (cast a) (optUp b)

  export
  setTransform1 : {auto _ : Cast t1 CanvasTransform} -> (obj : t1) -> JSIO ()
  setTransform1 a = primJS $ CanvasTransform.prim__setTransform1 (cast a) undef


  export
  transform :
       {auto _ : Cast t1 CanvasTransform}
    -> (obj : t1)
    -> (a : Double)
    -> (b : Double)
    -> (c : Double)
    -> (d : Double)
    -> (e : Double)
    -> (f : Double)
    -> JSIO ()
  transform a b c d e f g = primJS $
    CanvasTransform.prim__transform (cast a) b c d e f g


  export
  translate :
       {auto _ : Cast t1 CanvasTransform}
    -> (obj : t1)
    -> (x : Double)
    -> (y : Double)
    -> JSIO ()
  translate a b c = primJS $ CanvasTransform.prim__translate (cast a) b c



namespace CanvasUserInterface

  export
  drawFocusIfNeeded :
       {auto _ : Cast t1 CanvasUserInterface}
    -> {auto _ : Cast t2 Element}
    -> (obj : t1)
    -> (element : t2)
    -> JSIO ()
  drawFocusIfNeeded a b = primJS $
    CanvasUserInterface.prim__drawFocusIfNeeded (cast a) (cast b)


  export
  drawFocusIfNeeded1 :
       {auto _ : Cast t1 CanvasUserInterface}
    -> {auto _ : Cast t3 Element}
    -> (obj : t1)
    -> (path : Path2D)
    -> (element : t3)
    -> JSIO ()
  drawFocusIfNeeded1 a b c = primJS $
    CanvasUserInterface.prim__drawFocusIfNeeded1 (cast a) b (cast c)


  export
  scrollPathIntoView :
       {auto _ : Cast t1 CanvasUserInterface}
    -> (obj : t1)
    -> JSIO ()
  scrollPathIntoView a = primJS $
    CanvasUserInterface.prim__scrollPathIntoView (cast a)


  export
  scrollPathIntoView1 :
       {auto _ : Cast t1 CanvasUserInterface}
    -> (obj : t1)
    -> (path : Path2D)
    -> JSIO ()
  scrollPathIntoView1 a b = primJS $
    CanvasUserInterface.prim__scrollPathIntoView1 (cast a) b



namespace DocumentAndElementEventHandlers

  export
  oncopy :
       {auto _ : Cast t DocumentAndElementEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  oncopy v = fromNullablePrim
               "DocumentAndElementEventHandlers.getoncopy"
               prim__oncopy
               prim__setOncopy
               (cast {to = DocumentAndElementEventHandlers} v)


  export
  oncut :
       {auto _ : Cast t DocumentAndElementEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  oncut v = fromNullablePrim
              "DocumentAndElementEventHandlers.getoncut"
              prim__oncut
              prim__setOncut
              (cast {to = DocumentAndElementEventHandlers} v)


  export
  onpaste :
       {auto _ : Cast t DocumentAndElementEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onpaste v = fromNullablePrim
                "DocumentAndElementEventHandlers.getonpaste"
                prim__onpaste
                prim__setOnpaste
                (cast {to = DocumentAndElementEventHandlers} v)



namespace ElementContentEditable

  export
  contentEditable :
       {auto _ : Cast t ElementContentEditable}
    -> t
    -> Attribute True Prelude.id String
  contentEditable v = fromPrim
                        "ElementContentEditable.getcontentEditable"
                        prim__contentEditable
                        prim__setContentEditable
                        (cast {to = ElementContentEditable} v)


  export
  enterKeyHint :
       {auto _ : Cast t ElementContentEditable}
    -> t
    -> Attribute True Prelude.id String
  enterKeyHint v = fromPrim
                     "ElementContentEditable.getenterKeyHint"
                     prim__enterKeyHint
                     prim__setEnterKeyHint
                     (cast {to = ElementContentEditable} v)


  export
  inputMode :
       {auto _ : Cast t ElementContentEditable}
    -> t
    -> Attribute True Prelude.id String
  inputMode v = fromPrim
                  "ElementContentEditable.getinputMode"
                  prim__inputMode
                  prim__setInputMode
                  (cast {to = ElementContentEditable} v)


  export
  isContentEditable :
       {auto _ : Cast t1 ElementContentEditable}
    -> (obj : t1)
    -> JSIO Bool
  isContentEditable a = tryJS "ElementContentEditable.isContentEditable" $
    ElementContentEditable.prim__isContentEditable (cast a)



namespace GlobalEventHandlers

  export
  onabort :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe UIEventHandler
  onabort v = fromNullablePrim
                "GlobalEventHandlers.getonabort"
                prim__onabort
                prim__setOnabort
                (cast {to = GlobalEventHandlers} v)


  export
  onauxclick :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe MouseEventHandler
  onauxclick v = fromNullablePrim
                   "GlobalEventHandlers.getonauxclick"
                   prim__onauxclick
                   prim__setOnauxclick
                   (cast {to = GlobalEventHandlers} v)


  export
  onblur :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe FocusEventHandler
  onblur v = fromNullablePrim
               "GlobalEventHandlers.getonblur"
               prim__onblur
               prim__setOnblur
               (cast {to = GlobalEventHandlers} v)


  export
  oncancel :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  oncancel v = fromNullablePrim
                 "GlobalEventHandlers.getoncancel"
                 prim__oncancel
                 prim__setOncancel
                 (cast {to = GlobalEventHandlers} v)


  export
  oncanplay :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  oncanplay v = fromNullablePrim
                  "GlobalEventHandlers.getoncanplay"
                  prim__oncanplay
                  prim__setOncanplay
                  (cast {to = GlobalEventHandlers} v)


  export
  oncanplaythrough :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  oncanplaythrough v = fromNullablePrim
                         "GlobalEventHandlers.getoncanplaythrough"
                         prim__oncanplaythrough
                         prim__setOncanplaythrough
                         (cast {to = GlobalEventHandlers} v)


  export
  onchange :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onchange v = fromNullablePrim
                 "GlobalEventHandlers.getonchange"
                 prim__onchange
                 prim__setOnchange
                 (cast {to = GlobalEventHandlers} v)


  export
  onclick :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe MouseEventHandler
  onclick v = fromNullablePrim
                "GlobalEventHandlers.getonclick"
                prim__onclick
                prim__setOnclick
                (cast {to = GlobalEventHandlers} v)


  export
  onclose :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onclose v = fromNullablePrim
                "GlobalEventHandlers.getonclose"
                prim__onclose
                prim__setOnclose
                (cast {to = GlobalEventHandlers} v)


  export
  oncontextmenu :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  oncontextmenu v = fromNullablePrim
                      "GlobalEventHandlers.getoncontextmenu"
                      prim__oncontextmenu
                      prim__setOncontextmenu
                      (cast {to = GlobalEventHandlers} v)


  export
  oncuechange :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  oncuechange v = fromNullablePrim
                    "GlobalEventHandlers.getoncuechange"
                    prim__oncuechange
                    prim__setOncuechange
                    (cast {to = GlobalEventHandlers} v)


  export
  ondblclick :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe MouseEventHandler
  ondblclick v = fromNullablePrim
                   "GlobalEventHandlers.getondblclick"
                   prim__ondblclick
                   prim__setOndblclick
                   (cast {to = GlobalEventHandlers} v)


  export
  ondrag :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  ondrag v = fromNullablePrim
               "GlobalEventHandlers.getondrag"
               prim__ondrag
               prim__setOndrag
               (cast {to = GlobalEventHandlers} v)


  export
  ondragend :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  ondragend v = fromNullablePrim
                  "GlobalEventHandlers.getondragend"
                  prim__ondragend
                  prim__setOndragend
                  (cast {to = GlobalEventHandlers} v)


  export
  ondragenter :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  ondragenter v = fromNullablePrim
                    "GlobalEventHandlers.getondragenter"
                    prim__ondragenter
                    prim__setOndragenter
                    (cast {to = GlobalEventHandlers} v)


  export
  ondragleave :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  ondragleave v = fromNullablePrim
                    "GlobalEventHandlers.getondragleave"
                    prim__ondragleave
                    prim__setOndragleave
                    (cast {to = GlobalEventHandlers} v)


  export
  ondragover :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  ondragover v = fromNullablePrim
                   "GlobalEventHandlers.getondragover"
                   prim__ondragover
                   prim__setOndragover
                   (cast {to = GlobalEventHandlers} v)


  export
  ondragstart :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  ondragstart v = fromNullablePrim
                    "GlobalEventHandlers.getondragstart"
                    prim__ondragstart
                    prim__setOndragstart
                    (cast {to = GlobalEventHandlers} v)


  export
  ondrop :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  ondrop v = fromNullablePrim
               "GlobalEventHandlers.getondrop"
               prim__ondrop
               prim__setOndrop
               (cast {to = GlobalEventHandlers} v)


  export
  ondurationchange :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  ondurationchange v = fromNullablePrim
                         "GlobalEventHandlers.getondurationchange"
                         prim__ondurationchange
                         prim__setOndurationchange
                         (cast {to = GlobalEventHandlers} v)


  export
  onemptied :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onemptied v = fromNullablePrim
                  "GlobalEventHandlers.getonemptied"
                  prim__onemptied
                  prim__setOnemptied
                  (cast {to = GlobalEventHandlers} v)


  export
  onended :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onended v = fromNullablePrim
                "GlobalEventHandlers.getonended"
                prim__onended
                prim__setOnended
                (cast {to = GlobalEventHandlers} v)


  export
  onerror :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe OnErrorEventHandlerNonNull
  onerror v = fromNullablePrim
                "GlobalEventHandlers.getonerror"
                prim__onerror
                prim__setOnerror
                (cast {to = GlobalEventHandlers} v)


  export
  onfocus :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe FocusEventHandler
  onfocus v = fromNullablePrim
                "GlobalEventHandlers.getonfocus"
                prim__onfocus
                prim__setOnfocus
                (cast {to = GlobalEventHandlers} v)


  export
  onformdata :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onformdata v = fromNullablePrim
                   "GlobalEventHandlers.getonformdata"
                   prim__onformdata
                   prim__setOnformdata
                   (cast {to = GlobalEventHandlers} v)


  export
  oninput :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe InputEventHandler
  oninput v = fromNullablePrim
                "GlobalEventHandlers.getoninput"
                prim__oninput
                prim__setOninput
                (cast {to = GlobalEventHandlers} v)


  export
  oninvalid :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  oninvalid v = fromNullablePrim
                  "GlobalEventHandlers.getoninvalid"
                  prim__oninvalid
                  prim__setOninvalid
                  (cast {to = GlobalEventHandlers} v)


  export
  onkeydown :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe KeyboardEventHandler
  onkeydown v = fromNullablePrim
                  "GlobalEventHandlers.getonkeydown"
                  prim__onkeydown
                  prim__setOnkeydown
                  (cast {to = GlobalEventHandlers} v)


  export
  onkeypress :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onkeypress v = fromNullablePrim
                   "GlobalEventHandlers.getonkeypress"
                   prim__onkeypress
                   prim__setOnkeypress
                   (cast {to = GlobalEventHandlers} v)


  export
  onkeyup :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe KeyboardEventHandler
  onkeyup v = fromNullablePrim
                "GlobalEventHandlers.getonkeyup"
                prim__onkeyup
                prim__setOnkeyup
                (cast {to = GlobalEventHandlers} v)


  export
  onload :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe UIEventHandler
  onload v = fromNullablePrim
               "GlobalEventHandlers.getonload"
               prim__onload
               prim__setOnload
               (cast {to = GlobalEventHandlers} v)


  export
  onloadeddata :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onloadeddata v = fromNullablePrim
                     "GlobalEventHandlers.getonloadeddata"
                     prim__onloadeddata
                     prim__setOnloadeddata
                     (cast {to = GlobalEventHandlers} v)


  export
  onloadedmetadata :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onloadedmetadata v = fromNullablePrim
                         "GlobalEventHandlers.getonloadedmetadata"
                         prim__onloadedmetadata
                         prim__setOnloadedmetadata
                         (cast {to = GlobalEventHandlers} v)


  export
  onloadstart :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onloadstart v = fromNullablePrim
                    "GlobalEventHandlers.getonloadstart"
                    prim__onloadstart
                    prim__setOnloadstart
                    (cast {to = GlobalEventHandlers} v)


  export
  onmousedown :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe MouseEventHandler
  onmousedown v = fromNullablePrim
                    "GlobalEventHandlers.getonmousedown"
                    prim__onmousedown
                    prim__setOnmousedown
                    (cast {to = GlobalEventHandlers} v)


  export
  onmouseenter :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe MouseEventHandler
  onmouseenter v = fromNullablePrim
                     "GlobalEventHandlers.getonmouseenter"
                     prim__onmouseenter
                     prim__setOnmouseenter
                     (cast {to = GlobalEventHandlers} v)


  export
  onmouseleave :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe MouseEventHandler
  onmouseleave v = fromNullablePrim
                     "GlobalEventHandlers.getonmouseleave"
                     prim__onmouseleave
                     prim__setOnmouseleave
                     (cast {to = GlobalEventHandlers} v)


  export
  onmousemove :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe MouseEventHandler
  onmousemove v = fromNullablePrim
                    "GlobalEventHandlers.getonmousemove"
                    prim__onmousemove
                    prim__setOnmousemove
                    (cast {to = GlobalEventHandlers} v)


  export
  onmouseout :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe MouseEventHandler
  onmouseout v = fromNullablePrim
                   "GlobalEventHandlers.getonmouseout"
                   prim__onmouseout
                   prim__setOnmouseout
                   (cast {to = GlobalEventHandlers} v)


  export
  onmouseover :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe MouseEventHandler
  onmouseover v = fromNullablePrim
                    "GlobalEventHandlers.getonmouseover"
                    prim__onmouseover
                    prim__setOnmouseover
                    (cast {to = GlobalEventHandlers} v)


  export
  onmouseup :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe MouseEventHandler
  onmouseup v = fromNullablePrim
                  "GlobalEventHandlers.getonmouseup"
                  prim__onmouseup
                  prim__setOnmouseup
                  (cast {to = GlobalEventHandlers} v)


  export
  onpause :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onpause v = fromNullablePrim
                "GlobalEventHandlers.getonpause"
                prim__onpause
                prim__setOnpause
                (cast {to = GlobalEventHandlers} v)


  export
  onplay :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onplay v = fromNullablePrim
               "GlobalEventHandlers.getonplay"
               prim__onplay
               prim__setOnplay
               (cast {to = GlobalEventHandlers} v)


  export
  onplaying :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onplaying v = fromNullablePrim
                  "GlobalEventHandlers.getonplaying"
                  prim__onplaying
                  prim__setOnplaying
                  (cast {to = GlobalEventHandlers} v)


  export
  onprogress :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onprogress v = fromNullablePrim
                   "GlobalEventHandlers.getonprogress"
                   prim__onprogress
                   prim__setOnprogress
                   (cast {to = GlobalEventHandlers} v)


  export
  onratechange :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onratechange v = fromNullablePrim
                     "GlobalEventHandlers.getonratechange"
                     prim__onratechange
                     prim__setOnratechange
                     (cast {to = GlobalEventHandlers} v)


  export
  onreset :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onreset v = fromNullablePrim
                "GlobalEventHandlers.getonreset"
                prim__onreset
                prim__setOnreset
                (cast {to = GlobalEventHandlers} v)


  export
  onresize :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onresize v = fromNullablePrim
                 "GlobalEventHandlers.getonresize"
                 prim__onresize
                 prim__setOnresize
                 (cast {to = GlobalEventHandlers} v)


  export
  onscroll :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onscroll v = fromNullablePrim
                 "GlobalEventHandlers.getonscroll"
                 prim__onscroll
                 prim__setOnscroll
                 (cast {to = GlobalEventHandlers} v)


  export
  onsecuritypolicyviolation :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onsecuritypolicyviolation v = fromNullablePrim
                                  "GlobalEventHandlers.getonsecuritypolicyviolation"
                                  prim__onsecuritypolicyviolation
                                  prim__setOnsecuritypolicyviolation
                                  (cast {to = GlobalEventHandlers} v)


  export
  onseeked :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onseeked v = fromNullablePrim
                 "GlobalEventHandlers.getonseeked"
                 prim__onseeked
                 prim__setOnseeked
                 (cast {to = GlobalEventHandlers} v)


  export
  onseeking :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onseeking v = fromNullablePrim
                  "GlobalEventHandlers.getonseeking"
                  prim__onseeking
                  prim__setOnseeking
                  (cast {to = GlobalEventHandlers} v)


  export
  onselect :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe UIEventHandler
  onselect v = fromNullablePrim
                 "GlobalEventHandlers.getonselect"
                 prim__onselect
                 prim__setOnselect
                 (cast {to = GlobalEventHandlers} v)


  export
  onslotchange :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onslotchange v = fromNullablePrim
                     "GlobalEventHandlers.getonslotchange"
                     prim__onslotchange
                     prim__setOnslotchange
                     (cast {to = GlobalEventHandlers} v)


  export
  onstalled :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onstalled v = fromNullablePrim
                  "GlobalEventHandlers.getonstalled"
                  prim__onstalled
                  prim__setOnstalled
                  (cast {to = GlobalEventHandlers} v)


  export
  onsubmit :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onsubmit v = fromNullablePrim
                 "GlobalEventHandlers.getonsubmit"
                 prim__onsubmit
                 prim__setOnsubmit
                 (cast {to = GlobalEventHandlers} v)


  export
  onsuspend :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onsuspend v = fromNullablePrim
                  "GlobalEventHandlers.getonsuspend"
                  prim__onsuspend
                  prim__setOnsuspend
                  (cast {to = GlobalEventHandlers} v)


  export
  ontimeupdate :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  ontimeupdate v = fromNullablePrim
                     "GlobalEventHandlers.getontimeupdate"
                     prim__ontimeupdate
                     prim__setOntimeupdate
                     (cast {to = GlobalEventHandlers} v)


  export
  ontoggle :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  ontoggle v = fromNullablePrim
                 "GlobalEventHandlers.getontoggle"
                 prim__ontoggle
                 prim__setOntoggle
                 (cast {to = GlobalEventHandlers} v)


  export
  onvolumechange :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onvolumechange v = fromNullablePrim
                       "GlobalEventHandlers.getonvolumechange"
                       prim__onvolumechange
                       prim__setOnvolumechange
                       (cast {to = GlobalEventHandlers} v)


  export
  onwaiting :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onwaiting v = fromNullablePrim
                  "GlobalEventHandlers.getonwaiting"
                  prim__onwaiting
                  prim__setOnwaiting
                  (cast {to = GlobalEventHandlers} v)


  export
  onwebkitanimationend :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onwebkitanimationend v = fromNullablePrim
                             "GlobalEventHandlers.getonwebkitanimationend"
                             prim__onwebkitanimationend
                             prim__setOnwebkitanimationend
                             (cast {to = GlobalEventHandlers} v)


  export
  onwebkitanimationiteration :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onwebkitanimationiteration v = fromNullablePrim
                                   "GlobalEventHandlers.getonwebkitanimationiteration"
                                   prim__onwebkitanimationiteration
                                   prim__setOnwebkitanimationiteration
                                   (cast {to = GlobalEventHandlers} v)


  export
  onwebkitanimationstart :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onwebkitanimationstart v = fromNullablePrim
                               "GlobalEventHandlers.getonwebkitanimationstart"
                               prim__onwebkitanimationstart
                               prim__setOnwebkitanimationstart
                               (cast {to = GlobalEventHandlers} v)


  export
  onwebkittransitionend :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onwebkittransitionend v = fromNullablePrim
                              "GlobalEventHandlers.getonwebkittransitionend"
                              prim__onwebkittransitionend
                              prim__setOnwebkittransitionend
                              (cast {to = GlobalEventHandlers} v)


  export
  onwheel :
       {auto _ : Cast t GlobalEventHandlers}
    -> t
    -> Attribute False Maybe WheelEventHandler
  onwheel v = fromNullablePrim
                "GlobalEventHandlers.getonwheel"
                prim__onwheel
                prim__setOnwheel
                (cast {to = GlobalEventHandlers} v)



namespace HTMLHyperlinkElementUtils

  export
  hash :
       {auto _ : Cast t HTMLHyperlinkElementUtils}
    -> t
    -> Attribute True Prelude.id String
  hash v = fromPrim
             "HTMLHyperlinkElementUtils.gethash"
             prim__hash
             prim__setHash
             (cast {to = HTMLHyperlinkElementUtils} v)


  export
  host :
       {auto _ : Cast t HTMLHyperlinkElementUtils}
    -> t
    -> Attribute True Prelude.id String
  host v = fromPrim
             "HTMLHyperlinkElementUtils.gethost"
             prim__host
             prim__setHost
             (cast {to = HTMLHyperlinkElementUtils} v)


  export
  hostname :
       {auto _ : Cast t HTMLHyperlinkElementUtils}
    -> t
    -> Attribute True Prelude.id String
  hostname v = fromPrim
                 "HTMLHyperlinkElementUtils.gethostname"
                 prim__hostname
                 prim__setHostname
                 (cast {to = HTMLHyperlinkElementUtils} v)


  export
  href :
       {auto _ : Cast t HTMLHyperlinkElementUtils}
    -> t
    -> Attribute True Prelude.id String
  href v = fromPrim
             "HTMLHyperlinkElementUtils.gethref"
             prim__href
             prim__setHref
             (cast {to = HTMLHyperlinkElementUtils} v)


  export
  origin :
       {auto _ : Cast t1 HTMLHyperlinkElementUtils}
    -> (obj : t1)
    -> JSIO String
  origin a = primJS $ HTMLHyperlinkElementUtils.prim__origin (cast a)


  export
  password :
       {auto _ : Cast t HTMLHyperlinkElementUtils}
    -> t
    -> Attribute True Prelude.id String
  password v = fromPrim
                 "HTMLHyperlinkElementUtils.getpassword"
                 prim__password
                 prim__setPassword
                 (cast {to = HTMLHyperlinkElementUtils} v)


  export
  pathname :
       {auto _ : Cast t HTMLHyperlinkElementUtils}
    -> t
    -> Attribute True Prelude.id String
  pathname v = fromPrim
                 "HTMLHyperlinkElementUtils.getpathname"
                 prim__pathname
                 prim__setPathname
                 (cast {to = HTMLHyperlinkElementUtils} v)


  export
  port :
       {auto _ : Cast t HTMLHyperlinkElementUtils}
    -> t
    -> Attribute True Prelude.id String
  port v = fromPrim
             "HTMLHyperlinkElementUtils.getport"
             prim__port
             prim__setPort
             (cast {to = HTMLHyperlinkElementUtils} v)


  export
  protocol :
       {auto _ : Cast t HTMLHyperlinkElementUtils}
    -> t
    -> Attribute True Prelude.id String
  protocol v = fromPrim
                 "HTMLHyperlinkElementUtils.getprotocol"
                 prim__protocol
                 prim__setProtocol
                 (cast {to = HTMLHyperlinkElementUtils} v)


  export
  search :
       {auto _ : Cast t HTMLHyperlinkElementUtils}
    -> t
    -> Attribute True Prelude.id String
  search v = fromPrim
               "HTMLHyperlinkElementUtils.getsearch"
               prim__search
               prim__setSearch
               (cast {to = HTMLHyperlinkElementUtils} v)


  export
  username :
       {auto _ : Cast t HTMLHyperlinkElementUtils}
    -> t
    -> Attribute True Prelude.id String
  username v = fromPrim
                 "HTMLHyperlinkElementUtils.getusername"
                 prim__username
                 prim__setUsername
                 (cast {to = HTMLHyperlinkElementUtils} v)



namespace HTMLOrSVGElement

  export
  autofocus :
       {auto _ : Cast t HTMLOrSVGElement}
    -> t
    -> Attribute True Prelude.id Bool
  autofocus v = fromPrim
                  "HTMLOrSVGElement.getautofocus"
                  prim__autofocus
                  prim__setAutofocus
                  (cast {to = HTMLOrSVGElement} v)


  export
  dataset :
       {auto _ : Cast t1 HTMLOrSVGElement}
    -> (obj : t1)
    -> JSIO DOMStringMap
  dataset a = primJS $ HTMLOrSVGElement.prim__dataset (cast a)


  export
  nonce :
       {auto _ : Cast t HTMLOrSVGElement}
    -> t
    -> Attribute True Prelude.id String
  nonce v = fromPrim
              "HTMLOrSVGElement.getnonce"
              prim__nonce
              prim__setNonce
              (cast {to = HTMLOrSVGElement} v)


  export
  tabIndex :
       {auto _ : Cast t HTMLOrSVGElement}
    -> t
    -> Attribute True Prelude.id Int32
  tabIndex v = fromPrim
                 "HTMLOrSVGElement.gettabIndex"
                 prim__tabIndex
                 prim__setTabIndex
                 (cast {to = HTMLOrSVGElement} v)


  export
  blur : {auto _ : Cast t1 HTMLOrSVGElement} -> (obj : t1) -> JSIO ()
  blur a = primJS $ HTMLOrSVGElement.prim__blur (cast a)


  export
  focus' :
       {auto _ : Cast t1 HTMLOrSVGElement}
    -> {auto _ : Cast t2 FocusOptions}
    -> (obj : t1)
    -> (options : Optional t2)
    -> JSIO ()
  focus' a b = primJS $ HTMLOrSVGElement.prim__focus (cast a) (optUp b)

  export
  focus : {auto _ : Cast t1 HTMLOrSVGElement} -> (obj : t1) -> JSIO ()
  focus a = primJS $ HTMLOrSVGElement.prim__focus (cast a) undef



namespace NavigatorConcurrentHardware

  export
  hardwareConcurrency :
       {auto _ : Cast t1 NavigatorConcurrentHardware}
    -> (obj : t1)
    -> JSIO JSBits64
  hardwareConcurrency a = primJS $
    NavigatorConcurrentHardware.prim__hardwareConcurrency (cast a)



namespace NavigatorContentUtils

  export
  registerProtocolHandler :
       {auto _ : Cast t1 NavigatorContentUtils}
    -> (obj : t1)
    -> (scheme : String)
    -> (url : String)
    -> JSIO ()
  registerProtocolHandler a b c = primJS $
    NavigatorContentUtils.prim__registerProtocolHandler (cast a) b c


  export
  unregisterProtocolHandler :
       {auto _ : Cast t1 NavigatorContentUtils}
    -> (obj : t1)
    -> (scheme : String)
    -> (url : String)
    -> JSIO ()
  unregisterProtocolHandler a b c = primJS $
    NavigatorContentUtils.prim__unregisterProtocolHandler (cast a) b c



namespace NavigatorCookies

  export
  cookieEnabled : {auto _ : Cast t1 NavigatorCookies} -> (obj : t1) -> JSIO Bool
  cookieEnabled a = tryJS "NavigatorCookies.cookieEnabled" $
    NavigatorCookies.prim__cookieEnabled (cast a)



namespace NavigatorID

  export
  appCodeName : {auto _ : Cast t1 NavigatorID} -> (obj : t1) -> JSIO String
  appCodeName a = primJS $ NavigatorID.prim__appCodeName (cast a)


  export
  appName : {auto _ : Cast t1 NavigatorID} -> (obj : t1) -> JSIO String
  appName a = primJS $ NavigatorID.prim__appName (cast a)


  export
  appVersion : {auto _ : Cast t1 NavigatorID} -> (obj : t1) -> JSIO String
  appVersion a = primJS $ NavigatorID.prim__appVersion (cast a)


  export
  platform : {auto _ : Cast t1 NavigatorID} -> (obj : t1) -> JSIO String
  platform a = primJS $ NavigatorID.prim__platform (cast a)


  export
  product : {auto _ : Cast t1 NavigatorID} -> (obj : t1) -> JSIO String
  product a = primJS $ NavigatorID.prim__product (cast a)


  export
  productSub : {auto _ : Cast t1 NavigatorID} -> (obj : t1) -> JSIO String
  productSub a = primJS $ NavigatorID.prim__productSub (cast a)


  export
  userAgent : {auto _ : Cast t1 NavigatorID} -> (obj : t1) -> JSIO String
  userAgent a = primJS $ NavigatorID.prim__userAgent (cast a)


  export
  vendor : {auto _ : Cast t1 NavigatorID} -> (obj : t1) -> JSIO String
  vendor a = primJS $ NavigatorID.prim__vendor (cast a)


  export
  vendorSub : {auto _ : Cast t1 NavigatorID} -> (obj : t1) -> JSIO String
  vendorSub a = primJS $ NavigatorID.prim__vendorSub (cast a)



namespace NavigatorLanguage

  export
  language : {auto _ : Cast t1 NavigatorLanguage} -> (obj : t1) -> JSIO String
  language a = primJS $ NavigatorLanguage.prim__language (cast a)


  export
  languages :
       {auto _ : Cast t1 NavigatorLanguage}
    -> (obj : t1)
    -> JSIO (Array String)
  languages a = primJS $ NavigatorLanguage.prim__languages (cast a)



namespace NavigatorOnLine

  export
  onLine : {auto _ : Cast t1 NavigatorOnLine} -> (obj : t1) -> JSIO Bool
  onLine a = tryJS "NavigatorOnLine.onLine" $
    NavigatorOnLine.prim__onLine (cast a)



namespace NavigatorPlugins

  export
  mimeTypes :
       {auto _ : Cast t1 NavigatorPlugins}
    -> (obj : t1)
    -> JSIO MimeTypeArray
  mimeTypes a = primJS $ NavigatorPlugins.prim__mimeTypes (cast a)


  export
  plugins :
       {auto _ : Cast t1 NavigatorPlugins}
    -> (obj : t1)
    -> JSIO PluginArray
  plugins a = primJS $ NavigatorPlugins.prim__plugins (cast a)


  export
  javaEnabled : {auto _ : Cast t1 NavigatorPlugins} -> (obj : t1) -> JSIO Bool
  javaEnabled a = tryJS "NavigatorPlugins.javaEnabled" $
    NavigatorPlugins.prim__javaEnabled (cast a)



namespace WindowEventHandlers

  export
  onafterprint :
       {auto _ : Cast t WindowEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onafterprint v = fromNullablePrim
                     "WindowEventHandlers.getonafterprint"
                     prim__onafterprint
                     prim__setOnafterprint
                     (cast {to = WindowEventHandlers} v)


  export
  onbeforeprint :
       {auto _ : Cast t WindowEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onbeforeprint v = fromNullablePrim
                      "WindowEventHandlers.getonbeforeprint"
                      prim__onbeforeprint
                      prim__setOnbeforeprint
                      (cast {to = WindowEventHandlers} v)


  export
  onbeforeunload :
       {auto _ : Cast t WindowEventHandlers}
    -> t
    -> Attribute False Maybe OnBeforeUnloadEventHandlerNonNull
  onbeforeunload v = fromNullablePrim
                       "WindowEventHandlers.getonbeforeunload"
                       prim__onbeforeunload
                       prim__setOnbeforeunload
                       (cast {to = WindowEventHandlers} v)


  export
  onhashchange :
       {auto _ : Cast t WindowEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onhashchange v = fromNullablePrim
                     "WindowEventHandlers.getonhashchange"
                     prim__onhashchange
                     prim__setOnhashchange
                     (cast {to = WindowEventHandlers} v)


  export
  onlanguagechange :
       {auto _ : Cast t WindowEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onlanguagechange v = fromNullablePrim
                         "WindowEventHandlers.getonlanguagechange"
                         prim__onlanguagechange
                         prim__setOnlanguagechange
                         (cast {to = WindowEventHandlers} v)


  export
  onmessage :
       {auto _ : Cast t WindowEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onmessage v = fromNullablePrim
                  "WindowEventHandlers.getonmessage"
                  prim__onmessage
                  prim__setOnmessage
                  (cast {to = WindowEventHandlers} v)


  export
  onmessageerror :
       {auto _ : Cast t WindowEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onmessageerror v = fromNullablePrim
                       "WindowEventHandlers.getonmessageerror"
                       prim__onmessageerror
                       prim__setOnmessageerror
                       (cast {to = WindowEventHandlers} v)


  export
  onoffline :
       {auto _ : Cast t WindowEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onoffline v = fromNullablePrim
                  "WindowEventHandlers.getonoffline"
                  prim__onoffline
                  prim__setOnoffline
                  (cast {to = WindowEventHandlers} v)


  export
  ononline :
       {auto _ : Cast t WindowEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  ononline v = fromNullablePrim
                 "WindowEventHandlers.getononline"
                 prim__ononline
                 prim__setOnonline
                 (cast {to = WindowEventHandlers} v)


  export
  onpagehide :
       {auto _ : Cast t WindowEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onpagehide v = fromNullablePrim
                   "WindowEventHandlers.getonpagehide"
                   prim__onpagehide
                   prim__setOnpagehide
                   (cast {to = WindowEventHandlers} v)


  export
  onpageshow :
       {auto _ : Cast t WindowEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onpageshow v = fromNullablePrim
                   "WindowEventHandlers.getonpageshow"
                   prim__onpageshow
                   prim__setOnpageshow
                   (cast {to = WindowEventHandlers} v)


  export
  onpopstate :
       {auto _ : Cast t WindowEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onpopstate v = fromNullablePrim
                   "WindowEventHandlers.getonpopstate"
                   prim__onpopstate
                   prim__setOnpopstate
                   (cast {to = WindowEventHandlers} v)


  export
  onrejectionhandled :
       {auto _ : Cast t WindowEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onrejectionhandled v = fromNullablePrim
                           "WindowEventHandlers.getonrejectionhandled"
                           prim__onrejectionhandled
                           prim__setOnrejectionhandled
                           (cast {to = WindowEventHandlers} v)


  export
  onstorage :
       {auto _ : Cast t WindowEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onstorage v = fromNullablePrim
                  "WindowEventHandlers.getonstorage"
                  prim__onstorage
                  prim__setOnstorage
                  (cast {to = WindowEventHandlers} v)


  export
  onunhandledrejection :
       {auto _ : Cast t WindowEventHandlers}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onunhandledrejection v = fromNullablePrim
                             "WindowEventHandlers.getonunhandledrejection"
                             prim__onunhandledrejection
                             prim__setOnunhandledrejection
                             (cast {to = WindowEventHandlers} v)


  export
  onunload :
       {auto _ : Cast t WindowEventHandlers}
    -> t
    -> Attribute False Maybe UIEventHandler
  onunload v = fromNullablePrim
                 "WindowEventHandlers.getonunload"
                 prim__onunload
                 prim__setOnunload
                 (cast {to = WindowEventHandlers} v)



namespace WindowLocalStorage

  export
  localStorage :
       {auto _ : Cast t1 WindowLocalStorage}
    -> (obj : t1)
    -> JSIO Storage
  localStorage a = primJS $ WindowLocalStorage.prim__localStorage (cast a)



namespace WindowOrWorkerGlobalScope

  export
  caches :
       {auto _ : Cast t1 WindowOrWorkerGlobalScope}
    -> (obj : t1)
    -> JSIO CacheStorage
  caches a = primJS $ WindowOrWorkerGlobalScope.prim__caches (cast a)


  export
  crossOriginIsolated :
       {auto _ : Cast t1 WindowOrWorkerGlobalScope}
    -> (obj : t1)
    -> JSIO Bool
  crossOriginIsolated a = tryJS "WindowOrWorkerGlobalScope.crossOriginIsolated" $
    WindowOrWorkerGlobalScope.prim__crossOriginIsolated (cast a)


  export
  indexedDB :
       {auto _ : Cast t1 WindowOrWorkerGlobalScope}
    -> (obj : t1)
    -> JSIO IDBFactory
  indexedDB a = primJS $ WindowOrWorkerGlobalScope.prim__indexedDB (cast a)


  export
  isSecureContext :
       {auto _ : Cast t1 WindowOrWorkerGlobalScope}
    -> (obj : t1)
    -> JSIO Bool
  isSecureContext a = tryJS "WindowOrWorkerGlobalScope.isSecureContext" $
    WindowOrWorkerGlobalScope.prim__isSecureContext (cast a)


  export
  origin :
       {auto _ : Cast t1 WindowOrWorkerGlobalScope}
    -> (obj : t1)
    -> JSIO String
  origin a = primJS $ WindowOrWorkerGlobalScope.prim__origin (cast a)


  export
  performance :
       {auto _ : Cast t1 WindowOrWorkerGlobalScope}
    -> (obj : t1)
    -> JSIO Performance
  performance a = primJS $ WindowOrWorkerGlobalScope.prim__performance (cast a)


  export
  atob :
       {auto _ : Cast t1 WindowOrWorkerGlobalScope}
    -> (obj : t1)
    -> (data_ : String)
    -> JSIO ByteString
  atob a b = primJS $ WindowOrWorkerGlobalScope.prim__atob (cast a) b


  export
  btoa :
       {auto _ : Cast t1 WindowOrWorkerGlobalScope}
    -> (obj : t1)
    -> (data_ : String)
    -> JSIO String
  btoa a b = primJS $ WindowOrWorkerGlobalScope.prim__btoa (cast a) b


  export
  clearInterval' :
       {auto _ : Cast t1 WindowOrWorkerGlobalScope}
    -> (obj : t1)
    -> (id : Optional Int32)
    -> JSIO ()
  clearInterval' a b = primJS $
    WindowOrWorkerGlobalScope.prim__clearInterval (cast a) (toFFI b)

  export
  clearInterval :
       {auto _ : Cast t1 WindowOrWorkerGlobalScope}
    -> (obj : t1)
    -> JSIO ()
  clearInterval a = primJS $
    WindowOrWorkerGlobalScope.prim__clearInterval (cast a) undef


  export
  clearTimeout' :
       {auto _ : Cast t1 WindowOrWorkerGlobalScope}
    -> (obj : t1)
    -> (id : Optional Int32)
    -> JSIO ()
  clearTimeout' a b = primJS $
    WindowOrWorkerGlobalScope.prim__clearTimeout (cast a) (toFFI b)

  export
  clearTimeout :
       {auto _ : Cast t1 WindowOrWorkerGlobalScope}
    -> (obj : t1)
    -> JSIO ()
  clearTimeout a = primJS $
    WindowOrWorkerGlobalScope.prim__clearTimeout (cast a) undef


  export
  createImageBitmap' :
       {auto _ : Cast t1 WindowOrWorkerGlobalScope}
    -> {auto _ : Cast t3 ImageBitmapOptions}
    -> (obj : t1)
    -> (image : HSum
                  [ HTMLImageElement
                  , SVGImageElement
                  , HTMLVideoElement
                  , HTMLCanvasElement
                  , ImageBitmap
                  , OffscreenCanvas
                  , Blob
                  , ImageData
                  ])
    -> (options : Optional t3)
    -> JSIO (Promise ImageBitmap)
  createImageBitmap' a b c = primJS $
    WindowOrWorkerGlobalScope.prim__createImageBitmap
      (cast a)
      (toFFI b)
      (optUp c)

  export
  createImageBitmap :
       {auto _ : Cast t1 WindowOrWorkerGlobalScope}
    -> (obj : t1)
    -> (image : HSum
                  [ HTMLImageElement
                  , SVGImageElement
                  , HTMLVideoElement
                  , HTMLCanvasElement
                  , ImageBitmap
                  , OffscreenCanvas
                  , Blob
                  , ImageData
                  ])
    -> JSIO (Promise ImageBitmap)
  createImageBitmap a b = primJS $
    WindowOrWorkerGlobalScope.prim__createImageBitmap (cast a) (toFFI b) undef


  export
  createImageBitmap1' :
       {auto _ : Cast t1 WindowOrWorkerGlobalScope}
    -> {auto _ : Cast t7 ImageBitmapOptions}
    -> (obj : t1)
    -> (image : HSum
                  [ HTMLImageElement
                  , SVGImageElement
                  , HTMLVideoElement
                  , HTMLCanvasElement
                  , ImageBitmap
                  , OffscreenCanvas
                  , Blob
                  , ImageData
                  ])
    -> (sx : Int32)
    -> (sy : Int32)
    -> (sw : Int32)
    -> (sh : Int32)
    -> (options : Optional t7)
    -> JSIO (Promise ImageBitmap)
  createImageBitmap1' a b c d e f g = primJS $
    WindowOrWorkerGlobalScope.prim__createImageBitmap1
      (cast a)
      (toFFI b)
      c
      d
      e
      f
      (optUp g)

  export
  createImageBitmap1 :
       {auto _ : Cast t1 WindowOrWorkerGlobalScope}
    -> (obj : t1)
    -> (image : HSum
                  [ HTMLImageElement
                  , SVGImageElement
                  , HTMLVideoElement
                  , HTMLCanvasElement
                  , ImageBitmap
                  , OffscreenCanvas
                  , Blob
                  , ImageData
                  ])
    -> (sx : Int32)
    -> (sy : Int32)
    -> (sw : Int32)
    -> (sh : Int32)
    -> JSIO (Promise ImageBitmap)
  createImageBitmap1 a b c d e f = primJS $
    WindowOrWorkerGlobalScope.prim__createImageBitmap1
      (cast a)
      (toFFI b)
      c
      d
      e
      f
      undef


  export
  fetch' :
       {auto _ : Cast t1 WindowOrWorkerGlobalScope}
    -> {auto _ : Cast t3 RequestInit}
    -> (obj : t1)
    -> (input : HSum [Request, String])
    -> (init : Optional t3)
    -> JSIO (Promise Response)
  fetch' a b c = primJS $
    WindowOrWorkerGlobalScope.prim__fetch (cast a) (toFFI b) (optUp c)

  export
  fetch :
       {auto _ : Cast t1 WindowOrWorkerGlobalScope}
    -> (obj : t1)
    -> (input : HSum [Request, String])
    -> JSIO (Promise Response)
  fetch a b = primJS $
    WindowOrWorkerGlobalScope.prim__fetch (cast a) (toFFI b) undef


  export
  queueMicrotask :
       {auto _ : Cast t1 WindowOrWorkerGlobalScope}
    -> (obj : t1)
    -> (callback : VoidFunction)
    -> JSIO ()
  queueMicrotask a b = primJS $
    WindowOrWorkerGlobalScope.prim__queueMicrotask (cast a) b


  export
  reportError :
       {auto _ : Cast t1 WindowOrWorkerGlobalScope}
    -> (obj : t1)
    -> (e : Any)
    -> JSIO ()
  reportError a b = primJS $
    WindowOrWorkerGlobalScope.prim__reportError (cast a) (toFFI b)


  export
  structuredClone' :
       {auto _ : Cast t1 WindowOrWorkerGlobalScope}
    -> {auto _ : Cast t3 StructuredSerializeOptions}
    -> (obj : t1)
    -> (value : Any)
    -> (options : Optional t3)
    -> JSIO Any
  structuredClone' a b c = tryJS "WindowOrWorkerGlobalScope.structuredClone'" $
    WindowOrWorkerGlobalScope.prim__structuredClone (cast a) (toFFI b) (optUp c)

  export
  structuredClone :
       {auto _ : Cast t1 WindowOrWorkerGlobalScope}
    -> (obj : t1)
    -> (value : Any)
    -> JSIO Any
  structuredClone a b = tryJS "WindowOrWorkerGlobalScope.structuredClone" $
    WindowOrWorkerGlobalScope.prim__structuredClone (cast a) (toFFI b) undef




--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace AssignedNodesOptions

  export
  new' : (flatten : Optional Bool) -> JSIO AssignedNodesOptions
  new' a = primJS $ AssignedNodesOptions.prim__new (toFFI a)

  export
  new : JSIO AssignedNodesOptions
  new = primJS $ AssignedNodesOptions.prim__new undef


  export
  flatten :
       {auto _ : Cast t AssignedNodesOptions}
    -> t
    -> Attribute True Optional Bool
  flatten v = fromUndefOrPrim
                "AssignedNodesOptions.getflatten"
                prim__flatten
                prim__setFlatten
                False
                (cast {to = AssignedNodesOptions} v)



namespace CanvasRenderingContext2DSettings

  export
  new' :
       (alpha : Optional Bool)
    -> (desynchronized : Optional Bool)
    -> JSIO CanvasRenderingContext2DSettings
  new' a b = primJS $
    CanvasRenderingContext2DSettings.prim__new (toFFI a) (toFFI b)

  export
  new : JSIO CanvasRenderingContext2DSettings
  new = primJS $ CanvasRenderingContext2DSettings.prim__new undef undef


  export
  alpha :
       {auto _ : Cast t CanvasRenderingContext2DSettings}
    -> t
    -> Attribute True Optional Bool
  alpha v = fromUndefOrPrim
              "CanvasRenderingContext2DSettings.getalpha"
              prim__alpha
              prim__setAlpha
              True
              (cast {to = CanvasRenderingContext2DSettings} v)


  export
  desynchronized :
       {auto _ : Cast t CanvasRenderingContext2DSettings}
    -> t
    -> Attribute True Optional Bool
  desynchronized v = fromUndefOrPrim
                       "CanvasRenderingContext2DSettings.getdesynchronized"
                       prim__desynchronized
                       prim__setDesynchronized
                       False
                       (cast {to = CanvasRenderingContext2DSettings} v)



namespace CloseEventInit

  export
  new' :
       (wasClean : Optional Bool)
    -> (code : Optional Bits16)
    -> (reason : Optional String)
    -> JSIO CloseEventInit
  new' a b c = primJS $ CloseEventInit.prim__new (toFFI a) (toFFI b) (toFFI c)

  export
  new : JSIO CloseEventInit
  new = primJS $ CloseEventInit.prim__new undef undef undef


  export
  code : {auto _ : Cast t CloseEventInit} -> t -> Attribute True Optional Bits16
  code v = fromUndefOrPrim
             "CloseEventInit.getcode"
             prim__code
             prim__setCode
             0
             (cast {to = CloseEventInit} v)


  export
  reason :
       {auto _ : Cast t CloseEventInit}
    -> t
    -> Attribute True Optional String
  reason v = fromUndefOrPrim
               "CloseEventInit.getreason"
               prim__reason
               prim__setReason
               ""
               (cast {to = CloseEventInit} v)


  export
  wasClean :
       {auto _ : Cast t CloseEventInit}
    -> t
    -> Attribute True Optional Bool
  wasClean v = fromUndefOrPrim
                 "CloseEventInit.getwasClean"
                 prim__wasClean
                 prim__setWasClean
                 False
                 (cast {to = CloseEventInit} v)



namespace DragEventInit

  export
  new' : (dataTransfer : Optional (Maybe DataTransfer)) -> JSIO DragEventInit
  new' a = primJS $ DragEventInit.prim__new (toFFI a)

  export
  new : JSIO DragEventInit
  new = primJS $ DragEventInit.prim__new undef


  export
  dataTransfer :
       {auto _ : Cast t DragEventInit}
    -> t
    -> Attribute True Optional (Maybe DataTransfer)
  dataTransfer v = fromUndefOrPrim
                     "DragEventInit.getdataTransfer"
                     prim__dataTransfer
                     prim__setDataTransfer
                     Nothing
                     (cast {to = DragEventInit} v)



namespace ElementDefinitionOptions

  export
  new' : (extends : Optional String) -> JSIO ElementDefinitionOptions
  new' a = primJS $ ElementDefinitionOptions.prim__new (toFFI a)

  export
  new : JSIO ElementDefinitionOptions
  new = primJS $ ElementDefinitionOptions.prim__new undef


  export
  extends :
       {auto _ : Cast t ElementDefinitionOptions}
    -> t
    -> Attribute False Optional String
  extends v = fromUndefOrPrimNoDefault
                "ElementDefinitionOptions.getextends"
                prim__extends
                prim__setExtends
                (cast {to = ElementDefinitionOptions} v)



namespace ErrorEventInit

  export
  new' :
       (message : Optional String)
    -> (filename : Optional String)
    -> (lineno : Optional Bits32)
    -> (colno : Optional Bits32)
    -> (error : Optional Any)
    -> JSIO ErrorEventInit
  new' a b c d e = primJS $
    ErrorEventInit.prim__new (toFFI a) (toFFI b) (toFFI c) (toFFI d) (toFFI e)

  export
  new : JSIO ErrorEventInit
  new = primJS $ ErrorEventInit.prim__new undef undef undef undef undef


  export
  colno :
       {auto _ : Cast t ErrorEventInit}
    -> t
    -> Attribute True Optional Bits32
  colno v = fromUndefOrPrim
              "ErrorEventInit.getcolno"
              prim__colno
              prim__setColno
              0
              (cast {to = ErrorEventInit} v)


  export
  error : {auto _ : Cast t ErrorEventInit} -> t -> Attribute True Optional Any
  error v = fromUndefOrPrim
              "ErrorEventInit.geterror"
              prim__error
              prim__setError
              (MkAny $ null {a = ()})
              (cast {to = ErrorEventInit} v)


  export
  filename :
       {auto _ : Cast t ErrorEventInit}
    -> t
    -> Attribute True Optional String
  filename v = fromUndefOrPrim
                 "ErrorEventInit.getfilename"
                 prim__filename
                 prim__setFilename
                 ""
                 (cast {to = ErrorEventInit} v)


  export
  lineno :
       {auto _ : Cast t ErrorEventInit}
    -> t
    -> Attribute True Optional Bits32
  lineno v = fromUndefOrPrim
               "ErrorEventInit.getlineno"
               prim__lineno
               prim__setLineno
               0
               (cast {to = ErrorEventInit} v)


  export
  message :
       {auto _ : Cast t ErrorEventInit}
    -> t
    -> Attribute True Optional String
  message v = fromUndefOrPrim
                "ErrorEventInit.getmessage"
                prim__message
                prim__setMessage
                ""
                (cast {to = ErrorEventInit} v)



namespace EventSourceInit

  export
  new' : (withCredentials : Optional Bool) -> JSIO EventSourceInit
  new' a = primJS $ EventSourceInit.prim__new (toFFI a)

  export
  new : JSIO EventSourceInit
  new = primJS $ EventSourceInit.prim__new undef


  export
  withCredentials :
       {auto _ : Cast t EventSourceInit}
    -> t
    -> Attribute True Optional Bool
  withCredentials v = fromUndefOrPrim
                        "EventSourceInit.getwithCredentials"
                        prim__withCredentials
                        prim__setWithCredentials
                        False
                        (cast {to = EventSourceInit} v)



namespace FocusOptions

  export
  new' : (preventScroll : Optional Bool) -> JSIO FocusOptions
  new' a = primJS $ FocusOptions.prim__new (toFFI a)

  export
  new : JSIO FocusOptions
  new = primJS $ FocusOptions.prim__new undef


  export
  preventScroll :
       {auto _ : Cast t FocusOptions}
    -> t
    -> Attribute True Optional Bool
  preventScroll v = fromUndefOrPrim
                      "FocusOptions.getpreventScroll"
                      prim__preventScroll
                      prim__setPreventScroll
                      False
                      (cast {to = FocusOptions} v)



namespace FormDataEventInit

  export
  new : (formData : FormData) -> JSIO FormDataEventInit
  new a = primJS $ FormDataEventInit.prim__new a


  export
  formData :
       {auto _ : Cast t FormDataEventInit}
    -> t
    -> Attribute True Prelude.id FormData
  formData v = fromPrim
                 "FormDataEventInit.getformData"
                 prim__formData
                 prim__setFormData
                 (cast {to = FormDataEventInit} v)



namespace HashChangeEventInit

  export
  new' :
       (oldURL : Optional String)
    -> (newURL : Optional String)
    -> JSIO HashChangeEventInit
  new' a b = primJS $ HashChangeEventInit.prim__new (toFFI a) (toFFI b)

  export
  new : JSIO HashChangeEventInit
  new = primJS $ HashChangeEventInit.prim__new undef undef


  export
  newURL :
       {auto _ : Cast t HashChangeEventInit}
    -> t
    -> Attribute True Optional String
  newURL v = fromUndefOrPrim
               "HashChangeEventInit.getnewURL"
               prim__newURL
               prim__setNewURL
               ""
               (cast {to = HashChangeEventInit} v)


  export
  oldURL :
       {auto _ : Cast t HashChangeEventInit}
    -> t
    -> Attribute True Optional String
  oldURL v = fromUndefOrPrim
               "HashChangeEventInit.getoldURL"
               prim__oldURL
               prim__setOldURL
               ""
               (cast {to = HashChangeEventInit} v)



namespace ImageBitmapOptions

  export
  new' :
       (imageOrientation : Optional ImageOrientation)
    -> (premultiplyAlpha : Optional PremultiplyAlpha)
    -> (colorSpaceConversion : Optional ColorSpaceConversion)
    -> (resizeWidth : Optional Bits32)
    -> (resizeHeight : Optional Bits32)
    -> (resizeQuality : Optional ResizeQuality)
    -> JSIO ImageBitmapOptions
  new' a b c d e f = primJS $
    ImageBitmapOptions.prim__new
      (toFFI a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      (toFFI e)
      (toFFI f)

  export
  new : JSIO ImageBitmapOptions
  new = primJS $
    ImageBitmapOptions.prim__new undef undef undef undef undef undef


  export
  colorSpaceConversion :
       {auto _ : Cast t ImageBitmapOptions}
    -> t
    -> Attribute False Optional ColorSpaceConversion
  colorSpaceConversion v = fromUndefOrPrimNoDefault
                             "ImageBitmapOptions.getcolorSpaceConversion"
                             prim__colorSpaceConversion
                             prim__setColorSpaceConversion
                             (cast {to = ImageBitmapOptions} v)


  export
  imageOrientation :
       {auto _ : Cast t ImageBitmapOptions}
    -> t
    -> Attribute False Optional ImageOrientation
  imageOrientation v = fromUndefOrPrimNoDefault
                         "ImageBitmapOptions.getimageOrientation"
                         prim__imageOrientation
                         prim__setImageOrientation
                         (cast {to = ImageBitmapOptions} v)


  export
  premultiplyAlpha :
       {auto _ : Cast t ImageBitmapOptions}
    -> t
    -> Attribute False Optional PremultiplyAlpha
  premultiplyAlpha v = fromUndefOrPrimNoDefault
                         "ImageBitmapOptions.getpremultiplyAlpha"
                         prim__premultiplyAlpha
                         prim__setPremultiplyAlpha
                         (cast {to = ImageBitmapOptions} v)


  export
  resizeHeight :
       {auto _ : Cast t ImageBitmapOptions}
    -> t
    -> Attribute False Optional Bits32
  resizeHeight v = fromUndefOrPrimNoDefault
                     "ImageBitmapOptions.getresizeHeight"
                     prim__resizeHeight
                     prim__setResizeHeight
                     (cast {to = ImageBitmapOptions} v)


  export
  resizeQuality :
       {auto _ : Cast t ImageBitmapOptions}
    -> t
    -> Attribute False Optional ResizeQuality
  resizeQuality v = fromUndefOrPrimNoDefault
                      "ImageBitmapOptions.getresizeQuality"
                      prim__resizeQuality
                      prim__setResizeQuality
                      (cast {to = ImageBitmapOptions} v)


  export
  resizeWidth :
       {auto _ : Cast t ImageBitmapOptions}
    -> t
    -> Attribute False Optional Bits32
  resizeWidth v = fromUndefOrPrimNoDefault
                    "ImageBitmapOptions.getresizeWidth"
                    prim__resizeWidth
                    prim__setResizeWidth
                    (cast {to = ImageBitmapOptions} v)



namespace ImageBitmapRenderingContextSettings

  export
  new' : (alpha : Optional Bool) -> JSIO ImageBitmapRenderingContextSettings
  new' a = primJS $ ImageBitmapRenderingContextSettings.prim__new (toFFI a)

  export
  new : JSIO ImageBitmapRenderingContextSettings
  new = primJS $ ImageBitmapRenderingContextSettings.prim__new undef


  export
  alpha :
       {auto _ : Cast t ImageBitmapRenderingContextSettings}
    -> t
    -> Attribute True Optional Bool
  alpha v = fromUndefOrPrim
              "ImageBitmapRenderingContextSettings.getalpha"
              prim__alpha
              prim__setAlpha
              True
              (cast {to = ImageBitmapRenderingContextSettings} v)



namespace ImageEncodeOptions

  export
  new' :
       (type : Optional String)
    -> (quality : Optional Double)
    -> JSIO ImageEncodeOptions
  new' a b = primJS $ ImageEncodeOptions.prim__new (toFFI a) (toFFI b)

  export
  new : JSIO ImageEncodeOptions
  new = primJS $ ImageEncodeOptions.prim__new undef undef


  export
  quality :
       {auto _ : Cast t ImageEncodeOptions}
    -> t
    -> Attribute False Optional Double
  quality v = fromUndefOrPrimNoDefault
                "ImageEncodeOptions.getquality"
                prim__quality
                prim__setQuality
                (cast {to = ImageEncodeOptions} v)


  export
  type :
       {auto _ : Cast t ImageEncodeOptions}
    -> t
    -> Attribute True Optional String
  type v = fromUndefOrPrim
             "ImageEncodeOptions.gettype"
             prim__type
             prim__setType
             "image/png"
             (cast {to = ImageEncodeOptions} v)



namespace MessageEventInit

  export
  new' :
       (data_ : Optional Any)
    -> (origin : Optional String)
    -> (lastEventId : Optional String)
    -> (source : Optional
                   (Maybe (HSum [WindowProxy, MessagePort, ServiceWorker])))
    -> (ports : Optional (Array MessagePort))
    -> JSIO MessageEventInit
  new' a b c d e = primJS $
    MessageEventInit.prim__new (toFFI a) (toFFI b) (toFFI c) (toFFI d) (toFFI e)

  export
  new : JSIO MessageEventInit
  new = primJS $ MessageEventInit.prim__new undef undef undef undef undef


  export
  data_ : {auto _ : Cast t MessageEventInit} -> t -> Attribute True Optional Any
  data_ v = fromUndefOrPrim
              "MessageEventInit.getdata"
              prim__data
              prim__setData
              (MkAny $ null {a = ()})
              (cast {to = MessageEventInit} v)


  export
  lastEventId :
       {auto _ : Cast t MessageEventInit}
    -> t
    -> Attribute True Optional String
  lastEventId v = fromUndefOrPrim
                    "MessageEventInit.getlastEventId"
                    prim__lastEventId
                    prim__setLastEventId
                    ""
                    (cast {to = MessageEventInit} v)


  export
  origin :
       {auto _ : Cast t MessageEventInit}
    -> t
    -> Attribute True Optional String
  origin v = fromUndefOrPrim
               "MessageEventInit.getorigin"
               prim__origin
               prim__setOrigin
               ""
               (cast {to = MessageEventInit} v)


  export
  ports :
       {auto _ : Cast t MessageEventInit}
    -> t
    -> Attribute False Optional (Array MessagePort)
  ports v = fromUndefOrPrimNoDefault
              "MessageEventInit.getports"
              prim__ports
              prim__setPorts
              (cast {to = MessageEventInit} v)


  export
  source :
       {auto _ : Cast t MessageEventInit}
    -> t
    -> Attribute True Optional (Maybe
                                  (Union3
                                     WindowProxy
                                     MessagePort
                                     ServiceWorker))
  source v = fromUndefOrPrim
               "MessageEventInit.getsource"
               prim__source
               prim__setSource
               Nothing
               (cast {to = MessageEventInit} v)



namespace PageTransitionEventInit

  export
  new' : (persisted : Optional Bool) -> JSIO PageTransitionEventInit
  new' a = primJS $ PageTransitionEventInit.prim__new (toFFI a)

  export
  new : JSIO PageTransitionEventInit
  new = primJS $ PageTransitionEventInit.prim__new undef


  export
  persisted :
       {auto _ : Cast t PageTransitionEventInit}
    -> t
    -> Attribute True Optional Bool
  persisted v = fromUndefOrPrim
                  "PageTransitionEventInit.getpersisted"
                  prim__persisted
                  prim__setPersisted
                  False
                  (cast {to = PageTransitionEventInit} v)



namespace PopStateEventInit

  export
  new' : (state : Optional Any) -> JSIO PopStateEventInit
  new' a = primJS $ PopStateEventInit.prim__new (toFFI a)

  export
  new : JSIO PopStateEventInit
  new = primJS $ PopStateEventInit.prim__new undef


  export
  state :
       {auto _ : Cast t PopStateEventInit}
    -> t
    -> Attribute True Optional Any
  state v = fromUndefOrPrim
              "PopStateEventInit.getstate"
              prim__state
              prim__setState
              (MkAny $ null {a = ()})
              (cast {to = PopStateEventInit} v)



namespace PostMessageOptions

  export
  new' : (transfer : Optional (Array Object)) -> JSIO PostMessageOptions
  new' a = primJS $ PostMessageOptions.prim__new (toFFI a)

  export
  new : JSIO PostMessageOptions
  new = primJS $ PostMessageOptions.prim__new undef


  export
  transfer :
       {auto _ : Cast t PostMessageOptions}
    -> t
    -> Attribute False Optional (Array Object)
  transfer v = fromUndefOrPrimNoDefault
                 "PostMessageOptions.gettransfer"
                 prim__transfer
                 prim__setTransfer
                 (cast {to = PostMessageOptions} v)



namespace PromiseRejectionEventInit

  export
  new' :
       (promise : Promise AnyPtr)
    -> (reason : Optional Any)
    -> JSIO PromiseRejectionEventInit
  new' a b = primJS $ PromiseRejectionEventInit.prim__new a (toFFI b)

  export
  new : (promise : Promise AnyPtr) -> JSIO PromiseRejectionEventInit
  new a = primJS $ PromiseRejectionEventInit.prim__new a undef


  export
  promise :
       {auto _ : Cast t PromiseRejectionEventInit}
    -> t
    -> Attribute True Prelude.id (Promise AnyPtr)
  promise v = fromPrim
                "PromiseRejectionEventInit.getpromise"
                prim__promise
                prim__setPromise
                (cast {to = PromiseRejectionEventInit} v)


  export
  reason :
       {auto _ : Cast t PromiseRejectionEventInit}
    -> t
    -> Attribute False Optional Any
  reason v = fromUndefOrPrimNoDefault
               "PromiseRejectionEventInit.getreason"
               prim__reason
               prim__setReason
               (cast {to = PromiseRejectionEventInit} v)



namespace StorageEventInit

  export
  new' :
       (key : Optional (Maybe String))
    -> (oldValue : Optional (Maybe String))
    -> (newValue : Optional (Maybe String))
    -> (url : Optional String)
    -> (storageArea : Optional (Maybe Storage))
    -> JSIO StorageEventInit
  new' a b c d e = primJS $
    StorageEventInit.prim__new (toFFI a) (toFFI b) (toFFI c) (toFFI d) (toFFI e)

  export
  new : JSIO StorageEventInit
  new = primJS $ StorageEventInit.prim__new undef undef undef undef undef


  export
  key :
       {auto _ : Cast t StorageEventInit}
    -> t
    -> Attribute True Optional (Maybe String)
  key v = fromUndefOrPrim
            "StorageEventInit.getkey"
            prim__key
            prim__setKey
            Nothing
            (cast {to = StorageEventInit} v)


  export
  newValue :
       {auto _ : Cast t StorageEventInit}
    -> t
    -> Attribute True Optional (Maybe String)
  newValue v = fromUndefOrPrim
                 "StorageEventInit.getnewValue"
                 prim__newValue
                 prim__setNewValue
                 Nothing
                 (cast {to = StorageEventInit} v)


  export
  oldValue :
       {auto _ : Cast t StorageEventInit}
    -> t
    -> Attribute True Optional (Maybe String)
  oldValue v = fromUndefOrPrim
                 "StorageEventInit.getoldValue"
                 prim__oldValue
                 prim__setOldValue
                 Nothing
                 (cast {to = StorageEventInit} v)


  export
  storageArea :
       {auto _ : Cast t StorageEventInit}
    -> t
    -> Attribute True Optional (Maybe Storage)
  storageArea v = fromUndefOrPrim
                    "StorageEventInit.getstorageArea"
                    prim__storageArea
                    prim__setStorageArea
                    Nothing
                    (cast {to = StorageEventInit} v)


  export
  url :
       {auto _ : Cast t StorageEventInit}
    -> t
    -> Attribute True Optional String
  url v = fromUndefOrPrim
            "StorageEventInit.geturl"
            prim__url
            prim__setUrl
            ""
            (cast {to = StorageEventInit} v)



namespace StructuredSerializeOptions

  export
  new' : (transfer : Optional (Array Object)) -> JSIO StructuredSerializeOptions
  new' a = primJS $ StructuredSerializeOptions.prim__new (toFFI a)

  export
  new : JSIO StructuredSerializeOptions
  new = primJS $ StructuredSerializeOptions.prim__new undef


  export
  transfer :
       {auto _ : Cast t StructuredSerializeOptions}
    -> t
    -> Attribute False Optional (Array Object)
  transfer v = fromUndefOrPrimNoDefault
                 "StructuredSerializeOptions.gettransfer"
                 prim__transfer
                 prim__setTransfer
                 (cast {to = StructuredSerializeOptions} v)



namespace SubmitEventInit

  export
  new' :
       {auto _ : Cast t1 HTMLElement}
    -> (submitter : Optional (Maybe t1))
    -> JSIO SubmitEventInit
  new' a = primJS $ SubmitEventInit.prim__new (omyUp a)

  export
  new : JSIO SubmitEventInit
  new = primJS $ SubmitEventInit.prim__new undef


  export
  submitter :
       {auto _ : Cast t SubmitEventInit}
    -> t
    -> Attribute True Optional (Maybe HTMLElement)
  submitter v = fromUndefOrPrim
                  "SubmitEventInit.getsubmitter"
                  prim__submitter
                  prim__setSubmitter
                  Nothing
                  (cast {to = SubmitEventInit} v)



namespace TrackEventInit

  export
  new' :
       (track : Optional (Maybe (HSum [VideoTrack, AudioTrack, TextTrack])))
    -> JSIO TrackEventInit
  new' a = primJS $ TrackEventInit.prim__new (toFFI a)

  export
  new : JSIO TrackEventInit
  new = primJS $ TrackEventInit.prim__new undef


  export
  track :
       {auto _ : Cast t TrackEventInit}
    -> t
    -> Attribute True Optional (Maybe
                                  (HSum [VideoTrack, AudioTrack, TextTrack]))
  track v = fromUndefOrPrim
              "TrackEventInit.gettrack"
              prim__track
              prim__setTrack
              Nothing
              (cast {to = TrackEventInit} v)



namespace ValidityStateFlags

  export
  new' :
       (valueMissing : Optional Bool)
    -> (typeMismatch : Optional Bool)
    -> (patternMismatch : Optional Bool)
    -> (tooLong : Optional Bool)
    -> (tooShort : Optional Bool)
    -> (rangeUnderflow : Optional Bool)
    -> (rangeOverflow : Optional Bool)
    -> (stepMismatch : Optional Bool)
    -> (badInput : Optional Bool)
    -> (customError : Optional Bool)
    -> JSIO ValidityStateFlags
  new' a b c d e f g h i j = primJS $
    ValidityStateFlags.prim__new
      (toFFI a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      (toFFI e)
      (toFFI f)
      (toFFI g)
      (toFFI h)
      (toFFI i)
      (toFFI j)

  export
  new : JSIO ValidityStateFlags
  new = primJS $
    ValidityStateFlags.prim__new
      undef
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
  badInput :
       {auto _ : Cast t ValidityStateFlags}
    -> t
    -> Attribute True Optional Bool
  badInput v = fromUndefOrPrim
                 "ValidityStateFlags.getbadInput"
                 prim__badInput
                 prim__setBadInput
                 False
                 (cast {to = ValidityStateFlags} v)


  export
  customError :
       {auto _ : Cast t ValidityStateFlags}
    -> t
    -> Attribute True Optional Bool
  customError v = fromUndefOrPrim
                    "ValidityStateFlags.getcustomError"
                    prim__customError
                    prim__setCustomError
                    False
                    (cast {to = ValidityStateFlags} v)


  export
  patternMismatch :
       {auto _ : Cast t ValidityStateFlags}
    -> t
    -> Attribute True Optional Bool
  patternMismatch v = fromUndefOrPrim
                        "ValidityStateFlags.getpatternMismatch"
                        prim__patternMismatch
                        prim__setPatternMismatch
                        False
                        (cast {to = ValidityStateFlags} v)


  export
  rangeOverflow :
       {auto _ : Cast t ValidityStateFlags}
    -> t
    -> Attribute True Optional Bool
  rangeOverflow v = fromUndefOrPrim
                      "ValidityStateFlags.getrangeOverflow"
                      prim__rangeOverflow
                      prim__setRangeOverflow
                      False
                      (cast {to = ValidityStateFlags} v)


  export
  rangeUnderflow :
       {auto _ : Cast t ValidityStateFlags}
    -> t
    -> Attribute True Optional Bool
  rangeUnderflow v = fromUndefOrPrim
                       "ValidityStateFlags.getrangeUnderflow"
                       prim__rangeUnderflow
                       prim__setRangeUnderflow
                       False
                       (cast {to = ValidityStateFlags} v)


  export
  stepMismatch :
       {auto _ : Cast t ValidityStateFlags}
    -> t
    -> Attribute True Optional Bool
  stepMismatch v = fromUndefOrPrim
                     "ValidityStateFlags.getstepMismatch"
                     prim__stepMismatch
                     prim__setStepMismatch
                     False
                     (cast {to = ValidityStateFlags} v)


  export
  tooLong :
       {auto _ : Cast t ValidityStateFlags}
    -> t
    -> Attribute True Optional Bool
  tooLong v = fromUndefOrPrim
                "ValidityStateFlags.gettooLong"
                prim__tooLong
                prim__setTooLong
                False
                (cast {to = ValidityStateFlags} v)


  export
  tooShort :
       {auto _ : Cast t ValidityStateFlags}
    -> t
    -> Attribute True Optional Bool
  tooShort v = fromUndefOrPrim
                 "ValidityStateFlags.gettooShort"
                 prim__tooShort
                 prim__setTooShort
                 False
                 (cast {to = ValidityStateFlags} v)


  export
  typeMismatch :
       {auto _ : Cast t ValidityStateFlags}
    -> t
    -> Attribute True Optional Bool
  typeMismatch v = fromUndefOrPrim
                     "ValidityStateFlags.gettypeMismatch"
                     prim__typeMismatch
                     prim__setTypeMismatch
                     False
                     (cast {to = ValidityStateFlags} v)


  export
  valueMissing :
       {auto _ : Cast t ValidityStateFlags}
    -> t
    -> Attribute True Optional Bool
  valueMissing v = fromUndefOrPrim
                     "ValidityStateFlags.getvalueMissing"
                     prim__valueMissing
                     prim__setValueMissing
                     False
                     (cast {to = ValidityStateFlags} v)



namespace WindowPostMessageOptions

  export
  new' : (targetOrigin : Optional String) -> JSIO WindowPostMessageOptions
  new' a = primJS $ WindowPostMessageOptions.prim__new (toFFI a)

  export
  new : JSIO WindowPostMessageOptions
  new = primJS $ WindowPostMessageOptions.prim__new undef


  export
  targetOrigin :
       {auto _ : Cast t WindowPostMessageOptions}
    -> t
    -> Attribute True Optional String
  targetOrigin v = fromUndefOrPrim
                     "WindowPostMessageOptions.gettargetOrigin"
                     prim__targetOrigin
                     prim__setTargetOrigin
                     "/"
                     (cast {to = WindowPostMessageOptions} v)



namespace WorkerOptions

  export
  new' :
       (type : Optional WorkerType)
    -> (credentials : Optional RequestCredentials)
    -> (name : Optional String)
    -> JSIO WorkerOptions
  new' a b c = primJS $ WorkerOptions.prim__new (toFFI a) (toFFI b) (toFFI c)

  export
  new : JSIO WorkerOptions
  new = primJS $ WorkerOptions.prim__new undef undef undef


  export
  credentials :
       {auto _ : Cast t WorkerOptions}
    -> t
    -> Attribute False Optional RequestCredentials
  credentials v = fromUndefOrPrimNoDefault
                    "WorkerOptions.getcredentials"
                    prim__credentials
                    prim__setCredentials
                    (cast {to = WorkerOptions} v)


  export
  name : {auto _ : Cast t WorkerOptions} -> t -> Attribute True Optional String
  name v = fromUndefOrPrim
             "WorkerOptions.getname"
             prim__name
             prim__setName
             ""
             (cast {to = WorkerOptions} v)


  export
  type :
       {auto _ : Cast t WorkerOptions}
    -> t
    -> Attribute False Optional WorkerType
  type v = fromUndefOrPrimNoDefault
             "WorkerOptions.gettype"
             prim__type
             prim__setType
             (cast {to = WorkerOptions} v)



namespace WorkletOptions

  export
  new' : (credentials : Optional RequestCredentials) -> JSIO WorkletOptions
  new' a = primJS $ WorkletOptions.prim__new (toFFI a)

  export
  new : JSIO WorkletOptions
  new = primJS $ WorkletOptions.prim__new undef


  export
  credentials :
       {auto _ : Cast t WorkletOptions}
    -> t
    -> Attribute False Optional RequestCredentials
  credentials v = fromUndefOrPrimNoDefault
                    "WorkletOptions.getcredentials"
                    prim__credentials
                    prim__setCredentials
                    (cast {to = WorkletOptions} v)




--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------

namespace BlobCallback

  export
  toBlobCallback : (Nullable Blob -> IO ()) -> JSIO BlobCallback
  toBlobCallback cb = primJS $ prim__toBlobCallback cb



namespace CompositionEventHandler

  export
  toCompositionEventHandler :
       (CompositionEvent -> IO ())
    -> JSIO CompositionEventHandler
  toCompositionEventHandler cb = primJS $ prim__toCompositionEventHandler cb



namespace CustomElementConstructor

  export
  toCustomElementConstructor :
       (() -> IO HTMLElement)
    -> JSIO CustomElementConstructor
  toCustomElementConstructor cb = primJS $ prim__toCustomElementConstructor cb



namespace EventHandlerNonNull

  export
  toEventHandlerNonNull : (Event -> IO AnyPtr) -> JSIO EventHandlerNonNull
  toEventHandlerNonNull cb = primJS $ prim__toEventHandlerNonNull cb



namespace FocusEventHandler

  export
  toFocusEventHandler : (FocusEvent -> IO ()) -> JSIO FocusEventHandler
  toFocusEventHandler cb = primJS $ prim__toFocusEventHandler cb



namespace FunctionStringCallback

  export
  toFunctionStringCallback : (String -> IO ()) -> JSIO FunctionStringCallback
  toFunctionStringCallback cb = primJS $ prim__toFunctionStringCallback cb



namespace InputEventHandler

  export
  toInputEventHandler : (InputEvent -> IO ()) -> JSIO InputEventHandler
  toInputEventHandler cb = primJS $ prim__toInputEventHandler cb



namespace KeyboardEventHandler

  export
  toKeyboardEventHandler : (KeyboardEvent -> IO ()) -> JSIO KeyboardEventHandler
  toKeyboardEventHandler cb = primJS $ prim__toKeyboardEventHandler cb



namespace MouseEventHandler

  export
  toMouseEventHandler : (MouseEvent -> IO ()) -> JSIO MouseEventHandler
  toMouseEventHandler cb = primJS $ prim__toMouseEventHandler cb



namespace OnBeforeUnloadEventHandlerNonNull

  export
  toOnBeforeUnloadEventHandlerNonNull :
       (Event -> IO (Nullable String))
    -> JSIO OnBeforeUnloadEventHandlerNonNull
  toOnBeforeUnloadEventHandlerNonNull cb = primJS $ prim__toOnBeforeUnloadEventHandlerNonNull cb



namespace OnErrorEventHandlerNonNull

  export
  toOnErrorEventHandlerNonNull :
       (  Union2 Event String
       -> UndefOr String
       -> UndefOr Bits32
       -> UndefOr Bits32
       -> UndefOr AnyPtr
       -> IO AnyPtr
       )
    -> JSIO OnErrorEventHandlerNonNull
  toOnErrorEventHandlerNonNull cb = primJS $ prim__toOnErrorEventHandlerNonNull cb



namespace UIEventHandler

  export
  toUIEventHandler : (UIEvent -> IO ()) -> JSIO UIEventHandler
  toUIEventHandler cb = primJS $ prim__toUIEventHandler cb



namespace WheelEventHandler

  export
  toWheelEventHandler : (WheelEvent -> IO ()) -> JSIO WheelEventHandler
  toWheelEventHandler cb = primJS $ prim__toWheelEventHandler cb
