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
  enabled : AudioTrack -> Attribute True I Bool
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
  sourceBuffer a = tryJS "AudioTrack.sourceBuffer"
                 $ AudioTrack.prim__sourceBuffer a


namespace AudioTrackList

  export
  get : (obj : AudioTrackList) -> (index : Bits32) -> JSIO AudioTrack
  get a b = primJS $ AudioTrackList.prim__get a b

  export
  length : (obj : AudioTrackList) -> JSIO Bits32
  length a = primJS $ AudioTrackList.prim__length a

  export
  onaddtrack : AudioTrackList -> Attribute False Maybe EventHandlerNonNull
  onaddtrack v = fromNullablePrim "AudioTrackList.getonaddtrack"
                                  prim__onaddtrack
                                  prim__setOnaddtrack
                                  v

  export
  onchange : AudioTrackList -> Attribute False Maybe EventHandlerNonNull
  onchange v = fromNullablePrim "AudioTrackList.getonchange"
                                prim__onchange
                                prim__setOnchange
                                v

  export
  onremovetrack : AudioTrackList -> Attribute False Maybe EventHandlerNonNull
  onremovetrack v = fromNullablePrim "AudioTrackList.getonremovetrack"
                                     prim__onremovetrack
                                     prim__setOnremovetrack
                                     v

  export
  getTrackById :  (obj : AudioTrackList)
               -> (id : String)
               -> JSIO (Maybe AudioTrack)
  getTrackById a b = tryJS "AudioTrackList.getTrackById"
                   $ AudioTrackList.prim__getTrackById a b


namespace BarProp

  export
  visible : (obj : BarProp) -> JSIO Bool
  visible a = tryJS "BarProp.visible" $ BarProp.prim__visible a


namespace BeforeUnloadEvent

  export
  returnValue : BeforeUnloadEvent -> Attribute True I String
  returnValue v = fromPrim "BeforeUnloadEvent.getreturnValue"
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
  onmessage v = fromNullablePrim "BroadcastChannel.getonmessage"
                                 prim__onmessage
                                 prim__setOnmessage
                                 v

  export
  onmessageerror : BroadcastChannel -> Attribute False Maybe EventHandlerNonNull
  onmessageerror v = fromNullablePrim "BroadcastChannel.getonmessageerror"
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
  addColorStop :  (obj : CanvasGradient)
               -> (offset : Double)
               -> (color : String)
               -> JSIO ()
  addColorStop a b c = primJS $ CanvasGradient.prim__addColorStop a b c


namespace CanvasPattern

  export
  setTransform :  (0 _ : JSType t1)
               => {auto 0 _ : Elem DOMMatrix2DInit (Types t1)}
               -> (obj : CanvasPattern)
               -> (transform : Optional t1)
               -> JSIO ()
  setTransform a b = primJS $ CanvasPattern.prim__setTransform a (optUp b)

  export
  setTransform' : (obj : CanvasPattern) -> JSIO ()
  setTransform' a = primJS $ CanvasPattern.prim__setTransform a undef


namespace CanvasRenderingContext2D

  export
  canvas : (obj : CanvasRenderingContext2D) -> JSIO HTMLCanvasElement
  canvas a = primJS $ CanvasRenderingContext2D.prim__canvas a

  export
  getContextAttributes :  (obj : CanvasRenderingContext2D)
                       -> JSIO CanvasRenderingContext2DSettings
  getContextAttributes a = primJS
                         $ CanvasRenderingContext2D.prim__getContextAttributes a


namespace CloseEvent

  export
  new :  (0 _ : JSType t1)
      => {auto 0 _ : Elem CloseEventInit (Types t1)}
      -> (type : String)
      -> (eventInitDict : Optional t1)
      -> JSIO CloseEvent
  new a b = primJS $ CloseEvent.prim__new a (optUp b)

  export
  new' : (type : String) -> JSIO CloseEvent
  new' a = primJS $ CloseEvent.prim__new a undef

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
  define :  (0 _ : JSType t1)
         => {auto 0 _ : Elem ElementDefinitionOptions (Types t1)}
         -> (obj : CustomElementRegistry)
         -> (name : String)
         -> (constructor : CustomElementConstructor)
         -> (options : Optional t1)
         -> JSIO ()
  define a b c d = primJS $ CustomElementRegistry.prim__define a b c (optUp d)

  export
  define' :  (obj : CustomElementRegistry)
          -> (name : String)
          -> (constructor : CustomElementConstructor)
          -> JSIO ()
  define' a b c = primJS $ CustomElementRegistry.prim__define a b c undef

  export
  get :  (obj : CustomElementRegistry)
      -> (name : String)
      -> JSIO (Union2 CustomElementConstructor Undefined)
  get a b = primJS $ CustomElementRegistry.prim__get a b

  export
  upgrade :  (0 _ : JSType t1)
          => {auto 0 _ : Elem Node (Types t1)}
          -> (obj : CustomElementRegistry)
          -> (root : t1)
          -> JSIO ()
  upgrade a b = primJS $ CustomElementRegistry.prim__upgrade a (up b)

  export
  whenDefined :  (obj : CustomElementRegistry)
              -> (name : String)
              -> JSIO (Promise CustomElementConstructor)
  whenDefined a b = primJS $ CustomElementRegistry.prim__whenDefined a b


namespace DOMParser

  export
  new : JSIO DOMParser
  new = primJS $ DOMParser.prim__new

  export
  parseFromString :  (obj : DOMParser)
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
  contains a b = tryJS "DOMStringList.contains"
               $ DOMStringList.prim__contains a b

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
  dropEffect : DataTransfer -> Attribute True I String
  dropEffect v = fromPrim "DataTransfer.getdropEffect"
                          prim__dropEffect
                          prim__setDropEffect
                          v

  export
  effectAllowed : DataTransfer -> Attribute True I String
  effectAllowed v = fromPrim "DataTransfer.geteffectAllowed"
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
  clearData : (obj : DataTransfer) -> (format : Optional String) -> JSIO ()
  clearData a b = primJS $ DataTransfer.prim__clearData a (toFFI b)

  export
  clearData' : (obj : DataTransfer) -> JSIO ()
  clearData' a = primJS $ DataTransfer.prim__clearData a undef

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
  setDragImage :  (0 _ : JSType t1)
               => {auto 0 _ : Elem Element (Types t1)}
               -> (obj : DataTransfer)
               -> (image : t1)
               -> (x : Int32)
               -> (y : Int32)
               -> JSIO ()
  setDragImage a b c d = primJS $ DataTransfer.prim__setDragImage a (up b) c d


namespace DataTransferItem

  export
  kind : (obj : DataTransferItem) -> JSIO String
  kind a = primJS $ DataTransferItem.prim__kind a

  export
  type : (obj : DataTransferItem) -> JSIO String
  type a = primJS $ DataTransferItem.prim__type a

  export
  getAsFile : (obj : DataTransferItem) -> JSIO (Maybe File)
  getAsFile a = tryJS "DataTransferItem.getAsFile"
              $ DataTransferItem.prim__getAsFile a

  export
  getAsString :  (obj : DataTransferItem)
              -> (callback : Maybe FunctionStringCallback)
              -> JSIO ()
  getAsString a b = primJS $ DataTransferItem.prim__getAsString a (toFFI b)


namespace DataTransferItemList

  export
  get :  (obj : DataTransferItemList)
      -> (index : Bits32)
      -> JSIO DataTransferItem
  get a b = primJS $ DataTransferItemList.prim__get a b

  export
  length : (obj : DataTransferItemList) -> JSIO Bits32
  length a = primJS $ DataTransferItemList.prim__length a

  export
  add :  (obj : DataTransferItemList)
      -> (data_ : String)
      -> (type : String)
      -> JSIO (Maybe DataTransferItem)
  add a b c = tryJS "DataTransferItemList.add"
            $ DataTransferItemList.prim__add a b c

  export
  add1 :  (obj : DataTransferItemList)
       -> (data_ : File)
       -> JSIO (Maybe DataTransferItem)
  add1 a b = tryJS "DataTransferItemList.add1"
           $ DataTransferItemList.prim__add1 a b

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
  onmessage :  DedicatedWorkerGlobalScope
            -> Attribute False Maybe EventHandlerNonNull
  onmessage v = fromNullablePrim "DedicatedWorkerGlobalScope.getonmessage"
                                 prim__onmessage
                                 prim__setOnmessage
                                 v

  export
  onmessageerror :  DedicatedWorkerGlobalScope
                 -> Attribute False Maybe EventHandlerNonNull
  onmessageerror v = fromNullablePrim "DedicatedWorkerGlobalScope.getonmessageerror"
                                      prim__onmessageerror
                                      prim__setOnmessageerror
                                      v

  export
  close : (obj : DedicatedWorkerGlobalScope) -> JSIO ()
  close a = primJS $ DedicatedWorkerGlobalScope.prim__close a

  export
  postMessage :  (obj : DedicatedWorkerGlobalScope)
              -> (message : Any)
              -> (transfer : Array Object)
              -> JSIO ()
  postMessage a b c = primJS
                    $ DedicatedWorkerGlobalScope.prim__postMessage a (toFFI b) c

  export
  postMessage1 :  (0 _ : JSType t1)
               => {auto 0 _ : Elem PostMessageOptions (Types t1)}
               -> (obj : DedicatedWorkerGlobalScope)
               -> (message : Any)
               -> (options : Optional t1)
               -> JSIO ()
  postMessage1 a b c = primJS
                     $ DedicatedWorkerGlobalScope.prim__postMessage1 a
                                                                     (toFFI b)
                                                                     (optUp c)

  export
  postMessage1' :  (obj : DedicatedWorkerGlobalScope)
                -> (message : Any)
                -> JSIO ()
  postMessage1' a b = primJS
                    $ DedicatedWorkerGlobalScope.prim__postMessage1 a
                                                                    (toFFI b)
                                                                    undef


namespace DragEvent

  export
  new :  (0 _ : JSType t1)
      => {auto 0 _ : Elem DragEventInit (Types t1)}
      -> (type : String)
      -> (eventInitDict : Optional t1)
      -> JSIO DragEvent
  new a b = primJS $ DragEvent.prim__new a (optUp b)

  export
  new' : (type : String) -> JSIO DragEvent
  new' a = primJS $ DragEvent.prim__new a undef

  export
  dataTransfer : (obj : DragEvent) -> JSIO (Maybe DataTransfer)
  dataTransfer a = tryJS "DragEvent.dataTransfer"
                 $ DragEvent.prim__dataTransfer a


namespace ElementInternals

  export
  form : (obj : ElementInternals) -> JSIO (Maybe HTMLFormElement)
  form a = tryJS "ElementInternals.form" $ ElementInternals.prim__form a

  export
  labels : (obj : ElementInternals) -> JSIO NodeList
  labels a = primJS $ ElementInternals.prim__labels a

  export
  shadowRoot : (obj : ElementInternals) -> JSIO (Maybe ShadowRoot)
  shadowRoot a = tryJS "ElementInternals.shadowRoot"
               $ ElementInternals.prim__shadowRoot a

  export
  validationMessage : (obj : ElementInternals) -> JSIO String
  validationMessage a = primJS $ ElementInternals.prim__validationMessage a

  export
  validity : (obj : ElementInternals) -> JSIO ValidityState
  validity a = primJS $ ElementInternals.prim__validity a

  export
  willValidate : (obj : ElementInternals) -> JSIO Bool
  willValidate a = tryJS "ElementInternals.willValidate"
                 $ ElementInternals.prim__willValidate a

  export
  checkValidity : (obj : ElementInternals) -> JSIO Bool
  checkValidity a = tryJS "ElementInternals.checkValidity"
                  $ ElementInternals.prim__checkValidity a

  export
  reportValidity : (obj : ElementInternals) -> JSIO Bool
  reportValidity a = tryJS "ElementInternals.reportValidity"
                   $ ElementInternals.prim__reportValidity a

  export
  setFormValue :  (obj : ElementInternals)
               -> (value : Maybe (NS I [ File , String , FormData ]))
               -> (state : Optional (Maybe (NS I [ File , String , FormData ])))
               -> JSIO ()
  setFormValue a b c = primJS
                     $ ElementInternals.prim__setFormValue a (toFFI b) (toFFI c)

  export
  setFormValue' :  (obj : ElementInternals)
                -> (value : Maybe (NS I [ File , String , FormData ]))
                -> JSIO ()
  setFormValue' a b = primJS
                    $ ElementInternals.prim__setFormValue a (toFFI b) undef

  export
  setValidity :  (0 _ : JSType t1)
              => (0 _ : JSType t2)
              => {auto 0 _ : Elem ValidityStateFlags (Types t1)}
              -> {auto 0 _ : Elem HTMLElement (Types t2)}
              -> (obj : ElementInternals)
              -> (flags : Optional t1)
              -> (message : Optional String)
              -> (anchor : Optional t2)
              -> JSIO ()
  setValidity a b c d = primJS
                      $ ElementInternals.prim__setValidity a
                                                           (optUp b)
                                                           (toFFI c)
                                                           (optUp d)

  export
  setValidity' : (obj : ElementInternals) -> JSIO ()
  setValidity' a = primJS
                 $ ElementInternals.prim__setValidity a undef undef undef


namespace ErrorEvent

  export
  new :  (0 _ : JSType t1)
      => {auto 0 _ : Elem ErrorEventInit (Types t1)}
      -> (type : String)
      -> (eventInitDict : Optional t1)
      -> JSIO ErrorEvent
  new a b = primJS $ ErrorEvent.prim__new a (optUp b)

  export
  new' : (type : String) -> JSIO ErrorEvent
  new' a = primJS $ ErrorEvent.prim__new a undef

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

  public export
  CLOSED : Bits16
  CLOSED = 2

  public export
  CONNECTING : Bits16
  CONNECTING = 0

  public export
  OPEN : Bits16
  OPEN = 1

  export
  new :  (0 _ : JSType t1)
      => {auto 0 _ : Elem EventSourceInit (Types t1)}
      -> (url : String)
      -> (eventSourceInitDict : Optional t1)
      -> JSIO EventSource
  new a b = primJS $ EventSource.prim__new a (optUp b)

  export
  new' : (url : String) -> JSIO EventSource
  new' a = primJS $ EventSource.prim__new a undef

  export
  onerror : EventSource -> Attribute False Maybe EventHandlerNonNull
  onerror v = fromNullablePrim "EventSource.getonerror"
                               prim__onerror
                               prim__setOnerror
                               v

  export
  onmessage : EventSource -> Attribute False Maybe EventHandlerNonNull
  onmessage v = fromNullablePrim "EventSource.getonmessage"
                                 prim__onmessage
                                 prim__setOnmessage
                                 v

  export
  onopen : EventSource -> Attribute False Maybe EventHandlerNonNull
  onopen v = fromNullablePrim "EventSource.getonopen"
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
  withCredentials a = tryJS "EventSource.withCredentials"
                    $ EventSource.prim__withCredentials a

  export
  close : (obj : EventSource) -> JSIO ()
  close a = primJS $ EventSource.prim__close a


namespace External

  export
  AddSearchProvider : (obj : External) -> JSIO ()
  AddSearchProvider a = primJS $ External.prim__AddSearchProvider a

  export
  IsSearchProviderInstalled : (obj : External) -> JSIO ()
  IsSearchProviderInstalled a = primJS
                              $ External.prim__IsSearchProviderInstalled a


namespace FormDataEvent

  export
  new :  (0 _ : JSType t1)
      => {auto 0 _ : Elem FormDataEventInit (Types t1)}
      -> (type : String)
      -> (eventInitDict : t1)
      -> JSIO FormDataEvent
  new a b = primJS $ FormDataEvent.prim__new a (up b)

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
  item :  (obj : HTMLAllCollection)
       -> (nameOrIndex : Optional String)
       -> JSIO (Maybe (NS I [ HTMLCollection , Element ]))
  item a b = tryJS "HTMLAllCollection.item"
           $ HTMLAllCollection.prim__item a (toFFI b)

  export
  item' :  (obj : HTMLAllCollection)
        -> JSIO (Maybe (NS I [ HTMLCollection , Element ]))
  item' a = tryJS "HTMLAllCollection.item'"
          $ HTMLAllCollection.prim__item a undef

  export
  namedItem :  (obj : HTMLAllCollection)
            -> (name : String)
            -> JSIO (Maybe (NS I [ HTMLCollection , Element ]))
  namedItem a b = tryJS "HTMLAllCollection.namedItem"
                $ HTMLAllCollection.prim__namedItem a b


namespace HTMLAnchorElement

  export
  new : JSIO HTMLAnchorElement
  new = primJS $ HTMLAnchorElement.prim__new

  export
  charset : HTMLAnchorElement -> Attribute True I String
  charset v = fromPrim "HTMLAnchorElement.getcharset"
                       prim__charset
                       prim__setCharset
                       v

  export
  coords : HTMLAnchorElement -> Attribute True I String
  coords v = fromPrim "HTMLAnchorElement.getcoords"
                      prim__coords
                      prim__setCoords
                      v

  export
  download : HTMLAnchorElement -> Attribute True I String
  download v = fromPrim "HTMLAnchorElement.getdownload"
                        prim__download
                        prim__setDownload
                        v

  export
  hreflang : HTMLAnchorElement -> Attribute True I String
  hreflang v = fromPrim "HTMLAnchorElement.gethreflang"
                        prim__hreflang
                        prim__setHreflang
                        v

  export
  name : HTMLAnchorElement -> Attribute True I String
  name v = fromPrim "HTMLAnchorElement.getname" prim__name prim__setName v

  export
  ping : HTMLAnchorElement -> Attribute True I String
  ping v = fromPrim "HTMLAnchorElement.getping" prim__ping prim__setPing v

  export
  referrerPolicy : HTMLAnchorElement -> Attribute True I String
  referrerPolicy v = fromPrim "HTMLAnchorElement.getreferrerPolicy"
                              prim__referrerPolicy
                              prim__setReferrerPolicy
                              v

  export
  rel : HTMLAnchorElement -> Attribute True I String
  rel v = fromPrim "HTMLAnchorElement.getrel" prim__rel prim__setRel v

  export
  relList : (obj : HTMLAnchorElement) -> JSIO DOMTokenList
  relList a = primJS $ HTMLAnchorElement.prim__relList a

  export
  rev : HTMLAnchorElement -> Attribute True I String
  rev v = fromPrim "HTMLAnchorElement.getrev" prim__rev prim__setRev v

  export
  shape : HTMLAnchorElement -> Attribute True I String
  shape v = fromPrim "HTMLAnchorElement.getshape" prim__shape prim__setShape v

  export
  target : HTMLAnchorElement -> Attribute True I String
  target v = fromPrim "HTMLAnchorElement.gettarget"
                      prim__target
                      prim__setTarget
                      v

  export
  text : HTMLAnchorElement -> Attribute True I String
  text v = fromPrim "HTMLAnchorElement.gettext" prim__text prim__setText v

  export
  type : HTMLAnchorElement -> Attribute True I String
  type v = fromPrim "HTMLAnchorElement.gettype" prim__type prim__setType v


namespace HTMLAreaElement

  export
  new : JSIO HTMLAreaElement
  new = primJS $ HTMLAreaElement.prim__new

  export
  alt : HTMLAreaElement -> Attribute True I String
  alt v = fromPrim "HTMLAreaElement.getalt" prim__alt prim__setAlt v

  export
  coords : HTMLAreaElement -> Attribute True I String
  coords v = fromPrim "HTMLAreaElement.getcoords" prim__coords prim__setCoords v

  export
  download : HTMLAreaElement -> Attribute True I String
  download v = fromPrim "HTMLAreaElement.getdownload"
                        prim__download
                        prim__setDownload
                        v

  export
  noHref : HTMLAreaElement -> Attribute True I Bool
  noHref v = fromPrim "HTMLAreaElement.getnoHref" prim__noHref prim__setNoHref v

  export
  ping : HTMLAreaElement -> Attribute True I String
  ping v = fromPrim "HTMLAreaElement.getping" prim__ping prim__setPing v

  export
  referrerPolicy : HTMLAreaElement -> Attribute True I String
  referrerPolicy v = fromPrim "HTMLAreaElement.getreferrerPolicy"
                              prim__referrerPolicy
                              prim__setReferrerPolicy
                              v

  export
  rel : HTMLAreaElement -> Attribute True I String
  rel v = fromPrim "HTMLAreaElement.getrel" prim__rel prim__setRel v

  export
  relList : (obj : HTMLAreaElement) -> JSIO DOMTokenList
  relList a = primJS $ HTMLAreaElement.prim__relList a

  export
  shape : HTMLAreaElement -> Attribute True I String
  shape v = fromPrim "HTMLAreaElement.getshape" prim__shape prim__setShape v

  export
  target : HTMLAreaElement -> Attribute True I String
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
  clear : HTMLBRElement -> Attribute True I String
  clear v = fromPrim "HTMLBRElement.getclear" prim__clear prim__setClear v


namespace HTMLBaseElement

  export
  new : JSIO HTMLBaseElement
  new = primJS $ HTMLBaseElement.prim__new

  export
  href : HTMLBaseElement -> Attribute True I String
  href v = fromPrim "HTMLBaseElement.gethref" prim__href prim__setHref v

  export
  target : HTMLBaseElement -> Attribute True I String
  target v = fromPrim "HTMLBaseElement.gettarget" prim__target prim__setTarget v


namespace HTMLBodyElement

  export
  new : JSIO HTMLBodyElement
  new = primJS $ HTMLBodyElement.prim__new

  export
  aLink : HTMLBodyElement -> Attribute True I String
  aLink v = fromPrim "HTMLBodyElement.getaLink" prim__aLink prim__setALink v

  export
  background : HTMLBodyElement -> Attribute True I String
  background v = fromPrim "HTMLBodyElement.getbackground"
                          prim__background
                          prim__setBackground
                          v

  export
  bgColor : HTMLBodyElement -> Attribute True I String
  bgColor v = fromPrim "HTMLBodyElement.getbgColor"
                       prim__bgColor
                       prim__setBgColor
                       v

  export
  link : HTMLBodyElement -> Attribute True I String
  link v = fromPrim "HTMLBodyElement.getlink" prim__link prim__setLink v

  export
  text : HTMLBodyElement -> Attribute True I String
  text v = fromPrim "HTMLBodyElement.gettext" prim__text prim__setText v

  export
  vLink : HTMLBodyElement -> Attribute True I String
  vLink v = fromPrim "HTMLBodyElement.getvLink" prim__vLink prim__setVLink v


namespace HTMLButtonElement

  export
  new : JSIO HTMLButtonElement
  new = primJS $ HTMLButtonElement.prim__new

  export
  disabled : HTMLButtonElement -> Attribute True I Bool
  disabled v = fromPrim "HTMLButtonElement.getdisabled"
                        prim__disabled
                        prim__setDisabled
                        v

  export
  form : (obj : HTMLButtonElement) -> JSIO (Maybe HTMLFormElement)
  form a = tryJS "HTMLButtonElement.form" $ HTMLButtonElement.prim__form a

  export
  formAction : HTMLButtonElement -> Attribute True I String
  formAction v = fromPrim "HTMLButtonElement.getformAction"
                          prim__formAction
                          prim__setFormAction
                          v

  export
  formEnctype : HTMLButtonElement -> Attribute True I String
  formEnctype v = fromPrim "HTMLButtonElement.getformEnctype"
                           prim__formEnctype
                           prim__setFormEnctype
                           v

  export
  formMethod : HTMLButtonElement -> Attribute True I String
  formMethod v = fromPrim "HTMLButtonElement.getformMethod"
                          prim__formMethod
                          prim__setFormMethod
                          v

  export
  formNoValidate : HTMLButtonElement -> Attribute True I Bool
  formNoValidate v = fromPrim "HTMLButtonElement.getformNoValidate"
                              prim__formNoValidate
                              prim__setFormNoValidate
                              v

  export
  formTarget : HTMLButtonElement -> Attribute True I String
  formTarget v = fromPrim "HTMLButtonElement.getformTarget"
                          prim__formTarget
                          prim__setFormTarget
                          v

  export
  labels : (obj : HTMLButtonElement) -> JSIO NodeList
  labels a = primJS $ HTMLButtonElement.prim__labels a

  export
  name : HTMLButtonElement -> Attribute True I String
  name v = fromPrim "HTMLButtonElement.getname" prim__name prim__setName v

  export
  type : HTMLButtonElement -> Attribute True I String
  type v = fromPrim "HTMLButtonElement.gettype" prim__type prim__setType v

  export
  validationMessage : (obj : HTMLButtonElement) -> JSIO String
  validationMessage a = primJS $ HTMLButtonElement.prim__validationMessage a

  export
  validity : (obj : HTMLButtonElement) -> JSIO ValidityState
  validity a = primJS $ HTMLButtonElement.prim__validity a

  export
  value : HTMLButtonElement -> Attribute True I String
  value v = fromPrim "HTMLButtonElement.getvalue" prim__value prim__setValue v

  export
  willValidate : (obj : HTMLButtonElement) -> JSIO Bool
  willValidate a = tryJS "HTMLButtonElement.willValidate"
                 $ HTMLButtonElement.prim__willValidate a

  export
  checkValidity : (obj : HTMLButtonElement) -> JSIO Bool
  checkValidity a = tryJS "HTMLButtonElement.checkValidity"
                  $ HTMLButtonElement.prim__checkValidity a

  export
  reportValidity : (obj : HTMLButtonElement) -> JSIO Bool
  reportValidity a = tryJS "HTMLButtonElement.reportValidity"
                   $ HTMLButtonElement.prim__reportValidity a

  export
  setCustomValidity : (obj : HTMLButtonElement) -> (error : String) -> JSIO ()
  setCustomValidity a b = primJS $ HTMLButtonElement.prim__setCustomValidity a b


namespace HTMLCanvasElement

  export
  new : JSIO HTMLCanvasElement
  new = primJS $ HTMLCanvasElement.prim__new

  export
  height : HTMLCanvasElement -> Attribute True I Bits32
  height v = fromPrim "HTMLCanvasElement.getheight"
                      prim__height
                      prim__setHeight
                      v

  export
  width : HTMLCanvasElement -> Attribute True I Bits32
  width v = fromPrim "HTMLCanvasElement.getwidth" prim__width prim__setWidth v

  export
  getContext :  (obj : HTMLCanvasElement)
             -> (contextId : String)
             -> (options : Optional Any)
             -> JSIO (Maybe (NS I [ CanvasRenderingContext2D
                                  , ImageBitmapRenderingContext
                                  , WebGLRenderingContext
                                  , WebGL2RenderingContext
                                  ]))
  getContext a b c = tryJS "HTMLCanvasElement.getContext"
                   $ HTMLCanvasElement.prim__getContext a b (toFFI c)

  export
  getContext' :  (obj : HTMLCanvasElement)
              -> (contextId : String)
              -> JSIO (Maybe (NS I [ CanvasRenderingContext2D
                                   , ImageBitmapRenderingContext
                                   , WebGLRenderingContext
                                   , WebGL2RenderingContext
                                   ]))
  getContext' a b = tryJS "HTMLCanvasElement.getContext'"
                  $ HTMLCanvasElement.prim__getContext a b undef

  export
  toBlob :  (obj : HTMLCanvasElement)
         -> (callback : BlobCallback)
         -> (type : Optional String)
         -> (quality : Optional Any)
         -> JSIO ()
  toBlob a b c d = primJS
                 $ HTMLCanvasElement.prim__toBlob a b (toFFI c) (toFFI d)

  export
  toBlob' : (obj : HTMLCanvasElement) -> (callback : BlobCallback) -> JSIO ()
  toBlob' a b = primJS $ HTMLCanvasElement.prim__toBlob a b undef undef

  export
  toDataURL :  (obj : HTMLCanvasElement)
            -> (type : Optional String)
            -> (quality : Optional Any)
            -> JSIO String
  toDataURL a b c = primJS
                  $ HTMLCanvasElement.prim__toDataURL a (toFFI b) (toFFI c)

  export
  toDataURL' : (obj : HTMLCanvasElement) -> JSIO String
  toDataURL' a = primJS $ HTMLCanvasElement.prim__toDataURL a undef undef

  export
  transferControlToOffscreen : (obj : HTMLCanvasElement) -> JSIO OffscreenCanvas
  transferControlToOffscreen a = primJS
                               $ HTMLCanvasElement.prim__transferControlToOffscreen a


namespace HTMLDListElement

  export
  new : JSIO HTMLDListElement
  new = primJS $ HTMLDListElement.prim__new

  export
  compact : HTMLDListElement -> Attribute True I Bool
  compact v = fromPrim "HTMLDListElement.getcompact"
                       prim__compact
                       prim__setCompact
                       v


namespace HTMLDataElement

  export
  new : JSIO HTMLDataElement
  new = primJS $ HTMLDataElement.prim__new

  export
  value : HTMLDataElement -> Attribute True I String
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
  open_ : HTMLDetailsElement -> Attribute True I Bool
  open_ v = fromPrim "HTMLDetailsElement.getopen" prim__open prim__setOpen v


namespace HTMLDialogElement

  export
  new : JSIO HTMLDialogElement
  new = primJS $ HTMLDialogElement.prim__new

  export
  open_ : HTMLDialogElement -> Attribute True I Bool
  open_ v = fromPrim "HTMLDialogElement.getopen" prim__open prim__setOpen v

  export
  returnValue : HTMLDialogElement -> Attribute True I String
  returnValue v = fromPrim "HTMLDialogElement.getreturnValue"
                           prim__returnValue
                           prim__setReturnValue
                           v

  export
  close :  (obj : HTMLDialogElement)
        -> (returnValue : Optional String)
        -> JSIO ()
  close a b = primJS $ HTMLDialogElement.prim__close a (toFFI b)

  export
  close' : (obj : HTMLDialogElement) -> JSIO ()
  close' a = primJS $ HTMLDialogElement.prim__close a undef

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
  compact : HTMLDirectoryElement -> Attribute True I Bool
  compact v = fromPrim "HTMLDirectoryElement.getcompact"
                       prim__compact
                       prim__setCompact
                       v


namespace HTMLDivElement

  export
  new : JSIO HTMLDivElement
  new = primJS $ HTMLDivElement.prim__new

  export
  align : HTMLDivElement -> Attribute True I String
  align v = fromPrim "HTMLDivElement.getalign" prim__align prim__setAlign v


namespace HTMLElement

  export
  new : JSIO HTMLElement
  new = primJS $ HTMLElement.prim__new

  export
  accessKey :  (0 _ : JSType t)
            => {auto 0 _ : Elem HTMLElement (Types t)}
            -> t
            -> Attribute True I String
  accessKey v = fromPrim "HTMLElement.getaccessKey"
                         prim__accessKey
                         prim__setAccessKey
                         (v :> HTMLElement)

  export
  accessKeyLabel :  (0 _ : JSType t1)
                 => {auto 0 _ : Elem HTMLElement (Types t1)}
                 -> (obj : t1)
                 -> JSIO String
  accessKeyLabel a = primJS $ HTMLElement.prim__accessKeyLabel (up a)

  export
  autocapitalize :  (0 _ : JSType t)
                 => {auto 0 _ : Elem HTMLElement (Types t)}
                 -> t
                 -> Attribute True I String
  autocapitalize v = fromPrim "HTMLElement.getautocapitalize"
                              prim__autocapitalize
                              prim__setAutocapitalize
                              (v :> HTMLElement)

  export
  dir :  (0 _ : JSType t)
      => {auto 0 _ : Elem HTMLElement (Types t)}
      -> t
      -> Attribute True I String
  dir v = fromPrim "HTMLElement.getdir"
                   prim__dir
                   prim__setDir
                   (v :> HTMLElement)

  export
  draggable :  (0 _ : JSType t)
            => {auto 0 _ : Elem HTMLElement (Types t)}
            -> t
            -> Attribute True I Bool
  draggable v = fromPrim "HTMLElement.getdraggable"
                         prim__draggable
                         prim__setDraggable
                         (v :> HTMLElement)

  export
  hidden :  (0 _ : JSType t)
         => {auto 0 _ : Elem HTMLElement (Types t)}
         -> t
         -> Attribute True I Bool
  hidden v = fromPrim "HTMLElement.gethidden"
                      prim__hidden
                      prim__setHidden
                      (v :> HTMLElement)

  export
  innerText :  (0 _ : JSType t)
            => {auto 0 _ : Elem HTMLElement (Types t)}
            -> t
            -> Attribute True I String
  innerText v = fromPrim "HTMLElement.getinnerText"
                         prim__innerText
                         prim__setInnerText
                         (v :> HTMLElement)

  export
  lang :  (0 _ : JSType t)
       => {auto 0 _ : Elem HTMLElement (Types t)}
       -> t
       -> Attribute True I String
  lang v = fromPrim "HTMLElement.getlang"
                    prim__lang
                    prim__setLang
                    (v :> HTMLElement)

  export
  spellcheck :  (0 _ : JSType t)
             => {auto 0 _ : Elem HTMLElement (Types t)}
             -> t
             -> Attribute True I Bool
  spellcheck v = fromPrim "HTMLElement.getspellcheck"
                          prim__spellcheck
                          prim__setSpellcheck
                          (v :> HTMLElement)

  export
  title :  (0 _ : JSType t)
        => {auto 0 _ : Elem HTMLElement (Types t)}
        -> t
        -> Attribute True I String
  title v = fromPrim "HTMLElement.gettitle"
                     prim__title
                     prim__setTitle
                     (v :> HTMLElement)

  export
  translate :  (0 _ : JSType t)
            => {auto 0 _ : Elem HTMLElement (Types t)}
            -> t
            -> Attribute True I Bool
  translate v = fromPrim "HTMLElement.gettranslate"
                         prim__translate
                         prim__setTranslate
                         (v :> HTMLElement)

  export
  attachInternals :  (0 _ : JSType t1)
                  => {auto 0 _ : Elem HTMLElement (Types t1)}
                  -> (obj : t1)
                  -> JSIO ElementInternals
  attachInternals a = primJS $ HTMLElement.prim__attachInternals (up a)

  export
  click :  (0 _ : JSType t1)
        => {auto 0 _ : Elem HTMLElement (Types t1)}
        -> (obj : t1)
        -> JSIO ()
  click a = primJS $ HTMLElement.prim__click (up a)


namespace HTMLEmbedElement

  export
  new : JSIO HTMLEmbedElement
  new = primJS $ HTMLEmbedElement.prim__new

  export
  align : HTMLEmbedElement -> Attribute True I String
  align v = fromPrim "HTMLEmbedElement.getalign" prim__align prim__setAlign v

  export
  height : HTMLEmbedElement -> Attribute True I String
  height v = fromPrim "HTMLEmbedElement.getheight"
                      prim__height
                      prim__setHeight
                      v

  export
  name : HTMLEmbedElement -> Attribute True I String
  name v = fromPrim "HTMLEmbedElement.getname" prim__name prim__setName v

  export
  src : HTMLEmbedElement -> Attribute True I String
  src v = fromPrim "HTMLEmbedElement.getsrc" prim__src prim__setSrc v

  export
  type : HTMLEmbedElement -> Attribute True I String
  type v = fromPrim "HTMLEmbedElement.gettype" prim__type prim__setType v

  export
  width : HTMLEmbedElement -> Attribute True I String
  width v = fromPrim "HTMLEmbedElement.getwidth" prim__width prim__setWidth v

  export
  getSVGDocument : (obj : HTMLEmbedElement) -> JSIO (Maybe Document)
  getSVGDocument a = tryJS "HTMLEmbedElement.getSVGDocument"
                   $ HTMLEmbedElement.prim__getSVGDocument a


namespace HTMLFieldSetElement

  export
  new : JSIO HTMLFieldSetElement
  new = primJS $ HTMLFieldSetElement.prim__new

  export
  disabled : HTMLFieldSetElement -> Attribute True I Bool
  disabled v = fromPrim "HTMLFieldSetElement.getdisabled"
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
  name : HTMLFieldSetElement -> Attribute True I String
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
  willValidate a = tryJS "HTMLFieldSetElement.willValidate"
                 $ HTMLFieldSetElement.prim__willValidate a

  export
  checkValidity : (obj : HTMLFieldSetElement) -> JSIO Bool
  checkValidity a = tryJS "HTMLFieldSetElement.checkValidity"
                  $ HTMLFieldSetElement.prim__checkValidity a

  export
  reportValidity : (obj : HTMLFieldSetElement) -> JSIO Bool
  reportValidity a = tryJS "HTMLFieldSetElement.reportValidity"
                   $ HTMLFieldSetElement.prim__reportValidity a

  export
  setCustomValidity : (obj : HTMLFieldSetElement) -> (error : String) -> JSIO ()
  setCustomValidity a b = primJS
                        $ HTMLFieldSetElement.prim__setCustomValidity a b


namespace HTMLFontElement

  export
  new : JSIO HTMLFontElement
  new = primJS $ HTMLFontElement.prim__new

  export
  color : HTMLFontElement -> Attribute True I String
  color v = fromPrim "HTMLFontElement.getcolor" prim__color prim__setColor v

  export
  face : HTMLFontElement -> Attribute True I String
  face v = fromPrim "HTMLFontElement.getface" prim__face prim__setFace v

  export
  size : HTMLFontElement -> Attribute True I String
  size v = fromPrim "HTMLFontElement.getsize" prim__size prim__setSize v


namespace HTMLFormControlsCollection

  export
  namedItem :  (obj : HTMLFormControlsCollection)
            -> (name : String)
            -> JSIO (Maybe (NS I [ RadioNodeList , Element ]))
  namedItem a b = tryJS "HTMLFormControlsCollection.namedItem"
                $ HTMLFormControlsCollection.prim__namedItem a b


namespace HTMLFormElement

  export
  new : JSIO HTMLFormElement
  new = primJS $ HTMLFormElement.prim__new

  export
  get : (obj : HTMLFormElement) -> (index : Bits32) -> JSIO Element
  get a b = primJS $ HTMLFormElement.prim__get a b

  export
  get1 :  (obj : HTMLFormElement)
       -> (name : String)
       -> JSIO (NS I [ RadioNodeList , Element ])
  get1 a b = tryJS "HTMLFormElement.get1" $ HTMLFormElement.prim__get1 a b

  export
  acceptCharset : HTMLFormElement -> Attribute True I String
  acceptCharset v = fromPrim "HTMLFormElement.getacceptCharset"
                             prim__acceptCharset
                             prim__setAcceptCharset
                             v

  export
  action : HTMLFormElement -> Attribute True I String
  action v = fromPrim "HTMLFormElement.getaction" prim__action prim__setAction v

  export
  autocomplete : HTMLFormElement -> Attribute True I String
  autocomplete v = fromPrim "HTMLFormElement.getautocomplete"
                            prim__autocomplete
                            prim__setAutocomplete
                            v

  export
  elements : (obj : HTMLFormElement) -> JSIO HTMLFormControlsCollection
  elements a = primJS $ HTMLFormElement.prim__elements a

  export
  encoding : HTMLFormElement -> Attribute True I String
  encoding v = fromPrim "HTMLFormElement.getencoding"
                        prim__encoding
                        prim__setEncoding
                        v

  export
  enctype : HTMLFormElement -> Attribute True I String
  enctype v = fromPrim "HTMLFormElement.getenctype"
                       prim__enctype
                       prim__setEnctype
                       v

  export
  length : (obj : HTMLFormElement) -> JSIO Bits32
  length a = primJS $ HTMLFormElement.prim__length a

  export
  method : HTMLFormElement -> Attribute True I String
  method v = fromPrim "HTMLFormElement.getmethod" prim__method prim__setMethod v

  export
  name : HTMLFormElement -> Attribute True I String
  name v = fromPrim "HTMLFormElement.getname" prim__name prim__setName v

  export
  noValidate : HTMLFormElement -> Attribute True I Bool
  noValidate v = fromPrim "HTMLFormElement.getnoValidate"
                          prim__noValidate
                          prim__setNoValidate
                          v

  export
  rel : HTMLFormElement -> Attribute True I String
  rel v = fromPrim "HTMLFormElement.getrel" prim__rel prim__setRel v

  export
  relList : (obj : HTMLFormElement) -> JSIO DOMTokenList
  relList a = primJS $ HTMLFormElement.prim__relList a

  export
  target : HTMLFormElement -> Attribute True I String
  target v = fromPrim "HTMLFormElement.gettarget" prim__target prim__setTarget v

  export
  checkValidity : (obj : HTMLFormElement) -> JSIO Bool
  checkValidity a = tryJS "HTMLFormElement.checkValidity"
                  $ HTMLFormElement.prim__checkValidity a

  export
  reportValidity : (obj : HTMLFormElement) -> JSIO Bool
  reportValidity a = tryJS "HTMLFormElement.reportValidity"
                   $ HTMLFormElement.prim__reportValidity a

  export
  requestSubmit :  (0 _ : JSType t1)
                => {auto 0 _ : Elem HTMLElement (Types t1)}
                -> (obj : HTMLFormElement)
                -> (submitter : Optional (Maybe t1))
                -> JSIO ()
  requestSubmit a b = primJS $ HTMLFormElement.prim__requestSubmit a (omyUp b)

  export
  requestSubmit' : (obj : HTMLFormElement) -> JSIO ()
  requestSubmit' a = primJS $ HTMLFormElement.prim__requestSubmit a undef

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
  contentDocument a = tryJS "HTMLFrameElement.contentDocument"
                    $ HTMLFrameElement.prim__contentDocument a

  export
  contentWindow : (obj : HTMLFrameElement) -> JSIO (Maybe WindowProxy)
  contentWindow a = tryJS "HTMLFrameElement.contentWindow"
                  $ HTMLFrameElement.prim__contentWindow a

  export
  frameBorder : HTMLFrameElement -> Attribute True I String
  frameBorder v = fromPrim "HTMLFrameElement.getframeBorder"
                           prim__frameBorder
                           prim__setFrameBorder
                           v

  export
  longDesc : HTMLFrameElement -> Attribute True I String
  longDesc v = fromPrim "HTMLFrameElement.getlongDesc"
                        prim__longDesc
                        prim__setLongDesc
                        v

  export
  marginHeight : HTMLFrameElement -> Attribute True I String
  marginHeight v = fromPrim "HTMLFrameElement.getmarginHeight"
                            prim__marginHeight
                            prim__setMarginHeight
                            v

  export
  marginWidth : HTMLFrameElement -> Attribute True I String
  marginWidth v = fromPrim "HTMLFrameElement.getmarginWidth"
                           prim__marginWidth
                           prim__setMarginWidth
                           v

  export
  name : HTMLFrameElement -> Attribute True I String
  name v = fromPrim "HTMLFrameElement.getname" prim__name prim__setName v

  export
  noResize : HTMLFrameElement -> Attribute True I Bool
  noResize v = fromPrim "HTMLFrameElement.getnoResize"
                        prim__noResize
                        prim__setNoResize
                        v

  export
  scrolling : HTMLFrameElement -> Attribute True I String
  scrolling v = fromPrim "HTMLFrameElement.getscrolling"
                         prim__scrolling
                         prim__setScrolling
                         v

  export
  src : HTMLFrameElement -> Attribute True I String
  src v = fromPrim "HTMLFrameElement.getsrc" prim__src prim__setSrc v


namespace HTMLFrameSetElement

  export
  new : JSIO HTMLFrameSetElement
  new = primJS $ HTMLFrameSetElement.prim__new

  export
  cols : HTMLFrameSetElement -> Attribute True I String
  cols v = fromPrim "HTMLFrameSetElement.getcols" prim__cols prim__setCols v

  export
  rows : HTMLFrameSetElement -> Attribute True I String
  rows v = fromPrim "HTMLFrameSetElement.getrows" prim__rows prim__setRows v


namespace HTMLHRElement

  export
  new : JSIO HTMLHRElement
  new = primJS $ HTMLHRElement.prim__new

  export
  align : HTMLHRElement -> Attribute True I String
  align v = fromPrim "HTMLHRElement.getalign" prim__align prim__setAlign v

  export
  color : HTMLHRElement -> Attribute True I String
  color v = fromPrim "HTMLHRElement.getcolor" prim__color prim__setColor v

  export
  noShade : HTMLHRElement -> Attribute True I Bool
  noShade v = fromPrim "HTMLHRElement.getnoShade"
                       prim__noShade
                       prim__setNoShade
                       v

  export
  size : HTMLHRElement -> Attribute True I String
  size v = fromPrim "HTMLHRElement.getsize" prim__size prim__setSize v

  export
  width : HTMLHRElement -> Attribute True I String
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
  align : HTMLHeadingElement -> Attribute True I String
  align v = fromPrim "HTMLHeadingElement.getalign" prim__align prim__setAlign v


namespace HTMLHtmlElement

  export
  new : JSIO HTMLHtmlElement
  new = primJS $ HTMLHtmlElement.prim__new

  export
  version : HTMLHtmlElement -> Attribute True I String
  version v = fromPrim "HTMLHtmlElement.getversion"
                       prim__version
                       prim__setVersion
                       v


namespace HTMLIFrameElement

  export
  new : JSIO HTMLIFrameElement
  new = primJS $ HTMLIFrameElement.prim__new

  export
  align : HTMLIFrameElement -> Attribute True I String
  align v = fromPrim "HTMLIFrameElement.getalign" prim__align prim__setAlign v

  export
  allow : HTMLIFrameElement -> Attribute True I String
  allow v = fromPrim "HTMLIFrameElement.getallow" prim__allow prim__setAllow v

  export
  allowFullscreen : HTMLIFrameElement -> Attribute True I Bool
  allowFullscreen v = fromPrim "HTMLIFrameElement.getallowFullscreen"
                               prim__allowFullscreen
                               prim__setAllowFullscreen
                               v

  export
  contentDocument : (obj : HTMLIFrameElement) -> JSIO (Maybe Document)
  contentDocument a = tryJS "HTMLIFrameElement.contentDocument"
                    $ HTMLIFrameElement.prim__contentDocument a

  export
  contentWindow : (obj : HTMLIFrameElement) -> JSIO (Maybe WindowProxy)
  contentWindow a = tryJS "HTMLIFrameElement.contentWindow"
                  $ HTMLIFrameElement.prim__contentWindow a

  export
  frameBorder : HTMLIFrameElement -> Attribute True I String
  frameBorder v = fromPrim "HTMLIFrameElement.getframeBorder"
                           prim__frameBorder
                           prim__setFrameBorder
                           v

  export
  height : HTMLIFrameElement -> Attribute True I String
  height v = fromPrim "HTMLIFrameElement.getheight"
                      prim__height
                      prim__setHeight
                      v

  export
  loading : HTMLIFrameElement -> Attribute True I String
  loading v = fromPrim "HTMLIFrameElement.getloading"
                       prim__loading
                       prim__setLoading
                       v

  export
  longDesc : HTMLIFrameElement -> Attribute True I String
  longDesc v = fromPrim "HTMLIFrameElement.getlongDesc"
                        prim__longDesc
                        prim__setLongDesc
                        v

  export
  marginHeight : HTMLIFrameElement -> Attribute True I String
  marginHeight v = fromPrim "HTMLIFrameElement.getmarginHeight"
                            prim__marginHeight
                            prim__setMarginHeight
                            v

  export
  marginWidth : HTMLIFrameElement -> Attribute True I String
  marginWidth v = fromPrim "HTMLIFrameElement.getmarginWidth"
                           prim__marginWidth
                           prim__setMarginWidth
                           v

  export
  name : HTMLIFrameElement -> Attribute True I String
  name v = fromPrim "HTMLIFrameElement.getname" prim__name prim__setName v

  export
  referrerPolicy : HTMLIFrameElement -> Attribute True I String
  referrerPolicy v = fromPrim "HTMLIFrameElement.getreferrerPolicy"
                              prim__referrerPolicy
                              prim__setReferrerPolicy
                              v

  export
  sandbox : (obj : HTMLIFrameElement) -> JSIO DOMTokenList
  sandbox a = primJS $ HTMLIFrameElement.prim__sandbox a

  export
  scrolling : HTMLIFrameElement -> Attribute True I String
  scrolling v = fromPrim "HTMLIFrameElement.getscrolling"
                         prim__scrolling
                         prim__setScrolling
                         v

  export
  src : HTMLIFrameElement -> Attribute True I String
  src v = fromPrim "HTMLIFrameElement.getsrc" prim__src prim__setSrc v

  export
  srcdoc : HTMLIFrameElement -> Attribute True I String
  srcdoc v = fromPrim "HTMLIFrameElement.getsrcdoc"
                      prim__srcdoc
                      prim__setSrcdoc
                      v

  export
  width : HTMLIFrameElement -> Attribute True I String
  width v = fromPrim "HTMLIFrameElement.getwidth" prim__width prim__setWidth v

  export
  getSVGDocument : (obj : HTMLIFrameElement) -> JSIO (Maybe Document)
  getSVGDocument a = tryJS "HTMLIFrameElement.getSVGDocument"
                   $ HTMLIFrameElement.prim__getSVGDocument a


namespace HTMLImageElement

  export
  new : JSIO HTMLImageElement
  new = primJS $ HTMLImageElement.prim__new

  export
  align : HTMLImageElement -> Attribute True I String
  align v = fromPrim "HTMLImageElement.getalign" prim__align prim__setAlign v

  export
  alt : HTMLImageElement -> Attribute True I String
  alt v = fromPrim "HTMLImageElement.getalt" prim__alt prim__setAlt v

  export
  border : HTMLImageElement -> Attribute True I String
  border v = fromPrim "HTMLImageElement.getborder"
                      prim__border
                      prim__setBorder
                      v

  export
  complete : (obj : HTMLImageElement) -> JSIO Bool
  complete a = tryJS "HTMLImageElement.complete"
             $ HTMLImageElement.prim__complete a

  export
  crossOrigin : HTMLImageElement -> Attribute False Maybe String
  crossOrigin v = fromNullablePrim "HTMLImageElement.getcrossOrigin"
                                   prim__crossOrigin
                                   prim__setCrossOrigin
                                   v

  export
  currentSrc : (obj : HTMLImageElement) -> JSIO String
  currentSrc a = primJS $ HTMLImageElement.prim__currentSrc a

  export
  decoding : HTMLImageElement -> Attribute True I String
  decoding v = fromPrim "HTMLImageElement.getdecoding"
                        prim__decoding
                        prim__setDecoding
                        v

  export
  height : HTMLImageElement -> Attribute True I Bits32
  height v = fromPrim "HTMLImageElement.getheight"
                      prim__height
                      prim__setHeight
                      v

  export
  hspace : HTMLImageElement -> Attribute True I Bits32
  hspace v = fromPrim "HTMLImageElement.gethspace"
                      prim__hspace
                      prim__setHspace
                      v

  export
  isMap : HTMLImageElement -> Attribute True I Bool
  isMap v = fromPrim "HTMLImageElement.getisMap" prim__isMap prim__setIsMap v

  export
  loading : HTMLImageElement -> Attribute True I String
  loading v = fromPrim "HTMLImageElement.getloading"
                       prim__loading
                       prim__setLoading
                       v

  export
  longDesc : HTMLImageElement -> Attribute True I String
  longDesc v = fromPrim "HTMLImageElement.getlongDesc"
                        prim__longDesc
                        prim__setLongDesc
                        v

  export
  lowsrc : HTMLImageElement -> Attribute True I String
  lowsrc v = fromPrim "HTMLImageElement.getlowsrc"
                      prim__lowsrc
                      prim__setLowsrc
                      v

  export
  name : HTMLImageElement -> Attribute True I String
  name v = fromPrim "HTMLImageElement.getname" prim__name prim__setName v

  export
  naturalHeight : (obj : HTMLImageElement) -> JSIO Bits32
  naturalHeight a = primJS $ HTMLImageElement.prim__naturalHeight a

  export
  naturalWidth : (obj : HTMLImageElement) -> JSIO Bits32
  naturalWidth a = primJS $ HTMLImageElement.prim__naturalWidth a

  export
  referrerPolicy : HTMLImageElement -> Attribute True I String
  referrerPolicy v = fromPrim "HTMLImageElement.getreferrerPolicy"
                              prim__referrerPolicy
                              prim__setReferrerPolicy
                              v

  export
  sizes : HTMLImageElement -> Attribute True I String
  sizes v = fromPrim "HTMLImageElement.getsizes" prim__sizes prim__setSizes v

  export
  src : HTMLImageElement -> Attribute True I String
  src v = fromPrim "HTMLImageElement.getsrc" prim__src prim__setSrc v

  export
  srcset : HTMLImageElement -> Attribute True I String
  srcset v = fromPrim "HTMLImageElement.getsrcset"
                      prim__srcset
                      prim__setSrcset
                      v

  export
  useMap : HTMLImageElement -> Attribute True I String
  useMap v = fromPrim "HTMLImageElement.getuseMap"
                      prim__useMap
                      prim__setUseMap
                      v

  export
  vspace : HTMLImageElement -> Attribute True I Bits32
  vspace v = fromPrim "HTMLImageElement.getvspace"
                      prim__vspace
                      prim__setVspace
                      v

  export
  width : HTMLImageElement -> Attribute True I Bits32
  width v = fromPrim "HTMLImageElement.getwidth" prim__width prim__setWidth v

  export
  decode : (obj : HTMLImageElement) -> JSIO (Promise Undefined)
  decode a = primJS $ HTMLImageElement.prim__decode a


namespace HTMLInputElement

  export
  new : JSIO HTMLInputElement
  new = primJS $ HTMLInputElement.prim__new

  export
  accept : HTMLInputElement -> Attribute True I String
  accept v = fromPrim "HTMLInputElement.getaccept"
                      prim__accept
                      prim__setAccept
                      v

  export
  align : HTMLInputElement -> Attribute True I String
  align v = fromPrim "HTMLInputElement.getalign" prim__align prim__setAlign v

  export
  alt : HTMLInputElement -> Attribute True I String
  alt v = fromPrim "HTMLInputElement.getalt" prim__alt prim__setAlt v

  export
  autocomplete : HTMLInputElement -> Attribute True I String
  autocomplete v = fromPrim "HTMLInputElement.getautocomplete"
                            prim__autocomplete
                            prim__setAutocomplete
                            v

  export
  checked : HTMLInputElement -> Attribute True I Bool
  checked v = fromPrim "HTMLInputElement.getchecked"
                       prim__checked
                       prim__setChecked
                       v

  export
  defaultChecked : HTMLInputElement -> Attribute True I Bool
  defaultChecked v = fromPrim "HTMLInputElement.getdefaultChecked"
                              prim__defaultChecked
                              prim__setDefaultChecked
                              v

  export
  defaultValue : HTMLInputElement -> Attribute True I String
  defaultValue v = fromPrim "HTMLInputElement.getdefaultValue"
                            prim__defaultValue
                            prim__setDefaultValue
                            v

  export
  dirName : HTMLInputElement -> Attribute True I String
  dirName v = fromPrim "HTMLInputElement.getdirName"
                       prim__dirName
                       prim__setDirName
                       v

  export
  disabled : HTMLInputElement -> Attribute True I Bool
  disabled v = fromPrim "HTMLInputElement.getdisabled"
                        prim__disabled
                        prim__setDisabled
                        v

  export
  files : HTMLInputElement -> Attribute False Maybe FileList
  files v = fromNullablePrim "HTMLInputElement.getfiles"
                             prim__files
                             prim__setFiles
                             v

  export
  form : (obj : HTMLInputElement) -> JSIO (Maybe HTMLFormElement)
  form a = tryJS "HTMLInputElement.form" $ HTMLInputElement.prim__form a

  export
  formAction : HTMLInputElement -> Attribute True I String
  formAction v = fromPrim "HTMLInputElement.getformAction"
                          prim__formAction
                          prim__setFormAction
                          v

  export
  formEnctype : HTMLInputElement -> Attribute True I String
  formEnctype v = fromPrim "HTMLInputElement.getformEnctype"
                           prim__formEnctype
                           prim__setFormEnctype
                           v

  export
  formMethod : HTMLInputElement -> Attribute True I String
  formMethod v = fromPrim "HTMLInputElement.getformMethod"
                          prim__formMethod
                          prim__setFormMethod
                          v

  export
  formNoValidate : HTMLInputElement -> Attribute True I Bool
  formNoValidate v = fromPrim "HTMLInputElement.getformNoValidate"
                              prim__formNoValidate
                              prim__setFormNoValidate
                              v

  export
  formTarget : HTMLInputElement -> Attribute True I String
  formTarget v = fromPrim "HTMLInputElement.getformTarget"
                          prim__formTarget
                          prim__setFormTarget
                          v

  export
  height : HTMLInputElement -> Attribute True I Bits32
  height v = fromPrim "HTMLInputElement.getheight"
                      prim__height
                      prim__setHeight
                      v

  export
  indeterminate : HTMLInputElement -> Attribute True I Bool
  indeterminate v = fromPrim "HTMLInputElement.getindeterminate"
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
  max : HTMLInputElement -> Attribute True I String
  max v = fromPrim "HTMLInputElement.getmax" prim__max prim__setMax v

  export
  maxLength : HTMLInputElement -> Attribute True I Int32
  maxLength v = fromPrim "HTMLInputElement.getmaxLength"
                         prim__maxLength
                         prim__setMaxLength
                         v

  export
  min : HTMLInputElement -> Attribute True I String
  min v = fromPrim "HTMLInputElement.getmin" prim__min prim__setMin v

  export
  minLength : HTMLInputElement -> Attribute True I Int32
  minLength v = fromPrim "HTMLInputElement.getminLength"
                         prim__minLength
                         prim__setMinLength
                         v

  export
  multiple : HTMLInputElement -> Attribute True I Bool
  multiple v = fromPrim "HTMLInputElement.getmultiple"
                        prim__multiple
                        prim__setMultiple
                        v

  export
  name : HTMLInputElement -> Attribute True I String
  name v = fromPrim "HTMLInputElement.getname" prim__name prim__setName v

  export
  pattern : HTMLInputElement -> Attribute True I String
  pattern v = fromPrim "HTMLInputElement.getpattern"
                       prim__pattern
                       prim__setPattern
                       v

  export
  placeholder : HTMLInputElement -> Attribute True I String
  placeholder v = fromPrim "HTMLInputElement.getplaceholder"
                           prim__placeholder
                           prim__setPlaceholder
                           v

  export
  readOnly : HTMLInputElement -> Attribute True I Bool
  readOnly v = fromPrim "HTMLInputElement.getreadOnly"
                        prim__readOnly
                        prim__setReadOnly
                        v

  export
  required : HTMLInputElement -> Attribute True I Bool
  required v = fromPrim "HTMLInputElement.getrequired"
                        prim__required
                        prim__setRequired
                        v

  export
  selectionDirection : HTMLInputElement -> Attribute False Maybe String
  selectionDirection v = fromNullablePrim "HTMLInputElement.getselectionDirection"
                                          prim__selectionDirection
                                          prim__setSelectionDirection
                                          v

  export
  selectionEnd : HTMLInputElement -> Attribute False Maybe Bits32
  selectionEnd v = fromNullablePrim "HTMLInputElement.getselectionEnd"
                                    prim__selectionEnd
                                    prim__setSelectionEnd
                                    v

  export
  selectionStart : HTMLInputElement -> Attribute False Maybe Bits32
  selectionStart v = fromNullablePrim "HTMLInputElement.getselectionStart"
                                      prim__selectionStart
                                      prim__setSelectionStart
                                      v

  export
  size : HTMLInputElement -> Attribute True I Bits32
  size v = fromPrim "HTMLInputElement.getsize" prim__size prim__setSize v

  export
  src : HTMLInputElement -> Attribute True I String
  src v = fromPrim "HTMLInputElement.getsrc" prim__src prim__setSrc v

  export
  step : HTMLInputElement -> Attribute True I String
  step v = fromPrim "HTMLInputElement.getstep" prim__step prim__setStep v

  export
  type : HTMLInputElement -> Attribute True I String
  type v = fromPrim "HTMLInputElement.gettype" prim__type prim__setType v

  export
  useMap : HTMLInputElement -> Attribute True I String
  useMap v = fromPrim "HTMLInputElement.getuseMap"
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
  value : HTMLInputElement -> Attribute True I String
  value v = fromPrim "HTMLInputElement.getvalue" prim__value prim__setValue v

  export
  valueAsDate : HTMLInputElement -> Attribute False Maybe Object
  valueAsDate v = fromNullablePrim "HTMLInputElement.getvalueAsDate"
                                   prim__valueAsDate
                                   prim__setValueAsDate
                                   v

  export
  valueAsNumber : HTMLInputElement -> Attribute True I Double
  valueAsNumber v = fromPrim "HTMLInputElement.getvalueAsNumber"
                             prim__valueAsNumber
                             prim__setValueAsNumber
                             v

  export
  width : HTMLInputElement -> Attribute True I Bits32
  width v = fromPrim "HTMLInputElement.getwidth" prim__width prim__setWidth v

  export
  willValidate : (obj : HTMLInputElement) -> JSIO Bool
  willValidate a = tryJS "HTMLInputElement.willValidate"
                 $ HTMLInputElement.prim__willValidate a

  export
  checkValidity : (obj : HTMLInputElement) -> JSIO Bool
  checkValidity a = tryJS "HTMLInputElement.checkValidity"
                  $ HTMLInputElement.prim__checkValidity a

  export
  reportValidity : (obj : HTMLInputElement) -> JSIO Bool
  reportValidity a = tryJS "HTMLInputElement.reportValidity"
                   $ HTMLInputElement.prim__reportValidity a

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
                -> (start : Bits32)
                -> (end : Bits32)
                -> (selectionMode : Optional SelectionMode)
                -> JSIO ()
  setRangeText1 a b c d e = primJS
                          $ HTMLInputElement.prim__setRangeText1 a
                                                                 b
                                                                 c
                                                                 d
                                                                 (toFFI e)

  export
  setRangeText1' :  (obj : HTMLInputElement)
                 -> (replacement : String)
                 -> (start : Bits32)
                 -> (end : Bits32)
                 -> JSIO ()
  setRangeText1' a b c d = primJS
                         $ HTMLInputElement.prim__setRangeText1 a b c d undef

  export
  setSelectionRange :  (obj : HTMLInputElement)
                    -> (start : Bits32)
                    -> (end : Bits32)
                    -> (direction : Optional String)
                    -> JSIO ()
  setSelectionRange a b c d = primJS
                            $ HTMLInputElement.prim__setSelectionRange a
                                                                       b
                                                                       c
                                                                       (toFFI d)

  export
  setSelectionRange' :  (obj : HTMLInputElement)
                     -> (start : Bits32)
                     -> (end : Bits32)
                     -> JSIO ()
  setSelectionRange' a b c = primJS
                           $ HTMLInputElement.prim__setSelectionRange a
                                                                      b
                                                                      c
                                                                      undef

  export
  stepDown : (obj : HTMLInputElement) -> (n : Optional Int32) -> JSIO ()
  stepDown a b = primJS $ HTMLInputElement.prim__stepDown a (toFFI b)

  export
  stepDown' : (obj : HTMLInputElement) -> JSIO ()
  stepDown' a = primJS $ HTMLInputElement.prim__stepDown a undef

  export
  stepUp : (obj : HTMLInputElement) -> (n : Optional Int32) -> JSIO ()
  stepUp a b = primJS $ HTMLInputElement.prim__stepUp a (toFFI b)

  export
  stepUp' : (obj : HTMLInputElement) -> JSIO ()
  stepUp' a = primJS $ HTMLInputElement.prim__stepUp a undef


namespace HTMLLIElement

  export
  new : JSIO HTMLLIElement
  new = primJS $ HTMLLIElement.prim__new

  export
  type : HTMLLIElement -> Attribute True I String
  type v = fromPrim "HTMLLIElement.gettype" prim__type prim__setType v

  export
  value : HTMLLIElement -> Attribute True I Int32
  value v = fromPrim "HTMLLIElement.getvalue" prim__value prim__setValue v


namespace HTMLLabelElement

  export
  new : JSIO HTMLLabelElement
  new = primJS $ HTMLLabelElement.prim__new

  export
  control : (obj : HTMLLabelElement) -> JSIO (Maybe HTMLElement)
  control a = tryJS "HTMLLabelElement.control"
            $ HTMLLabelElement.prim__control a

  export
  form : (obj : HTMLLabelElement) -> JSIO (Maybe HTMLFormElement)
  form a = tryJS "HTMLLabelElement.form" $ HTMLLabelElement.prim__form a

  export
  htmlFor : HTMLLabelElement -> Attribute True I String
  htmlFor v = fromPrim "HTMLLabelElement.gethtmlFor"
                       prim__htmlFor
                       prim__setHtmlFor
                       v


namespace HTMLLegendElement

  export
  new : JSIO HTMLLegendElement
  new = primJS $ HTMLLegendElement.prim__new

  export
  align : HTMLLegendElement -> Attribute True I String
  align v = fromPrim "HTMLLegendElement.getalign" prim__align prim__setAlign v

  export
  form : (obj : HTMLLegendElement) -> JSIO (Maybe HTMLFormElement)
  form a = tryJS "HTMLLegendElement.form" $ HTMLLegendElement.prim__form a


namespace HTMLLinkElement

  export
  new : JSIO HTMLLinkElement
  new = primJS $ HTMLLinkElement.prim__new

  export
  as : HTMLLinkElement -> Attribute True I String
  as v = fromPrim "HTMLLinkElement.getas" prim__as prim__setAs v

  export
  charset : HTMLLinkElement -> Attribute True I String
  charset v = fromPrim "HTMLLinkElement.getcharset"
                       prim__charset
                       prim__setCharset
                       v

  export
  crossOrigin : HTMLLinkElement -> Attribute False Maybe String
  crossOrigin v = fromNullablePrim "HTMLLinkElement.getcrossOrigin"
                                   prim__crossOrigin
                                   prim__setCrossOrigin
                                   v

  export
  disabled : HTMLLinkElement -> Attribute True I Bool
  disabled v = fromPrim "HTMLLinkElement.getdisabled"
                        prim__disabled
                        prim__setDisabled
                        v

  export
  href : HTMLLinkElement -> Attribute True I String
  href v = fromPrim "HTMLLinkElement.gethref" prim__href prim__setHref v

  export
  hreflang : HTMLLinkElement -> Attribute True I String
  hreflang v = fromPrim "HTMLLinkElement.gethreflang"
                        prim__hreflang
                        prim__setHreflang
                        v

  export
  imageSizes : HTMLLinkElement -> Attribute True I String
  imageSizes v = fromPrim "HTMLLinkElement.getimageSizes"
                          prim__imageSizes
                          prim__setImageSizes
                          v

  export
  imageSrcset : HTMLLinkElement -> Attribute True I String
  imageSrcset v = fromPrim "HTMLLinkElement.getimageSrcset"
                           prim__imageSrcset
                           prim__setImageSrcset
                           v

  export
  integrity : HTMLLinkElement -> Attribute True I String
  integrity v = fromPrim "HTMLLinkElement.getintegrity"
                         prim__integrity
                         prim__setIntegrity
                         v

  export
  media : HTMLLinkElement -> Attribute True I String
  media v = fromPrim "HTMLLinkElement.getmedia" prim__media prim__setMedia v

  export
  referrerPolicy : HTMLLinkElement -> Attribute True I String
  referrerPolicy v = fromPrim "HTMLLinkElement.getreferrerPolicy"
                              prim__referrerPolicy
                              prim__setReferrerPolicy
                              v

  export
  rel : HTMLLinkElement -> Attribute True I String
  rel v = fromPrim "HTMLLinkElement.getrel" prim__rel prim__setRel v

  export
  relList : (obj : HTMLLinkElement) -> JSIO DOMTokenList
  relList a = primJS $ HTMLLinkElement.prim__relList a

  export
  rev : HTMLLinkElement -> Attribute True I String
  rev v = fromPrim "HTMLLinkElement.getrev" prim__rev prim__setRev v

  export
  sizes : (obj : HTMLLinkElement) -> JSIO DOMTokenList
  sizes a = primJS $ HTMLLinkElement.prim__sizes a

  export
  target : HTMLLinkElement -> Attribute True I String
  target v = fromPrim "HTMLLinkElement.gettarget" prim__target prim__setTarget v

  export
  type : HTMLLinkElement -> Attribute True I String
  type v = fromPrim "HTMLLinkElement.gettype" prim__type prim__setType v


namespace HTMLMapElement

  export
  new : JSIO HTMLMapElement
  new = primJS $ HTMLMapElement.prim__new

  export
  areas : (obj : HTMLMapElement) -> JSIO HTMLCollection
  areas a = primJS $ HTMLMapElement.prim__areas a

  export
  name : HTMLMapElement -> Attribute True I String
  name v = fromPrim "HTMLMapElement.getname" prim__name prim__setName v


namespace HTMLMarqueeElement

  export
  new : JSIO HTMLMarqueeElement
  new = primJS $ HTMLMarqueeElement.prim__new

  export
  behavior : HTMLMarqueeElement -> Attribute True I String
  behavior v = fromPrim "HTMLMarqueeElement.getbehavior"
                        prim__behavior
                        prim__setBehavior
                        v

  export
  bgColor : HTMLMarqueeElement -> Attribute True I String
  bgColor v = fromPrim "HTMLMarqueeElement.getbgColor"
                       prim__bgColor
                       prim__setBgColor
                       v

  export
  direction : HTMLMarqueeElement -> Attribute True I String
  direction v = fromPrim "HTMLMarqueeElement.getdirection"
                         prim__direction
                         prim__setDirection
                         v

  export
  height : HTMLMarqueeElement -> Attribute True I String
  height v = fromPrim "HTMLMarqueeElement.getheight"
                      prim__height
                      prim__setHeight
                      v

  export
  hspace : HTMLMarqueeElement -> Attribute True I Bits32
  hspace v = fromPrim "HTMLMarqueeElement.gethspace"
                      prim__hspace
                      prim__setHspace
                      v

  export
  loop : HTMLMarqueeElement -> Attribute True I Int32
  loop v = fromPrim "HTMLMarqueeElement.getloop" prim__loop prim__setLoop v

  export
  scrollAmount : HTMLMarqueeElement -> Attribute True I Bits32
  scrollAmount v = fromPrim "HTMLMarqueeElement.getscrollAmount"
                            prim__scrollAmount
                            prim__setScrollAmount
                            v

  export
  scrollDelay : HTMLMarqueeElement -> Attribute True I Bits32
  scrollDelay v = fromPrim "HTMLMarqueeElement.getscrollDelay"
                           prim__scrollDelay
                           prim__setScrollDelay
                           v

  export
  trueSpeed : HTMLMarqueeElement -> Attribute True I Bool
  trueSpeed v = fromPrim "HTMLMarqueeElement.gettrueSpeed"
                         prim__trueSpeed
                         prim__setTrueSpeed
                         v

  export
  vspace : HTMLMarqueeElement -> Attribute True I Bits32
  vspace v = fromPrim "HTMLMarqueeElement.getvspace"
                      prim__vspace
                      prim__setVspace
                      v

  export
  width : HTMLMarqueeElement -> Attribute True I String
  width v = fromPrim "HTMLMarqueeElement.getwidth" prim__width prim__setWidth v

  export
  start : (obj : HTMLMarqueeElement) -> JSIO ()
  start a = primJS $ HTMLMarqueeElement.prim__start a

  export
  stop : (obj : HTMLMarqueeElement) -> JSIO ()
  stop a = primJS $ HTMLMarqueeElement.prim__stop a


namespace HTMLMediaElement

  public export
  HAVE_CURRENT_DATA : Bits16
  HAVE_CURRENT_DATA = 2

  public export
  HAVE_ENOUGH_DATA : Bits16
  HAVE_ENOUGH_DATA = 4

  public export
  HAVE_FUTURE_DATA : Bits16
  HAVE_FUTURE_DATA = 3

  public export
  HAVE_METADATA : Bits16
  HAVE_METADATA = 1

  public export
  HAVE_NOTHING : Bits16
  HAVE_NOTHING = 0

  public export
  NETWORK_EMPTY : Bits16
  NETWORK_EMPTY = 0

  public export
  NETWORK_IDLE : Bits16
  NETWORK_IDLE = 1

  public export
  NETWORK_LOADING : Bits16
  NETWORK_LOADING = 2

  public export
  NETWORK_NO_SOURCE : Bits16
  NETWORK_NO_SOURCE = 3

  export
  audioTracks :  (0 _ : JSType t1)
              => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
              -> (obj : t1)
              -> JSIO AudioTrackList
  audioTracks a = primJS $ HTMLMediaElement.prim__audioTracks (up a)

  export
  autoplay :  (0 _ : JSType t)
           => {auto 0 _ : Elem HTMLMediaElement (Types t)}
           -> t
           -> Attribute True I Bool
  autoplay v = fromPrim "HTMLMediaElement.getautoplay"
                        prim__autoplay
                        prim__setAutoplay
                        (v :> HTMLMediaElement)

  export
  buffered :  (0 _ : JSType t1)
           => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
           -> (obj : t1)
           -> JSIO TimeRanges
  buffered a = primJS $ HTMLMediaElement.prim__buffered (up a)

  export
  controls :  (0 _ : JSType t)
           => {auto 0 _ : Elem HTMLMediaElement (Types t)}
           -> t
           -> Attribute True I Bool
  controls v = fromPrim "HTMLMediaElement.getcontrols"
                        prim__controls
                        prim__setControls
                        (v :> HTMLMediaElement)

  export
  crossOrigin :  (0 _ : JSType t)
              => {auto 0 _ : Elem HTMLMediaElement (Types t)}
              -> t
              -> Attribute False Maybe String
  crossOrigin v = fromNullablePrim "HTMLMediaElement.getcrossOrigin"
                                   prim__crossOrigin
                                   prim__setCrossOrigin
                                   (v :> HTMLMediaElement)

  export
  currentSrc :  (0 _ : JSType t1)
             => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
             -> (obj : t1)
             -> JSIO String
  currentSrc a = primJS $ HTMLMediaElement.prim__currentSrc (up a)

  export
  currentTime :  (0 _ : JSType t)
              => {auto 0 _ : Elem HTMLMediaElement (Types t)}
              -> t
              -> Attribute True I Double
  currentTime v = fromPrim "HTMLMediaElement.getcurrentTime"
                           prim__currentTime
                           prim__setCurrentTime
                           (v :> HTMLMediaElement)

  export
  defaultMuted :  (0 _ : JSType t)
               => {auto 0 _ : Elem HTMLMediaElement (Types t)}
               -> t
               -> Attribute True I Bool
  defaultMuted v = fromPrim "HTMLMediaElement.getdefaultMuted"
                            prim__defaultMuted
                            prim__setDefaultMuted
                            (v :> HTMLMediaElement)

  export
  defaultPlaybackRate :  (0 _ : JSType t)
                      => {auto 0 _ : Elem HTMLMediaElement (Types t)}
                      -> t
                      -> Attribute True I Double
  defaultPlaybackRate v = fromPrim "HTMLMediaElement.getdefaultPlaybackRate"
                                   prim__defaultPlaybackRate
                                   prim__setDefaultPlaybackRate
                                   (v :> HTMLMediaElement)

  export
  duration :  (0 _ : JSType t1)
           => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
           -> (obj : t1)
           -> JSIO Double
  duration a = primJS $ HTMLMediaElement.prim__duration (up a)

  export
  ended :  (0 _ : JSType t1)
        => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
        -> (obj : t1)
        -> JSIO Bool
  ended a = tryJS "HTMLMediaElement.ended" $ HTMLMediaElement.prim__ended (up a)

  export
  error :  (0 _ : JSType t1)
        => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
        -> (obj : t1)
        -> JSIO (Maybe MediaError)
  error a = tryJS "HTMLMediaElement.error" $ HTMLMediaElement.prim__error (up a)

  export
  loop :  (0 _ : JSType t)
       => {auto 0 _ : Elem HTMLMediaElement (Types t)}
       -> t
       -> Attribute True I Bool
  loop v = fromPrim "HTMLMediaElement.getloop"
                    prim__loop
                    prim__setLoop
                    (v :> HTMLMediaElement)

  export
  muted :  (0 _ : JSType t)
        => {auto 0 _ : Elem HTMLMediaElement (Types t)}
        -> t
        -> Attribute True I Bool
  muted v = fromPrim "HTMLMediaElement.getmuted"
                     prim__muted
                     prim__setMuted
                     (v :> HTMLMediaElement)

  export
  networkState :  (0 _ : JSType t1)
               => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
               -> (obj : t1)
               -> JSIO Bits16
  networkState a = primJS $ HTMLMediaElement.prim__networkState (up a)

  export
  paused :  (0 _ : JSType t1)
         => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
         -> (obj : t1)
         -> JSIO Bool
  paused a = tryJS "HTMLMediaElement.paused"
           $ HTMLMediaElement.prim__paused (up a)

  export
  playbackRate :  (0 _ : JSType t)
               => {auto 0 _ : Elem HTMLMediaElement (Types t)}
               -> t
               -> Attribute True I Double
  playbackRate v = fromPrim "HTMLMediaElement.getplaybackRate"
                            prim__playbackRate
                            prim__setPlaybackRate
                            (v :> HTMLMediaElement)

  export
  played :  (0 _ : JSType t1)
         => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
         -> (obj : t1)
         -> JSIO TimeRanges
  played a = primJS $ HTMLMediaElement.prim__played (up a)

  export
  preload :  (0 _ : JSType t)
          => {auto 0 _ : Elem HTMLMediaElement (Types t)}
          -> t
          -> Attribute True I String
  preload v = fromPrim "HTMLMediaElement.getpreload"
                       prim__preload
                       prim__setPreload
                       (v :> HTMLMediaElement)

  export
  preservesPitch :  (0 _ : JSType t)
                 => {auto 0 _ : Elem HTMLMediaElement (Types t)}
                 -> t
                 -> Attribute True I Bool
  preservesPitch v = fromPrim "HTMLMediaElement.getpreservesPitch"
                              prim__preservesPitch
                              prim__setPreservesPitch
                              (v :> HTMLMediaElement)

  export
  readyState :  (0 _ : JSType t1)
             => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
             -> (obj : t1)
             -> JSIO Bits16
  readyState a = primJS $ HTMLMediaElement.prim__readyState (up a)

  export
  seekable :  (0 _ : JSType t1)
           => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
           -> (obj : t1)
           -> JSIO TimeRanges
  seekable a = primJS $ HTMLMediaElement.prim__seekable (up a)

  export
  seeking :  (0 _ : JSType t1)
          => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
          -> (obj : t1)
          -> JSIO Bool
  seeking a = tryJS "HTMLMediaElement.seeking"
            $ HTMLMediaElement.prim__seeking (up a)

  export
  src :  (0 _ : JSType t)
      => {auto 0 _ : Elem HTMLMediaElement (Types t)}
      -> t
      -> Attribute True I String
  src v = fromPrim "HTMLMediaElement.getsrc"
                   prim__src
                   prim__setSrc
                   (v :> HTMLMediaElement)

  export
  srcObject :  (0 _ : JSType t)
            => {auto 0 _ : Elem HTMLMediaElement (Types t)}
            -> t
            -> Attribute False Maybe (NS I [ MediaStream , MediaSource , Blob ])
  srcObject v = fromNullablePrim "HTMLMediaElement.getsrcObject"
                                 prim__srcObject
                                 prim__setSrcObject
                                 (v :> HTMLMediaElement)

  export
  textTracks :  (0 _ : JSType t1)
             => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
             -> (obj : t1)
             -> JSIO TextTrackList
  textTracks a = primJS $ HTMLMediaElement.prim__textTracks (up a)

  export
  videoTracks :  (0 _ : JSType t1)
              => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
              -> (obj : t1)
              -> JSIO VideoTrackList
  videoTracks a = primJS $ HTMLMediaElement.prim__videoTracks (up a)

  export
  volume :  (0 _ : JSType t)
         => {auto 0 _ : Elem HTMLMediaElement (Types t)}
         -> t
         -> Attribute True I Double
  volume v = fromPrim "HTMLMediaElement.getvolume"
                      prim__volume
                      prim__setVolume
                      (v :> HTMLMediaElement)

  export
  addTextTrack :  (0 _ : JSType t1)
               => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
               -> (obj : t1)
               -> (kind : TextTrackKind)
               -> (label : Optional String)
               -> (language : Optional String)
               -> JSIO TextTrack
  addTextTrack a b c d = primJS
                       $ HTMLMediaElement.prim__addTextTrack (up a)
                                                             (toFFI b)
                                                             (toFFI c)
                                                             (toFFI d)

  export
  addTextTrack' :  (0 _ : JSType t1)
                => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
                -> (obj : t1)
                -> (kind : TextTrackKind)
                -> JSIO TextTrack
  addTextTrack' a b = primJS
                    $ HTMLMediaElement.prim__addTextTrack (up a)
                                                          (toFFI b)
                                                          undef
                                                          undef

  export
  canPlayType :  (0 _ : JSType t1)
              => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
              -> (obj : t1)
              -> (type : String)
              -> JSIO CanPlayTypeResult
  canPlayType a b = tryJS "HTMLMediaElement.canPlayType"
                  $ HTMLMediaElement.prim__canPlayType (up a) b

  export
  fastSeek :  (0 _ : JSType t1)
           => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
           -> (obj : t1)
           -> (time : Double)
           -> JSIO ()
  fastSeek a b = primJS $ HTMLMediaElement.prim__fastSeek (up a) b

  export
  getStartDate :  (0 _ : JSType t1)
               => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
               -> (obj : t1)
               -> JSIO Object
  getStartDate a = primJS $ HTMLMediaElement.prim__getStartDate (up a)

  export
  load :  (0 _ : JSType t1)
       => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
       -> (obj : t1)
       -> JSIO ()
  load a = primJS $ HTMLMediaElement.prim__load (up a)

  export
  pause :  (0 _ : JSType t1)
        => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
        -> (obj : t1)
        -> JSIO ()
  pause a = primJS $ HTMLMediaElement.prim__pause (up a)

  export
  play :  (0 _ : JSType t1)
       => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
       -> (obj : t1)
       -> JSIO (Promise Undefined)
  play a = primJS $ HTMLMediaElement.prim__play (up a)


namespace HTMLMenuElement

  export
  new : JSIO HTMLMenuElement
  new = primJS $ HTMLMenuElement.prim__new

  export
  compact : HTMLMenuElement -> Attribute True I Bool
  compact v = fromPrim "HTMLMenuElement.getcompact"
                       prim__compact
                       prim__setCompact
                       v


namespace HTMLMetaElement

  export
  new : JSIO HTMLMetaElement
  new = primJS $ HTMLMetaElement.prim__new

  export
  content : HTMLMetaElement -> Attribute True I String
  content v = fromPrim "HTMLMetaElement.getcontent"
                       prim__content
                       prim__setContent
                       v

  export
  httpEquiv : HTMLMetaElement -> Attribute True I String
  httpEquiv v = fromPrim "HTMLMetaElement.gethttpEquiv"
                         prim__httpEquiv
                         prim__setHttpEquiv
                         v

  export
  name : HTMLMetaElement -> Attribute True I String
  name v = fromPrim "HTMLMetaElement.getname" prim__name prim__setName v

  export
  scheme : HTMLMetaElement -> Attribute True I String
  scheme v = fromPrim "HTMLMetaElement.getscheme" prim__scheme prim__setScheme v


namespace HTMLMeterElement

  export
  new : JSIO HTMLMeterElement
  new = primJS $ HTMLMeterElement.prim__new

  export
  high : HTMLMeterElement -> Attribute True I Double
  high v = fromPrim "HTMLMeterElement.gethigh" prim__high prim__setHigh v

  export
  labels : (obj : HTMLMeterElement) -> JSIO NodeList
  labels a = primJS $ HTMLMeterElement.prim__labels a

  export
  low : HTMLMeterElement -> Attribute True I Double
  low v = fromPrim "HTMLMeterElement.getlow" prim__low prim__setLow v

  export
  max : HTMLMeterElement -> Attribute True I Double
  max v = fromPrim "HTMLMeterElement.getmax" prim__max prim__setMax v

  export
  min : HTMLMeterElement -> Attribute True I Double
  min v = fromPrim "HTMLMeterElement.getmin" prim__min prim__setMin v

  export
  optimum : HTMLMeterElement -> Attribute True I Double
  optimum v = fromPrim "HTMLMeterElement.getoptimum"
                       prim__optimum
                       prim__setOptimum
                       v

  export
  value : HTMLMeterElement -> Attribute True I Double
  value v = fromPrim "HTMLMeterElement.getvalue" prim__value prim__setValue v


namespace HTMLModElement

  export
  new : JSIO HTMLModElement
  new = primJS $ HTMLModElement.prim__new

  export
  cite : HTMLModElement -> Attribute True I String
  cite v = fromPrim "HTMLModElement.getcite" prim__cite prim__setCite v

  export
  dateTime : HTMLModElement -> Attribute True I String
  dateTime v = fromPrim "HTMLModElement.getdateTime"
                        prim__dateTime
                        prim__setDateTime
                        v


namespace HTMLOListElement

  export
  new : JSIO HTMLOListElement
  new = primJS $ HTMLOListElement.prim__new

  export
  compact : HTMLOListElement -> Attribute True I Bool
  compact v = fromPrim "HTMLOListElement.getcompact"
                       prim__compact
                       prim__setCompact
                       v

  export
  reversed : HTMLOListElement -> Attribute True I Bool
  reversed v = fromPrim "HTMLOListElement.getreversed"
                        prim__reversed
                        prim__setReversed
                        v

  export
  start : HTMLOListElement -> Attribute True I Int32
  start v = fromPrim "HTMLOListElement.getstart" prim__start prim__setStart v

  export
  type : HTMLOListElement -> Attribute True I String
  type v = fromPrim "HTMLOListElement.gettype" prim__type prim__setType v


namespace HTMLObjectElement

  export
  new : JSIO HTMLObjectElement
  new = primJS $ HTMLObjectElement.prim__new

  export
  align : HTMLObjectElement -> Attribute True I String
  align v = fromPrim "HTMLObjectElement.getalign" prim__align prim__setAlign v

  export
  archive : HTMLObjectElement -> Attribute True I String
  archive v = fromPrim "HTMLObjectElement.getarchive"
                       prim__archive
                       prim__setArchive
                       v

  export
  border : HTMLObjectElement -> Attribute True I String
  border v = fromPrim "HTMLObjectElement.getborder"
                      prim__border
                      prim__setBorder
                      v

  export
  code : HTMLObjectElement -> Attribute True I String
  code v = fromPrim "HTMLObjectElement.getcode" prim__code prim__setCode v

  export
  codeBase : HTMLObjectElement -> Attribute True I String
  codeBase v = fromPrim "HTMLObjectElement.getcodeBase"
                        prim__codeBase
                        prim__setCodeBase
                        v

  export
  codeType : HTMLObjectElement -> Attribute True I String
  codeType v = fromPrim "HTMLObjectElement.getcodeType"
                        prim__codeType
                        prim__setCodeType
                        v

  export
  contentDocument : (obj : HTMLObjectElement) -> JSIO (Maybe Document)
  contentDocument a = tryJS "HTMLObjectElement.contentDocument"
                    $ HTMLObjectElement.prim__contentDocument a

  export
  contentWindow : (obj : HTMLObjectElement) -> JSIO (Maybe WindowProxy)
  contentWindow a = tryJS "HTMLObjectElement.contentWindow"
                  $ HTMLObjectElement.prim__contentWindow a

  export
  data_ : HTMLObjectElement -> Attribute True I String
  data_ v = fromPrim "HTMLObjectElement.getdata" prim__data prim__setData v

  export
  declare : HTMLObjectElement -> Attribute True I Bool
  declare v = fromPrim "HTMLObjectElement.getdeclare"
                       prim__declare
                       prim__setDeclare
                       v

  export
  form : (obj : HTMLObjectElement) -> JSIO (Maybe HTMLFormElement)
  form a = tryJS "HTMLObjectElement.form" $ HTMLObjectElement.prim__form a

  export
  height : HTMLObjectElement -> Attribute True I String
  height v = fromPrim "HTMLObjectElement.getheight"
                      prim__height
                      prim__setHeight
                      v

  export
  hspace : HTMLObjectElement -> Attribute True I Bits32
  hspace v = fromPrim "HTMLObjectElement.gethspace"
                      prim__hspace
                      prim__setHspace
                      v

  export
  name : HTMLObjectElement -> Attribute True I String
  name v = fromPrim "HTMLObjectElement.getname" prim__name prim__setName v

  export
  standby : HTMLObjectElement -> Attribute True I String
  standby v = fromPrim "HTMLObjectElement.getstandby"
                       prim__standby
                       prim__setStandby
                       v

  export
  type : HTMLObjectElement -> Attribute True I String
  type v = fromPrim "HTMLObjectElement.gettype" prim__type prim__setType v

  export
  useMap : HTMLObjectElement -> Attribute True I String
  useMap v = fromPrim "HTMLObjectElement.getuseMap"
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
  vspace : HTMLObjectElement -> Attribute True I Bits32
  vspace v = fromPrim "HTMLObjectElement.getvspace"
                      prim__vspace
                      prim__setVspace
                      v

  export
  width : HTMLObjectElement -> Attribute True I String
  width v = fromPrim "HTMLObjectElement.getwidth" prim__width prim__setWidth v

  export
  willValidate : (obj : HTMLObjectElement) -> JSIO Bool
  willValidate a = tryJS "HTMLObjectElement.willValidate"
                 $ HTMLObjectElement.prim__willValidate a

  export
  checkValidity : (obj : HTMLObjectElement) -> JSIO Bool
  checkValidity a = tryJS "HTMLObjectElement.checkValidity"
                  $ HTMLObjectElement.prim__checkValidity a

  export
  getSVGDocument : (obj : HTMLObjectElement) -> JSIO (Maybe Document)
  getSVGDocument a = tryJS "HTMLObjectElement.getSVGDocument"
                   $ HTMLObjectElement.prim__getSVGDocument a

  export
  reportValidity : (obj : HTMLObjectElement) -> JSIO Bool
  reportValidity a = tryJS "HTMLObjectElement.reportValidity"
                   $ HTMLObjectElement.prim__reportValidity a

  export
  setCustomValidity : (obj : HTMLObjectElement) -> (error : String) -> JSIO ()
  setCustomValidity a b = primJS $ HTMLObjectElement.prim__setCustomValidity a b


namespace HTMLOptGroupElement

  export
  new : JSIO HTMLOptGroupElement
  new = primJS $ HTMLOptGroupElement.prim__new

  export
  disabled : HTMLOptGroupElement -> Attribute True I Bool
  disabled v = fromPrim "HTMLOptGroupElement.getdisabled"
                        prim__disabled
                        prim__setDisabled
                        v

  export
  label : HTMLOptGroupElement -> Attribute True I String
  label v = fromPrim "HTMLOptGroupElement.getlabel" prim__label prim__setLabel v


namespace HTMLOptionElement

  export
  new : JSIO HTMLOptionElement
  new = primJS $ HTMLOptionElement.prim__new

  export
  defaultSelected : HTMLOptionElement -> Attribute True I Bool
  defaultSelected v = fromPrim "HTMLOptionElement.getdefaultSelected"
                               prim__defaultSelected
                               prim__setDefaultSelected
                               v

  export
  disabled : HTMLOptionElement -> Attribute True I Bool
  disabled v = fromPrim "HTMLOptionElement.getdisabled"
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
  label : HTMLOptionElement -> Attribute True I String
  label v = fromPrim "HTMLOptionElement.getlabel" prim__label prim__setLabel v

  export
  selected : HTMLOptionElement -> Attribute True I Bool
  selected v = fromPrim "HTMLOptionElement.getselected"
                        prim__selected
                        prim__setSelected
                        v

  export
  text : HTMLOptionElement -> Attribute True I String
  text v = fromPrim "HTMLOptionElement.gettext" prim__text prim__setText v

  export
  value : HTMLOptionElement -> Attribute True I String
  value v = fromPrim "HTMLOptionElement.getvalue" prim__value prim__setValue v


namespace HTMLOptionsCollection

  export
  set :  (obj : HTMLOptionsCollection)
      -> (index : Bits32)
      -> (option : Maybe HTMLOptionElement)
      -> JSIO ()
  set a b c = primJS $ HTMLOptionsCollection.prim__set a b (toFFI c)

  export
  length : HTMLOptionsCollection -> Attribute True I Bits32
  length v = fromPrim "HTMLOptionsCollection.getlength"
                      prim__length
                      prim__setLength
                      v

  export
  selectedIndex : HTMLOptionsCollection -> Attribute True I Int32
  selectedIndex v = fromPrim "HTMLOptionsCollection.getselectedIndex"
                             prim__selectedIndex
                             prim__setSelectedIndex
                             v

  export
  add :  (obj : HTMLOptionsCollection)
      -> (element : NS I [ HTMLOptionElement , HTMLOptGroupElement ])
      -> (before : Optional (Maybe (NS I [ HTMLElement , Int32 ])))
      -> JSIO ()
  add a b c = primJS $ HTMLOptionsCollection.prim__add a (toFFI b) (toFFI c)

  export
  add' :  (obj : HTMLOptionsCollection)
       -> (element : NS I [ HTMLOptionElement , HTMLOptGroupElement ])
       -> JSIO ()
  add' a b = primJS $ HTMLOptionsCollection.prim__add a (toFFI b) undef

  export
  remove : (obj : HTMLOptionsCollection) -> (index : Int32) -> JSIO ()
  remove a b = primJS $ HTMLOptionsCollection.prim__remove a b


namespace HTMLOutputElement

  export
  new : JSIO HTMLOutputElement
  new = primJS $ HTMLOutputElement.prim__new

  export
  defaultValue : HTMLOutputElement -> Attribute True I String
  defaultValue v = fromPrim "HTMLOutputElement.getdefaultValue"
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
  name : HTMLOutputElement -> Attribute True I String
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
  value : HTMLOutputElement -> Attribute True I String
  value v = fromPrim "HTMLOutputElement.getvalue" prim__value prim__setValue v

  export
  willValidate : (obj : HTMLOutputElement) -> JSIO Bool
  willValidate a = tryJS "HTMLOutputElement.willValidate"
                 $ HTMLOutputElement.prim__willValidate a

  export
  checkValidity : (obj : HTMLOutputElement) -> JSIO Bool
  checkValidity a = tryJS "HTMLOutputElement.checkValidity"
                  $ HTMLOutputElement.prim__checkValidity a

  export
  reportValidity : (obj : HTMLOutputElement) -> JSIO Bool
  reportValidity a = tryJS "HTMLOutputElement.reportValidity"
                   $ HTMLOutputElement.prim__reportValidity a

  export
  setCustomValidity : (obj : HTMLOutputElement) -> (error : String) -> JSIO ()
  setCustomValidity a b = primJS $ HTMLOutputElement.prim__setCustomValidity a b


namespace HTMLParagraphElement

  export
  new : JSIO HTMLParagraphElement
  new = primJS $ HTMLParagraphElement.prim__new

  export
  align : HTMLParagraphElement -> Attribute True I String
  align v = fromPrim "HTMLParagraphElement.getalign"
                     prim__align
                     prim__setAlign
                     v


namespace HTMLParamElement

  export
  new : JSIO HTMLParamElement
  new = primJS $ HTMLParamElement.prim__new

  export
  name : HTMLParamElement -> Attribute True I String
  name v = fromPrim "HTMLParamElement.getname" prim__name prim__setName v

  export
  type : HTMLParamElement -> Attribute True I String
  type v = fromPrim "HTMLParamElement.gettype" prim__type prim__setType v

  export
  value : HTMLParamElement -> Attribute True I String
  value v = fromPrim "HTMLParamElement.getvalue" prim__value prim__setValue v

  export
  valueType : HTMLParamElement -> Attribute True I String
  valueType v = fromPrim "HTMLParamElement.getvalueType"
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
  width : HTMLPreElement -> Attribute True I Int32
  width v = fromPrim "HTMLPreElement.getwidth" prim__width prim__setWidth v


namespace HTMLProgressElement

  export
  new : JSIO HTMLProgressElement
  new = primJS $ HTMLProgressElement.prim__new

  export
  labels : (obj : HTMLProgressElement) -> JSIO NodeList
  labels a = primJS $ HTMLProgressElement.prim__labels a

  export
  max : HTMLProgressElement -> Attribute True I Double
  max v = fromPrim "HTMLProgressElement.getmax" prim__max prim__setMax v

  export
  position : (obj : HTMLProgressElement) -> JSIO Double
  position a = primJS $ HTMLProgressElement.prim__position a

  export
  value : HTMLProgressElement -> Attribute True I Double
  value v = fromPrim "HTMLProgressElement.getvalue" prim__value prim__setValue v


namespace HTMLQuoteElement

  export
  new : JSIO HTMLQuoteElement
  new = primJS $ HTMLQuoteElement.prim__new

  export
  cite : HTMLQuoteElement -> Attribute True I String
  cite v = fromPrim "HTMLQuoteElement.getcite" prim__cite prim__setCite v


namespace HTMLScriptElement

  export
  new : JSIO HTMLScriptElement
  new = primJS $ HTMLScriptElement.prim__new

  export
  async : HTMLScriptElement -> Attribute True I Bool
  async v = fromPrim "HTMLScriptElement.getasync" prim__async prim__setAsync v

  export
  charset : HTMLScriptElement -> Attribute True I String
  charset v = fromPrim "HTMLScriptElement.getcharset"
                       prim__charset
                       prim__setCharset
                       v

  export
  crossOrigin : HTMLScriptElement -> Attribute False Maybe String
  crossOrigin v = fromNullablePrim "HTMLScriptElement.getcrossOrigin"
                                   prim__crossOrigin
                                   prim__setCrossOrigin
                                   v

  export
  defer : HTMLScriptElement -> Attribute True I Bool
  defer v = fromPrim "HTMLScriptElement.getdefer" prim__defer prim__setDefer v

  export
  event : HTMLScriptElement -> Attribute True I String
  event v = fromPrim "HTMLScriptElement.getevent" prim__event prim__setEvent v

  export
  htmlFor : HTMLScriptElement -> Attribute True I String
  htmlFor v = fromPrim "HTMLScriptElement.gethtmlFor"
                       prim__htmlFor
                       prim__setHtmlFor
                       v

  export
  integrity : HTMLScriptElement -> Attribute True I String
  integrity v = fromPrim "HTMLScriptElement.getintegrity"
                         prim__integrity
                         prim__setIntegrity
                         v

  export
  noModule : HTMLScriptElement -> Attribute True I Bool
  noModule v = fromPrim "HTMLScriptElement.getnoModule"
                        prim__noModule
                        prim__setNoModule
                        v

  export
  referrerPolicy : HTMLScriptElement -> Attribute True I String
  referrerPolicy v = fromPrim "HTMLScriptElement.getreferrerPolicy"
                              prim__referrerPolicy
                              prim__setReferrerPolicy
                              v

  export
  src : HTMLScriptElement -> Attribute True I String
  src v = fromPrim "HTMLScriptElement.getsrc" prim__src prim__setSrc v

  export
  text : HTMLScriptElement -> Attribute True I String
  text v = fromPrim "HTMLScriptElement.gettext" prim__text prim__setText v

  export
  type : HTMLScriptElement -> Attribute True I String
  type v = fromPrim "HTMLScriptElement.gettype" prim__type prim__setType v


namespace HTMLSelectElement

  export
  new : JSIO HTMLSelectElement
  new = primJS $ HTMLSelectElement.prim__new

  export
  set :  (obj : HTMLSelectElement)
      -> (index : Bits32)
      -> (option : Maybe HTMLOptionElement)
      -> JSIO ()
  set a b c = primJS $ HTMLSelectElement.prim__set a b (toFFI c)

  export
  autocomplete : HTMLSelectElement -> Attribute True I String
  autocomplete v = fromPrim "HTMLSelectElement.getautocomplete"
                            prim__autocomplete
                            prim__setAutocomplete
                            v

  export
  disabled : HTMLSelectElement -> Attribute True I Bool
  disabled v = fromPrim "HTMLSelectElement.getdisabled"
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
  length : HTMLSelectElement -> Attribute True I Bits32
  length v = fromPrim "HTMLSelectElement.getlength"
                      prim__length
                      prim__setLength
                      v

  export
  multiple : HTMLSelectElement -> Attribute True I Bool
  multiple v = fromPrim "HTMLSelectElement.getmultiple"
                        prim__multiple
                        prim__setMultiple
                        v

  export
  name : HTMLSelectElement -> Attribute True I String
  name v = fromPrim "HTMLSelectElement.getname" prim__name prim__setName v

  export
  options : (obj : HTMLSelectElement) -> JSIO HTMLOptionsCollection
  options a = primJS $ HTMLSelectElement.prim__options a

  export
  required : HTMLSelectElement -> Attribute True I Bool
  required v = fromPrim "HTMLSelectElement.getrequired"
                        prim__required
                        prim__setRequired
                        v

  export
  selectedIndex : HTMLSelectElement -> Attribute True I Int32
  selectedIndex v = fromPrim "HTMLSelectElement.getselectedIndex"
                             prim__selectedIndex
                             prim__setSelectedIndex
                             v

  export
  selectedOptions : (obj : HTMLSelectElement) -> JSIO HTMLCollection
  selectedOptions a = primJS $ HTMLSelectElement.prim__selectedOptions a

  export
  size : HTMLSelectElement -> Attribute True I Bits32
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
  value : HTMLSelectElement -> Attribute True I String
  value v = fromPrim "HTMLSelectElement.getvalue" prim__value prim__setValue v

  export
  willValidate : (obj : HTMLSelectElement) -> JSIO Bool
  willValidate a = tryJS "HTMLSelectElement.willValidate"
                 $ HTMLSelectElement.prim__willValidate a

  export
  add :  (obj : HTMLSelectElement)
      -> (element : NS I [ HTMLOptionElement , HTMLOptGroupElement ])
      -> (before : Optional (Maybe (NS I [ HTMLElement , Int32 ])))
      -> JSIO ()
  add a b c = primJS $ HTMLSelectElement.prim__add a (toFFI b) (toFFI c)

  export
  add' :  (obj : HTMLSelectElement)
       -> (element : NS I [ HTMLOptionElement , HTMLOptGroupElement ])
       -> JSIO ()
  add' a b = primJS $ HTMLSelectElement.prim__add a (toFFI b) undef

  export
  checkValidity : (obj : HTMLSelectElement) -> JSIO Bool
  checkValidity a = tryJS "HTMLSelectElement.checkValidity"
                  $ HTMLSelectElement.prim__checkValidity a

  export
  item : (obj : HTMLSelectElement) -> (index : Bits32) -> JSIO (Maybe Element)
  item a b = tryJS "HTMLSelectElement.item" $ HTMLSelectElement.prim__item a b

  export
  namedItem :  (obj : HTMLSelectElement)
            -> (name : String)
            -> JSIO (Maybe HTMLOptionElement)
  namedItem a b = tryJS "HTMLSelectElement.namedItem"
                $ HTMLSelectElement.prim__namedItem a b

  export
  remove : (obj : HTMLSelectElement) -> JSIO ()
  remove a = primJS $ HTMLSelectElement.prim__remove a

  export
  remove1 : (obj : HTMLSelectElement) -> (index : Int32) -> JSIO ()
  remove1 a b = primJS $ HTMLSelectElement.prim__remove1 a b

  export
  reportValidity : (obj : HTMLSelectElement) -> JSIO Bool
  reportValidity a = tryJS "HTMLSelectElement.reportValidity"
                   $ HTMLSelectElement.prim__reportValidity a

  export
  setCustomValidity : (obj : HTMLSelectElement) -> (error : String) -> JSIO ()
  setCustomValidity a b = primJS $ HTMLSelectElement.prim__setCustomValidity a b


namespace HTMLSlotElement

  export
  new : JSIO HTMLSlotElement
  new = primJS $ HTMLSlotElement.prim__new

  export
  name : HTMLSlotElement -> Attribute True I String
  name v = fromPrim "HTMLSlotElement.getname" prim__name prim__setName v

  export
  assignedElements :  (0 _ : JSType t1)
                   => {auto 0 _ : Elem AssignedNodesOptions (Types t1)}
                   -> (obj : HTMLSlotElement)
                   -> (options : Optional t1)
                   -> JSIO (Array Element)
  assignedElements a b = primJS
                       $ HTMLSlotElement.prim__assignedElements a (optUp b)

  export
  assignedElements' : (obj : HTMLSlotElement) -> JSIO (Array Element)
  assignedElements' a = primJS $ HTMLSlotElement.prim__assignedElements a undef

  export
  assignedNodes :  (0 _ : JSType t1)
                => {auto 0 _ : Elem AssignedNodesOptions (Types t1)}
                -> (obj : HTMLSlotElement)
                -> (options : Optional t1)
                -> JSIO (Array Node)
  assignedNodes a b = primJS $ HTMLSlotElement.prim__assignedNodes a (optUp b)

  export
  assignedNodes' : (obj : HTMLSlotElement) -> JSIO (Array Node)
  assignedNodes' a = primJS $ HTMLSlotElement.prim__assignedNodes a undef


namespace HTMLSourceElement

  export
  new : JSIO HTMLSourceElement
  new = primJS $ HTMLSourceElement.prim__new

  export
  height : HTMLSourceElement -> Attribute True I Bits32
  height v = fromPrim "HTMLSourceElement.getheight"
                      prim__height
                      prim__setHeight
                      v

  export
  media : HTMLSourceElement -> Attribute True I String
  media v = fromPrim "HTMLSourceElement.getmedia" prim__media prim__setMedia v

  export
  sizes : HTMLSourceElement -> Attribute True I String
  sizes v = fromPrim "HTMLSourceElement.getsizes" prim__sizes prim__setSizes v

  export
  src : HTMLSourceElement -> Attribute True I String
  src v = fromPrim "HTMLSourceElement.getsrc" prim__src prim__setSrc v

  export
  srcset : HTMLSourceElement -> Attribute True I String
  srcset v = fromPrim "HTMLSourceElement.getsrcset"
                      prim__srcset
                      prim__setSrcset
                      v

  export
  type : HTMLSourceElement -> Attribute True I String
  type v = fromPrim "HTMLSourceElement.gettype" prim__type prim__setType v

  export
  width : HTMLSourceElement -> Attribute True I Bits32
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
  media : HTMLStyleElement -> Attribute True I String
  media v = fromPrim "HTMLStyleElement.getmedia" prim__media prim__setMedia v

  export
  type : HTMLStyleElement -> Attribute True I String
  type v = fromPrim "HTMLStyleElement.gettype" prim__type prim__setType v


namespace HTMLTableCaptionElement

  export
  new : JSIO HTMLTableCaptionElement
  new = primJS $ HTMLTableCaptionElement.prim__new

  export
  align : HTMLTableCaptionElement -> Attribute True I String
  align v = fromPrim "HTMLTableCaptionElement.getalign"
                     prim__align
                     prim__setAlign
                     v


namespace HTMLTableCellElement

  export
  new : JSIO HTMLTableCellElement
  new = primJS $ HTMLTableCellElement.prim__new

  export
  abbr : HTMLTableCellElement -> Attribute True I String
  abbr v = fromPrim "HTMLTableCellElement.getabbr" prim__abbr prim__setAbbr v

  export
  align : HTMLTableCellElement -> Attribute True I String
  align v = fromPrim "HTMLTableCellElement.getalign"
                     prim__align
                     prim__setAlign
                     v

  export
  axis : HTMLTableCellElement -> Attribute True I String
  axis v = fromPrim "HTMLTableCellElement.getaxis" prim__axis prim__setAxis v

  export
  bgColor : HTMLTableCellElement -> Attribute True I String
  bgColor v = fromPrim "HTMLTableCellElement.getbgColor"
                       prim__bgColor
                       prim__setBgColor
                       v

  export
  cellIndex : (obj : HTMLTableCellElement) -> JSIO Int32
  cellIndex a = primJS $ HTMLTableCellElement.prim__cellIndex a

  export
  ch : HTMLTableCellElement -> Attribute True I String
  ch v = fromPrim "HTMLTableCellElement.getch" prim__ch prim__setCh v

  export
  chOff : HTMLTableCellElement -> Attribute True I String
  chOff v = fromPrim "HTMLTableCellElement.getchOff"
                     prim__chOff
                     prim__setChOff
                     v

  export
  colSpan : HTMLTableCellElement -> Attribute True I Bits32
  colSpan v = fromPrim "HTMLTableCellElement.getcolSpan"
                       prim__colSpan
                       prim__setColSpan
                       v

  export
  headers : HTMLTableCellElement -> Attribute True I String
  headers v = fromPrim "HTMLTableCellElement.getheaders"
                       prim__headers
                       prim__setHeaders
                       v

  export
  height : HTMLTableCellElement -> Attribute True I String
  height v = fromPrim "HTMLTableCellElement.getheight"
                      prim__height
                      prim__setHeight
                      v

  export
  noWrap : HTMLTableCellElement -> Attribute True I Bool
  noWrap v = fromPrim "HTMLTableCellElement.getnoWrap"
                      prim__noWrap
                      prim__setNoWrap
                      v

  export
  rowSpan : HTMLTableCellElement -> Attribute True I Bits32
  rowSpan v = fromPrim "HTMLTableCellElement.getrowSpan"
                       prim__rowSpan
                       prim__setRowSpan
                       v

  export
  scope : HTMLTableCellElement -> Attribute True I String
  scope v = fromPrim "HTMLTableCellElement.getscope"
                     prim__scope
                     prim__setScope
                     v

  export
  vAlign : HTMLTableCellElement -> Attribute True I String
  vAlign v = fromPrim "HTMLTableCellElement.getvAlign"
                      prim__vAlign
                      prim__setVAlign
                      v

  export
  width : HTMLTableCellElement -> Attribute True I String
  width v = fromPrim "HTMLTableCellElement.getwidth"
                     prim__width
                     prim__setWidth
                     v


namespace HTMLTableColElement

  export
  new : JSIO HTMLTableColElement
  new = primJS $ HTMLTableColElement.prim__new

  export
  align : HTMLTableColElement -> Attribute True I String
  align v = fromPrim "HTMLTableColElement.getalign" prim__align prim__setAlign v

  export
  ch : HTMLTableColElement -> Attribute True I String
  ch v = fromPrim "HTMLTableColElement.getch" prim__ch prim__setCh v

  export
  chOff : HTMLTableColElement -> Attribute True I String
  chOff v = fromPrim "HTMLTableColElement.getchOff" prim__chOff prim__setChOff v

  export
  span : HTMLTableColElement -> Attribute True I Bits32
  span v = fromPrim "HTMLTableColElement.getspan" prim__span prim__setSpan v

  export
  vAlign : HTMLTableColElement -> Attribute True I String
  vAlign v = fromPrim "HTMLTableColElement.getvAlign"
                      prim__vAlign
                      prim__setVAlign
                      v

  export
  width : HTMLTableColElement -> Attribute True I String
  width v = fromPrim "HTMLTableColElement.getwidth" prim__width prim__setWidth v


namespace HTMLTableElement

  export
  new : JSIO HTMLTableElement
  new = primJS $ HTMLTableElement.prim__new

  export
  align : HTMLTableElement -> Attribute True I String
  align v = fromPrim "HTMLTableElement.getalign" prim__align prim__setAlign v

  export
  bgColor : HTMLTableElement -> Attribute True I String
  bgColor v = fromPrim "HTMLTableElement.getbgColor"
                       prim__bgColor
                       prim__setBgColor
                       v

  export
  border : HTMLTableElement -> Attribute True I String
  border v = fromPrim "HTMLTableElement.getborder"
                      prim__border
                      prim__setBorder
                      v

  export
  caption : HTMLTableElement -> Attribute False Maybe HTMLTableCaptionElement
  caption v = fromNullablePrim "HTMLTableElement.getcaption"
                               prim__caption
                               prim__setCaption
                               v

  export
  cellPadding : HTMLTableElement -> Attribute True I String
  cellPadding v = fromPrim "HTMLTableElement.getcellPadding"
                           prim__cellPadding
                           prim__setCellPadding
                           v

  export
  cellSpacing : HTMLTableElement -> Attribute True I String
  cellSpacing v = fromPrim "HTMLTableElement.getcellSpacing"
                           prim__cellSpacing
                           prim__setCellSpacing
                           v

  export
  frame : HTMLTableElement -> Attribute True I String
  frame v = fromPrim "HTMLTableElement.getframe" prim__frame prim__setFrame v

  export
  rows : (obj : HTMLTableElement) -> JSIO HTMLCollection
  rows a = primJS $ HTMLTableElement.prim__rows a

  export
  rules : HTMLTableElement -> Attribute True I String
  rules v = fromPrim "HTMLTableElement.getrules" prim__rules prim__setRules v

  export
  summary : HTMLTableElement -> Attribute True I String
  summary v = fromPrim "HTMLTableElement.getsummary"
                       prim__summary
                       prim__setSummary
                       v

  export
  tBodies : (obj : HTMLTableElement) -> JSIO HTMLCollection
  tBodies a = primJS $ HTMLTableElement.prim__tBodies a

  export
  tFoot : HTMLTableElement -> Attribute False Maybe HTMLTableSectionElement
  tFoot v = fromNullablePrim "HTMLTableElement.gettFoot"
                             prim__tFoot
                             prim__setTFoot
                             v

  export
  tHead : HTMLTableElement -> Attribute False Maybe HTMLTableSectionElement
  tHead v = fromNullablePrim "HTMLTableElement.gettHead"
                             prim__tHead
                             prim__setTHead
                             v

  export
  width : HTMLTableElement -> Attribute True I String
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
  insertRow :  (obj : HTMLTableElement)
            -> (index : Optional Int32)
            -> JSIO HTMLTableRowElement
  insertRow a b = primJS $ HTMLTableElement.prim__insertRow a (toFFI b)

  export
  insertRow' : (obj : HTMLTableElement) -> JSIO HTMLTableRowElement
  insertRow' a = primJS $ HTMLTableElement.prim__insertRow a undef


namespace HTMLTableRowElement

  export
  new : JSIO HTMLTableRowElement
  new = primJS $ HTMLTableRowElement.prim__new

  export
  align : HTMLTableRowElement -> Attribute True I String
  align v = fromPrim "HTMLTableRowElement.getalign" prim__align prim__setAlign v

  export
  bgColor : HTMLTableRowElement -> Attribute True I String
  bgColor v = fromPrim "HTMLTableRowElement.getbgColor"
                       prim__bgColor
                       prim__setBgColor
                       v

  export
  cells : (obj : HTMLTableRowElement) -> JSIO HTMLCollection
  cells a = primJS $ HTMLTableRowElement.prim__cells a

  export
  ch : HTMLTableRowElement -> Attribute True I String
  ch v = fromPrim "HTMLTableRowElement.getch" prim__ch prim__setCh v

  export
  chOff : HTMLTableRowElement -> Attribute True I String
  chOff v = fromPrim "HTMLTableRowElement.getchOff" prim__chOff prim__setChOff v

  export
  rowIndex : (obj : HTMLTableRowElement) -> JSIO Int32
  rowIndex a = primJS $ HTMLTableRowElement.prim__rowIndex a

  export
  sectionRowIndex : (obj : HTMLTableRowElement) -> JSIO Int32
  sectionRowIndex a = primJS $ HTMLTableRowElement.prim__sectionRowIndex a

  export
  vAlign : HTMLTableRowElement -> Attribute True I String
  vAlign v = fromPrim "HTMLTableRowElement.getvAlign"
                      prim__vAlign
                      prim__setVAlign
                      v

  export
  deleteCell : (obj : HTMLTableRowElement) -> (index : Int32) -> JSIO ()
  deleteCell a b = primJS $ HTMLTableRowElement.prim__deleteCell a b

  export
  insertCell :  (obj : HTMLTableRowElement)
             -> (index : Optional Int32)
             -> JSIO HTMLTableCellElement
  insertCell a b = primJS $ HTMLTableRowElement.prim__insertCell a (toFFI b)

  export
  insertCell' : (obj : HTMLTableRowElement) -> JSIO HTMLTableCellElement
  insertCell' a = primJS $ HTMLTableRowElement.prim__insertCell a undef


namespace HTMLTableSectionElement

  export
  new : JSIO HTMLTableSectionElement
  new = primJS $ HTMLTableSectionElement.prim__new

  export
  align : HTMLTableSectionElement -> Attribute True I String
  align v = fromPrim "HTMLTableSectionElement.getalign"
                     prim__align
                     prim__setAlign
                     v

  export
  ch : HTMLTableSectionElement -> Attribute True I String
  ch v = fromPrim "HTMLTableSectionElement.getch" prim__ch prim__setCh v

  export
  chOff : HTMLTableSectionElement -> Attribute True I String
  chOff v = fromPrim "HTMLTableSectionElement.getchOff"
                     prim__chOff
                     prim__setChOff
                     v

  export
  rows : (obj : HTMLTableSectionElement) -> JSIO HTMLCollection
  rows a = primJS $ HTMLTableSectionElement.prim__rows a

  export
  vAlign : HTMLTableSectionElement -> Attribute True I String
  vAlign v = fromPrim "HTMLTableSectionElement.getvAlign"
                      prim__vAlign
                      prim__setVAlign
                      v

  export
  deleteRow : (obj : HTMLTableSectionElement) -> (index : Int32) -> JSIO ()
  deleteRow a b = primJS $ HTMLTableSectionElement.prim__deleteRow a b

  export
  insertRow :  (obj : HTMLTableSectionElement)
            -> (index : Optional Int32)
            -> JSIO HTMLTableRowElement
  insertRow a b = primJS $ HTMLTableSectionElement.prim__insertRow a (toFFI b)

  export
  insertRow' : (obj : HTMLTableSectionElement) -> JSIO HTMLTableRowElement
  insertRow' a = primJS $ HTMLTableSectionElement.prim__insertRow a undef


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
  autocomplete : HTMLTextAreaElement -> Attribute True I String
  autocomplete v = fromPrim "HTMLTextAreaElement.getautocomplete"
                            prim__autocomplete
                            prim__setAutocomplete
                            v

  export
  cols : HTMLTextAreaElement -> Attribute True I Bits32
  cols v = fromPrim "HTMLTextAreaElement.getcols" prim__cols prim__setCols v

  export
  defaultValue : HTMLTextAreaElement -> Attribute True I String
  defaultValue v = fromPrim "HTMLTextAreaElement.getdefaultValue"
                            prim__defaultValue
                            prim__setDefaultValue
                            v

  export
  dirName : HTMLTextAreaElement -> Attribute True I String
  dirName v = fromPrim "HTMLTextAreaElement.getdirName"
                       prim__dirName
                       prim__setDirName
                       v

  export
  disabled : HTMLTextAreaElement -> Attribute True I Bool
  disabled v = fromPrim "HTMLTextAreaElement.getdisabled"
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
  maxLength : HTMLTextAreaElement -> Attribute True I Int32
  maxLength v = fromPrim "HTMLTextAreaElement.getmaxLength"
                         prim__maxLength
                         prim__setMaxLength
                         v

  export
  minLength : HTMLTextAreaElement -> Attribute True I Int32
  minLength v = fromPrim "HTMLTextAreaElement.getminLength"
                         prim__minLength
                         prim__setMinLength
                         v

  export
  name : HTMLTextAreaElement -> Attribute True I String
  name v = fromPrim "HTMLTextAreaElement.getname" prim__name prim__setName v

  export
  placeholder : HTMLTextAreaElement -> Attribute True I String
  placeholder v = fromPrim "HTMLTextAreaElement.getplaceholder"
                           prim__placeholder
                           prim__setPlaceholder
                           v

  export
  readOnly : HTMLTextAreaElement -> Attribute True I Bool
  readOnly v = fromPrim "HTMLTextAreaElement.getreadOnly"
                        prim__readOnly
                        prim__setReadOnly
                        v

  export
  required : HTMLTextAreaElement -> Attribute True I Bool
  required v = fromPrim "HTMLTextAreaElement.getrequired"
                        prim__required
                        prim__setRequired
                        v

  export
  rows : HTMLTextAreaElement -> Attribute True I Bits32
  rows v = fromPrim "HTMLTextAreaElement.getrows" prim__rows prim__setRows v

  export
  selectionDirection : HTMLTextAreaElement -> Attribute True I String
  selectionDirection v = fromPrim "HTMLTextAreaElement.getselectionDirection"
                                  prim__selectionDirection
                                  prim__setSelectionDirection
                                  v

  export
  selectionEnd : HTMLTextAreaElement -> Attribute True I Bits32
  selectionEnd v = fromPrim "HTMLTextAreaElement.getselectionEnd"
                            prim__selectionEnd
                            prim__setSelectionEnd
                            v

  export
  selectionStart : HTMLTextAreaElement -> Attribute True I Bits32
  selectionStart v = fromPrim "HTMLTextAreaElement.getselectionStart"
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
  value : HTMLTextAreaElement -> Attribute True I String
  value v = fromPrim "HTMLTextAreaElement.getvalue" prim__value prim__setValue v

  export
  willValidate : (obj : HTMLTextAreaElement) -> JSIO Bool
  willValidate a = tryJS "HTMLTextAreaElement.willValidate"
                 $ HTMLTextAreaElement.prim__willValidate a

  export
  wrap : HTMLTextAreaElement -> Attribute True I String
  wrap v = fromPrim "HTMLTextAreaElement.getwrap" prim__wrap prim__setWrap v

  export
  checkValidity : (obj : HTMLTextAreaElement) -> JSIO Bool
  checkValidity a = tryJS "HTMLTextAreaElement.checkValidity"
                  $ HTMLTextAreaElement.prim__checkValidity a

  export
  reportValidity : (obj : HTMLTextAreaElement) -> JSIO Bool
  reportValidity a = tryJS "HTMLTextAreaElement.reportValidity"
                   $ HTMLTextAreaElement.prim__reportValidity a

  export
  select : (obj : HTMLTextAreaElement) -> JSIO ()
  select a = primJS $ HTMLTextAreaElement.prim__select a

  export
  setCustomValidity : (obj : HTMLTextAreaElement) -> (error : String) -> JSIO ()
  setCustomValidity a b = primJS
                        $ HTMLTextAreaElement.prim__setCustomValidity a b

  export
  setRangeText :  (obj : HTMLTextAreaElement)
               -> (replacement : String)
               -> JSIO ()
  setRangeText a b = primJS $ HTMLTextAreaElement.prim__setRangeText a b

  export
  setRangeText1 :  (obj : HTMLTextAreaElement)
                -> (replacement : String)
                -> (start : Bits32)
                -> (end : Bits32)
                -> (selectionMode : Optional SelectionMode)
                -> JSIO ()
  setRangeText1 a b c d e = primJS
                          $ HTMLTextAreaElement.prim__setRangeText1 a
                                                                    b
                                                                    c
                                                                    d
                                                                    (toFFI e)

  export
  setRangeText1' :  (obj : HTMLTextAreaElement)
                 -> (replacement : String)
                 -> (start : Bits32)
                 -> (end : Bits32)
                 -> JSIO ()
  setRangeText1' a b c d = primJS
                         $ HTMLTextAreaElement.prim__setRangeText1 a b c d undef

  export
  setSelectionRange :  (obj : HTMLTextAreaElement)
                    -> (start : Bits32)
                    -> (end : Bits32)
                    -> (direction : Optional String)
                    -> JSIO ()
  setSelectionRange a b c d = primJS
                            $ HTMLTextAreaElement.prim__setSelectionRange a
                                                                          b
                                                                          c
                                                                          (toFFI d)

  export
  setSelectionRange' :  (obj : HTMLTextAreaElement)
                     -> (start : Bits32)
                     -> (end : Bits32)
                     -> JSIO ()
  setSelectionRange' a b c = primJS
                           $ HTMLTextAreaElement.prim__setSelectionRange a
                                                                         b
                                                                         c
                                                                         undef


namespace HTMLTimeElement

  export
  new : JSIO HTMLTimeElement
  new = primJS $ HTMLTimeElement.prim__new

  export
  dateTime : HTMLTimeElement -> Attribute True I String
  dateTime v = fromPrim "HTMLTimeElement.getdateTime"
                        prim__dateTime
                        prim__setDateTime
                        v


namespace HTMLTitleElement

  export
  new : JSIO HTMLTitleElement
  new = primJS $ HTMLTitleElement.prim__new

  export
  text : HTMLTitleElement -> Attribute True I String
  text v = fromPrim "HTMLTitleElement.gettext" prim__text prim__setText v


namespace HTMLTrackElement

  public export
  ERROR : Bits16
  ERROR = 3

  public export
  LOADED : Bits16
  LOADED = 2

  public export
  LOADING : Bits16
  LOADING = 1

  public export
  NONE : Bits16
  NONE = 0

  export
  new : JSIO HTMLTrackElement
  new = primJS $ HTMLTrackElement.prim__new

  export
  default_ : HTMLTrackElement -> Attribute True I Bool
  default_ v = fromPrim "HTMLTrackElement.getdefault"
                        prim__default
                        prim__setDefault
                        v

  export
  kind : HTMLTrackElement -> Attribute True I String
  kind v = fromPrim "HTMLTrackElement.getkind" prim__kind prim__setKind v

  export
  label : HTMLTrackElement -> Attribute True I String
  label v = fromPrim "HTMLTrackElement.getlabel" prim__label prim__setLabel v

  export
  readyState : (obj : HTMLTrackElement) -> JSIO Bits16
  readyState a = primJS $ HTMLTrackElement.prim__readyState a

  export
  src : HTMLTrackElement -> Attribute True I String
  src v = fromPrim "HTMLTrackElement.getsrc" prim__src prim__setSrc v

  export
  srclang : HTMLTrackElement -> Attribute True I String
  srclang v = fromPrim "HTMLTrackElement.getsrclang"
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
  compact : HTMLUListElement -> Attribute True I Bool
  compact v = fromPrim "HTMLUListElement.getcompact"
                       prim__compact
                       prim__setCompact
                       v

  export
  type : HTMLUListElement -> Attribute True I String
  type v = fromPrim "HTMLUListElement.gettype" prim__type prim__setType v



namespace HTMLVideoElement

  export
  new : JSIO HTMLVideoElement
  new = primJS $ HTMLVideoElement.prim__new

  export
  height : HTMLVideoElement -> Attribute True I Bits32
  height v = fromPrim "HTMLVideoElement.getheight"
                      prim__height
                      prim__setHeight
                      v

  export
  playsInline : HTMLVideoElement -> Attribute True I Bool
  playsInline v = fromPrim "HTMLVideoElement.getplaysInline"
                           prim__playsInline
                           prim__setPlaysInline
                           v

  export
  poster : HTMLVideoElement -> Attribute True I String
  poster v = fromPrim "HTMLVideoElement.getposter"
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
  width : HTMLVideoElement -> Attribute True I Bits32
  width v = fromPrim "HTMLVideoElement.getwidth" prim__width prim__setWidth v


namespace HashChangeEvent

  export
  new :  (0 _ : JSType t1)
      => {auto 0 _ : Elem HashChangeEventInit (Types t1)}
      -> (type : String)
      -> (eventInitDict : Optional t1)
      -> JSIO HashChangeEvent
  new a b = primJS $ HashChangeEvent.prim__new a (optUp b)

  export
  new' : (type : String) -> JSIO HashChangeEvent
  new' a = primJS $ HashChangeEvent.prim__new a undef

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
  scrollRestoration : History -> Attribute True I ScrollRestoration
  scrollRestoration v = fromPrim "History.getscrollRestoration"
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
  go : (obj : History) -> (delta : Optional Int32) -> JSIO ()
  go a b = primJS $ History.prim__go a (toFFI b)

  export
  go' : (obj : History) -> JSIO ()
  go' a = primJS $ History.prim__go a undef

  export
  pushState :  (obj : History)
            -> (data_ : Any)
            -> (unused : String)
            -> (url : Optional (Maybe String))
            -> JSIO ()
  pushState a b c d = primJS $ History.prim__pushState a (toFFI b) c (toFFI d)

  export
  pushState' : (obj : History) -> (data_ : Any) -> (unused : String) -> JSIO ()
  pushState' a b c = primJS $ History.prim__pushState a (toFFI b) c undef

  export
  replaceState :  (obj : History)
               -> (data_ : Any)
               -> (unused : String)
               -> (url : Optional (Maybe String))
               -> JSIO ()
  replaceState a b c d = primJS
                       $ History.prim__replaceState a (toFFI b) c (toFFI d)

  export
  replaceState' :  (obj : History)
                -> (data_ : Any)
                -> (unused : String)
                -> JSIO ()
  replaceState' a b c = primJS $ History.prim__replaceState a (toFFI b) c undef


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
  canvas :  (obj : ImageBitmapRenderingContext)
         -> JSIO (NS I [ HTMLCanvasElement , OffscreenCanvas ])
  canvas a = tryJS "ImageBitmapRenderingContext.canvas"
           $ ImageBitmapRenderingContext.prim__canvas a

  export
  transferFromImageBitmap :  (obj : ImageBitmapRenderingContext)
                          -> (bitmap : Maybe ImageBitmap)
                          -> JSIO ()
  transferFromImageBitmap a b = primJS
                              $ ImageBitmapRenderingContext.prim__transferFromImageBitmap a
                                                                                          (toFFI b)


namespace ImageData

  export
  new : (sw : Bits32) -> (sh : Bits32) -> JSIO ImageData
  new a b = primJS $ ImageData.prim__new a b

  export
  new1 :  (data_ : UInt8ClampedArray)
       -> (sw : Bits32)
       -> (sh : Optional Bits32)
       -> JSIO ImageData
  new1 a b c = primJS $ ImageData.prim__new1 a b (toFFI c)

  export
  new1' : (data_ : UInt8ClampedArray) -> (sw : Bits32) -> JSIO ImageData
  new1' a b = primJS $ ImageData.prim__new1 a b undef

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
  hash : Location -> Attribute True I String
  hash v = fromPrim "Location.gethash" prim__hash prim__setHash v

  export
  host : Location -> Attribute True I String
  host v = fromPrim "Location.gethost" prim__host prim__setHost v

  export
  hostname : Location -> Attribute True I String
  hostname v = fromPrim "Location.gethostname"
                        prim__hostname
                        prim__setHostname
                        v

  export
  href : Location -> Attribute True I String
  href v = fromPrim "Location.gethref" prim__href prim__setHref v

  export
  origin : (obj : Location) -> JSIO String
  origin a = primJS $ Location.prim__origin a

  export
  pathname : Location -> Attribute True I String
  pathname v = fromPrim "Location.getpathname"
                        prim__pathname
                        prim__setPathname
                        v

  export
  port : Location -> Attribute True I String
  port v = fromPrim "Location.getport" prim__port prim__setPort v

  export
  protocol : Location -> Attribute True I String
  protocol v = fromPrim "Location.getprotocol"
                        prim__protocol
                        prim__setProtocol
                        v

  export
  search : Location -> Attribute True I String
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

  public export
  MEDIA_ERR_ABORTED : Bits16
  MEDIA_ERR_ABORTED = 1

  public export
  MEDIA_ERR_DECODE : Bits16
  MEDIA_ERR_DECODE = 3

  public export
  MEDIA_ERR_NETWORK : Bits16
  MEDIA_ERR_NETWORK = 2

  public export
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
  new :  (0 _ : JSType t1)
      => {auto 0 _ : Elem MessageEventInit (Types t1)}
      -> (type : String)
      -> (eventInitDict : Optional t1)
      -> JSIO MessageEvent
  new a b = primJS $ MessageEvent.prim__new a (optUp b)

  export
  new' : (type : String) -> JSIO MessageEvent
  new' a = primJS $ MessageEvent.prim__new a undef

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
  source :  (obj : MessageEvent)
         -> JSIO (Maybe (Union3 WindowProxy MessagePort ServiceWorker))
  source a = tryJS "MessageEvent.source" $ MessageEvent.prim__source a

  export
  initMessageEvent :  (obj : MessageEvent)
                   -> (type : String)
                   -> (bubbles : Optional Bool)
                   -> (cancelable : Optional Bool)
                   -> (data_ : Optional Any)
                   -> (origin : Optional String)
                   -> (lastEventId : Optional String)
                   -> (source : Optional (Maybe (NS I [ WindowProxy
                                                      , MessagePort
                                                      , ServiceWorker
                                                      ])))
                   -> (ports : Optional (Array MessagePort))
                   -> JSIO ()
  initMessageEvent a b c d e f g h i = primJS
                                     $ MessageEvent.prim__initMessageEvent a
                                                                           b
                                                                           (toFFI c)
                                                                           (toFFI d)
                                                                           (toFFI e)
                                                                           (toFFI f)
                                                                           (toFFI g)
                                                                           (toFFI h)
                                                                           (toFFI i)

  export
  initMessageEvent' : (obj : MessageEvent) -> (type : String) -> JSIO ()
  initMessageEvent' a b = primJS
                        $ MessageEvent.prim__initMessageEvent a
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
  onmessage v = fromNullablePrim "MessagePort.getonmessage"
                                 prim__onmessage
                                 prim__setOnmessage
                                 v

  export
  onmessageerror : MessagePort -> Attribute False Maybe EventHandlerNonNull
  onmessageerror v = fromNullablePrim "MessagePort.getonmessageerror"
                                      prim__onmessageerror
                                      prim__setOnmessageerror
                                      v

  export
  close : (obj : MessagePort) -> JSIO ()
  close a = primJS $ MessagePort.prim__close a

  export
  postMessage :  (obj : MessagePort)
              -> (message : Any)
              -> (transfer : Array Object)
              -> JSIO ()
  postMessage a b c = primJS $ MessagePort.prim__postMessage a (toFFI b) c

  export
  postMessage1 :  (0 _ : JSType t1)
               => {auto 0 _ : Elem PostMessageOptions (Types t1)}
               -> (obj : MessagePort)
               -> (message : Any)
               -> (options : Optional t1)
               -> JSIO ()
  postMessage1 a b c = primJS
                     $ MessagePort.prim__postMessage1 a (toFFI b) (optUp c)

  export
  postMessage1' : (obj : MessagePort) -> (message : Any) -> JSIO ()
  postMessage1' a b = primJS $ MessagePort.prim__postMessage1 a (toFFI b) undef

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
  namedItem a b = tryJS "MimeTypeArray.namedItem"
                $ MimeTypeArray.prim__namedItem a b


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
  getUserMedia :  (0 _ : JSType t1)
               => {auto 0 _ : Elem MediaStreamConstraints (Types t1)}
               -> (obj : Navigator)
               -> (constraints : t1)
               -> (successCallback : NavigatorUserMediaSuccessCallback)
               -> (errorCallback : NavigatorUserMediaErrorCallback)
               -> JSIO ()
  getUserMedia a b c d = primJS $ Navigator.prim__getUserMedia a (up b) c d


namespace OffscreenCanvas

  export
  new : (width : JSBits64) -> (height : JSBits64) -> JSIO OffscreenCanvas
  new a b = primJS $ OffscreenCanvas.prim__new a b

  export
  height : OffscreenCanvas -> Attribute True I JSBits64
  height v = fromPrim "OffscreenCanvas.getheight" prim__height prim__setHeight v

  export
  width : OffscreenCanvas -> Attribute True I JSBits64
  width v = fromPrim "OffscreenCanvas.getwidth" prim__width prim__setWidth v

  export
  convertToBlob :  (0 _ : JSType t1)
                => {auto 0 _ : Elem ImageEncodeOptions (Types t1)}
                -> (obj : OffscreenCanvas)
                -> (options : Optional t1)
                -> JSIO (Promise Blob)
  convertToBlob a b = primJS $ OffscreenCanvas.prim__convertToBlob a (optUp b)

  export
  convertToBlob' : (obj : OffscreenCanvas) -> JSIO (Promise Blob)
  convertToBlob' a = primJS $ OffscreenCanvas.prim__convertToBlob a undef

  export
  getContext :  (obj : OffscreenCanvas)
             -> (contextId : OffscreenRenderingContextId)
             -> (options : Optional Any)
             -> JSIO (Maybe (NS I [ OffscreenCanvasRenderingContext2D
                                  , ImageBitmapRenderingContext
                                  , WebGLRenderingContext
                                  , WebGL2RenderingContext
                                  ]))
  getContext a b c = tryJS "OffscreenCanvas.getContext"
                   $ OffscreenCanvas.prim__getContext a (toFFI b) (toFFI c)

  export
  getContext' :  (obj : OffscreenCanvas)
              -> (contextId : OffscreenRenderingContextId)
              -> JSIO (Maybe (NS I [ OffscreenCanvasRenderingContext2D
                                   , ImageBitmapRenderingContext
                                   , WebGLRenderingContext
                                   , WebGL2RenderingContext
                                   ]))
  getContext' a b = tryJS "OffscreenCanvas.getContext'"
                  $ OffscreenCanvas.prim__getContext a (toFFI b) undef

  export
  transferToImageBitmap : (obj : OffscreenCanvas) -> JSIO ImageBitmap
  transferToImageBitmap a = primJS
                          $ OffscreenCanvas.prim__transferToImageBitmap a


namespace OffscreenCanvasRenderingContext2D

  export
  canvas : (obj : OffscreenCanvasRenderingContext2D) -> JSIO OffscreenCanvas
  canvas a = primJS $ OffscreenCanvasRenderingContext2D.prim__canvas a

  export
  commit : (obj : OffscreenCanvasRenderingContext2D) -> JSIO ()
  commit a = primJS $ OffscreenCanvasRenderingContext2D.prim__commit a


namespace PageTransitionEvent

  export
  new :  (0 _ : JSType t1)
      => {auto 0 _ : Elem PageTransitionEventInit (Types t1)}
      -> (type : String)
      -> (eventInitDict : Optional t1)
      -> JSIO PageTransitionEvent
  new a b = primJS $ PageTransitionEvent.prim__new a (optUp b)

  export
  new' : (type : String) -> JSIO PageTransitionEvent
  new' a = primJS $ PageTransitionEvent.prim__new a undef

  export
  persisted : (obj : PageTransitionEvent) -> JSIO Bool
  persisted a = tryJS "PageTransitionEvent.persisted"
              $ PageTransitionEvent.prim__persisted a


namespace Path2D

  export
  new : (path : Optional (NS I [ Path2D , String ])) -> JSIO Path2D
  new a = primJS $ Path2D.prim__new (toFFI a)

  export
  new' : JSIO Path2D
  new' = primJS $ Path2D.prim__new undef

  export
  addPath :  (0 _ : JSType t1)
          => {auto 0 _ : Elem DOMMatrix2DInit (Types t1)}
          -> (obj : Path2D)
          -> (path : Path2D)
          -> (transform : Optional t1)
          -> JSIO ()
  addPath a b c = primJS $ Path2D.prim__addPath a b (optUp c)

  export
  addPath' : (obj : Path2D) -> (path : Path2D) -> JSIO ()
  addPath' a b = primJS $ Path2D.prim__addPath a b undef


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
  namedItem a b = tryJS "PluginArray.namedItem"
                $ PluginArray.prim__namedItem a b

  export
  refresh : (obj : PluginArray) -> JSIO ()
  refresh a = primJS $ PluginArray.prim__refresh a


namespace PopStateEvent

  export
  new :  (0 _ : JSType t1)
      => {auto 0 _ : Elem PopStateEventInit (Types t1)}
      -> (type : String)
      -> (eventInitDict : Optional t1)
      -> JSIO PopStateEvent
  new a b = primJS $ PopStateEvent.prim__new a (optUp b)

  export
  new' : (type : String) -> JSIO PopStateEvent
  new' a = primJS $ PopStateEvent.prim__new a undef

  export
  state : (obj : PopStateEvent) -> JSIO Any
  state a = tryJS "PopStateEvent.state" $ PopStateEvent.prim__state a


namespace PromiseRejectionEvent

  export
  new :  (0 _ : JSType t1)
      => {auto 0 _ : Elem PromiseRejectionEventInit (Types t1)}
      -> (type : String)
      -> (eventInitDict : t1)
      -> JSIO PromiseRejectionEvent
  new a b = primJS $ PromiseRejectionEvent.prim__new a (up b)

  export
  promise : (obj : PromiseRejectionEvent) -> JSIO (Promise AnyPtr)
  promise a = primJS $ PromiseRejectionEvent.prim__promise a

  export
  reason : (obj : PromiseRejectionEvent) -> JSIO Any
  reason a = tryJS "PromiseRejectionEvent.reason"
           $ PromiseRejectionEvent.prim__reason a


namespace RadioNodeList

  export
  value : RadioNodeList -> Attribute True I String
  value v = fromPrim "RadioNodeList.getvalue" prim__value prim__setValue v


namespace SharedWorker

  export
  new :  (scriptURL : String)
      -> (options : Optional (NS I [ String , WorkerOptions ]))
      -> JSIO SharedWorker
  new a b = primJS $ SharedWorker.prim__new a (toFFI b)

  export
  new' : (scriptURL : String) -> JSIO SharedWorker
  new' a = primJS $ SharedWorker.prim__new a undef

  export
  port : (obj : SharedWorker) -> JSIO MessagePort
  port a = primJS $ SharedWorker.prim__port a


namespace SharedWorkerGlobalScope

  export
  name : (obj : SharedWorkerGlobalScope) -> JSIO String
  name a = primJS $ SharedWorkerGlobalScope.prim__name a

  export
  onconnect :  SharedWorkerGlobalScope
            -> Attribute False Maybe EventHandlerNonNull
  onconnect v = fromNullablePrim "SharedWorkerGlobalScope.getonconnect"
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
  new :  (0 _ : JSType t1)
      => {auto 0 _ : Elem StorageEventInit (Types t1)}
      -> (type : String)
      -> (eventInitDict : Optional t1)
      -> JSIO StorageEvent
  new a b = primJS $ StorageEvent.prim__new a (optUp b)

  export
  new' : (type : String) -> JSIO StorageEvent
  new' a = primJS $ StorageEvent.prim__new a undef

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
  storageArea a = tryJS "StorageEvent.storageArea"
                $ StorageEvent.prim__storageArea a

  export
  url : (obj : StorageEvent) -> JSIO String
  url a = primJS $ StorageEvent.prim__url a

  export
  initStorageEvent :  (obj : StorageEvent)
                   -> (type : String)
                   -> (bubbles : Optional Bool)
                   -> (cancelable : Optional Bool)
                   -> (key : Optional (Maybe String))
                   -> (oldValue : Optional (Maybe String))
                   -> (newValue : Optional (Maybe String))
                   -> (url : Optional String)
                   -> (storageArea : Optional (Maybe Storage))
                   -> JSIO ()
  initStorageEvent a b c d e f g h i = primJS
                                     $ StorageEvent.prim__initStorageEvent a
                                                                           b
                                                                           (toFFI c)
                                                                           (toFFI d)
                                                                           (toFFI e)
                                                                           (toFFI f)
                                                                           (toFFI g)
                                                                           (toFFI h)
                                                                           (toFFI i)

  export
  initStorageEvent' : (obj : StorageEvent) -> (type : String) -> JSIO ()
  initStorageEvent' a b = primJS
                        $ StorageEvent.prim__initStorageEvent a
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
  new :  (0 _ : JSType t1)
      => {auto 0 _ : Elem SubmitEventInit (Types t1)}
      -> (type : String)
      -> (eventInitDict : Optional t1)
      -> JSIO SubmitEvent
  new a b = primJS $ SubmitEvent.prim__new a (optUp b)

  export
  new' : (type : String) -> JSIO SubmitEvent
  new' a = primJS $ SubmitEvent.prim__new a undef

  export
  submitter : (obj : SubmitEvent) -> JSIO (Maybe HTMLElement)
  submitter a = tryJS "SubmitEvent.submitter" $ SubmitEvent.prim__submitter a


namespace TextMetrics

  export
  actualBoundingBoxAscent : (obj : TextMetrics) -> JSIO Double
  actualBoundingBoxAscent a = primJS
                            $ TextMetrics.prim__actualBoundingBoxAscent a

  export
  actualBoundingBoxDescent : (obj : TextMetrics) -> JSIO Double
  actualBoundingBoxDescent a = primJS
                             $ TextMetrics.prim__actualBoundingBoxDescent a

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
  inBandMetadataTrackDispatchType a = primJS
                                    $ TextTrack.prim__inBandMetadataTrackDispatchType a

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
  mode : TextTrack -> Attribute True I TextTrackMode
  mode v = fromPrim "TextTrack.getmode" prim__mode prim__setMode v

  export
  oncuechange : TextTrack -> Attribute False Maybe EventHandlerNonNull
  oncuechange v = fromNullablePrim "TextTrack.getoncuechange"
                                   prim__oncuechange
                                   prim__setOncuechange
                                   v

  export
  sourceBuffer : (obj : TextTrack) -> JSIO (Maybe SourceBuffer)
  sourceBuffer a = tryJS "TextTrack.sourceBuffer"
                 $ TextTrack.prim__sourceBuffer a

  export
  addCue : (obj : TextTrack) -> (cue : TextTrackCue) -> JSIO ()
  addCue a b = primJS $ TextTrack.prim__addCue a b

  export
  removeCue : (obj : TextTrack) -> (cue : TextTrackCue) -> JSIO ()
  removeCue a b = primJS $ TextTrack.prim__removeCue a b


namespace TextTrackCue

  export
  endTime : TextTrackCue -> Attribute True I Double
  endTime v = fromPrim "TextTrackCue.getendTime"
                       prim__endTime
                       prim__setEndTime
                       v

  export
  id : TextTrackCue -> Attribute True I String
  id v = fromPrim "TextTrackCue.getid" prim__id prim__setId v

  export
  onenter : TextTrackCue -> Attribute False Maybe EventHandlerNonNull
  onenter v = fromNullablePrim "TextTrackCue.getonenter"
                               prim__onenter
                               prim__setOnenter
                               v

  export
  onexit : TextTrackCue -> Attribute False Maybe EventHandlerNonNull
  onexit v = fromNullablePrim "TextTrackCue.getonexit"
                              prim__onexit
                              prim__setOnexit
                              v

  export
  pauseOnExit : TextTrackCue -> Attribute True I Bool
  pauseOnExit v = fromPrim "TextTrackCue.getpauseOnExit"
                           prim__pauseOnExit
                           prim__setPauseOnExit
                           v

  export
  startTime : TextTrackCue -> Attribute True I Double
  startTime v = fromPrim "TextTrackCue.getstartTime"
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
  getCueById :  (obj : TextTrackCueList)
             -> (id : String)
             -> JSIO (Maybe TextTrackCue)
  getCueById a b = tryJS "TextTrackCueList.getCueById"
                 $ TextTrackCueList.prim__getCueById a b


namespace TextTrackList

  export
  get : (obj : TextTrackList) -> (index : Bits32) -> JSIO TextTrack
  get a b = primJS $ TextTrackList.prim__get a b

  export
  length : (obj : TextTrackList) -> JSIO Bits32
  length a = primJS $ TextTrackList.prim__length a

  export
  onaddtrack : TextTrackList -> Attribute False Maybe EventHandlerNonNull
  onaddtrack v = fromNullablePrim "TextTrackList.getonaddtrack"
                                  prim__onaddtrack
                                  prim__setOnaddtrack
                                  v

  export
  onchange : TextTrackList -> Attribute False Maybe EventHandlerNonNull
  onchange v = fromNullablePrim "TextTrackList.getonchange"
                                prim__onchange
                                prim__setOnchange
                                v

  export
  onremovetrack : TextTrackList -> Attribute False Maybe EventHandlerNonNull
  onremovetrack v = fromNullablePrim "TextTrackList.getonremovetrack"
                                     prim__onremovetrack
                                     prim__setOnremovetrack
                                     v

  export
  getTrackById :  (obj : TextTrackList)
               -> (id : String)
               -> JSIO (Maybe TextTrack)
  getTrackById a b = tryJS "TextTrackList.getTrackById"
                   $ TextTrackList.prim__getTrackById a b


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
  new :  (0 _ : JSType t1)
      => {auto 0 _ : Elem TrackEventInit (Types t1)}
      -> (type : String)
      -> (eventInitDict : Optional t1)
      -> JSIO TrackEvent
  new a b = primJS $ TrackEvent.prim__new a (optUp b)

  export
  new' : (type : String) -> JSIO TrackEvent
  new' a = primJS $ TrackEvent.prim__new a undef

  export
  track :  (obj : TrackEvent)
        -> JSIO (Maybe (NS I [ VideoTrack , AudioTrack , TextTrack ]))
  track a = tryJS "TrackEvent.track" $ TrackEvent.prim__track a


namespace ValidityState

  export
  badInput : (obj : ValidityState) -> JSIO Bool
  badInput a = tryJS "ValidityState.badInput" $ ValidityState.prim__badInput a

  export
  customError : (obj : ValidityState) -> JSIO Bool
  customError a = tryJS "ValidityState.customError"
                $ ValidityState.prim__customError a

  export
  patternMismatch : (obj : ValidityState) -> JSIO Bool
  patternMismatch a = tryJS "ValidityState.patternMismatch"
                    $ ValidityState.prim__patternMismatch a

  export
  rangeOverflow : (obj : ValidityState) -> JSIO Bool
  rangeOverflow a = tryJS "ValidityState.rangeOverflow"
                  $ ValidityState.prim__rangeOverflow a

  export
  rangeUnderflow : (obj : ValidityState) -> JSIO Bool
  rangeUnderflow a = tryJS "ValidityState.rangeUnderflow"
                   $ ValidityState.prim__rangeUnderflow a

  export
  stepMismatch : (obj : ValidityState) -> JSIO Bool
  stepMismatch a = tryJS "ValidityState.stepMismatch"
                 $ ValidityState.prim__stepMismatch a

  export
  tooLong : (obj : ValidityState) -> JSIO Bool
  tooLong a = tryJS "ValidityState.tooLong" $ ValidityState.prim__tooLong a

  export
  tooShort : (obj : ValidityState) -> JSIO Bool
  tooShort a = tryJS "ValidityState.tooShort" $ ValidityState.prim__tooShort a

  export
  typeMismatch : (obj : ValidityState) -> JSIO Bool
  typeMismatch a = tryJS "ValidityState.typeMismatch"
                 $ ValidityState.prim__typeMismatch a

  export
  valid : (obj : ValidityState) -> JSIO Bool
  valid a = tryJS "ValidityState.valid" $ ValidityState.prim__valid a

  export
  valueMissing : (obj : ValidityState) -> JSIO Bool
  valueMissing a = tryJS "ValidityState.valueMissing"
                 $ ValidityState.prim__valueMissing a


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
  selected : VideoTrack -> Attribute True I Bool
  selected v = fromPrim "VideoTrack.getselected"
                        prim__selected
                        prim__setSelected
                        v

  export
  sourceBuffer : (obj : VideoTrack) -> JSIO (Maybe SourceBuffer)
  sourceBuffer a = tryJS "VideoTrack.sourceBuffer"
                 $ VideoTrack.prim__sourceBuffer a


namespace VideoTrackList

  export
  get : (obj : VideoTrackList) -> (index : Bits32) -> JSIO VideoTrack
  get a b = primJS $ VideoTrackList.prim__get a b

  export
  length : (obj : VideoTrackList) -> JSIO Bits32
  length a = primJS $ VideoTrackList.prim__length a

  export
  onaddtrack : VideoTrackList -> Attribute False Maybe EventHandlerNonNull
  onaddtrack v = fromNullablePrim "VideoTrackList.getonaddtrack"
                                  prim__onaddtrack
                                  prim__setOnaddtrack
                                  v

  export
  onchange : VideoTrackList -> Attribute False Maybe EventHandlerNonNull
  onchange v = fromNullablePrim "VideoTrackList.getonchange"
                                prim__onchange
                                prim__setOnchange
                                v

  export
  onremovetrack : VideoTrackList -> Attribute False Maybe EventHandlerNonNull
  onremovetrack v = fromNullablePrim "VideoTrackList.getonremovetrack"
                                     prim__onremovetrack
                                     prim__setOnremovetrack
                                     v

  export
  selectedIndex : (obj : VideoTrackList) -> JSIO Int32
  selectedIndex a = primJS $ VideoTrackList.prim__selectedIndex a

  export
  getTrackById :  (obj : VideoTrackList)
               -> (id : String)
               -> JSIO (Maybe VideoTrack)
  getTrackById a b = tryJS "VideoTrackList.getTrackById"
                   $ VideoTrackList.prim__getTrackById a b


namespace WebSocket

  public export
  CLOSED : Bits16
  CLOSED = 3

  public export
  CLOSING : Bits16
  CLOSING = 2

  public export
  CONNECTING : Bits16
  CONNECTING = 0

  public export
  OPEN : Bits16
  OPEN = 1

  export
  new :  (url : String)
      -> (protocols : Optional (NS I [ String , Array String ]))
      -> JSIO WebSocket
  new a b = primJS $ WebSocket.prim__new a (toFFI b)

  export
  new' : (url : String) -> JSIO WebSocket
  new' a = primJS $ WebSocket.prim__new a undef

  export
  binaryType : WebSocket -> Attribute True I BinaryType
  binaryType v = fromPrim "WebSocket.getbinaryType"
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
  onclose v = fromNullablePrim "WebSocket.getonclose"
                               prim__onclose
                               prim__setOnclose
                               v

  export
  onerror : WebSocket -> Attribute False Maybe EventHandlerNonNull
  onerror v = fromNullablePrim "WebSocket.getonerror"
                               prim__onerror
                               prim__setOnerror
                               v

  export
  onmessage : WebSocket -> Attribute False Maybe EventHandlerNonNull
  onmessage v = fromNullablePrim "WebSocket.getonmessage"
                                 prim__onmessage
                                 prim__setOnmessage
                                 v

  export
  onopen : WebSocket -> Attribute False Maybe EventHandlerNonNull
  onopen v = fromNullablePrim "WebSocket.getonopen"
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
  close :  (obj : WebSocket)
        -> (code : Optional Bits16)
        -> (reason : Optional String)
        -> JSIO ()
  close a b c = primJS $ WebSocket.prim__close a (toFFI b) (toFFI c)

  export
  close' : (obj : WebSocket) -> JSIO ()
  close' a = primJS $ WebSocket.prim__close a undef undef

  export
  send : (obj : WebSocket) -> (data_ : String) -> JSIO ()
  send a b = primJS $ WebSocket.prim__send a b

  export
  send1 :  (0 _ : JSType t1)
        => {auto 0 _ : Elem Blob (Types t1)}
        -> (obj : WebSocket)
        -> (data_ : t1)
        -> JSIO ()
  send1 a b = primJS $ WebSocket.prim__send1 a (up b)

  export
  send2 : (obj : WebSocket) -> (data_ : ArrayBuffer) -> JSIO ()
  send2 a b = primJS $ WebSocket.prim__send2 a b

  export
  send3 :  (obj : WebSocket)
        -> (data_ : NS I [ Int8Array
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
  document : (obj : Window) -> JSIO Document
  document a = primJS $ Window.prim__document a

  export
  event : (obj : Window) -> JSIO (NS I [ Event , Undefined ])
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
  name : Window -> Attribute True I String
  name v = fromPrim "Window.getname" prim__name prim__setName v

  export
  navigator : (obj : Window) -> JSIO Navigator
  navigator a = primJS $ Window.prim__navigator a

  export
  opener : Window -> Attribute True I Any
  opener v = fromPrim "Window.getopener" prim__opener prim__setOpener v

  export
  originAgentCluster : (obj : Window) -> JSIO Bool
  originAgentCluster a = tryJS "Window.originAgentCluster"
                       $ Window.prim__originAgentCluster a

  export
  parent : (obj : Window) -> JSIO (Maybe WindowProxy)
  parent a = tryJS "Window.parent" $ Window.prim__parent a

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
  status : Window -> Attribute True I String
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
  confirm : (obj : Window) -> (message : Optional String) -> JSIO Bool
  confirm a b = tryJS "Window.confirm" $ Window.prim__confirm a (toFFI b)

  export
  confirm' : (obj : Window) -> JSIO Bool
  confirm' a = tryJS "Window.confirm'" $ Window.prim__confirm a undef

  export
  focus : (obj : Window) -> JSIO ()
  focus a = primJS $ Window.prim__focus a

  export
  getComputedStyle :  (0 _ : JSType t1)
                   => {auto 0 _ : Elem Element (Types t1)}
                   -> (obj : Window)
                   -> (elt : t1)
                   -> (pseudoElt : Optional (Maybe String))
                   -> JSIO CSSStyleDeclaration
  getComputedStyle a b c = primJS
                         $ Window.prim__getComputedStyle a (up b) (toFFI c)

  export
  getComputedStyle' :  (0 _ : JSType t1)
                    => {auto 0 _ : Elem Element (Types t1)}
                    -> (obj : Window)
                    -> (elt : t1)
                    -> JSIO CSSStyleDeclaration
  getComputedStyle' a b = primJS $ Window.prim__getComputedStyle a (up b) undef

  export
  open_ :  (obj : Window)
        -> (url : Optional String)
        -> (target : Optional String)
        -> (features : Optional String)
        -> JSIO (Maybe WindowProxy)
  open_ a b c d = tryJS "Window.open_"
                $ Window.prim__open a (toFFI b) (toFFI c) (toFFI d)

  export
  open' : (obj : Window) -> JSIO (Maybe WindowProxy)
  open' a = tryJS "Window.open'" $ Window.prim__open a undef undef undef

  export
  postMessage :  (obj : Window)
              -> (message : Any)
              -> (targetOrigin : String)
              -> (transfer : Optional (Array Object))
              -> JSIO ()
  postMessage a b c d = primJS
                      $ Window.prim__postMessage a (toFFI b) c (toFFI d)

  export
  postMessage' :  (obj : Window)
               -> (message : Any)
               -> (targetOrigin : String)
               -> JSIO ()
  postMessage' a b c = primJS $ Window.prim__postMessage a (toFFI b) c undef

  export
  postMessage1 :  (0 _ : JSType t1)
               => {auto 0 _ : Elem WindowPostMessageOptions (Types t1)}
               -> (obj : Window)
               -> (message : Any)
               -> (options : Optional t1)
               -> JSIO ()
  postMessage1 a b c = primJS $ Window.prim__postMessage1 a (toFFI b) (optUp c)

  export
  postMessage1' : (obj : Window) -> (message : Any) -> JSIO ()
  postMessage1' a b = primJS $ Window.prim__postMessage1 a (toFFI b) undef

  export
  print : (obj : Window) -> JSIO ()
  print a = primJS $ Window.prim__print a

  export
  prompt :  (obj : Window)
         -> (message : Optional String)
         -> (default_ : Optional String)
         -> JSIO (Maybe String)
  prompt a b c = tryJS "Window.prompt"
               $ Window.prim__prompt a (toFFI b) (toFFI c)

  export
  prompt' : (obj : Window) -> JSIO (Maybe String)
  prompt' a = tryJS "Window.prompt'" $ Window.prim__prompt a undef undef

  export
  releaseEvents : (obj : Window) -> JSIO ()
  releaseEvents a = primJS $ Window.prim__releaseEvents a

  export
  stop : (obj : Window) -> JSIO ()
  stop a = primJS $ Window.prim__stop a


namespace Worker

  export
  new :  (0 _ : JSType t1)
      => {auto 0 _ : Elem WorkerOptions (Types t1)}
      -> (scriptURL : String)
      -> (options : Optional t1)
      -> JSIO Worker
  new a b = primJS $ Worker.prim__new a (optUp b)

  export
  new' : (scriptURL : String) -> JSIO Worker
  new' a = primJS $ Worker.prim__new a undef

  export
  onmessage : Worker -> Attribute False Maybe EventHandlerNonNull
  onmessage v = fromNullablePrim "Worker.getonmessage"
                                 prim__onmessage
                                 prim__setOnmessage
                                 v

  export
  onmessageerror : Worker -> Attribute False Maybe EventHandlerNonNull
  onmessageerror v = fromNullablePrim "Worker.getonmessageerror"
                                      prim__onmessageerror
                                      prim__setOnmessageerror
                                      v

  export
  postMessage :  (obj : Worker)
              -> (message : Any)
              -> (transfer : Array Object)
              -> JSIO ()
  postMessage a b c = primJS $ Worker.prim__postMessage a (toFFI b) c

  export
  postMessage1 :  (0 _ : JSType t1)
               => {auto 0 _ : Elem PostMessageOptions (Types t1)}
               -> (obj : Worker)
               -> (message : Any)
               -> (options : Optional t1)
               -> JSIO ()
  postMessage1 a b c = primJS $ Worker.prim__postMessage1 a (toFFI b) (optUp c)

  export
  postMessage1' : (obj : Worker) -> (message : Any) -> JSIO ()
  postMessage1' a b = primJS $ Worker.prim__postMessage1 a (toFFI b) undef

  export
  terminate : (obj : Worker) -> JSIO ()
  terminate a = primJS $ Worker.prim__terminate a


namespace WorkerGlobalScope

  export
  location :  (0 _ : JSType t1)
           => {auto 0 _ : Elem WorkerGlobalScope (Types t1)}
           -> (obj : t1)
           -> JSIO WorkerLocation
  location a = primJS $ WorkerGlobalScope.prim__location (up a)

  export
  navigator :  (0 _ : JSType t1)
            => {auto 0 _ : Elem WorkerGlobalScope (Types t1)}
            -> (obj : t1)
            -> JSIO WorkerNavigator
  navigator a = primJS $ WorkerGlobalScope.prim__navigator (up a)

  export
  onerror :  (0 _ : JSType t)
          => {auto 0 _ : Elem WorkerGlobalScope (Types t)}
          -> t
          -> Attribute False Maybe OnErrorEventHandlerNonNull
  onerror v = fromNullablePrim "WorkerGlobalScope.getonerror"
                               prim__onerror
                               prim__setOnerror
                               (v :> WorkerGlobalScope)

  export
  onlanguagechange :  (0 _ : JSType t)
                   => {auto 0 _ : Elem WorkerGlobalScope (Types t)}
                   -> t
                   -> Attribute False Maybe EventHandlerNonNull
  onlanguagechange v = fromNullablePrim "WorkerGlobalScope.getonlanguagechange"
                                        prim__onlanguagechange
                                        prim__setOnlanguagechange
                                        (v :> WorkerGlobalScope)

  export
  onoffline :  (0 _ : JSType t)
            => {auto 0 _ : Elem WorkerGlobalScope (Types t)}
            -> t
            -> Attribute False Maybe EventHandlerNonNull
  onoffline v = fromNullablePrim "WorkerGlobalScope.getonoffline"
                                 prim__onoffline
                                 prim__setOnoffline
                                 (v :> WorkerGlobalScope)

  export
  ononline :  (0 _ : JSType t)
           => {auto 0 _ : Elem WorkerGlobalScope (Types t)}
           -> t
           -> Attribute False Maybe EventHandlerNonNull
  ononline v = fromNullablePrim "WorkerGlobalScope.getononline"
                                prim__ononline
                                prim__setOnonline
                                (v :> WorkerGlobalScope)

  export
  onrejectionhandled :  (0 _ : JSType t)
                     => {auto 0 _ : Elem WorkerGlobalScope (Types t)}
                     -> t
                     -> Attribute False Maybe EventHandlerNonNull
  onrejectionhandled v = fromNullablePrim "WorkerGlobalScope.getonrejectionhandled"
                                          prim__onrejectionhandled
                                          prim__setOnrejectionhandled
                                          (v :> WorkerGlobalScope)

  export
  onunhandledrejection :  (0 _ : JSType t)
                       => {auto 0 _ : Elem WorkerGlobalScope (Types t)}
                       -> t
                       -> Attribute False Maybe EventHandlerNonNull
  onunhandledrejection v = fromNullablePrim "WorkerGlobalScope.getonunhandledrejection"
                                            prim__onunhandledrejection
                                            prim__setOnunhandledrejection
                                            (v :> WorkerGlobalScope)

  export
  self :  (0 _ : JSType t1)
       => {auto 0 _ : Elem WorkerGlobalScope (Types t1)}
       -> (obj : t1)
       -> JSIO WorkerGlobalScope
  self a = primJS $ WorkerGlobalScope.prim__self (up a)

  export
  importScripts :  (0 _ : JSType t1)
                => {auto 0 _ : Elem WorkerGlobalScope (Types t1)}
                -> (obj : t1)
                -> (urls : List String)
                -> JSIO ()
  importScripts a b = primJS
                    $ WorkerGlobalScope.prim__importScripts (up a) (toFFI b)


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
  addModule :  (0 _ : JSType t1)
            => {auto 0 _ : Elem WorkletOptions (Types t1)}
            -> (obj : Worklet)
            -> (moduleURL : String)
            -> (options : Optional t1)
            -> JSIO (Promise Undefined)
  addModule a b c = primJS $ Worklet.prim__addModule a b (optUp c)

  export
  addModule' :  (obj : Worklet)
             -> (moduleURL : String)
             -> JSIO (Promise Undefined)
  addModule' a b = primJS $ Worklet.prim__addModule a b undef




--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace ARIAMixin

  export
  ariaAtomic :  (0 _ : JSType t)
             => {auto 0 _ : Elem ARIAMixin (Types t)}
             -> t
             -> Attribute True I String
  ariaAtomic v = fromPrim "ARIAMixin.getariaAtomic"
                          prim__ariaAtomic
                          prim__setAriaAtomic
                          (v :> ARIAMixin)

  export
  ariaAutoComplete :  (0 _ : JSType t)
                   => {auto 0 _ : Elem ARIAMixin (Types t)}
                   -> t
                   -> Attribute True I String
  ariaAutoComplete v = fromPrim "ARIAMixin.getariaAutoComplete"
                                prim__ariaAutoComplete
                                prim__setAriaAutoComplete
                                (v :> ARIAMixin)

  export
  ariaBusy :  (0 _ : JSType t)
           => {auto 0 _ : Elem ARIAMixin (Types t)}
           -> t
           -> Attribute True I String
  ariaBusy v = fromPrim "ARIAMixin.getariaBusy"
                        prim__ariaBusy
                        prim__setAriaBusy
                        (v :> ARIAMixin)

  export
  ariaChecked :  (0 _ : JSType t)
              => {auto 0 _ : Elem ARIAMixin (Types t)}
              -> t
              -> Attribute True I String
  ariaChecked v = fromPrim "ARIAMixin.getariaChecked"
                           prim__ariaChecked
                           prim__setAriaChecked
                           (v :> ARIAMixin)

  export
  ariaColCount :  (0 _ : JSType t)
               => {auto 0 _ : Elem ARIAMixin (Types t)}
               -> t
               -> Attribute True I String
  ariaColCount v = fromPrim "ARIAMixin.getariaColCount"
                            prim__ariaColCount
                            prim__setAriaColCount
                            (v :> ARIAMixin)

  export
  ariaColIndex :  (0 _ : JSType t)
               => {auto 0 _ : Elem ARIAMixin (Types t)}
               -> t
               -> Attribute True I String
  ariaColIndex v = fromPrim "ARIAMixin.getariaColIndex"
                            prim__ariaColIndex
                            prim__setAriaColIndex
                            (v :> ARIAMixin)

  export
  ariaColIndexText :  (0 _ : JSType t)
                   => {auto 0 _ : Elem ARIAMixin (Types t)}
                   -> t
                   -> Attribute True I String
  ariaColIndexText v = fromPrim "ARIAMixin.getariaColIndexText"
                                prim__ariaColIndexText
                                prim__setAriaColIndexText
                                (v :> ARIAMixin)

  export
  ariaColSpan :  (0 _ : JSType t)
              => {auto 0 _ : Elem ARIAMixin (Types t)}
              -> t
              -> Attribute True I String
  ariaColSpan v = fromPrim "ARIAMixin.getariaColSpan"
                           prim__ariaColSpan
                           prim__setAriaColSpan
                           (v :> ARIAMixin)

  export
  ariaCurrent :  (0 _ : JSType t)
              => {auto 0 _ : Elem ARIAMixin (Types t)}
              -> t
              -> Attribute True I String
  ariaCurrent v = fromPrim "ARIAMixin.getariaCurrent"
                           prim__ariaCurrent
                           prim__setAriaCurrent
                           (v :> ARIAMixin)

  export
  ariaDescription :  (0 _ : JSType t)
                  => {auto 0 _ : Elem ARIAMixin (Types t)}
                  -> t
                  -> Attribute True I String
  ariaDescription v = fromPrim "ARIAMixin.getariaDescription"
                               prim__ariaDescription
                               prim__setAriaDescription
                               (v :> ARIAMixin)

  export
  ariaDisabled :  (0 _ : JSType t)
               => {auto 0 _ : Elem ARIAMixin (Types t)}
               -> t
               -> Attribute True I String
  ariaDisabled v = fromPrim "ARIAMixin.getariaDisabled"
                            prim__ariaDisabled
                            prim__setAriaDisabled
                            (v :> ARIAMixin)

  export
  ariaExpanded :  (0 _ : JSType t)
               => {auto 0 _ : Elem ARIAMixin (Types t)}
               -> t
               -> Attribute True I String
  ariaExpanded v = fromPrim "ARIAMixin.getariaExpanded"
                            prim__ariaExpanded
                            prim__setAriaExpanded
                            (v :> ARIAMixin)

  export
  ariaHasPopup :  (0 _ : JSType t)
               => {auto 0 _ : Elem ARIAMixin (Types t)}
               -> t
               -> Attribute True I String
  ariaHasPopup v = fromPrim "ARIAMixin.getariaHasPopup"
                            prim__ariaHasPopup
                            prim__setAriaHasPopup
                            (v :> ARIAMixin)

  export
  ariaHidden :  (0 _ : JSType t)
             => {auto 0 _ : Elem ARIAMixin (Types t)}
             -> t
             -> Attribute True I String
  ariaHidden v = fromPrim "ARIAMixin.getariaHidden"
                          prim__ariaHidden
                          prim__setAriaHidden
                          (v :> ARIAMixin)

  export
  ariaInvalid :  (0 _ : JSType t)
              => {auto 0 _ : Elem ARIAMixin (Types t)}
              -> t
              -> Attribute True I String
  ariaInvalid v = fromPrim "ARIAMixin.getariaInvalid"
                           prim__ariaInvalid
                           prim__setAriaInvalid
                           (v :> ARIAMixin)

  export
  ariaKeyShortcuts :  (0 _ : JSType t)
                   => {auto 0 _ : Elem ARIAMixin (Types t)}
                   -> t
                   -> Attribute True I String
  ariaKeyShortcuts v = fromPrim "ARIAMixin.getariaKeyShortcuts"
                                prim__ariaKeyShortcuts
                                prim__setAriaKeyShortcuts
                                (v :> ARIAMixin)

  export
  ariaLabel :  (0 _ : JSType t)
            => {auto 0 _ : Elem ARIAMixin (Types t)}
            -> t
            -> Attribute True I String
  ariaLabel v = fromPrim "ARIAMixin.getariaLabel"
                         prim__ariaLabel
                         prim__setAriaLabel
                         (v :> ARIAMixin)

  export
  ariaLevel :  (0 _ : JSType t)
            => {auto 0 _ : Elem ARIAMixin (Types t)}
            -> t
            -> Attribute True I String
  ariaLevel v = fromPrim "ARIAMixin.getariaLevel"
                         prim__ariaLevel
                         prim__setAriaLevel
                         (v :> ARIAMixin)

  export
  ariaLive :  (0 _ : JSType t)
           => {auto 0 _ : Elem ARIAMixin (Types t)}
           -> t
           -> Attribute True I String
  ariaLive v = fromPrim "ARIAMixin.getariaLive"
                        prim__ariaLive
                        prim__setAriaLive
                        (v :> ARIAMixin)

  export
  ariaModal :  (0 _ : JSType t)
            => {auto 0 _ : Elem ARIAMixin (Types t)}
            -> t
            -> Attribute True I String
  ariaModal v = fromPrim "ARIAMixin.getariaModal"
                         prim__ariaModal
                         prim__setAriaModal
                         (v :> ARIAMixin)

  export
  ariaMultiLine :  (0 _ : JSType t)
                => {auto 0 _ : Elem ARIAMixin (Types t)}
                -> t
                -> Attribute True I String
  ariaMultiLine v = fromPrim "ARIAMixin.getariaMultiLine"
                             prim__ariaMultiLine
                             prim__setAriaMultiLine
                             (v :> ARIAMixin)

  export
  ariaMultiSelectable :  (0 _ : JSType t)
                      => {auto 0 _ : Elem ARIAMixin (Types t)}
                      -> t
                      -> Attribute True I String
  ariaMultiSelectable v = fromPrim "ARIAMixin.getariaMultiSelectable"
                                   prim__ariaMultiSelectable
                                   prim__setAriaMultiSelectable
                                   (v :> ARIAMixin)

  export
  ariaOrientation :  (0 _ : JSType t)
                  => {auto 0 _ : Elem ARIAMixin (Types t)}
                  -> t
                  -> Attribute True I String
  ariaOrientation v = fromPrim "ARIAMixin.getariaOrientation"
                               prim__ariaOrientation
                               prim__setAriaOrientation
                               (v :> ARIAMixin)

  export
  ariaPlaceholder :  (0 _ : JSType t)
                  => {auto 0 _ : Elem ARIAMixin (Types t)}
                  -> t
                  -> Attribute True I String
  ariaPlaceholder v = fromPrim "ARIAMixin.getariaPlaceholder"
                               prim__ariaPlaceholder
                               prim__setAriaPlaceholder
                               (v :> ARIAMixin)

  export
  ariaPosInSet :  (0 _ : JSType t)
               => {auto 0 _ : Elem ARIAMixin (Types t)}
               -> t
               -> Attribute True I String
  ariaPosInSet v = fromPrim "ARIAMixin.getariaPosInSet"
                            prim__ariaPosInSet
                            prim__setAriaPosInSet
                            (v :> ARIAMixin)

  export
  ariaPressed :  (0 _ : JSType t)
              => {auto 0 _ : Elem ARIAMixin (Types t)}
              -> t
              -> Attribute True I String
  ariaPressed v = fromPrim "ARIAMixin.getariaPressed"
                           prim__ariaPressed
                           prim__setAriaPressed
                           (v :> ARIAMixin)

  export
  ariaReadOnly :  (0 _ : JSType t)
               => {auto 0 _ : Elem ARIAMixin (Types t)}
               -> t
               -> Attribute True I String
  ariaReadOnly v = fromPrim "ARIAMixin.getariaReadOnly"
                            prim__ariaReadOnly
                            prim__setAriaReadOnly
                            (v :> ARIAMixin)

  export
  ariaRequired :  (0 _ : JSType t)
               => {auto 0 _ : Elem ARIAMixin (Types t)}
               -> t
               -> Attribute True I String
  ariaRequired v = fromPrim "ARIAMixin.getariaRequired"
                            prim__ariaRequired
                            prim__setAriaRequired
                            (v :> ARIAMixin)

  export
  ariaRoleDescription :  (0 _ : JSType t)
                      => {auto 0 _ : Elem ARIAMixin (Types t)}
                      -> t
                      -> Attribute True I String
  ariaRoleDescription v = fromPrim "ARIAMixin.getariaRoleDescription"
                                   prim__ariaRoleDescription
                                   prim__setAriaRoleDescription
                                   (v :> ARIAMixin)

  export
  ariaRowCount :  (0 _ : JSType t)
               => {auto 0 _ : Elem ARIAMixin (Types t)}
               -> t
               -> Attribute True I String
  ariaRowCount v = fromPrim "ARIAMixin.getariaRowCount"
                            prim__ariaRowCount
                            prim__setAriaRowCount
                            (v :> ARIAMixin)

  export
  ariaRowIndex :  (0 _ : JSType t)
               => {auto 0 _ : Elem ARIAMixin (Types t)}
               -> t
               -> Attribute True I String
  ariaRowIndex v = fromPrim "ARIAMixin.getariaRowIndex"
                            prim__ariaRowIndex
                            prim__setAriaRowIndex
                            (v :> ARIAMixin)

  export
  ariaRowIndexText :  (0 _ : JSType t)
                   => {auto 0 _ : Elem ARIAMixin (Types t)}
                   -> t
                   -> Attribute True I String
  ariaRowIndexText v = fromPrim "ARIAMixin.getariaRowIndexText"
                                prim__ariaRowIndexText
                                prim__setAriaRowIndexText
                                (v :> ARIAMixin)

  export
  ariaRowSpan :  (0 _ : JSType t)
              => {auto 0 _ : Elem ARIAMixin (Types t)}
              -> t
              -> Attribute True I String
  ariaRowSpan v = fromPrim "ARIAMixin.getariaRowSpan"
                           prim__ariaRowSpan
                           prim__setAriaRowSpan
                           (v :> ARIAMixin)

  export
  ariaSelected :  (0 _ : JSType t)
               => {auto 0 _ : Elem ARIAMixin (Types t)}
               -> t
               -> Attribute True I String
  ariaSelected v = fromPrim "ARIAMixin.getariaSelected"
                            prim__ariaSelected
                            prim__setAriaSelected
                            (v :> ARIAMixin)

  export
  ariaSetSize :  (0 _ : JSType t)
              => {auto 0 _ : Elem ARIAMixin (Types t)}
              -> t
              -> Attribute True I String
  ariaSetSize v = fromPrim "ARIAMixin.getariaSetSize"
                           prim__ariaSetSize
                           prim__setAriaSetSize
                           (v :> ARIAMixin)

  export
  ariaSort :  (0 _ : JSType t)
           => {auto 0 _ : Elem ARIAMixin (Types t)}
           -> t
           -> Attribute True I String
  ariaSort v = fromPrim "ARIAMixin.getariaSort"
                        prim__ariaSort
                        prim__setAriaSort
                        (v :> ARIAMixin)

  export
  ariaValueMax :  (0 _ : JSType t)
               => {auto 0 _ : Elem ARIAMixin (Types t)}
               -> t
               -> Attribute True I String
  ariaValueMax v = fromPrim "ARIAMixin.getariaValueMax"
                            prim__ariaValueMax
                            prim__setAriaValueMax
                            (v :> ARIAMixin)

  export
  ariaValueMin :  (0 _ : JSType t)
               => {auto 0 _ : Elem ARIAMixin (Types t)}
               -> t
               -> Attribute True I String
  ariaValueMin v = fromPrim "ARIAMixin.getariaValueMin"
                            prim__ariaValueMin
                            prim__setAriaValueMin
                            (v :> ARIAMixin)

  export
  ariaValueNow :  (0 _ : JSType t)
               => {auto 0 _ : Elem ARIAMixin (Types t)}
               -> t
               -> Attribute True I String
  ariaValueNow v = fromPrim "ARIAMixin.getariaValueNow"
                            prim__ariaValueNow
                            prim__setAriaValueNow
                            (v :> ARIAMixin)

  export
  ariaValueText :  (0 _ : JSType t)
                => {auto 0 _ : Elem ARIAMixin (Types t)}
                -> t
                -> Attribute True I String
  ariaValueText v = fromPrim "ARIAMixin.getariaValueText"
                             prim__ariaValueText
                             prim__setAriaValueText
                             (v :> ARIAMixin)

  export
  role :  (0 _ : JSType t)
       => {auto 0 _ : Elem ARIAMixin (Types t)}
       -> t
       -> Attribute False Maybe String
  role v = fromNullablePrim "ARIAMixin.getrole"
                            prim__role
                            prim__setRole
                            (v :> ARIAMixin)


namespace AbstractWorker

  export
  onerror :  (0 _ : JSType t)
          => {auto 0 _ : Elem AbstractWorker (Types t)}
          -> t
          -> Attribute False Maybe EventHandlerNonNull
  onerror v = fromNullablePrim "AbstractWorker.getonerror"
                               prim__onerror
                               prim__setOnerror
                               (v :> AbstractWorker)


namespace CanvasCompositing

  export
  globalAlpha :  (0 _ : JSType t)
              => {auto 0 _ : Elem CanvasCompositing (Types t)}
              -> t
              -> Attribute True I Double
  globalAlpha v = fromPrim "CanvasCompositing.getglobalAlpha"
                           prim__globalAlpha
                           prim__setGlobalAlpha
                           (v :> CanvasCompositing)

  export
  globalCompositeOperation :  (0 _ : JSType t)
                           => {auto 0 _ : Elem CanvasCompositing (Types t)}
                           -> t
                           -> Attribute True I String
  globalCompositeOperation v = fromPrim "CanvasCompositing.getglobalCompositeOperation"
                                        prim__globalCompositeOperation
                                        prim__setGlobalCompositeOperation
                                        (v :> CanvasCompositing)


namespace CanvasDrawImage

  export
  drawImage :  (0 _ : JSType t1)
            => {auto 0 _ : Elem CanvasDrawImage (Types t1)}
            -> (obj : t1)
            -> (image : NS I [ HTMLImageElement
                             , SVGImageElement
                             , HTMLVideoElement
                             , HTMLCanvasElement
                             , ImageBitmap
                             , OffscreenCanvas
                             ])
            -> (dx : Double)
            -> (dy : Double)
            -> JSIO ()
  drawImage a b c d = primJS
                    $ CanvasDrawImage.prim__drawImage (up a) (toFFI b) c d

  export
  drawImage1 :  (0 _ : JSType t1)
             => {auto 0 _ : Elem CanvasDrawImage (Types t1)}
             -> (obj : t1)
             -> (image : NS I [ HTMLImageElement
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
  drawImage1 a b c d e f = primJS
                         $ CanvasDrawImage.prim__drawImage1 (up a)
                                                            (toFFI b)
                                                            c
                                                            d
                                                            e
                                                            f

  export
  drawImage2 :  (0 _ : JSType t1)
             => {auto 0 _ : Elem CanvasDrawImage (Types t1)}
             -> (obj : t1)
             -> (image : NS I [ HTMLImageElement
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
  drawImage2 a b c d e f g h i j = primJS
                                 $ CanvasDrawImage.prim__drawImage2 (up a)
                                                                    (toFFI b)
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
  beginPath :  (0 _ : JSType t1)
            => {auto 0 _ : Elem CanvasDrawPath (Types t1)}
            -> (obj : t1)
            -> JSIO ()
  beginPath a = primJS $ CanvasDrawPath.prim__beginPath (up a)

  export
  clip :  (0 _ : JSType t1)
       => {auto 0 _ : Elem CanvasDrawPath (Types t1)}
       -> (obj : t1)
       -> (fillRule : Optional CanvasFillRule)
       -> JSIO ()
  clip a b = primJS $ CanvasDrawPath.prim__clip (up a) (toFFI b)

  export
  clip' :  (0 _ : JSType t1)
        => {auto 0 _ : Elem CanvasDrawPath (Types t1)}
        -> (obj : t1)
        -> JSIO ()
  clip' a = primJS $ CanvasDrawPath.prim__clip (up a) undef

  export
  clip1 :  (0 _ : JSType t1)
        => {auto 0 _ : Elem CanvasDrawPath (Types t1)}
        -> (obj : t1)
        -> (path : Path2D)
        -> (fillRule : Optional CanvasFillRule)
        -> JSIO ()
  clip1 a b c = primJS $ CanvasDrawPath.prim__clip1 (up a) b (toFFI c)

  export
  clip1' :  (0 _ : JSType t1)
         => {auto 0 _ : Elem CanvasDrawPath (Types t1)}
         -> (obj : t1)
         -> (path : Path2D)
         -> JSIO ()
  clip1' a b = primJS $ CanvasDrawPath.prim__clip1 (up a) b undef

  export
  fill :  (0 _ : JSType t1)
       => {auto 0 _ : Elem CanvasDrawPath (Types t1)}
       -> (obj : t1)
       -> (fillRule : Optional CanvasFillRule)
       -> JSIO ()
  fill a b = primJS $ CanvasDrawPath.prim__fill (up a) (toFFI b)

  export
  fill' :  (0 _ : JSType t1)
        => {auto 0 _ : Elem CanvasDrawPath (Types t1)}
        -> (obj : t1)
        -> JSIO ()
  fill' a = primJS $ CanvasDrawPath.prim__fill (up a) undef

  export
  fill1 :  (0 _ : JSType t1)
        => {auto 0 _ : Elem CanvasDrawPath (Types t1)}
        -> (obj : t1)
        -> (path : Path2D)
        -> (fillRule : Optional CanvasFillRule)
        -> JSIO ()
  fill1 a b c = primJS $ CanvasDrawPath.prim__fill1 (up a) b (toFFI c)

  export
  fill1' :  (0 _ : JSType t1)
         => {auto 0 _ : Elem CanvasDrawPath (Types t1)}
         -> (obj : t1)
         -> (path : Path2D)
         -> JSIO ()
  fill1' a b = primJS $ CanvasDrawPath.prim__fill1 (up a) b undef

  export
  isPointInPath :  (0 _ : JSType t1)
                => {auto 0 _ : Elem CanvasDrawPath (Types t1)}
                -> (obj : t1)
                -> (x : Double)
                -> (y : Double)
                -> (fillRule : Optional CanvasFillRule)
                -> JSIO Bool
  isPointInPath a b c d = tryJS "CanvasDrawPath.isPointInPath"
                        $ CanvasDrawPath.prim__isPointInPath (up a)
                                                             b
                                                             c
                                                             (toFFI d)

  export
  isPointInPath' :  (0 _ : JSType t1)
                 => {auto 0 _ : Elem CanvasDrawPath (Types t1)}
                 -> (obj : t1)
                 -> (x : Double)
                 -> (y : Double)
                 -> JSIO Bool
  isPointInPath' a b c = tryJS "CanvasDrawPath.isPointInPath'"
                       $ CanvasDrawPath.prim__isPointInPath (up a) b c undef

  export
  isPointInPath1 :  (0 _ : JSType t1)
                 => {auto 0 _ : Elem CanvasDrawPath (Types t1)}
                 -> (obj : t1)
                 -> (path : Path2D)
                 -> (x : Double)
                 -> (y : Double)
                 -> (fillRule : Optional CanvasFillRule)
                 -> JSIO Bool
  isPointInPath1 a b c d e = tryJS "CanvasDrawPath.isPointInPath1"
                           $ CanvasDrawPath.prim__isPointInPath1 (up a)
                                                                 b
                                                                 c
                                                                 d
                                                                 (toFFI e)

  export
  isPointInPath1' :  (0 _ : JSType t1)
                  => {auto 0 _ : Elem CanvasDrawPath (Types t1)}
                  -> (obj : t1)
                  -> (path : Path2D)
                  -> (x : Double)
                  -> (y : Double)
                  -> JSIO Bool
  isPointInPath1' a b c d = tryJS "CanvasDrawPath.isPointInPath1'"
                          $ CanvasDrawPath.prim__isPointInPath1 (up a)
                                                                b
                                                                c
                                                                d
                                                                undef

  export
  isPointInStroke :  (0 _ : JSType t1)
                  => {auto 0 _ : Elem CanvasDrawPath (Types t1)}
                  -> (obj : t1)
                  -> (x : Double)
                  -> (y : Double)
                  -> JSIO Bool
  isPointInStroke a b c = tryJS "CanvasDrawPath.isPointInStroke"
                        $ CanvasDrawPath.prim__isPointInStroke (up a) b c

  export
  isPointInStroke1 :  (0 _ : JSType t1)
                   => {auto 0 _ : Elem CanvasDrawPath (Types t1)}
                   -> (obj : t1)
                   -> (path : Path2D)
                   -> (x : Double)
                   -> (y : Double)
                   -> JSIO Bool
  isPointInStroke1 a b c d = tryJS "CanvasDrawPath.isPointInStroke1"
                           $ CanvasDrawPath.prim__isPointInStroke1 (up a) b c d

  export
  stroke :  (0 _ : JSType t1)
         => {auto 0 _ : Elem CanvasDrawPath (Types t1)}
         -> (obj : t1)
         -> JSIO ()
  stroke a = primJS $ CanvasDrawPath.prim__stroke (up a)

  export
  stroke1 :  (0 _ : JSType t1)
          => {auto 0 _ : Elem CanvasDrawPath (Types t1)}
          -> (obj : t1)
          -> (path : Path2D)
          -> JSIO ()
  stroke1 a b = primJS $ CanvasDrawPath.prim__stroke1 (up a) b


namespace CanvasFillStrokeStyles

  export
  fillStyle :  (0 _ : JSType t)
            => {auto 0 _ : Elem CanvasFillStrokeStyles (Types t)}
            -> t
            -> Attribute True I (NS I [ String
                                      , CanvasGradient
                                      , CanvasPattern
                                      ])
  fillStyle v = fromPrim "CanvasFillStrokeStyles.getfillStyle"
                         prim__fillStyle
                         prim__setFillStyle
                         (v :> CanvasFillStrokeStyles)

  export
  strokeStyle :  (0 _ : JSType t)
              => {auto 0 _ : Elem CanvasFillStrokeStyles (Types t)}
              -> t
              -> Attribute True I (NS I [ String
                                        , CanvasGradient
                                        , CanvasPattern
                                        ])
  strokeStyle v = fromPrim "CanvasFillStrokeStyles.getstrokeStyle"
                           prim__strokeStyle
                           prim__setStrokeStyle
                           (v :> CanvasFillStrokeStyles)

  export
  createLinearGradient :  (0 _ : JSType t1)
                       => {auto 0 _ : Elem CanvasFillStrokeStyles (Types t1)}
                       -> (obj : t1)
                       -> (x0 : Double)
                       -> (y0 : Double)
                       -> (x1 : Double)
                       -> (y1 : Double)
                       -> JSIO CanvasGradient
  createLinearGradient a b c d e = primJS
                                 $ CanvasFillStrokeStyles.prim__createLinearGradient (up a)
                                                                                     b
                                                                                     c
                                                                                     d
                                                                                     e

  export
  createPattern :  (0 _ : JSType t1)
                => {auto 0 _ : Elem CanvasFillStrokeStyles (Types t1)}
                -> (obj : t1)
                -> (image : NS I [ HTMLImageElement
                                 , SVGImageElement
                                 , HTMLVideoElement
                                 , HTMLCanvasElement
                                 , ImageBitmap
                                 , OffscreenCanvas
                                 ])
                -> (repetition : String)
                -> JSIO (Maybe CanvasPattern)
  createPattern a b c = tryJS "CanvasFillStrokeStyles.createPattern"
                      $ CanvasFillStrokeStyles.prim__createPattern (up a)
                                                                   (toFFI b)
                                                                   c

  export
  createRadialGradient :  (0 _ : JSType t1)
                       => {auto 0 _ : Elem CanvasFillStrokeStyles (Types t1)}
                       -> (obj : t1)
                       -> (x0 : Double)
                       -> (y0 : Double)
                       -> (r0 : Double)
                       -> (x1 : Double)
                       -> (y1 : Double)
                       -> (r1 : Double)
                       -> JSIO CanvasGradient
  createRadialGradient a b c d e f g = primJS
                                     $ CanvasFillStrokeStyles.prim__createRadialGradient (up a)
                                                                                         b
                                                                                         c
                                                                                         d
                                                                                         e
                                                                                         f
                                                                                         g


namespace CanvasFilters

  export
  filter :  (0 _ : JSType t)
         => {auto 0 _ : Elem CanvasFilters (Types t)}
         -> t
         -> Attribute True I String
  filter v = fromPrim "CanvasFilters.getfilter"
                      prim__filter
                      prim__setFilter
                      (v :> CanvasFilters)


namespace CanvasImageData

  export
  createImageData :  (0 _ : JSType t1)
                  => {auto 0 _ : Elem CanvasImageData (Types t1)}
                  -> (obj : t1)
                  -> (sw : Int32)
                  -> (sh : Int32)
                  -> JSIO ImageData
  createImageData a b c = primJS
                        $ CanvasImageData.prim__createImageData (up a) b c

  export
  createImageData1 :  (0 _ : JSType t1)
                   => {auto 0 _ : Elem CanvasImageData (Types t1)}
                   -> (obj : t1)
                   -> (imagedata : ImageData)
                   -> JSIO ImageData
  createImageData1 a b = primJS
                       $ CanvasImageData.prim__createImageData1 (up a) b

  export
  getImageData :  (0 _ : JSType t1)
               => {auto 0 _ : Elem CanvasImageData (Types t1)}
               -> (obj : t1)
               -> (sx : Int32)
               -> (sy : Int32)
               -> (sw : Int32)
               -> (sh : Int32)
               -> JSIO ImageData
  getImageData a b c d e = primJS
                         $ CanvasImageData.prim__getImageData (up a) b c d e

  export
  putImageData :  (0 _ : JSType t1)
               => {auto 0 _ : Elem CanvasImageData (Types t1)}
               -> (obj : t1)
               -> (imagedata : ImageData)
               -> (dx : Int32)
               -> (dy : Int32)
               -> JSIO ()
  putImageData a b c d = primJS
                       $ CanvasImageData.prim__putImageData (up a) b c d

  export
  putImageData1 :  (0 _ : JSType t1)
                => {auto 0 _ : Elem CanvasImageData (Types t1)}
                -> (obj : t1)
                -> (imagedata : ImageData)
                -> (dx : Int32)
                -> (dy : Int32)
                -> (dirtyX : Int32)
                -> (dirtyY : Int32)
                -> (dirtyWidth : Int32)
                -> (dirtyHeight : Int32)
                -> JSIO ()
  putImageData1 a b c d e f g h = primJS
                                $ CanvasImageData.prim__putImageData1 (up a)
                                                                      b
                                                                      c
                                                                      d
                                                                      e
                                                                      f
                                                                      g
                                                                      h


namespace CanvasImageSmoothing

  export
  imageSmoothingEnabled :  (0 _ : JSType t)
                        => {auto 0 _ : Elem CanvasImageSmoothing (Types t)}
                        -> t
                        -> Attribute True I Bool
  imageSmoothingEnabled v = fromPrim "CanvasImageSmoothing.getimageSmoothingEnabled"
                                     prim__imageSmoothingEnabled
                                     prim__setImageSmoothingEnabled
                                     (v :> CanvasImageSmoothing)

  export
  imageSmoothingQuality :  (0 _ : JSType t)
                        => {auto 0 _ : Elem CanvasImageSmoothing (Types t)}
                        -> t
                        -> Attribute True I ImageSmoothingQuality
  imageSmoothingQuality v = fromPrim "CanvasImageSmoothing.getimageSmoothingQuality"
                                     prim__imageSmoothingQuality
                                     prim__setImageSmoothingQuality
                                     (v :> CanvasImageSmoothing)


namespace CanvasPath

  export
  arc :  (0 _ : JSType t1)
      => {auto 0 _ : Elem CanvasPath (Types t1)}
      -> (obj : t1)
      -> (x : Double)
      -> (y : Double)
      -> (radius : Double)
      -> (startAngle : Double)
      -> (endAngle : Double)
      -> (counterclockwise : Optional Bool)
      -> JSIO ()
  arc a b c d e f g = primJS $ CanvasPath.prim__arc (up a) b c d e f (toFFI g)

  export
  arc' :  (0 _ : JSType t1)
       => {auto 0 _ : Elem CanvasPath (Types t1)}
       -> (obj : t1)
       -> (x : Double)
       -> (y : Double)
       -> (radius : Double)
       -> (startAngle : Double)
       -> (endAngle : Double)
       -> JSIO ()
  arc' a b c d e f = primJS $ CanvasPath.prim__arc (up a) b c d e f undef

  export
  arcTo :  (0 _ : JSType t1)
        => {auto 0 _ : Elem CanvasPath (Types t1)}
        -> (obj : t1)
        -> (x1 : Double)
        -> (y1 : Double)
        -> (x2 : Double)
        -> (y2 : Double)
        -> (radius : Double)
        -> JSIO ()
  arcTo a b c d e f = primJS $ CanvasPath.prim__arcTo (up a) b c d e f

  export
  bezierCurveTo :  (0 _ : JSType t1)
                => {auto 0 _ : Elem CanvasPath (Types t1)}
                -> (obj : t1)
                -> (cp1x : Double)
                -> (cp1y : Double)
                -> (cp2x : Double)
                -> (cp2y : Double)
                -> (x : Double)
                -> (y : Double)
                -> JSIO ()
  bezierCurveTo a b c d e f g = primJS
                              $ CanvasPath.prim__bezierCurveTo (up a)
                                                               b
                                                               c
                                                               d
                                                               e
                                                               f
                                                               g

  export
  closePath :  (0 _ : JSType t1)
            => {auto 0 _ : Elem CanvasPath (Types t1)}
            -> (obj : t1)
            -> JSIO ()
  closePath a = primJS $ CanvasPath.prim__closePath (up a)

  export
  ellipse :  (0 _ : JSType t1)
          => {auto 0 _ : Elem CanvasPath (Types t1)}
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
  ellipse a b c d e f g h i = primJS
                            $ CanvasPath.prim__ellipse (up a)
                                                       b
                                                       c
                                                       d
                                                       e
                                                       f
                                                       g
                                                       h
                                                       (toFFI i)

  export
  ellipse' :  (0 _ : JSType t1)
           => {auto 0 _ : Elem CanvasPath (Types t1)}
           -> (obj : t1)
           -> (x : Double)
           -> (y : Double)
           -> (radiusX : Double)
           -> (radiusY : Double)
           -> (rotation : Double)
           -> (startAngle : Double)
           -> (endAngle : Double)
           -> JSIO ()
  ellipse' a b c d e f g h = primJS
                           $ CanvasPath.prim__ellipse (up a) b c d e f g h undef

  export
  lineTo :  (0 _ : JSType t1)
         => {auto 0 _ : Elem CanvasPath (Types t1)}
         -> (obj : t1)
         -> (x : Double)
         -> (y : Double)
         -> JSIO ()
  lineTo a b c = primJS $ CanvasPath.prim__lineTo (up a) b c

  export
  moveTo :  (0 _ : JSType t1)
         => {auto 0 _ : Elem CanvasPath (Types t1)}
         -> (obj : t1)
         -> (x : Double)
         -> (y : Double)
         -> JSIO ()
  moveTo a b c = primJS $ CanvasPath.prim__moveTo (up a) b c

  export
  quadraticCurveTo :  (0 _ : JSType t1)
                   => {auto 0 _ : Elem CanvasPath (Types t1)}
                   -> (obj : t1)
                   -> (cpx : Double)
                   -> (cpy : Double)
                   -> (x : Double)
                   -> (y : Double)
                   -> JSIO ()
  quadraticCurveTo a b c d e = primJS
                             $ CanvasPath.prim__quadraticCurveTo (up a) b c d e

  export
  rect :  (0 _ : JSType t1)
       => {auto 0 _ : Elem CanvasPath (Types t1)}
       -> (obj : t1)
       -> (x : Double)
       -> (y : Double)
       -> (w : Double)
       -> (h : Double)
       -> JSIO ()
  rect a b c d e = primJS $ CanvasPath.prim__rect (up a) b c d e


namespace CanvasPathDrawingStyles

  export
  lineCap :  (0 _ : JSType t)
          => {auto 0 _ : Elem CanvasPathDrawingStyles (Types t)}
          -> t
          -> Attribute True I CanvasLineCap
  lineCap v = fromPrim "CanvasPathDrawingStyles.getlineCap"
                       prim__lineCap
                       prim__setLineCap
                       (v :> CanvasPathDrawingStyles)

  export
  lineDashOffset :  (0 _ : JSType t)
                 => {auto 0 _ : Elem CanvasPathDrawingStyles (Types t)}
                 -> t
                 -> Attribute True I Double
  lineDashOffset v = fromPrim "CanvasPathDrawingStyles.getlineDashOffset"
                              prim__lineDashOffset
                              prim__setLineDashOffset
                              (v :> CanvasPathDrawingStyles)

  export
  lineJoin :  (0 _ : JSType t)
           => {auto 0 _ : Elem CanvasPathDrawingStyles (Types t)}
           -> t
           -> Attribute True I CanvasLineJoin
  lineJoin v = fromPrim "CanvasPathDrawingStyles.getlineJoin"
                        prim__lineJoin
                        prim__setLineJoin
                        (v :> CanvasPathDrawingStyles)

  export
  lineWidth :  (0 _ : JSType t)
            => {auto 0 _ : Elem CanvasPathDrawingStyles (Types t)}
            -> t
            -> Attribute True I Double
  lineWidth v = fromPrim "CanvasPathDrawingStyles.getlineWidth"
                         prim__lineWidth
                         prim__setLineWidth
                         (v :> CanvasPathDrawingStyles)

  export
  miterLimit :  (0 _ : JSType t)
             => {auto 0 _ : Elem CanvasPathDrawingStyles (Types t)}
             -> t
             -> Attribute True I Double
  miterLimit v = fromPrim "CanvasPathDrawingStyles.getmiterLimit"
                          prim__miterLimit
                          prim__setMiterLimit
                          (v :> CanvasPathDrawingStyles)

  export
  getLineDash :  (0 _ : JSType t1)
              => {auto 0 _ : Elem CanvasPathDrawingStyles (Types t1)}
              -> (obj : t1)
              -> JSIO (Array Double)
  getLineDash a = primJS $ CanvasPathDrawingStyles.prim__getLineDash (up a)

  export
  setLineDash :  (0 _ : JSType t1)
              => {auto 0 _ : Elem CanvasPathDrawingStyles (Types t1)}
              -> (obj : t1)
              -> (segments : Array Double)
              -> JSIO ()
  setLineDash a b = primJS $ CanvasPathDrawingStyles.prim__setLineDash (up a) b


namespace CanvasRect

  export
  clearRect :  (0 _ : JSType t1)
            => {auto 0 _ : Elem CanvasRect (Types t1)}
            -> (obj : t1)
            -> (x : Double)
            -> (y : Double)
            -> (w : Double)
            -> (h : Double)
            -> JSIO ()
  clearRect a b c d e = primJS $ CanvasRect.prim__clearRect (up a) b c d e

  export
  fillRect :  (0 _ : JSType t1)
           => {auto 0 _ : Elem CanvasRect (Types t1)}
           -> (obj : t1)
           -> (x : Double)
           -> (y : Double)
           -> (w : Double)
           -> (h : Double)
           -> JSIO ()
  fillRect a b c d e = primJS $ CanvasRect.prim__fillRect (up a) b c d e

  export
  strokeRect :  (0 _ : JSType t1)
             => {auto 0 _ : Elem CanvasRect (Types t1)}
             -> (obj : t1)
             -> (x : Double)
             -> (y : Double)
             -> (w : Double)
             -> (h : Double)
             -> JSIO ()
  strokeRect a b c d e = primJS $ CanvasRect.prim__strokeRect (up a) b c d e


namespace CanvasShadowStyles

  export
  shadowBlur :  (0 _ : JSType t)
             => {auto 0 _ : Elem CanvasShadowStyles (Types t)}
             -> t
             -> Attribute True I Double
  shadowBlur v = fromPrim "CanvasShadowStyles.getshadowBlur"
                          prim__shadowBlur
                          prim__setShadowBlur
                          (v :> CanvasShadowStyles)

  export
  shadowColor :  (0 _ : JSType t)
              => {auto 0 _ : Elem CanvasShadowStyles (Types t)}
              -> t
              -> Attribute True I String
  shadowColor v = fromPrim "CanvasShadowStyles.getshadowColor"
                           prim__shadowColor
                           prim__setShadowColor
                           (v :> CanvasShadowStyles)

  export
  shadowOffsetX :  (0 _ : JSType t)
                => {auto 0 _ : Elem CanvasShadowStyles (Types t)}
                -> t
                -> Attribute True I Double
  shadowOffsetX v = fromPrim "CanvasShadowStyles.getshadowOffsetX"
                             prim__shadowOffsetX
                             prim__setShadowOffsetX
                             (v :> CanvasShadowStyles)

  export
  shadowOffsetY :  (0 _ : JSType t)
                => {auto 0 _ : Elem CanvasShadowStyles (Types t)}
                -> t
                -> Attribute True I Double
  shadowOffsetY v = fromPrim "CanvasShadowStyles.getshadowOffsetY"
                             prim__shadowOffsetY
                             prim__setShadowOffsetY
                             (v :> CanvasShadowStyles)


namespace CanvasState

  export
  restore :  (0 _ : JSType t1)
          => {auto 0 _ : Elem CanvasState (Types t1)}
          -> (obj : t1)
          -> JSIO ()
  restore a = primJS $ CanvasState.prim__restore (up a)

  export
  save :  (0 _ : JSType t1)
       => {auto 0 _ : Elem CanvasState (Types t1)}
       -> (obj : t1)
       -> JSIO ()
  save a = primJS $ CanvasState.prim__save (up a)


namespace CanvasText

  export
  fillText :  (0 _ : JSType t1)
           => {auto 0 _ : Elem CanvasText (Types t1)}
           -> (obj : t1)
           -> (text : String)
           -> (x : Double)
           -> (y : Double)
           -> (maxWidth : Optional Double)
           -> JSIO ()
  fillText a b c d e = primJS $ CanvasText.prim__fillText (up a) b c d (toFFI e)

  export
  fillText' :  (0 _ : JSType t1)
            => {auto 0 _ : Elem CanvasText (Types t1)}
            -> (obj : t1)
            -> (text : String)
            -> (x : Double)
            -> (y : Double)
            -> JSIO ()
  fillText' a b c d = primJS $ CanvasText.prim__fillText (up a) b c d undef

  export
  measureText :  (0 _ : JSType t1)
              => {auto 0 _ : Elem CanvasText (Types t1)}
              -> (obj : t1)
              -> (text : String)
              -> JSIO TextMetrics
  measureText a b = primJS $ CanvasText.prim__measureText (up a) b

  export
  strokeText :  (0 _ : JSType t1)
             => {auto 0 _ : Elem CanvasText (Types t1)}
             -> (obj : t1)
             -> (text : String)
             -> (x : Double)
             -> (y : Double)
             -> (maxWidth : Optional Double)
             -> JSIO ()
  strokeText a b c d e = primJS
                       $ CanvasText.prim__strokeText (up a) b c d (toFFI e)

  export
  strokeText' :  (0 _ : JSType t1)
              => {auto 0 _ : Elem CanvasText (Types t1)}
              -> (obj : t1)
              -> (text : String)
              -> (x : Double)
              -> (y : Double)
              -> JSIO ()
  strokeText' a b c d = primJS $ CanvasText.prim__strokeText (up a) b c d undef


namespace CanvasTextDrawingStyles

  export
  direction :  (0 _ : JSType t)
            => {auto 0 _ : Elem CanvasTextDrawingStyles (Types t)}
            -> t
            -> Attribute True I CanvasDirection
  direction v = fromPrim "CanvasTextDrawingStyles.getdirection"
                         prim__direction
                         prim__setDirection
                         (v :> CanvasTextDrawingStyles)

  export
  font :  (0 _ : JSType t)
       => {auto 0 _ : Elem CanvasTextDrawingStyles (Types t)}
       -> t
       -> Attribute True I String
  font v = fromPrim "CanvasTextDrawingStyles.getfont"
                    prim__font
                    prim__setFont
                    (v :> CanvasTextDrawingStyles)

  export
  textAlign :  (0 _ : JSType t)
            => {auto 0 _ : Elem CanvasTextDrawingStyles (Types t)}
            -> t
            -> Attribute True I CanvasTextAlign
  textAlign v = fromPrim "CanvasTextDrawingStyles.gettextAlign"
                         prim__textAlign
                         prim__setTextAlign
                         (v :> CanvasTextDrawingStyles)

  export
  textBaseline :  (0 _ : JSType t)
               => {auto 0 _ : Elem CanvasTextDrawingStyles (Types t)}
               -> t
               -> Attribute True I CanvasTextBaseline
  textBaseline v = fromPrim "CanvasTextDrawingStyles.gettextBaseline"
                            prim__textBaseline
                            prim__setTextBaseline
                            (v :> CanvasTextDrawingStyles)


namespace CanvasTransform

  export
  getTransform :  (0 _ : JSType t1)
               => {auto 0 _ : Elem CanvasTransform (Types t1)}
               -> (obj : t1)
               -> JSIO DOMMatrix
  getTransform a = primJS $ CanvasTransform.prim__getTransform (up a)

  export
  resetTransform :  (0 _ : JSType t1)
                 => {auto 0 _ : Elem CanvasTransform (Types t1)}
                 -> (obj : t1)
                 -> JSIO ()
  resetTransform a = primJS $ CanvasTransform.prim__resetTransform (up a)

  export
  rotate :  (0 _ : JSType t1)
         => {auto 0 _ : Elem CanvasTransform (Types t1)}
         -> (obj : t1)
         -> (angle : Double)
         -> JSIO ()
  rotate a b = primJS $ CanvasTransform.prim__rotate (up a) b

  export
  scale :  (0 _ : JSType t1)
        => {auto 0 _ : Elem CanvasTransform (Types t1)}
        -> (obj : t1)
        -> (x : Double)
        -> (y : Double)
        -> JSIO ()
  scale a b c = primJS $ CanvasTransform.prim__scale (up a) b c

  export
  setTransform :  (0 _ : JSType t1)
               => {auto 0 _ : Elem CanvasTransform (Types t1)}
               -> (obj : t1)
               -> (a : Double)
               -> (b : Double)
               -> (c : Double)
               -> (d : Double)
               -> (e : Double)
               -> (f : Double)
               -> JSIO ()
  setTransform a b c d e f g = primJS
                             $ CanvasTransform.prim__setTransform (up a)
                                                                  b
                                                                  c
                                                                  d
                                                                  e
                                                                  f
                                                                  g

  export
  setTransform1 :  (0 _ : JSType t1)
                => (0 _ : JSType t2)
                => {auto 0 _ : Elem CanvasTransform (Types t1)}
                -> {auto 0 _ : Elem DOMMatrix2DInit (Types t2)}
                -> (obj : t1)
                -> (transform : Optional t2)
                -> JSIO ()
  setTransform1 a b = primJS
                    $ CanvasTransform.prim__setTransform1 (up a) (optUp b)

  export
  setTransform1' :  (0 _ : JSType t1)
                 => {auto 0 _ : Elem CanvasTransform (Types t1)}
                 -> (obj : t1)
                 -> JSIO ()
  setTransform1' a = primJS $ CanvasTransform.prim__setTransform1 (up a) undef

  export
  transform :  (0 _ : JSType t1)
            => {auto 0 _ : Elem CanvasTransform (Types t1)}
            -> (obj : t1)
            -> (a : Double)
            -> (b : Double)
            -> (c : Double)
            -> (d : Double)
            -> (e : Double)
            -> (f : Double)
            -> JSIO ()
  transform a b c d e f g = primJS
                          $ CanvasTransform.prim__transform (up a) b c d e f g

  export
  translate :  (0 _ : JSType t1)
            => {auto 0 _ : Elem CanvasTransform (Types t1)}
            -> (obj : t1)
            -> (x : Double)
            -> (y : Double)
            -> JSIO ()
  translate a b c = primJS $ CanvasTransform.prim__translate (up a) b c


namespace CanvasUserInterface

  export
  drawFocusIfNeeded :  (0 _ : JSType t1)
                    => (0 _ : JSType t2)
                    => {auto 0 _ : Elem CanvasUserInterface (Types t1)}
                    -> {auto 0 _ : Elem Element (Types t2)}
                    -> (obj : t1)
                    -> (element : t2)
                    -> JSIO ()
  drawFocusIfNeeded a b = primJS
                        $ CanvasUserInterface.prim__drawFocusIfNeeded (up a)
                                                                      (up b)

  export
  drawFocusIfNeeded1 :  (0 _ : JSType t1)
                     => (0 _ : JSType t2)
                     => {auto 0 _ : Elem CanvasUserInterface (Types t1)}
                     -> {auto 0 _ : Elem Element (Types t2)}
                     -> (obj : t1)
                     -> (path : Path2D)
                     -> (element : t2)
                     -> JSIO ()
  drawFocusIfNeeded1 a b c = primJS
                           $ CanvasUserInterface.prim__drawFocusIfNeeded1 (up a)
                                                                          b
                                                                          (up c)

  export
  scrollPathIntoView :  (0 _ : JSType t1)
                     => {auto 0 _ : Elem CanvasUserInterface (Types t1)}
                     -> (obj : t1)
                     -> JSIO ()
  scrollPathIntoView a = primJS
                       $ CanvasUserInterface.prim__scrollPathIntoView (up a)

  export
  scrollPathIntoView1 :  (0 _ : JSType t1)
                      => {auto 0 _ : Elem CanvasUserInterface (Types t1)}
                      -> (obj : t1)
                      -> (path : Path2D)
                      -> JSIO ()
  scrollPathIntoView1 a b = primJS
                          $ CanvasUserInterface.prim__scrollPathIntoView1 (up a)
                                                                          b


namespace DocumentAndElementEventHandlers

  export
  oncopy :  (0 _ : JSType t)
         => {auto 0 _ : Elem DocumentAndElementEventHandlers (Types t)}
         -> t
         -> Attribute False Maybe EventHandlerNonNull
  oncopy v = fromNullablePrim "DocumentAndElementEventHandlers.getoncopy"
                              prim__oncopy
                              prim__setOncopy
                              (v :> DocumentAndElementEventHandlers)

  export
  oncut :  (0 _ : JSType t)
        => {auto 0 _ : Elem DocumentAndElementEventHandlers (Types t)}
        -> t
        -> Attribute False Maybe EventHandlerNonNull
  oncut v = fromNullablePrim "DocumentAndElementEventHandlers.getoncut"
                             prim__oncut
                             prim__setOncut
                             (v :> DocumentAndElementEventHandlers)

  export
  onpaste :  (0 _ : JSType t)
          => {auto 0 _ : Elem DocumentAndElementEventHandlers (Types t)}
          -> t
          -> Attribute False Maybe EventHandlerNonNull
  onpaste v = fromNullablePrim "DocumentAndElementEventHandlers.getonpaste"
                               prim__onpaste
                               prim__setOnpaste
                               (v :> DocumentAndElementEventHandlers)


namespace ElementContentEditable

  export
  contentEditable :  (0 _ : JSType t)
                  => {auto 0 _ : Elem ElementContentEditable (Types t)}
                  -> t
                  -> Attribute True I String
  contentEditable v = fromPrim "ElementContentEditable.getcontentEditable"
                               prim__contentEditable
                               prim__setContentEditable
                               (v :> ElementContentEditable)

  export
  enterKeyHint :  (0 _ : JSType t)
               => {auto 0 _ : Elem ElementContentEditable (Types t)}
               -> t
               -> Attribute True I String
  enterKeyHint v = fromPrim "ElementContentEditable.getenterKeyHint"
                            prim__enterKeyHint
                            prim__setEnterKeyHint
                            (v :> ElementContentEditable)

  export
  inputMode :  (0 _ : JSType t)
            => {auto 0 _ : Elem ElementContentEditable (Types t)}
            -> t
            -> Attribute True I String
  inputMode v = fromPrim "ElementContentEditable.getinputMode"
                         prim__inputMode
                         prim__setInputMode
                         (v :> ElementContentEditable)

  export
  isContentEditable :  (0 _ : JSType t1)
                    => {auto 0 _ : Elem ElementContentEditable (Types t1)}
                    -> (obj : t1)
                    -> JSIO Bool
  isContentEditable a = tryJS "ElementContentEditable.isContentEditable"
                      $ ElementContentEditable.prim__isContentEditable (up a)


namespace GlobalEventHandlers

  export
  onabort :  (0 _ : JSType t)
          => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
          -> t
          -> Attribute False Maybe UIEventHandler
  onabort v = fromNullablePrim "GlobalEventHandlers.getonabort"
                               prim__onabort
                               prim__setOnabort
                               (v :> GlobalEventHandlers)

  export
  onauxclick :  (0 _ : JSType t)
             => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
             -> t
             -> Attribute False Maybe MouseEventHandler
  onauxclick v = fromNullablePrim "GlobalEventHandlers.getonauxclick"
                                  prim__onauxclick
                                  prim__setOnauxclick
                                  (v :> GlobalEventHandlers)

  export
  onblur :  (0 _ : JSType t)
         => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
         -> t
         -> Attribute False Maybe FocusEventHandler
  onblur v = fromNullablePrim "GlobalEventHandlers.getonblur"
                              prim__onblur
                              prim__setOnblur
                              (v :> GlobalEventHandlers)

  export
  oncancel :  (0 _ : JSType t)
           => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
           -> t
           -> Attribute False Maybe EventHandlerNonNull
  oncancel v = fromNullablePrim "GlobalEventHandlers.getoncancel"
                                prim__oncancel
                                prim__setOncancel
                                (v :> GlobalEventHandlers)

  export
  oncanplay :  (0 _ : JSType t)
            => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
            -> t
            -> Attribute False Maybe EventHandlerNonNull
  oncanplay v = fromNullablePrim "GlobalEventHandlers.getoncanplay"
                                 prim__oncanplay
                                 prim__setOncanplay
                                 (v :> GlobalEventHandlers)

  export
  oncanplaythrough :  (0 _ : JSType t)
                   => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
                   -> t
                   -> Attribute False Maybe EventHandlerNonNull
  oncanplaythrough v = fromNullablePrim "GlobalEventHandlers.getoncanplaythrough"
                                        prim__oncanplaythrough
                                        prim__setOncanplaythrough
                                        (v :> GlobalEventHandlers)

  export
  onchange :  (0 _ : JSType t)
           => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
           -> t
           -> Attribute False Maybe EventHandlerNonNull
  onchange v = fromNullablePrim "GlobalEventHandlers.getonchange"
                                prim__onchange
                                prim__setOnchange
                                (v :> GlobalEventHandlers)

  export
  onclick :  (0 _ : JSType t)
          => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
          -> t
          -> Attribute False Maybe MouseEventHandler
  onclick v = fromNullablePrim "GlobalEventHandlers.getonclick"
                               prim__onclick
                               prim__setOnclick
                               (v :> GlobalEventHandlers)

  export
  onclose :  (0 _ : JSType t)
          => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
          -> t
          -> Attribute False Maybe EventHandlerNonNull
  onclose v = fromNullablePrim "GlobalEventHandlers.getonclose"
                               prim__onclose
                               prim__setOnclose
                               (v :> GlobalEventHandlers)

  export
  oncontextmenu :  (0 _ : JSType t)
                => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
                -> t
                -> Attribute False Maybe EventHandlerNonNull
  oncontextmenu v = fromNullablePrim "GlobalEventHandlers.getoncontextmenu"
                                     prim__oncontextmenu
                                     prim__setOncontextmenu
                                     (v :> GlobalEventHandlers)

  export
  oncuechange :  (0 _ : JSType t)
              => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
              -> t
              -> Attribute False Maybe EventHandlerNonNull
  oncuechange v = fromNullablePrim "GlobalEventHandlers.getoncuechange"
                                   prim__oncuechange
                                   prim__setOncuechange
                                   (v :> GlobalEventHandlers)

  export
  ondblclick :  (0 _ : JSType t)
             => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
             -> t
             -> Attribute False Maybe MouseEventHandler
  ondblclick v = fromNullablePrim "GlobalEventHandlers.getondblclick"
                                  prim__ondblclick
                                  prim__setOndblclick
                                  (v :> GlobalEventHandlers)

  export
  ondrag :  (0 _ : JSType t)
         => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
         -> t
         -> Attribute False Maybe EventHandlerNonNull
  ondrag v = fromNullablePrim "GlobalEventHandlers.getondrag"
                              prim__ondrag
                              prim__setOndrag
                              (v :> GlobalEventHandlers)

  export
  ondragend :  (0 _ : JSType t)
            => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
            -> t
            -> Attribute False Maybe EventHandlerNonNull
  ondragend v = fromNullablePrim "GlobalEventHandlers.getondragend"
                                 prim__ondragend
                                 prim__setOndragend
                                 (v :> GlobalEventHandlers)

  export
  ondragenter :  (0 _ : JSType t)
              => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
              -> t
              -> Attribute False Maybe EventHandlerNonNull
  ondragenter v = fromNullablePrim "GlobalEventHandlers.getondragenter"
                                   prim__ondragenter
                                   prim__setOndragenter
                                   (v :> GlobalEventHandlers)

  export
  ondragleave :  (0 _ : JSType t)
              => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
              -> t
              -> Attribute False Maybe EventHandlerNonNull
  ondragleave v = fromNullablePrim "GlobalEventHandlers.getondragleave"
                                   prim__ondragleave
                                   prim__setOndragleave
                                   (v :> GlobalEventHandlers)

  export
  ondragover :  (0 _ : JSType t)
             => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
             -> t
             -> Attribute False Maybe EventHandlerNonNull
  ondragover v = fromNullablePrim "GlobalEventHandlers.getondragover"
                                  prim__ondragover
                                  prim__setOndragover
                                  (v :> GlobalEventHandlers)

  export
  ondragstart :  (0 _ : JSType t)
              => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
              -> t
              -> Attribute False Maybe EventHandlerNonNull
  ondragstart v = fromNullablePrim "GlobalEventHandlers.getondragstart"
                                   prim__ondragstart
                                   prim__setOndragstart
                                   (v :> GlobalEventHandlers)

  export
  ondrop :  (0 _ : JSType t)
         => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
         -> t
         -> Attribute False Maybe EventHandlerNonNull
  ondrop v = fromNullablePrim "GlobalEventHandlers.getondrop"
                              prim__ondrop
                              prim__setOndrop
                              (v :> GlobalEventHandlers)

  export
  ondurationchange :  (0 _ : JSType t)
                   => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
                   -> t
                   -> Attribute False Maybe EventHandlerNonNull
  ondurationchange v = fromNullablePrim "GlobalEventHandlers.getondurationchange"
                                        prim__ondurationchange
                                        prim__setOndurationchange
                                        (v :> GlobalEventHandlers)

  export
  onemptied :  (0 _ : JSType t)
            => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
            -> t
            -> Attribute False Maybe EventHandlerNonNull
  onemptied v = fromNullablePrim "GlobalEventHandlers.getonemptied"
                                 prim__onemptied
                                 prim__setOnemptied
                                 (v :> GlobalEventHandlers)

  export
  onended :  (0 _ : JSType t)
          => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
          -> t
          -> Attribute False Maybe EventHandlerNonNull
  onended v = fromNullablePrim "GlobalEventHandlers.getonended"
                               prim__onended
                               prim__setOnended
                               (v :> GlobalEventHandlers)

  export
  onerror :  (0 _ : JSType t)
          => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
          -> t
          -> Attribute False Maybe OnErrorEventHandlerNonNull
  onerror v = fromNullablePrim "GlobalEventHandlers.getonerror"
                               prim__onerror
                               prim__setOnerror
                               (v :> GlobalEventHandlers)

  export
  onfocus :  (0 _ : JSType t)
          => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
          -> t
          -> Attribute False Maybe FocusEventHandler
  onfocus v = fromNullablePrim "GlobalEventHandlers.getonfocus"
                               prim__onfocus
                               prim__setOnfocus
                               (v :> GlobalEventHandlers)

  export
  onformdata :  (0 _ : JSType t)
             => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
             -> t
             -> Attribute False Maybe EventHandlerNonNull
  onformdata v = fromNullablePrim "GlobalEventHandlers.getonformdata"
                                  prim__onformdata
                                  prim__setOnformdata
                                  (v :> GlobalEventHandlers)

  export
  oninput :  (0 _ : JSType t)
          => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
          -> t
          -> Attribute False Maybe InputEventHandler
  oninput v = fromNullablePrim "GlobalEventHandlers.getoninput"
                               prim__oninput
                               prim__setOninput
                               (v :> GlobalEventHandlers)

  export
  oninvalid :  (0 _ : JSType t)
            => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
            -> t
            -> Attribute False Maybe EventHandlerNonNull
  oninvalid v = fromNullablePrim "GlobalEventHandlers.getoninvalid"
                                 prim__oninvalid
                                 prim__setOninvalid
                                 (v :> GlobalEventHandlers)

  export
  onkeydown :  (0 _ : JSType t)
            => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
            -> t
            -> Attribute False Maybe KeyboardEventHandler
  onkeydown v = fromNullablePrim "GlobalEventHandlers.getonkeydown"
                                 prim__onkeydown
                                 prim__setOnkeydown
                                 (v :> GlobalEventHandlers)

  export
  onkeypress :  (0 _ : JSType t)
             => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
             -> t
             -> Attribute False Maybe EventHandlerNonNull
  onkeypress v = fromNullablePrim "GlobalEventHandlers.getonkeypress"
                                  prim__onkeypress
                                  prim__setOnkeypress
                                  (v :> GlobalEventHandlers)

  export
  onkeyup :  (0 _ : JSType t)
          => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
          -> t
          -> Attribute False Maybe KeyboardEventHandler
  onkeyup v = fromNullablePrim "GlobalEventHandlers.getonkeyup"
                               prim__onkeyup
                               prim__setOnkeyup
                               (v :> GlobalEventHandlers)

  export
  onload :  (0 _ : JSType t)
         => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
         -> t
         -> Attribute False Maybe UIEventHandler
  onload v = fromNullablePrim "GlobalEventHandlers.getonload"
                              prim__onload
                              prim__setOnload
                              (v :> GlobalEventHandlers)

  export
  onloadeddata :  (0 _ : JSType t)
               => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
               -> t
               -> Attribute False Maybe EventHandlerNonNull
  onloadeddata v = fromNullablePrim "GlobalEventHandlers.getonloadeddata"
                                    prim__onloadeddata
                                    prim__setOnloadeddata
                                    (v :> GlobalEventHandlers)

  export
  onloadedmetadata :  (0 _ : JSType t)
                   => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
                   -> t
                   -> Attribute False Maybe EventHandlerNonNull
  onloadedmetadata v = fromNullablePrim "GlobalEventHandlers.getonloadedmetadata"
                                        prim__onloadedmetadata
                                        prim__setOnloadedmetadata
                                        (v :> GlobalEventHandlers)

  export
  onloadstart :  (0 _ : JSType t)
              => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
              -> t
              -> Attribute False Maybe EventHandlerNonNull
  onloadstart v = fromNullablePrim "GlobalEventHandlers.getonloadstart"
                                   prim__onloadstart
                                   prim__setOnloadstart
                                   (v :> GlobalEventHandlers)

  export
  onmousedown :  (0 _ : JSType t)
              => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
              -> t
              -> Attribute False Maybe MouseEventHandler
  onmousedown v = fromNullablePrim "GlobalEventHandlers.getonmousedown"
                                   prim__onmousedown
                                   prim__setOnmousedown
                                   (v :> GlobalEventHandlers)

  export
  onmouseenter :  (0 _ : JSType t)
               => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
               -> t
               -> Attribute False Maybe MouseEventHandler
  onmouseenter v = fromNullablePrim "GlobalEventHandlers.getonmouseenter"
                                    prim__onmouseenter
                                    prim__setOnmouseenter
                                    (v :> GlobalEventHandlers)

  export
  onmouseleave :  (0 _ : JSType t)
               => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
               -> t
               -> Attribute False Maybe MouseEventHandler
  onmouseleave v = fromNullablePrim "GlobalEventHandlers.getonmouseleave"
                                    prim__onmouseleave
                                    prim__setOnmouseleave
                                    (v :> GlobalEventHandlers)

  export
  onmousemove :  (0 _ : JSType t)
              => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
              -> t
              -> Attribute False Maybe MouseEventHandler
  onmousemove v = fromNullablePrim "GlobalEventHandlers.getonmousemove"
                                   prim__onmousemove
                                   prim__setOnmousemove
                                   (v :> GlobalEventHandlers)

  export
  onmouseout :  (0 _ : JSType t)
             => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
             -> t
             -> Attribute False Maybe MouseEventHandler
  onmouseout v = fromNullablePrim "GlobalEventHandlers.getonmouseout"
                                  prim__onmouseout
                                  prim__setOnmouseout
                                  (v :> GlobalEventHandlers)

  export
  onmouseover :  (0 _ : JSType t)
              => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
              -> t
              -> Attribute False Maybe MouseEventHandler
  onmouseover v = fromNullablePrim "GlobalEventHandlers.getonmouseover"
                                   prim__onmouseover
                                   prim__setOnmouseover
                                   (v :> GlobalEventHandlers)

  export
  onmouseup :  (0 _ : JSType t)
            => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
            -> t
            -> Attribute False Maybe MouseEventHandler
  onmouseup v = fromNullablePrim "GlobalEventHandlers.getonmouseup"
                                 prim__onmouseup
                                 prim__setOnmouseup
                                 (v :> GlobalEventHandlers)

  export
  onpause :  (0 _ : JSType t)
          => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
          -> t
          -> Attribute False Maybe EventHandlerNonNull
  onpause v = fromNullablePrim "GlobalEventHandlers.getonpause"
                               prim__onpause
                               prim__setOnpause
                               (v :> GlobalEventHandlers)

  export
  onplay :  (0 _ : JSType t)
         => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
         -> t
         -> Attribute False Maybe EventHandlerNonNull
  onplay v = fromNullablePrim "GlobalEventHandlers.getonplay"
                              prim__onplay
                              prim__setOnplay
                              (v :> GlobalEventHandlers)

  export
  onplaying :  (0 _ : JSType t)
            => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
            -> t
            -> Attribute False Maybe EventHandlerNonNull
  onplaying v = fromNullablePrim "GlobalEventHandlers.getonplaying"
                                 prim__onplaying
                                 prim__setOnplaying
                                 (v :> GlobalEventHandlers)

  export
  onprogress :  (0 _ : JSType t)
             => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
             -> t
             -> Attribute False Maybe EventHandlerNonNull
  onprogress v = fromNullablePrim "GlobalEventHandlers.getonprogress"
                                  prim__onprogress
                                  prim__setOnprogress
                                  (v :> GlobalEventHandlers)

  export
  onratechange :  (0 _ : JSType t)
               => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
               -> t
               -> Attribute False Maybe EventHandlerNonNull
  onratechange v = fromNullablePrim "GlobalEventHandlers.getonratechange"
                                    prim__onratechange
                                    prim__setOnratechange
                                    (v :> GlobalEventHandlers)

  export
  onreset :  (0 _ : JSType t)
          => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
          -> t
          -> Attribute False Maybe EventHandlerNonNull
  onreset v = fromNullablePrim "GlobalEventHandlers.getonreset"
                               prim__onreset
                               prim__setOnreset
                               (v :> GlobalEventHandlers)

  export
  onresize :  (0 _ : JSType t)
           => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
           -> t
           -> Attribute False Maybe EventHandlerNonNull
  onresize v = fromNullablePrim "GlobalEventHandlers.getonresize"
                                prim__onresize
                                prim__setOnresize
                                (v :> GlobalEventHandlers)

  export
  onscroll :  (0 _ : JSType t)
           => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
           -> t
           -> Attribute False Maybe EventHandlerNonNull
  onscroll v = fromNullablePrim "GlobalEventHandlers.getonscroll"
                                prim__onscroll
                                prim__setOnscroll
                                (v :> GlobalEventHandlers)

  export
  onsecuritypolicyviolation :  (0 _ : JSType t)
                            => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
                            -> t
                            -> Attribute False Maybe EventHandlerNonNull
  onsecuritypolicyviolation v = fromNullablePrim "GlobalEventHandlers.getonsecuritypolicyviolation"
                                                 prim__onsecuritypolicyviolation
                                                 prim__setOnsecuritypolicyviolation
                                                 (v :> GlobalEventHandlers)

  export
  onseeked :  (0 _ : JSType t)
           => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
           -> t
           -> Attribute False Maybe EventHandlerNonNull
  onseeked v = fromNullablePrim "GlobalEventHandlers.getonseeked"
                                prim__onseeked
                                prim__setOnseeked
                                (v :> GlobalEventHandlers)

  export
  onseeking :  (0 _ : JSType t)
            => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
            -> t
            -> Attribute False Maybe EventHandlerNonNull
  onseeking v = fromNullablePrim "GlobalEventHandlers.getonseeking"
                                 prim__onseeking
                                 prim__setOnseeking
                                 (v :> GlobalEventHandlers)

  export
  onselect :  (0 _ : JSType t)
           => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
           -> t
           -> Attribute False Maybe UIEventHandler
  onselect v = fromNullablePrim "GlobalEventHandlers.getonselect"
                                prim__onselect
                                prim__setOnselect
                                (v :> GlobalEventHandlers)

  export
  onslotchange :  (0 _ : JSType t)
               => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
               -> t
               -> Attribute False Maybe EventHandlerNonNull
  onslotchange v = fromNullablePrim "GlobalEventHandlers.getonslotchange"
                                    prim__onslotchange
                                    prim__setOnslotchange
                                    (v :> GlobalEventHandlers)

  export
  onstalled :  (0 _ : JSType t)
            => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
            -> t
            -> Attribute False Maybe EventHandlerNonNull
  onstalled v = fromNullablePrim "GlobalEventHandlers.getonstalled"
                                 prim__onstalled
                                 prim__setOnstalled
                                 (v :> GlobalEventHandlers)

  export
  onsubmit :  (0 _ : JSType t)
           => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
           -> t
           -> Attribute False Maybe EventHandlerNonNull
  onsubmit v = fromNullablePrim "GlobalEventHandlers.getonsubmit"
                                prim__onsubmit
                                prim__setOnsubmit
                                (v :> GlobalEventHandlers)

  export
  onsuspend :  (0 _ : JSType t)
            => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
            -> t
            -> Attribute False Maybe EventHandlerNonNull
  onsuspend v = fromNullablePrim "GlobalEventHandlers.getonsuspend"
                                 prim__onsuspend
                                 prim__setOnsuspend
                                 (v :> GlobalEventHandlers)

  export
  ontimeupdate :  (0 _ : JSType t)
               => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
               -> t
               -> Attribute False Maybe EventHandlerNonNull
  ontimeupdate v = fromNullablePrim "GlobalEventHandlers.getontimeupdate"
                                    prim__ontimeupdate
                                    prim__setOntimeupdate
                                    (v :> GlobalEventHandlers)

  export
  ontoggle :  (0 _ : JSType t)
           => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
           -> t
           -> Attribute False Maybe EventHandlerNonNull
  ontoggle v = fromNullablePrim "GlobalEventHandlers.getontoggle"
                                prim__ontoggle
                                prim__setOntoggle
                                (v :> GlobalEventHandlers)

  export
  onvolumechange :  (0 _ : JSType t)
                 => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
                 -> t
                 -> Attribute False Maybe EventHandlerNonNull
  onvolumechange v = fromNullablePrim "GlobalEventHandlers.getonvolumechange"
                                      prim__onvolumechange
                                      prim__setOnvolumechange
                                      (v :> GlobalEventHandlers)

  export
  onwaiting :  (0 _ : JSType t)
            => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
            -> t
            -> Attribute False Maybe EventHandlerNonNull
  onwaiting v = fromNullablePrim "GlobalEventHandlers.getonwaiting"
                                 prim__onwaiting
                                 prim__setOnwaiting
                                 (v :> GlobalEventHandlers)

  export
  onwebkitanimationend :  (0 _ : JSType t)
                       => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
                       -> t
                       -> Attribute False Maybe EventHandlerNonNull
  onwebkitanimationend v = fromNullablePrim "GlobalEventHandlers.getonwebkitanimationend"
                                            prim__onwebkitanimationend
                                            prim__setOnwebkitanimationend
                                            (v :> GlobalEventHandlers)

  export
  onwebkitanimationiteration :  (0 _ : JSType t)
                             => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
                             -> t
                             -> Attribute False Maybe EventHandlerNonNull
  onwebkitanimationiteration v = fromNullablePrim "GlobalEventHandlers.getonwebkitanimationiteration"
                                                  prim__onwebkitanimationiteration
                                                  prim__setOnwebkitanimationiteration
                                                  (v :> GlobalEventHandlers)

  export
  onwebkitanimationstart :  (0 _ : JSType t)
                         => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
                         -> t
                         -> Attribute False Maybe EventHandlerNonNull
  onwebkitanimationstart v = fromNullablePrim "GlobalEventHandlers.getonwebkitanimationstart"
                                              prim__onwebkitanimationstart
                                              prim__setOnwebkitanimationstart
                                              (v :> GlobalEventHandlers)

  export
  onwebkittransitionend :  (0 _ : JSType t)
                        => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
                        -> t
                        -> Attribute False Maybe EventHandlerNonNull
  onwebkittransitionend v = fromNullablePrim "GlobalEventHandlers.getonwebkittransitionend"
                                             prim__onwebkittransitionend
                                             prim__setOnwebkittransitionend
                                             (v :> GlobalEventHandlers)

  export
  onwheel :  (0 _ : JSType t)
          => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
          -> t
          -> Attribute False Maybe WheelEventHandler
  onwheel v = fromNullablePrim "GlobalEventHandlers.getonwheel"
                               prim__onwheel
                               prim__setOnwheel
                               (v :> GlobalEventHandlers)


namespace HTMLHyperlinkElementUtils

  export
  hash :  (0 _ : JSType t)
       => {auto 0 _ : Elem HTMLHyperlinkElementUtils (Types t)}
       -> t
       -> Attribute True I String
  hash v = fromPrim "HTMLHyperlinkElementUtils.gethash"
                    prim__hash
                    prim__setHash
                    (v :> HTMLHyperlinkElementUtils)

  export
  host :  (0 _ : JSType t)
       => {auto 0 _ : Elem HTMLHyperlinkElementUtils (Types t)}
       -> t
       -> Attribute True I String
  host v = fromPrim "HTMLHyperlinkElementUtils.gethost"
                    prim__host
                    prim__setHost
                    (v :> HTMLHyperlinkElementUtils)

  export
  hostname :  (0 _ : JSType t)
           => {auto 0 _ : Elem HTMLHyperlinkElementUtils (Types t)}
           -> t
           -> Attribute True I String
  hostname v = fromPrim "HTMLHyperlinkElementUtils.gethostname"
                        prim__hostname
                        prim__setHostname
                        (v :> HTMLHyperlinkElementUtils)

  export
  href :  (0 _ : JSType t)
       => {auto 0 _ : Elem HTMLHyperlinkElementUtils (Types t)}
       -> t
       -> Attribute True I String
  href v = fromPrim "HTMLHyperlinkElementUtils.gethref"
                    prim__href
                    prim__setHref
                    (v :> HTMLHyperlinkElementUtils)

  export
  origin :  (0 _ : JSType t1)
         => {auto 0 _ : Elem HTMLHyperlinkElementUtils (Types t1)}
         -> (obj : t1)
         -> JSIO String
  origin a = primJS $ HTMLHyperlinkElementUtils.prim__origin (up a)

  export
  password :  (0 _ : JSType t)
           => {auto 0 _ : Elem HTMLHyperlinkElementUtils (Types t)}
           -> t
           -> Attribute True I String
  password v = fromPrim "HTMLHyperlinkElementUtils.getpassword"
                        prim__password
                        prim__setPassword
                        (v :> HTMLHyperlinkElementUtils)

  export
  pathname :  (0 _ : JSType t)
           => {auto 0 _ : Elem HTMLHyperlinkElementUtils (Types t)}
           -> t
           -> Attribute True I String
  pathname v = fromPrim "HTMLHyperlinkElementUtils.getpathname"
                        prim__pathname
                        prim__setPathname
                        (v :> HTMLHyperlinkElementUtils)

  export
  port :  (0 _ : JSType t)
       => {auto 0 _ : Elem HTMLHyperlinkElementUtils (Types t)}
       -> t
       -> Attribute True I String
  port v = fromPrim "HTMLHyperlinkElementUtils.getport"
                    prim__port
                    prim__setPort
                    (v :> HTMLHyperlinkElementUtils)

  export
  protocol :  (0 _ : JSType t)
           => {auto 0 _ : Elem HTMLHyperlinkElementUtils (Types t)}
           -> t
           -> Attribute True I String
  protocol v = fromPrim "HTMLHyperlinkElementUtils.getprotocol"
                        prim__protocol
                        prim__setProtocol
                        (v :> HTMLHyperlinkElementUtils)

  export
  search :  (0 _ : JSType t)
         => {auto 0 _ : Elem HTMLHyperlinkElementUtils (Types t)}
         -> t
         -> Attribute True I String
  search v = fromPrim "HTMLHyperlinkElementUtils.getsearch"
                      prim__search
                      prim__setSearch
                      (v :> HTMLHyperlinkElementUtils)

  export
  username :  (0 _ : JSType t)
           => {auto 0 _ : Elem HTMLHyperlinkElementUtils (Types t)}
           -> t
           -> Attribute True I String
  username v = fromPrim "HTMLHyperlinkElementUtils.getusername"
                        prim__username
                        prim__setUsername
                        (v :> HTMLHyperlinkElementUtils)


namespace HTMLOrSVGElement

  export
  autofocus :  (0 _ : JSType t)
            => {auto 0 _ : Elem HTMLOrSVGElement (Types t)}
            -> t
            -> Attribute True I Bool
  autofocus v = fromPrim "HTMLOrSVGElement.getautofocus"
                         prim__autofocus
                         prim__setAutofocus
                         (v :> HTMLOrSVGElement)

  export
  dataset :  (0 _ : JSType t1)
          => {auto 0 _ : Elem HTMLOrSVGElement (Types t1)}
          -> (obj : t1)
          -> JSIO DOMStringMap
  dataset a = primJS $ HTMLOrSVGElement.prim__dataset (up a)

  export
  nonce :  (0 _ : JSType t)
        => {auto 0 _ : Elem HTMLOrSVGElement (Types t)}
        -> t
        -> Attribute True I String
  nonce v = fromPrim "HTMLOrSVGElement.getnonce"
                     prim__nonce
                     prim__setNonce
                     (v :> HTMLOrSVGElement)

  export
  tabIndex :  (0 _ : JSType t)
           => {auto 0 _ : Elem HTMLOrSVGElement (Types t)}
           -> t
           -> Attribute True I Int32
  tabIndex v = fromPrim "HTMLOrSVGElement.gettabIndex"
                        prim__tabIndex
                        prim__setTabIndex
                        (v :> HTMLOrSVGElement)

  export
  blur :  (0 _ : JSType t1)
       => {auto 0 _ : Elem HTMLOrSVGElement (Types t1)}
       -> (obj : t1)
       -> JSIO ()
  blur a = primJS $ HTMLOrSVGElement.prim__blur (up a)

  export
  focus :  (0 _ : JSType t1)
        => (0 _ : JSType t2)
        => {auto 0 _ : Elem HTMLOrSVGElement (Types t1)}
        -> {auto 0 _ : Elem FocusOptions (Types t2)}
        -> (obj : t1)
        -> (options : Optional t2)
        -> JSIO ()
  focus a b = primJS $ HTMLOrSVGElement.prim__focus (up a) (optUp b)

  export
  focus' :  (0 _ : JSType t1)
         => {auto 0 _ : Elem HTMLOrSVGElement (Types t1)}
         -> (obj : t1)
         -> JSIO ()
  focus' a = primJS $ HTMLOrSVGElement.prim__focus (up a) undef


namespace NavigatorConcurrentHardware

  export
  hardwareConcurrency :  (0 _ : JSType t1)
                      => {auto 0 _ : Elem NavigatorConcurrentHardware (Types t1)}
                      -> (obj : t1)
                      -> JSIO JSBits64
  hardwareConcurrency a = primJS
                        $ NavigatorConcurrentHardware.prim__hardwareConcurrency (up a)


namespace NavigatorContentUtils

  export
  registerProtocolHandler :  (0 _ : JSType t1)
                          => {auto 0 _ : Elem NavigatorContentUtils (Types t1)}
                          -> (obj : t1)
                          -> (scheme : String)
                          -> (url : String)
                          -> JSIO ()
  registerProtocolHandler a b c = primJS
                                $ NavigatorContentUtils.prim__registerProtocolHandler (up a)
                                                                                      b
                                                                                      c

  export
  unregisterProtocolHandler :  (0 _ : JSType t1)
                            => {auto 0 _ : Elem NavigatorContentUtils (Types t1)}
                            -> (obj : t1)
                            -> (scheme : String)
                            -> (url : String)
                            -> JSIO ()
  unregisterProtocolHandler a b c = primJS
                                  $ NavigatorContentUtils.prim__unregisterProtocolHandler (up a)
                                                                                          b
                                                                                          c


namespace NavigatorCookies

  export
  cookieEnabled :  (0 _ : JSType t1)
                => {auto 0 _ : Elem NavigatorCookies (Types t1)}
                -> (obj : t1)
                -> JSIO Bool
  cookieEnabled a = tryJS "NavigatorCookies.cookieEnabled"
                  $ NavigatorCookies.prim__cookieEnabled (up a)


namespace NavigatorID

  export
  appCodeName :  (0 _ : JSType t1)
              => {auto 0 _ : Elem NavigatorID (Types t1)}
              -> (obj : t1)
              -> JSIO String
  appCodeName a = primJS $ NavigatorID.prim__appCodeName (up a)

  export
  appName :  (0 _ : JSType t1)
          => {auto 0 _ : Elem NavigatorID (Types t1)}
          -> (obj : t1)
          -> JSIO String
  appName a = primJS $ NavigatorID.prim__appName (up a)

  export
  appVersion :  (0 _ : JSType t1)
             => {auto 0 _ : Elem NavigatorID (Types t1)}
             -> (obj : t1)
             -> JSIO String
  appVersion a = primJS $ NavigatorID.prim__appVersion (up a)

  export
  platform :  (0 _ : JSType t1)
           => {auto 0 _ : Elem NavigatorID (Types t1)}
           -> (obj : t1)
           -> JSIO String
  platform a = primJS $ NavigatorID.prim__platform (up a)

  export
  product :  (0 _ : JSType t1)
          => {auto 0 _ : Elem NavigatorID (Types t1)}
          -> (obj : t1)
          -> JSIO String
  product a = primJS $ NavigatorID.prim__product (up a)

  export
  productSub :  (0 _ : JSType t1)
             => {auto 0 _ : Elem NavigatorID (Types t1)}
             -> (obj : t1)
             -> JSIO String
  productSub a = primJS $ NavigatorID.prim__productSub (up a)

  export
  userAgent :  (0 _ : JSType t1)
            => {auto 0 _ : Elem NavigatorID (Types t1)}
            -> (obj : t1)
            -> JSIO String
  userAgent a = primJS $ NavigatorID.prim__userAgent (up a)

  export
  vendor :  (0 _ : JSType t1)
         => {auto 0 _ : Elem NavigatorID (Types t1)}
         -> (obj : t1)
         -> JSIO String
  vendor a = primJS $ NavigatorID.prim__vendor (up a)

  export
  vendorSub :  (0 _ : JSType t1)
            => {auto 0 _ : Elem NavigatorID (Types t1)}
            -> (obj : t1)
            -> JSIO String
  vendorSub a = primJS $ NavigatorID.prim__vendorSub (up a)


namespace NavigatorLanguage

  export
  language :  (0 _ : JSType t1)
           => {auto 0 _ : Elem NavigatorLanguage (Types t1)}
           -> (obj : t1)
           -> JSIO String
  language a = primJS $ NavigatorLanguage.prim__language (up a)

  export
  languages :  (0 _ : JSType t1)
            => {auto 0 _ : Elem NavigatorLanguage (Types t1)}
            -> (obj : t1)
            -> JSIO (Array String)
  languages a = primJS $ NavigatorLanguage.prim__languages (up a)


namespace NavigatorOnLine

  export
  onLine :  (0 _ : JSType t1)
         => {auto 0 _ : Elem NavigatorOnLine (Types t1)}
         -> (obj : t1)
         -> JSIO Bool
  onLine a = tryJS "NavigatorOnLine.onLine"
           $ NavigatorOnLine.prim__onLine (up a)


namespace NavigatorPlugins

  export
  mimeTypes :  (0 _ : JSType t1)
            => {auto 0 _ : Elem NavigatorPlugins (Types t1)}
            -> (obj : t1)
            -> JSIO MimeTypeArray
  mimeTypes a = primJS $ NavigatorPlugins.prim__mimeTypes (up a)

  export
  plugins :  (0 _ : JSType t1)
          => {auto 0 _ : Elem NavigatorPlugins (Types t1)}
          -> (obj : t1)
          -> JSIO PluginArray
  plugins a = primJS $ NavigatorPlugins.prim__plugins (up a)

  export
  javaEnabled :  (0 _ : JSType t1)
              => {auto 0 _ : Elem NavigatorPlugins (Types t1)}
              -> (obj : t1)
              -> JSIO Bool
  javaEnabled a = tryJS "NavigatorPlugins.javaEnabled"
                $ NavigatorPlugins.prim__javaEnabled (up a)


namespace WindowEventHandlers

  export
  onafterprint :  (0 _ : JSType t)
               => {auto 0 _ : Elem WindowEventHandlers (Types t)}
               -> t
               -> Attribute False Maybe EventHandlerNonNull
  onafterprint v = fromNullablePrim "WindowEventHandlers.getonafterprint"
                                    prim__onafterprint
                                    prim__setOnafterprint
                                    (v :> WindowEventHandlers)

  export
  onbeforeprint :  (0 _ : JSType t)
                => {auto 0 _ : Elem WindowEventHandlers (Types t)}
                -> t
                -> Attribute False Maybe EventHandlerNonNull
  onbeforeprint v = fromNullablePrim "WindowEventHandlers.getonbeforeprint"
                                     prim__onbeforeprint
                                     prim__setOnbeforeprint
                                     (v :> WindowEventHandlers)

  export
  onbeforeunload :  (0 _ : JSType t)
                 => {auto 0 _ : Elem WindowEventHandlers (Types t)}
                 -> t
                 -> Attribute False Maybe OnBeforeUnloadEventHandlerNonNull
  onbeforeunload v = fromNullablePrim "WindowEventHandlers.getonbeforeunload"
                                      prim__onbeforeunload
                                      prim__setOnbeforeunload
                                      (v :> WindowEventHandlers)

  export
  onhashchange :  (0 _ : JSType t)
               => {auto 0 _ : Elem WindowEventHandlers (Types t)}
               -> t
               -> Attribute False Maybe EventHandlerNonNull
  onhashchange v = fromNullablePrim "WindowEventHandlers.getonhashchange"
                                    prim__onhashchange
                                    prim__setOnhashchange
                                    (v :> WindowEventHandlers)

  export
  onlanguagechange :  (0 _ : JSType t)
                   => {auto 0 _ : Elem WindowEventHandlers (Types t)}
                   -> t
                   -> Attribute False Maybe EventHandlerNonNull
  onlanguagechange v = fromNullablePrim "WindowEventHandlers.getonlanguagechange"
                                        prim__onlanguagechange
                                        prim__setOnlanguagechange
                                        (v :> WindowEventHandlers)

  export
  onmessage :  (0 _ : JSType t)
            => {auto 0 _ : Elem WindowEventHandlers (Types t)}
            -> t
            -> Attribute False Maybe EventHandlerNonNull
  onmessage v = fromNullablePrim "WindowEventHandlers.getonmessage"
                                 prim__onmessage
                                 prim__setOnmessage
                                 (v :> WindowEventHandlers)

  export
  onmessageerror :  (0 _ : JSType t)
                 => {auto 0 _ : Elem WindowEventHandlers (Types t)}
                 -> t
                 -> Attribute False Maybe EventHandlerNonNull
  onmessageerror v = fromNullablePrim "WindowEventHandlers.getonmessageerror"
                                      prim__onmessageerror
                                      prim__setOnmessageerror
                                      (v :> WindowEventHandlers)

  export
  onoffline :  (0 _ : JSType t)
            => {auto 0 _ : Elem WindowEventHandlers (Types t)}
            -> t
            -> Attribute False Maybe EventHandlerNonNull
  onoffline v = fromNullablePrim "WindowEventHandlers.getonoffline"
                                 prim__onoffline
                                 prim__setOnoffline
                                 (v :> WindowEventHandlers)

  export
  ononline :  (0 _ : JSType t)
           => {auto 0 _ : Elem WindowEventHandlers (Types t)}
           -> t
           -> Attribute False Maybe EventHandlerNonNull
  ononline v = fromNullablePrim "WindowEventHandlers.getononline"
                                prim__ononline
                                prim__setOnonline
                                (v :> WindowEventHandlers)

  export
  onpagehide :  (0 _ : JSType t)
             => {auto 0 _ : Elem WindowEventHandlers (Types t)}
             -> t
             -> Attribute False Maybe EventHandlerNonNull
  onpagehide v = fromNullablePrim "WindowEventHandlers.getonpagehide"
                                  prim__onpagehide
                                  prim__setOnpagehide
                                  (v :> WindowEventHandlers)

  export
  onpageshow :  (0 _ : JSType t)
             => {auto 0 _ : Elem WindowEventHandlers (Types t)}
             -> t
             -> Attribute False Maybe EventHandlerNonNull
  onpageshow v = fromNullablePrim "WindowEventHandlers.getonpageshow"
                                  prim__onpageshow
                                  prim__setOnpageshow
                                  (v :> WindowEventHandlers)

  export
  onpopstate :  (0 _ : JSType t)
             => {auto 0 _ : Elem WindowEventHandlers (Types t)}
             -> t
             -> Attribute False Maybe EventHandlerNonNull
  onpopstate v = fromNullablePrim "WindowEventHandlers.getonpopstate"
                                  prim__onpopstate
                                  prim__setOnpopstate
                                  (v :> WindowEventHandlers)

  export
  onrejectionhandled :  (0 _ : JSType t)
                     => {auto 0 _ : Elem WindowEventHandlers (Types t)}
                     -> t
                     -> Attribute False Maybe EventHandlerNonNull
  onrejectionhandled v = fromNullablePrim "WindowEventHandlers.getonrejectionhandled"
                                          prim__onrejectionhandled
                                          prim__setOnrejectionhandled
                                          (v :> WindowEventHandlers)

  export
  onstorage :  (0 _ : JSType t)
            => {auto 0 _ : Elem WindowEventHandlers (Types t)}
            -> t
            -> Attribute False Maybe EventHandlerNonNull
  onstorage v = fromNullablePrim "WindowEventHandlers.getonstorage"
                                 prim__onstorage
                                 prim__setOnstorage
                                 (v :> WindowEventHandlers)

  export
  onunhandledrejection :  (0 _ : JSType t)
                       => {auto 0 _ : Elem WindowEventHandlers (Types t)}
                       -> t
                       -> Attribute False Maybe EventHandlerNonNull
  onunhandledrejection v = fromNullablePrim "WindowEventHandlers.getonunhandledrejection"
                                            prim__onunhandledrejection
                                            prim__setOnunhandledrejection
                                            (v :> WindowEventHandlers)

  export
  onunload :  (0 _ : JSType t)
           => {auto 0 _ : Elem WindowEventHandlers (Types t)}
           -> t
           -> Attribute False Maybe UIEventHandler
  onunload v = fromNullablePrim "WindowEventHandlers.getonunload"
                                prim__onunload
                                prim__setOnunload
                                (v :> WindowEventHandlers)


namespace WindowLocalStorage

  export
  localStorage :  (0 _ : JSType t1)
               => {auto 0 _ : Elem WindowLocalStorage (Types t1)}
               -> (obj : t1)
               -> JSIO Storage
  localStorage a = primJS $ WindowLocalStorage.prim__localStorage (up a)



--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace AssignedNodesOptions

  export
  new : (flatten : Optional Bool) -> JSIO AssignedNodesOptions
  new a = primJS $ AssignedNodesOptions.prim__new (toFFI a)

  export
  new' : JSIO AssignedNodesOptions
  new' = primJS $ AssignedNodesOptions.prim__new undef

  export
  flatten :  (0 _ : JSType t)
          => {auto 0 _ : Elem AssignedNodesOptions (Types t)}
          -> t
          -> Attribute True Optional Bool
  flatten v = fromUndefOrPrim "AssignedNodesOptions.getflatten"
                              prim__flatten
                              prim__setFlatten
                              False
                              (v :> AssignedNodesOptions)


namespace CanvasRenderingContext2DSettings

  export
  new :  (alpha : Optional Bool)
      -> (desynchronized : Optional Bool)
      -> JSIO CanvasRenderingContext2DSettings
  new a b = primJS
          $ CanvasRenderingContext2DSettings.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO CanvasRenderingContext2DSettings
  new' = primJS $ CanvasRenderingContext2DSettings.prim__new undef undef

  export
  alpha :  (0 _ : JSType t)
        => {auto 0 _ : Elem CanvasRenderingContext2DSettings (Types t)}
        -> t
        -> Attribute True Optional Bool
  alpha v = fromUndefOrPrim "CanvasRenderingContext2DSettings.getalpha"
                            prim__alpha
                            prim__setAlpha
                            True
                            (v :> CanvasRenderingContext2DSettings)

  export
  desynchronized :  (0 _ : JSType t)
                 => {auto 0 _ : Elem CanvasRenderingContext2DSettings (Types t)}
                 -> t
                 -> Attribute True Optional Bool
  desynchronized v = fromUndefOrPrim "CanvasRenderingContext2DSettings.getdesynchronized"
                                     prim__desynchronized
                                     prim__setDesynchronized
                                     False
                                     (v :> CanvasRenderingContext2DSettings)


namespace CloseEventInit

  export
  new :  (wasClean : Optional Bool)
      -> (code : Optional Bits16)
      -> (reason : Optional String)
      -> JSIO CloseEventInit
  new a b c = primJS $ CloseEventInit.prim__new (toFFI a) (toFFI b) (toFFI c)

  export
  new' : JSIO CloseEventInit
  new' = primJS $ CloseEventInit.prim__new undef undef undef

  export
  code :  (0 _ : JSType t)
       => {auto 0 _ : Elem CloseEventInit (Types t)}
       -> t
       -> Attribute True Optional Bits16
  code v = fromUndefOrPrim "CloseEventInit.getcode"
                           prim__code
                           prim__setCode
                           0
                           (v :> CloseEventInit)

  export
  reason :  (0 _ : JSType t)
         => {auto 0 _ : Elem CloseEventInit (Types t)}
         -> t
         -> Attribute True Optional String
  reason v = fromUndefOrPrim "CloseEventInit.getreason"
                             prim__reason
                             prim__setReason
                             ""
                             (v :> CloseEventInit)

  export
  wasClean :  (0 _ : JSType t)
           => {auto 0 _ : Elem CloseEventInit (Types t)}
           -> t
           -> Attribute True Optional Bool
  wasClean v = fromUndefOrPrim "CloseEventInit.getwasClean"
                               prim__wasClean
                               prim__setWasClean
                               False
                               (v :> CloseEventInit)


namespace DragEventInit

  export
  new : (dataTransfer : Optional (Maybe DataTransfer)) -> JSIO DragEventInit
  new a = primJS $ DragEventInit.prim__new (toFFI a)

  export
  new' : JSIO DragEventInit
  new' = primJS $ DragEventInit.prim__new undef

  export
  dataTransfer :  (0 _ : JSType t)
               => {auto 0 _ : Elem DragEventInit (Types t)}
               -> t
               -> Attribute True Optional (Maybe DataTransfer)
  dataTransfer v = fromUndefOrPrim "DragEventInit.getdataTransfer"
                                   prim__dataTransfer
                                   prim__setDataTransfer
                                   Nothing
                                   (v :> DragEventInit)


namespace ElementDefinitionOptions

  export
  new : (extends : Optional String) -> JSIO ElementDefinitionOptions
  new a = primJS $ ElementDefinitionOptions.prim__new (toFFI a)

  export
  new' : JSIO ElementDefinitionOptions
  new' = primJS $ ElementDefinitionOptions.prim__new undef

  export
  extends :  (0 _ : JSType t)
          => {auto 0 _ : Elem ElementDefinitionOptions (Types t)}
          -> t
          -> Attribute False Optional String
  extends v = fromUndefOrPrimNoDefault "ElementDefinitionOptions.getextends"
                                       prim__extends
                                       prim__setExtends
                                       (v :> ElementDefinitionOptions)


namespace ErrorEventInit

  export
  new :  (message : Optional String)
      -> (filename : Optional String)
      -> (lineno : Optional Bits32)
      -> (colno : Optional Bits32)
      -> (error : Optional Any)
      -> JSIO ErrorEventInit
  new a b c d e = primJS
                $ ErrorEventInit.prim__new (toFFI a)
                                           (toFFI b)
                                           (toFFI c)
                                           (toFFI d)
                                           (toFFI e)

  export
  new' : JSIO ErrorEventInit
  new' = primJS $ ErrorEventInit.prim__new undef undef undef undef undef

  export
  colno :  (0 _ : JSType t)
        => {auto 0 _ : Elem ErrorEventInit (Types t)}
        -> t
        -> Attribute True Optional Bits32
  colno v = fromUndefOrPrim "ErrorEventInit.getcolno"
                            prim__colno
                            prim__setColno
                            0
                            (v :> ErrorEventInit)

  export
  error :  (0 _ : JSType t)
        => {auto 0 _ : Elem ErrorEventInit (Types t)}
        -> t
        -> Attribute True Optional Any
  error v = fromUndefOrPrim "ErrorEventInit.geterror"
                            prim__error
                            prim__setError
                            (MkAny $ null {a = ()})
                            (v :> ErrorEventInit)

  export
  filename :  (0 _ : JSType t)
           => {auto 0 _ : Elem ErrorEventInit (Types t)}
           -> t
           -> Attribute True Optional String
  filename v = fromUndefOrPrim "ErrorEventInit.getfilename"
                               prim__filename
                               prim__setFilename
                               ""
                               (v :> ErrorEventInit)

  export
  lineno :  (0 _ : JSType t)
         => {auto 0 _ : Elem ErrorEventInit (Types t)}
         -> t
         -> Attribute True Optional Bits32
  lineno v = fromUndefOrPrim "ErrorEventInit.getlineno"
                             prim__lineno
                             prim__setLineno
                             0
                             (v :> ErrorEventInit)

  export
  message :  (0 _ : JSType t)
          => {auto 0 _ : Elem ErrorEventInit (Types t)}
          -> t
          -> Attribute True Optional String
  message v = fromUndefOrPrim "ErrorEventInit.getmessage"
                              prim__message
                              prim__setMessage
                              ""
                              (v :> ErrorEventInit)


namespace EventSourceInit

  export
  new : (withCredentials : Optional Bool) -> JSIO EventSourceInit
  new a = primJS $ EventSourceInit.prim__new (toFFI a)

  export
  new' : JSIO EventSourceInit
  new' = primJS $ EventSourceInit.prim__new undef

  export
  withCredentials :  (0 _ : JSType t)
                  => {auto 0 _ : Elem EventSourceInit (Types t)}
                  -> t
                  -> Attribute True Optional Bool
  withCredentials v = fromUndefOrPrim "EventSourceInit.getwithCredentials"
                                      prim__withCredentials
                                      prim__setWithCredentials
                                      False
                                      (v :> EventSourceInit)


namespace FocusOptions

  export
  new : (preventScroll : Optional Bool) -> JSIO FocusOptions
  new a = primJS $ FocusOptions.prim__new (toFFI a)

  export
  new' : JSIO FocusOptions
  new' = primJS $ FocusOptions.prim__new undef

  export
  preventScroll :  (0 _ : JSType t)
                => {auto 0 _ : Elem FocusOptions (Types t)}
                -> t
                -> Attribute True Optional Bool
  preventScroll v = fromUndefOrPrim "FocusOptions.getpreventScroll"
                                    prim__preventScroll
                                    prim__setPreventScroll
                                    False
                                    (v :> FocusOptions)


namespace FormDataEventInit

  export
  new : (formData : FormData) -> JSIO FormDataEventInit
  new a = primJS $ FormDataEventInit.prim__new a

  export
  formData :  (0 _ : JSType t)
           => {auto 0 _ : Elem FormDataEventInit (Types t)}
           -> t
           -> Attribute True I FormData
  formData v = fromPrim "FormDataEventInit.getformData"
                        prim__formData
                        prim__setFormData
                        (v :> FormDataEventInit)


namespace HashChangeEventInit

  export
  new :  (oldURL : Optional String)
      -> (newURL : Optional String)
      -> JSIO HashChangeEventInit
  new a b = primJS $ HashChangeEventInit.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO HashChangeEventInit
  new' = primJS $ HashChangeEventInit.prim__new undef undef

  export
  newURL :  (0 _ : JSType t)
         => {auto 0 _ : Elem HashChangeEventInit (Types t)}
         -> t
         -> Attribute True Optional String
  newURL v = fromUndefOrPrim "HashChangeEventInit.getnewURL"
                             prim__newURL
                             prim__setNewURL
                             ""
                             (v :> HashChangeEventInit)

  export
  oldURL :  (0 _ : JSType t)
         => {auto 0 _ : Elem HashChangeEventInit (Types t)}
         -> t
         -> Attribute True Optional String
  oldURL v = fromUndefOrPrim "HashChangeEventInit.getoldURL"
                             prim__oldURL
                             prim__setOldURL
                             ""
                             (v :> HashChangeEventInit)


namespace ImageBitmapOptions

  export
  new :  (imageOrientation : Optional ImageOrientation)
      -> (premultiplyAlpha : Optional PremultiplyAlpha)
      -> (colorSpaceConversion : Optional ColorSpaceConversion)
      -> (resizeWidth : Optional Bits32)
      -> (resizeHeight : Optional Bits32)
      -> (resizeQuality : Optional ResizeQuality)
      -> JSIO ImageBitmapOptions
  new a b c d e f = primJS
                  $ ImageBitmapOptions.prim__new (toFFI a)
                                                 (toFFI b)
                                                 (toFFI c)
                                                 (toFFI d)
                                                 (toFFI e)
                                                 (toFFI f)

  export
  new' : JSIO ImageBitmapOptions
  new' = primJS
       $ ImageBitmapOptions.prim__new undef undef undef undef undef undef

  export
  colorSpaceConversion :  (0 _ : JSType t)
                       => {auto 0 _ : Elem ImageBitmapOptions (Types t)}
                       -> t
                       -> Attribute False Optional ColorSpaceConversion
  colorSpaceConversion v = fromUndefOrPrimNoDefault "ImageBitmapOptions.getcolorSpaceConversion"
                                                    prim__colorSpaceConversion
                                                    prim__setColorSpaceConversion
                                                    (v :> ImageBitmapOptions)

  export
  imageOrientation :  (0 _ : JSType t)
                   => {auto 0 _ : Elem ImageBitmapOptions (Types t)}
                   -> t
                   -> Attribute False Optional ImageOrientation
  imageOrientation v = fromUndefOrPrimNoDefault "ImageBitmapOptions.getimageOrientation"
                                                prim__imageOrientation
                                                prim__setImageOrientation
                                                (v :> ImageBitmapOptions)

  export
  premultiplyAlpha :  (0 _ : JSType t)
                   => {auto 0 _ : Elem ImageBitmapOptions (Types t)}
                   -> t
                   -> Attribute False Optional PremultiplyAlpha
  premultiplyAlpha v = fromUndefOrPrimNoDefault "ImageBitmapOptions.getpremultiplyAlpha"
                                                prim__premultiplyAlpha
                                                prim__setPremultiplyAlpha
                                                (v :> ImageBitmapOptions)

  export
  resizeHeight :  (0 _ : JSType t)
               => {auto 0 _ : Elem ImageBitmapOptions (Types t)}
               -> t
               -> Attribute False Optional Bits32
  resizeHeight v = fromUndefOrPrimNoDefault "ImageBitmapOptions.getresizeHeight"
                                            prim__resizeHeight
                                            prim__setResizeHeight
                                            (v :> ImageBitmapOptions)

  export
  resizeQuality :  (0 _ : JSType t)
                => {auto 0 _ : Elem ImageBitmapOptions (Types t)}
                -> t
                -> Attribute False Optional ResizeQuality
  resizeQuality v = fromUndefOrPrimNoDefault "ImageBitmapOptions.getresizeQuality"
                                             prim__resizeQuality
                                             prim__setResizeQuality
                                             (v :> ImageBitmapOptions)

  export
  resizeWidth :  (0 _ : JSType t)
              => {auto 0 _ : Elem ImageBitmapOptions (Types t)}
              -> t
              -> Attribute False Optional Bits32
  resizeWidth v = fromUndefOrPrimNoDefault "ImageBitmapOptions.getresizeWidth"
                                           prim__resizeWidth
                                           prim__setResizeWidth
                                           (v :> ImageBitmapOptions)


namespace ImageBitmapRenderingContextSettings

  export
  new : (alpha : Optional Bool) -> JSIO ImageBitmapRenderingContextSettings
  new a = primJS $ ImageBitmapRenderingContextSettings.prim__new (toFFI a)

  export
  new' : JSIO ImageBitmapRenderingContextSettings
  new' = primJS $ ImageBitmapRenderingContextSettings.prim__new undef

  export
  alpha :  (0 _ : JSType t)
        => {auto 0 _ : Elem ImageBitmapRenderingContextSettings (Types t)}
        -> t
        -> Attribute True Optional Bool
  alpha v = fromUndefOrPrim "ImageBitmapRenderingContextSettings.getalpha"
                            prim__alpha
                            prim__setAlpha
                            True
                            (v :> ImageBitmapRenderingContextSettings)


namespace ImageEncodeOptions

  export
  new :  (type : Optional String)
      -> (quality : Optional Double)
      -> JSIO ImageEncodeOptions
  new a b = primJS $ ImageEncodeOptions.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO ImageEncodeOptions
  new' = primJS $ ImageEncodeOptions.prim__new undef undef

  export
  quality :  (0 _ : JSType t)
          => {auto 0 _ : Elem ImageEncodeOptions (Types t)}
          -> t
          -> Attribute False Optional Double
  quality v = fromUndefOrPrimNoDefault "ImageEncodeOptions.getquality"
                                       prim__quality
                                       prim__setQuality
                                       (v :> ImageEncodeOptions)

  export
  type :  (0 _ : JSType t)
       => {auto 0 _ : Elem ImageEncodeOptions (Types t)}
       -> t
       -> Attribute True Optional String
  type v = fromUndefOrPrim "ImageEncodeOptions.gettype"
                           prim__type
                           prim__setType
                           "image/png"
                           (v :> ImageEncodeOptions)


namespace MessageEventInit

  export
  new :  (data_ : Optional Any)
      -> (origin : Optional String)
      -> (lastEventId : Optional String)
      -> (source : Optional (Maybe (NS I [ WindowProxy
                                         , MessagePort
                                         , ServiceWorker
                                         ])))
      -> (ports : Optional (Array MessagePort))
      -> JSIO MessageEventInit
  new a b c d e = primJS
                $ MessageEventInit.prim__new (toFFI a)
                                             (toFFI b)
                                             (toFFI c)
                                             (toFFI d)
                                             (toFFI e)

  export
  new' : JSIO MessageEventInit
  new' = primJS $ MessageEventInit.prim__new undef undef undef undef undef

  export
  data_ :  (0 _ : JSType t)
        => {auto 0 _ : Elem MessageEventInit (Types t)}
        -> t
        -> Attribute True Optional Any
  data_ v = fromUndefOrPrim "MessageEventInit.getdata"
                            prim__data
                            prim__setData
                            (MkAny $ null {a = ()})
                            (v :> MessageEventInit)

  export
  lastEventId :  (0 _ : JSType t)
              => {auto 0 _ : Elem MessageEventInit (Types t)}
              -> t
              -> Attribute True Optional String
  lastEventId v = fromUndefOrPrim "MessageEventInit.getlastEventId"
                                  prim__lastEventId
                                  prim__setLastEventId
                                  ""
                                  (v :> MessageEventInit)

  export
  origin :  (0 _ : JSType t)
         => {auto 0 _ : Elem MessageEventInit (Types t)}
         -> t
         -> Attribute True Optional String
  origin v = fromUndefOrPrim "MessageEventInit.getorigin"
                             prim__origin
                             prim__setOrigin
                             ""
                             (v :> MessageEventInit)

  export
  ports :  (0 _ : JSType t)
        => {auto 0 _ : Elem MessageEventInit (Types t)}
        -> t
        -> Attribute False Optional (Array MessagePort)
  ports v = fromUndefOrPrimNoDefault "MessageEventInit.getports"
                                     prim__ports
                                     prim__setPorts
                                     (v :> MessageEventInit)

  export
  source :  (0 _ : JSType t)
         => {auto 0 _ : Elem MessageEventInit (Types t)}
         -> t
         -> Attribute True Optional (Maybe (Union3 WindowProxy
                                                   MessagePort
                                                   ServiceWorker))
  source v = fromUndefOrPrim "MessageEventInit.getsource"
                             prim__source
                             prim__setSource
                             Nothing
                             (v :> MessageEventInit)


namespace PageTransitionEventInit

  export
  new : (persisted : Optional Bool) -> JSIO PageTransitionEventInit
  new a = primJS $ PageTransitionEventInit.prim__new (toFFI a)

  export
  new' : JSIO PageTransitionEventInit
  new' = primJS $ PageTransitionEventInit.prim__new undef

  export
  persisted :  (0 _ : JSType t)
            => {auto 0 _ : Elem PageTransitionEventInit (Types t)}
            -> t
            -> Attribute True Optional Bool
  persisted v = fromUndefOrPrim "PageTransitionEventInit.getpersisted"
                                prim__persisted
                                prim__setPersisted
                                False
                                (v :> PageTransitionEventInit)


namespace PopStateEventInit

  export
  new : (state : Optional Any) -> JSIO PopStateEventInit
  new a = primJS $ PopStateEventInit.prim__new (toFFI a)

  export
  new' : JSIO PopStateEventInit
  new' = primJS $ PopStateEventInit.prim__new undef

  export
  state :  (0 _ : JSType t)
        => {auto 0 _ : Elem PopStateEventInit (Types t)}
        -> t
        -> Attribute True Optional Any
  state v = fromUndefOrPrim "PopStateEventInit.getstate"
                            prim__state
                            prim__setState
                            (MkAny $ null {a = ()})
                            (v :> PopStateEventInit)


namespace PostMessageOptions

  export
  new : (transfer : Optional (Array Object)) -> JSIO PostMessageOptions
  new a = primJS $ PostMessageOptions.prim__new (toFFI a)

  export
  new' : JSIO PostMessageOptions
  new' = primJS $ PostMessageOptions.prim__new undef

  export
  transfer :  (0 _ : JSType t)
           => {auto 0 _ : Elem PostMessageOptions (Types t)}
           -> t
           -> Attribute False Optional (Array Object)
  transfer v = fromUndefOrPrimNoDefault "PostMessageOptions.gettransfer"
                                        prim__transfer
                                        prim__setTransfer
                                        (v :> PostMessageOptions)


namespace PromiseRejectionEventInit

  export
  new :  (promise : Promise AnyPtr)
      -> (reason : Optional Any)
      -> JSIO PromiseRejectionEventInit
  new a b = primJS $ PromiseRejectionEventInit.prim__new a (toFFI b)

  export
  new' : (promise : Promise AnyPtr) -> JSIO PromiseRejectionEventInit
  new' a = primJS $ PromiseRejectionEventInit.prim__new a undef

  export
  promise :  (0 _ : JSType t)
          => {auto 0 _ : Elem PromiseRejectionEventInit (Types t)}
          -> t
          -> Attribute True I (Promise AnyPtr)
  promise v = fromPrim "PromiseRejectionEventInit.getpromise"
                       prim__promise
                       prim__setPromise
                       (v :> PromiseRejectionEventInit)

  export
  reason :  (0 _ : JSType t)
         => {auto 0 _ : Elem PromiseRejectionEventInit (Types t)}
         -> t
         -> Attribute False Optional Any
  reason v = fromUndefOrPrimNoDefault "PromiseRejectionEventInit.getreason"
                                      prim__reason
                                      prim__setReason
                                      (v :> PromiseRejectionEventInit)


namespace StorageEventInit

  export
  new :  (key : Optional (Maybe String))
      -> (oldValue : Optional (Maybe String))
      -> (newValue : Optional (Maybe String))
      -> (url : Optional String)
      -> (storageArea : Optional (Maybe Storage))
      -> JSIO StorageEventInit
  new a b c d e = primJS
                $ StorageEventInit.prim__new (toFFI a)
                                             (toFFI b)
                                             (toFFI c)
                                             (toFFI d)
                                             (toFFI e)

  export
  new' : JSIO StorageEventInit
  new' = primJS $ StorageEventInit.prim__new undef undef undef undef undef

  export
  key :  (0 _ : JSType t)
      => {auto 0 _ : Elem StorageEventInit (Types t)}
      -> t
      -> Attribute True Optional (Maybe String)
  key v = fromUndefOrPrim "StorageEventInit.getkey"
                          prim__key
                          prim__setKey
                          Nothing
                          (v :> StorageEventInit)

  export
  newValue :  (0 _ : JSType t)
           => {auto 0 _ : Elem StorageEventInit (Types t)}
           -> t
           -> Attribute True Optional (Maybe String)
  newValue v = fromUndefOrPrim "StorageEventInit.getnewValue"
                               prim__newValue
                               prim__setNewValue
                               Nothing
                               (v :> StorageEventInit)

  export
  oldValue :  (0 _ : JSType t)
           => {auto 0 _ : Elem StorageEventInit (Types t)}
           -> t
           -> Attribute True Optional (Maybe String)
  oldValue v = fromUndefOrPrim "StorageEventInit.getoldValue"
                               prim__oldValue
                               prim__setOldValue
                               Nothing
                               (v :> StorageEventInit)

  export
  storageArea :  (0 _ : JSType t)
              => {auto 0 _ : Elem StorageEventInit (Types t)}
              -> t
              -> Attribute True Optional (Maybe Storage)
  storageArea v = fromUndefOrPrim "StorageEventInit.getstorageArea"
                                  prim__storageArea
                                  prim__setStorageArea
                                  Nothing
                                  (v :> StorageEventInit)

  export
  url :  (0 _ : JSType t)
      => {auto 0 _ : Elem StorageEventInit (Types t)}
      -> t
      -> Attribute True Optional String
  url v = fromUndefOrPrim "StorageEventInit.geturl"
                          prim__url
                          prim__setUrl
                          ""
                          (v :> StorageEventInit)


namespace SubmitEventInit

  export
  new :  (0 _ : JSType t1)
      => {auto 0 _ : Elem HTMLElement (Types t1)}
      -> (submitter : Optional (Maybe t1))
      -> JSIO SubmitEventInit
  new a = primJS $ SubmitEventInit.prim__new (omyUp a)

  export
  new' : JSIO SubmitEventInit
  new' = primJS $ SubmitEventInit.prim__new undef

  export
  submitter :  (0 _ : JSType t)
            => {auto 0 _ : Elem SubmitEventInit (Types t)}
            -> t
            -> Attribute True Optional (Maybe HTMLElement)
  submitter v = fromUndefOrPrim "SubmitEventInit.getsubmitter"
                                prim__submitter
                                prim__setSubmitter
                                Nothing
                                (v :> SubmitEventInit)


namespace TrackEventInit

  export
  new :  (track : Optional (Maybe (NS I [ VideoTrack
                                        , AudioTrack
                                        , TextTrack
                                        ])))
      -> JSIO TrackEventInit
  new a = primJS $ TrackEventInit.prim__new (toFFI a)

  export
  new' : JSIO TrackEventInit
  new' = primJS $ TrackEventInit.prim__new undef

  export
  track :  (0 _ : JSType t)
        => {auto 0 _ : Elem TrackEventInit (Types t)}
        -> t
        -> Attribute True Optional (Maybe (NS I [ VideoTrack
                                                , AudioTrack
                                                , TextTrack
                                                ]))
  track v = fromUndefOrPrim "TrackEventInit.gettrack"
                            prim__track
                            prim__setTrack
                            Nothing
                            (v :> TrackEventInit)


namespace ValidityStateFlags

  export
  new :  (valueMissing : Optional Bool)
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
  new a b c d e f g h i j = primJS
                          $ ValidityStateFlags.prim__new (toFFI a)
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
  new' : JSIO ValidityStateFlags
  new' = primJS
       $ ValidityStateFlags.prim__new undef
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
  badInput :  (0 _ : JSType t)
           => {auto 0 _ : Elem ValidityStateFlags (Types t)}
           -> t
           -> Attribute True Optional Bool
  badInput v = fromUndefOrPrim "ValidityStateFlags.getbadInput"
                               prim__badInput
                               prim__setBadInput
                               False
                               (v :> ValidityStateFlags)

  export
  customError :  (0 _ : JSType t)
              => {auto 0 _ : Elem ValidityStateFlags (Types t)}
              -> t
              -> Attribute True Optional Bool
  customError v = fromUndefOrPrim "ValidityStateFlags.getcustomError"
                                  prim__customError
                                  prim__setCustomError
                                  False
                                  (v :> ValidityStateFlags)

  export
  patternMismatch :  (0 _ : JSType t)
                  => {auto 0 _ : Elem ValidityStateFlags (Types t)}
                  -> t
                  -> Attribute True Optional Bool
  patternMismatch v = fromUndefOrPrim "ValidityStateFlags.getpatternMismatch"
                                      prim__patternMismatch
                                      prim__setPatternMismatch
                                      False
                                      (v :> ValidityStateFlags)

  export
  rangeOverflow :  (0 _ : JSType t)
                => {auto 0 _ : Elem ValidityStateFlags (Types t)}
                -> t
                -> Attribute True Optional Bool
  rangeOverflow v = fromUndefOrPrim "ValidityStateFlags.getrangeOverflow"
                                    prim__rangeOverflow
                                    prim__setRangeOverflow
                                    False
                                    (v :> ValidityStateFlags)

  export
  rangeUnderflow :  (0 _ : JSType t)
                 => {auto 0 _ : Elem ValidityStateFlags (Types t)}
                 -> t
                 -> Attribute True Optional Bool
  rangeUnderflow v = fromUndefOrPrim "ValidityStateFlags.getrangeUnderflow"
                                     prim__rangeUnderflow
                                     prim__setRangeUnderflow
                                     False
                                     (v :> ValidityStateFlags)

  export
  stepMismatch :  (0 _ : JSType t)
               => {auto 0 _ : Elem ValidityStateFlags (Types t)}
               -> t
               -> Attribute True Optional Bool
  stepMismatch v = fromUndefOrPrim "ValidityStateFlags.getstepMismatch"
                                   prim__stepMismatch
                                   prim__setStepMismatch
                                   False
                                   (v :> ValidityStateFlags)

  export
  tooLong :  (0 _ : JSType t)
          => {auto 0 _ : Elem ValidityStateFlags (Types t)}
          -> t
          -> Attribute True Optional Bool
  tooLong v = fromUndefOrPrim "ValidityStateFlags.gettooLong"
                              prim__tooLong
                              prim__setTooLong
                              False
                              (v :> ValidityStateFlags)

  export
  tooShort :  (0 _ : JSType t)
           => {auto 0 _ : Elem ValidityStateFlags (Types t)}
           -> t
           -> Attribute True Optional Bool
  tooShort v = fromUndefOrPrim "ValidityStateFlags.gettooShort"
                               prim__tooShort
                               prim__setTooShort
                               False
                               (v :> ValidityStateFlags)

  export
  typeMismatch :  (0 _ : JSType t)
               => {auto 0 _ : Elem ValidityStateFlags (Types t)}
               -> t
               -> Attribute True Optional Bool
  typeMismatch v = fromUndefOrPrim "ValidityStateFlags.gettypeMismatch"
                                   prim__typeMismatch
                                   prim__setTypeMismatch
                                   False
                                   (v :> ValidityStateFlags)

  export
  valueMissing :  (0 _ : JSType t)
               => {auto 0 _ : Elem ValidityStateFlags (Types t)}
               -> t
               -> Attribute True Optional Bool
  valueMissing v = fromUndefOrPrim "ValidityStateFlags.getvalueMissing"
                                   prim__valueMissing
                                   prim__setValueMissing
                                   False
                                   (v :> ValidityStateFlags)


namespace WindowPostMessageOptions

  export
  new : (targetOrigin : Optional String) -> JSIO WindowPostMessageOptions
  new a = primJS $ WindowPostMessageOptions.prim__new (toFFI a)

  export
  new' : JSIO WindowPostMessageOptions
  new' = primJS $ WindowPostMessageOptions.prim__new undef

  export
  targetOrigin :  (0 _ : JSType t)
               => {auto 0 _ : Elem WindowPostMessageOptions (Types t)}
               -> t
               -> Attribute True Optional String
  targetOrigin v = fromUndefOrPrim "WindowPostMessageOptions.gettargetOrigin"
                                   prim__targetOrigin
                                   prim__setTargetOrigin
                                   "/"
                                   (v :> WindowPostMessageOptions)


namespace WorkerOptions

  export
  new :  (type : Optional WorkerType)
      -> (credentials : Optional RequestCredentials)
      -> (name : Optional String)
      -> JSIO WorkerOptions
  new a b c = primJS $ WorkerOptions.prim__new (toFFI a) (toFFI b) (toFFI c)

  export
  new' : JSIO WorkerOptions
  new' = primJS $ WorkerOptions.prim__new undef undef undef

  export
  credentials :  (0 _ : JSType t)
              => {auto 0 _ : Elem WorkerOptions (Types t)}
              -> t
              -> Attribute False Optional RequestCredentials
  credentials v = fromUndefOrPrimNoDefault "WorkerOptions.getcredentials"
                                           prim__credentials
                                           prim__setCredentials
                                           (v :> WorkerOptions)

  export
  name :  (0 _ : JSType t)
       => {auto 0 _ : Elem WorkerOptions (Types t)}
       -> t
       -> Attribute True Optional String
  name v = fromUndefOrPrim "WorkerOptions.getname"
                           prim__name
                           prim__setName
                           ""
                           (v :> WorkerOptions)

  export
  type :  (0 _ : JSType t)
       => {auto 0 _ : Elem WorkerOptions (Types t)}
       -> t
       -> Attribute False Optional WorkerType
  type v = fromUndefOrPrimNoDefault "WorkerOptions.gettype"
                                    prim__type
                                    prim__setType
                                    (v :> WorkerOptions)


namespace WorkletOptions

  export
  new : (credentials : Optional RequestCredentials) -> JSIO WorkletOptions
  new a = primJS $ WorkletOptions.prim__new (toFFI a)

  export
  new' : JSIO WorkletOptions
  new' = primJS $ WorkletOptions.prim__new undef

  export
  credentials :  (0 _ : JSType t)
              => {auto 0 _ : Elem WorkletOptions (Types t)}
              -> t
              -> Attribute False Optional RequestCredentials
  credentials v = fromUndefOrPrimNoDefault "WorkletOptions.getcredentials"
                                           prim__credentials
                                           prim__setCredentials
                                           (v :> WorkletOptions)



--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------

namespace BlobCallback

  export
  toBlobCallback : ( Nullable Blob -> IO () ) -> JSIO BlobCallback
  toBlobCallback cb = primJS $ prim__toBlobCallback cb


namespace CompositionEventHandler

  export
  toCompositionEventHandler :  ( CompositionEvent -> IO () )
                            -> JSIO CompositionEventHandler
  toCompositionEventHandler cb = primJS $ prim__toCompositionEventHandler cb


namespace CustomElementConstructor

  export
  toCustomElementConstructor :  (() -> IO HTMLElement)
                             -> JSIO CustomElementConstructor
  toCustomElementConstructor cb = primJS $ prim__toCustomElementConstructor cb


namespace EventHandlerNonNull

  export
  toEventHandlerNonNull : ( Event -> IO AnyPtr ) -> JSIO EventHandlerNonNull
  toEventHandlerNonNull cb = primJS $ prim__toEventHandlerNonNull cb


namespace FocusEventHandler

  export
  toFocusEventHandler : ( FocusEvent -> IO () ) -> JSIO FocusEventHandler
  toFocusEventHandler cb = primJS $ prim__toFocusEventHandler cb


namespace FunctionStringCallback

  export
  toFunctionStringCallback : ( String -> IO () ) -> JSIO FunctionStringCallback
  toFunctionStringCallback cb = primJS $ prim__toFunctionStringCallback cb


namespace InputEventHandler

  export
  toInputEventHandler : ( InputEvent -> IO () ) -> JSIO InputEventHandler
  toInputEventHandler cb = primJS $ prim__toInputEventHandler cb


namespace KeyboardEventHandler

  export
  toKeyboardEventHandler :  ( KeyboardEvent -> IO () )
                         -> JSIO KeyboardEventHandler
  toKeyboardEventHandler cb = primJS $ prim__toKeyboardEventHandler cb


namespace MouseEventHandler

  export
  toMouseEventHandler : ( MouseEvent -> IO () ) -> JSIO MouseEventHandler
  toMouseEventHandler cb = primJS $ prim__toMouseEventHandler cb


namespace OnBeforeUnloadEventHandlerNonNull

  export
  toOnBeforeUnloadEventHandlerNonNull :  ( Event -> IO (Nullable String) )
                                      -> JSIO OnBeforeUnloadEventHandlerNonNull
  toOnBeforeUnloadEventHandlerNonNull cb = primJS $ prim__toOnBeforeUnloadEventHandlerNonNull cb


namespace OnErrorEventHandlerNonNull

  export
  toOnErrorEventHandlerNonNull :  (  Union2 Event String
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
  toUIEventHandler : ( UIEvent -> IO () ) -> JSIO UIEventHandler
  toUIEventHandler cb = primJS $ prim__toUIEventHandler cb


namespace WheelEventHandler

  export
  toWheelEventHandler : ( WheelEvent -> IO () ) -> JSIO WheelEventHandler
  toWheelEventHandler cb = primJS $ prim__toWheelEventHandler cb
