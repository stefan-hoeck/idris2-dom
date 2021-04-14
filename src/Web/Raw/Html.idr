module Web.Raw.Html
 
import JS
import Web.Internal.HtmlPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace AudioTrack
  
  export
  enabled : AudioTrack -> Attribute True I Bool
  enabled = fromPrim "AudioTrack.getenabled" prim__enabled prim__setEnabled
  
  export
  id :  JSType t1
     => {auto 0 _ : Elem AudioTrack (Types t1)}
     -> (obj : t1)
     -> JSIO String
  id a = primJS $ AudioTrack.prim__id (up a)
  
  export
  kind :  JSType t1
       => {auto 0 _ : Elem AudioTrack (Types t1)}
       -> (obj : t1)
       -> JSIO String
  kind a = primJS $ AudioTrack.prim__kind (up a)
  
  export
  label :  JSType t1
        => {auto 0 _ : Elem AudioTrack (Types t1)}
        -> (obj : t1)
        -> JSIO String
  label a = primJS $ AudioTrack.prim__label (up a)
  
  export
  language :  JSType t1
           => {auto 0 _ : Elem AudioTrack (Types t1)}
           -> (obj : t1)
           -> JSIO String
  language a = primJS $ AudioTrack.prim__language (up a)
  
  export
  sourceBuffer :  JSType t1
               => {auto 0 _ : Elem AudioTrack (Types t1)}
               -> (obj : t1)
               -> JSIO (Maybe SourceBuffer)
  sourceBuffer a = tryJS "AudioTrack.sourceBuffer"
                 $ AudioTrack.prim__sourceBuffer (up a)

namespace AudioTrackList
  
  export
  get :  JSType t1
      => {auto 0 _ : Elem AudioTrackList (Types t1)}
      -> (obj : t1)
      -> (index : UInt32)
      -> JSIO AudioTrack
  get a b = primJS $ AudioTrackList.prim__get (up a) b
  
  export
  length :  JSType t1
         => {auto 0 _ : Elem AudioTrackList (Types t1)}
         -> (obj : t1)
         -> JSIO UInt32
  length a = primJS $ AudioTrackList.prim__length (up a)
  
  export
  onaddtrack : AudioTrackList -> Attribute False Maybe EventHandlerNonNull
  onaddtrack = fromNullablePrim "AudioTrackList.getonaddtrack"
                                prim__onaddtrack
                                prim__setOnaddtrack
  
  export
  onchange : AudioTrackList -> Attribute False Maybe EventHandlerNonNull
  onchange = fromNullablePrim "AudioTrackList.getonchange"
                              prim__onchange
                              prim__setOnchange
  
  export
  onremovetrack : AudioTrackList -> Attribute False Maybe EventHandlerNonNull
  onremovetrack = fromNullablePrim "AudioTrackList.getonremovetrack"
                                   prim__onremovetrack
                                   prim__setOnremovetrack
  
  export
  getTrackById :  JSType t1
               => {auto 0 _ : Elem AudioTrackList (Types t1)}
               -> (obj : t1)
               -> (id : String)
               -> JSIO (Maybe AudioTrack)
  getTrackById a b = tryJS "AudioTrackList.getTrackById"
                   $ AudioTrackList.prim__getTrackById (up a) b

namespace BarProp
  
  export
  visible :  JSType t1
          => {auto 0 _ : Elem BarProp (Types t1)}
          -> (obj : t1)
          -> JSIO Bool
  visible a = tryJS "BarProp.visible" $ BarProp.prim__visible (up a)

namespace BeforeUnloadEvent
  
  export
  returnValue : BeforeUnloadEvent -> Attribute True I String
  returnValue = fromPrim "BeforeUnloadEvent.getreturnValue"
                         prim__returnValue
                         prim__setReturnValue

namespace BroadcastChannel
  
  export
  new : (name : String) -> JSIO BroadcastChannel
  new a = primJS $ BroadcastChannel.prim__new a
  
  export
  name :  JSType t1
       => {auto 0 _ : Elem BroadcastChannel (Types t1)}
       -> (obj : t1)
       -> JSIO String
  name a = primJS $ BroadcastChannel.prim__name (up a)
  
  export
  onmessage : BroadcastChannel -> Attribute False Maybe EventHandlerNonNull
  onmessage = fromNullablePrim "BroadcastChannel.getonmessage"
                               prim__onmessage
                               prim__setOnmessage
  
  export
  onmessageerror : BroadcastChannel -> Attribute False Maybe EventHandlerNonNull
  onmessageerror = fromNullablePrim "BroadcastChannel.getonmessageerror"
                                    prim__onmessageerror
                                    prim__setOnmessageerror
  
  export
  close :  JSType t1
        => {auto 0 _ : Elem BroadcastChannel (Types t1)}
        -> (obj : t1)
        -> JSIO ()
  close a = primJS $ BroadcastChannel.prim__close (up a)
  
  export
  postMessage :  JSType t1
              => {auto 0 _ : Elem BroadcastChannel (Types t1)}
              -> (obj : t1)
              -> (message : Any)
              -> JSIO ()
  postMessage a b = primJS $ BroadcastChannel.prim__postMessage (up a) (toFFI b)

namespace CanvasGradient
  
  export
  addColorStop :  JSType t1
               => {auto 0 _ : Elem CanvasGradient (Types t1)}
               -> (obj : t1)
               -> (offset : Double)
               -> (color : String)
               -> JSIO ()
  addColorStop a b c = primJS $ CanvasGradient.prim__addColorStop (up a) b c

namespace CanvasPattern
  
  export
  setTransform :  JSType t1
               => JSType t2
               => {auto 0 _ : Elem CanvasPattern (Types t1)}
               -> {auto 0 _ : Elem DOMMatrix2DInit (Types t2)}
               -> (obj : t1)
               -> (transform : Optional t2)
               -> JSIO ()
  setTransform a b = primJS $ CanvasPattern.prim__setTransform (up a) (optUp b)

  export
  setTransform' :  JSType t1
                => {auto 0 _ : Elem CanvasPattern (Types t1)}
                -> (obj : t1)
                -> JSIO ()
  setTransform' a = primJS $ CanvasPattern.prim__setTransform (up a) undef

namespace CanvasRenderingContext2D
  
  export
  canvas :  JSType t1
         => {auto 0 _ : Elem CanvasRenderingContext2D (Types t1)}
         -> (obj : t1)
         -> JSIO HTMLCanvasElement
  canvas a = primJS $ CanvasRenderingContext2D.prim__canvas (up a)
  
  export
  getContextAttributes :  JSType t1
                       => {auto 0 _ : Elem CanvasRenderingContext2D (Types t1)}
                       -> (obj : t1)
                       -> JSIO CanvasRenderingContext2DSettings
  getContextAttributes a = primJS
                         $ CanvasRenderingContext2D.prim__getContextAttributes (up a)

namespace CloseEvent
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem CloseEventInit (Types t1)}
      -> (type : String)
      -> (eventInitDict : Optional t1)
      -> JSIO CloseEvent
  new a b = primJS $ CloseEvent.prim__new a (optUp b)

  export
  new' : (type : String) -> JSIO CloseEvent
  new' a = primJS $ CloseEvent.prim__new a undef
  
  export
  code :  JSType t1
       => {auto 0 _ : Elem CloseEvent (Types t1)}
       -> (obj : t1)
       -> JSIO UInt16
  code a = primJS $ CloseEvent.prim__code (up a)
  
  export
  reason :  JSType t1
         => {auto 0 _ : Elem CloseEvent (Types t1)}
         -> (obj : t1)
         -> JSIO String
  reason a = primJS $ CloseEvent.prim__reason (up a)
  
  export
  wasClean :  JSType t1
           => {auto 0 _ : Elem CloseEvent (Types t1)}
           -> (obj : t1)
           -> JSIO Bool
  wasClean a = tryJS "CloseEvent.wasClean" $ CloseEvent.prim__wasClean (up a)

namespace CustomElementRegistry
  
  export
  define :  JSType t1
         => JSType t2
         => {auto 0 _ : Elem CustomElementRegistry (Types t1)}
         -> {auto 0 _ : Elem ElementDefinitionOptions (Types t2)}
         -> (obj : t1)
         -> (name : String)
         -> (constructor : CustomElementConstructor)
         -> (options : Optional t2)
         -> JSIO ()
  define a b c d = primJS
                 $ CustomElementRegistry.prim__define (up a) b c (optUp d)

  export
  define' :  JSType t1
          => {auto 0 _ : Elem CustomElementRegistry (Types t1)}
          -> (obj : t1)
          -> (name : String)
          -> (constructor : CustomElementConstructor)
          -> JSIO ()
  define' a b c = primJS $ CustomElementRegistry.prim__define (up a) b c undef
  
  export
  get :  JSType t1
      => {auto 0 _ : Elem CustomElementRegistry (Types t1)}
      -> (obj : t1)
      -> (name : String)
      -> JSIO (Union2 CustomElementConstructor Undefined)
  get a b = primJS $ CustomElementRegistry.prim__get (up a) b
  
  export
  upgrade :  JSType t1
          => JSType t2
          => {auto 0 _ : Elem CustomElementRegistry (Types t1)}
          -> {auto 0 _ : Elem Node (Types t2)}
          -> (obj : t1)
          -> (root : t2)
          -> JSIO ()
  upgrade a b = primJS $ CustomElementRegistry.prim__upgrade (up a) (up b)
  
  export
  whenDefined :  JSType t1
              => {auto 0 _ : Elem CustomElementRegistry (Types t1)}
              -> (obj : t1)
              -> (name : String)
              -> JSIO (Promise CustomElementConstructor)
  whenDefined a b = primJS $ CustomElementRegistry.prim__whenDefined (up a) b

namespace DOMParser
  
  export
  new : JSIO DOMParser
  new = primJS $ DOMParser.prim__new 
  
  export
  parseFromString :  JSType t1
                  => {auto 0 _ : Elem DOMParser (Types t1)}
                  -> (obj : t1)
                  -> (string : String)
                  -> (type : DOMParserSupportedType)
                  -> JSIO Document
  parseFromString a b c = primJS
                        $ DOMParser.prim__parseFromString (up a) b (toFFI c)

namespace DOMStringList
  
  export
  length :  JSType t1
         => {auto 0 _ : Elem DOMStringList (Types t1)}
         -> (obj : t1)
         -> JSIO UInt32
  length a = primJS $ DOMStringList.prim__length (up a)
  
  export
  contains :  JSType t1
           => {auto 0 _ : Elem DOMStringList (Types t1)}
           -> (obj : t1)
           -> (string : String)
           -> JSIO Bool
  contains a b = tryJS "DOMStringList.contains"
               $ DOMStringList.prim__contains (up a) b
  
  export
  item :  JSType t1
       => {auto 0 _ : Elem DOMStringList (Types t1)}
       -> (obj : t1)
       -> (index : UInt32)
       -> JSIO (Maybe String)
  item a b = tryJS "DOMStringList.item" $ DOMStringList.prim__item (up a) b

namespace DOMStringMap
  
  export
  get :  JSType t1
      => {auto 0 _ : Elem DOMStringMap (Types t1)}
      -> (obj : t1)
      -> (name : String)
      -> JSIO String
  get a b = primJS $ DOMStringMap.prim__get (up a) b
  
  export
  set :  JSType t1
      => {auto 0 _ : Elem DOMStringMap (Types t1)}
      -> (obj : t1)
      -> (name : String)
      -> (value : String)
      -> JSIO ()
  set a b c = primJS $ DOMStringMap.prim__set (up a) b c

namespace DataTransfer
  
  export
  new : JSIO DataTransfer
  new = primJS $ DataTransfer.prim__new 
  
  export
  dropEffect : DataTransfer -> Attribute True I String
  dropEffect = fromPrim "DataTransfer.getdropEffect"
                        prim__dropEffect
                        prim__setDropEffect
  
  export
  effectAllowed : DataTransfer -> Attribute True I String
  effectAllowed = fromPrim "DataTransfer.geteffectAllowed"
                           prim__effectAllowed
                           prim__setEffectAllowed
  
  export
  files :  JSType t1
        => {auto 0 _ : Elem DataTransfer (Types t1)}
        -> (obj : t1)
        -> JSIO FileList
  files a = primJS $ DataTransfer.prim__files (up a)
  
  export
  items :  JSType t1
        => {auto 0 _ : Elem DataTransfer (Types t1)}
        -> (obj : t1)
        -> JSIO DataTransferItemList
  items a = primJS $ DataTransfer.prim__items (up a)
  
  export
  types :  JSType t1
        => {auto 0 _ : Elem DataTransfer (Types t1)}
        -> (obj : t1)
        -> JSIO (Array String)
  types a = primJS $ DataTransfer.prim__types (up a)
  
  export
  clearData :  JSType t1
            => {auto 0 _ : Elem DataTransfer (Types t1)}
            -> (obj : t1)
            -> (format : Optional String)
            -> JSIO ()
  clearData a b = primJS $ DataTransfer.prim__clearData (up a) (toFFI b)

  export
  clearData' :  JSType t1
             => {auto 0 _ : Elem DataTransfer (Types t1)}
             -> (obj : t1)
             -> JSIO ()
  clearData' a = primJS $ DataTransfer.prim__clearData (up a) undef
  
  export
  getData :  JSType t1
          => {auto 0 _ : Elem DataTransfer (Types t1)}
          -> (obj : t1)
          -> (format : String)
          -> JSIO String
  getData a b = primJS $ DataTransfer.prim__getData (up a) b
  
  export
  setData :  JSType t1
          => {auto 0 _ : Elem DataTransfer (Types t1)}
          -> (obj : t1)
          -> (format : String)
          -> (data_ : String)
          -> JSIO ()
  setData a b c = primJS $ DataTransfer.prim__setData (up a) b c
  
  export
  setDragImage :  JSType t1
               => JSType t2
               => {auto 0 _ : Elem DataTransfer (Types t1)}
               -> {auto 0 _ : Elem Element (Types t2)}
               -> (obj : t1)
               -> (image : t2)
               -> (x : Int32)
               -> (y : Int32)
               -> JSIO ()
  setDragImage a b c d = primJS
                       $ DataTransfer.prim__setDragImage (up a) (up b) c d

namespace DataTransferItem
  
  export
  kind :  JSType t1
       => {auto 0 _ : Elem DataTransferItem (Types t1)}
       -> (obj : t1)
       -> JSIO String
  kind a = primJS $ DataTransferItem.prim__kind (up a)
  
  export
  type :  JSType t1
       => {auto 0 _ : Elem DataTransferItem (Types t1)}
       -> (obj : t1)
       -> JSIO String
  type a = primJS $ DataTransferItem.prim__type (up a)
  
  export
  getAsFile :  JSType t1
            => {auto 0 _ : Elem DataTransferItem (Types t1)}
            -> (obj : t1)
            -> JSIO (Maybe File)
  getAsFile a = tryJS "DataTransferItem.getAsFile"
              $ DataTransferItem.prim__getAsFile (up a)
  
  export
  getAsString :  JSType t1
              => {auto 0 _ : Elem DataTransferItem (Types t1)}
              -> (obj : t1)
              -> (callback : Maybe FunctionStringCallback)
              -> JSIO ()
  getAsString a b = primJS $ DataTransferItem.prim__getAsString (up a) (toFFI b)

namespace DataTransferItemList
  
  export
  get :  JSType t1
      => {auto 0 _ : Elem DataTransferItemList (Types t1)}
      -> (obj : t1)
      -> (index : UInt32)
      -> JSIO DataTransferItem
  get a b = primJS $ DataTransferItemList.prim__get (up a) b
  
  export
  length :  JSType t1
         => {auto 0 _ : Elem DataTransferItemList (Types t1)}
         -> (obj : t1)
         -> JSIO UInt32
  length a = primJS $ DataTransferItemList.prim__length (up a)
  
  export
  add :  JSType t1
      => {auto 0 _ : Elem DataTransferItemList (Types t1)}
      -> (obj : t1)
      -> (data_ : String)
      -> (type : String)
      -> JSIO (Maybe DataTransferItem)
  add a b c = tryJS "DataTransferItemList.add"
            $ DataTransferItemList.prim__add (up a) b c
  
  export
  add1 :  JSType t1
       => JSType t2
       => {auto 0 _ : Elem DataTransferItemList (Types t1)}
       -> {auto 0 _ : Elem File (Types t2)}
       -> (obj : t1)
       -> (data_ : t2)
       -> JSIO (Maybe DataTransferItem)
  add1 a b = tryJS "DataTransferItemList.add1"
           $ DataTransferItemList.prim__add1 (up a) (up b)
  
  export
  clear :  JSType t1
        => {auto 0 _ : Elem DataTransferItemList (Types t1)}
        -> (obj : t1)
        -> JSIO ()
  clear a = primJS $ DataTransferItemList.prim__clear (up a)
  
  export
  remove :  JSType t1
         => {auto 0 _ : Elem DataTransferItemList (Types t1)}
         -> (obj : t1)
         -> (index : UInt32)
         -> JSIO ()
  remove a b = primJS $ DataTransferItemList.prim__remove (up a) b

namespace DedicatedWorkerGlobalScope
  
  export
  name :  JSType t1
       => {auto 0 _ : Elem DedicatedWorkerGlobalScope (Types t1)}
       -> (obj : t1)
       -> JSIO String
  name a = primJS $ DedicatedWorkerGlobalScope.prim__name (up a)
  
  export
  onmessage : DedicatedWorkerGlobalScope -> Attribute False Maybe EventHandlerNonNull
  onmessage = fromNullablePrim "DedicatedWorkerGlobalScope.getonmessage"
                               prim__onmessage
                               prim__setOnmessage
  
  export
  onmessageerror : DedicatedWorkerGlobalScope -> Attribute False Maybe EventHandlerNonNull
  onmessageerror = fromNullablePrim "DedicatedWorkerGlobalScope.getonmessageerror"
                                    prim__onmessageerror
                                    prim__setOnmessageerror
  
  export
  close :  JSType t1
        => {auto 0 _ : Elem DedicatedWorkerGlobalScope (Types t1)}
        -> (obj : t1)
        -> JSIO ()
  close a = primJS $ DedicatedWorkerGlobalScope.prim__close (up a)
  
  export
  postMessage :  JSType t1
              => {auto 0 _ : Elem DedicatedWorkerGlobalScope (Types t1)}
              -> (obj : t1)
              -> (message : Any)
              -> (transfer : Array Object)
              -> JSIO ()
  postMessage a b c = primJS
                    $ DedicatedWorkerGlobalScope.prim__postMessage (up a)
                                                                   (toFFI b)
                                                                   c
  
  export
  postMessage1 :  JSType t1
               => JSType t2
               => {auto 0 _ : Elem DedicatedWorkerGlobalScope (Types t1)}
               -> {auto 0 _ : Elem PostMessageOptions (Types t2)}
               -> (obj : t1)
               -> (message : Any)
               -> (options : Optional t2)
               -> JSIO ()
  postMessage1 a b c = primJS
                     $ DedicatedWorkerGlobalScope.prim__postMessage1 (up a)
                                                                     (toFFI b)
                                                                     (optUp c)

  export
  postMessage1' :  JSType t1
                => {auto 0 _ : Elem DedicatedWorkerGlobalScope (Types t1)}
                -> (obj : t1)
                -> (message : Any)
                -> JSIO ()
  postMessage1' a b = primJS
                    $ DedicatedWorkerGlobalScope.prim__postMessage1 (up a)
                                                                    (toFFI b)
                                                                    undef

namespace DragEvent
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem DragEventInit (Types t1)}
      -> (type : String)
      -> (eventInitDict : Optional t1)
      -> JSIO DragEvent
  new a b = primJS $ DragEvent.prim__new a (optUp b)

  export
  new' : (type : String) -> JSIO DragEvent
  new' a = primJS $ DragEvent.prim__new a undef
  
  export
  dataTransfer :  JSType t1
               => {auto 0 _ : Elem DragEvent (Types t1)}
               -> (obj : t1)
               -> JSIO (Maybe DataTransfer)
  dataTransfer a = tryJS "DragEvent.dataTransfer"
                 $ DragEvent.prim__dataTransfer (up a)

namespace ElementInternals
  
  export
  form :  JSType t1
       => {auto 0 _ : Elem ElementInternals (Types t1)}
       -> (obj : t1)
       -> JSIO (Maybe HTMLFormElement)
  form a = tryJS "ElementInternals.form" $ ElementInternals.prim__form (up a)
  
  export
  labels :  JSType t1
         => {auto 0 _ : Elem ElementInternals (Types t1)}
         -> (obj : t1)
         -> JSIO NodeList
  labels a = primJS $ ElementInternals.prim__labels (up a)
  
  export
  shadowRoot :  JSType t1
             => {auto 0 _ : Elem ElementInternals (Types t1)}
             -> (obj : t1)
             -> JSIO (Maybe ShadowRoot)
  shadowRoot a = tryJS "ElementInternals.shadowRoot"
               $ ElementInternals.prim__shadowRoot (up a)
  
  export
  validationMessage :  JSType t1
                    => {auto 0 _ : Elem ElementInternals (Types t1)}
                    -> (obj : t1)
                    -> JSIO String
  validationMessage a = primJS $ ElementInternals.prim__validationMessage (up a)
  
  export
  validity :  JSType t1
           => {auto 0 _ : Elem ElementInternals (Types t1)}
           -> (obj : t1)
           -> JSIO ValidityState
  validity a = primJS $ ElementInternals.prim__validity (up a)
  
  export
  willValidate :  JSType t1
               => {auto 0 _ : Elem ElementInternals (Types t1)}
               -> (obj : t1)
               -> JSIO Bool
  willValidate a = tryJS "ElementInternals.willValidate"
                 $ ElementInternals.prim__willValidate (up a)
  
  export
  checkValidity :  JSType t1
                => {auto 0 _ : Elem ElementInternals (Types t1)}
                -> (obj : t1)
                -> JSIO Bool
  checkValidity a = tryJS "ElementInternals.checkValidity"
                  $ ElementInternals.prim__checkValidity (up a)
  
  export
  reportValidity :  JSType t1
                 => {auto 0 _ : Elem ElementInternals (Types t1)}
                 -> (obj : t1)
                 -> JSIO Bool
  reportValidity a = tryJS "ElementInternals.reportValidity"
                   $ ElementInternals.prim__reportValidity (up a)
  
  export
  setFormValue :  JSType t1
               => {auto 0 _ : Elem ElementInternals (Types t1)}
               -> (obj : t1)
               -> (value : Maybe (NS I [ File , String , FormData ]))
               -> (state : Optional (Maybe (NS I [ File , String , FormData ])))
               -> JSIO ()
  setFormValue a b c = primJS
                     $ ElementInternals.prim__setFormValue (up a)
                                                           (toFFI b)
                                                           (toFFI c)

  export
  setFormValue' :  JSType t1
                => {auto 0 _ : Elem ElementInternals (Types t1)}
                -> (obj : t1)
                -> (value : Maybe (NS I [ File , String , FormData ]))
                -> JSIO ()
  setFormValue' a b = primJS
                    $ ElementInternals.prim__setFormValue (up a) (toFFI b) undef
  
  export
  setValidity :  JSType t1
              => JSType t2
              => JSType t3
              => {auto 0 _ : Elem ElementInternals (Types t1)}
              -> {auto 0 _ : Elem ValidityStateFlags (Types t2)}
              -> {auto 0 _ : Elem HTMLElement (Types t3)}
              -> (obj : t1)
              -> (flags : Optional t2)
              -> (message : Optional String)
              -> (anchor : Optional t3)
              -> JSIO ()
  setValidity a b c d = primJS
                      $ ElementInternals.prim__setValidity (up a)
                                                           (optUp b)
                                                           (toFFI c)
                                                           (optUp d)

  export
  setValidity' :  JSType t1
               => {auto 0 _ : Elem ElementInternals (Types t1)}
               -> (obj : t1)
               -> JSIO ()
  setValidity' a = primJS
                 $ ElementInternals.prim__setValidity (up a) undef undef undef

namespace ErrorEvent
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem ErrorEventInit (Types t1)}
      -> (type : String)
      -> (eventInitDict : Optional t1)
      -> JSIO ErrorEvent
  new a b = primJS $ ErrorEvent.prim__new a (optUp b)

  export
  new' : (type : String) -> JSIO ErrorEvent
  new' a = primJS $ ErrorEvent.prim__new a undef
  
  export
  colno :  JSType t1
        => {auto 0 _ : Elem ErrorEvent (Types t1)}
        -> (obj : t1)
        -> JSIO UInt32
  colno a = primJS $ ErrorEvent.prim__colno (up a)
  
  export
  error :  JSType t1
        => {auto 0 _ : Elem ErrorEvent (Types t1)}
        -> (obj : t1)
        -> JSIO Any
  error a = tryJS "ErrorEvent.error" $ ErrorEvent.prim__error (up a)
  
  export
  filename :  JSType t1
           => {auto 0 _ : Elem ErrorEvent (Types t1)}
           -> (obj : t1)
           -> JSIO String
  filename a = primJS $ ErrorEvent.prim__filename (up a)
  
  export
  lineno :  JSType t1
         => {auto 0 _ : Elem ErrorEvent (Types t1)}
         -> (obj : t1)
         -> JSIO UInt32
  lineno a = primJS $ ErrorEvent.prim__lineno (up a)
  
  export
  message :  JSType t1
          => {auto 0 _ : Elem ErrorEvent (Types t1)}
          -> (obj : t1)
          -> JSIO String
  message a = primJS $ ErrorEvent.prim__message (up a)

namespace EventSource
  
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
  new :  JSType t1
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
  onerror = fromNullablePrim "EventSource.getonerror"
                             prim__onerror
                             prim__setOnerror
  
  export
  onmessage : EventSource -> Attribute False Maybe EventHandlerNonNull
  onmessage = fromNullablePrim "EventSource.getonmessage"
                               prim__onmessage
                               prim__setOnmessage
  
  export
  onopen : EventSource -> Attribute False Maybe EventHandlerNonNull
  onopen = fromNullablePrim "EventSource.getonopen" prim__onopen prim__setOnopen
  
  export
  readyState :  JSType t1
             => {auto 0 _ : Elem EventSource (Types t1)}
             -> (obj : t1)
             -> JSIO UInt16
  readyState a = primJS $ EventSource.prim__readyState (up a)
  
  export
  url :  JSType t1
      => {auto 0 _ : Elem EventSource (Types t1)}
      -> (obj : t1)
      -> JSIO String
  url a = primJS $ EventSource.prim__url (up a)
  
  export
  withCredentials :  JSType t1
                  => {auto 0 _ : Elem EventSource (Types t1)}
                  -> (obj : t1)
                  -> JSIO Bool
  withCredentials a = tryJS "EventSource.withCredentials"
                    $ EventSource.prim__withCredentials (up a)
  
  export
  close :  JSType t1
        => {auto 0 _ : Elem EventSource (Types t1)}
        -> (obj : t1)
        -> JSIO ()
  close a = primJS $ EventSource.prim__close (up a)

namespace External
  
  export
  AddSearchProvider :  JSType t1
                    => {auto 0 _ : Elem External (Types t1)}
                    -> (obj : t1)
                    -> JSIO ()
  AddSearchProvider a = primJS $ External.prim__AddSearchProvider (up a)
  
  export
  IsSearchProviderInstalled :  JSType t1
                            => {auto 0 _ : Elem External (Types t1)}
                            -> (obj : t1)
                            -> JSIO ()
  IsSearchProviderInstalled a = primJS
                              $ External.prim__IsSearchProviderInstalled (up a)

namespace FormDataEvent
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem FormDataEventInit (Types t1)}
      -> (type : String)
      -> (eventInitDict : t1)
      -> JSIO FormDataEvent
  new a b = primJS $ FormDataEvent.prim__new a (up b)
  
  export
  formData :  JSType t1
           => {auto 0 _ : Elem FormDataEvent (Types t1)}
           -> (obj : t1)
           -> JSIO FormData
  formData a = primJS $ FormDataEvent.prim__formData (up a)

namespace HTMLAllCollection
  
  export
  get :  JSType t1
      => {auto 0 _ : Elem HTMLAllCollection (Types t1)}
      -> (obj : t1)
      -> (index : UInt32)
      -> JSIO Element
  get a b = primJS $ HTMLAllCollection.prim__get (up a) b
  
  export
  length :  JSType t1
         => {auto 0 _ : Elem HTMLAllCollection (Types t1)}
         -> (obj : t1)
         -> JSIO UInt32
  length a = primJS $ HTMLAllCollection.prim__length (up a)
  
  export
  item :  JSType t1
       => {auto 0 _ : Elem HTMLAllCollection (Types t1)}
       -> (obj : t1)
       -> (nameOrIndex : Optional String)
       -> JSIO (Maybe (NS I [ HTMLCollection , Element ]))
  item a b = tryJS "HTMLAllCollection.item"
           $ HTMLAllCollection.prim__item (up a) (toFFI b)

  export
  item' :  JSType t1
        => {auto 0 _ : Elem HTMLAllCollection (Types t1)}
        -> (obj : t1)
        -> JSIO (Maybe (NS I [ HTMLCollection , Element ]))
  item' a = tryJS "HTMLAllCollection.item'"
          $ HTMLAllCollection.prim__item (up a) undef
  
  export
  namedItem :  JSType t1
            => {auto 0 _ : Elem HTMLAllCollection (Types t1)}
            -> (obj : t1)
            -> (name : String)
            -> JSIO (Maybe (NS I [ HTMLCollection , Element ]))
  namedItem a b = tryJS "HTMLAllCollection.namedItem"
                $ HTMLAllCollection.prim__namedItem (up a) b

namespace HTMLAnchorElement
  
  export
  new : JSIO HTMLAnchorElement
  new = primJS $ HTMLAnchorElement.prim__new 
  
  export
  charset : HTMLAnchorElement -> Attribute True I String
  charset = fromPrim "HTMLAnchorElement.getcharset"
                     prim__charset
                     prim__setCharset
  
  export
  coords : HTMLAnchorElement -> Attribute True I String
  coords = fromPrim "HTMLAnchorElement.getcoords" prim__coords prim__setCoords
  
  export
  download : HTMLAnchorElement -> Attribute True I String
  download = fromPrim "HTMLAnchorElement.getdownload"
                      prim__download
                      prim__setDownload
  
  export
  hreflang : HTMLAnchorElement -> Attribute True I String
  hreflang = fromPrim "HTMLAnchorElement.gethreflang"
                      prim__hreflang
                      prim__setHreflang
  
  export
  name : HTMLAnchorElement -> Attribute True I String
  name = fromPrim "HTMLAnchorElement.getname" prim__name prim__setName
  
  export
  ping : HTMLAnchorElement -> Attribute True I String
  ping = fromPrim "HTMLAnchorElement.getping" prim__ping prim__setPing
  
  export
  referrerPolicy : HTMLAnchorElement -> Attribute True I String
  referrerPolicy = fromPrim "HTMLAnchorElement.getreferrerPolicy"
                            prim__referrerPolicy
                            prim__setReferrerPolicy
  
  export
  rel : HTMLAnchorElement -> Attribute True I String
  rel = fromPrim "HTMLAnchorElement.getrel" prim__rel prim__setRel
  
  export
  relList :  JSType t1
          => {auto 0 _ : Elem HTMLAnchorElement (Types t1)}
          -> (obj : t1)
          -> JSIO DOMTokenList
  relList a = primJS $ HTMLAnchorElement.prim__relList (up a)
  
  export
  rev : HTMLAnchorElement -> Attribute True I String
  rev = fromPrim "HTMLAnchorElement.getrev" prim__rev prim__setRev
  
  export
  shape : HTMLAnchorElement -> Attribute True I String
  shape = fromPrim "HTMLAnchorElement.getshape" prim__shape prim__setShape
  
  export
  target : HTMLAnchorElement -> Attribute True I String
  target = fromPrim "HTMLAnchorElement.gettarget" prim__target prim__setTarget
  
  export
  text : HTMLAnchorElement -> Attribute True I String
  text = fromPrim "HTMLAnchorElement.gettext" prim__text prim__setText
  
  export
  type : HTMLAnchorElement -> Attribute True I String
  type = fromPrim "HTMLAnchorElement.gettype" prim__type prim__setType

namespace HTMLAreaElement
  
  export
  new : JSIO HTMLAreaElement
  new = primJS $ HTMLAreaElement.prim__new 
  
  export
  alt : HTMLAreaElement -> Attribute True I String
  alt = fromPrim "HTMLAreaElement.getalt" prim__alt prim__setAlt
  
  export
  coords : HTMLAreaElement -> Attribute True I String
  coords = fromPrim "HTMLAreaElement.getcoords" prim__coords prim__setCoords
  
  export
  download : HTMLAreaElement -> Attribute True I String
  download = fromPrim "HTMLAreaElement.getdownload"
                      prim__download
                      prim__setDownload
  
  export
  noHref : HTMLAreaElement -> Attribute True I Bool
  noHref = fromPrim "HTMLAreaElement.getnoHref" prim__noHref prim__setNoHref
  
  export
  ping : HTMLAreaElement -> Attribute True I String
  ping = fromPrim "HTMLAreaElement.getping" prim__ping prim__setPing
  
  export
  referrerPolicy : HTMLAreaElement -> Attribute True I String
  referrerPolicy = fromPrim "HTMLAreaElement.getreferrerPolicy"
                            prim__referrerPolicy
                            prim__setReferrerPolicy
  
  export
  rel : HTMLAreaElement -> Attribute True I String
  rel = fromPrim "HTMLAreaElement.getrel" prim__rel prim__setRel
  
  export
  relList :  JSType t1
          => {auto 0 _ : Elem HTMLAreaElement (Types t1)}
          -> (obj : t1)
          -> JSIO DOMTokenList
  relList a = primJS $ HTMLAreaElement.prim__relList (up a)
  
  export
  shape : HTMLAreaElement -> Attribute True I String
  shape = fromPrim "HTMLAreaElement.getshape" prim__shape prim__setShape
  
  export
  target : HTMLAreaElement -> Attribute True I String
  target = fromPrim "HTMLAreaElement.gettarget" prim__target prim__setTarget

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
  clear = fromPrim "HTMLBRElement.getclear" prim__clear prim__setClear

namespace HTMLBaseElement
  
  export
  new : JSIO HTMLBaseElement
  new = primJS $ HTMLBaseElement.prim__new 
  
  export
  href : HTMLBaseElement -> Attribute True I String
  href = fromPrim "HTMLBaseElement.gethref" prim__href prim__setHref
  
  export
  target : HTMLBaseElement -> Attribute True I String
  target = fromPrim "HTMLBaseElement.gettarget" prim__target prim__setTarget

namespace HTMLBodyElement
  
  export
  new : JSIO HTMLBodyElement
  new = primJS $ HTMLBodyElement.prim__new 
  
  export
  aLink : HTMLBodyElement -> Attribute True I String
  aLink = fromPrim "HTMLBodyElement.getaLink" prim__aLink prim__setALink
  
  export
  background : HTMLBodyElement -> Attribute True I String
  background = fromPrim "HTMLBodyElement.getbackground"
                        prim__background
                        prim__setBackground
  
  export
  bgColor : HTMLBodyElement -> Attribute True I String
  bgColor = fromPrim "HTMLBodyElement.getbgColor" prim__bgColor prim__setBgColor
  
  export
  link : HTMLBodyElement -> Attribute True I String
  link = fromPrim "HTMLBodyElement.getlink" prim__link prim__setLink
  
  export
  text : HTMLBodyElement -> Attribute True I String
  text = fromPrim "HTMLBodyElement.gettext" prim__text prim__setText
  
  export
  vLink : HTMLBodyElement -> Attribute True I String
  vLink = fromPrim "HTMLBodyElement.getvLink" prim__vLink prim__setVLink

namespace HTMLButtonElement
  
  export
  new : JSIO HTMLButtonElement
  new = primJS $ HTMLButtonElement.prim__new 
  
  export
  disabled : HTMLButtonElement -> Attribute True I Bool
  disabled = fromPrim "HTMLButtonElement.getdisabled"
                      prim__disabled
                      prim__setDisabled
  
  export
  form :  JSType t1
       => {auto 0 _ : Elem HTMLButtonElement (Types t1)}
       -> (obj : t1)
       -> JSIO (Maybe HTMLFormElement)
  form a = tryJS "HTMLButtonElement.form" $ HTMLButtonElement.prim__form (up a)
  
  export
  formAction : HTMLButtonElement -> Attribute True I String
  formAction = fromPrim "HTMLButtonElement.getformAction"
                        prim__formAction
                        prim__setFormAction
  
  export
  formEnctype : HTMLButtonElement -> Attribute True I String
  formEnctype = fromPrim "HTMLButtonElement.getformEnctype"
                         prim__formEnctype
                         prim__setFormEnctype
  
  export
  formMethod : HTMLButtonElement -> Attribute True I String
  formMethod = fromPrim "HTMLButtonElement.getformMethod"
                        prim__formMethod
                        prim__setFormMethod
  
  export
  formNoValidate : HTMLButtonElement -> Attribute True I Bool
  formNoValidate = fromPrim "HTMLButtonElement.getformNoValidate"
                            prim__formNoValidate
                            prim__setFormNoValidate
  
  export
  formTarget : HTMLButtonElement -> Attribute True I String
  formTarget = fromPrim "HTMLButtonElement.getformTarget"
                        prim__formTarget
                        prim__setFormTarget
  
  export
  labels :  JSType t1
         => {auto 0 _ : Elem HTMLButtonElement (Types t1)}
         -> (obj : t1)
         -> JSIO NodeList
  labels a = primJS $ HTMLButtonElement.prim__labels (up a)
  
  export
  name : HTMLButtonElement -> Attribute True I String
  name = fromPrim "HTMLButtonElement.getname" prim__name prim__setName
  
  export
  type : HTMLButtonElement -> Attribute True I String
  type = fromPrim "HTMLButtonElement.gettype" prim__type prim__setType
  
  export
  validationMessage :  JSType t1
                    => {auto 0 _ : Elem HTMLButtonElement (Types t1)}
                    -> (obj : t1)
                    -> JSIO String
  validationMessage a = primJS
                      $ HTMLButtonElement.prim__validationMessage (up a)
  
  export
  validity :  JSType t1
           => {auto 0 _ : Elem HTMLButtonElement (Types t1)}
           -> (obj : t1)
           -> JSIO ValidityState
  validity a = primJS $ HTMLButtonElement.prim__validity (up a)
  
  export
  value : HTMLButtonElement -> Attribute True I String
  value = fromPrim "HTMLButtonElement.getvalue" prim__value prim__setValue
  
  export
  willValidate :  JSType t1
               => {auto 0 _ : Elem HTMLButtonElement (Types t1)}
               -> (obj : t1)
               -> JSIO Bool
  willValidate a = tryJS "HTMLButtonElement.willValidate"
                 $ HTMLButtonElement.prim__willValidate (up a)
  
  export
  checkValidity :  JSType t1
                => {auto 0 _ : Elem HTMLButtonElement (Types t1)}
                -> (obj : t1)
                -> JSIO Bool
  checkValidity a = tryJS "HTMLButtonElement.checkValidity"
                  $ HTMLButtonElement.prim__checkValidity (up a)
  
  export
  reportValidity :  JSType t1
                 => {auto 0 _ : Elem HTMLButtonElement (Types t1)}
                 -> (obj : t1)
                 -> JSIO Bool
  reportValidity a = tryJS "HTMLButtonElement.reportValidity"
                   $ HTMLButtonElement.prim__reportValidity (up a)
  
  export
  setCustomValidity :  JSType t1
                    => {auto 0 _ : Elem HTMLButtonElement (Types t1)}
                    -> (obj : t1)
                    -> (error : String)
                    -> JSIO ()
  setCustomValidity a b = primJS
                        $ HTMLButtonElement.prim__setCustomValidity (up a) b

namespace HTMLCanvasElement
  
  export
  new : JSIO HTMLCanvasElement
  new = primJS $ HTMLCanvasElement.prim__new 
  
  export
  height : HTMLCanvasElement -> Attribute True I UInt32
  height = fromPrim "HTMLCanvasElement.getheight" prim__height prim__setHeight
  
  export
  width : HTMLCanvasElement -> Attribute True I UInt32
  width = fromPrim "HTMLCanvasElement.getwidth" prim__width prim__setWidth
  
  export
  getContext :  JSType t1
             => {auto 0 _ : Elem HTMLCanvasElement (Types t1)}
             -> (obj : t1)
             -> (contextId : String)
             -> (options : Optional Any)
             -> JSIO (Maybe (NS I [ CanvasRenderingContext2D
                                  , ImageBitmapRenderingContext
                                  , WebGLRenderingContext
                                  , WebGL2RenderingContext
                                  ]))
  getContext a b c = tryJS "HTMLCanvasElement.getContext"
                   $ HTMLCanvasElement.prim__getContext (up a) b (toFFI c)

  export
  getContext' :  JSType t1
              => {auto 0 _ : Elem HTMLCanvasElement (Types t1)}
              -> (obj : t1)
              -> (contextId : String)
              -> JSIO (Maybe (NS I [ CanvasRenderingContext2D
                                   , ImageBitmapRenderingContext
                                   , WebGLRenderingContext
                                   , WebGL2RenderingContext
                                   ]))
  getContext' a b = tryJS "HTMLCanvasElement.getContext'"
                  $ HTMLCanvasElement.prim__getContext (up a) b undef
  
  export
  toBlob :  JSType t1
         => {auto 0 _ : Elem HTMLCanvasElement (Types t1)}
         -> (obj : t1)
         -> (callback : BlobCallback)
         -> (type : Optional String)
         -> (quality : Optional Any)
         -> JSIO ()
  toBlob a b c d = primJS
                 $ HTMLCanvasElement.prim__toBlob (up a) b (toFFI c) (toFFI d)

  export
  toBlob' :  JSType t1
          => {auto 0 _ : Elem HTMLCanvasElement (Types t1)}
          -> (obj : t1)
          -> (callback : BlobCallback)
          -> JSIO ()
  toBlob' a b = primJS $ HTMLCanvasElement.prim__toBlob (up a) b undef undef
  
  export
  toDataURL :  JSType t1
            => {auto 0 _ : Elem HTMLCanvasElement (Types t1)}
            -> (obj : t1)
            -> (type : Optional String)
            -> (quality : Optional Any)
            -> JSIO String
  toDataURL a b c = primJS
                  $ HTMLCanvasElement.prim__toDataURL (up a) (toFFI b) (toFFI c)

  export
  toDataURL' :  JSType t1
             => {auto 0 _ : Elem HTMLCanvasElement (Types t1)}
             -> (obj : t1)
             -> JSIO String
  toDataURL' a = primJS $ HTMLCanvasElement.prim__toDataURL (up a) undef undef
  
  export
  transferControlToOffscreen :  JSType t1
                             => {auto 0 _ : Elem HTMLCanvasElement (Types t1)}
                             -> (obj : t1)
                             -> JSIO OffscreenCanvas
  transferControlToOffscreen a = primJS
                               $ HTMLCanvasElement.prim__transferControlToOffscreen (up a)

namespace HTMLDListElement
  
  export
  new : JSIO HTMLDListElement
  new = primJS $ HTMLDListElement.prim__new 
  
  export
  compact : HTMLDListElement -> Attribute True I Bool
  compact = fromPrim "HTMLDListElement.getcompact"
                     prim__compact
                     prim__setCompact

namespace HTMLDataElement
  
  export
  new : JSIO HTMLDataElement
  new = primJS $ HTMLDataElement.prim__new 
  
  export
  value : HTMLDataElement -> Attribute True I String
  value = fromPrim "HTMLDataElement.getvalue" prim__value prim__setValue

namespace HTMLDataListElement
  
  export
  new : JSIO HTMLDataListElement
  new = primJS $ HTMLDataListElement.prim__new 
  
  export
  options :  JSType t1
          => {auto 0 _ : Elem HTMLDataListElement (Types t1)}
          -> (obj : t1)
          -> JSIO HTMLCollection
  options a = primJS $ HTMLDataListElement.prim__options (up a)

namespace HTMLDetailsElement
  
  export
  new : JSIO HTMLDetailsElement
  new = primJS $ HTMLDetailsElement.prim__new 
  
  export
  open_ : HTMLDetailsElement -> Attribute True I Bool
  open_ = fromPrim "HTMLDetailsElement.getopen" prim__open prim__setOpen

namespace HTMLDialogElement
  
  export
  new : JSIO HTMLDialogElement
  new = primJS $ HTMLDialogElement.prim__new 
  
  export
  open_ : HTMLDialogElement -> Attribute True I Bool
  open_ = fromPrim "HTMLDialogElement.getopen" prim__open prim__setOpen
  
  export
  returnValue : HTMLDialogElement -> Attribute True I String
  returnValue = fromPrim "HTMLDialogElement.getreturnValue"
                         prim__returnValue
                         prim__setReturnValue
  
  export
  close :  JSType t1
        => {auto 0 _ : Elem HTMLDialogElement (Types t1)}
        -> (obj : t1)
        -> (returnValue : Optional String)
        -> JSIO ()
  close a b = primJS $ HTMLDialogElement.prim__close (up a) (toFFI b)

  export
  close' :  JSType t1
         => {auto 0 _ : Elem HTMLDialogElement (Types t1)}
         -> (obj : t1)
         -> JSIO ()
  close' a = primJS $ HTMLDialogElement.prim__close (up a) undef
  
  export
  show :  JSType t1
       => {auto 0 _ : Elem HTMLDialogElement (Types t1)}
       -> (obj : t1)
       -> JSIO ()
  show a = primJS $ HTMLDialogElement.prim__show (up a)
  
  export
  showModal :  JSType t1
            => {auto 0 _ : Elem HTMLDialogElement (Types t1)}
            -> (obj : t1)
            -> JSIO ()
  showModal a = primJS $ HTMLDialogElement.prim__showModal (up a)

namespace HTMLDirectoryElement
  
  export
  new : JSIO HTMLDirectoryElement
  new = primJS $ HTMLDirectoryElement.prim__new 
  
  export
  compact : HTMLDirectoryElement -> Attribute True I Bool
  compact = fromPrim "HTMLDirectoryElement.getcompact"
                     prim__compact
                     prim__setCompact

namespace HTMLDivElement
  
  export
  new : JSIO HTMLDivElement
  new = primJS $ HTMLDivElement.prim__new 
  
  export
  align : HTMLDivElement -> Attribute True I String
  align = fromPrim "HTMLDivElement.getalign" prim__align prim__setAlign

namespace HTMLElement
  
  export
  new : JSIO HTMLElement
  new = primJS $ HTMLElement.prim__new 
  
  export
  accessKey : HTMLElement -> Attribute True I String
  accessKey = fromPrim "HTMLElement.getaccessKey"
                       prim__accessKey
                       prim__setAccessKey
  
  export
  accessKeyLabel :  JSType t1
                 => {auto 0 _ : Elem HTMLElement (Types t1)}
                 -> (obj : t1)
                 -> JSIO String
  accessKeyLabel a = primJS $ HTMLElement.prim__accessKeyLabel (up a)
  
  export
  autocapitalize : HTMLElement -> Attribute True I String
  autocapitalize = fromPrim "HTMLElement.getautocapitalize"
                            prim__autocapitalize
                            prim__setAutocapitalize
  
  export
  dir : HTMLElement -> Attribute True I String
  dir = fromPrim "HTMLElement.getdir" prim__dir prim__setDir
  
  export
  draggable : HTMLElement -> Attribute True I Bool
  draggable = fromPrim "HTMLElement.getdraggable"
                       prim__draggable
                       prim__setDraggable
  
  export
  hidden : HTMLElement -> Attribute True I Bool
  hidden = fromPrim "HTMLElement.gethidden" prim__hidden prim__setHidden
  
  export
  innerText : HTMLElement -> Attribute True I String
  innerText = fromPrim "HTMLElement.getinnerText"
                       prim__innerText
                       prim__setInnerText
  
  export
  lang : HTMLElement -> Attribute True I String
  lang = fromPrim "HTMLElement.getlang" prim__lang prim__setLang
  
  export
  spellcheck : HTMLElement -> Attribute True I Bool
  spellcheck = fromPrim "HTMLElement.getspellcheck"
                        prim__spellcheck
                        prim__setSpellcheck
  
  export
  title : HTMLElement -> Attribute True I String
  title = fromPrim "HTMLElement.gettitle" prim__title prim__setTitle
  
  export
  translate : HTMLElement -> Attribute True I Bool
  translate = fromPrim "HTMLElement.gettranslate"
                       prim__translate
                       prim__setTranslate
  
  export
  attachInternals :  JSType t1
                  => {auto 0 _ : Elem HTMLElement (Types t1)}
                  -> (obj : t1)
                  -> JSIO ElementInternals
  attachInternals a = primJS $ HTMLElement.prim__attachInternals (up a)
  
  export
  click :  JSType t1
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
  align = fromPrim "HTMLEmbedElement.getalign" prim__align prim__setAlign
  
  export
  height : HTMLEmbedElement -> Attribute True I String
  height = fromPrim "HTMLEmbedElement.getheight" prim__height prim__setHeight
  
  export
  name : HTMLEmbedElement -> Attribute True I String
  name = fromPrim "HTMLEmbedElement.getname" prim__name prim__setName
  
  export
  src : HTMLEmbedElement -> Attribute True I String
  src = fromPrim "HTMLEmbedElement.getsrc" prim__src prim__setSrc
  
  export
  type : HTMLEmbedElement -> Attribute True I String
  type = fromPrim "HTMLEmbedElement.gettype" prim__type prim__setType
  
  export
  width : HTMLEmbedElement -> Attribute True I String
  width = fromPrim "HTMLEmbedElement.getwidth" prim__width prim__setWidth
  
  export
  getSVGDocument :  JSType t1
                 => {auto 0 _ : Elem HTMLEmbedElement (Types t1)}
                 -> (obj : t1)
                 -> JSIO (Maybe Document)
  getSVGDocument a = tryJS "HTMLEmbedElement.getSVGDocument"
                   $ HTMLEmbedElement.prim__getSVGDocument (up a)

namespace HTMLFieldSetElement
  
  export
  new : JSIO HTMLFieldSetElement
  new = primJS $ HTMLFieldSetElement.prim__new 
  
  export
  disabled : HTMLFieldSetElement -> Attribute True I Bool
  disabled = fromPrim "HTMLFieldSetElement.getdisabled"
                      prim__disabled
                      prim__setDisabled
  
  export
  elements :  JSType t1
           => {auto 0 _ : Elem HTMLFieldSetElement (Types t1)}
           -> (obj : t1)
           -> JSIO HTMLCollection
  elements a = primJS $ HTMLFieldSetElement.prim__elements (up a)
  
  export
  form :  JSType t1
       => {auto 0 _ : Elem HTMLFieldSetElement (Types t1)}
       -> (obj : t1)
       -> JSIO (Maybe HTMLFormElement)
  form a = tryJS "HTMLFieldSetElement.form"
         $ HTMLFieldSetElement.prim__form (up a)
  
  export
  name : HTMLFieldSetElement -> Attribute True I String
  name = fromPrim "HTMLFieldSetElement.getname" prim__name prim__setName
  
  export
  type :  JSType t1
       => {auto 0 _ : Elem HTMLFieldSetElement (Types t1)}
       -> (obj : t1)
       -> JSIO String
  type a = primJS $ HTMLFieldSetElement.prim__type (up a)
  
  export
  validationMessage :  JSType t1
                    => {auto 0 _ : Elem HTMLFieldSetElement (Types t1)}
                    -> (obj : t1)
                    -> JSIO String
  validationMessage a = primJS
                      $ HTMLFieldSetElement.prim__validationMessage (up a)
  
  export
  validity :  JSType t1
           => {auto 0 _ : Elem HTMLFieldSetElement (Types t1)}
           -> (obj : t1)
           -> JSIO ValidityState
  validity a = primJS $ HTMLFieldSetElement.prim__validity (up a)
  
  export
  willValidate :  JSType t1
               => {auto 0 _ : Elem HTMLFieldSetElement (Types t1)}
               -> (obj : t1)
               -> JSIO Bool
  willValidate a = tryJS "HTMLFieldSetElement.willValidate"
                 $ HTMLFieldSetElement.prim__willValidate (up a)
  
  export
  checkValidity :  JSType t1
                => {auto 0 _ : Elem HTMLFieldSetElement (Types t1)}
                -> (obj : t1)
                -> JSIO Bool
  checkValidity a = tryJS "HTMLFieldSetElement.checkValidity"
                  $ HTMLFieldSetElement.prim__checkValidity (up a)
  
  export
  reportValidity :  JSType t1
                 => {auto 0 _ : Elem HTMLFieldSetElement (Types t1)}
                 -> (obj : t1)
                 -> JSIO Bool
  reportValidity a = tryJS "HTMLFieldSetElement.reportValidity"
                   $ HTMLFieldSetElement.prim__reportValidity (up a)
  
  export
  setCustomValidity :  JSType t1
                    => {auto 0 _ : Elem HTMLFieldSetElement (Types t1)}
                    -> (obj : t1)
                    -> (error : String)
                    -> JSIO ()
  setCustomValidity a b = primJS
                        $ HTMLFieldSetElement.prim__setCustomValidity (up a) b

namespace HTMLFontElement
  
  export
  new : JSIO HTMLFontElement
  new = primJS $ HTMLFontElement.prim__new 
  
  export
  color : HTMLFontElement -> Attribute True I String
  color = fromPrim "HTMLFontElement.getcolor" prim__color prim__setColor
  
  export
  face : HTMLFontElement -> Attribute True I String
  face = fromPrim "HTMLFontElement.getface" prim__face prim__setFace
  
  export
  size : HTMLFontElement -> Attribute True I String
  size = fromPrim "HTMLFontElement.getsize" prim__size prim__setSize

namespace HTMLFormControlsCollection
  
  export
  namedItem :  JSType t1
            => {auto 0 _ : Elem HTMLFormControlsCollection (Types t1)}
            -> (obj : t1)
            -> (name : String)
            -> JSIO (Maybe (NS I [ RadioNodeList , Element ]))
  namedItem a b = tryJS "HTMLFormControlsCollection.namedItem"
                $ HTMLFormControlsCollection.prim__namedItem (up a) b

namespace HTMLFormElement
  
  export
  new : JSIO HTMLFormElement
  new = primJS $ HTMLFormElement.prim__new 
  
  export
  get :  JSType t1
      => {auto 0 _ : Elem HTMLFormElement (Types t1)}
      -> (obj : t1)
      -> (index : UInt32)
      -> JSIO Element
  get a b = primJS $ HTMLFormElement.prim__get (up a) b
  
  export
  get1 :  JSType t1
       => {auto 0 _ : Elem HTMLFormElement (Types t1)}
       -> (obj : t1)
       -> (name : String)
       -> JSIO (NS I [ RadioNodeList , Element ])
  get1 a b = tryJS "HTMLFormElement.get1" $ HTMLFormElement.prim__get1 (up a) b
  
  export
  acceptCharset : HTMLFormElement -> Attribute True I String
  acceptCharset = fromPrim "HTMLFormElement.getacceptCharset"
                           prim__acceptCharset
                           prim__setAcceptCharset
  
  export
  action : HTMLFormElement -> Attribute True I String
  action = fromPrim "HTMLFormElement.getaction" prim__action prim__setAction
  
  export
  autocomplete : HTMLFormElement -> Attribute True I String
  autocomplete = fromPrim "HTMLFormElement.getautocomplete"
                          prim__autocomplete
                          prim__setAutocomplete
  
  export
  elements :  JSType t1
           => {auto 0 _ : Elem HTMLFormElement (Types t1)}
           -> (obj : t1)
           -> JSIO HTMLFormControlsCollection
  elements a = primJS $ HTMLFormElement.prim__elements (up a)
  
  export
  encoding : HTMLFormElement -> Attribute True I String
  encoding = fromPrim "HTMLFormElement.getencoding"
                      prim__encoding
                      prim__setEncoding
  
  export
  enctype : HTMLFormElement -> Attribute True I String
  enctype = fromPrim "HTMLFormElement.getenctype" prim__enctype prim__setEnctype
  
  export
  length :  JSType t1
         => {auto 0 _ : Elem HTMLFormElement (Types t1)}
         -> (obj : t1)
         -> JSIO UInt32
  length a = primJS $ HTMLFormElement.prim__length (up a)
  
  export
  method : HTMLFormElement -> Attribute True I String
  method = fromPrim "HTMLFormElement.getmethod" prim__method prim__setMethod
  
  export
  name : HTMLFormElement -> Attribute True I String
  name = fromPrim "HTMLFormElement.getname" prim__name prim__setName
  
  export
  noValidate : HTMLFormElement -> Attribute True I Bool
  noValidate = fromPrim "HTMLFormElement.getnoValidate"
                        prim__noValidate
                        prim__setNoValidate
  
  export
  rel : HTMLFormElement -> Attribute True I String
  rel = fromPrim "HTMLFormElement.getrel" prim__rel prim__setRel
  
  export
  relList :  JSType t1
          => {auto 0 _ : Elem HTMLFormElement (Types t1)}
          -> (obj : t1)
          -> JSIO DOMTokenList
  relList a = primJS $ HTMLFormElement.prim__relList (up a)
  
  export
  target : HTMLFormElement -> Attribute True I String
  target = fromPrim "HTMLFormElement.gettarget" prim__target prim__setTarget
  
  export
  checkValidity :  JSType t1
                => {auto 0 _ : Elem HTMLFormElement (Types t1)}
                -> (obj : t1)
                -> JSIO Bool
  checkValidity a = tryJS "HTMLFormElement.checkValidity"
                  $ HTMLFormElement.prim__checkValidity (up a)
  
  export
  reportValidity :  JSType t1
                 => {auto 0 _ : Elem HTMLFormElement (Types t1)}
                 -> (obj : t1)
                 -> JSIO Bool
  reportValidity a = tryJS "HTMLFormElement.reportValidity"
                   $ HTMLFormElement.prim__reportValidity (up a)
  
  export
  requestSubmit :  JSType t1
                => JSType t2
                => {auto 0 _ : Elem HTMLFormElement (Types t1)}
                -> {auto 0 _ : Elem HTMLElement (Types t2)}
                -> (obj : t1)
                -> (submitter : Optional (Maybe t2))
                -> JSIO ()
  requestSubmit a b = primJS
                    $ HTMLFormElement.prim__requestSubmit (up a) (omyUp b)

  export
  requestSubmit' :  JSType t1
                 => {auto 0 _ : Elem HTMLFormElement (Types t1)}
                 -> (obj : t1)
                 -> JSIO ()
  requestSubmit' a = primJS $ HTMLFormElement.prim__requestSubmit (up a) undef
  
  export
  reset :  JSType t1
        => {auto 0 _ : Elem HTMLFormElement (Types t1)}
        -> (obj : t1)
        -> JSIO ()
  reset a = primJS $ HTMLFormElement.prim__reset (up a)
  
  export
  submit :  JSType t1
         => {auto 0 _ : Elem HTMLFormElement (Types t1)}
         -> (obj : t1)
         -> JSIO ()
  submit a = primJS $ HTMLFormElement.prim__submit (up a)

namespace HTMLFrameElement
  
  export
  new : JSIO HTMLFrameElement
  new = primJS $ HTMLFrameElement.prim__new 
  
  export
  contentDocument :  JSType t1
                  => {auto 0 _ : Elem HTMLFrameElement (Types t1)}
                  -> (obj : t1)
                  -> JSIO (Maybe Document)
  contentDocument a = tryJS "HTMLFrameElement.contentDocument"
                    $ HTMLFrameElement.prim__contentDocument (up a)
  
  export
  contentWindow :  JSType t1
                => {auto 0 _ : Elem HTMLFrameElement (Types t1)}
                -> (obj : t1)
                -> JSIO (Maybe WindowProxy)
  contentWindow a = tryJS "HTMLFrameElement.contentWindow"
                  $ HTMLFrameElement.prim__contentWindow (up a)
  
  export
  frameBorder : HTMLFrameElement -> Attribute True I String
  frameBorder = fromPrim "HTMLFrameElement.getframeBorder"
                         prim__frameBorder
                         prim__setFrameBorder
  
  export
  longDesc : HTMLFrameElement -> Attribute True I String
  longDesc = fromPrim "HTMLFrameElement.getlongDesc"
                      prim__longDesc
                      prim__setLongDesc
  
  export
  marginHeight : HTMLFrameElement -> Attribute True I String
  marginHeight = fromPrim "HTMLFrameElement.getmarginHeight"
                          prim__marginHeight
                          prim__setMarginHeight
  
  export
  marginWidth : HTMLFrameElement -> Attribute True I String
  marginWidth = fromPrim "HTMLFrameElement.getmarginWidth"
                         prim__marginWidth
                         prim__setMarginWidth
  
  export
  name : HTMLFrameElement -> Attribute True I String
  name = fromPrim "HTMLFrameElement.getname" prim__name prim__setName
  
  export
  noResize : HTMLFrameElement -> Attribute True I Bool
  noResize = fromPrim "HTMLFrameElement.getnoResize"
                      prim__noResize
                      prim__setNoResize
  
  export
  scrolling : HTMLFrameElement -> Attribute True I String
  scrolling = fromPrim "HTMLFrameElement.getscrolling"
                       prim__scrolling
                       prim__setScrolling
  
  export
  src : HTMLFrameElement -> Attribute True I String
  src = fromPrim "HTMLFrameElement.getsrc" prim__src prim__setSrc

namespace HTMLFrameSetElement
  
  export
  new : JSIO HTMLFrameSetElement
  new = primJS $ HTMLFrameSetElement.prim__new 
  
  export
  cols : HTMLFrameSetElement -> Attribute True I String
  cols = fromPrim "HTMLFrameSetElement.getcols" prim__cols prim__setCols
  
  export
  rows : HTMLFrameSetElement -> Attribute True I String
  rows = fromPrim "HTMLFrameSetElement.getrows" prim__rows prim__setRows

namespace HTMLHRElement
  
  export
  new : JSIO HTMLHRElement
  new = primJS $ HTMLHRElement.prim__new 
  
  export
  align : HTMLHRElement -> Attribute True I String
  align = fromPrim "HTMLHRElement.getalign" prim__align prim__setAlign
  
  export
  color : HTMLHRElement -> Attribute True I String
  color = fromPrim "HTMLHRElement.getcolor" prim__color prim__setColor
  
  export
  noShade : HTMLHRElement -> Attribute True I Bool
  noShade = fromPrim "HTMLHRElement.getnoShade" prim__noShade prim__setNoShade
  
  export
  size : HTMLHRElement -> Attribute True I String
  size = fromPrim "HTMLHRElement.getsize" prim__size prim__setSize
  
  export
  width : HTMLHRElement -> Attribute True I String
  width = fromPrim "HTMLHRElement.getwidth" prim__width prim__setWidth

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
  align = fromPrim "HTMLHeadingElement.getalign" prim__align prim__setAlign

namespace HTMLHtmlElement
  
  export
  new : JSIO HTMLHtmlElement
  new = primJS $ HTMLHtmlElement.prim__new 
  
  export
  version : HTMLHtmlElement -> Attribute True I String
  version = fromPrim "HTMLHtmlElement.getversion" prim__version prim__setVersion

namespace HTMLIFrameElement
  
  export
  new : JSIO HTMLIFrameElement
  new = primJS $ HTMLIFrameElement.prim__new 
  
  export
  align : HTMLIFrameElement -> Attribute True I String
  align = fromPrim "HTMLIFrameElement.getalign" prim__align prim__setAlign
  
  export
  allow : HTMLIFrameElement -> Attribute True I String
  allow = fromPrim "HTMLIFrameElement.getallow" prim__allow prim__setAllow
  
  export
  allowFullscreen : HTMLIFrameElement -> Attribute True I Bool
  allowFullscreen = fromPrim "HTMLIFrameElement.getallowFullscreen"
                             prim__allowFullscreen
                             prim__setAllowFullscreen
  
  export
  contentDocument :  JSType t1
                  => {auto 0 _ : Elem HTMLIFrameElement (Types t1)}
                  -> (obj : t1)
                  -> JSIO (Maybe Document)
  contentDocument a = tryJS "HTMLIFrameElement.contentDocument"
                    $ HTMLIFrameElement.prim__contentDocument (up a)
  
  export
  contentWindow :  JSType t1
                => {auto 0 _ : Elem HTMLIFrameElement (Types t1)}
                -> (obj : t1)
                -> JSIO (Maybe WindowProxy)
  contentWindow a = tryJS "HTMLIFrameElement.contentWindow"
                  $ HTMLIFrameElement.prim__contentWindow (up a)
  
  export
  frameBorder : HTMLIFrameElement -> Attribute True I String
  frameBorder = fromPrim "HTMLIFrameElement.getframeBorder"
                         prim__frameBorder
                         prim__setFrameBorder
  
  export
  height : HTMLIFrameElement -> Attribute True I String
  height = fromPrim "HTMLIFrameElement.getheight" prim__height prim__setHeight
  
  export
  loading : HTMLIFrameElement -> Attribute True I String
  loading = fromPrim "HTMLIFrameElement.getloading"
                     prim__loading
                     prim__setLoading
  
  export
  longDesc : HTMLIFrameElement -> Attribute True I String
  longDesc = fromPrim "HTMLIFrameElement.getlongDesc"
                      prim__longDesc
                      prim__setLongDesc
  
  export
  marginHeight : HTMLIFrameElement -> Attribute True I String
  marginHeight = fromPrim "HTMLIFrameElement.getmarginHeight"
                          prim__marginHeight
                          prim__setMarginHeight
  
  export
  marginWidth : HTMLIFrameElement -> Attribute True I String
  marginWidth = fromPrim "HTMLIFrameElement.getmarginWidth"
                         prim__marginWidth
                         prim__setMarginWidth
  
  export
  name : HTMLIFrameElement -> Attribute True I String
  name = fromPrim "HTMLIFrameElement.getname" prim__name prim__setName
  
  export
  referrerPolicy : HTMLIFrameElement -> Attribute True I String
  referrerPolicy = fromPrim "HTMLIFrameElement.getreferrerPolicy"
                            prim__referrerPolicy
                            prim__setReferrerPolicy
  
  export
  sandbox :  JSType t1
          => {auto 0 _ : Elem HTMLIFrameElement (Types t1)}
          -> (obj : t1)
          -> JSIO DOMTokenList
  sandbox a = primJS $ HTMLIFrameElement.prim__sandbox (up a)
  
  export
  scrolling : HTMLIFrameElement -> Attribute True I String
  scrolling = fromPrim "HTMLIFrameElement.getscrolling"
                       prim__scrolling
                       prim__setScrolling
  
  export
  src : HTMLIFrameElement -> Attribute True I String
  src = fromPrim "HTMLIFrameElement.getsrc" prim__src prim__setSrc
  
  export
  srcdoc : HTMLIFrameElement -> Attribute True I String
  srcdoc = fromPrim "HTMLIFrameElement.getsrcdoc" prim__srcdoc prim__setSrcdoc
  
  export
  width : HTMLIFrameElement -> Attribute True I String
  width = fromPrim "HTMLIFrameElement.getwidth" prim__width prim__setWidth
  
  export
  getSVGDocument :  JSType t1
                 => {auto 0 _ : Elem HTMLIFrameElement (Types t1)}
                 -> (obj : t1)
                 -> JSIO (Maybe Document)
  getSVGDocument a = tryJS "HTMLIFrameElement.getSVGDocument"
                   $ HTMLIFrameElement.prim__getSVGDocument (up a)

namespace HTMLImageElement
  
  export
  new : JSIO HTMLImageElement
  new = primJS $ HTMLImageElement.prim__new 
  
  export
  align : HTMLImageElement -> Attribute True I String
  align = fromPrim "HTMLImageElement.getalign" prim__align prim__setAlign
  
  export
  alt : HTMLImageElement -> Attribute True I String
  alt = fromPrim "HTMLImageElement.getalt" prim__alt prim__setAlt
  
  export
  border : HTMLImageElement -> Attribute True I String
  border = fromPrim "HTMLImageElement.getborder" prim__border prim__setBorder
  
  export
  complete :  JSType t1
           => {auto 0 _ : Elem HTMLImageElement (Types t1)}
           -> (obj : t1)
           -> JSIO Bool
  complete a = tryJS "HTMLImageElement.complete"
             $ HTMLImageElement.prim__complete (up a)
  
  export
  crossOrigin : HTMLImageElement -> Attribute False Maybe String
  crossOrigin = fromNullablePrim "HTMLImageElement.getcrossOrigin"
                                 prim__crossOrigin
                                 prim__setCrossOrigin
  
  export
  currentSrc :  JSType t1
             => {auto 0 _ : Elem HTMLImageElement (Types t1)}
             -> (obj : t1)
             -> JSIO String
  currentSrc a = primJS $ HTMLImageElement.prim__currentSrc (up a)
  
  export
  decoding : HTMLImageElement -> Attribute True I String
  decoding = fromPrim "HTMLImageElement.getdecoding"
                      prim__decoding
                      prim__setDecoding
  
  export
  height : HTMLImageElement -> Attribute True I UInt32
  height = fromPrim "HTMLImageElement.getheight" prim__height prim__setHeight
  
  export
  hspace : HTMLImageElement -> Attribute True I UInt32
  hspace = fromPrim "HTMLImageElement.gethspace" prim__hspace prim__setHspace
  
  export
  isMap : HTMLImageElement -> Attribute True I Bool
  isMap = fromPrim "HTMLImageElement.getisMap" prim__isMap prim__setIsMap
  
  export
  loading : HTMLImageElement -> Attribute True I String
  loading = fromPrim "HTMLImageElement.getloading"
                     prim__loading
                     prim__setLoading
  
  export
  longDesc : HTMLImageElement -> Attribute True I String
  longDesc = fromPrim "HTMLImageElement.getlongDesc"
                      prim__longDesc
                      prim__setLongDesc
  
  export
  lowsrc : HTMLImageElement -> Attribute True I String
  lowsrc = fromPrim "HTMLImageElement.getlowsrc" prim__lowsrc prim__setLowsrc
  
  export
  name : HTMLImageElement -> Attribute True I String
  name = fromPrim "HTMLImageElement.getname" prim__name prim__setName
  
  export
  naturalHeight :  JSType t1
                => {auto 0 _ : Elem HTMLImageElement (Types t1)}
                -> (obj : t1)
                -> JSIO UInt32
  naturalHeight a = primJS $ HTMLImageElement.prim__naturalHeight (up a)
  
  export
  naturalWidth :  JSType t1
               => {auto 0 _ : Elem HTMLImageElement (Types t1)}
               -> (obj : t1)
               -> JSIO UInt32
  naturalWidth a = primJS $ HTMLImageElement.prim__naturalWidth (up a)
  
  export
  referrerPolicy : HTMLImageElement -> Attribute True I String
  referrerPolicy = fromPrim "HTMLImageElement.getreferrerPolicy"
                            prim__referrerPolicy
                            prim__setReferrerPolicy
  
  export
  sizes : HTMLImageElement -> Attribute True I String
  sizes = fromPrim "HTMLImageElement.getsizes" prim__sizes prim__setSizes
  
  export
  src : HTMLImageElement -> Attribute True I String
  src = fromPrim "HTMLImageElement.getsrc" prim__src prim__setSrc
  
  export
  srcset : HTMLImageElement -> Attribute True I String
  srcset = fromPrim "HTMLImageElement.getsrcset" prim__srcset prim__setSrcset
  
  export
  useMap : HTMLImageElement -> Attribute True I String
  useMap = fromPrim "HTMLImageElement.getuseMap" prim__useMap prim__setUseMap
  
  export
  vspace : HTMLImageElement -> Attribute True I UInt32
  vspace = fromPrim "HTMLImageElement.getvspace" prim__vspace prim__setVspace
  
  export
  width : HTMLImageElement -> Attribute True I UInt32
  width = fromPrim "HTMLImageElement.getwidth" prim__width prim__setWidth
  
  export
  decode :  JSType t1
         => {auto 0 _ : Elem HTMLImageElement (Types t1)}
         -> (obj : t1)
         -> JSIO (Promise Undefined)
  decode a = primJS $ HTMLImageElement.prim__decode (up a)

namespace HTMLInputElement
  
  export
  new : JSIO HTMLInputElement
  new = primJS $ HTMLInputElement.prim__new 
  
  export
  accept : HTMLInputElement -> Attribute True I String
  accept = fromPrim "HTMLInputElement.getaccept" prim__accept prim__setAccept
  
  export
  align : HTMLInputElement -> Attribute True I String
  align = fromPrim "HTMLInputElement.getalign" prim__align prim__setAlign
  
  export
  alt : HTMLInputElement -> Attribute True I String
  alt = fromPrim "HTMLInputElement.getalt" prim__alt prim__setAlt
  
  export
  autocomplete : HTMLInputElement -> Attribute True I String
  autocomplete = fromPrim "HTMLInputElement.getautocomplete"
                          prim__autocomplete
                          prim__setAutocomplete
  
  export
  checked : HTMLInputElement -> Attribute True I Bool
  checked = fromPrim "HTMLInputElement.getchecked"
                     prim__checked
                     prim__setChecked
  
  export
  defaultChecked : HTMLInputElement -> Attribute True I Bool
  defaultChecked = fromPrim "HTMLInputElement.getdefaultChecked"
                            prim__defaultChecked
                            prim__setDefaultChecked
  
  export
  defaultValue : HTMLInputElement -> Attribute True I String
  defaultValue = fromPrim "HTMLInputElement.getdefaultValue"
                          prim__defaultValue
                          prim__setDefaultValue
  
  export
  dirName : HTMLInputElement -> Attribute True I String
  dirName = fromPrim "HTMLInputElement.getdirName"
                     prim__dirName
                     prim__setDirName
  
  export
  disabled : HTMLInputElement -> Attribute True I Bool
  disabled = fromPrim "HTMLInputElement.getdisabled"
                      prim__disabled
                      prim__setDisabled
  
  export
  files : HTMLInputElement -> Attribute False Maybe FileList
  files = fromNullablePrim "HTMLInputElement.getfiles"
                           prim__files
                           prim__setFiles
  
  export
  form :  JSType t1
       => {auto 0 _ : Elem HTMLInputElement (Types t1)}
       -> (obj : t1)
       -> JSIO (Maybe HTMLFormElement)
  form a = tryJS "HTMLInputElement.form" $ HTMLInputElement.prim__form (up a)
  
  export
  formAction : HTMLInputElement -> Attribute True I String
  formAction = fromPrim "HTMLInputElement.getformAction"
                        prim__formAction
                        prim__setFormAction
  
  export
  formEnctype : HTMLInputElement -> Attribute True I String
  formEnctype = fromPrim "HTMLInputElement.getformEnctype"
                         prim__formEnctype
                         prim__setFormEnctype
  
  export
  formMethod : HTMLInputElement -> Attribute True I String
  formMethod = fromPrim "HTMLInputElement.getformMethod"
                        prim__formMethod
                        prim__setFormMethod
  
  export
  formNoValidate : HTMLInputElement -> Attribute True I Bool
  formNoValidate = fromPrim "HTMLInputElement.getformNoValidate"
                            prim__formNoValidate
                            prim__setFormNoValidate
  
  export
  formTarget : HTMLInputElement -> Attribute True I String
  formTarget = fromPrim "HTMLInputElement.getformTarget"
                        prim__formTarget
                        prim__setFormTarget
  
  export
  height : HTMLInputElement -> Attribute True I UInt32
  height = fromPrim "HTMLInputElement.getheight" prim__height prim__setHeight
  
  export
  indeterminate : HTMLInputElement -> Attribute True I Bool
  indeterminate = fromPrim "HTMLInputElement.getindeterminate"
                           prim__indeterminate
                           prim__setIndeterminate
  
  export
  labels :  JSType t1
         => {auto 0 _ : Elem HTMLInputElement (Types t1)}
         -> (obj : t1)
         -> JSIO (Maybe NodeList)
  labels a = tryJS "HTMLInputElement.labels"
           $ HTMLInputElement.prim__labels (up a)
  
  export
  list :  JSType t1
       => {auto 0 _ : Elem HTMLInputElement (Types t1)}
       -> (obj : t1)
       -> JSIO (Maybe HTMLElement)
  list a = tryJS "HTMLInputElement.list" $ HTMLInputElement.prim__list (up a)
  
  export
  max : HTMLInputElement -> Attribute True I String
  max = fromPrim "HTMLInputElement.getmax" prim__max prim__setMax
  
  export
  maxLength : HTMLInputElement -> Attribute True I Int32
  maxLength = fromPrim "HTMLInputElement.getmaxLength"
                       prim__maxLength
                       prim__setMaxLength
  
  export
  min : HTMLInputElement -> Attribute True I String
  min = fromPrim "HTMLInputElement.getmin" prim__min prim__setMin
  
  export
  minLength : HTMLInputElement -> Attribute True I Int32
  minLength = fromPrim "HTMLInputElement.getminLength"
                       prim__minLength
                       prim__setMinLength
  
  export
  multiple : HTMLInputElement -> Attribute True I Bool
  multiple = fromPrim "HTMLInputElement.getmultiple"
                      prim__multiple
                      prim__setMultiple
  
  export
  name : HTMLInputElement -> Attribute True I String
  name = fromPrim "HTMLInputElement.getname" prim__name prim__setName
  
  export
  pattern : HTMLInputElement -> Attribute True I String
  pattern = fromPrim "HTMLInputElement.getpattern"
                     prim__pattern
                     prim__setPattern
  
  export
  placeholder : HTMLInputElement -> Attribute True I String
  placeholder = fromPrim "HTMLInputElement.getplaceholder"
                         prim__placeholder
                         prim__setPlaceholder
  
  export
  readOnly : HTMLInputElement -> Attribute True I Bool
  readOnly = fromPrim "HTMLInputElement.getreadOnly"
                      prim__readOnly
                      prim__setReadOnly
  
  export
  required : HTMLInputElement -> Attribute True I Bool
  required = fromPrim "HTMLInputElement.getrequired"
                      prim__required
                      prim__setRequired
  
  export
  selectionDirection : HTMLInputElement -> Attribute False Maybe String
  selectionDirection = fromNullablePrim "HTMLInputElement.getselectionDirection"
                                        prim__selectionDirection
                                        prim__setSelectionDirection
  
  export
  selectionEnd : HTMLInputElement -> Attribute False Maybe UInt32
  selectionEnd = fromNullablePrim "HTMLInputElement.getselectionEnd"
                                  prim__selectionEnd
                                  prim__setSelectionEnd
  
  export
  selectionStart : HTMLInputElement -> Attribute False Maybe UInt32
  selectionStart = fromNullablePrim "HTMLInputElement.getselectionStart"
                                    prim__selectionStart
                                    prim__setSelectionStart
  
  export
  size : HTMLInputElement -> Attribute True I UInt32
  size = fromPrim "HTMLInputElement.getsize" prim__size prim__setSize
  
  export
  src : HTMLInputElement -> Attribute True I String
  src = fromPrim "HTMLInputElement.getsrc" prim__src prim__setSrc
  
  export
  step : HTMLInputElement -> Attribute True I String
  step = fromPrim "HTMLInputElement.getstep" prim__step prim__setStep
  
  export
  type : HTMLInputElement -> Attribute True I String
  type = fromPrim "HTMLInputElement.gettype" prim__type prim__setType
  
  export
  useMap : HTMLInputElement -> Attribute True I String
  useMap = fromPrim "HTMLInputElement.getuseMap" prim__useMap prim__setUseMap
  
  export
  validationMessage :  JSType t1
                    => {auto 0 _ : Elem HTMLInputElement (Types t1)}
                    -> (obj : t1)
                    -> JSIO String
  validationMessage a = primJS $ HTMLInputElement.prim__validationMessage (up a)
  
  export
  validity :  JSType t1
           => {auto 0 _ : Elem HTMLInputElement (Types t1)}
           -> (obj : t1)
           -> JSIO ValidityState
  validity a = primJS $ HTMLInputElement.prim__validity (up a)
  
  export
  value : HTMLInputElement -> Attribute True I String
  value = fromPrim "HTMLInputElement.getvalue" prim__value prim__setValue
  
  export
  valueAsDate : HTMLInputElement -> Attribute False Maybe Object
  valueAsDate = fromNullablePrim "HTMLInputElement.getvalueAsDate"
                                 prim__valueAsDate
                                 prim__setValueAsDate
  
  export
  valueAsNumber : HTMLInputElement -> Attribute True I Double
  valueAsNumber = fromPrim "HTMLInputElement.getvalueAsNumber"
                           prim__valueAsNumber
                           prim__setValueAsNumber
  
  export
  width : HTMLInputElement -> Attribute True I UInt32
  width = fromPrim "HTMLInputElement.getwidth" prim__width prim__setWidth
  
  export
  willValidate :  JSType t1
               => {auto 0 _ : Elem HTMLInputElement (Types t1)}
               -> (obj : t1)
               -> JSIO Bool
  willValidate a = tryJS "HTMLInputElement.willValidate"
                 $ HTMLInputElement.prim__willValidate (up a)
  
  export
  checkValidity :  JSType t1
                => {auto 0 _ : Elem HTMLInputElement (Types t1)}
                -> (obj : t1)
                -> JSIO Bool
  checkValidity a = tryJS "HTMLInputElement.checkValidity"
                  $ HTMLInputElement.prim__checkValidity (up a)
  
  export
  reportValidity :  JSType t1
                 => {auto 0 _ : Elem HTMLInputElement (Types t1)}
                 -> (obj : t1)
                 -> JSIO Bool
  reportValidity a = tryJS "HTMLInputElement.reportValidity"
                   $ HTMLInputElement.prim__reportValidity (up a)
  
  export
  select :  JSType t1
         => {auto 0 _ : Elem HTMLInputElement (Types t1)}
         -> (obj : t1)
         -> JSIO ()
  select a = primJS $ HTMLInputElement.prim__select (up a)
  
  export
  setCustomValidity :  JSType t1
                    => {auto 0 _ : Elem HTMLInputElement (Types t1)}
                    -> (obj : t1)
                    -> (error : String)
                    -> JSIO ()
  setCustomValidity a b = primJS
                        $ HTMLInputElement.prim__setCustomValidity (up a) b
  
  export
  setRangeText :  JSType t1
               => {auto 0 _ : Elem HTMLInputElement (Types t1)}
               -> (obj : t1)
               -> (replacement : String)
               -> JSIO ()
  setRangeText a b = primJS $ HTMLInputElement.prim__setRangeText (up a) b
  
  export
  setRangeText1 :  JSType t1
                => {auto 0 _ : Elem HTMLInputElement (Types t1)}
                -> (obj : t1)
                -> (replacement : String)
                -> (start : UInt32)
                -> (end : UInt32)
                -> (selectionMode : Optional SelectionMode)
                -> JSIO ()
  setRangeText1 a b c d e = primJS
                          $ HTMLInputElement.prim__setRangeText1 (up a)
                                                                 b
                                                                 c
                                                                 d
                                                                 (toFFI e)

  export
  setRangeText1' :  JSType t1
                 => {auto 0 _ : Elem HTMLInputElement (Types t1)}
                 -> (obj : t1)
                 -> (replacement : String)
                 -> (start : UInt32)
                 -> (end : UInt32)
                 -> JSIO ()
  setRangeText1' a b c d = primJS
                         $ HTMLInputElement.prim__setRangeText1 (up a)
                                                                b
                                                                c
                                                                d
                                                                undef
  
  export
  setSelectionRange :  JSType t1
                    => {auto 0 _ : Elem HTMLInputElement (Types t1)}
                    -> (obj : t1)
                    -> (start : UInt32)
                    -> (end : UInt32)
                    -> (direction : Optional String)
                    -> JSIO ()
  setSelectionRange a b c d = primJS
                            $ HTMLInputElement.prim__setSelectionRange (up a)
                                                                       b
                                                                       c
                                                                       (toFFI d)

  export
  setSelectionRange' :  JSType t1
                     => {auto 0 _ : Elem HTMLInputElement (Types t1)}
                     -> (obj : t1)
                     -> (start : UInt32)
                     -> (end : UInt32)
                     -> JSIO ()
  setSelectionRange' a b c = primJS
                           $ HTMLInputElement.prim__setSelectionRange (up a)
                                                                      b
                                                                      c
                                                                      undef
  
  export
  stepDown :  JSType t1
           => {auto 0 _ : Elem HTMLInputElement (Types t1)}
           -> (obj : t1)
           -> (n : Optional Int32)
           -> JSIO ()
  stepDown a b = primJS $ HTMLInputElement.prim__stepDown (up a) (toFFI b)

  export
  stepDown' :  JSType t1
            => {auto 0 _ : Elem HTMLInputElement (Types t1)}
            -> (obj : t1)
            -> JSIO ()
  stepDown' a = primJS $ HTMLInputElement.prim__stepDown (up a) undef
  
  export
  stepUp :  JSType t1
         => {auto 0 _ : Elem HTMLInputElement (Types t1)}
         -> (obj : t1)
         -> (n : Optional Int32)
         -> JSIO ()
  stepUp a b = primJS $ HTMLInputElement.prim__stepUp (up a) (toFFI b)

  export
  stepUp' :  JSType t1
          => {auto 0 _ : Elem HTMLInputElement (Types t1)}
          -> (obj : t1)
          -> JSIO ()
  stepUp' a = primJS $ HTMLInputElement.prim__stepUp (up a) undef

namespace HTMLLIElement
  
  export
  new : JSIO HTMLLIElement
  new = primJS $ HTMLLIElement.prim__new 
  
  export
  type : HTMLLIElement -> Attribute True I String
  type = fromPrim "HTMLLIElement.gettype" prim__type prim__setType
  
  export
  value : HTMLLIElement -> Attribute True I Int32
  value = fromPrim "HTMLLIElement.getvalue" prim__value prim__setValue

namespace HTMLLabelElement
  
  export
  new : JSIO HTMLLabelElement
  new = primJS $ HTMLLabelElement.prim__new 
  
  export
  control :  JSType t1
          => {auto 0 _ : Elem HTMLLabelElement (Types t1)}
          -> (obj : t1)
          -> JSIO (Maybe HTMLElement)
  control a = tryJS "HTMLLabelElement.control"
            $ HTMLLabelElement.prim__control (up a)
  
  export
  form :  JSType t1
       => {auto 0 _ : Elem HTMLLabelElement (Types t1)}
       -> (obj : t1)
       -> JSIO (Maybe HTMLFormElement)
  form a = tryJS "HTMLLabelElement.form" $ HTMLLabelElement.prim__form (up a)
  
  export
  htmlFor : HTMLLabelElement -> Attribute True I String
  htmlFor = fromPrim "HTMLLabelElement.gethtmlFor"
                     prim__htmlFor
                     prim__setHtmlFor

namespace HTMLLegendElement
  
  export
  new : JSIO HTMLLegendElement
  new = primJS $ HTMLLegendElement.prim__new 
  
  export
  align : HTMLLegendElement -> Attribute True I String
  align = fromPrim "HTMLLegendElement.getalign" prim__align prim__setAlign
  
  export
  form :  JSType t1
       => {auto 0 _ : Elem HTMLLegendElement (Types t1)}
       -> (obj : t1)
       -> JSIO (Maybe HTMLFormElement)
  form a = tryJS "HTMLLegendElement.form" $ HTMLLegendElement.prim__form (up a)

namespace HTMLLinkElement
  
  export
  new : JSIO HTMLLinkElement
  new = primJS $ HTMLLinkElement.prim__new 
  
  export
  as : HTMLLinkElement -> Attribute True I String
  as = fromPrim "HTMLLinkElement.getas" prim__as prim__setAs
  
  export
  charset : HTMLLinkElement -> Attribute True I String
  charset = fromPrim "HTMLLinkElement.getcharset" prim__charset prim__setCharset
  
  export
  crossOrigin : HTMLLinkElement -> Attribute False Maybe String
  crossOrigin = fromNullablePrim "HTMLLinkElement.getcrossOrigin"
                                 prim__crossOrigin
                                 prim__setCrossOrigin
  
  export
  disabled : HTMLLinkElement -> Attribute True I Bool
  disabled = fromPrim "HTMLLinkElement.getdisabled"
                      prim__disabled
                      prim__setDisabled
  
  export
  href : HTMLLinkElement -> Attribute True I String
  href = fromPrim "HTMLLinkElement.gethref" prim__href prim__setHref
  
  export
  hreflang : HTMLLinkElement -> Attribute True I String
  hreflang = fromPrim "HTMLLinkElement.gethreflang"
                      prim__hreflang
                      prim__setHreflang
  
  export
  imageSizes : HTMLLinkElement -> Attribute True I String
  imageSizes = fromPrim "HTMLLinkElement.getimageSizes"
                        prim__imageSizes
                        prim__setImageSizes
  
  export
  imageSrcset : HTMLLinkElement -> Attribute True I String
  imageSrcset = fromPrim "HTMLLinkElement.getimageSrcset"
                         prim__imageSrcset
                         prim__setImageSrcset
  
  export
  integrity : HTMLLinkElement -> Attribute True I String
  integrity = fromPrim "HTMLLinkElement.getintegrity"
                       prim__integrity
                       prim__setIntegrity
  
  export
  media : HTMLLinkElement -> Attribute True I String
  media = fromPrim "HTMLLinkElement.getmedia" prim__media prim__setMedia
  
  export
  referrerPolicy : HTMLLinkElement -> Attribute True I String
  referrerPolicy = fromPrim "HTMLLinkElement.getreferrerPolicy"
                            prim__referrerPolicy
                            prim__setReferrerPolicy
  
  export
  rel : HTMLLinkElement -> Attribute True I String
  rel = fromPrim "HTMLLinkElement.getrel" prim__rel prim__setRel
  
  export
  relList :  JSType t1
          => {auto 0 _ : Elem HTMLLinkElement (Types t1)}
          -> (obj : t1)
          -> JSIO DOMTokenList
  relList a = primJS $ HTMLLinkElement.prim__relList (up a)
  
  export
  rev : HTMLLinkElement -> Attribute True I String
  rev = fromPrim "HTMLLinkElement.getrev" prim__rev prim__setRev
  
  export
  sizes :  JSType t1
        => {auto 0 _ : Elem HTMLLinkElement (Types t1)}
        -> (obj : t1)
        -> JSIO DOMTokenList
  sizes a = primJS $ HTMLLinkElement.prim__sizes (up a)
  
  export
  target : HTMLLinkElement -> Attribute True I String
  target = fromPrim "HTMLLinkElement.gettarget" prim__target prim__setTarget
  
  export
  type : HTMLLinkElement -> Attribute True I String
  type = fromPrim "HTMLLinkElement.gettype" prim__type prim__setType

namespace HTMLMapElement
  
  export
  new : JSIO HTMLMapElement
  new = primJS $ HTMLMapElement.prim__new 
  
  export
  areas :  JSType t1
        => {auto 0 _ : Elem HTMLMapElement (Types t1)}
        -> (obj : t1)
        -> JSIO HTMLCollection
  areas a = primJS $ HTMLMapElement.prim__areas (up a)
  
  export
  name : HTMLMapElement -> Attribute True I String
  name = fromPrim "HTMLMapElement.getname" prim__name prim__setName

namespace HTMLMarqueeElement
  
  export
  new : JSIO HTMLMarqueeElement
  new = primJS $ HTMLMarqueeElement.prim__new 
  
  export
  behavior : HTMLMarqueeElement -> Attribute True I String
  behavior = fromPrim "HTMLMarqueeElement.getbehavior"
                      prim__behavior
                      prim__setBehavior
  
  export
  bgColor : HTMLMarqueeElement -> Attribute True I String
  bgColor = fromPrim "HTMLMarqueeElement.getbgColor"
                     prim__bgColor
                     prim__setBgColor
  
  export
  direction : HTMLMarqueeElement -> Attribute True I String
  direction = fromPrim "HTMLMarqueeElement.getdirection"
                       prim__direction
                       prim__setDirection
  
  export
  height : HTMLMarqueeElement -> Attribute True I String
  height = fromPrim "HTMLMarqueeElement.getheight" prim__height prim__setHeight
  
  export
  hspace : HTMLMarqueeElement -> Attribute True I UInt32
  hspace = fromPrim "HTMLMarqueeElement.gethspace" prim__hspace prim__setHspace
  
  export
  loop : HTMLMarqueeElement -> Attribute True I Int32
  loop = fromPrim "HTMLMarqueeElement.getloop" prim__loop prim__setLoop
  
  export
  scrollAmount : HTMLMarqueeElement -> Attribute True I UInt32
  scrollAmount = fromPrim "HTMLMarqueeElement.getscrollAmount"
                          prim__scrollAmount
                          prim__setScrollAmount
  
  export
  scrollDelay : HTMLMarqueeElement -> Attribute True I UInt32
  scrollDelay = fromPrim "HTMLMarqueeElement.getscrollDelay"
                         prim__scrollDelay
                         prim__setScrollDelay
  
  export
  trueSpeed : HTMLMarqueeElement -> Attribute True I Bool
  trueSpeed = fromPrim "HTMLMarqueeElement.gettrueSpeed"
                       prim__trueSpeed
                       prim__setTrueSpeed
  
  export
  vspace : HTMLMarqueeElement -> Attribute True I UInt32
  vspace = fromPrim "HTMLMarqueeElement.getvspace" prim__vspace prim__setVspace
  
  export
  width : HTMLMarqueeElement -> Attribute True I String
  width = fromPrim "HTMLMarqueeElement.getwidth" prim__width prim__setWidth
  
  export
  start :  JSType t1
        => {auto 0 _ : Elem HTMLMarqueeElement (Types t1)}
        -> (obj : t1)
        -> JSIO ()
  start a = primJS $ HTMLMarqueeElement.prim__start (up a)
  
  export
  stop :  JSType t1
       => {auto 0 _ : Elem HTMLMarqueeElement (Types t1)}
       -> (obj : t1)
       -> JSIO ()
  stop a = primJS $ HTMLMarqueeElement.prim__stop (up a)

namespace HTMLMediaElement
  
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
  audioTracks :  JSType t1
              => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
              -> (obj : t1)
              -> JSIO AudioTrackList
  audioTracks a = primJS $ HTMLMediaElement.prim__audioTracks (up a)
  
  export
  autoplay : HTMLMediaElement -> Attribute True I Bool
  autoplay = fromPrim "HTMLMediaElement.getautoplay"
                      prim__autoplay
                      prim__setAutoplay
  
  export
  buffered :  JSType t1
           => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
           -> (obj : t1)
           -> JSIO TimeRanges
  buffered a = primJS $ HTMLMediaElement.prim__buffered (up a)
  
  export
  controls : HTMLMediaElement -> Attribute True I Bool
  controls = fromPrim "HTMLMediaElement.getcontrols"
                      prim__controls
                      prim__setControls
  
  export
  crossOrigin : HTMLMediaElement -> Attribute False Maybe String
  crossOrigin = fromNullablePrim "HTMLMediaElement.getcrossOrigin"
                                 prim__crossOrigin
                                 prim__setCrossOrigin
  
  export
  currentSrc :  JSType t1
             => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
             -> (obj : t1)
             -> JSIO String
  currentSrc a = primJS $ HTMLMediaElement.prim__currentSrc (up a)
  
  export
  currentTime : HTMLMediaElement -> Attribute True I Double
  currentTime = fromPrim "HTMLMediaElement.getcurrentTime"
                         prim__currentTime
                         prim__setCurrentTime
  
  export
  defaultMuted : HTMLMediaElement -> Attribute True I Bool
  defaultMuted = fromPrim "HTMLMediaElement.getdefaultMuted"
                          prim__defaultMuted
                          prim__setDefaultMuted
  
  export
  defaultPlaybackRate : HTMLMediaElement -> Attribute True I Double
  defaultPlaybackRate = fromPrim "HTMLMediaElement.getdefaultPlaybackRate"
                                 prim__defaultPlaybackRate
                                 prim__setDefaultPlaybackRate
  
  export
  duration :  JSType t1
           => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
           -> (obj : t1)
           -> JSIO Double
  duration a = primJS $ HTMLMediaElement.prim__duration (up a)
  
  export
  ended :  JSType t1
        => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
        -> (obj : t1)
        -> JSIO Bool
  ended a = tryJS "HTMLMediaElement.ended" $ HTMLMediaElement.prim__ended (up a)
  
  export
  error :  JSType t1
        => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
        -> (obj : t1)
        -> JSIO (Maybe MediaError)
  error a = tryJS "HTMLMediaElement.error" $ HTMLMediaElement.prim__error (up a)
  
  export
  loop : HTMLMediaElement -> Attribute True I Bool
  loop = fromPrim "HTMLMediaElement.getloop" prim__loop prim__setLoop
  
  export
  muted : HTMLMediaElement -> Attribute True I Bool
  muted = fromPrim "HTMLMediaElement.getmuted" prim__muted prim__setMuted
  
  export
  networkState :  JSType t1
               => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
               -> (obj : t1)
               -> JSIO UInt16
  networkState a = primJS $ HTMLMediaElement.prim__networkState (up a)
  
  export
  paused :  JSType t1
         => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
         -> (obj : t1)
         -> JSIO Bool
  paused a = tryJS "HTMLMediaElement.paused"
           $ HTMLMediaElement.prim__paused (up a)
  
  export
  playbackRate : HTMLMediaElement -> Attribute True I Double
  playbackRate = fromPrim "HTMLMediaElement.getplaybackRate"
                          prim__playbackRate
                          prim__setPlaybackRate
  
  export
  played :  JSType t1
         => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
         -> (obj : t1)
         -> JSIO TimeRanges
  played a = primJS $ HTMLMediaElement.prim__played (up a)
  
  export
  preload : HTMLMediaElement -> Attribute True I String
  preload = fromPrim "HTMLMediaElement.getpreload"
                     prim__preload
                     prim__setPreload
  
  export
  preservesPitch : HTMLMediaElement -> Attribute True I Bool
  preservesPitch = fromPrim "HTMLMediaElement.getpreservesPitch"
                            prim__preservesPitch
                            prim__setPreservesPitch
  
  export
  readyState :  JSType t1
             => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
             -> (obj : t1)
             -> JSIO UInt16
  readyState a = primJS $ HTMLMediaElement.prim__readyState (up a)
  
  export
  seekable :  JSType t1
           => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
           -> (obj : t1)
           -> JSIO TimeRanges
  seekable a = primJS $ HTMLMediaElement.prim__seekable (up a)
  
  export
  seeking :  JSType t1
          => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
          -> (obj : t1)
          -> JSIO Bool
  seeking a = tryJS "HTMLMediaElement.seeking"
            $ HTMLMediaElement.prim__seeking (up a)
  
  export
  src : HTMLMediaElement -> Attribute True I String
  src = fromPrim "HTMLMediaElement.getsrc" prim__src prim__setSrc
  
  export
  srcObject : HTMLMediaElement -> Attribute False Maybe (NS I [ MediaStream
                                                              , MediaSource
                                                              , Blob
                                                              ])
  srcObject = fromNullablePrim "HTMLMediaElement.getsrcObject"
                               prim__srcObject
                               prim__setSrcObject
  
  export
  textTracks :  JSType t1
             => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
             -> (obj : t1)
             -> JSIO TextTrackList
  textTracks a = primJS $ HTMLMediaElement.prim__textTracks (up a)
  
  export
  videoTracks :  JSType t1
              => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
              -> (obj : t1)
              -> JSIO VideoTrackList
  videoTracks a = primJS $ HTMLMediaElement.prim__videoTracks (up a)
  
  export
  volume : HTMLMediaElement -> Attribute True I Double
  volume = fromPrim "HTMLMediaElement.getvolume" prim__volume prim__setVolume
  
  export
  addTextTrack :  JSType t1
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
  addTextTrack' :  JSType t1
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
  canPlayType :  JSType t1
              => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
              -> (obj : t1)
              -> (type : String)
              -> JSIO CanPlayTypeResult
  canPlayType a b = tryJS "HTMLMediaElement.canPlayType"
                  $ HTMLMediaElement.prim__canPlayType (up a) b
  
  export
  fastSeek :  JSType t1
           => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
           -> (obj : t1)
           -> (time : Double)
           -> JSIO ()
  fastSeek a b = primJS $ HTMLMediaElement.prim__fastSeek (up a) b
  
  export
  getStartDate :  JSType t1
               => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
               -> (obj : t1)
               -> JSIO Object
  getStartDate a = primJS $ HTMLMediaElement.prim__getStartDate (up a)
  
  export
  load :  JSType t1
       => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
       -> (obj : t1)
       -> JSIO ()
  load a = primJS $ HTMLMediaElement.prim__load (up a)
  
  export
  pause :  JSType t1
        => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
        -> (obj : t1)
        -> JSIO ()
  pause a = primJS $ HTMLMediaElement.prim__pause (up a)
  
  export
  play :  JSType t1
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
  compact = fromPrim "HTMLMenuElement.getcompact" prim__compact prim__setCompact

namespace HTMLMetaElement
  
  export
  new : JSIO HTMLMetaElement
  new = primJS $ HTMLMetaElement.prim__new 
  
  export
  content : HTMLMetaElement -> Attribute True I String
  content = fromPrim "HTMLMetaElement.getcontent" prim__content prim__setContent
  
  export
  httpEquiv : HTMLMetaElement -> Attribute True I String
  httpEquiv = fromPrim "HTMLMetaElement.gethttpEquiv"
                       prim__httpEquiv
                       prim__setHttpEquiv
  
  export
  name : HTMLMetaElement -> Attribute True I String
  name = fromPrim "HTMLMetaElement.getname" prim__name prim__setName
  
  export
  scheme : HTMLMetaElement -> Attribute True I String
  scheme = fromPrim "HTMLMetaElement.getscheme" prim__scheme prim__setScheme

namespace HTMLMeterElement
  
  export
  new : JSIO HTMLMeterElement
  new = primJS $ HTMLMeterElement.prim__new 
  
  export
  high : HTMLMeterElement -> Attribute True I Double
  high = fromPrim "HTMLMeterElement.gethigh" prim__high prim__setHigh
  
  export
  labels :  JSType t1
         => {auto 0 _ : Elem HTMLMeterElement (Types t1)}
         -> (obj : t1)
         -> JSIO NodeList
  labels a = primJS $ HTMLMeterElement.prim__labels (up a)
  
  export
  low : HTMLMeterElement -> Attribute True I Double
  low = fromPrim "HTMLMeterElement.getlow" prim__low prim__setLow
  
  export
  max : HTMLMeterElement -> Attribute True I Double
  max = fromPrim "HTMLMeterElement.getmax" prim__max prim__setMax
  
  export
  min : HTMLMeterElement -> Attribute True I Double
  min = fromPrim "HTMLMeterElement.getmin" prim__min prim__setMin
  
  export
  optimum : HTMLMeterElement -> Attribute True I Double
  optimum = fromPrim "HTMLMeterElement.getoptimum"
                     prim__optimum
                     prim__setOptimum
  
  export
  value : HTMLMeterElement -> Attribute True I Double
  value = fromPrim "HTMLMeterElement.getvalue" prim__value prim__setValue

namespace HTMLModElement
  
  export
  new : JSIO HTMLModElement
  new = primJS $ HTMLModElement.prim__new 
  
  export
  cite : HTMLModElement -> Attribute True I String
  cite = fromPrim "HTMLModElement.getcite" prim__cite prim__setCite
  
  export
  dateTime : HTMLModElement -> Attribute True I String
  dateTime = fromPrim "HTMLModElement.getdateTime"
                      prim__dateTime
                      prim__setDateTime

namespace HTMLOListElement
  
  export
  new : JSIO HTMLOListElement
  new = primJS $ HTMLOListElement.prim__new 
  
  export
  compact : HTMLOListElement -> Attribute True I Bool
  compact = fromPrim "HTMLOListElement.getcompact"
                     prim__compact
                     prim__setCompact
  
  export
  reversed : HTMLOListElement -> Attribute True I Bool
  reversed = fromPrim "HTMLOListElement.getreversed"
                      prim__reversed
                      prim__setReversed
  
  export
  start : HTMLOListElement -> Attribute True I Int32
  start = fromPrim "HTMLOListElement.getstart" prim__start prim__setStart
  
  export
  type : HTMLOListElement -> Attribute True I String
  type = fromPrim "HTMLOListElement.gettype" prim__type prim__setType

namespace HTMLObjectElement
  
  export
  new : JSIO HTMLObjectElement
  new = primJS $ HTMLObjectElement.prim__new 
  
  export
  align : HTMLObjectElement -> Attribute True I String
  align = fromPrim "HTMLObjectElement.getalign" prim__align prim__setAlign
  
  export
  archive : HTMLObjectElement -> Attribute True I String
  archive = fromPrim "HTMLObjectElement.getarchive"
                     prim__archive
                     prim__setArchive
  
  export
  border : HTMLObjectElement -> Attribute True I String
  border = fromPrim "HTMLObjectElement.getborder" prim__border prim__setBorder
  
  export
  code : HTMLObjectElement -> Attribute True I String
  code = fromPrim "HTMLObjectElement.getcode" prim__code prim__setCode
  
  export
  codeBase : HTMLObjectElement -> Attribute True I String
  codeBase = fromPrim "HTMLObjectElement.getcodeBase"
                      prim__codeBase
                      prim__setCodeBase
  
  export
  codeType : HTMLObjectElement -> Attribute True I String
  codeType = fromPrim "HTMLObjectElement.getcodeType"
                      prim__codeType
                      prim__setCodeType
  
  export
  contentDocument :  JSType t1
                  => {auto 0 _ : Elem HTMLObjectElement (Types t1)}
                  -> (obj : t1)
                  -> JSIO (Maybe Document)
  contentDocument a = tryJS "HTMLObjectElement.contentDocument"
                    $ HTMLObjectElement.prim__contentDocument (up a)
  
  export
  contentWindow :  JSType t1
                => {auto 0 _ : Elem HTMLObjectElement (Types t1)}
                -> (obj : t1)
                -> JSIO (Maybe WindowProxy)
  contentWindow a = tryJS "HTMLObjectElement.contentWindow"
                  $ HTMLObjectElement.prim__contentWindow (up a)
  
  export
  data_ : HTMLObjectElement -> Attribute True I String
  data_ = fromPrim "HTMLObjectElement.getdata" prim__data prim__setData
  
  export
  declare : HTMLObjectElement -> Attribute True I Bool
  declare = fromPrim "HTMLObjectElement.getdeclare"
                     prim__declare
                     prim__setDeclare
  
  export
  form :  JSType t1
       => {auto 0 _ : Elem HTMLObjectElement (Types t1)}
       -> (obj : t1)
       -> JSIO (Maybe HTMLFormElement)
  form a = tryJS "HTMLObjectElement.form" $ HTMLObjectElement.prim__form (up a)
  
  export
  height : HTMLObjectElement -> Attribute True I String
  height = fromPrim "HTMLObjectElement.getheight" prim__height prim__setHeight
  
  export
  hspace : HTMLObjectElement -> Attribute True I UInt32
  hspace = fromPrim "HTMLObjectElement.gethspace" prim__hspace prim__setHspace
  
  export
  name : HTMLObjectElement -> Attribute True I String
  name = fromPrim "HTMLObjectElement.getname" prim__name prim__setName
  
  export
  standby : HTMLObjectElement -> Attribute True I String
  standby = fromPrim "HTMLObjectElement.getstandby"
                     prim__standby
                     prim__setStandby
  
  export
  type : HTMLObjectElement -> Attribute True I String
  type = fromPrim "HTMLObjectElement.gettype" prim__type prim__setType
  
  export
  useMap : HTMLObjectElement -> Attribute True I String
  useMap = fromPrim "HTMLObjectElement.getuseMap" prim__useMap prim__setUseMap
  
  export
  validationMessage :  JSType t1
                    => {auto 0 _ : Elem HTMLObjectElement (Types t1)}
                    -> (obj : t1)
                    -> JSIO String
  validationMessage a = primJS
                      $ HTMLObjectElement.prim__validationMessage (up a)
  
  export
  validity :  JSType t1
           => {auto 0 _ : Elem HTMLObjectElement (Types t1)}
           -> (obj : t1)
           -> JSIO ValidityState
  validity a = primJS $ HTMLObjectElement.prim__validity (up a)
  
  export
  vspace : HTMLObjectElement -> Attribute True I UInt32
  vspace = fromPrim "HTMLObjectElement.getvspace" prim__vspace prim__setVspace
  
  export
  width : HTMLObjectElement -> Attribute True I String
  width = fromPrim "HTMLObjectElement.getwidth" prim__width prim__setWidth
  
  export
  willValidate :  JSType t1
               => {auto 0 _ : Elem HTMLObjectElement (Types t1)}
               -> (obj : t1)
               -> JSIO Bool
  willValidate a = tryJS "HTMLObjectElement.willValidate"
                 $ HTMLObjectElement.prim__willValidate (up a)
  
  export
  checkValidity :  JSType t1
                => {auto 0 _ : Elem HTMLObjectElement (Types t1)}
                -> (obj : t1)
                -> JSIO Bool
  checkValidity a = tryJS "HTMLObjectElement.checkValidity"
                  $ HTMLObjectElement.prim__checkValidity (up a)
  
  export
  getSVGDocument :  JSType t1
                 => {auto 0 _ : Elem HTMLObjectElement (Types t1)}
                 -> (obj : t1)
                 -> JSIO (Maybe Document)
  getSVGDocument a = tryJS "HTMLObjectElement.getSVGDocument"
                   $ HTMLObjectElement.prim__getSVGDocument (up a)
  
  export
  reportValidity :  JSType t1
                 => {auto 0 _ : Elem HTMLObjectElement (Types t1)}
                 -> (obj : t1)
                 -> JSIO Bool
  reportValidity a = tryJS "HTMLObjectElement.reportValidity"
                   $ HTMLObjectElement.prim__reportValidity (up a)
  
  export
  setCustomValidity :  JSType t1
                    => {auto 0 _ : Elem HTMLObjectElement (Types t1)}
                    -> (obj : t1)
                    -> (error : String)
                    -> JSIO ()
  setCustomValidity a b = primJS
                        $ HTMLObjectElement.prim__setCustomValidity (up a) b

namespace HTMLOptGroupElement
  
  export
  new : JSIO HTMLOptGroupElement
  new = primJS $ HTMLOptGroupElement.prim__new 
  
  export
  disabled : HTMLOptGroupElement -> Attribute True I Bool
  disabled = fromPrim "HTMLOptGroupElement.getdisabled"
                      prim__disabled
                      prim__setDisabled
  
  export
  label : HTMLOptGroupElement -> Attribute True I String
  label = fromPrim "HTMLOptGroupElement.getlabel" prim__label prim__setLabel

namespace HTMLOptionElement
  
  export
  new : JSIO HTMLOptionElement
  new = primJS $ HTMLOptionElement.prim__new 
  
  export
  defaultSelected : HTMLOptionElement -> Attribute True I Bool
  defaultSelected = fromPrim "HTMLOptionElement.getdefaultSelected"
                             prim__defaultSelected
                             prim__setDefaultSelected
  
  export
  disabled : HTMLOptionElement -> Attribute True I Bool
  disabled = fromPrim "HTMLOptionElement.getdisabled"
                      prim__disabled
                      prim__setDisabled
  
  export
  form :  JSType t1
       => {auto 0 _ : Elem HTMLOptionElement (Types t1)}
       -> (obj : t1)
       -> JSIO (Maybe HTMLFormElement)
  form a = tryJS "HTMLOptionElement.form" $ HTMLOptionElement.prim__form (up a)
  
  export
  index :  JSType t1
        => {auto 0 _ : Elem HTMLOptionElement (Types t1)}
        -> (obj : t1)
        -> JSIO Int32
  index a = primJS $ HTMLOptionElement.prim__index (up a)
  
  export
  label : HTMLOptionElement -> Attribute True I String
  label = fromPrim "HTMLOptionElement.getlabel" prim__label prim__setLabel
  
  export
  selected : HTMLOptionElement -> Attribute True I Bool
  selected = fromPrim "HTMLOptionElement.getselected"
                      prim__selected
                      prim__setSelected
  
  export
  text : HTMLOptionElement -> Attribute True I String
  text = fromPrim "HTMLOptionElement.gettext" prim__text prim__setText
  
  export
  value : HTMLOptionElement -> Attribute True I String
  value = fromPrim "HTMLOptionElement.getvalue" prim__value prim__setValue

namespace HTMLOptionsCollection
  
  export
  set :  JSType t1
      => JSType t2
      => {auto 0 _ : Elem HTMLOptionsCollection (Types t1)}
      -> {auto 0 _ : Elem HTMLOptionElement (Types t2)}
      -> (obj : t1)
      -> (index : UInt32)
      -> (option : Maybe t2)
      -> JSIO ()
  set a b c = primJS $ HTMLOptionsCollection.prim__set (up a) b (mayUp c)
  
  export
  length : HTMLOptionsCollection -> Attribute True I UInt32
  length = fromPrim "HTMLOptionsCollection.getlength"
                    prim__length
                    prim__setLength
  
  export
  selectedIndex : HTMLOptionsCollection -> Attribute True I Int32
  selectedIndex = fromPrim "HTMLOptionsCollection.getselectedIndex"
                           prim__selectedIndex
                           prim__setSelectedIndex
  
  export
  add :  JSType t1
      => {auto 0 _ : Elem HTMLOptionsCollection (Types t1)}
      -> (obj : t1)
      -> (element : NS I [ HTMLOptionElement , HTMLOptGroupElement ])
      -> (before : Optional (Maybe (NS I [ HTMLElement , Int32 ])))
      -> JSIO ()
  add a b c = primJS
            $ HTMLOptionsCollection.prim__add (up a) (toFFI b) (toFFI c)

  export
  add' :  JSType t1
       => {auto 0 _ : Elem HTMLOptionsCollection (Types t1)}
       -> (obj : t1)
       -> (element : NS I [ HTMLOptionElement , HTMLOptGroupElement ])
       -> JSIO ()
  add' a b = primJS $ HTMLOptionsCollection.prim__add (up a) (toFFI b) undef
  
  export
  remove :  JSType t1
         => {auto 0 _ : Elem HTMLOptionsCollection (Types t1)}
         -> (obj : t1)
         -> (index : Int32)
         -> JSIO ()
  remove a b = primJS $ HTMLOptionsCollection.prim__remove (up a) b

namespace HTMLOutputElement
  
  export
  new : JSIO HTMLOutputElement
  new = primJS $ HTMLOutputElement.prim__new 
  
  export
  defaultValue : HTMLOutputElement -> Attribute True I String
  defaultValue = fromPrim "HTMLOutputElement.getdefaultValue"
                          prim__defaultValue
                          prim__setDefaultValue
  
  export
  form :  JSType t1
       => {auto 0 _ : Elem HTMLOutputElement (Types t1)}
       -> (obj : t1)
       -> JSIO (Maybe HTMLFormElement)
  form a = tryJS "HTMLOutputElement.form" $ HTMLOutputElement.prim__form (up a)
  
  export
  htmlFor :  JSType t1
          => {auto 0 _ : Elem HTMLOutputElement (Types t1)}
          -> (obj : t1)
          -> JSIO DOMTokenList
  htmlFor a = primJS $ HTMLOutputElement.prim__htmlFor (up a)
  
  export
  labels :  JSType t1
         => {auto 0 _ : Elem HTMLOutputElement (Types t1)}
         -> (obj : t1)
         -> JSIO NodeList
  labels a = primJS $ HTMLOutputElement.prim__labels (up a)
  
  export
  name : HTMLOutputElement -> Attribute True I String
  name = fromPrim "HTMLOutputElement.getname" prim__name prim__setName
  
  export
  type :  JSType t1
       => {auto 0 _ : Elem HTMLOutputElement (Types t1)}
       -> (obj : t1)
       -> JSIO String
  type a = primJS $ HTMLOutputElement.prim__type (up a)
  
  export
  validationMessage :  JSType t1
                    => {auto 0 _ : Elem HTMLOutputElement (Types t1)}
                    -> (obj : t1)
                    -> JSIO String
  validationMessage a = primJS
                      $ HTMLOutputElement.prim__validationMessage (up a)
  
  export
  validity :  JSType t1
           => {auto 0 _ : Elem HTMLOutputElement (Types t1)}
           -> (obj : t1)
           -> JSIO ValidityState
  validity a = primJS $ HTMLOutputElement.prim__validity (up a)
  
  export
  value : HTMLOutputElement -> Attribute True I String
  value = fromPrim "HTMLOutputElement.getvalue" prim__value prim__setValue
  
  export
  willValidate :  JSType t1
               => {auto 0 _ : Elem HTMLOutputElement (Types t1)}
               -> (obj : t1)
               -> JSIO Bool
  willValidate a = tryJS "HTMLOutputElement.willValidate"
                 $ HTMLOutputElement.prim__willValidate (up a)
  
  export
  checkValidity :  JSType t1
                => {auto 0 _ : Elem HTMLOutputElement (Types t1)}
                -> (obj : t1)
                -> JSIO Bool
  checkValidity a = tryJS "HTMLOutputElement.checkValidity"
                  $ HTMLOutputElement.prim__checkValidity (up a)
  
  export
  reportValidity :  JSType t1
                 => {auto 0 _ : Elem HTMLOutputElement (Types t1)}
                 -> (obj : t1)
                 -> JSIO Bool
  reportValidity a = tryJS "HTMLOutputElement.reportValidity"
                   $ HTMLOutputElement.prim__reportValidity (up a)
  
  export
  setCustomValidity :  JSType t1
                    => {auto 0 _ : Elem HTMLOutputElement (Types t1)}
                    -> (obj : t1)
                    -> (error : String)
                    -> JSIO ()
  setCustomValidity a b = primJS
                        $ HTMLOutputElement.prim__setCustomValidity (up a) b

namespace HTMLParagraphElement
  
  export
  new : JSIO HTMLParagraphElement
  new = primJS $ HTMLParagraphElement.prim__new 
  
  export
  align : HTMLParagraphElement -> Attribute True I String
  align = fromPrim "HTMLParagraphElement.getalign" prim__align prim__setAlign

namespace HTMLParamElement
  
  export
  new : JSIO HTMLParamElement
  new = primJS $ HTMLParamElement.prim__new 
  
  export
  name : HTMLParamElement -> Attribute True I String
  name = fromPrim "HTMLParamElement.getname" prim__name prim__setName
  
  export
  type : HTMLParamElement -> Attribute True I String
  type = fromPrim "HTMLParamElement.gettype" prim__type prim__setType
  
  export
  value : HTMLParamElement -> Attribute True I String
  value = fromPrim "HTMLParamElement.getvalue" prim__value prim__setValue
  
  export
  valueType : HTMLParamElement -> Attribute True I String
  valueType = fromPrim "HTMLParamElement.getvalueType"
                       prim__valueType
                       prim__setValueType

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
  width = fromPrim "HTMLPreElement.getwidth" prim__width prim__setWidth

namespace HTMLProgressElement
  
  export
  new : JSIO HTMLProgressElement
  new = primJS $ HTMLProgressElement.prim__new 
  
  export
  labels :  JSType t1
         => {auto 0 _ : Elem HTMLProgressElement (Types t1)}
         -> (obj : t1)
         -> JSIO NodeList
  labels a = primJS $ HTMLProgressElement.prim__labels (up a)
  
  export
  max : HTMLProgressElement -> Attribute True I Double
  max = fromPrim "HTMLProgressElement.getmax" prim__max prim__setMax
  
  export
  position :  JSType t1
           => {auto 0 _ : Elem HTMLProgressElement (Types t1)}
           -> (obj : t1)
           -> JSIO Double
  position a = primJS $ HTMLProgressElement.prim__position (up a)
  
  export
  value : HTMLProgressElement -> Attribute True I Double
  value = fromPrim "HTMLProgressElement.getvalue" prim__value prim__setValue

namespace HTMLQuoteElement
  
  export
  new : JSIO HTMLQuoteElement
  new = primJS $ HTMLQuoteElement.prim__new 
  
  export
  cite : HTMLQuoteElement -> Attribute True I String
  cite = fromPrim "HTMLQuoteElement.getcite" prim__cite prim__setCite

namespace HTMLScriptElement
  
  export
  new : JSIO HTMLScriptElement
  new = primJS $ HTMLScriptElement.prim__new 
  
  export
  async : HTMLScriptElement -> Attribute True I Bool
  async = fromPrim "HTMLScriptElement.getasync" prim__async prim__setAsync
  
  export
  charset : HTMLScriptElement -> Attribute True I String
  charset = fromPrim "HTMLScriptElement.getcharset"
                     prim__charset
                     prim__setCharset
  
  export
  crossOrigin : HTMLScriptElement -> Attribute False Maybe String
  crossOrigin = fromNullablePrim "HTMLScriptElement.getcrossOrigin"
                                 prim__crossOrigin
                                 prim__setCrossOrigin
  
  export
  defer : HTMLScriptElement -> Attribute True I Bool
  defer = fromPrim "HTMLScriptElement.getdefer" prim__defer prim__setDefer
  
  export
  event : HTMLScriptElement -> Attribute True I String
  event = fromPrim "HTMLScriptElement.getevent" prim__event prim__setEvent
  
  export
  htmlFor : HTMLScriptElement -> Attribute True I String
  htmlFor = fromPrim "HTMLScriptElement.gethtmlFor"
                     prim__htmlFor
                     prim__setHtmlFor
  
  export
  integrity : HTMLScriptElement -> Attribute True I String
  integrity = fromPrim "HTMLScriptElement.getintegrity"
                       prim__integrity
                       prim__setIntegrity
  
  export
  noModule : HTMLScriptElement -> Attribute True I Bool
  noModule = fromPrim "HTMLScriptElement.getnoModule"
                      prim__noModule
                      prim__setNoModule
  
  export
  referrerPolicy : HTMLScriptElement -> Attribute True I String
  referrerPolicy = fromPrim "HTMLScriptElement.getreferrerPolicy"
                            prim__referrerPolicy
                            prim__setReferrerPolicy
  
  export
  src : HTMLScriptElement -> Attribute True I String
  src = fromPrim "HTMLScriptElement.getsrc" prim__src prim__setSrc
  
  export
  text : HTMLScriptElement -> Attribute True I String
  text = fromPrim "HTMLScriptElement.gettext" prim__text prim__setText
  
  export
  type : HTMLScriptElement -> Attribute True I String
  type = fromPrim "HTMLScriptElement.gettype" prim__type prim__setType

namespace HTMLSelectElement
  
  export
  new : JSIO HTMLSelectElement
  new = primJS $ HTMLSelectElement.prim__new 
  
  export
  set :  JSType t1
      => JSType t2
      => {auto 0 _ : Elem HTMLSelectElement (Types t1)}
      -> {auto 0 _ : Elem HTMLOptionElement (Types t2)}
      -> (obj : t1)
      -> (index : UInt32)
      -> (option : Maybe t2)
      -> JSIO ()
  set a b c = primJS $ HTMLSelectElement.prim__set (up a) b (mayUp c)
  
  export
  autocomplete : HTMLSelectElement -> Attribute True I String
  autocomplete = fromPrim "HTMLSelectElement.getautocomplete"
                          prim__autocomplete
                          prim__setAutocomplete
  
  export
  disabled : HTMLSelectElement -> Attribute True I Bool
  disabled = fromPrim "HTMLSelectElement.getdisabled"
                      prim__disabled
                      prim__setDisabled
  
  export
  form :  JSType t1
       => {auto 0 _ : Elem HTMLSelectElement (Types t1)}
       -> (obj : t1)
       -> JSIO (Maybe HTMLFormElement)
  form a = tryJS "HTMLSelectElement.form" $ HTMLSelectElement.prim__form (up a)
  
  export
  labels :  JSType t1
         => {auto 0 _ : Elem HTMLSelectElement (Types t1)}
         -> (obj : t1)
         -> JSIO NodeList
  labels a = primJS $ HTMLSelectElement.prim__labels (up a)
  
  export
  length : HTMLSelectElement -> Attribute True I UInt32
  length = fromPrim "HTMLSelectElement.getlength" prim__length prim__setLength
  
  export
  multiple : HTMLSelectElement -> Attribute True I Bool
  multiple = fromPrim "HTMLSelectElement.getmultiple"
                      prim__multiple
                      prim__setMultiple
  
  export
  name : HTMLSelectElement -> Attribute True I String
  name = fromPrim "HTMLSelectElement.getname" prim__name prim__setName
  
  export
  options :  JSType t1
          => {auto 0 _ : Elem HTMLSelectElement (Types t1)}
          -> (obj : t1)
          -> JSIO HTMLOptionsCollection
  options a = primJS $ HTMLSelectElement.prim__options (up a)
  
  export
  required : HTMLSelectElement -> Attribute True I Bool
  required = fromPrim "HTMLSelectElement.getrequired"
                      prim__required
                      prim__setRequired
  
  export
  selectedIndex : HTMLSelectElement -> Attribute True I Int32
  selectedIndex = fromPrim "HTMLSelectElement.getselectedIndex"
                           prim__selectedIndex
                           prim__setSelectedIndex
  
  export
  selectedOptions :  JSType t1
                  => {auto 0 _ : Elem HTMLSelectElement (Types t1)}
                  -> (obj : t1)
                  -> JSIO HTMLCollection
  selectedOptions a = primJS $ HTMLSelectElement.prim__selectedOptions (up a)
  
  export
  size : HTMLSelectElement -> Attribute True I UInt32
  size = fromPrim "HTMLSelectElement.getsize" prim__size prim__setSize
  
  export
  type :  JSType t1
       => {auto 0 _ : Elem HTMLSelectElement (Types t1)}
       -> (obj : t1)
       -> JSIO String
  type a = primJS $ HTMLSelectElement.prim__type (up a)
  
  export
  validationMessage :  JSType t1
                    => {auto 0 _ : Elem HTMLSelectElement (Types t1)}
                    -> (obj : t1)
                    -> JSIO String
  validationMessage a = primJS
                      $ HTMLSelectElement.prim__validationMessage (up a)
  
  export
  validity :  JSType t1
           => {auto 0 _ : Elem HTMLSelectElement (Types t1)}
           -> (obj : t1)
           -> JSIO ValidityState
  validity a = primJS $ HTMLSelectElement.prim__validity (up a)
  
  export
  value : HTMLSelectElement -> Attribute True I String
  value = fromPrim "HTMLSelectElement.getvalue" prim__value prim__setValue
  
  export
  willValidate :  JSType t1
               => {auto 0 _ : Elem HTMLSelectElement (Types t1)}
               -> (obj : t1)
               -> JSIO Bool
  willValidate a = tryJS "HTMLSelectElement.willValidate"
                 $ HTMLSelectElement.prim__willValidate (up a)
  
  export
  add :  JSType t1
      => {auto 0 _ : Elem HTMLSelectElement (Types t1)}
      -> (obj : t1)
      -> (element : NS I [ HTMLOptionElement , HTMLOptGroupElement ])
      -> (before : Optional (Maybe (NS I [ HTMLElement , Int32 ])))
      -> JSIO ()
  add a b c = primJS $ HTMLSelectElement.prim__add (up a) (toFFI b) (toFFI c)

  export
  add' :  JSType t1
       => {auto 0 _ : Elem HTMLSelectElement (Types t1)}
       -> (obj : t1)
       -> (element : NS I [ HTMLOptionElement , HTMLOptGroupElement ])
       -> JSIO ()
  add' a b = primJS $ HTMLSelectElement.prim__add (up a) (toFFI b) undef
  
  export
  checkValidity :  JSType t1
                => {auto 0 _ : Elem HTMLSelectElement (Types t1)}
                -> (obj : t1)
                -> JSIO Bool
  checkValidity a = tryJS "HTMLSelectElement.checkValidity"
                  $ HTMLSelectElement.prim__checkValidity (up a)
  
  export
  item :  JSType t1
       => {auto 0 _ : Elem HTMLSelectElement (Types t1)}
       -> (obj : t1)
       -> (index : UInt32)
       -> JSIO (Maybe Element)
  item a b = tryJS "HTMLSelectElement.item"
           $ HTMLSelectElement.prim__item (up a) b
  
  export
  namedItem :  JSType t1
            => {auto 0 _ : Elem HTMLSelectElement (Types t1)}
            -> (obj : t1)
            -> (name : String)
            -> JSIO (Maybe HTMLOptionElement)
  namedItem a b = tryJS "HTMLSelectElement.namedItem"
                $ HTMLSelectElement.prim__namedItem (up a) b
  
  export
  remove :  JSType t1
         => {auto 0 _ : Elem HTMLSelectElement (Types t1)}
         -> (obj : t1)
         -> JSIO ()
  remove a = primJS $ HTMLSelectElement.prim__remove (up a)
  
  export
  remove1 :  JSType t1
          => {auto 0 _ : Elem HTMLSelectElement (Types t1)}
          -> (obj : t1)
          -> (index : Int32)
          -> JSIO ()
  remove1 a b = primJS $ HTMLSelectElement.prim__remove1 (up a) b
  
  export
  reportValidity :  JSType t1
                 => {auto 0 _ : Elem HTMLSelectElement (Types t1)}
                 -> (obj : t1)
                 -> JSIO Bool
  reportValidity a = tryJS "HTMLSelectElement.reportValidity"
                   $ HTMLSelectElement.prim__reportValidity (up a)
  
  export
  setCustomValidity :  JSType t1
                    => {auto 0 _ : Elem HTMLSelectElement (Types t1)}
                    -> (obj : t1)
                    -> (error : String)
                    -> JSIO ()
  setCustomValidity a b = primJS
                        $ HTMLSelectElement.prim__setCustomValidity (up a) b

namespace HTMLSlotElement
  
  export
  new : JSIO HTMLSlotElement
  new = primJS $ HTMLSlotElement.prim__new 
  
  export
  name : HTMLSlotElement -> Attribute True I String
  name = fromPrim "HTMLSlotElement.getname" prim__name prim__setName
  
  export
  assignedElements :  JSType t1
                   => JSType t2
                   => {auto 0 _ : Elem HTMLSlotElement (Types t1)}
                   -> {auto 0 _ : Elem AssignedNodesOptions (Types t2)}
                   -> (obj : t1)
                   -> (options : Optional t2)
                   -> JSIO (Array Element)
  assignedElements a b = primJS
                       $ HTMLSlotElement.prim__assignedElements (up a) (optUp b)

  export
  assignedElements' :  JSType t1
                    => {auto 0 _ : Elem HTMLSlotElement (Types t1)}
                    -> (obj : t1)
                    -> JSIO (Array Element)
  assignedElements' a = primJS
                      $ HTMLSlotElement.prim__assignedElements (up a) undef
  
  export
  assignedNodes :  JSType t1
                => JSType t2
                => {auto 0 _ : Elem HTMLSlotElement (Types t1)}
                -> {auto 0 _ : Elem AssignedNodesOptions (Types t2)}
                -> (obj : t1)
                -> (options : Optional t2)
                -> JSIO (Array Node)
  assignedNodes a b = primJS
                    $ HTMLSlotElement.prim__assignedNodes (up a) (optUp b)

  export
  assignedNodes' :  JSType t1
                 => {auto 0 _ : Elem HTMLSlotElement (Types t1)}
                 -> (obj : t1)
                 -> JSIO (Array Node)
  assignedNodes' a = primJS $ HTMLSlotElement.prim__assignedNodes (up a) undef

namespace HTMLSourceElement
  
  export
  new : JSIO HTMLSourceElement
  new = primJS $ HTMLSourceElement.prim__new 
  
  export
  height : HTMLSourceElement -> Attribute True I UInt32
  height = fromPrim "HTMLSourceElement.getheight" prim__height prim__setHeight
  
  export
  media : HTMLSourceElement -> Attribute True I String
  media = fromPrim "HTMLSourceElement.getmedia" prim__media prim__setMedia
  
  export
  sizes : HTMLSourceElement -> Attribute True I String
  sizes = fromPrim "HTMLSourceElement.getsizes" prim__sizes prim__setSizes
  
  export
  src : HTMLSourceElement -> Attribute True I String
  src = fromPrim "HTMLSourceElement.getsrc" prim__src prim__setSrc
  
  export
  srcset : HTMLSourceElement -> Attribute True I String
  srcset = fromPrim "HTMLSourceElement.getsrcset" prim__srcset prim__setSrcset
  
  export
  type : HTMLSourceElement -> Attribute True I String
  type = fromPrim "HTMLSourceElement.gettype" prim__type prim__setType
  
  export
  width : HTMLSourceElement -> Attribute True I UInt32
  width = fromPrim "HTMLSourceElement.getwidth" prim__width prim__setWidth

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
  media = fromPrim "HTMLStyleElement.getmedia" prim__media prim__setMedia
  
  export
  type : HTMLStyleElement -> Attribute True I String
  type = fromPrim "HTMLStyleElement.gettype" prim__type prim__setType

namespace HTMLTableCaptionElement
  
  export
  new : JSIO HTMLTableCaptionElement
  new = primJS $ HTMLTableCaptionElement.prim__new 
  
  export
  align : HTMLTableCaptionElement -> Attribute True I String
  align = fromPrim "HTMLTableCaptionElement.getalign" prim__align prim__setAlign

namespace HTMLTableCellElement
  
  export
  new : JSIO HTMLTableCellElement
  new = primJS $ HTMLTableCellElement.prim__new 
  
  export
  abbr : HTMLTableCellElement -> Attribute True I String
  abbr = fromPrim "HTMLTableCellElement.getabbr" prim__abbr prim__setAbbr
  
  export
  align : HTMLTableCellElement -> Attribute True I String
  align = fromPrim "HTMLTableCellElement.getalign" prim__align prim__setAlign
  
  export
  axis : HTMLTableCellElement -> Attribute True I String
  axis = fromPrim "HTMLTableCellElement.getaxis" prim__axis prim__setAxis
  
  export
  bgColor : HTMLTableCellElement -> Attribute True I String
  bgColor = fromPrim "HTMLTableCellElement.getbgColor"
                     prim__bgColor
                     prim__setBgColor
  
  export
  cellIndex :  JSType t1
            => {auto 0 _ : Elem HTMLTableCellElement (Types t1)}
            -> (obj : t1)
            -> JSIO Int32
  cellIndex a = primJS $ HTMLTableCellElement.prim__cellIndex (up a)
  
  export
  ch : HTMLTableCellElement -> Attribute True I String
  ch = fromPrim "HTMLTableCellElement.getch" prim__ch prim__setCh
  
  export
  chOff : HTMLTableCellElement -> Attribute True I String
  chOff = fromPrim "HTMLTableCellElement.getchOff" prim__chOff prim__setChOff
  
  export
  colSpan : HTMLTableCellElement -> Attribute True I UInt32
  colSpan = fromPrim "HTMLTableCellElement.getcolSpan"
                     prim__colSpan
                     prim__setColSpan
  
  export
  headers : HTMLTableCellElement -> Attribute True I String
  headers = fromPrim "HTMLTableCellElement.getheaders"
                     prim__headers
                     prim__setHeaders
  
  export
  height : HTMLTableCellElement -> Attribute True I String
  height = fromPrim "HTMLTableCellElement.getheight"
                    prim__height
                    prim__setHeight
  
  export
  noWrap : HTMLTableCellElement -> Attribute True I Bool
  noWrap = fromPrim "HTMLTableCellElement.getnoWrap"
                    prim__noWrap
                    prim__setNoWrap
  
  export
  rowSpan : HTMLTableCellElement -> Attribute True I UInt32
  rowSpan = fromPrim "HTMLTableCellElement.getrowSpan"
                     prim__rowSpan
                     prim__setRowSpan
  
  export
  scope : HTMLTableCellElement -> Attribute True I String
  scope = fromPrim "HTMLTableCellElement.getscope" prim__scope prim__setScope
  
  export
  vAlign : HTMLTableCellElement -> Attribute True I String
  vAlign = fromPrim "HTMLTableCellElement.getvAlign"
                    prim__vAlign
                    prim__setVAlign
  
  export
  width : HTMLTableCellElement -> Attribute True I String
  width = fromPrim "HTMLTableCellElement.getwidth" prim__width prim__setWidth

namespace HTMLTableColElement
  
  export
  new : JSIO HTMLTableColElement
  new = primJS $ HTMLTableColElement.prim__new 
  
  export
  align : HTMLTableColElement -> Attribute True I String
  align = fromPrim "HTMLTableColElement.getalign" prim__align prim__setAlign
  
  export
  ch : HTMLTableColElement -> Attribute True I String
  ch = fromPrim "HTMLTableColElement.getch" prim__ch prim__setCh
  
  export
  chOff : HTMLTableColElement -> Attribute True I String
  chOff = fromPrim "HTMLTableColElement.getchOff" prim__chOff prim__setChOff
  
  export
  span : HTMLTableColElement -> Attribute True I UInt32
  span = fromPrim "HTMLTableColElement.getspan" prim__span prim__setSpan
  
  export
  vAlign : HTMLTableColElement -> Attribute True I String
  vAlign = fromPrim "HTMLTableColElement.getvAlign" prim__vAlign prim__setVAlign
  
  export
  width : HTMLTableColElement -> Attribute True I String
  width = fromPrim "HTMLTableColElement.getwidth" prim__width prim__setWidth

namespace HTMLTableElement
  
  export
  new : JSIO HTMLTableElement
  new = primJS $ HTMLTableElement.prim__new 
  
  export
  align : HTMLTableElement -> Attribute True I String
  align = fromPrim "HTMLTableElement.getalign" prim__align prim__setAlign
  
  export
  bgColor : HTMLTableElement -> Attribute True I String
  bgColor = fromPrim "HTMLTableElement.getbgColor"
                     prim__bgColor
                     prim__setBgColor
  
  export
  border : HTMLTableElement -> Attribute True I String
  border = fromPrim "HTMLTableElement.getborder" prim__border prim__setBorder
  
  export
  caption : HTMLTableElement -> Attribute False Maybe HTMLTableCaptionElement
  caption = fromNullablePrim "HTMLTableElement.getcaption"
                             prim__caption
                             prim__setCaption
  
  export
  cellPadding : HTMLTableElement -> Attribute True I String
  cellPadding = fromPrim "HTMLTableElement.getcellPadding"
                         prim__cellPadding
                         prim__setCellPadding
  
  export
  cellSpacing : HTMLTableElement -> Attribute True I String
  cellSpacing = fromPrim "HTMLTableElement.getcellSpacing"
                         prim__cellSpacing
                         prim__setCellSpacing
  
  export
  frame : HTMLTableElement -> Attribute True I String
  frame = fromPrim "HTMLTableElement.getframe" prim__frame prim__setFrame
  
  export
  rows :  JSType t1
       => {auto 0 _ : Elem HTMLTableElement (Types t1)}
       -> (obj : t1)
       -> JSIO HTMLCollection
  rows a = primJS $ HTMLTableElement.prim__rows (up a)
  
  export
  rules : HTMLTableElement -> Attribute True I String
  rules = fromPrim "HTMLTableElement.getrules" prim__rules prim__setRules
  
  export
  summary : HTMLTableElement -> Attribute True I String
  summary = fromPrim "HTMLTableElement.getsummary"
                     prim__summary
                     prim__setSummary
  
  export
  tBodies :  JSType t1
          => {auto 0 _ : Elem HTMLTableElement (Types t1)}
          -> (obj : t1)
          -> JSIO HTMLCollection
  tBodies a = primJS $ HTMLTableElement.prim__tBodies (up a)
  
  export
  tFoot : HTMLTableElement -> Attribute False Maybe HTMLTableSectionElement
  tFoot = fromNullablePrim "HTMLTableElement.gettFoot"
                           prim__tFoot
                           prim__setTFoot
  
  export
  tHead : HTMLTableElement -> Attribute False Maybe HTMLTableSectionElement
  tHead = fromNullablePrim "HTMLTableElement.gettHead"
                           prim__tHead
                           prim__setTHead
  
  export
  width : HTMLTableElement -> Attribute True I String
  width = fromPrim "HTMLTableElement.getwidth" prim__width prim__setWidth
  
  export
  createCaption :  JSType t1
                => {auto 0 _ : Elem HTMLTableElement (Types t1)}
                -> (obj : t1)
                -> JSIO HTMLTableCaptionElement
  createCaption a = primJS $ HTMLTableElement.prim__createCaption (up a)
  
  export
  createTBody :  JSType t1
              => {auto 0 _ : Elem HTMLTableElement (Types t1)}
              -> (obj : t1)
              -> JSIO HTMLTableSectionElement
  createTBody a = primJS $ HTMLTableElement.prim__createTBody (up a)
  
  export
  createTFoot :  JSType t1
              => {auto 0 _ : Elem HTMLTableElement (Types t1)}
              -> (obj : t1)
              -> JSIO HTMLTableSectionElement
  createTFoot a = primJS $ HTMLTableElement.prim__createTFoot (up a)
  
  export
  createTHead :  JSType t1
              => {auto 0 _ : Elem HTMLTableElement (Types t1)}
              -> (obj : t1)
              -> JSIO HTMLTableSectionElement
  createTHead a = primJS $ HTMLTableElement.prim__createTHead (up a)
  
  export
  deleteCaption :  JSType t1
                => {auto 0 _ : Elem HTMLTableElement (Types t1)}
                -> (obj : t1)
                -> JSIO ()
  deleteCaption a = primJS $ HTMLTableElement.prim__deleteCaption (up a)
  
  export
  deleteRow :  JSType t1
            => {auto 0 _ : Elem HTMLTableElement (Types t1)}
            -> (obj : t1)
            -> (index : Int32)
            -> JSIO ()
  deleteRow a b = primJS $ HTMLTableElement.prim__deleteRow (up a) b
  
  export
  deleteTFoot :  JSType t1
              => {auto 0 _ : Elem HTMLTableElement (Types t1)}
              -> (obj : t1)
              -> JSIO ()
  deleteTFoot a = primJS $ HTMLTableElement.prim__deleteTFoot (up a)
  
  export
  deleteTHead :  JSType t1
              => {auto 0 _ : Elem HTMLTableElement (Types t1)}
              -> (obj : t1)
              -> JSIO ()
  deleteTHead a = primJS $ HTMLTableElement.prim__deleteTHead (up a)
  
  export
  insertRow :  JSType t1
            => {auto 0 _ : Elem HTMLTableElement (Types t1)}
            -> (obj : t1)
            -> (index : Optional Int32)
            -> JSIO HTMLTableRowElement
  insertRow a b = primJS $ HTMLTableElement.prim__insertRow (up a) (toFFI b)

  export
  insertRow' :  JSType t1
             => {auto 0 _ : Elem HTMLTableElement (Types t1)}
             -> (obj : t1)
             -> JSIO HTMLTableRowElement
  insertRow' a = primJS $ HTMLTableElement.prim__insertRow (up a) undef

namespace HTMLTableRowElement
  
  export
  new : JSIO HTMLTableRowElement
  new = primJS $ HTMLTableRowElement.prim__new 
  
  export
  align : HTMLTableRowElement -> Attribute True I String
  align = fromPrim "HTMLTableRowElement.getalign" prim__align prim__setAlign
  
  export
  bgColor : HTMLTableRowElement -> Attribute True I String
  bgColor = fromPrim "HTMLTableRowElement.getbgColor"
                     prim__bgColor
                     prim__setBgColor
  
  export
  cells :  JSType t1
        => {auto 0 _ : Elem HTMLTableRowElement (Types t1)}
        -> (obj : t1)
        -> JSIO HTMLCollection
  cells a = primJS $ HTMLTableRowElement.prim__cells (up a)
  
  export
  ch : HTMLTableRowElement -> Attribute True I String
  ch = fromPrim "HTMLTableRowElement.getch" prim__ch prim__setCh
  
  export
  chOff : HTMLTableRowElement -> Attribute True I String
  chOff = fromPrim "HTMLTableRowElement.getchOff" prim__chOff prim__setChOff
  
  export
  rowIndex :  JSType t1
           => {auto 0 _ : Elem HTMLTableRowElement (Types t1)}
           -> (obj : t1)
           -> JSIO Int32
  rowIndex a = primJS $ HTMLTableRowElement.prim__rowIndex (up a)
  
  export
  sectionRowIndex :  JSType t1
                  => {auto 0 _ : Elem HTMLTableRowElement (Types t1)}
                  -> (obj : t1)
                  -> JSIO Int32
  sectionRowIndex a = primJS $ HTMLTableRowElement.prim__sectionRowIndex (up a)
  
  export
  vAlign : HTMLTableRowElement -> Attribute True I String
  vAlign = fromPrim "HTMLTableRowElement.getvAlign" prim__vAlign prim__setVAlign
  
  export
  deleteCell :  JSType t1
             => {auto 0 _ : Elem HTMLTableRowElement (Types t1)}
             -> (obj : t1)
             -> (index : Int32)
             -> JSIO ()
  deleteCell a b = primJS $ HTMLTableRowElement.prim__deleteCell (up a) b
  
  export
  insertCell :  JSType t1
             => {auto 0 _ : Elem HTMLTableRowElement (Types t1)}
             -> (obj : t1)
             -> (index : Optional Int32)
             -> JSIO HTMLTableCellElement
  insertCell a b = primJS
                 $ HTMLTableRowElement.prim__insertCell (up a) (toFFI b)

  export
  insertCell' :  JSType t1
              => {auto 0 _ : Elem HTMLTableRowElement (Types t1)}
              -> (obj : t1)
              -> JSIO HTMLTableCellElement
  insertCell' a = primJS $ HTMLTableRowElement.prim__insertCell (up a) undef

namespace HTMLTableSectionElement
  
  export
  new : JSIO HTMLTableSectionElement
  new = primJS $ HTMLTableSectionElement.prim__new 
  
  export
  align : HTMLTableSectionElement -> Attribute True I String
  align = fromPrim "HTMLTableSectionElement.getalign" prim__align prim__setAlign
  
  export
  ch : HTMLTableSectionElement -> Attribute True I String
  ch = fromPrim "HTMLTableSectionElement.getch" prim__ch prim__setCh
  
  export
  chOff : HTMLTableSectionElement -> Attribute True I String
  chOff = fromPrim "HTMLTableSectionElement.getchOff" prim__chOff prim__setChOff
  
  export
  rows :  JSType t1
       => {auto 0 _ : Elem HTMLTableSectionElement (Types t1)}
       -> (obj : t1)
       -> JSIO HTMLCollection
  rows a = primJS $ HTMLTableSectionElement.prim__rows (up a)
  
  export
  vAlign : HTMLTableSectionElement -> Attribute True I String
  vAlign = fromPrim "HTMLTableSectionElement.getvAlign"
                    prim__vAlign
                    prim__setVAlign
  
  export
  deleteRow :  JSType t1
            => {auto 0 _ : Elem HTMLTableSectionElement (Types t1)}
            -> (obj : t1)
            -> (index : Int32)
            -> JSIO ()
  deleteRow a b = primJS $ HTMLTableSectionElement.prim__deleteRow (up a) b
  
  export
  insertRow :  JSType t1
            => {auto 0 _ : Elem HTMLTableSectionElement (Types t1)}
            -> (obj : t1)
            -> (index : Optional Int32)
            -> JSIO HTMLTableRowElement
  insertRow a b = primJS
                $ HTMLTableSectionElement.prim__insertRow (up a) (toFFI b)

  export
  insertRow' :  JSType t1
             => {auto 0 _ : Elem HTMLTableSectionElement (Types t1)}
             -> (obj : t1)
             -> JSIO HTMLTableRowElement
  insertRow' a = primJS $ HTMLTableSectionElement.prim__insertRow (up a) undef

namespace HTMLTemplateElement
  
  export
  new : JSIO HTMLTemplateElement
  new = primJS $ HTMLTemplateElement.prim__new 
  
  export
  content :  JSType t1
          => {auto 0 _ : Elem HTMLTemplateElement (Types t1)}
          -> (obj : t1)
          -> JSIO DocumentFragment
  content a = primJS $ HTMLTemplateElement.prim__content (up a)

namespace HTMLTextAreaElement
  
  export
  new : JSIO HTMLTextAreaElement
  new = primJS $ HTMLTextAreaElement.prim__new 
  
  export
  autocomplete : HTMLTextAreaElement -> Attribute True I String
  autocomplete = fromPrim "HTMLTextAreaElement.getautocomplete"
                          prim__autocomplete
                          prim__setAutocomplete
  
  export
  cols : HTMLTextAreaElement -> Attribute True I UInt32
  cols = fromPrim "HTMLTextAreaElement.getcols" prim__cols prim__setCols
  
  export
  defaultValue : HTMLTextAreaElement -> Attribute True I String
  defaultValue = fromPrim "HTMLTextAreaElement.getdefaultValue"
                          prim__defaultValue
                          prim__setDefaultValue
  
  export
  dirName : HTMLTextAreaElement -> Attribute True I String
  dirName = fromPrim "HTMLTextAreaElement.getdirName"
                     prim__dirName
                     prim__setDirName
  
  export
  disabled : HTMLTextAreaElement -> Attribute True I Bool
  disabled = fromPrim "HTMLTextAreaElement.getdisabled"
                      prim__disabled
                      prim__setDisabled
  
  export
  form :  JSType t1
       => {auto 0 _ : Elem HTMLTextAreaElement (Types t1)}
       -> (obj : t1)
       -> JSIO (Maybe HTMLFormElement)
  form a = tryJS "HTMLTextAreaElement.form"
         $ HTMLTextAreaElement.prim__form (up a)
  
  export
  labels :  JSType t1
         => {auto 0 _ : Elem HTMLTextAreaElement (Types t1)}
         -> (obj : t1)
         -> JSIO NodeList
  labels a = primJS $ HTMLTextAreaElement.prim__labels (up a)
  
  export
  maxLength : HTMLTextAreaElement -> Attribute True I Int32
  maxLength = fromPrim "HTMLTextAreaElement.getmaxLength"
                       prim__maxLength
                       prim__setMaxLength
  
  export
  minLength : HTMLTextAreaElement -> Attribute True I Int32
  minLength = fromPrim "HTMLTextAreaElement.getminLength"
                       prim__minLength
                       prim__setMinLength
  
  export
  name : HTMLTextAreaElement -> Attribute True I String
  name = fromPrim "HTMLTextAreaElement.getname" prim__name prim__setName
  
  export
  placeholder : HTMLTextAreaElement -> Attribute True I String
  placeholder = fromPrim "HTMLTextAreaElement.getplaceholder"
                         prim__placeholder
                         prim__setPlaceholder
  
  export
  readOnly : HTMLTextAreaElement -> Attribute True I Bool
  readOnly = fromPrim "HTMLTextAreaElement.getreadOnly"
                      prim__readOnly
                      prim__setReadOnly
  
  export
  required : HTMLTextAreaElement -> Attribute True I Bool
  required = fromPrim "HTMLTextAreaElement.getrequired"
                      prim__required
                      prim__setRequired
  
  export
  rows : HTMLTextAreaElement -> Attribute True I UInt32
  rows = fromPrim "HTMLTextAreaElement.getrows" prim__rows prim__setRows
  
  export
  selectionDirection : HTMLTextAreaElement -> Attribute True I String
  selectionDirection = fromPrim "HTMLTextAreaElement.getselectionDirection"
                                prim__selectionDirection
                                prim__setSelectionDirection
  
  export
  selectionEnd : HTMLTextAreaElement -> Attribute True I UInt32
  selectionEnd = fromPrim "HTMLTextAreaElement.getselectionEnd"
                          prim__selectionEnd
                          prim__setSelectionEnd
  
  export
  selectionStart : HTMLTextAreaElement -> Attribute True I UInt32
  selectionStart = fromPrim "HTMLTextAreaElement.getselectionStart"
                            prim__selectionStart
                            prim__setSelectionStart
  
  export
  textLength :  JSType t1
             => {auto 0 _ : Elem HTMLTextAreaElement (Types t1)}
             -> (obj : t1)
             -> JSIO UInt32
  textLength a = primJS $ HTMLTextAreaElement.prim__textLength (up a)
  
  export
  type :  JSType t1
       => {auto 0 _ : Elem HTMLTextAreaElement (Types t1)}
       -> (obj : t1)
       -> JSIO String
  type a = primJS $ HTMLTextAreaElement.prim__type (up a)
  
  export
  validationMessage :  JSType t1
                    => {auto 0 _ : Elem HTMLTextAreaElement (Types t1)}
                    -> (obj : t1)
                    -> JSIO String
  validationMessage a = primJS
                      $ HTMLTextAreaElement.prim__validationMessage (up a)
  
  export
  validity :  JSType t1
           => {auto 0 _ : Elem HTMLTextAreaElement (Types t1)}
           -> (obj : t1)
           -> JSIO ValidityState
  validity a = primJS $ HTMLTextAreaElement.prim__validity (up a)
  
  export
  value : HTMLTextAreaElement -> Attribute True I String
  value = fromPrim "HTMLTextAreaElement.getvalue" prim__value prim__setValue
  
  export
  willValidate :  JSType t1
               => {auto 0 _ : Elem HTMLTextAreaElement (Types t1)}
               -> (obj : t1)
               -> JSIO Bool
  willValidate a = tryJS "HTMLTextAreaElement.willValidate"
                 $ HTMLTextAreaElement.prim__willValidate (up a)
  
  export
  wrap : HTMLTextAreaElement -> Attribute True I String
  wrap = fromPrim "HTMLTextAreaElement.getwrap" prim__wrap prim__setWrap
  
  export
  checkValidity :  JSType t1
                => {auto 0 _ : Elem HTMLTextAreaElement (Types t1)}
                -> (obj : t1)
                -> JSIO Bool
  checkValidity a = tryJS "HTMLTextAreaElement.checkValidity"
                  $ HTMLTextAreaElement.prim__checkValidity (up a)
  
  export
  reportValidity :  JSType t1
                 => {auto 0 _ : Elem HTMLTextAreaElement (Types t1)}
                 -> (obj : t1)
                 -> JSIO Bool
  reportValidity a = tryJS "HTMLTextAreaElement.reportValidity"
                   $ HTMLTextAreaElement.prim__reportValidity (up a)
  
  export
  select :  JSType t1
         => {auto 0 _ : Elem HTMLTextAreaElement (Types t1)}
         -> (obj : t1)
         -> JSIO ()
  select a = primJS $ HTMLTextAreaElement.prim__select (up a)
  
  export
  setCustomValidity :  JSType t1
                    => {auto 0 _ : Elem HTMLTextAreaElement (Types t1)}
                    -> (obj : t1)
                    -> (error : String)
                    -> JSIO ()
  setCustomValidity a b = primJS
                        $ HTMLTextAreaElement.prim__setCustomValidity (up a) b
  
  export
  setRangeText :  JSType t1
               => {auto 0 _ : Elem HTMLTextAreaElement (Types t1)}
               -> (obj : t1)
               -> (replacement : String)
               -> JSIO ()
  setRangeText a b = primJS $ HTMLTextAreaElement.prim__setRangeText (up a) b
  
  export
  setRangeText1 :  JSType t1
                => {auto 0 _ : Elem HTMLTextAreaElement (Types t1)}
                -> (obj : t1)
                -> (replacement : String)
                -> (start : UInt32)
                -> (end : UInt32)
                -> (selectionMode : Optional SelectionMode)
                -> JSIO ()
  setRangeText1 a b c d e = primJS
                          $ HTMLTextAreaElement.prim__setRangeText1 (up a)
                                                                    b
                                                                    c
                                                                    d
                                                                    (toFFI e)

  export
  setRangeText1' :  JSType t1
                 => {auto 0 _ : Elem HTMLTextAreaElement (Types t1)}
                 -> (obj : t1)
                 -> (replacement : String)
                 -> (start : UInt32)
                 -> (end : UInt32)
                 -> JSIO ()
  setRangeText1' a b c d = primJS
                         $ HTMLTextAreaElement.prim__setRangeText1 (up a)
                                                                   b
                                                                   c
                                                                   d
                                                                   undef
  
  export
  setSelectionRange :  JSType t1
                    => {auto 0 _ : Elem HTMLTextAreaElement (Types t1)}
                    -> (obj : t1)
                    -> (start : UInt32)
                    -> (end : UInt32)
                    -> (direction : Optional String)
                    -> JSIO ()
  setSelectionRange a b c d = primJS
                            $ HTMLTextAreaElement.prim__setSelectionRange (up a)
                                                                          b
                                                                          c
                                                                          (toFFI d)

  export
  setSelectionRange' :  JSType t1
                     => {auto 0 _ : Elem HTMLTextAreaElement (Types t1)}
                     -> (obj : t1)
                     -> (start : UInt32)
                     -> (end : UInt32)
                     -> JSIO ()
  setSelectionRange' a b c = primJS
                           $ HTMLTextAreaElement.prim__setSelectionRange (up a)
                                                                         b
                                                                         c
                                                                         undef

namespace HTMLTimeElement
  
  export
  new : JSIO HTMLTimeElement
  new = primJS $ HTMLTimeElement.prim__new 
  
  export
  dateTime : HTMLTimeElement -> Attribute True I String
  dateTime = fromPrim "HTMLTimeElement.getdateTime"
                      prim__dateTime
                      prim__setDateTime

namespace HTMLTitleElement
  
  export
  new : JSIO HTMLTitleElement
  new = primJS $ HTMLTitleElement.prim__new 
  
  export
  text : HTMLTitleElement -> Attribute True I String
  text = fromPrim "HTMLTitleElement.gettext" prim__text prim__setText

namespace HTMLTrackElement
  
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
  default_ : HTMLTrackElement -> Attribute True I Bool
  default_ = fromPrim "HTMLTrackElement.getdefault"
                      prim__default
                      prim__setDefault
  
  export
  kind : HTMLTrackElement -> Attribute True I String
  kind = fromPrim "HTMLTrackElement.getkind" prim__kind prim__setKind
  
  export
  label : HTMLTrackElement -> Attribute True I String
  label = fromPrim "HTMLTrackElement.getlabel" prim__label prim__setLabel
  
  export
  readyState :  JSType t1
             => {auto 0 _ : Elem HTMLTrackElement (Types t1)}
             -> (obj : t1)
             -> JSIO UInt16
  readyState a = primJS $ HTMLTrackElement.prim__readyState (up a)
  
  export
  src : HTMLTrackElement -> Attribute True I String
  src = fromPrim "HTMLTrackElement.getsrc" prim__src prim__setSrc
  
  export
  srclang : HTMLTrackElement -> Attribute True I String
  srclang = fromPrim "HTMLTrackElement.getsrclang"
                     prim__srclang
                     prim__setSrclang
  
  export
  track :  JSType t1
        => {auto 0 _ : Elem HTMLTrackElement (Types t1)}
        -> (obj : t1)
        -> JSIO TextTrack
  track a = primJS $ HTMLTrackElement.prim__track (up a)

namespace HTMLUListElement
  
  export
  new : JSIO HTMLUListElement
  new = primJS $ HTMLUListElement.prim__new 
  
  export
  compact : HTMLUListElement -> Attribute True I Bool
  compact = fromPrim "HTMLUListElement.getcompact"
                     prim__compact
                     prim__setCompact
  
  export
  type : HTMLUListElement -> Attribute True I String
  type = fromPrim "HTMLUListElement.gettype" prim__type prim__setType


namespace HTMLVideoElement
  
  export
  new : JSIO HTMLVideoElement
  new = primJS $ HTMLVideoElement.prim__new 
  
  export
  height : HTMLVideoElement -> Attribute True I UInt32
  height = fromPrim "HTMLVideoElement.getheight" prim__height prim__setHeight
  
  export
  playsInline : HTMLVideoElement -> Attribute True I Bool
  playsInline = fromPrim "HTMLVideoElement.getplaysInline"
                         prim__playsInline
                         prim__setPlaysInline
  
  export
  poster : HTMLVideoElement -> Attribute True I String
  poster = fromPrim "HTMLVideoElement.getposter" prim__poster prim__setPoster
  
  export
  videoHeight :  JSType t1
              => {auto 0 _ : Elem HTMLVideoElement (Types t1)}
              -> (obj : t1)
              -> JSIO UInt32
  videoHeight a = primJS $ HTMLVideoElement.prim__videoHeight (up a)
  
  export
  videoWidth :  JSType t1
             => {auto 0 _ : Elem HTMLVideoElement (Types t1)}
             -> (obj : t1)
             -> JSIO UInt32
  videoWidth a = primJS $ HTMLVideoElement.prim__videoWidth (up a)
  
  export
  width : HTMLVideoElement -> Attribute True I UInt32
  width = fromPrim "HTMLVideoElement.getwidth" prim__width prim__setWidth

namespace HashChangeEvent
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem HashChangeEventInit (Types t1)}
      -> (type : String)
      -> (eventInitDict : Optional t1)
      -> JSIO HashChangeEvent
  new a b = primJS $ HashChangeEvent.prim__new a (optUp b)

  export
  new' : (type : String) -> JSIO HashChangeEvent
  new' a = primJS $ HashChangeEvent.prim__new a undef
  
  export
  newURL :  JSType t1
         => {auto 0 _ : Elem HashChangeEvent (Types t1)}
         -> (obj : t1)
         -> JSIO String
  newURL a = primJS $ HashChangeEvent.prim__newURL (up a)
  
  export
  oldURL :  JSType t1
         => {auto 0 _ : Elem HashChangeEvent (Types t1)}
         -> (obj : t1)
         -> JSIO String
  oldURL a = primJS $ HashChangeEvent.prim__oldURL (up a)

namespace History
  
  export
  length :  JSType t1
         => {auto 0 _ : Elem History (Types t1)}
         -> (obj : t1)
         -> JSIO UInt32
  length a = primJS $ History.prim__length (up a)
  
  export
  scrollRestoration : History -> Attribute True I ScrollRestoration
  scrollRestoration = fromPrim "History.getscrollRestoration"
                               prim__scrollRestoration
                               prim__setScrollRestoration
  
  export
  state :  JSType t1
        => {auto 0 _ : Elem History (Types t1)}
        -> (obj : t1)
        -> JSIO Any
  state a = tryJS "History.state" $ History.prim__state (up a)
  
  export
  back :  JSType t1
       => {auto 0 _ : Elem History (Types t1)}
       -> (obj : t1)
       -> JSIO ()
  back a = primJS $ History.prim__back (up a)
  
  export
  forward :  JSType t1
          => {auto 0 _ : Elem History (Types t1)}
          -> (obj : t1)
          -> JSIO ()
  forward a = primJS $ History.prim__forward (up a)
  
  export
  go :  JSType t1
     => {auto 0 _ : Elem History (Types t1)}
     -> (obj : t1)
     -> (delta : Optional Int32)
     -> JSIO ()
  go a b = primJS $ History.prim__go (up a) (toFFI b)

  export
  go' :  JSType t1
      => {auto 0 _ : Elem History (Types t1)}
      -> (obj : t1)
      -> JSIO ()
  go' a = primJS $ History.prim__go (up a) undef
  
  export
  pushState :  JSType t1
            => {auto 0 _ : Elem History (Types t1)}
            -> (obj : t1)
            -> (data_ : Any)
            -> (unused : String)
            -> (url : Optional (Maybe String))
            -> JSIO ()
  pushState a b c d = primJS
                    $ History.prim__pushState (up a) (toFFI b) c (toFFI d)

  export
  pushState' :  JSType t1
             => {auto 0 _ : Elem History (Types t1)}
             -> (obj : t1)
             -> (data_ : Any)
             -> (unused : String)
             -> JSIO ()
  pushState' a b c = primJS $ History.prim__pushState (up a) (toFFI b) c undef
  
  export
  replaceState :  JSType t1
               => {auto 0 _ : Elem History (Types t1)}
               -> (obj : t1)
               -> (data_ : Any)
               -> (unused : String)
               -> (url : Optional (Maybe String))
               -> JSIO ()
  replaceState a b c d = primJS
                       $ History.prim__replaceState (up a) (toFFI b) c (toFFI d)

  export
  replaceState' :  JSType t1
                => {auto 0 _ : Elem History (Types t1)}
                -> (obj : t1)
                -> (data_ : Any)
                -> (unused : String)
                -> JSIO ()
  replaceState' a b c = primJS
                      $ History.prim__replaceState (up a) (toFFI b) c undef

namespace ImageBitmap
  
  export
  height :  JSType t1
         => {auto 0 _ : Elem ImageBitmap (Types t1)}
         -> (obj : t1)
         -> JSIO UInt32
  height a = primJS $ ImageBitmap.prim__height (up a)
  
  export
  width :  JSType t1
        => {auto 0 _ : Elem ImageBitmap (Types t1)}
        -> (obj : t1)
        -> JSIO UInt32
  width a = primJS $ ImageBitmap.prim__width (up a)
  
  export
  close :  JSType t1
        => {auto 0 _ : Elem ImageBitmap (Types t1)}
        -> (obj : t1)
        -> JSIO ()
  close a = primJS $ ImageBitmap.prim__close (up a)

namespace ImageBitmapRenderingContext
  
  export
  canvas :  JSType t1
         => {auto 0 _ : Elem ImageBitmapRenderingContext (Types t1)}
         -> (obj : t1)
         -> JSIO (NS I [ HTMLCanvasElement , OffscreenCanvas ])
  canvas a = tryJS "ImageBitmapRenderingContext.canvas"
           $ ImageBitmapRenderingContext.prim__canvas (up a)
  
  export
  transferFromImageBitmap :  JSType t1
                          => JSType t2
                          => {auto 0 _ : Elem ImageBitmapRenderingContext (Types t1)}
                          -> {auto 0 _ : Elem ImageBitmap (Types t2)}
                          -> (obj : t1)
                          -> (bitmap : Maybe t2)
                          -> JSIO ()
  transferFromImageBitmap a b = primJS
                              $ ImageBitmapRenderingContext.prim__transferFromImageBitmap (up a)
                                                                                          (mayUp b)

namespace ImageData
  
  export
  new : (sw : UInt32) -> (sh : UInt32) -> JSIO ImageData
  new a b = primJS $ ImageData.prim__new a b
  
  export
  new1 :  (data_ : UInt8ClampedArray)
       -> (sw : UInt32)
       -> (sh : Optional UInt32)
       -> JSIO ImageData
  new1 a b c = primJS $ ImageData.prim__new1 a b (toFFI c)

  export
  new1' : (data_ : UInt8ClampedArray) -> (sw : UInt32) -> JSIO ImageData
  new1' a b = primJS $ ImageData.prim__new1 a b undef
  
  export
  data_ :  JSType t1
        => {auto 0 _ : Elem ImageData (Types t1)}
        -> (obj : t1)
        -> JSIO UInt8ClampedArray
  data_ a = primJS $ ImageData.prim__data (up a)
  
  export
  height :  JSType t1
         => {auto 0 _ : Elem ImageData (Types t1)}
         -> (obj : t1)
         -> JSIO UInt32
  height a = primJS $ ImageData.prim__height (up a)
  
  export
  width :  JSType t1
        => {auto 0 _ : Elem ImageData (Types t1)}
        -> (obj : t1)
        -> JSIO UInt32
  width a = primJS $ ImageData.prim__width (up a)

namespace Location
  
  export
  ancestorOrigins :  JSType t1
                  => {auto 0 _ : Elem Location (Types t1)}
                  -> (obj : t1)
                  -> JSIO DOMStringList
  ancestorOrigins a = primJS $ Location.prim__ancestorOrigins (up a)
  
  export
  hash : Location -> Attribute True I String
  hash = fromPrim "Location.gethash" prim__hash prim__setHash
  
  export
  host : Location -> Attribute True I String
  host = fromPrim "Location.gethost" prim__host prim__setHost
  
  export
  hostname : Location -> Attribute True I String
  hostname = fromPrim "Location.gethostname" prim__hostname prim__setHostname
  
  export
  href : Location -> Attribute True I String
  href = fromPrim "Location.gethref" prim__href prim__setHref
  
  export
  origin :  JSType t1
         => {auto 0 _ : Elem Location (Types t1)}
         -> (obj : t1)
         -> JSIO String
  origin a = primJS $ Location.prim__origin (up a)
  
  export
  pathname : Location -> Attribute True I String
  pathname = fromPrim "Location.getpathname" prim__pathname prim__setPathname
  
  export
  port : Location -> Attribute True I String
  port = fromPrim "Location.getport" prim__port prim__setPort
  
  export
  protocol : Location -> Attribute True I String
  protocol = fromPrim "Location.getprotocol" prim__protocol prim__setProtocol
  
  export
  search : Location -> Attribute True I String
  search = fromPrim "Location.getsearch" prim__search prim__setSearch
  
  export
  assign :  JSType t1
         => {auto 0 _ : Elem Location (Types t1)}
         -> (obj : t1)
         -> (url : String)
         -> JSIO ()
  assign a b = primJS $ Location.prim__assign (up a) b
  
  export
  reload :  JSType t1
         => {auto 0 _ : Elem Location (Types t1)}
         -> (obj : t1)
         -> JSIO ()
  reload a = primJS $ Location.prim__reload (up a)
  
  export
  replace :  JSType t1
          => {auto 0 _ : Elem Location (Types t1)}
          -> (obj : t1)
          -> (url : String)
          -> JSIO ()
  replace a b = primJS $ Location.prim__replace (up a) b

namespace MediaError
  
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
  code :  JSType t1
       => {auto 0 _ : Elem MediaError (Types t1)}
       -> (obj : t1)
       -> JSIO UInt16
  code a = primJS $ MediaError.prim__code (up a)
  
  export
  message :  JSType t1
          => {auto 0 _ : Elem MediaError (Types t1)}
          -> (obj : t1)
          -> JSIO String
  message a = primJS $ MediaError.prim__message (up a)

namespace MessageChannel
  
  export
  new : JSIO MessageChannel
  new = primJS $ MessageChannel.prim__new 
  
  export
  port1 :  JSType t1
        => {auto 0 _ : Elem MessageChannel (Types t1)}
        -> (obj : t1)
        -> JSIO MessagePort
  port1 a = primJS $ MessageChannel.prim__port1 (up a)
  
  export
  port2 :  JSType t1
        => {auto 0 _ : Elem MessageChannel (Types t1)}
        -> (obj : t1)
        -> JSIO MessagePort
  port2 a = primJS $ MessageChannel.prim__port2 (up a)

namespace MessageEvent
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem MessageEventInit (Types t1)}
      -> (type : String)
      -> (eventInitDict : Optional t1)
      -> JSIO MessageEvent
  new a b = primJS $ MessageEvent.prim__new a (optUp b)

  export
  new' : (type : String) -> JSIO MessageEvent
  new' a = primJS $ MessageEvent.prim__new a undef
  
  export
  data_ :  JSType t1
        => {auto 0 _ : Elem MessageEvent (Types t1)}
        -> (obj : t1)
        -> JSIO Any
  data_ a = tryJS "MessageEvent.data_" $ MessageEvent.prim__data (up a)
  
  export
  lastEventId :  JSType t1
              => {auto 0 _ : Elem MessageEvent (Types t1)}
              -> (obj : t1)
              -> JSIO String
  lastEventId a = primJS $ MessageEvent.prim__lastEventId (up a)
  
  export
  origin :  JSType t1
         => {auto 0 _ : Elem MessageEvent (Types t1)}
         -> (obj : t1)
         -> JSIO String
  origin a = primJS $ MessageEvent.prim__origin (up a)
  
  export
  ports :  JSType t1
        => {auto 0 _ : Elem MessageEvent (Types t1)}
        -> (obj : t1)
        -> JSIO (Array MessagePort)
  ports a = primJS $ MessageEvent.prim__ports (up a)
  
  export
  source :  JSType t1
         => {auto 0 _ : Elem MessageEvent (Types t1)}
         -> (obj : t1)
         -> JSIO (Maybe (Union3 WindowProxy MessagePort ServiceWorker))
  source a = tryJS "MessageEvent.source" $ MessageEvent.prim__source (up a)
  
  export
  initMessageEvent :  JSType t1
                   => {auto 0 _ : Elem MessageEvent (Types t1)}
                   -> (obj : t1)
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
                                     $ MessageEvent.prim__initMessageEvent (up a)
                                                                           b
                                                                           (toFFI c)
                                                                           (toFFI d)
                                                                           (toFFI e)
                                                                           (toFFI f)
                                                                           (toFFI g)
                                                                           (toFFI h)
                                                                           (toFFI i)

  export
  initMessageEvent' :  JSType t1
                    => {auto 0 _ : Elem MessageEvent (Types t1)}
                    -> (obj : t1)
                    -> (type : String)
                    -> JSIO ()
  initMessageEvent' a b = primJS
                        $ MessageEvent.prim__initMessageEvent (up a)
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
  onmessage = fromNullablePrim "MessagePort.getonmessage"
                               prim__onmessage
                               prim__setOnmessage
  
  export
  onmessageerror : MessagePort -> Attribute False Maybe EventHandlerNonNull
  onmessageerror = fromNullablePrim "MessagePort.getonmessageerror"
                                    prim__onmessageerror
                                    prim__setOnmessageerror
  
  export
  close :  JSType t1
        => {auto 0 _ : Elem MessagePort (Types t1)}
        -> (obj : t1)
        -> JSIO ()
  close a = primJS $ MessagePort.prim__close (up a)
  
  export
  postMessage :  JSType t1
              => {auto 0 _ : Elem MessagePort (Types t1)}
              -> (obj : t1)
              -> (message : Any)
              -> (transfer : Array Object)
              -> JSIO ()
  postMessage a b c = primJS $ MessagePort.prim__postMessage (up a) (toFFI b) c
  
  export
  postMessage1 :  JSType t1
               => JSType t2
               => {auto 0 _ : Elem MessagePort (Types t1)}
               -> {auto 0 _ : Elem PostMessageOptions (Types t2)}
               -> (obj : t1)
               -> (message : Any)
               -> (options : Optional t2)
               -> JSIO ()
  postMessage1 a b c = primJS
                     $ MessagePort.prim__postMessage1 (up a) (toFFI b) (optUp c)

  export
  postMessage1' :  JSType t1
                => {auto 0 _ : Elem MessagePort (Types t1)}
                -> (obj : t1)
                -> (message : Any)
                -> JSIO ()
  postMessage1' a b = primJS
                    $ MessagePort.prim__postMessage1 (up a) (toFFI b) undef
  
  export
  start :  JSType t1
        => {auto 0 _ : Elem MessagePort (Types t1)}
        -> (obj : t1)
        -> JSIO ()
  start a = primJS $ MessagePort.prim__start (up a)

namespace MimeType
  
  export
  description :  JSType t1
              => {auto 0 _ : Elem MimeType (Types t1)}
              -> (obj : t1)
              -> JSIO ()
  description a = primJS $ MimeType.prim__description (up a)
  
  export
  enabledPlugin :  JSType t1
                => {auto 0 _ : Elem MimeType (Types t1)}
                -> (obj : t1)
                -> JSIO ()
  enabledPlugin a = primJS $ MimeType.prim__enabledPlugin (up a)
  
  export
  suffixes :  JSType t1
           => {auto 0 _ : Elem MimeType (Types t1)}
           -> (obj : t1)
           -> JSIO ()
  suffixes a = primJS $ MimeType.prim__suffixes (up a)
  
  export
  type :  JSType t1
       => {auto 0 _ : Elem MimeType (Types t1)}
       -> (obj : t1)
       -> JSIO ()
  type a = primJS $ MimeType.prim__type (up a)

namespace MimeTypeArray
  
  export
  length :  JSType t1
         => {auto 0 _ : Elem MimeTypeArray (Types t1)}
         -> (obj : t1)
         -> JSIO UInt32
  length a = primJS $ MimeTypeArray.prim__length (up a)
  
  export
  item :  JSType t1
       => {auto 0 _ : Elem MimeTypeArray (Types t1)}
       -> (obj : t1)
       -> (index : UInt32)
       -> JSIO (Maybe Object)
  item a b = tryJS "MimeTypeArray.item" $ MimeTypeArray.prim__item (up a) b
  
  export
  namedItem :  JSType t1
            => {auto 0 _ : Elem MimeTypeArray (Types t1)}
            -> (obj : t1)
            -> (name : String)
            -> JSIO (Maybe Object)
  namedItem a b = tryJS "MimeTypeArray.namedItem"
                $ MimeTypeArray.prim__namedItem (up a) b

namespace Navigator
  
  export
  clipboard :  JSType t1
            => {auto 0 _ : Elem Navigator (Types t1)}
            -> (obj : t1)
            -> JSIO Clipboard
  clipboard a = primJS $ Navigator.prim__clipboard (up a)
  
  export
  mediaDevices :  JSType t1
               => {auto 0 _ : Elem Navigator (Types t1)}
               -> (obj : t1)
               -> JSIO MediaDevices
  mediaDevices a = primJS $ Navigator.prim__mediaDevices (up a)
  
  export
  permissions :  JSType t1
              => {auto 0 _ : Elem Navigator (Types t1)}
              -> (obj : t1)
              -> JSIO Permissions
  permissions a = primJS $ Navigator.prim__permissions (up a)
  
  export
  serviceWorker :  JSType t1
                => {auto 0 _ : Elem Navigator (Types t1)}
                -> (obj : t1)
                -> JSIO ServiceWorkerContainer
  serviceWorker a = primJS $ Navigator.prim__serviceWorker (up a)
  
  export
  getUserMedia :  JSType t1
               => JSType t2
               => {auto 0 _ : Elem Navigator (Types t1)}
               -> {auto 0 _ : Elem MediaStreamConstraints (Types t2)}
               -> (obj : t1)
               -> (constraints : t2)
               -> (successCallback : NavigatorUserMediaSuccessCallback)
               -> (errorCallback : NavigatorUserMediaErrorCallback)
               -> JSIO ()
  getUserMedia a b c d = primJS $ Navigator.prim__getUserMedia (up a) (up b) c d

namespace OffscreenCanvas
  
  export
  new : (width : UInt64) -> (height : UInt64) -> JSIO OffscreenCanvas
  new a b = primJS $ OffscreenCanvas.prim__new a b
  
  export
  height : OffscreenCanvas -> Attribute True I UInt64
  height = fromPrim "OffscreenCanvas.getheight" prim__height prim__setHeight
  
  export
  width : OffscreenCanvas -> Attribute True I UInt64
  width = fromPrim "OffscreenCanvas.getwidth" prim__width prim__setWidth
  
  export
  convertToBlob :  JSType t1
                => JSType t2
                => {auto 0 _ : Elem OffscreenCanvas (Types t1)}
                -> {auto 0 _ : Elem ImageEncodeOptions (Types t2)}
                -> (obj : t1)
                -> (options : Optional t2)
                -> JSIO (Promise Blob)
  convertToBlob a b = primJS
                    $ OffscreenCanvas.prim__convertToBlob (up a) (optUp b)

  export
  convertToBlob' :  JSType t1
                 => {auto 0 _ : Elem OffscreenCanvas (Types t1)}
                 -> (obj : t1)
                 -> JSIO (Promise Blob)
  convertToBlob' a = primJS $ OffscreenCanvas.prim__convertToBlob (up a) undef
  
  export
  getContext :  JSType t1
             => {auto 0 _ : Elem OffscreenCanvas (Types t1)}
             -> (obj : t1)
             -> (contextId : OffscreenRenderingContextId)
             -> (options : Optional Any)
             -> JSIO (Maybe (NS I [ OffscreenCanvasRenderingContext2D
                                  , ImageBitmapRenderingContext
                                  , WebGLRenderingContext
                                  , WebGL2RenderingContext
                                  ]))
  getContext a b c = tryJS "OffscreenCanvas.getContext"
                   $ OffscreenCanvas.prim__getContext (up a) (toFFI b) (toFFI c)

  export
  getContext' :  JSType t1
              => {auto 0 _ : Elem OffscreenCanvas (Types t1)}
              -> (obj : t1)
              -> (contextId : OffscreenRenderingContextId)
              -> JSIO (Maybe (NS I [ OffscreenCanvasRenderingContext2D
                                   , ImageBitmapRenderingContext
                                   , WebGLRenderingContext
                                   , WebGL2RenderingContext
                                   ]))
  getContext' a b = tryJS "OffscreenCanvas.getContext'"
                  $ OffscreenCanvas.prim__getContext (up a) (toFFI b) undef
  
  export
  transferToImageBitmap :  JSType t1
                        => {auto 0 _ : Elem OffscreenCanvas (Types t1)}
                        -> (obj : t1)
                        -> JSIO ImageBitmap
  transferToImageBitmap a = primJS
                          $ OffscreenCanvas.prim__transferToImageBitmap (up a)

namespace OffscreenCanvasRenderingContext2D
  
  export
  canvas :  JSType t1
         => {auto 0 _ : Elem OffscreenCanvasRenderingContext2D (Types t1)}
         -> (obj : t1)
         -> JSIO OffscreenCanvas
  canvas a = primJS $ OffscreenCanvasRenderingContext2D.prim__canvas (up a)
  
  export
  commit :  JSType t1
         => {auto 0 _ : Elem OffscreenCanvasRenderingContext2D (Types t1)}
         -> (obj : t1)
         -> JSIO ()
  commit a = primJS $ OffscreenCanvasRenderingContext2D.prim__commit (up a)

namespace PageTransitionEvent
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem PageTransitionEventInit (Types t1)}
      -> (type : String)
      -> (eventInitDict : Optional t1)
      -> JSIO PageTransitionEvent
  new a b = primJS $ PageTransitionEvent.prim__new a (optUp b)

  export
  new' : (type : String) -> JSIO PageTransitionEvent
  new' a = primJS $ PageTransitionEvent.prim__new a undef
  
  export
  persisted :  JSType t1
            => {auto 0 _ : Elem PageTransitionEvent (Types t1)}
            -> (obj : t1)
            -> JSIO Bool
  persisted a = tryJS "PageTransitionEvent.persisted"
              $ PageTransitionEvent.prim__persisted (up a)

namespace Path2D
  
  export
  new : (path : Optional (NS I [ Path2D , String ])) -> JSIO Path2D
  new a = primJS $ Path2D.prim__new (toFFI a)

  export
  new' : JSIO Path2D
  new' = primJS $ Path2D.prim__new undef
  
  export
  addPath :  JSType t1
          => JSType t2
          => JSType t3
          => {auto 0 _ : Elem Path2D (Types t1)}
          -> {auto 0 _ : Elem Path2D (Types t2)}
          -> {auto 0 _ : Elem DOMMatrix2DInit (Types t3)}
          -> (obj : t1)
          -> (path : t2)
          -> (transform : Optional t3)
          -> JSIO ()
  addPath a b c = primJS $ Path2D.prim__addPath (up a) (up b) (optUp c)

  export
  addPath' :  JSType t1
           => JSType t2
           => {auto 0 _ : Elem Path2D (Types t1)}
           -> {auto 0 _ : Elem Path2D (Types t2)}
           -> (obj : t1)
           -> (path : t2)
           -> JSIO ()
  addPath' a b = primJS $ Path2D.prim__addPath (up a) (up b) undef

namespace Plugin
  
  export
  description :  JSType t1
              => {auto 0 _ : Elem Plugin (Types t1)}
              -> (obj : t1)
              -> JSIO ()
  description a = primJS $ Plugin.prim__description (up a)
  
  export
  filename :  JSType t1
           => {auto 0 _ : Elem Plugin (Types t1)}
           -> (obj : t1)
           -> JSIO ()
  filename a = primJS $ Plugin.prim__filename (up a)
  
  export
  length :  JSType t1
         => {auto 0 _ : Elem Plugin (Types t1)}
         -> (obj : t1)
         -> JSIO ()
  length a = primJS $ Plugin.prim__length (up a)
  
  export
  name :  JSType t1
       => {auto 0 _ : Elem Plugin (Types t1)}
       -> (obj : t1)
       -> JSIO ()
  name a = primJS $ Plugin.prim__name (up a)
  
  export
  item :  JSType t1
       => {auto 0 _ : Elem Plugin (Types t1)}
       -> (obj : t1)
       -> (index : UInt32)
       -> JSIO ()
  item a b = primJS $ Plugin.prim__item (up a) b
  
  export
  namedItem :  JSType t1
            => {auto 0 _ : Elem Plugin (Types t1)}
            -> (obj : t1)
            -> (name : String)
            -> JSIO ()
  namedItem a b = primJS $ Plugin.prim__namedItem (up a) b

namespace PluginArray
  
  export
  length :  JSType t1
         => {auto 0 _ : Elem PluginArray (Types t1)}
         -> (obj : t1)
         -> JSIO UInt32
  length a = primJS $ PluginArray.prim__length (up a)
  
  export
  item :  JSType t1
       => {auto 0 _ : Elem PluginArray (Types t1)}
       -> (obj : t1)
       -> (index : UInt32)
       -> JSIO (Maybe Object)
  item a b = tryJS "PluginArray.item" $ PluginArray.prim__item (up a) b
  
  export
  namedItem :  JSType t1
            => {auto 0 _ : Elem PluginArray (Types t1)}
            -> (obj : t1)
            -> (name : String)
            -> JSIO (Maybe Object)
  namedItem a b = tryJS "PluginArray.namedItem"
                $ PluginArray.prim__namedItem (up a) b
  
  export
  refresh :  JSType t1
          => {auto 0 _ : Elem PluginArray (Types t1)}
          -> (obj : t1)
          -> JSIO ()
  refresh a = primJS $ PluginArray.prim__refresh (up a)

namespace PopStateEvent
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem PopStateEventInit (Types t1)}
      -> (type : String)
      -> (eventInitDict : Optional t1)
      -> JSIO PopStateEvent
  new a b = primJS $ PopStateEvent.prim__new a (optUp b)

  export
  new' : (type : String) -> JSIO PopStateEvent
  new' a = primJS $ PopStateEvent.prim__new a undef
  
  export
  state :  JSType t1
        => {auto 0 _ : Elem PopStateEvent (Types t1)}
        -> (obj : t1)
        -> JSIO Any
  state a = tryJS "PopStateEvent.state" $ PopStateEvent.prim__state (up a)

namespace PromiseRejectionEvent
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem PromiseRejectionEventInit (Types t1)}
      -> (type : String)
      -> (eventInitDict : t1)
      -> JSIO PromiseRejectionEvent
  new a b = primJS $ PromiseRejectionEvent.prim__new a (up b)
  
  export
  promise :  JSType t1
          => {auto 0 _ : Elem PromiseRejectionEvent (Types t1)}
          -> (obj : t1)
          -> JSIO (Promise AnyPtr)
  promise a = primJS $ PromiseRejectionEvent.prim__promise (up a)
  
  export
  reason :  JSType t1
         => {auto 0 _ : Elem PromiseRejectionEvent (Types t1)}
         -> (obj : t1)
         -> JSIO Any
  reason a = tryJS "PromiseRejectionEvent.reason"
           $ PromiseRejectionEvent.prim__reason (up a)

namespace RadioNodeList
  
  export
  value : RadioNodeList -> Attribute True I String
  value = fromPrim "RadioNodeList.getvalue" prim__value prim__setValue

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
  port :  JSType t1
       => {auto 0 _ : Elem SharedWorker (Types t1)}
       -> (obj : t1)
       -> JSIO MessagePort
  port a = primJS $ SharedWorker.prim__port (up a)

namespace SharedWorkerGlobalScope
  
  export
  name :  JSType t1
       => {auto 0 _ : Elem SharedWorkerGlobalScope (Types t1)}
       -> (obj : t1)
       -> JSIO String
  name a = primJS $ SharedWorkerGlobalScope.prim__name (up a)
  
  export
  onconnect : SharedWorkerGlobalScope -> Attribute False Maybe EventHandlerNonNull
  onconnect = fromNullablePrim "SharedWorkerGlobalScope.getonconnect"
                               prim__onconnect
                               prim__setOnconnect
  
  export
  close :  JSType t1
        => {auto 0 _ : Elem SharedWorkerGlobalScope (Types t1)}
        -> (obj : t1)
        -> JSIO ()
  close a = primJS $ SharedWorkerGlobalScope.prim__close (up a)

namespace Storage
  
  export
  length :  JSType t1
         => {auto 0 _ : Elem Storage (Types t1)}
         -> (obj : t1)
         -> JSIO UInt32
  length a = primJS $ Storage.prim__length (up a)
  
  export
  clear :  JSType t1
        => {auto 0 _ : Elem Storage (Types t1)}
        -> (obj : t1)
        -> JSIO ()
  clear a = primJS $ Storage.prim__clear (up a)
  
  export
  getItem :  JSType t1
          => {auto 0 _ : Elem Storage (Types t1)}
          -> (obj : t1)
          -> (key : String)
          -> JSIO (Maybe String)
  getItem a b = tryJS "Storage.getItem" $ Storage.prim__getItem (up a) b
  
  export
  key :  JSType t1
      => {auto 0 _ : Elem Storage (Types t1)}
      -> (obj : t1)
      -> (index : UInt32)
      -> JSIO (Maybe String)
  key a b = tryJS "Storage.key" $ Storage.prim__key (up a) b
  
  export
  setItem :  JSType t1
          => {auto 0 _ : Elem Storage (Types t1)}
          -> (obj : t1)
          -> (key : String)
          -> (value : String)
          -> JSIO ()
  setItem a b c = primJS $ Storage.prim__setItem (up a) b c

namespace StorageEvent
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem StorageEventInit (Types t1)}
      -> (type : String)
      -> (eventInitDict : Optional t1)
      -> JSIO StorageEvent
  new a b = primJS $ StorageEvent.prim__new a (optUp b)

  export
  new' : (type : String) -> JSIO StorageEvent
  new' a = primJS $ StorageEvent.prim__new a undef
  
  export
  key :  JSType t1
      => {auto 0 _ : Elem StorageEvent (Types t1)}
      -> (obj : t1)
      -> JSIO (Maybe String)
  key a = tryJS "StorageEvent.key" $ StorageEvent.prim__key (up a)
  
  export
  newValue :  JSType t1
           => {auto 0 _ : Elem StorageEvent (Types t1)}
           -> (obj : t1)
           -> JSIO (Maybe String)
  newValue a = tryJS "StorageEvent.newValue"
             $ StorageEvent.prim__newValue (up a)
  
  export
  oldValue :  JSType t1
           => {auto 0 _ : Elem StorageEvent (Types t1)}
           -> (obj : t1)
           -> JSIO (Maybe String)
  oldValue a = tryJS "StorageEvent.oldValue"
             $ StorageEvent.prim__oldValue (up a)
  
  export
  storageArea :  JSType t1
              => {auto 0 _ : Elem StorageEvent (Types t1)}
              -> (obj : t1)
              -> JSIO (Maybe Storage)
  storageArea a = tryJS "StorageEvent.storageArea"
                $ StorageEvent.prim__storageArea (up a)
  
  export
  url :  JSType t1
      => {auto 0 _ : Elem StorageEvent (Types t1)}
      -> (obj : t1)
      -> JSIO String
  url a = primJS $ StorageEvent.prim__url (up a)
  
  export
  initStorageEvent :  JSType t1
                   => JSType t2
                   => {auto 0 _ : Elem StorageEvent (Types t1)}
                   -> {auto 0 _ : Elem Storage (Types t2)}
                   -> (obj : t1)
                   -> (type : String)
                   -> (bubbles : Optional Bool)
                   -> (cancelable : Optional Bool)
                   -> (key : Optional (Maybe String))
                   -> (oldValue : Optional (Maybe String))
                   -> (newValue : Optional (Maybe String))
                   -> (url : Optional String)
                   -> (storageArea : Optional (Maybe t2))
                   -> JSIO ()
  initStorageEvent a b c d e f g h i = primJS
                                     $ StorageEvent.prim__initStorageEvent (up a)
                                                                           b
                                                                           (toFFI c)
                                                                           (toFFI d)
                                                                           (toFFI e)
                                                                           (toFFI f)
                                                                           (toFFI g)
                                                                           (toFFI h)
                                                                           (omyUp i)

  export
  initStorageEvent' :  JSType t1
                    => {auto 0 _ : Elem StorageEvent (Types t1)}
                    -> (obj : t1)
                    -> (type : String)
                    -> JSIO ()
  initStorageEvent' a b = primJS
                        $ StorageEvent.prim__initStorageEvent (up a)
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
  new :  JSType t1
      => {auto 0 _ : Elem SubmitEventInit (Types t1)}
      -> (type : String)
      -> (eventInitDict : Optional t1)
      -> JSIO SubmitEvent
  new a b = primJS $ SubmitEvent.prim__new a (optUp b)

  export
  new' : (type : String) -> JSIO SubmitEvent
  new' a = primJS $ SubmitEvent.prim__new a undef
  
  export
  submitter :  JSType t1
            => {auto 0 _ : Elem SubmitEvent (Types t1)}
            -> (obj : t1)
            -> JSIO (Maybe HTMLElement)
  submitter a = tryJS "SubmitEvent.submitter"
              $ SubmitEvent.prim__submitter (up a)

namespace TextMetrics
  
  export
  actualBoundingBoxAscent :  JSType t1
                          => {auto 0 _ : Elem TextMetrics (Types t1)}
                          -> (obj : t1)
                          -> JSIO Double
  actualBoundingBoxAscent a = primJS
                            $ TextMetrics.prim__actualBoundingBoxAscent (up a)
  
  export
  actualBoundingBoxDescent :  JSType t1
                           => {auto 0 _ : Elem TextMetrics (Types t1)}
                           -> (obj : t1)
                           -> JSIO Double
  actualBoundingBoxDescent a = primJS
                             $ TextMetrics.prim__actualBoundingBoxDescent (up a)
  
  export
  actualBoundingBoxLeft :  JSType t1
                        => {auto 0 _ : Elem TextMetrics (Types t1)}
                        -> (obj : t1)
                        -> JSIO Double
  actualBoundingBoxLeft a = primJS
                          $ TextMetrics.prim__actualBoundingBoxLeft (up a)
  
  export
  actualBoundingBoxRight :  JSType t1
                         => {auto 0 _ : Elem TextMetrics (Types t1)}
                         -> (obj : t1)
                         -> JSIO Double
  actualBoundingBoxRight a = primJS
                           $ TextMetrics.prim__actualBoundingBoxRight (up a)
  
  export
  alphabeticBaseline :  JSType t1
                     => {auto 0 _ : Elem TextMetrics (Types t1)}
                     -> (obj : t1)
                     -> JSIO Double
  alphabeticBaseline a = primJS $ TextMetrics.prim__alphabeticBaseline (up a)
  
  export
  emHeightAscent :  JSType t1
                 => {auto 0 _ : Elem TextMetrics (Types t1)}
                 -> (obj : t1)
                 -> JSIO Double
  emHeightAscent a = primJS $ TextMetrics.prim__emHeightAscent (up a)
  
  export
  emHeightDescent :  JSType t1
                  => {auto 0 _ : Elem TextMetrics (Types t1)}
                  -> (obj : t1)
                  -> JSIO Double
  emHeightDescent a = primJS $ TextMetrics.prim__emHeightDescent (up a)
  
  export
  fontBoundingBoxAscent :  JSType t1
                        => {auto 0 _ : Elem TextMetrics (Types t1)}
                        -> (obj : t1)
                        -> JSIO Double
  fontBoundingBoxAscent a = primJS
                          $ TextMetrics.prim__fontBoundingBoxAscent (up a)
  
  export
  fontBoundingBoxDescent :  JSType t1
                         => {auto 0 _ : Elem TextMetrics (Types t1)}
                         -> (obj : t1)
                         -> JSIO Double
  fontBoundingBoxDescent a = primJS
                           $ TextMetrics.prim__fontBoundingBoxDescent (up a)
  
  export
  hangingBaseline :  JSType t1
                  => {auto 0 _ : Elem TextMetrics (Types t1)}
                  -> (obj : t1)
                  -> JSIO Double
  hangingBaseline a = primJS $ TextMetrics.prim__hangingBaseline (up a)
  
  export
  ideographicBaseline :  JSType t1
                      => {auto 0 _ : Elem TextMetrics (Types t1)}
                      -> (obj : t1)
                      -> JSIO Double
  ideographicBaseline a = primJS $ TextMetrics.prim__ideographicBaseline (up a)
  
  export
  width :  JSType t1
        => {auto 0 _ : Elem TextMetrics (Types t1)}
        -> (obj : t1)
        -> JSIO Double
  width a = primJS $ TextMetrics.prim__width (up a)

namespace TextTrack
  
  export
  activeCues :  JSType t1
             => {auto 0 _ : Elem TextTrack (Types t1)}
             -> (obj : t1)
             -> JSIO (Maybe TextTrackCueList)
  activeCues a = tryJS "TextTrack.activeCues"
               $ TextTrack.prim__activeCues (up a)
  
  export
  cues :  JSType t1
       => {auto 0 _ : Elem TextTrack (Types t1)}
       -> (obj : t1)
       -> JSIO (Maybe TextTrackCueList)
  cues a = tryJS "TextTrack.cues" $ TextTrack.prim__cues (up a)
  
  export
  id :  JSType t1
     => {auto 0 _ : Elem TextTrack (Types t1)}
     -> (obj : t1)
     -> JSIO String
  id a = primJS $ TextTrack.prim__id (up a)
  
  export
  inBandMetadataTrackDispatchType :  JSType t1
                                  => {auto 0 _ : Elem TextTrack (Types t1)}
                                  -> (obj : t1)
                                  -> JSIO String
  inBandMetadataTrackDispatchType a = primJS
                                    $ TextTrack.prim__inBandMetadataTrackDispatchType (up a)
  
  export
  kind :  JSType t1
       => {auto 0 _ : Elem TextTrack (Types t1)}
       -> (obj : t1)
       -> JSIO TextTrackKind
  kind a = tryJS "TextTrack.kind" $ TextTrack.prim__kind (up a)
  
  export
  label :  JSType t1
        => {auto 0 _ : Elem TextTrack (Types t1)}
        -> (obj : t1)
        -> JSIO String
  label a = primJS $ TextTrack.prim__label (up a)
  
  export
  language :  JSType t1
           => {auto 0 _ : Elem TextTrack (Types t1)}
           -> (obj : t1)
           -> JSIO String
  language a = primJS $ TextTrack.prim__language (up a)
  
  export
  mode : TextTrack -> Attribute True I TextTrackMode
  mode = fromPrim "TextTrack.getmode" prim__mode prim__setMode
  
  export
  oncuechange : TextTrack -> Attribute False Maybe EventHandlerNonNull
  oncuechange = fromNullablePrim "TextTrack.getoncuechange"
                                 prim__oncuechange
                                 prim__setOncuechange
  
  export
  sourceBuffer :  JSType t1
               => {auto 0 _ : Elem TextTrack (Types t1)}
               -> (obj : t1)
               -> JSIO (Maybe SourceBuffer)
  sourceBuffer a = tryJS "TextTrack.sourceBuffer"
                 $ TextTrack.prim__sourceBuffer (up a)
  
  export
  addCue :  JSType t1
         => JSType t2
         => {auto 0 _ : Elem TextTrack (Types t1)}
         -> {auto 0 _ : Elem TextTrackCue (Types t2)}
         -> (obj : t1)
         -> (cue : t2)
         -> JSIO ()
  addCue a b = primJS $ TextTrack.prim__addCue (up a) (up b)
  
  export
  removeCue :  JSType t1
            => JSType t2
            => {auto 0 _ : Elem TextTrack (Types t1)}
            -> {auto 0 _ : Elem TextTrackCue (Types t2)}
            -> (obj : t1)
            -> (cue : t2)
            -> JSIO ()
  removeCue a b = primJS $ TextTrack.prim__removeCue (up a) (up b)

namespace TextTrackCue
  
  export
  endTime : TextTrackCue -> Attribute True I Double
  endTime = fromPrim "TextTrackCue.getendTime" prim__endTime prim__setEndTime
  
  export
  id : TextTrackCue -> Attribute True I String
  id = fromPrim "TextTrackCue.getid" prim__id prim__setId
  
  export
  onenter : TextTrackCue -> Attribute False Maybe EventHandlerNonNull
  onenter = fromNullablePrim "TextTrackCue.getonenter"
                             prim__onenter
                             prim__setOnenter
  
  export
  onexit : TextTrackCue -> Attribute False Maybe EventHandlerNonNull
  onexit = fromNullablePrim "TextTrackCue.getonexit"
                            prim__onexit
                            prim__setOnexit
  
  export
  pauseOnExit : TextTrackCue -> Attribute True I Bool
  pauseOnExit = fromPrim "TextTrackCue.getpauseOnExit"
                         prim__pauseOnExit
                         prim__setPauseOnExit
  
  export
  startTime : TextTrackCue -> Attribute True I Double
  startTime = fromPrim "TextTrackCue.getstartTime"
                       prim__startTime
                       prim__setStartTime
  
  export
  track :  JSType t1
        => {auto 0 _ : Elem TextTrackCue (Types t1)}
        -> (obj : t1)
        -> JSIO (Maybe TextTrack)
  track a = tryJS "TextTrackCue.track" $ TextTrackCue.prim__track (up a)

namespace TextTrackCueList
  
  export
  get :  JSType t1
      => {auto 0 _ : Elem TextTrackCueList (Types t1)}
      -> (obj : t1)
      -> (index : UInt32)
      -> JSIO TextTrackCue
  get a b = primJS $ TextTrackCueList.prim__get (up a) b
  
  export
  length :  JSType t1
         => {auto 0 _ : Elem TextTrackCueList (Types t1)}
         -> (obj : t1)
         -> JSIO UInt32
  length a = primJS $ TextTrackCueList.prim__length (up a)
  
  export
  getCueById :  JSType t1
             => {auto 0 _ : Elem TextTrackCueList (Types t1)}
             -> (obj : t1)
             -> (id : String)
             -> JSIO (Maybe TextTrackCue)
  getCueById a b = tryJS "TextTrackCueList.getCueById"
                 $ TextTrackCueList.prim__getCueById (up a) b

namespace TextTrackList
  
  export
  get :  JSType t1
      => {auto 0 _ : Elem TextTrackList (Types t1)}
      -> (obj : t1)
      -> (index : UInt32)
      -> JSIO TextTrack
  get a b = primJS $ TextTrackList.prim__get (up a) b
  
  export
  length :  JSType t1
         => {auto 0 _ : Elem TextTrackList (Types t1)}
         -> (obj : t1)
         -> JSIO UInt32
  length a = primJS $ TextTrackList.prim__length (up a)
  
  export
  onaddtrack : TextTrackList -> Attribute False Maybe EventHandlerNonNull
  onaddtrack = fromNullablePrim "TextTrackList.getonaddtrack"
                                prim__onaddtrack
                                prim__setOnaddtrack
  
  export
  onchange : TextTrackList -> Attribute False Maybe EventHandlerNonNull
  onchange = fromNullablePrim "TextTrackList.getonchange"
                              prim__onchange
                              prim__setOnchange
  
  export
  onremovetrack : TextTrackList -> Attribute False Maybe EventHandlerNonNull
  onremovetrack = fromNullablePrim "TextTrackList.getonremovetrack"
                                   prim__onremovetrack
                                   prim__setOnremovetrack
  
  export
  getTrackById :  JSType t1
               => {auto 0 _ : Elem TextTrackList (Types t1)}
               -> (obj : t1)
               -> (id : String)
               -> JSIO (Maybe TextTrack)
  getTrackById a b = tryJS "TextTrackList.getTrackById"
                   $ TextTrackList.prim__getTrackById (up a) b

namespace TimeRanges
  
  export
  length :  JSType t1
         => {auto 0 _ : Elem TimeRanges (Types t1)}
         -> (obj : t1)
         -> JSIO UInt32
  length a = primJS $ TimeRanges.prim__length (up a)
  
  export
  end :  JSType t1
      => {auto 0 _ : Elem TimeRanges (Types t1)}
      -> (obj : t1)
      -> (index : UInt32)
      -> JSIO Double
  end a b = primJS $ TimeRanges.prim__end (up a) b
  
  export
  start :  JSType t1
        => {auto 0 _ : Elem TimeRanges (Types t1)}
        -> (obj : t1)
        -> (index : UInt32)
        -> JSIO Double
  start a b = primJS $ TimeRanges.prim__start (up a) b

namespace TrackEvent
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem TrackEventInit (Types t1)}
      -> (type : String)
      -> (eventInitDict : Optional t1)
      -> JSIO TrackEvent
  new a b = primJS $ TrackEvent.prim__new a (optUp b)

  export
  new' : (type : String) -> JSIO TrackEvent
  new' a = primJS $ TrackEvent.prim__new a undef
  
  export
  track :  JSType t1
        => {auto 0 _ : Elem TrackEvent (Types t1)}
        -> (obj : t1)
        -> JSIO (Maybe (NS I [ VideoTrack , AudioTrack , TextTrack ]))
  track a = tryJS "TrackEvent.track" $ TrackEvent.prim__track (up a)

namespace ValidityState
  
  export
  badInput :  JSType t1
           => {auto 0 _ : Elem ValidityState (Types t1)}
           -> (obj : t1)
           -> JSIO Bool
  badInput a = tryJS "ValidityState.badInput"
             $ ValidityState.prim__badInput (up a)
  
  export
  customError :  JSType t1
              => {auto 0 _ : Elem ValidityState (Types t1)}
              -> (obj : t1)
              -> JSIO Bool
  customError a = tryJS "ValidityState.customError"
                $ ValidityState.prim__customError (up a)
  
  export
  patternMismatch :  JSType t1
                  => {auto 0 _ : Elem ValidityState (Types t1)}
                  -> (obj : t1)
                  -> JSIO Bool
  patternMismatch a = tryJS "ValidityState.patternMismatch"
                    $ ValidityState.prim__patternMismatch (up a)
  
  export
  rangeOverflow :  JSType t1
                => {auto 0 _ : Elem ValidityState (Types t1)}
                -> (obj : t1)
                -> JSIO Bool
  rangeOverflow a = tryJS "ValidityState.rangeOverflow"
                  $ ValidityState.prim__rangeOverflow (up a)
  
  export
  rangeUnderflow :  JSType t1
                 => {auto 0 _ : Elem ValidityState (Types t1)}
                 -> (obj : t1)
                 -> JSIO Bool
  rangeUnderflow a = tryJS "ValidityState.rangeUnderflow"
                   $ ValidityState.prim__rangeUnderflow (up a)
  
  export
  stepMismatch :  JSType t1
               => {auto 0 _ : Elem ValidityState (Types t1)}
               -> (obj : t1)
               -> JSIO Bool
  stepMismatch a = tryJS "ValidityState.stepMismatch"
                 $ ValidityState.prim__stepMismatch (up a)
  
  export
  tooLong :  JSType t1
          => {auto 0 _ : Elem ValidityState (Types t1)}
          -> (obj : t1)
          -> JSIO Bool
  tooLong a = tryJS "ValidityState.tooLong" $ ValidityState.prim__tooLong (up a)
  
  export
  tooShort :  JSType t1
           => {auto 0 _ : Elem ValidityState (Types t1)}
           -> (obj : t1)
           -> JSIO Bool
  tooShort a = tryJS "ValidityState.tooShort"
             $ ValidityState.prim__tooShort (up a)
  
  export
  typeMismatch :  JSType t1
               => {auto 0 _ : Elem ValidityState (Types t1)}
               -> (obj : t1)
               -> JSIO Bool
  typeMismatch a = tryJS "ValidityState.typeMismatch"
                 $ ValidityState.prim__typeMismatch (up a)
  
  export
  valid :  JSType t1
        => {auto 0 _ : Elem ValidityState (Types t1)}
        -> (obj : t1)
        -> JSIO Bool
  valid a = tryJS "ValidityState.valid" $ ValidityState.prim__valid (up a)
  
  export
  valueMissing :  JSType t1
               => {auto 0 _ : Elem ValidityState (Types t1)}
               -> (obj : t1)
               -> JSIO Bool
  valueMissing a = tryJS "ValidityState.valueMissing"
                 $ ValidityState.prim__valueMissing (up a)

namespace VideoTrack
  
  export
  id :  JSType t1
     => {auto 0 _ : Elem VideoTrack (Types t1)}
     -> (obj : t1)
     -> JSIO String
  id a = primJS $ VideoTrack.prim__id (up a)
  
  export
  kind :  JSType t1
       => {auto 0 _ : Elem VideoTrack (Types t1)}
       -> (obj : t1)
       -> JSIO String
  kind a = primJS $ VideoTrack.prim__kind (up a)
  
  export
  label :  JSType t1
        => {auto 0 _ : Elem VideoTrack (Types t1)}
        -> (obj : t1)
        -> JSIO String
  label a = primJS $ VideoTrack.prim__label (up a)
  
  export
  language :  JSType t1
           => {auto 0 _ : Elem VideoTrack (Types t1)}
           -> (obj : t1)
           -> JSIO String
  language a = primJS $ VideoTrack.prim__language (up a)
  
  export
  selected : VideoTrack -> Attribute True I Bool
  selected = fromPrim "VideoTrack.getselected" prim__selected prim__setSelected
  
  export
  sourceBuffer :  JSType t1
               => {auto 0 _ : Elem VideoTrack (Types t1)}
               -> (obj : t1)
               -> JSIO (Maybe SourceBuffer)
  sourceBuffer a = tryJS "VideoTrack.sourceBuffer"
                 $ VideoTrack.prim__sourceBuffer (up a)

namespace VideoTrackList
  
  export
  get :  JSType t1
      => {auto 0 _ : Elem VideoTrackList (Types t1)}
      -> (obj : t1)
      -> (index : UInt32)
      -> JSIO VideoTrack
  get a b = primJS $ VideoTrackList.prim__get (up a) b
  
  export
  length :  JSType t1
         => {auto 0 _ : Elem VideoTrackList (Types t1)}
         -> (obj : t1)
         -> JSIO UInt32
  length a = primJS $ VideoTrackList.prim__length (up a)
  
  export
  onaddtrack : VideoTrackList -> Attribute False Maybe EventHandlerNonNull
  onaddtrack = fromNullablePrim "VideoTrackList.getonaddtrack"
                                prim__onaddtrack
                                prim__setOnaddtrack
  
  export
  onchange : VideoTrackList -> Attribute False Maybe EventHandlerNonNull
  onchange = fromNullablePrim "VideoTrackList.getonchange"
                              prim__onchange
                              prim__setOnchange
  
  export
  onremovetrack : VideoTrackList -> Attribute False Maybe EventHandlerNonNull
  onremovetrack = fromNullablePrim "VideoTrackList.getonremovetrack"
                                   prim__onremovetrack
                                   prim__setOnremovetrack
  
  export
  selectedIndex :  JSType t1
                => {auto 0 _ : Elem VideoTrackList (Types t1)}
                -> (obj : t1)
                -> JSIO Int32
  selectedIndex a = primJS $ VideoTrackList.prim__selectedIndex (up a)
  
  export
  getTrackById :  JSType t1
               => {auto 0 _ : Elem VideoTrackList (Types t1)}
               -> (obj : t1)
               -> (id : String)
               -> JSIO (Maybe VideoTrack)
  getTrackById a b = tryJS "VideoTrackList.getTrackById"
                   $ VideoTrackList.prim__getTrackById (up a) b

namespace WebSocket
  
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
      -> (protocols : Optional (NS I [ String , Array String ]))
      -> JSIO WebSocket
  new a b = primJS $ WebSocket.prim__new a (toFFI b)

  export
  new' : (url : String) -> JSIO WebSocket
  new' a = primJS $ WebSocket.prim__new a undef
  
  export
  binaryType : WebSocket -> Attribute True I BinaryType
  binaryType = fromPrim "WebSocket.getbinaryType"
                        prim__binaryType
                        prim__setBinaryType
  
  export
  bufferedAmount :  JSType t1
                 => {auto 0 _ : Elem WebSocket (Types t1)}
                 -> (obj : t1)
                 -> JSIO UInt64
  bufferedAmount a = primJS $ WebSocket.prim__bufferedAmount (up a)
  
  export
  extensions :  JSType t1
             => {auto 0 _ : Elem WebSocket (Types t1)}
             -> (obj : t1)
             -> JSIO String
  extensions a = primJS $ WebSocket.prim__extensions (up a)
  
  export
  onclose : WebSocket -> Attribute False Maybe EventHandlerNonNull
  onclose = fromNullablePrim "WebSocket.getonclose"
                             prim__onclose
                             prim__setOnclose
  
  export
  onerror : WebSocket -> Attribute False Maybe EventHandlerNonNull
  onerror = fromNullablePrim "WebSocket.getonerror"
                             prim__onerror
                             prim__setOnerror
  
  export
  onmessage : WebSocket -> Attribute False Maybe EventHandlerNonNull
  onmessage = fromNullablePrim "WebSocket.getonmessage"
                               prim__onmessage
                               prim__setOnmessage
  
  export
  onopen : WebSocket -> Attribute False Maybe EventHandlerNonNull
  onopen = fromNullablePrim "WebSocket.getonopen" prim__onopen prim__setOnopen
  
  export
  protocol :  JSType t1
           => {auto 0 _ : Elem WebSocket (Types t1)}
           -> (obj : t1)
           -> JSIO String
  protocol a = primJS $ WebSocket.prim__protocol (up a)
  
  export
  readyState :  JSType t1
             => {auto 0 _ : Elem WebSocket (Types t1)}
             -> (obj : t1)
             -> JSIO UInt16
  readyState a = primJS $ WebSocket.prim__readyState (up a)
  
  export
  url :  JSType t1
      => {auto 0 _ : Elem WebSocket (Types t1)}
      -> (obj : t1)
      -> JSIO String
  url a = primJS $ WebSocket.prim__url (up a)
  
  export
  close :  JSType t1
        => {auto 0 _ : Elem WebSocket (Types t1)}
        -> (obj : t1)
        -> (code : Optional UInt16)
        -> (reason : Optional String)
        -> JSIO ()
  close a b c = primJS $ WebSocket.prim__close (up a) (toFFI b) (toFFI c)

  export
  close' :  JSType t1
         => {auto 0 _ : Elem WebSocket (Types t1)}
         -> (obj : t1)
         -> JSIO ()
  close' a = primJS $ WebSocket.prim__close (up a) undef undef
  
  export
  send :  JSType t1
       => {auto 0 _ : Elem WebSocket (Types t1)}
       -> (obj : t1)
       -> (data_ : String)
       -> JSIO ()
  send a b = primJS $ WebSocket.prim__send (up a) b
  
  export
  send1 :  JSType t1
        => JSType t2
        => {auto 0 _ : Elem WebSocket (Types t1)}
        -> {auto 0 _ : Elem Blob (Types t2)}
        -> (obj : t1)
        -> (data_ : t2)
        -> JSIO ()
  send1 a b = primJS $ WebSocket.prim__send1 (up a) (up b)
  
  export
  send2 :  JSType t1
        => {auto 0 _ : Elem WebSocket (Types t1)}
        -> (obj : t1)
        -> (data_ : ArrayBuffer)
        -> JSIO ()
  send2 a b = primJS $ WebSocket.prim__send2 (up a) b
  
  export
  send3 :  JSType t1
        => {auto 0 _ : Elem WebSocket (Types t1)}
        -> (obj : t1)
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
  send3 a b = primJS $ WebSocket.prim__send3 (up a) (toFFI b)

namespace Window
  
  export
  get :  JSType t1
      => {auto 0 _ : Elem Window (Types t1)}
      -> (obj : t1)
      -> (name : String)
      -> JSIO Object
  get a b = primJS $ Window.prim__get (up a) b
  
  export
  closed :  JSType t1
         => {auto 0 _ : Elem Window (Types t1)}
         -> (obj : t1)
         -> JSIO Bool
  closed a = tryJS "Window.closed" $ Window.prim__closed (up a)
  
  export
  customElements :  JSType t1
                 => {auto 0 _ : Elem Window (Types t1)}
                 -> (obj : t1)
                 -> JSIO CustomElementRegistry
  customElements a = primJS $ Window.prim__customElements (up a)
  
  export
  document :  JSType t1
           => {auto 0 _ : Elem Window (Types t1)}
           -> (obj : t1)
           -> JSIO Document
  document a = primJS $ Window.prim__document (up a)
  
  export
  event :  JSType t1
        => {auto 0 _ : Elem Window (Types t1)}
        -> (obj : t1)
        -> JSIO (NS I [ Event , Undefined ])
  event a = tryJS "Window.event" $ Window.prim__event (up a)
  
  export
  external :  JSType t1
           => {auto 0 _ : Elem Window (Types t1)}
           -> (obj : t1)
           -> JSIO External
  external a = primJS $ Window.prim__external (up a)
  
  export
  frameElement :  JSType t1
               => {auto 0 _ : Elem Window (Types t1)}
               -> (obj : t1)
               -> JSIO (Maybe Element)
  frameElement a = tryJS "Window.frameElement"
                 $ Window.prim__frameElement (up a)
  
  export
  frames :  JSType t1
         => {auto 0 _ : Elem Window (Types t1)}
         -> (obj : t1)
         -> JSIO WindowProxy
  frames a = primJS $ Window.prim__frames (up a)
  
  export
  history :  JSType t1
          => {auto 0 _ : Elem Window (Types t1)}
          -> (obj : t1)
          -> JSIO History
  history a = primJS $ Window.prim__history (up a)
  
  export
  length :  JSType t1
         => {auto 0 _ : Elem Window (Types t1)}
         -> (obj : t1)
         -> JSIO UInt32
  length a = primJS $ Window.prim__length (up a)
  
  export
  location :  JSType t1
           => {auto 0 _ : Elem Window (Types t1)}
           -> (obj : t1)
           -> JSIO Location
  location a = primJS $ Window.prim__location (up a)
  
  export
  locationbar :  JSType t1
              => {auto 0 _ : Elem Window (Types t1)}
              -> (obj : t1)
              -> JSIO BarProp
  locationbar a = primJS $ Window.prim__locationbar (up a)
  
  export
  menubar :  JSType t1
          => {auto 0 _ : Elem Window (Types t1)}
          -> (obj : t1)
          -> JSIO BarProp
  menubar a = primJS $ Window.prim__menubar (up a)
  
  export
  name : Window -> Attribute True I String
  name = fromPrim "Window.getname" prim__name prim__setName
  
  export
  navigator :  JSType t1
            => {auto 0 _ : Elem Window (Types t1)}
            -> (obj : t1)
            -> JSIO Navigator
  navigator a = primJS $ Window.prim__navigator (up a)
  
  export
  opener : Window -> Attribute True I Any
  opener = fromPrim "Window.getopener" prim__opener prim__setOpener
  
  export
  originAgentCluster :  JSType t1
                     => {auto 0 _ : Elem Window (Types t1)}
                     -> (obj : t1)
                     -> JSIO Bool
  originAgentCluster a = tryJS "Window.originAgentCluster"
                       $ Window.prim__originAgentCluster (up a)
  
  export
  parent :  JSType t1
         => {auto 0 _ : Elem Window (Types t1)}
         -> (obj : t1)
         -> JSIO (Maybe WindowProxy)
  parent a = tryJS "Window.parent" $ Window.prim__parent (up a)
  
  export
  personalbar :  JSType t1
              => {auto 0 _ : Elem Window (Types t1)}
              -> (obj : t1)
              -> JSIO BarProp
  personalbar a = primJS $ Window.prim__personalbar (up a)
  
  export
  scrollbars :  JSType t1
             => {auto 0 _ : Elem Window (Types t1)}
             -> (obj : t1)
             -> JSIO BarProp
  scrollbars a = primJS $ Window.prim__scrollbars (up a)
  
  export
  self :  JSType t1
       => {auto 0 _ : Elem Window (Types t1)}
       -> (obj : t1)
       -> JSIO WindowProxy
  self a = primJS $ Window.prim__self (up a)
  
  export
  status : Window -> Attribute True I String
  status = fromPrim "Window.getstatus" prim__status prim__setStatus
  
  export
  statusbar :  JSType t1
            => {auto 0 _ : Elem Window (Types t1)}
            -> (obj : t1)
            -> JSIO BarProp
  statusbar a = primJS $ Window.prim__statusbar (up a)
  
  export
  toolbar :  JSType t1
          => {auto 0 _ : Elem Window (Types t1)}
          -> (obj : t1)
          -> JSIO BarProp
  toolbar a = primJS $ Window.prim__toolbar (up a)
  
  export
  top :  JSType t1
      => {auto 0 _ : Elem Window (Types t1)}
      -> (obj : t1)
      -> JSIO (Maybe WindowProxy)
  top a = tryJS "Window.top" $ Window.prim__top (up a)
  
  export
  window :  JSType t1
         => {auto 0 _ : Elem Window (Types t1)}
         -> (obj : t1)
         -> JSIO WindowProxy
  window a = primJS $ Window.prim__window (up a)
  
  export
  alert :  JSType t1
        => {auto 0 _ : Elem Window (Types t1)}
        -> (obj : t1)
        -> JSIO ()
  alert a = primJS $ Window.prim__alert (up a)
  
  export
  alert1 :  JSType t1
         => {auto 0 _ : Elem Window (Types t1)}
         -> (obj : t1)
         -> (message : String)
         -> JSIO ()
  alert1 a b = primJS $ Window.prim__alert1 (up a) b
  
  export
  blur :  JSType t1
       => {auto 0 _ : Elem Window (Types t1)}
       -> (obj : t1)
       -> JSIO ()
  blur a = primJS $ Window.prim__blur (up a)
  
  export
  captureEvents :  JSType t1
                => {auto 0 _ : Elem Window (Types t1)}
                -> (obj : t1)
                -> JSIO ()
  captureEvents a = primJS $ Window.prim__captureEvents (up a)
  
  export
  close :  JSType t1
        => {auto 0 _ : Elem Window (Types t1)}
        -> (obj : t1)
        -> JSIO ()
  close a = primJS $ Window.prim__close (up a)
  
  export
  confirm :  JSType t1
          => {auto 0 _ : Elem Window (Types t1)}
          -> (obj : t1)
          -> (message : Optional String)
          -> JSIO Bool
  confirm a b = tryJS "Window.confirm" $ Window.prim__confirm (up a) (toFFI b)

  export
  confirm' :  JSType t1
           => {auto 0 _ : Elem Window (Types t1)}
           -> (obj : t1)
           -> JSIO Bool
  confirm' a = tryJS "Window.confirm'" $ Window.prim__confirm (up a) undef
  
  export
  focus :  JSType t1
        => {auto 0 _ : Elem Window (Types t1)}
        -> (obj : t1)
        -> JSIO ()
  focus a = primJS $ Window.prim__focus (up a)
  
  export
  getComputedStyle :  JSType t1
                   => JSType t2
                   => {auto 0 _ : Elem Window (Types t1)}
                   -> {auto 0 _ : Elem Element (Types t2)}
                   -> (obj : t1)
                   -> (elt : t2)
                   -> (pseudoElt : Optional (Maybe CSSOMString))
                   -> JSIO CSSStyleDeclaration
  getComputedStyle a b c = primJS
                         $ Window.prim__getComputedStyle (up a) (up b) (toFFI c)

  export
  getComputedStyle' :  JSType t1
                    => JSType t2
                    => {auto 0 _ : Elem Window (Types t1)}
                    -> {auto 0 _ : Elem Element (Types t2)}
                    -> (obj : t1)
                    -> (elt : t2)
                    -> JSIO CSSStyleDeclaration
  getComputedStyle' a b = primJS
                        $ Window.prim__getComputedStyle (up a) (up b) undef
  
  export
  open_ :  JSType t1
        => {auto 0 _ : Elem Window (Types t1)}
        -> (obj : t1)
        -> (url : Optional String)
        -> (target : Optional String)
        -> (features : Optional String)
        -> JSIO (Maybe WindowProxy)
  open_ a b c d = tryJS "Window.open_"
                $ Window.prim__open (up a) (toFFI b) (toFFI c) (toFFI d)

  export
  open' :  JSType t1
        => {auto 0 _ : Elem Window (Types t1)}
        -> (obj : t1)
        -> JSIO (Maybe WindowProxy)
  open' a = tryJS "Window.open'" $ Window.prim__open (up a) undef undef undef
  
  export
  postMessage :  JSType t1
              => {auto 0 _ : Elem Window (Types t1)}
              -> (obj : t1)
              -> (message : Any)
              -> (targetOrigin : String)
              -> (transfer : Optional (Array Object))
              -> JSIO ()
  postMessage a b c d = primJS
                      $ Window.prim__postMessage (up a) (toFFI b) c (toFFI d)

  export
  postMessage' :  JSType t1
               => {auto 0 _ : Elem Window (Types t1)}
               -> (obj : t1)
               -> (message : Any)
               -> (targetOrigin : String)
               -> JSIO ()
  postMessage' a b c = primJS
                     $ Window.prim__postMessage (up a) (toFFI b) c undef
  
  export
  postMessage1 :  JSType t1
               => JSType t2
               => {auto 0 _ : Elem Window (Types t1)}
               -> {auto 0 _ : Elem WindowPostMessageOptions (Types t2)}
               -> (obj : t1)
               -> (message : Any)
               -> (options : Optional t2)
               -> JSIO ()
  postMessage1 a b c = primJS
                     $ Window.prim__postMessage1 (up a) (toFFI b) (optUp c)

  export
  postMessage1' :  JSType t1
                => {auto 0 _ : Elem Window (Types t1)}
                -> (obj : t1)
                -> (message : Any)
                -> JSIO ()
  postMessage1' a b = primJS $ Window.prim__postMessage1 (up a) (toFFI b) undef
  
  export
  print :  JSType t1
        => {auto 0 _ : Elem Window (Types t1)}
        -> (obj : t1)
        -> JSIO ()
  print a = primJS $ Window.prim__print (up a)
  
  export
  prompt :  JSType t1
         => {auto 0 _ : Elem Window (Types t1)}
         -> (obj : t1)
         -> (message : Optional String)
         -> (default_ : Optional String)
         -> JSIO (Maybe String)
  prompt a b c = tryJS "Window.prompt"
               $ Window.prim__prompt (up a) (toFFI b) (toFFI c)

  export
  prompt' :  JSType t1
          => {auto 0 _ : Elem Window (Types t1)}
          -> (obj : t1)
          -> JSIO (Maybe String)
  prompt' a = tryJS "Window.prompt'" $ Window.prim__prompt (up a) undef undef
  
  export
  releaseEvents :  JSType t1
                => {auto 0 _ : Elem Window (Types t1)}
                -> (obj : t1)
                -> JSIO ()
  releaseEvents a = primJS $ Window.prim__releaseEvents (up a)
  
  export
  stop :  JSType t1
       => {auto 0 _ : Elem Window (Types t1)}
       -> (obj : t1)
       -> JSIO ()
  stop a = primJS $ Window.prim__stop (up a)

namespace Worker
  
  export
  new :  JSType t1
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
  onmessage = fromNullablePrim "Worker.getonmessage"
                               prim__onmessage
                               prim__setOnmessage
  
  export
  onmessageerror : Worker -> Attribute False Maybe EventHandlerNonNull
  onmessageerror = fromNullablePrim "Worker.getonmessageerror"
                                    prim__onmessageerror
                                    prim__setOnmessageerror
  
  export
  postMessage :  JSType t1
              => {auto 0 _ : Elem Worker (Types t1)}
              -> (obj : t1)
              -> (message : Any)
              -> (transfer : Array Object)
              -> JSIO ()
  postMessage a b c = primJS $ Worker.prim__postMessage (up a) (toFFI b) c
  
  export
  postMessage1 :  JSType t1
               => JSType t2
               => {auto 0 _ : Elem Worker (Types t1)}
               -> {auto 0 _ : Elem PostMessageOptions (Types t2)}
               -> (obj : t1)
               -> (message : Any)
               -> (options : Optional t2)
               -> JSIO ()
  postMessage1 a b c = primJS
                     $ Worker.prim__postMessage1 (up a) (toFFI b) (optUp c)

  export
  postMessage1' :  JSType t1
                => {auto 0 _ : Elem Worker (Types t1)}
                -> (obj : t1)
                -> (message : Any)
                -> JSIO ()
  postMessage1' a b = primJS $ Worker.prim__postMessage1 (up a) (toFFI b) undef
  
  export
  terminate :  JSType t1
            => {auto 0 _ : Elem Worker (Types t1)}
            -> (obj : t1)
            -> JSIO ()
  terminate a = primJS $ Worker.prim__terminate (up a)

namespace WorkerGlobalScope
  
  export
  location :  JSType t1
           => {auto 0 _ : Elem WorkerGlobalScope (Types t1)}
           -> (obj : t1)
           -> JSIO WorkerLocation
  location a = primJS $ WorkerGlobalScope.prim__location (up a)
  
  export
  navigator :  JSType t1
            => {auto 0 _ : Elem WorkerGlobalScope (Types t1)}
            -> (obj : t1)
            -> JSIO WorkerNavigator
  navigator a = primJS $ WorkerGlobalScope.prim__navigator (up a)
  
  export
  onerror : WorkerGlobalScope -> Attribute False Maybe OnErrorEventHandlerNonNull
  onerror = fromNullablePrim "WorkerGlobalScope.getonerror"
                             prim__onerror
                             prim__setOnerror
  
  export
  onlanguagechange : WorkerGlobalScope -> Attribute False Maybe EventHandlerNonNull
  onlanguagechange = fromNullablePrim "WorkerGlobalScope.getonlanguagechange"
                                      prim__onlanguagechange
                                      prim__setOnlanguagechange
  
  export
  onoffline : WorkerGlobalScope -> Attribute False Maybe EventHandlerNonNull
  onoffline = fromNullablePrim "WorkerGlobalScope.getonoffline"
                               prim__onoffline
                               prim__setOnoffline
  
  export
  ononline : WorkerGlobalScope -> Attribute False Maybe EventHandlerNonNull
  ononline = fromNullablePrim "WorkerGlobalScope.getononline"
                              prim__ononline
                              prim__setOnonline
  
  export
  onrejectionhandled : WorkerGlobalScope -> Attribute False Maybe EventHandlerNonNull
  onrejectionhandled = fromNullablePrim "WorkerGlobalScope.getonrejectionhandled"
                                        prim__onrejectionhandled
                                        prim__setOnrejectionhandled
  
  export
  onunhandledrejection : WorkerGlobalScope -> Attribute False Maybe EventHandlerNonNull
  onunhandledrejection = fromNullablePrim "WorkerGlobalScope.getonunhandledrejection"
                                          prim__onunhandledrejection
                                          prim__setOnunhandledrejection
  
  export
  self :  JSType t1
       => {auto 0 _ : Elem WorkerGlobalScope (Types t1)}
       -> (obj : t1)
       -> JSIO WorkerGlobalScope
  self a = primJS $ WorkerGlobalScope.prim__self (up a)
  
  export
  importScripts :  JSType t1
                => {auto 0 _ : Elem WorkerGlobalScope (Types t1)}
                -> (obj : t1)
                -> (urls : VarArg String)
                -> JSIO ()
  importScripts a b = primJS $ WorkerGlobalScope.prim__importScripts (up a) b

namespace WorkerLocation
  
  export
  hash :  JSType t1
       => {auto 0 _ : Elem WorkerLocation (Types t1)}
       -> (obj : t1)
       -> JSIO String
  hash a = primJS $ WorkerLocation.prim__hash (up a)
  
  export
  host :  JSType t1
       => {auto 0 _ : Elem WorkerLocation (Types t1)}
       -> (obj : t1)
       -> JSIO String
  host a = primJS $ WorkerLocation.prim__host (up a)
  
  export
  hostname :  JSType t1
           => {auto 0 _ : Elem WorkerLocation (Types t1)}
           -> (obj : t1)
           -> JSIO String
  hostname a = primJS $ WorkerLocation.prim__hostname (up a)
  
  export
  href :  JSType t1
       => {auto 0 _ : Elem WorkerLocation (Types t1)}
       -> (obj : t1)
       -> JSIO String
  href a = primJS $ WorkerLocation.prim__href (up a)
  
  export
  origin :  JSType t1
         => {auto 0 _ : Elem WorkerLocation (Types t1)}
         -> (obj : t1)
         -> JSIO String
  origin a = primJS $ WorkerLocation.prim__origin (up a)
  
  export
  pathname :  JSType t1
           => {auto 0 _ : Elem WorkerLocation (Types t1)}
           -> (obj : t1)
           -> JSIO String
  pathname a = primJS $ WorkerLocation.prim__pathname (up a)
  
  export
  port :  JSType t1
       => {auto 0 _ : Elem WorkerLocation (Types t1)}
       -> (obj : t1)
       -> JSIO String
  port a = primJS $ WorkerLocation.prim__port (up a)
  
  export
  protocol :  JSType t1
           => {auto 0 _ : Elem WorkerLocation (Types t1)}
           -> (obj : t1)
           -> JSIO String
  protocol a = primJS $ WorkerLocation.prim__protocol (up a)
  
  export
  search :  JSType t1
         => {auto 0 _ : Elem WorkerLocation (Types t1)}
         -> (obj : t1)
         -> JSIO String
  search a = primJS $ WorkerLocation.prim__search (up a)

namespace WorkerNavigator
  
  export
  permissions :  JSType t1
              => {auto 0 _ : Elem WorkerNavigator (Types t1)}
              -> (obj : t1)
              -> JSIO Permissions
  permissions a = primJS $ WorkerNavigator.prim__permissions (up a)
  
  export
  serviceWorker :  JSType t1
                => {auto 0 _ : Elem WorkerNavigator (Types t1)}
                -> (obj : t1)
                -> JSIO ServiceWorkerContainer
  serviceWorker a = primJS $ WorkerNavigator.prim__serviceWorker (up a)

namespace Worklet
  
  export
  addModule :  JSType t1
            => JSType t2
            => {auto 0 _ : Elem Worklet (Types t1)}
            -> {auto 0 _ : Elem WorkletOptions (Types t2)}
            -> (obj : t1)
            -> (moduleURL : String)
            -> (options : Optional t2)
            -> JSIO (Promise Undefined)
  addModule a b c = primJS $ Worklet.prim__addModule (up a) b (optUp c)

  export
  addModule' :  JSType t1
             => {auto 0 _ : Elem Worklet (Types t1)}
             -> (obj : t1)
             -> (moduleURL : String)
             -> JSIO (Promise Undefined)
  addModule' a b = primJS $ Worklet.prim__addModule (up a) b undef


--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace ARIAMixin
  
  export
  ariaAtomic : ARIAMixin -> Attribute True I String
  ariaAtomic = fromPrim "ARIAMixin.getariaAtomic"
                        prim__ariaAtomic
                        prim__setAriaAtomic
  
  export
  ariaAutoComplete : ARIAMixin -> Attribute True I String
  ariaAutoComplete = fromPrim "ARIAMixin.getariaAutoComplete"
                              prim__ariaAutoComplete
                              prim__setAriaAutoComplete
  
  export
  ariaBusy : ARIAMixin -> Attribute True I String
  ariaBusy = fromPrim "ARIAMixin.getariaBusy" prim__ariaBusy prim__setAriaBusy
  
  export
  ariaChecked : ARIAMixin -> Attribute True I String
  ariaChecked = fromPrim "ARIAMixin.getariaChecked"
                         prim__ariaChecked
                         prim__setAriaChecked
  
  export
  ariaColCount : ARIAMixin -> Attribute True I String
  ariaColCount = fromPrim "ARIAMixin.getariaColCount"
                          prim__ariaColCount
                          prim__setAriaColCount
  
  export
  ariaColIndex : ARIAMixin -> Attribute True I String
  ariaColIndex = fromPrim "ARIAMixin.getariaColIndex"
                          prim__ariaColIndex
                          prim__setAriaColIndex
  
  export
  ariaColIndexText : ARIAMixin -> Attribute True I String
  ariaColIndexText = fromPrim "ARIAMixin.getariaColIndexText"
                              prim__ariaColIndexText
                              prim__setAriaColIndexText
  
  export
  ariaColSpan : ARIAMixin -> Attribute True I String
  ariaColSpan = fromPrim "ARIAMixin.getariaColSpan"
                         prim__ariaColSpan
                         prim__setAriaColSpan
  
  export
  ariaCurrent : ARIAMixin -> Attribute True I String
  ariaCurrent = fromPrim "ARIAMixin.getariaCurrent"
                         prim__ariaCurrent
                         prim__setAriaCurrent
  
  export
  ariaDescription : ARIAMixin -> Attribute True I String
  ariaDescription = fromPrim "ARIAMixin.getariaDescription"
                             prim__ariaDescription
                             prim__setAriaDescription
  
  export
  ariaDisabled : ARIAMixin -> Attribute True I String
  ariaDisabled = fromPrim "ARIAMixin.getariaDisabled"
                          prim__ariaDisabled
                          prim__setAriaDisabled
  
  export
  ariaExpanded : ARIAMixin -> Attribute True I String
  ariaExpanded = fromPrim "ARIAMixin.getariaExpanded"
                          prim__ariaExpanded
                          prim__setAriaExpanded
  
  export
  ariaHasPopup : ARIAMixin -> Attribute True I String
  ariaHasPopup = fromPrim "ARIAMixin.getariaHasPopup"
                          prim__ariaHasPopup
                          prim__setAriaHasPopup
  
  export
  ariaHidden : ARIAMixin -> Attribute True I String
  ariaHidden = fromPrim "ARIAMixin.getariaHidden"
                        prim__ariaHidden
                        prim__setAriaHidden
  
  export
  ariaInvalid : ARIAMixin -> Attribute True I String
  ariaInvalid = fromPrim "ARIAMixin.getariaInvalid"
                         prim__ariaInvalid
                         prim__setAriaInvalid
  
  export
  ariaKeyShortcuts : ARIAMixin -> Attribute True I String
  ariaKeyShortcuts = fromPrim "ARIAMixin.getariaKeyShortcuts"
                              prim__ariaKeyShortcuts
                              prim__setAriaKeyShortcuts
  
  export
  ariaLabel : ARIAMixin -> Attribute True I String
  ariaLabel = fromPrim "ARIAMixin.getariaLabel"
                       prim__ariaLabel
                       prim__setAriaLabel
  
  export
  ariaLevel : ARIAMixin -> Attribute True I String
  ariaLevel = fromPrim "ARIAMixin.getariaLevel"
                       prim__ariaLevel
                       prim__setAriaLevel
  
  export
  ariaLive : ARIAMixin -> Attribute True I String
  ariaLive = fromPrim "ARIAMixin.getariaLive" prim__ariaLive prim__setAriaLive
  
  export
  ariaModal : ARIAMixin -> Attribute True I String
  ariaModal = fromPrim "ARIAMixin.getariaModal"
                       prim__ariaModal
                       prim__setAriaModal
  
  export
  ariaMultiLine : ARIAMixin -> Attribute True I String
  ariaMultiLine = fromPrim "ARIAMixin.getariaMultiLine"
                           prim__ariaMultiLine
                           prim__setAriaMultiLine
  
  export
  ariaMultiSelectable : ARIAMixin -> Attribute True I String
  ariaMultiSelectable = fromPrim "ARIAMixin.getariaMultiSelectable"
                                 prim__ariaMultiSelectable
                                 prim__setAriaMultiSelectable
  
  export
  ariaOrientation : ARIAMixin -> Attribute True I String
  ariaOrientation = fromPrim "ARIAMixin.getariaOrientation"
                             prim__ariaOrientation
                             prim__setAriaOrientation
  
  export
  ariaPlaceholder : ARIAMixin -> Attribute True I String
  ariaPlaceholder = fromPrim "ARIAMixin.getariaPlaceholder"
                             prim__ariaPlaceholder
                             prim__setAriaPlaceholder
  
  export
  ariaPosInSet : ARIAMixin -> Attribute True I String
  ariaPosInSet = fromPrim "ARIAMixin.getariaPosInSet"
                          prim__ariaPosInSet
                          prim__setAriaPosInSet
  
  export
  ariaPressed : ARIAMixin -> Attribute True I String
  ariaPressed = fromPrim "ARIAMixin.getariaPressed"
                         prim__ariaPressed
                         prim__setAriaPressed
  
  export
  ariaReadOnly : ARIAMixin -> Attribute True I String
  ariaReadOnly = fromPrim "ARIAMixin.getariaReadOnly"
                          prim__ariaReadOnly
                          prim__setAriaReadOnly
  
  export
  ariaRequired : ARIAMixin -> Attribute True I String
  ariaRequired = fromPrim "ARIAMixin.getariaRequired"
                          prim__ariaRequired
                          prim__setAriaRequired
  
  export
  ariaRoleDescription : ARIAMixin -> Attribute True I String
  ariaRoleDescription = fromPrim "ARIAMixin.getariaRoleDescription"
                                 prim__ariaRoleDescription
                                 prim__setAriaRoleDescription
  
  export
  ariaRowCount : ARIAMixin -> Attribute True I String
  ariaRowCount = fromPrim "ARIAMixin.getariaRowCount"
                          prim__ariaRowCount
                          prim__setAriaRowCount
  
  export
  ariaRowIndex : ARIAMixin -> Attribute True I String
  ariaRowIndex = fromPrim "ARIAMixin.getariaRowIndex"
                          prim__ariaRowIndex
                          prim__setAriaRowIndex
  
  export
  ariaRowIndexText : ARIAMixin -> Attribute True I String
  ariaRowIndexText = fromPrim "ARIAMixin.getariaRowIndexText"
                              prim__ariaRowIndexText
                              prim__setAriaRowIndexText
  
  export
  ariaRowSpan : ARIAMixin -> Attribute True I String
  ariaRowSpan = fromPrim "ARIAMixin.getariaRowSpan"
                         prim__ariaRowSpan
                         prim__setAriaRowSpan
  
  export
  ariaSelected : ARIAMixin -> Attribute True I String
  ariaSelected = fromPrim "ARIAMixin.getariaSelected"
                          prim__ariaSelected
                          prim__setAriaSelected
  
  export
  ariaSetSize : ARIAMixin -> Attribute True I String
  ariaSetSize = fromPrim "ARIAMixin.getariaSetSize"
                         prim__ariaSetSize
                         prim__setAriaSetSize
  
  export
  ariaSort : ARIAMixin -> Attribute True I String
  ariaSort = fromPrim "ARIAMixin.getariaSort" prim__ariaSort prim__setAriaSort
  
  export
  ariaValueMax : ARIAMixin -> Attribute True I String
  ariaValueMax = fromPrim "ARIAMixin.getariaValueMax"
                          prim__ariaValueMax
                          prim__setAriaValueMax
  
  export
  ariaValueMin : ARIAMixin -> Attribute True I String
  ariaValueMin = fromPrim "ARIAMixin.getariaValueMin"
                          prim__ariaValueMin
                          prim__setAriaValueMin
  
  export
  ariaValueNow : ARIAMixin -> Attribute True I String
  ariaValueNow = fromPrim "ARIAMixin.getariaValueNow"
                          prim__ariaValueNow
                          prim__setAriaValueNow
  
  export
  ariaValueText : ARIAMixin -> Attribute True I String
  ariaValueText = fromPrim "ARIAMixin.getariaValueText"
                           prim__ariaValueText
                           prim__setAriaValueText
  
  export
  role : ARIAMixin -> Attribute False Maybe String
  role = fromNullablePrim "ARIAMixin.getrole" prim__role prim__setRole

namespace AbstractWorker
  
  export
  onerror : AbstractWorker -> Attribute False Maybe EventHandlerNonNull
  onerror = fromNullablePrim "AbstractWorker.getonerror"
                             prim__onerror
                             prim__setOnerror

namespace CanvasCompositing
  
  export
  globalAlpha : CanvasCompositing -> Attribute True I Double
  globalAlpha = fromPrim "CanvasCompositing.getglobalAlpha"
                         prim__globalAlpha
                         prim__setGlobalAlpha
  
  export
  globalCompositeOperation : CanvasCompositing -> Attribute True I String
  globalCompositeOperation = fromPrim "CanvasCompositing.getglobalCompositeOperation"
                                      prim__globalCompositeOperation
                                      prim__setGlobalCompositeOperation

namespace CanvasDrawImage
  
  export
  drawImage :  (obj : CanvasDrawImage)
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
  drawImage a b c d = primJS $ CanvasDrawImage.prim__drawImage a (toFFI b) c d
  
  export
  drawImage1 :  (obj : CanvasDrawImage)
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
                         $ CanvasDrawImage.prim__drawImage1 a (toFFI b) c d e f
  
  export
  drawImage2 :  (obj : CanvasDrawImage)
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
                                 $ CanvasDrawImage.prim__drawImage2 a
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
  beginPath : (obj : CanvasDrawPath) -> JSIO ()
  beginPath a = primJS $ CanvasDrawPath.prim__beginPath a
  
  export
  clip :  (obj : CanvasDrawPath)
       -> (fillRule : Optional CanvasFillRule)
       -> JSIO ()
  clip a b = primJS $ CanvasDrawPath.prim__clip a (toFFI b)

  export
  clip' : (obj : CanvasDrawPath) -> JSIO ()
  clip' a = primJS $ CanvasDrawPath.prim__clip a undef
  
  export
  clip1 :  JSType t1
        => {auto 0 _ : Elem Path2D (Types t1)}
        -> (obj : CanvasDrawPath)
        -> (path : t1)
        -> (fillRule : Optional CanvasFillRule)
        -> JSIO ()
  clip1 a b c = primJS $ CanvasDrawPath.prim__clip1 a (up b) (toFFI c)

  export
  clip1' :  JSType t1
         => {auto 0 _ : Elem Path2D (Types t1)}
         -> (obj : CanvasDrawPath)
         -> (path : t1)
         -> JSIO ()
  clip1' a b = primJS $ CanvasDrawPath.prim__clip1 a (up b) undef
  
  export
  fill :  (obj : CanvasDrawPath)
       -> (fillRule : Optional CanvasFillRule)
       -> JSIO ()
  fill a b = primJS $ CanvasDrawPath.prim__fill a (toFFI b)

  export
  fill' : (obj : CanvasDrawPath) -> JSIO ()
  fill' a = primJS $ CanvasDrawPath.prim__fill a undef
  
  export
  fill1 :  JSType t1
        => {auto 0 _ : Elem Path2D (Types t1)}
        -> (obj : CanvasDrawPath)
        -> (path : t1)
        -> (fillRule : Optional CanvasFillRule)
        -> JSIO ()
  fill1 a b c = primJS $ CanvasDrawPath.prim__fill1 a (up b) (toFFI c)

  export
  fill1' :  JSType t1
         => {auto 0 _ : Elem Path2D (Types t1)}
         -> (obj : CanvasDrawPath)
         -> (path : t1)
         -> JSIO ()
  fill1' a b = primJS $ CanvasDrawPath.prim__fill1 a (up b) undef
  
  export
  isPointInPath :  (obj : CanvasDrawPath)
                -> (x : Double)
                -> (y : Double)
                -> (fillRule : Optional CanvasFillRule)
                -> JSIO Bool
  isPointInPath a b c d = tryJS "CanvasDrawPath.isPointInPath"
                        $ CanvasDrawPath.prim__isPointInPath a b c (toFFI d)

  export
  isPointInPath' :  (obj : CanvasDrawPath)
                 -> (x : Double)
                 -> (y : Double)
                 -> JSIO Bool
  isPointInPath' a b c = tryJS "CanvasDrawPath.isPointInPath'"
                       $ CanvasDrawPath.prim__isPointInPath a b c undef
  
  export
  isPointInPath1 :  JSType t1
                 => {auto 0 _ : Elem Path2D (Types t1)}
                 -> (obj : CanvasDrawPath)
                 -> (path : t1)
                 -> (x : Double)
                 -> (y : Double)
                 -> (fillRule : Optional CanvasFillRule)
                 -> JSIO Bool
  isPointInPath1 a b c d e = tryJS "CanvasDrawPath.isPointInPath1"
                           $ CanvasDrawPath.prim__isPointInPath1 a
                                                                 (up b)
                                                                 c
                                                                 d
                                                                 (toFFI e)

  export
  isPointInPath1' :  JSType t1
                  => {auto 0 _ : Elem Path2D (Types t1)}
                  -> (obj : CanvasDrawPath)
                  -> (path : t1)
                  -> (x : Double)
                  -> (y : Double)
                  -> JSIO Bool
  isPointInPath1' a b c d = tryJS "CanvasDrawPath.isPointInPath1'"
                          $ CanvasDrawPath.prim__isPointInPath1 a
                                                                (up b)
                                                                c
                                                                d
                                                                undef
  
  export
  isPointInStroke :  (obj : CanvasDrawPath)
                  -> (x : Double)
                  -> (y : Double)
                  -> JSIO Bool
  isPointInStroke a b c = tryJS "CanvasDrawPath.isPointInStroke"
                        $ CanvasDrawPath.prim__isPointInStroke a b c
  
  export
  isPointInStroke1 :  JSType t1
                   => {auto 0 _ : Elem Path2D (Types t1)}
                   -> (obj : CanvasDrawPath)
                   -> (path : t1)
                   -> (x : Double)
                   -> (y : Double)
                   -> JSIO Bool
  isPointInStroke1 a b c d = tryJS "CanvasDrawPath.isPointInStroke1"
                           $ CanvasDrawPath.prim__isPointInStroke1 a (up b) c d
  
  export
  stroke : (obj : CanvasDrawPath) -> JSIO ()
  stroke a = primJS $ CanvasDrawPath.prim__stroke a
  
  export
  stroke1 :  JSType t1
          => {auto 0 _ : Elem Path2D (Types t1)}
          -> (obj : CanvasDrawPath)
          -> (path : t1)
          -> JSIO ()
  stroke1 a b = primJS $ CanvasDrawPath.prim__stroke1 a (up b)

namespace CanvasFillStrokeStyles
  
  export
  fillStyle : CanvasFillStrokeStyles -> Attribute True I (NS I [ String
                                                               , CanvasGradient
                                                               , CanvasPattern
                                                               ])
  fillStyle = fromPrim "CanvasFillStrokeStyles.getfillStyle"
                       prim__fillStyle
                       prim__setFillStyle
  
  export
  strokeStyle : CanvasFillStrokeStyles -> Attribute True I (NS I [ String
                                                                 , CanvasGradient
                                                                 , CanvasPattern
                                                                 ])
  strokeStyle = fromPrim "CanvasFillStrokeStyles.getstrokeStyle"
                         prim__strokeStyle
                         prim__setStrokeStyle
  
  export
  createLinearGradient :  (obj : CanvasFillStrokeStyles)
                       -> (x0 : Double)
                       -> (y0 : Double)
                       -> (x1 : Double)
                       -> (y1 : Double)
                       -> JSIO CanvasGradient
  createLinearGradient a b c d e = primJS
                                 $ CanvasFillStrokeStyles.prim__createLinearGradient a
                                                                                     b
                                                                                     c
                                                                                     d
                                                                                     e
  
  export
  createPattern :  (obj : CanvasFillStrokeStyles)
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
                      $ CanvasFillStrokeStyles.prim__createPattern a (toFFI b) c
  
  export
  createRadialGradient :  (obj : CanvasFillStrokeStyles)
                       -> (x0 : Double)
                       -> (y0 : Double)
                       -> (r0 : Double)
                       -> (x1 : Double)
                       -> (y1 : Double)
                       -> (r1 : Double)
                       -> JSIO CanvasGradient
  createRadialGradient a b c d e f g = primJS
                                     $ CanvasFillStrokeStyles.prim__createRadialGradient a
                                                                                         b
                                                                                         c
                                                                                         d
                                                                                         e
                                                                                         f
                                                                                         g

namespace CanvasFilters
  
  export
  filter : CanvasFilters -> Attribute True I String
  filter = fromPrim "CanvasFilters.getfilter" prim__filter prim__setFilter

namespace CanvasImageData
  
  export
  createImageData :  (obj : CanvasImageData)
                  -> (sw : Int32)
                  -> (sh : Int32)
                  -> JSIO ImageData
  createImageData a b c = primJS $ CanvasImageData.prim__createImageData a b c
  
  export
  createImageData1 :  JSType t1
                   => {auto 0 _ : Elem ImageData (Types t1)}
                   -> (obj : CanvasImageData)
                   -> (imagedata : t1)
                   -> JSIO ImageData
  createImageData1 a b = primJS
                       $ CanvasImageData.prim__createImageData1 a (up b)
  
  export
  getImageData :  (obj : CanvasImageData)
               -> (sx : Int32)
               -> (sy : Int32)
               -> (sw : Int32)
               -> (sh : Int32)
               -> JSIO ImageData
  getImageData a b c d e = primJS $ CanvasImageData.prim__getImageData a b c d e
  
  export
  putImageData :  JSType t1
               => {auto 0 _ : Elem ImageData (Types t1)}
               -> (obj : CanvasImageData)
               -> (imagedata : t1)
               -> (dx : Int32)
               -> (dy : Int32)
               -> JSIO ()
  putImageData a b c d = primJS
                       $ CanvasImageData.prim__putImageData a (up b) c d
  
  export
  putImageData1 :  JSType t1
                => {auto 0 _ : Elem ImageData (Types t1)}
                -> (obj : CanvasImageData)
                -> (imagedata : t1)
                -> (dx : Int32)
                -> (dy : Int32)
                -> (dirtyX : Int32)
                -> (dirtyY : Int32)
                -> (dirtyWidth : Int32)
                -> (dirtyHeight : Int32)
                -> JSIO ()
  putImageData1 a b c d e f g h = primJS
                                $ CanvasImageData.prim__putImageData1 a
                                                                      (up b)
                                                                      c
                                                                      d
                                                                      e
                                                                      f
                                                                      g
                                                                      h

namespace CanvasImageSmoothing
  
  export
  imageSmoothingEnabled : CanvasImageSmoothing -> Attribute True I Bool
  imageSmoothingEnabled = fromPrim "CanvasImageSmoothing.getimageSmoothingEnabled"
                                   prim__imageSmoothingEnabled
                                   prim__setImageSmoothingEnabled
  
  export
  imageSmoothingQuality : CanvasImageSmoothing -> Attribute True I ImageSmoothingQuality
  imageSmoothingQuality = fromPrim "CanvasImageSmoothing.getimageSmoothingQuality"
                                   prim__imageSmoothingQuality
                                   prim__setImageSmoothingQuality

namespace CanvasPath
  
  export
  arc :  (obj : CanvasPath)
      -> (x : Double)
      -> (y : Double)
      -> (radius : Double)
      -> (startAngle : Double)
      -> (endAngle : Double)
      -> (counterclockwise : Optional Bool)
      -> JSIO ()
  arc a b c d e f g = primJS $ CanvasPath.prim__arc a b c d e f (toFFI g)

  export
  arc' :  (obj : CanvasPath)
       -> (x : Double)
       -> (y : Double)
       -> (radius : Double)
       -> (startAngle : Double)
       -> (endAngle : Double)
       -> JSIO ()
  arc' a b c d e f = primJS $ CanvasPath.prim__arc a b c d e f undef
  
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
  bezierCurveTo a b c d e f g = primJS
                              $ CanvasPath.prim__bezierCurveTo a b c d e f g
  
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
          -> (counterclockwise : Optional Bool)
          -> JSIO ()
  ellipse a b c d e f g h i = primJS
                            $ CanvasPath.prim__ellipse a b c d e f g h (toFFI i)

  export
  ellipse' :  (obj : CanvasPath)
           -> (x : Double)
           -> (y : Double)
           -> (radiusX : Double)
           -> (radiusY : Double)
           -> (rotation : Double)
           -> (startAngle : Double)
           -> (endAngle : Double)
           -> JSIO ()
  ellipse' a b c d e f g h = primJS
                           $ CanvasPath.prim__ellipse a b c d e f g h undef
  
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
  quadraticCurveTo a b c d e = primJS
                             $ CanvasPath.prim__quadraticCurveTo a b c d e
  
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
  lineCap : CanvasPathDrawingStyles -> Attribute True I CanvasLineCap
  lineCap = fromPrim "CanvasPathDrawingStyles.getlineCap"
                     prim__lineCap
                     prim__setLineCap
  
  export
  lineDashOffset : CanvasPathDrawingStyles -> Attribute True I Double
  lineDashOffset = fromPrim "CanvasPathDrawingStyles.getlineDashOffset"
                            prim__lineDashOffset
                            prim__setLineDashOffset
  
  export
  lineJoin : CanvasPathDrawingStyles -> Attribute True I CanvasLineJoin
  lineJoin = fromPrim "CanvasPathDrawingStyles.getlineJoin"
                      prim__lineJoin
                      prim__setLineJoin
  
  export
  lineWidth : CanvasPathDrawingStyles -> Attribute True I Double
  lineWidth = fromPrim "CanvasPathDrawingStyles.getlineWidth"
                       prim__lineWidth
                       prim__setLineWidth
  
  export
  miterLimit : CanvasPathDrawingStyles -> Attribute True I Double
  miterLimit = fromPrim "CanvasPathDrawingStyles.getmiterLimit"
                        prim__miterLimit
                        prim__setMiterLimit
  
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
  shadowBlur : CanvasShadowStyles -> Attribute True I Double
  shadowBlur = fromPrim "CanvasShadowStyles.getshadowBlur"
                        prim__shadowBlur
                        prim__setShadowBlur
  
  export
  shadowColor : CanvasShadowStyles -> Attribute True I String
  shadowColor = fromPrim "CanvasShadowStyles.getshadowColor"
                         prim__shadowColor
                         prim__setShadowColor
  
  export
  shadowOffsetX : CanvasShadowStyles -> Attribute True I Double
  shadowOffsetX = fromPrim "CanvasShadowStyles.getshadowOffsetX"
                           prim__shadowOffsetX
                           prim__setShadowOffsetX
  
  export
  shadowOffsetY : CanvasShadowStyles -> Attribute True I Double
  shadowOffsetY = fromPrim "CanvasShadowStyles.getshadowOffsetY"
                           prim__shadowOffsetY
                           prim__setShadowOffsetY

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
           -> (maxWidth : Optional Double)
           -> JSIO ()
  fillText a b c d e = primJS $ CanvasText.prim__fillText a b c d (toFFI e)

  export
  fillText' :  (obj : CanvasText)
            -> (text : String)
            -> (x : Double)
            -> (y : Double)
            -> JSIO ()
  fillText' a b c d = primJS $ CanvasText.prim__fillText a b c d undef
  
  export
  measureText : (obj : CanvasText) -> (text : String) -> JSIO TextMetrics
  measureText a b = primJS $ CanvasText.prim__measureText a b
  
  export
  strokeText :  (obj : CanvasText)
             -> (text : String)
             -> (x : Double)
             -> (y : Double)
             -> (maxWidth : Optional Double)
             -> JSIO ()
  strokeText a b c d e = primJS $ CanvasText.prim__strokeText a b c d (toFFI e)

  export
  strokeText' :  (obj : CanvasText)
              -> (text : String)
              -> (x : Double)
              -> (y : Double)
              -> JSIO ()
  strokeText' a b c d = primJS $ CanvasText.prim__strokeText a b c d undef

namespace CanvasTextDrawingStyles
  
  export
  direction : CanvasTextDrawingStyles -> Attribute True I CanvasDirection
  direction = fromPrim "CanvasTextDrawingStyles.getdirection"
                       prim__direction
                       prim__setDirection
  
  export
  font : CanvasTextDrawingStyles -> Attribute True I String
  font = fromPrim "CanvasTextDrawingStyles.getfont" prim__font prim__setFont
  
  export
  textAlign : CanvasTextDrawingStyles -> Attribute True I CanvasTextAlign
  textAlign = fromPrim "CanvasTextDrawingStyles.gettextAlign"
                       prim__textAlign
                       prim__setTextAlign
  
  export
  textBaseline : CanvasTextDrawingStyles -> Attribute True I CanvasTextBaseline
  textBaseline = fromPrim "CanvasTextDrawingStyles.gettextBaseline"
                          prim__textBaseline
                          prim__setTextBaseline

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
  setTransform a b c d e f g = primJS
                             $ CanvasTransform.prim__setTransform a b c d e f g
  
  export
  setTransform1 :  JSType t1
                => {auto 0 _ : Elem DOMMatrix2DInit (Types t1)}
                -> (obj : CanvasTransform)
                -> (transform : Optional t1)
                -> JSIO ()
  setTransform1 a b = primJS $ CanvasTransform.prim__setTransform1 a (optUp b)

  export
  setTransform1' : (obj : CanvasTransform) -> JSIO ()
  setTransform1' a = primJS $ CanvasTransform.prim__setTransform1 a undef
  
  export
  transform :  (obj : CanvasTransform)
            -> (a : Double)
            -> (b : Double)
            -> (c : Double)
            -> (d : Double)
            -> (e : Double)
            -> (f : Double)
            -> JSIO ()
  transform a b c d e f g = primJS
                          $ CanvasTransform.prim__transform a b c d e f g
  
  export
  translate : (obj : CanvasTransform) -> (x : Double) -> (y : Double) -> JSIO ()
  translate a b c = primJS $ CanvasTransform.prim__translate a b c

namespace CanvasUserInterface
  
  export
  drawFocusIfNeeded :  JSType t1
                    => {auto 0 _ : Elem Element (Types t1)}
                    -> (obj : CanvasUserInterface)
                    -> (element : t1)
                    -> JSIO ()
  drawFocusIfNeeded a b = primJS
                        $ CanvasUserInterface.prim__drawFocusIfNeeded a (up b)
  
  export
  drawFocusIfNeeded1 :  JSType t1
                     => JSType t2
                     => {auto 0 _ : Elem Path2D (Types t1)}
                     -> {auto 0 _ : Elem Element (Types t2)}
                     -> (obj : CanvasUserInterface)
                     -> (path : t1)
                     -> (element : t2)
                     -> JSIO ()
  drawFocusIfNeeded1 a b c = primJS
                           $ CanvasUserInterface.prim__drawFocusIfNeeded1 a
                                                                          (up b)
                                                                          (up c)
  
  export
  scrollPathIntoView : (obj : CanvasUserInterface) -> JSIO ()
  scrollPathIntoView a = primJS $ CanvasUserInterface.prim__scrollPathIntoView a
  
  export
  scrollPathIntoView1 :  JSType t1
                      => {auto 0 _ : Elem Path2D (Types t1)}
                      -> (obj : CanvasUserInterface)
                      -> (path : t1)
                      -> JSIO ()
  scrollPathIntoView1 a b = primJS
                          $ CanvasUserInterface.prim__scrollPathIntoView1 a
                                                                          (up b)

namespace DocumentAndElementEventHandlers
  
  export
  oncopy : DocumentAndElementEventHandlers -> Attribute False Maybe EventHandlerNonNull
  oncopy = fromNullablePrim "DocumentAndElementEventHandlers.getoncopy"
                            prim__oncopy
                            prim__setOncopy
  
  export
  oncut : DocumentAndElementEventHandlers -> Attribute False Maybe EventHandlerNonNull
  oncut = fromNullablePrim "DocumentAndElementEventHandlers.getoncut"
                           prim__oncut
                           prim__setOncut
  
  export
  onpaste : DocumentAndElementEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onpaste = fromNullablePrim "DocumentAndElementEventHandlers.getonpaste"
                             prim__onpaste
                             prim__setOnpaste

namespace ElementContentEditable
  
  export
  contentEditable : ElementContentEditable -> Attribute True I String
  contentEditable = fromPrim "ElementContentEditable.getcontentEditable"
                             prim__contentEditable
                             prim__setContentEditable
  
  export
  enterKeyHint : ElementContentEditable -> Attribute True I String
  enterKeyHint = fromPrim "ElementContentEditable.getenterKeyHint"
                          prim__enterKeyHint
                          prim__setEnterKeyHint
  
  export
  inputMode : ElementContentEditable -> Attribute True I String
  inputMode = fromPrim "ElementContentEditable.getinputMode"
                       prim__inputMode
                       prim__setInputMode
  
  export
  isContentEditable : (obj : ElementContentEditable) -> JSIO Bool
  isContentEditable a = tryJS "ElementContentEditable.isContentEditable"
                      $ ElementContentEditable.prim__isContentEditable a

namespace GlobalEventHandlers
  
  export
  onabort : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onabort = fromNullablePrim "GlobalEventHandlers.getonabort"
                             prim__onabort
                             prim__setOnabort
  
  export
  onauxclick : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onauxclick = fromNullablePrim "GlobalEventHandlers.getonauxclick"
                                prim__onauxclick
                                prim__setOnauxclick
  
  export
  onblur : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onblur = fromNullablePrim "GlobalEventHandlers.getonblur"
                            prim__onblur
                            prim__setOnblur
  
  export
  oncancel : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  oncancel = fromNullablePrim "GlobalEventHandlers.getoncancel"
                              prim__oncancel
                              prim__setOncancel
  
  export
  oncanplay : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  oncanplay = fromNullablePrim "GlobalEventHandlers.getoncanplay"
                               prim__oncanplay
                               prim__setOncanplay
  
  export
  oncanplaythrough : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  oncanplaythrough = fromNullablePrim "GlobalEventHandlers.getoncanplaythrough"
                                      prim__oncanplaythrough
                                      prim__setOncanplaythrough
  
  export
  onchange : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onchange = fromNullablePrim "GlobalEventHandlers.getonchange"
                              prim__onchange
                              prim__setOnchange
  
  export
  onclick : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onclick = fromNullablePrim "GlobalEventHandlers.getonclick"
                             prim__onclick
                             prim__setOnclick
  
  export
  onclose : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onclose = fromNullablePrim "GlobalEventHandlers.getonclose"
                             prim__onclose
                             prim__setOnclose
  
  export
  oncontextmenu : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  oncontextmenu = fromNullablePrim "GlobalEventHandlers.getoncontextmenu"
                                   prim__oncontextmenu
                                   prim__setOncontextmenu
  
  export
  oncuechange : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  oncuechange = fromNullablePrim "GlobalEventHandlers.getoncuechange"
                                 prim__oncuechange
                                 prim__setOncuechange
  
  export
  ondblclick : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  ondblclick = fromNullablePrim "GlobalEventHandlers.getondblclick"
                                prim__ondblclick
                                prim__setOndblclick
  
  export
  ondrag : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  ondrag = fromNullablePrim "GlobalEventHandlers.getondrag"
                            prim__ondrag
                            prim__setOndrag
  
  export
  ondragend : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  ondragend = fromNullablePrim "GlobalEventHandlers.getondragend"
                               prim__ondragend
                               prim__setOndragend
  
  export
  ondragenter : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  ondragenter = fromNullablePrim "GlobalEventHandlers.getondragenter"
                                 prim__ondragenter
                                 prim__setOndragenter
  
  export
  ondragleave : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  ondragleave = fromNullablePrim "GlobalEventHandlers.getondragleave"
                                 prim__ondragleave
                                 prim__setOndragleave
  
  export
  ondragover : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  ondragover = fromNullablePrim "GlobalEventHandlers.getondragover"
                                prim__ondragover
                                prim__setOndragover
  
  export
  ondragstart : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  ondragstart = fromNullablePrim "GlobalEventHandlers.getondragstart"
                                 prim__ondragstart
                                 prim__setOndragstart
  
  export
  ondrop : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  ondrop = fromNullablePrim "GlobalEventHandlers.getondrop"
                            prim__ondrop
                            prim__setOndrop
  
  export
  ondurationchange : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  ondurationchange = fromNullablePrim "GlobalEventHandlers.getondurationchange"
                                      prim__ondurationchange
                                      prim__setOndurationchange
  
  export
  onemptied : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onemptied = fromNullablePrim "GlobalEventHandlers.getonemptied"
                               prim__onemptied
                               prim__setOnemptied
  
  export
  onended : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onended = fromNullablePrim "GlobalEventHandlers.getonended"
                             prim__onended
                             prim__setOnended
  
  export
  onerror : GlobalEventHandlers -> Attribute False Maybe OnErrorEventHandlerNonNull
  onerror = fromNullablePrim "GlobalEventHandlers.getonerror"
                             prim__onerror
                             prim__setOnerror
  
  export
  onfocus : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onfocus = fromNullablePrim "GlobalEventHandlers.getonfocus"
                             prim__onfocus
                             prim__setOnfocus
  
  export
  onformdata : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onformdata = fromNullablePrim "GlobalEventHandlers.getonformdata"
                                prim__onformdata
                                prim__setOnformdata
  
  export
  oninput : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  oninput = fromNullablePrim "GlobalEventHandlers.getoninput"
                             prim__oninput
                             prim__setOninput
  
  export
  oninvalid : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  oninvalid = fromNullablePrim "GlobalEventHandlers.getoninvalid"
                               prim__oninvalid
                               prim__setOninvalid
  
  export
  onkeydown : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onkeydown = fromNullablePrim "GlobalEventHandlers.getonkeydown"
                               prim__onkeydown
                               prim__setOnkeydown
  
  export
  onkeypress : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onkeypress = fromNullablePrim "GlobalEventHandlers.getonkeypress"
                                prim__onkeypress
                                prim__setOnkeypress
  
  export
  onkeyup : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onkeyup = fromNullablePrim "GlobalEventHandlers.getonkeyup"
                             prim__onkeyup
                             prim__setOnkeyup
  
  export
  onload : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onload = fromNullablePrim "GlobalEventHandlers.getonload"
                            prim__onload
                            prim__setOnload
  
  export
  onloadeddata : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onloadeddata = fromNullablePrim "GlobalEventHandlers.getonloadeddata"
                                  prim__onloadeddata
                                  prim__setOnloadeddata
  
  export
  onloadedmetadata : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onloadedmetadata = fromNullablePrim "GlobalEventHandlers.getonloadedmetadata"
                                      prim__onloadedmetadata
                                      prim__setOnloadedmetadata
  
  export
  onloadstart : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onloadstart = fromNullablePrim "GlobalEventHandlers.getonloadstart"
                                 prim__onloadstart
                                 prim__setOnloadstart
  
  export
  onmousedown : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onmousedown = fromNullablePrim "GlobalEventHandlers.getonmousedown"
                                 prim__onmousedown
                                 prim__setOnmousedown
  
  export
  onmouseenter : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onmouseenter = fromNullablePrim "GlobalEventHandlers.getonmouseenter"
                                  prim__onmouseenter
                                  prim__setOnmouseenter
  
  export
  onmouseleave : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onmouseleave = fromNullablePrim "GlobalEventHandlers.getonmouseleave"
                                  prim__onmouseleave
                                  prim__setOnmouseleave
  
  export
  onmousemove : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onmousemove = fromNullablePrim "GlobalEventHandlers.getonmousemove"
                                 prim__onmousemove
                                 prim__setOnmousemove
  
  export
  onmouseout : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onmouseout = fromNullablePrim "GlobalEventHandlers.getonmouseout"
                                prim__onmouseout
                                prim__setOnmouseout
  
  export
  onmouseover : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onmouseover = fromNullablePrim "GlobalEventHandlers.getonmouseover"
                                 prim__onmouseover
                                 prim__setOnmouseover
  
  export
  onmouseup : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onmouseup = fromNullablePrim "GlobalEventHandlers.getonmouseup"
                               prim__onmouseup
                               prim__setOnmouseup
  
  export
  onpause : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onpause = fromNullablePrim "GlobalEventHandlers.getonpause"
                             prim__onpause
                             prim__setOnpause
  
  export
  onplay : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onplay = fromNullablePrim "GlobalEventHandlers.getonplay"
                            prim__onplay
                            prim__setOnplay
  
  export
  onplaying : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onplaying = fromNullablePrim "GlobalEventHandlers.getonplaying"
                               prim__onplaying
                               prim__setOnplaying
  
  export
  onprogress : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onprogress = fromNullablePrim "GlobalEventHandlers.getonprogress"
                                prim__onprogress
                                prim__setOnprogress
  
  export
  onratechange : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onratechange = fromNullablePrim "GlobalEventHandlers.getonratechange"
                                  prim__onratechange
                                  prim__setOnratechange
  
  export
  onreset : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onreset = fromNullablePrim "GlobalEventHandlers.getonreset"
                             prim__onreset
                             prim__setOnreset
  
  export
  onresize : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onresize = fromNullablePrim "GlobalEventHandlers.getonresize"
                              prim__onresize
                              prim__setOnresize
  
  export
  onscroll : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onscroll = fromNullablePrim "GlobalEventHandlers.getonscroll"
                              prim__onscroll
                              prim__setOnscroll
  
  export
  onsecuritypolicyviolation : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onsecuritypolicyviolation = fromNullablePrim "GlobalEventHandlers.getonsecuritypolicyviolation"
                                               prim__onsecuritypolicyviolation
                                               prim__setOnsecuritypolicyviolation
  
  export
  onseeked : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onseeked = fromNullablePrim "GlobalEventHandlers.getonseeked"
                              prim__onseeked
                              prim__setOnseeked
  
  export
  onseeking : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onseeking = fromNullablePrim "GlobalEventHandlers.getonseeking"
                               prim__onseeking
                               prim__setOnseeking
  
  export
  onselect : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onselect = fromNullablePrim "GlobalEventHandlers.getonselect"
                              prim__onselect
                              prim__setOnselect
  
  export
  onslotchange : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onslotchange = fromNullablePrim "GlobalEventHandlers.getonslotchange"
                                  prim__onslotchange
                                  prim__setOnslotchange
  
  export
  onstalled : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onstalled = fromNullablePrim "GlobalEventHandlers.getonstalled"
                               prim__onstalled
                               prim__setOnstalled
  
  export
  onsubmit : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onsubmit = fromNullablePrim "GlobalEventHandlers.getonsubmit"
                              prim__onsubmit
                              prim__setOnsubmit
  
  export
  onsuspend : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onsuspend = fromNullablePrim "GlobalEventHandlers.getonsuspend"
                               prim__onsuspend
                               prim__setOnsuspend
  
  export
  ontimeupdate : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  ontimeupdate = fromNullablePrim "GlobalEventHandlers.getontimeupdate"
                                  prim__ontimeupdate
                                  prim__setOntimeupdate
  
  export
  ontoggle : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  ontoggle = fromNullablePrim "GlobalEventHandlers.getontoggle"
                              prim__ontoggle
                              prim__setOntoggle
  
  export
  onvolumechange : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onvolumechange = fromNullablePrim "GlobalEventHandlers.getonvolumechange"
                                    prim__onvolumechange
                                    prim__setOnvolumechange
  
  export
  onwaiting : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onwaiting = fromNullablePrim "GlobalEventHandlers.getonwaiting"
                               prim__onwaiting
                               prim__setOnwaiting
  
  export
  onwebkitanimationend : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onwebkitanimationend = fromNullablePrim "GlobalEventHandlers.getonwebkitanimationend"
                                          prim__onwebkitanimationend
                                          prim__setOnwebkitanimationend
  
  export
  onwebkitanimationiteration : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onwebkitanimationiteration = fromNullablePrim "GlobalEventHandlers.getonwebkitanimationiteration"
                                                prim__onwebkitanimationiteration
                                                prim__setOnwebkitanimationiteration
  
  export
  onwebkitanimationstart : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onwebkitanimationstart = fromNullablePrim "GlobalEventHandlers.getonwebkitanimationstart"
                                            prim__onwebkitanimationstart
                                            prim__setOnwebkitanimationstart
  
  export
  onwebkittransitionend : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onwebkittransitionend = fromNullablePrim "GlobalEventHandlers.getonwebkittransitionend"
                                           prim__onwebkittransitionend
                                           prim__setOnwebkittransitionend
  
  export
  onwheel : GlobalEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onwheel = fromNullablePrim "GlobalEventHandlers.getonwheel"
                             prim__onwheel
                             prim__setOnwheel

namespace HTMLHyperlinkElementUtils
  
  export
  hash : HTMLHyperlinkElementUtils -> Attribute True I String
  hash = fromPrim "HTMLHyperlinkElementUtils.gethash" prim__hash prim__setHash
  
  export
  host : HTMLHyperlinkElementUtils -> Attribute True I String
  host = fromPrim "HTMLHyperlinkElementUtils.gethost" prim__host prim__setHost
  
  export
  hostname : HTMLHyperlinkElementUtils -> Attribute True I String
  hostname = fromPrim "HTMLHyperlinkElementUtils.gethostname"
                      prim__hostname
                      prim__setHostname
  
  export
  href : HTMLHyperlinkElementUtils -> Attribute True I String
  href = fromPrim "HTMLHyperlinkElementUtils.gethref" prim__href prim__setHref
  
  export
  origin : (obj : HTMLHyperlinkElementUtils) -> JSIO String
  origin a = primJS $ HTMLHyperlinkElementUtils.prim__origin a
  
  export
  password : HTMLHyperlinkElementUtils -> Attribute True I String
  password = fromPrim "HTMLHyperlinkElementUtils.getpassword"
                      prim__password
                      prim__setPassword
  
  export
  pathname : HTMLHyperlinkElementUtils -> Attribute True I String
  pathname = fromPrim "HTMLHyperlinkElementUtils.getpathname"
                      prim__pathname
                      prim__setPathname
  
  export
  port : HTMLHyperlinkElementUtils -> Attribute True I String
  port = fromPrim "HTMLHyperlinkElementUtils.getport" prim__port prim__setPort
  
  export
  protocol : HTMLHyperlinkElementUtils -> Attribute True I String
  protocol = fromPrim "HTMLHyperlinkElementUtils.getprotocol"
                      prim__protocol
                      prim__setProtocol
  
  export
  search : HTMLHyperlinkElementUtils -> Attribute True I String
  search = fromPrim "HTMLHyperlinkElementUtils.getsearch"
                    prim__search
                    prim__setSearch
  
  export
  username : HTMLHyperlinkElementUtils -> Attribute True I String
  username = fromPrim "HTMLHyperlinkElementUtils.getusername"
                      prim__username
                      prim__setUsername

namespace HTMLOrSVGElement
  
  export
  autofocus : HTMLOrSVGElement -> Attribute True I Bool
  autofocus = fromPrim "HTMLOrSVGElement.getautofocus"
                       prim__autofocus
                       prim__setAutofocus
  
  export
  dataset : (obj : HTMLOrSVGElement) -> JSIO DOMStringMap
  dataset a = primJS $ HTMLOrSVGElement.prim__dataset a
  
  export
  nonce : HTMLOrSVGElement -> Attribute True I String
  nonce = fromPrim "HTMLOrSVGElement.getnonce" prim__nonce prim__setNonce
  
  export
  tabIndex : HTMLOrSVGElement -> Attribute True I Int32
  tabIndex = fromPrim "HTMLOrSVGElement.gettabIndex"
                      prim__tabIndex
                      prim__setTabIndex
  
  export
  blur : (obj : HTMLOrSVGElement) -> JSIO ()
  blur a = primJS $ HTMLOrSVGElement.prim__blur a
  
  export
  focus :  JSType t1
        => {auto 0 _ : Elem FocusOptions (Types t1)}
        -> (obj : HTMLOrSVGElement)
        -> (options : Optional t1)
        -> JSIO ()
  focus a b = primJS $ HTMLOrSVGElement.prim__focus a (optUp b)

  export
  focus' : (obj : HTMLOrSVGElement) -> JSIO ()
  focus' a = primJS $ HTMLOrSVGElement.prim__focus a undef

namespace NavigatorConcurrentHardware
  
  export
  hardwareConcurrency : (obj : NavigatorConcurrentHardware) -> JSIO UInt64
  hardwareConcurrency a = primJS
                        $ NavigatorConcurrentHardware.prim__hardwareConcurrency a

namespace NavigatorContentUtils
  
  export
  registerProtocolHandler :  (obj : NavigatorContentUtils)
                          -> (scheme : String)
                          -> (url : String)
                          -> JSIO ()
  registerProtocolHandler a b c = primJS
                                $ NavigatorContentUtils.prim__registerProtocolHandler a
                                                                                      b
                                                                                      c
  
  export
  unregisterProtocolHandler :  (obj : NavigatorContentUtils)
                            -> (scheme : String)
                            -> (url : String)
                            -> JSIO ()
  unregisterProtocolHandler a b c = primJS
                                  $ NavigatorContentUtils.prim__unregisterProtocolHandler a
                                                                                          b
                                                                                          c

namespace NavigatorCookies
  
  export
  cookieEnabled : (obj : NavigatorCookies) -> JSIO Bool
  cookieEnabled a = tryJS "NavigatorCookies.cookieEnabled"
                  $ NavigatorCookies.prim__cookieEnabled a

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
  onLine : (obj : NavigatorOnLine) -> JSIO Bool
  onLine a = tryJS "NavigatorOnLine.onLine" $ NavigatorOnLine.prim__onLine a

namespace NavigatorPlugins
  
  export
  mimeTypes : (obj : NavigatorPlugins) -> JSIO MimeTypeArray
  mimeTypes a = primJS $ NavigatorPlugins.prim__mimeTypes a
  
  export
  plugins : (obj : NavigatorPlugins) -> JSIO PluginArray
  plugins a = primJS $ NavigatorPlugins.prim__plugins a
  
  export
  javaEnabled : (obj : NavigatorPlugins) -> JSIO Bool
  javaEnabled a = tryJS "NavigatorPlugins.javaEnabled"
                $ NavigatorPlugins.prim__javaEnabled a

namespace WindowEventHandlers
  
  export
  onafterprint : WindowEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onafterprint = fromNullablePrim "WindowEventHandlers.getonafterprint"
                                  prim__onafterprint
                                  prim__setOnafterprint
  
  export
  onbeforeprint : WindowEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onbeforeprint = fromNullablePrim "WindowEventHandlers.getonbeforeprint"
                                   prim__onbeforeprint
                                   prim__setOnbeforeprint
  
  export
  onbeforeunload : WindowEventHandlers -> Attribute False Maybe OnBeforeUnloadEventHandlerNonNull
  onbeforeunload = fromNullablePrim "WindowEventHandlers.getonbeforeunload"
                                    prim__onbeforeunload
                                    prim__setOnbeforeunload
  
  export
  onhashchange : WindowEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onhashchange = fromNullablePrim "WindowEventHandlers.getonhashchange"
                                  prim__onhashchange
                                  prim__setOnhashchange
  
  export
  onlanguagechange : WindowEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onlanguagechange = fromNullablePrim "WindowEventHandlers.getonlanguagechange"
                                      prim__onlanguagechange
                                      prim__setOnlanguagechange
  
  export
  onmessage : WindowEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onmessage = fromNullablePrim "WindowEventHandlers.getonmessage"
                               prim__onmessage
                               prim__setOnmessage
  
  export
  onmessageerror : WindowEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onmessageerror = fromNullablePrim "WindowEventHandlers.getonmessageerror"
                                    prim__onmessageerror
                                    prim__setOnmessageerror
  
  export
  onoffline : WindowEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onoffline = fromNullablePrim "WindowEventHandlers.getonoffline"
                               prim__onoffline
                               prim__setOnoffline
  
  export
  ononline : WindowEventHandlers -> Attribute False Maybe EventHandlerNonNull
  ononline = fromNullablePrim "WindowEventHandlers.getononline"
                              prim__ononline
                              prim__setOnonline
  
  export
  onpagehide : WindowEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onpagehide = fromNullablePrim "WindowEventHandlers.getonpagehide"
                                prim__onpagehide
                                prim__setOnpagehide
  
  export
  onpageshow : WindowEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onpageshow = fromNullablePrim "WindowEventHandlers.getonpageshow"
                                prim__onpageshow
                                prim__setOnpageshow
  
  export
  onpopstate : WindowEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onpopstate = fromNullablePrim "WindowEventHandlers.getonpopstate"
                                prim__onpopstate
                                prim__setOnpopstate
  
  export
  onrejectionhandled : WindowEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onrejectionhandled = fromNullablePrim "WindowEventHandlers.getonrejectionhandled"
                                        prim__onrejectionhandled
                                        prim__setOnrejectionhandled
  
  export
  onstorage : WindowEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onstorage = fromNullablePrim "WindowEventHandlers.getonstorage"
                               prim__onstorage
                               prim__setOnstorage
  
  export
  onunhandledrejection : WindowEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onunhandledrejection = fromNullablePrim "WindowEventHandlers.getonunhandledrejection"
                                          prim__onunhandledrejection
                                          prim__setOnunhandledrejection
  
  export
  onunload : WindowEventHandlers -> Attribute False Maybe EventHandlerNonNull
  onunload = fromNullablePrim "WindowEventHandlers.getonunload"
                              prim__onunload
                              prim__setOnunload

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
  flatten : AssignedNodesOptions -> Attribute True Optional Bool
  flatten = fromUndefOrPrim "AssignedNodesOptions.getflatten"
                            prim__flatten
                            prim__setFlatten
                            False

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
  alpha : CanvasRenderingContext2DSettings -> Attribute True Optional Bool
  alpha = fromUndefOrPrim "CanvasRenderingContext2DSettings.getalpha"
                          prim__alpha
                          prim__setAlpha
                          True
  
  export
  desynchronized : CanvasRenderingContext2DSettings -> Attribute True Optional Bool
  desynchronized = fromUndefOrPrim "CanvasRenderingContext2DSettings.getdesynchronized"
                                   prim__desynchronized
                                   prim__setDesynchronized
                                   False

namespace CloseEventInit
  
  export
  new :  (wasClean : Optional Bool)
      -> (code : Optional UInt16)
      -> (reason : Optional String)
      -> JSIO CloseEventInit
  new a b c = primJS $ CloseEventInit.prim__new (toFFI a) (toFFI b) (toFFI c)

  export
  new' : JSIO CloseEventInit
  new' = primJS $ CloseEventInit.prim__new undef undef undef
  
  export
  code : CloseEventInit -> Attribute True Optional UInt16
  code = fromUndefOrPrim "CloseEventInit.getcode" prim__code prim__setCode 0
  
  export
  reason : CloseEventInit -> Attribute True Optional String
  reason = fromUndefOrPrim "CloseEventInit.getreason"
                           prim__reason
                           prim__setReason
                           ""
  
  export
  wasClean : CloseEventInit -> Attribute True Optional Bool
  wasClean = fromUndefOrPrim "CloseEventInit.getwasClean"
                             prim__wasClean
                             prim__setWasClean
                             False

namespace DragEventInit
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem DataTransfer (Types t1)}
      -> (dataTransfer : Optional (Maybe t1))
      -> JSIO DragEventInit
  new a = primJS $ DragEventInit.prim__new (omyUp a)

  export
  new' : JSIO DragEventInit
  new' = primJS $ DragEventInit.prim__new undef
  
  export
  dataTransfer : DragEventInit -> Attribute True Optional (Maybe DataTransfer)
  dataTransfer = fromUndefOrPrim "DragEventInit.getdataTransfer"
                                 prim__dataTransfer
                                 prim__setDataTransfer
                                 Nothing

namespace ElementDefinitionOptions
  
  export
  new : (extends : Optional String) -> JSIO ElementDefinitionOptions
  new a = primJS $ ElementDefinitionOptions.prim__new (toFFI a)

  export
  new' : JSIO ElementDefinitionOptions
  new' = primJS $ ElementDefinitionOptions.prim__new undef
  
  export
  extends : ElementDefinitionOptions -> Attribute False Optional String
  extends = fromUndefOrPrimNoDefault "ElementDefinitionOptions.getextends"
                                     prim__extends
                                     prim__setExtends

namespace ErrorEventInit
  
  export
  new :  (message : Optional String)
      -> (filename : Optional String)
      -> (lineno : Optional UInt32)
      -> (colno : Optional UInt32)
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
  colno : ErrorEventInit -> Attribute True Optional UInt32
  colno = fromUndefOrPrim "ErrorEventInit.getcolno" prim__colno prim__setColno 0
  
  export
  error : ErrorEventInit -> Attribute True Optional Any
  error = fromUndefOrPrim "ErrorEventInit.geterror"
                          prim__error
                          prim__setError
                          (MkAny $ null {a = ()})
  
  export
  filename : ErrorEventInit -> Attribute True Optional String
  filename = fromUndefOrPrim "ErrorEventInit.getfilename"
                             prim__filename
                             prim__setFilename
                             ""
  
  export
  lineno : ErrorEventInit -> Attribute True Optional UInt32
  lineno = fromUndefOrPrim "ErrorEventInit.getlineno"
                           prim__lineno
                           prim__setLineno
                           0
  
  export
  message : ErrorEventInit -> Attribute True Optional String
  message = fromUndefOrPrim "ErrorEventInit.getmessage"
                            prim__message
                            prim__setMessage
                            ""

namespace EventSourceInit
  
  export
  new : (withCredentials : Optional Bool) -> JSIO EventSourceInit
  new a = primJS $ EventSourceInit.prim__new (toFFI a)

  export
  new' : JSIO EventSourceInit
  new' = primJS $ EventSourceInit.prim__new undef
  
  export
  withCredentials : EventSourceInit -> Attribute True Optional Bool
  withCredentials = fromUndefOrPrim "EventSourceInit.getwithCredentials"
                                    prim__withCredentials
                                    prim__setWithCredentials
                                    False

namespace FocusOptions
  
  export
  new : (preventScroll : Optional Bool) -> JSIO FocusOptions
  new a = primJS $ FocusOptions.prim__new (toFFI a)

  export
  new' : JSIO FocusOptions
  new' = primJS $ FocusOptions.prim__new undef
  
  export
  preventScroll : FocusOptions -> Attribute True Optional Bool
  preventScroll = fromUndefOrPrim "FocusOptions.getpreventScroll"
                                  prim__preventScroll
                                  prim__setPreventScroll
                                  False

namespace FormDataEventInit
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem FormData (Types t1)}
      -> (formData : t1)
      -> JSIO FormDataEventInit
  new a = primJS $ FormDataEventInit.prim__new (up a)
  
  export
  formData : FormDataEventInit -> Attribute True I FormData
  formData = fromPrim "FormDataEventInit.getformData"
                      prim__formData
                      prim__setFormData

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
  newURL : HashChangeEventInit -> Attribute True Optional String
  newURL = fromUndefOrPrim "HashChangeEventInit.getnewURL"
                           prim__newURL
                           prim__setNewURL
                           ""
  
  export
  oldURL : HashChangeEventInit -> Attribute True Optional String
  oldURL = fromUndefOrPrim "HashChangeEventInit.getoldURL"
                           prim__oldURL
                           prim__setOldURL
                           ""

namespace ImageBitmapOptions
  
  export
  new :  (imageOrientation : Optional ImageOrientation)
      -> (premultiplyAlpha : Optional PremultiplyAlpha)
      -> (colorSpaceConversion : Optional ColorSpaceConversion)
      -> (resizeWidth : Optional UInt32)
      -> (resizeHeight : Optional UInt32)
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
  colorSpaceConversion : ImageBitmapOptions -> Attribute False Optional ColorSpaceConversion
  colorSpaceConversion = fromUndefOrPrimNoDefault "ImageBitmapOptions.getcolorSpaceConversion"
                                                  prim__colorSpaceConversion
                                                  prim__setColorSpaceConversion
  
  export
  imageOrientation : ImageBitmapOptions -> Attribute False Optional ImageOrientation
  imageOrientation = fromUndefOrPrimNoDefault "ImageBitmapOptions.getimageOrientation"
                                              prim__imageOrientation
                                              prim__setImageOrientation
  
  export
  premultiplyAlpha : ImageBitmapOptions -> Attribute False Optional PremultiplyAlpha
  premultiplyAlpha = fromUndefOrPrimNoDefault "ImageBitmapOptions.getpremultiplyAlpha"
                                              prim__premultiplyAlpha
                                              prim__setPremultiplyAlpha
  
  export
  resizeHeight : ImageBitmapOptions -> Attribute False Optional UInt32
  resizeHeight = fromUndefOrPrimNoDefault "ImageBitmapOptions.getresizeHeight"
                                          prim__resizeHeight
                                          prim__setResizeHeight
  
  export
  resizeQuality : ImageBitmapOptions -> Attribute False Optional ResizeQuality
  resizeQuality = fromUndefOrPrimNoDefault "ImageBitmapOptions.getresizeQuality"
                                           prim__resizeQuality
                                           prim__setResizeQuality
  
  export
  resizeWidth : ImageBitmapOptions -> Attribute False Optional UInt32
  resizeWidth = fromUndefOrPrimNoDefault "ImageBitmapOptions.getresizeWidth"
                                         prim__resizeWidth
                                         prim__setResizeWidth

namespace ImageBitmapRenderingContextSettings
  
  export
  new : (alpha : Optional Bool) -> JSIO ImageBitmapRenderingContextSettings
  new a = primJS $ ImageBitmapRenderingContextSettings.prim__new (toFFI a)

  export
  new' : JSIO ImageBitmapRenderingContextSettings
  new' = primJS $ ImageBitmapRenderingContextSettings.prim__new undef
  
  export
  alpha : ImageBitmapRenderingContextSettings -> Attribute True Optional Bool
  alpha = fromUndefOrPrim "ImageBitmapRenderingContextSettings.getalpha"
                          prim__alpha
                          prim__setAlpha
                          True

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
  quality : ImageEncodeOptions -> Attribute False Optional Double
  quality = fromUndefOrPrimNoDefault "ImageEncodeOptions.getquality"
                                     prim__quality
                                     prim__setQuality
  
  export
  type : ImageEncodeOptions -> Attribute True Optional String
  type = fromUndefOrPrim "ImageEncodeOptions.gettype"
                         prim__type
                         prim__setType
                         "image/png"

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
  data_ : MessageEventInit -> Attribute True Optional Any
  data_ = fromUndefOrPrim "MessageEventInit.getdata"
                          prim__data
                          prim__setData
                          (MkAny $ null {a = ()})
  
  export
  lastEventId : MessageEventInit -> Attribute True Optional String
  lastEventId = fromUndefOrPrim "MessageEventInit.getlastEventId"
                                prim__lastEventId
                                prim__setLastEventId
                                ""
  
  export
  origin : MessageEventInit -> Attribute True Optional String
  origin = fromUndefOrPrim "MessageEventInit.getorigin"
                           prim__origin
                           prim__setOrigin
                           ""
  
  export
  ports : MessageEventInit -> Attribute False Optional (Array MessagePort)
  ports = fromUndefOrPrimNoDefault "MessageEventInit.getports"
                                   prim__ports
                                   prim__setPorts
  
  export
  source : MessageEventInit -> Attribute True Optional (Maybe (Union3 WindowProxy
                                                                      MessagePort
                                                                      ServiceWorker))
  source = fromUndefOrPrim "MessageEventInit.getsource"
                           prim__source
                           prim__setSource
                           Nothing

namespace PageTransitionEventInit
  
  export
  new : (persisted : Optional Bool) -> JSIO PageTransitionEventInit
  new a = primJS $ PageTransitionEventInit.prim__new (toFFI a)

  export
  new' : JSIO PageTransitionEventInit
  new' = primJS $ PageTransitionEventInit.prim__new undef
  
  export
  persisted : PageTransitionEventInit -> Attribute True Optional Bool
  persisted = fromUndefOrPrim "PageTransitionEventInit.getpersisted"
                              prim__persisted
                              prim__setPersisted
                              False

namespace PopStateEventInit
  
  export
  new : (state : Optional Any) -> JSIO PopStateEventInit
  new a = primJS $ PopStateEventInit.prim__new (toFFI a)

  export
  new' : JSIO PopStateEventInit
  new' = primJS $ PopStateEventInit.prim__new undef
  
  export
  state : PopStateEventInit -> Attribute True Optional Any
  state = fromUndefOrPrim "PopStateEventInit.getstate"
                          prim__state
                          prim__setState
                          (MkAny $ null {a = ()})

namespace PostMessageOptions
  
  export
  new : (transfer : Optional (Array Object)) -> JSIO PostMessageOptions
  new a = primJS $ PostMessageOptions.prim__new (toFFI a)

  export
  new' : JSIO PostMessageOptions
  new' = primJS $ PostMessageOptions.prim__new undef
  
  export
  transfer : PostMessageOptions -> Attribute False Optional (Array Object)
  transfer = fromUndefOrPrimNoDefault "PostMessageOptions.gettransfer"
                                      prim__transfer
                                      prim__setTransfer

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
  promise : PromiseRejectionEventInit -> Attribute True I (Promise AnyPtr)
  promise = fromPrim "PromiseRejectionEventInit.getpromise"
                     prim__promise
                     prim__setPromise
  
  export
  reason : PromiseRejectionEventInit -> Attribute False Optional Any
  reason = fromUndefOrPrimNoDefault "PromiseRejectionEventInit.getreason"
                                    prim__reason
                                    prim__setReason

namespace StorageEventInit
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem Storage (Types t1)}
      -> (key : Optional (Maybe String))
      -> (oldValue : Optional (Maybe String))
      -> (newValue : Optional (Maybe String))
      -> (url : Optional String)
      -> (storageArea : Optional (Maybe t1))
      -> JSIO StorageEventInit
  new a b c d e = primJS
                $ StorageEventInit.prim__new (toFFI a)
                                             (toFFI b)
                                             (toFFI c)
                                             (toFFI d)
                                             (omyUp e)

  export
  new' : JSIO StorageEventInit
  new' = primJS $ StorageEventInit.prim__new undef undef undef undef undef
  
  export
  key : StorageEventInit -> Attribute True Optional (Maybe String)
  key = fromUndefOrPrim "StorageEventInit.getkey" prim__key prim__setKey Nothing
  
  export
  newValue : StorageEventInit -> Attribute True Optional (Maybe String)
  newValue = fromUndefOrPrim "StorageEventInit.getnewValue"
                             prim__newValue
                             prim__setNewValue
                             Nothing
  
  export
  oldValue : StorageEventInit -> Attribute True Optional (Maybe String)
  oldValue = fromUndefOrPrim "StorageEventInit.getoldValue"
                             prim__oldValue
                             prim__setOldValue
                             Nothing
  
  export
  storageArea : StorageEventInit -> Attribute True Optional (Maybe Storage)
  storageArea = fromUndefOrPrim "StorageEventInit.getstorageArea"
                                prim__storageArea
                                prim__setStorageArea
                                Nothing
  
  export
  url : StorageEventInit -> Attribute True Optional String
  url = fromUndefOrPrim "StorageEventInit.geturl" prim__url prim__setUrl ""

namespace SubmitEventInit
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem HTMLElement (Types t1)}
      -> (submitter : Optional (Maybe t1))
      -> JSIO SubmitEventInit
  new a = primJS $ SubmitEventInit.prim__new (omyUp a)

  export
  new' : JSIO SubmitEventInit
  new' = primJS $ SubmitEventInit.prim__new undef
  
  export
  submitter : SubmitEventInit -> Attribute True Optional (Maybe HTMLElement)
  submitter = fromUndefOrPrim "SubmitEventInit.getsubmitter"
                              prim__submitter
                              prim__setSubmitter
                              Nothing

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
  track : TrackEventInit -> Attribute True Optional (Maybe (NS I [ VideoTrack
                                                                 , AudioTrack
                                                                 , TextTrack
                                                                 ]))
  track = fromUndefOrPrim "TrackEventInit.gettrack"
                          prim__track
                          prim__setTrack
                          Nothing

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
  badInput : ValidityStateFlags -> Attribute True Optional Bool
  badInput = fromUndefOrPrim "ValidityStateFlags.getbadInput"
                             prim__badInput
                             prim__setBadInput
                             False
  
  export
  customError : ValidityStateFlags -> Attribute True Optional Bool
  customError = fromUndefOrPrim "ValidityStateFlags.getcustomError"
                                prim__customError
                                prim__setCustomError
                                False
  
  export
  patternMismatch : ValidityStateFlags -> Attribute True Optional Bool
  patternMismatch = fromUndefOrPrim "ValidityStateFlags.getpatternMismatch"
                                    prim__patternMismatch
                                    prim__setPatternMismatch
                                    False
  
  export
  rangeOverflow : ValidityStateFlags -> Attribute True Optional Bool
  rangeOverflow = fromUndefOrPrim "ValidityStateFlags.getrangeOverflow"
                                  prim__rangeOverflow
                                  prim__setRangeOverflow
                                  False
  
  export
  rangeUnderflow : ValidityStateFlags -> Attribute True Optional Bool
  rangeUnderflow = fromUndefOrPrim "ValidityStateFlags.getrangeUnderflow"
                                   prim__rangeUnderflow
                                   prim__setRangeUnderflow
                                   False
  
  export
  stepMismatch : ValidityStateFlags -> Attribute True Optional Bool
  stepMismatch = fromUndefOrPrim "ValidityStateFlags.getstepMismatch"
                                 prim__stepMismatch
                                 prim__setStepMismatch
                                 False
  
  export
  tooLong : ValidityStateFlags -> Attribute True Optional Bool
  tooLong = fromUndefOrPrim "ValidityStateFlags.gettooLong"
                            prim__tooLong
                            prim__setTooLong
                            False
  
  export
  tooShort : ValidityStateFlags -> Attribute True Optional Bool
  tooShort = fromUndefOrPrim "ValidityStateFlags.gettooShort"
                             prim__tooShort
                             prim__setTooShort
                             False
  
  export
  typeMismatch : ValidityStateFlags -> Attribute True Optional Bool
  typeMismatch = fromUndefOrPrim "ValidityStateFlags.gettypeMismatch"
                                 prim__typeMismatch
                                 prim__setTypeMismatch
                                 False
  
  export
  valueMissing : ValidityStateFlags -> Attribute True Optional Bool
  valueMissing = fromUndefOrPrim "ValidityStateFlags.getvalueMissing"
                                 prim__valueMissing
                                 prim__setValueMissing
                                 False

namespace WindowPostMessageOptions
  
  export
  new : (targetOrigin : Optional String) -> JSIO WindowPostMessageOptions
  new a = primJS $ WindowPostMessageOptions.prim__new (toFFI a)

  export
  new' : JSIO WindowPostMessageOptions
  new' = primJS $ WindowPostMessageOptions.prim__new undef
  
  export
  targetOrigin : WindowPostMessageOptions -> Attribute True Optional String
  targetOrigin = fromUndefOrPrim "WindowPostMessageOptions.gettargetOrigin"
                                 prim__targetOrigin
                                 prim__setTargetOrigin
                                 "/"

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
  credentials : WorkerOptions -> Attribute False Optional RequestCredentials
  credentials = fromUndefOrPrimNoDefault "WorkerOptions.getcredentials"
                                         prim__credentials
                                         prim__setCredentials
  
  export
  name : WorkerOptions -> Attribute True Optional String
  name = fromUndefOrPrim "WorkerOptions.getname" prim__name prim__setName ""
  
  export
  type : WorkerOptions -> Attribute False Optional WorkerType
  type = fromUndefOrPrimNoDefault "WorkerOptions.gettype"
                                  prim__type
                                  prim__setType

namespace WorkletOptions
  
  export
  new : (credentials : Optional RequestCredentials) -> JSIO WorkletOptions
  new a = primJS $ WorkletOptions.prim__new (toFFI a)

  export
  new' : JSIO WorkletOptions
  new' = primJS $ WorkletOptions.prim__new undef
  
  export
  credentials : WorkletOptions -> Attribute False Optional RequestCredentials
  credentials = fromUndefOrPrimNoDefault "WorkletOptions.getcredentials"
                                         prim__credentials
                                         prim__setCredentials

--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------

namespace BlobCallback
  
  export
  toBlobCallback : ( Nullable Blob -> IO () ) -> JSIO BlobCallback
  toBlobCallback cb = primJS $ prim__toBlobCallback cb

namespace CustomElementConstructor
  
  export
  toCustomElementConstructor :  (() -> IO HTMLElement)
                             -> JSIO CustomElementConstructor
  toCustomElementConstructor cb = primJS $ prim__toCustomElementConstructor cb

namespace EventHandlerNonNull
  
  export
  toEventHandlerNonNull : ( Event -> IO AnyPtr ) -> JSIO EventHandlerNonNull
  toEventHandlerNonNull cb = primJS $ prim__toEventHandlerNonNull cb

namespace FunctionStringCallback
  
  export
  toFunctionStringCallback : ( String -> IO () ) -> JSIO FunctionStringCallback
  toFunctionStringCallback cb = primJS $ prim__toFunctionStringCallback cb

namespace OnBeforeUnloadEventHandlerNonNull
  
  export
  toOnBeforeUnloadEventHandlerNonNull :  ( Event -> IO (Nullable String) )
                                      -> JSIO OnBeforeUnloadEventHandlerNonNull
  toOnBeforeUnloadEventHandlerNonNull cb = primJS $ prim__toOnBeforeUnloadEventHandlerNonNull cb

namespace OnErrorEventHandlerNonNull
  
  export
  toOnErrorEventHandlerNonNull :  (  Union2 Event String
                                  -> UndefOr String
                                  -> UndefOr UInt32
                                  -> UndefOr UInt32
                                  -> UndefOr AnyPtr
                                  -> IO AnyPtr
                                  )
                               -> JSIO OnErrorEventHandlerNonNull
  toOnErrorEventHandlerNonNull cb = primJS $ prim__toOnErrorEventHandlerNonNull cb