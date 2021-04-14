module Web.Raw.Html
 
import JS
import Web.Internal.HtmlPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace AudioTrack
  
  export
  enabled :  JSType t
          => {auto 0 _ : Elem AudioTrack (Types t)}
          -> t
          -> Attribute True I Bool
  enabled v = fromPrim "AudioTrack.getenabled"
                       prim__enabled
                       prim__setEnabled
                       (v :> AudioTrack)
  
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
  onaddtrack :  JSType t
             => {auto 0 _ : Elem AudioTrackList (Types t)}
             -> t
             -> Attribute False Maybe EventHandlerNonNull
  onaddtrack v = fromNullablePrim "AudioTrackList.getonaddtrack"
                                  prim__onaddtrack
                                  prim__setOnaddtrack
                                  (v :> AudioTrackList)
  
  export
  onchange :  JSType t
           => {auto 0 _ : Elem AudioTrackList (Types t)}
           -> t
           -> Attribute False Maybe EventHandlerNonNull
  onchange v = fromNullablePrim "AudioTrackList.getonchange"
                                prim__onchange
                                prim__setOnchange
                                (v :> AudioTrackList)
  
  export
  onremovetrack :  JSType t
                => {auto 0 _ : Elem AudioTrackList (Types t)}
                -> t
                -> Attribute False Maybe EventHandlerNonNull
  onremovetrack v = fromNullablePrim "AudioTrackList.getonremovetrack"
                                     prim__onremovetrack
                                     prim__setOnremovetrack
                                     (v :> AudioTrackList)
  
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
  returnValue :  JSType t
              => {auto 0 _ : Elem BeforeUnloadEvent (Types t)}
              -> t
              -> Attribute True I String
  returnValue v = fromPrim "BeforeUnloadEvent.getreturnValue"
                           prim__returnValue
                           prim__setReturnValue
                           (v :> BeforeUnloadEvent)

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
  onmessage :  JSType t
            => {auto 0 _ : Elem BroadcastChannel (Types t)}
            -> t
            -> Attribute False Maybe EventHandlerNonNull
  onmessage v = fromNullablePrim "BroadcastChannel.getonmessage"
                                 prim__onmessage
                                 prim__setOnmessage
                                 (v :> BroadcastChannel)
  
  export
  onmessageerror :  JSType t
                 => {auto 0 _ : Elem BroadcastChannel (Types t)}
                 -> t
                 -> Attribute False Maybe EventHandlerNonNull
  onmessageerror v = fromNullablePrim "BroadcastChannel.getonmessageerror"
                                      prim__onmessageerror
                                      prim__setOnmessageerror
                                      (v :> BroadcastChannel)
  
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
  dropEffect :  JSType t
             => {auto 0 _ : Elem DataTransfer (Types t)}
             -> t
             -> Attribute True I String
  dropEffect v = fromPrim "DataTransfer.getdropEffect"
                          prim__dropEffect
                          prim__setDropEffect
                          (v :> DataTransfer)
  
  export
  effectAllowed :  JSType t
                => {auto 0 _ : Elem DataTransfer (Types t)}
                -> t
                -> Attribute True I String
  effectAllowed v = fromPrim "DataTransfer.geteffectAllowed"
                             prim__effectAllowed
                             prim__setEffectAllowed
                             (v :> DataTransfer)
  
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
  onmessage :  JSType t
            => {auto 0 _ : Elem DedicatedWorkerGlobalScope (Types t)}
            -> t
            -> Attribute False Maybe EventHandlerNonNull
  onmessage v = fromNullablePrim "DedicatedWorkerGlobalScope.getonmessage"
                                 prim__onmessage
                                 prim__setOnmessage
                                 (v :> DedicatedWorkerGlobalScope)
  
  export
  onmessageerror :  JSType t
                 => {auto 0 _ : Elem DedicatedWorkerGlobalScope (Types t)}
                 -> t
                 -> Attribute False Maybe EventHandlerNonNull
  onmessageerror v = fromNullablePrim "DedicatedWorkerGlobalScope.getonmessageerror"
                                      prim__onmessageerror
                                      prim__setOnmessageerror
                                      (v :> DedicatedWorkerGlobalScope)
  
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
  onerror :  JSType t
          => {auto 0 _ : Elem EventSource (Types t)}
          -> t
          -> Attribute False Maybe EventHandlerNonNull
  onerror v = fromNullablePrim "EventSource.getonerror"
                               prim__onerror
                               prim__setOnerror
                               (v :> EventSource)
  
  export
  onmessage :  JSType t
            => {auto 0 _ : Elem EventSource (Types t)}
            -> t
            -> Attribute False Maybe EventHandlerNonNull
  onmessage v = fromNullablePrim "EventSource.getonmessage"
                                 prim__onmessage
                                 prim__setOnmessage
                                 (v :> EventSource)
  
  export
  onopen :  JSType t
         => {auto 0 _ : Elem EventSource (Types t)}
         -> t
         -> Attribute False Maybe EventHandlerNonNull
  onopen v = fromNullablePrim "EventSource.getonopen"
                              prim__onopen
                              prim__setOnopen
                              (v :> EventSource)
  
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
  charset :  JSType t
          => {auto 0 _ : Elem HTMLAnchorElement (Types t)}
          -> t
          -> Attribute True I String
  charset v = fromPrim "HTMLAnchorElement.getcharset"
                       prim__charset
                       prim__setCharset
                       (v :> HTMLAnchorElement)
  
  export
  coords :  JSType t
         => {auto 0 _ : Elem HTMLAnchorElement (Types t)}
         -> t
         -> Attribute True I String
  coords v = fromPrim "HTMLAnchorElement.getcoords"
                      prim__coords
                      prim__setCoords
                      (v :> HTMLAnchorElement)
  
  export
  download :  JSType t
           => {auto 0 _ : Elem HTMLAnchorElement (Types t)}
           -> t
           -> Attribute True I String
  download v = fromPrim "HTMLAnchorElement.getdownload"
                        prim__download
                        prim__setDownload
                        (v :> HTMLAnchorElement)
  
  export
  hreflang :  JSType t
           => {auto 0 _ : Elem HTMLAnchorElement (Types t)}
           -> t
           -> Attribute True I String
  hreflang v = fromPrim "HTMLAnchorElement.gethreflang"
                        prim__hreflang
                        prim__setHreflang
                        (v :> HTMLAnchorElement)
  
  export
  name :  JSType t
       => {auto 0 _ : Elem HTMLAnchorElement (Types t)}
       -> t
       -> Attribute True I String
  name v = fromPrim "HTMLAnchorElement.getname"
                    prim__name
                    prim__setName
                    (v :> HTMLAnchorElement)
  
  export
  ping :  JSType t
       => {auto 0 _ : Elem HTMLAnchorElement (Types t)}
       -> t
       -> Attribute True I String
  ping v = fromPrim "HTMLAnchorElement.getping"
                    prim__ping
                    prim__setPing
                    (v :> HTMLAnchorElement)
  
  export
  referrerPolicy :  JSType t
                 => {auto 0 _ : Elem HTMLAnchorElement (Types t)}
                 -> t
                 -> Attribute True I String
  referrerPolicy v = fromPrim "HTMLAnchorElement.getreferrerPolicy"
                              prim__referrerPolicy
                              prim__setReferrerPolicy
                              (v :> HTMLAnchorElement)
  
  export
  rel :  JSType t
      => {auto 0 _ : Elem HTMLAnchorElement (Types t)}
      -> t
      -> Attribute True I String
  rel v = fromPrim "HTMLAnchorElement.getrel"
                   prim__rel
                   prim__setRel
                   (v :> HTMLAnchorElement)
  
  export
  relList :  JSType t1
          => {auto 0 _ : Elem HTMLAnchorElement (Types t1)}
          -> (obj : t1)
          -> JSIO DOMTokenList
  relList a = primJS $ HTMLAnchorElement.prim__relList (up a)
  
  export
  rev :  JSType t
      => {auto 0 _ : Elem HTMLAnchorElement (Types t)}
      -> t
      -> Attribute True I String
  rev v = fromPrim "HTMLAnchorElement.getrev"
                   prim__rev
                   prim__setRev
                   (v :> HTMLAnchorElement)
  
  export
  shape :  JSType t
        => {auto 0 _ : Elem HTMLAnchorElement (Types t)}
        -> t
        -> Attribute True I String
  shape v = fromPrim "HTMLAnchorElement.getshape"
                     prim__shape
                     prim__setShape
                     (v :> HTMLAnchorElement)
  
  export
  target :  JSType t
         => {auto 0 _ : Elem HTMLAnchorElement (Types t)}
         -> t
         -> Attribute True I String
  target v = fromPrim "HTMLAnchorElement.gettarget"
                      prim__target
                      prim__setTarget
                      (v :> HTMLAnchorElement)
  
  export
  text :  JSType t
       => {auto 0 _ : Elem HTMLAnchorElement (Types t)}
       -> t
       -> Attribute True I String
  text v = fromPrim "HTMLAnchorElement.gettext"
                    prim__text
                    prim__setText
                    (v :> HTMLAnchorElement)
  
  export
  type :  JSType t
       => {auto 0 _ : Elem HTMLAnchorElement (Types t)}
       -> t
       -> Attribute True I String
  type v = fromPrim "HTMLAnchorElement.gettype"
                    prim__type
                    prim__setType
                    (v :> HTMLAnchorElement)

namespace HTMLAreaElement
  
  export
  new : JSIO HTMLAreaElement
  new = primJS $ HTMLAreaElement.prim__new 
  
  export
  alt :  JSType t
      => {auto 0 _ : Elem HTMLAreaElement (Types t)}
      -> t
      -> Attribute True I String
  alt v = fromPrim "HTMLAreaElement.getalt"
                   prim__alt
                   prim__setAlt
                   (v :> HTMLAreaElement)
  
  export
  coords :  JSType t
         => {auto 0 _ : Elem HTMLAreaElement (Types t)}
         -> t
         -> Attribute True I String
  coords v = fromPrim "HTMLAreaElement.getcoords"
                      prim__coords
                      prim__setCoords
                      (v :> HTMLAreaElement)
  
  export
  download :  JSType t
           => {auto 0 _ : Elem HTMLAreaElement (Types t)}
           -> t
           -> Attribute True I String
  download v = fromPrim "HTMLAreaElement.getdownload"
                        prim__download
                        prim__setDownload
                        (v :> HTMLAreaElement)
  
  export
  noHref :  JSType t
         => {auto 0 _ : Elem HTMLAreaElement (Types t)}
         -> t
         -> Attribute True I Bool
  noHref v = fromPrim "HTMLAreaElement.getnoHref"
                      prim__noHref
                      prim__setNoHref
                      (v :> HTMLAreaElement)
  
  export
  ping :  JSType t
       => {auto 0 _ : Elem HTMLAreaElement (Types t)}
       -> t
       -> Attribute True I String
  ping v = fromPrim "HTMLAreaElement.getping"
                    prim__ping
                    prim__setPing
                    (v :> HTMLAreaElement)
  
  export
  referrerPolicy :  JSType t
                 => {auto 0 _ : Elem HTMLAreaElement (Types t)}
                 -> t
                 -> Attribute True I String
  referrerPolicy v = fromPrim "HTMLAreaElement.getreferrerPolicy"
                              prim__referrerPolicy
                              prim__setReferrerPolicy
                              (v :> HTMLAreaElement)
  
  export
  rel :  JSType t
      => {auto 0 _ : Elem HTMLAreaElement (Types t)}
      -> t
      -> Attribute True I String
  rel v = fromPrim "HTMLAreaElement.getrel"
                   prim__rel
                   prim__setRel
                   (v :> HTMLAreaElement)
  
  export
  relList :  JSType t1
          => {auto 0 _ : Elem HTMLAreaElement (Types t1)}
          -> (obj : t1)
          -> JSIO DOMTokenList
  relList a = primJS $ HTMLAreaElement.prim__relList (up a)
  
  export
  shape :  JSType t
        => {auto 0 _ : Elem HTMLAreaElement (Types t)}
        -> t
        -> Attribute True I String
  shape v = fromPrim "HTMLAreaElement.getshape"
                     prim__shape
                     prim__setShape
                     (v :> HTMLAreaElement)
  
  export
  target :  JSType t
         => {auto 0 _ : Elem HTMLAreaElement (Types t)}
         -> t
         -> Attribute True I String
  target v = fromPrim "HTMLAreaElement.gettarget"
                      prim__target
                      prim__setTarget
                      (v :> HTMLAreaElement)

namespace HTMLAudioElement
  
  export
  new : JSIO HTMLAudioElement
  new = primJS $ HTMLAudioElement.prim__new 

namespace HTMLBRElement
  
  export
  new : JSIO HTMLBRElement
  new = primJS $ HTMLBRElement.prim__new 
  
  export
  clear :  JSType t
        => {auto 0 _ : Elem HTMLBRElement (Types t)}
        -> t
        -> Attribute True I String
  clear v = fromPrim "HTMLBRElement.getclear"
                     prim__clear
                     prim__setClear
                     (v :> HTMLBRElement)

namespace HTMLBaseElement
  
  export
  new : JSIO HTMLBaseElement
  new = primJS $ HTMLBaseElement.prim__new 
  
  export
  href :  JSType t
       => {auto 0 _ : Elem HTMLBaseElement (Types t)}
       -> t
       -> Attribute True I String
  href v = fromPrim "HTMLBaseElement.gethref"
                    prim__href
                    prim__setHref
                    (v :> HTMLBaseElement)
  
  export
  target :  JSType t
         => {auto 0 _ : Elem HTMLBaseElement (Types t)}
         -> t
         -> Attribute True I String
  target v = fromPrim "HTMLBaseElement.gettarget"
                      prim__target
                      prim__setTarget
                      (v :> HTMLBaseElement)

namespace HTMLBodyElement
  
  export
  new : JSIO HTMLBodyElement
  new = primJS $ HTMLBodyElement.prim__new 
  
  export
  aLink :  JSType t
        => {auto 0 _ : Elem HTMLBodyElement (Types t)}
        -> t
        -> Attribute True I String
  aLink v = fromPrim "HTMLBodyElement.getaLink"
                     prim__aLink
                     prim__setALink
                     (v :> HTMLBodyElement)
  
  export
  background :  JSType t
             => {auto 0 _ : Elem HTMLBodyElement (Types t)}
             -> t
             -> Attribute True I String
  background v = fromPrim "HTMLBodyElement.getbackground"
                          prim__background
                          prim__setBackground
                          (v :> HTMLBodyElement)
  
  export
  bgColor :  JSType t
          => {auto 0 _ : Elem HTMLBodyElement (Types t)}
          -> t
          -> Attribute True I String
  bgColor v = fromPrim "HTMLBodyElement.getbgColor"
                       prim__bgColor
                       prim__setBgColor
                       (v :> HTMLBodyElement)
  
  export
  link :  JSType t
       => {auto 0 _ : Elem HTMLBodyElement (Types t)}
       -> t
       -> Attribute True I String
  link v = fromPrim "HTMLBodyElement.getlink"
                    prim__link
                    prim__setLink
                    (v :> HTMLBodyElement)
  
  export
  text :  JSType t
       => {auto 0 _ : Elem HTMLBodyElement (Types t)}
       -> t
       -> Attribute True I String
  text v = fromPrim "HTMLBodyElement.gettext"
                    prim__text
                    prim__setText
                    (v :> HTMLBodyElement)
  
  export
  vLink :  JSType t
        => {auto 0 _ : Elem HTMLBodyElement (Types t)}
        -> t
        -> Attribute True I String
  vLink v = fromPrim "HTMLBodyElement.getvLink"
                     prim__vLink
                     prim__setVLink
                     (v :> HTMLBodyElement)

namespace HTMLButtonElement
  
  export
  new : JSIO HTMLButtonElement
  new = primJS $ HTMLButtonElement.prim__new 
  
  export
  disabled :  JSType t
           => {auto 0 _ : Elem HTMLButtonElement (Types t)}
           -> t
           -> Attribute True I Bool
  disabled v = fromPrim "HTMLButtonElement.getdisabled"
                        prim__disabled
                        prim__setDisabled
                        (v :> HTMLButtonElement)
  
  export
  form :  JSType t1
       => {auto 0 _ : Elem HTMLButtonElement (Types t1)}
       -> (obj : t1)
       -> JSIO (Maybe HTMLFormElement)
  form a = tryJS "HTMLButtonElement.form" $ HTMLButtonElement.prim__form (up a)
  
  export
  formAction :  JSType t
             => {auto 0 _ : Elem HTMLButtonElement (Types t)}
             -> t
             -> Attribute True I String
  formAction v = fromPrim "HTMLButtonElement.getformAction"
                          prim__formAction
                          prim__setFormAction
                          (v :> HTMLButtonElement)
  
  export
  formEnctype :  JSType t
              => {auto 0 _ : Elem HTMLButtonElement (Types t)}
              -> t
              -> Attribute True I String
  formEnctype v = fromPrim "HTMLButtonElement.getformEnctype"
                           prim__formEnctype
                           prim__setFormEnctype
                           (v :> HTMLButtonElement)
  
  export
  formMethod :  JSType t
             => {auto 0 _ : Elem HTMLButtonElement (Types t)}
             -> t
             -> Attribute True I String
  formMethod v = fromPrim "HTMLButtonElement.getformMethod"
                          prim__formMethod
                          prim__setFormMethod
                          (v :> HTMLButtonElement)
  
  export
  formNoValidate :  JSType t
                 => {auto 0 _ : Elem HTMLButtonElement (Types t)}
                 -> t
                 -> Attribute True I Bool
  formNoValidate v = fromPrim "HTMLButtonElement.getformNoValidate"
                              prim__formNoValidate
                              prim__setFormNoValidate
                              (v :> HTMLButtonElement)
  
  export
  formTarget :  JSType t
             => {auto 0 _ : Elem HTMLButtonElement (Types t)}
             -> t
             -> Attribute True I String
  formTarget v = fromPrim "HTMLButtonElement.getformTarget"
                          prim__formTarget
                          prim__setFormTarget
                          (v :> HTMLButtonElement)
  
  export
  labels :  JSType t1
         => {auto 0 _ : Elem HTMLButtonElement (Types t1)}
         -> (obj : t1)
         -> JSIO NodeList
  labels a = primJS $ HTMLButtonElement.prim__labels (up a)
  
  export
  name :  JSType t
       => {auto 0 _ : Elem HTMLButtonElement (Types t)}
       -> t
       -> Attribute True I String
  name v = fromPrim "HTMLButtonElement.getname"
                    prim__name
                    prim__setName
                    (v :> HTMLButtonElement)
  
  export
  type :  JSType t
       => {auto 0 _ : Elem HTMLButtonElement (Types t)}
       -> t
       -> Attribute True I String
  type v = fromPrim "HTMLButtonElement.gettype"
                    prim__type
                    prim__setType
                    (v :> HTMLButtonElement)
  
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
  value :  JSType t
        => {auto 0 _ : Elem HTMLButtonElement (Types t)}
        -> t
        -> Attribute True I String
  value v = fromPrim "HTMLButtonElement.getvalue"
                     prim__value
                     prim__setValue
                     (v :> HTMLButtonElement)
  
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
  height :  JSType t
         => {auto 0 _ : Elem HTMLCanvasElement (Types t)}
         -> t
         -> Attribute True I UInt32
  height v = fromPrim "HTMLCanvasElement.getheight"
                      prim__height
                      prim__setHeight
                      (v :> HTMLCanvasElement)
  
  export
  width :  JSType t
        => {auto 0 _ : Elem HTMLCanvasElement (Types t)}
        -> t
        -> Attribute True I UInt32
  width v = fromPrim "HTMLCanvasElement.getwidth"
                     prim__width
                     prim__setWidth
                     (v :> HTMLCanvasElement)
  
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
  compact :  JSType t
          => {auto 0 _ : Elem HTMLDListElement (Types t)}
          -> t
          -> Attribute True I Bool
  compact v = fromPrim "HTMLDListElement.getcompact"
                       prim__compact
                       prim__setCompact
                       (v :> HTMLDListElement)

namespace HTMLDataElement
  
  export
  new : JSIO HTMLDataElement
  new = primJS $ HTMLDataElement.prim__new 
  
  export
  value :  JSType t
        => {auto 0 _ : Elem HTMLDataElement (Types t)}
        -> t
        -> Attribute True I String
  value v = fromPrim "HTMLDataElement.getvalue"
                     prim__value
                     prim__setValue
                     (v :> HTMLDataElement)

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
  open_ :  JSType t
        => {auto 0 _ : Elem HTMLDetailsElement (Types t)}
        -> t
        -> Attribute True I Bool
  open_ v = fromPrim "HTMLDetailsElement.getopen"
                     prim__open
                     prim__setOpen
                     (v :> HTMLDetailsElement)

namespace HTMLDialogElement
  
  export
  new : JSIO HTMLDialogElement
  new = primJS $ HTMLDialogElement.prim__new 
  
  export
  open_ :  JSType t
        => {auto 0 _ : Elem HTMLDialogElement (Types t)}
        -> t
        -> Attribute True I Bool
  open_ v = fromPrim "HTMLDialogElement.getopen"
                     prim__open
                     prim__setOpen
                     (v :> HTMLDialogElement)
  
  export
  returnValue :  JSType t
              => {auto 0 _ : Elem HTMLDialogElement (Types t)}
              -> t
              -> Attribute True I String
  returnValue v = fromPrim "HTMLDialogElement.getreturnValue"
                           prim__returnValue
                           prim__setReturnValue
                           (v :> HTMLDialogElement)
  
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
  compact :  JSType t
          => {auto 0 _ : Elem HTMLDirectoryElement (Types t)}
          -> t
          -> Attribute True I Bool
  compact v = fromPrim "HTMLDirectoryElement.getcompact"
                       prim__compact
                       prim__setCompact
                       (v :> HTMLDirectoryElement)

namespace HTMLDivElement
  
  export
  new : JSIO HTMLDivElement
  new = primJS $ HTMLDivElement.prim__new 
  
  export
  align :  JSType t
        => {auto 0 _ : Elem HTMLDivElement (Types t)}
        -> t
        -> Attribute True I String
  align v = fromPrim "HTMLDivElement.getalign"
                     prim__align
                     prim__setAlign
                     (v :> HTMLDivElement)

namespace HTMLElement
  
  export
  new : JSIO HTMLElement
  new = primJS $ HTMLElement.prim__new 
  
  export
  accessKey :  JSType t
            => {auto 0 _ : Elem HTMLElement (Types t)}
            -> t
            -> Attribute True I String
  accessKey v = fromPrim "HTMLElement.getaccessKey"
                         prim__accessKey
                         prim__setAccessKey
                         (v :> HTMLElement)
  
  export
  accessKeyLabel :  JSType t1
                 => {auto 0 _ : Elem HTMLElement (Types t1)}
                 -> (obj : t1)
                 -> JSIO String
  accessKeyLabel a = primJS $ HTMLElement.prim__accessKeyLabel (up a)
  
  export
  autocapitalize :  JSType t
                 => {auto 0 _ : Elem HTMLElement (Types t)}
                 -> t
                 -> Attribute True I String
  autocapitalize v = fromPrim "HTMLElement.getautocapitalize"
                              prim__autocapitalize
                              prim__setAutocapitalize
                              (v :> HTMLElement)
  
  export
  dir :  JSType t
      => {auto 0 _ : Elem HTMLElement (Types t)}
      -> t
      -> Attribute True I String
  dir v = fromPrim "HTMLElement.getdir"
                   prim__dir
                   prim__setDir
                   (v :> HTMLElement)
  
  export
  draggable :  JSType t
            => {auto 0 _ : Elem HTMLElement (Types t)}
            -> t
            -> Attribute True I Bool
  draggable v = fromPrim "HTMLElement.getdraggable"
                         prim__draggable
                         prim__setDraggable
                         (v :> HTMLElement)
  
  export
  hidden :  JSType t
         => {auto 0 _ : Elem HTMLElement (Types t)}
         -> t
         -> Attribute True I Bool
  hidden v = fromPrim "HTMLElement.gethidden"
                      prim__hidden
                      prim__setHidden
                      (v :> HTMLElement)
  
  export
  innerText :  JSType t
            => {auto 0 _ : Elem HTMLElement (Types t)}
            -> t
            -> Attribute True I String
  innerText v = fromPrim "HTMLElement.getinnerText"
                         prim__innerText
                         prim__setInnerText
                         (v :> HTMLElement)
  
  export
  lang :  JSType t
       => {auto 0 _ : Elem HTMLElement (Types t)}
       -> t
       -> Attribute True I String
  lang v = fromPrim "HTMLElement.getlang"
                    prim__lang
                    prim__setLang
                    (v :> HTMLElement)
  
  export
  spellcheck :  JSType t
             => {auto 0 _ : Elem HTMLElement (Types t)}
             -> t
             -> Attribute True I Bool
  spellcheck v = fromPrim "HTMLElement.getspellcheck"
                          prim__spellcheck
                          prim__setSpellcheck
                          (v :> HTMLElement)
  
  export
  title :  JSType t
        => {auto 0 _ : Elem HTMLElement (Types t)}
        -> t
        -> Attribute True I String
  title v = fromPrim "HTMLElement.gettitle"
                     prim__title
                     prim__setTitle
                     (v :> HTMLElement)
  
  export
  translate :  JSType t
            => {auto 0 _ : Elem HTMLElement (Types t)}
            -> t
            -> Attribute True I Bool
  translate v = fromPrim "HTMLElement.gettranslate"
                         prim__translate
                         prim__setTranslate
                         (v :> HTMLElement)
  
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
  align :  JSType t
        => {auto 0 _ : Elem HTMLEmbedElement (Types t)}
        -> t
        -> Attribute True I String
  align v = fromPrim "HTMLEmbedElement.getalign"
                     prim__align
                     prim__setAlign
                     (v :> HTMLEmbedElement)
  
  export
  height :  JSType t
         => {auto 0 _ : Elem HTMLEmbedElement (Types t)}
         -> t
         -> Attribute True I String
  height v = fromPrim "HTMLEmbedElement.getheight"
                      prim__height
                      prim__setHeight
                      (v :> HTMLEmbedElement)
  
  export
  name :  JSType t
       => {auto 0 _ : Elem HTMLEmbedElement (Types t)}
       -> t
       -> Attribute True I String
  name v = fromPrim "HTMLEmbedElement.getname"
                    prim__name
                    prim__setName
                    (v :> HTMLEmbedElement)
  
  export
  src :  JSType t
      => {auto 0 _ : Elem HTMLEmbedElement (Types t)}
      -> t
      -> Attribute True I String
  src v = fromPrim "HTMLEmbedElement.getsrc"
                   prim__src
                   prim__setSrc
                   (v :> HTMLEmbedElement)
  
  export
  type :  JSType t
       => {auto 0 _ : Elem HTMLEmbedElement (Types t)}
       -> t
       -> Attribute True I String
  type v = fromPrim "HTMLEmbedElement.gettype"
                    prim__type
                    prim__setType
                    (v :> HTMLEmbedElement)
  
  export
  width :  JSType t
        => {auto 0 _ : Elem HTMLEmbedElement (Types t)}
        -> t
        -> Attribute True I String
  width v = fromPrim "HTMLEmbedElement.getwidth"
                     prim__width
                     prim__setWidth
                     (v :> HTMLEmbedElement)
  
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
  disabled :  JSType t
           => {auto 0 _ : Elem HTMLFieldSetElement (Types t)}
           -> t
           -> Attribute True I Bool
  disabled v = fromPrim "HTMLFieldSetElement.getdisabled"
                        prim__disabled
                        prim__setDisabled
                        (v :> HTMLFieldSetElement)
  
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
  name :  JSType t
       => {auto 0 _ : Elem HTMLFieldSetElement (Types t)}
       -> t
       -> Attribute True I String
  name v = fromPrim "HTMLFieldSetElement.getname"
                    prim__name
                    prim__setName
                    (v :> HTMLFieldSetElement)
  
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
  color :  JSType t
        => {auto 0 _ : Elem HTMLFontElement (Types t)}
        -> t
        -> Attribute True I String
  color v = fromPrim "HTMLFontElement.getcolor"
                     prim__color
                     prim__setColor
                     (v :> HTMLFontElement)
  
  export
  face :  JSType t
       => {auto 0 _ : Elem HTMLFontElement (Types t)}
       -> t
       -> Attribute True I String
  face v = fromPrim "HTMLFontElement.getface"
                    prim__face
                    prim__setFace
                    (v :> HTMLFontElement)
  
  export
  size :  JSType t
       => {auto 0 _ : Elem HTMLFontElement (Types t)}
       -> t
       -> Attribute True I String
  size v = fromPrim "HTMLFontElement.getsize"
                    prim__size
                    prim__setSize
                    (v :> HTMLFontElement)

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
  acceptCharset :  JSType t
                => {auto 0 _ : Elem HTMLFormElement (Types t)}
                -> t
                -> Attribute True I String
  acceptCharset v = fromPrim "HTMLFormElement.getacceptCharset"
                             prim__acceptCharset
                             prim__setAcceptCharset
                             (v :> HTMLFormElement)
  
  export
  action :  JSType t
         => {auto 0 _ : Elem HTMLFormElement (Types t)}
         -> t
         -> Attribute True I String
  action v = fromPrim "HTMLFormElement.getaction"
                      prim__action
                      prim__setAction
                      (v :> HTMLFormElement)
  
  export
  autocomplete :  JSType t
               => {auto 0 _ : Elem HTMLFormElement (Types t)}
               -> t
               -> Attribute True I String
  autocomplete v = fromPrim "HTMLFormElement.getautocomplete"
                            prim__autocomplete
                            prim__setAutocomplete
                            (v :> HTMLFormElement)
  
  export
  elements :  JSType t1
           => {auto 0 _ : Elem HTMLFormElement (Types t1)}
           -> (obj : t1)
           -> JSIO HTMLFormControlsCollection
  elements a = primJS $ HTMLFormElement.prim__elements (up a)
  
  export
  encoding :  JSType t
           => {auto 0 _ : Elem HTMLFormElement (Types t)}
           -> t
           -> Attribute True I String
  encoding v = fromPrim "HTMLFormElement.getencoding"
                        prim__encoding
                        prim__setEncoding
                        (v :> HTMLFormElement)
  
  export
  enctype :  JSType t
          => {auto 0 _ : Elem HTMLFormElement (Types t)}
          -> t
          -> Attribute True I String
  enctype v = fromPrim "HTMLFormElement.getenctype"
                       prim__enctype
                       prim__setEnctype
                       (v :> HTMLFormElement)
  
  export
  length :  JSType t1
         => {auto 0 _ : Elem HTMLFormElement (Types t1)}
         -> (obj : t1)
         -> JSIO UInt32
  length a = primJS $ HTMLFormElement.prim__length (up a)
  
  export
  method :  JSType t
         => {auto 0 _ : Elem HTMLFormElement (Types t)}
         -> t
         -> Attribute True I String
  method v = fromPrim "HTMLFormElement.getmethod"
                      prim__method
                      prim__setMethod
                      (v :> HTMLFormElement)
  
  export
  name :  JSType t
       => {auto 0 _ : Elem HTMLFormElement (Types t)}
       -> t
       -> Attribute True I String
  name v = fromPrim "HTMLFormElement.getname"
                    prim__name
                    prim__setName
                    (v :> HTMLFormElement)
  
  export
  noValidate :  JSType t
             => {auto 0 _ : Elem HTMLFormElement (Types t)}
             -> t
             -> Attribute True I Bool
  noValidate v = fromPrim "HTMLFormElement.getnoValidate"
                          prim__noValidate
                          prim__setNoValidate
                          (v :> HTMLFormElement)
  
  export
  rel :  JSType t
      => {auto 0 _ : Elem HTMLFormElement (Types t)}
      -> t
      -> Attribute True I String
  rel v = fromPrim "HTMLFormElement.getrel"
                   prim__rel
                   prim__setRel
                   (v :> HTMLFormElement)
  
  export
  relList :  JSType t1
          => {auto 0 _ : Elem HTMLFormElement (Types t1)}
          -> (obj : t1)
          -> JSIO DOMTokenList
  relList a = primJS $ HTMLFormElement.prim__relList (up a)
  
  export
  target :  JSType t
         => {auto 0 _ : Elem HTMLFormElement (Types t)}
         -> t
         -> Attribute True I String
  target v = fromPrim "HTMLFormElement.gettarget"
                      prim__target
                      prim__setTarget
                      (v :> HTMLFormElement)
  
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
  frameBorder :  JSType t
              => {auto 0 _ : Elem HTMLFrameElement (Types t)}
              -> t
              -> Attribute True I String
  frameBorder v = fromPrim "HTMLFrameElement.getframeBorder"
                           prim__frameBorder
                           prim__setFrameBorder
                           (v :> HTMLFrameElement)
  
  export
  longDesc :  JSType t
           => {auto 0 _ : Elem HTMLFrameElement (Types t)}
           -> t
           -> Attribute True I String
  longDesc v = fromPrim "HTMLFrameElement.getlongDesc"
                        prim__longDesc
                        prim__setLongDesc
                        (v :> HTMLFrameElement)
  
  export
  marginHeight :  JSType t
               => {auto 0 _ : Elem HTMLFrameElement (Types t)}
               -> t
               -> Attribute True I String
  marginHeight v = fromPrim "HTMLFrameElement.getmarginHeight"
                            prim__marginHeight
                            prim__setMarginHeight
                            (v :> HTMLFrameElement)
  
  export
  marginWidth :  JSType t
              => {auto 0 _ : Elem HTMLFrameElement (Types t)}
              -> t
              -> Attribute True I String
  marginWidth v = fromPrim "HTMLFrameElement.getmarginWidth"
                           prim__marginWidth
                           prim__setMarginWidth
                           (v :> HTMLFrameElement)
  
  export
  name :  JSType t
       => {auto 0 _ : Elem HTMLFrameElement (Types t)}
       -> t
       -> Attribute True I String
  name v = fromPrim "HTMLFrameElement.getname"
                    prim__name
                    prim__setName
                    (v :> HTMLFrameElement)
  
  export
  noResize :  JSType t
           => {auto 0 _ : Elem HTMLFrameElement (Types t)}
           -> t
           -> Attribute True I Bool
  noResize v = fromPrim "HTMLFrameElement.getnoResize"
                        prim__noResize
                        prim__setNoResize
                        (v :> HTMLFrameElement)
  
  export
  scrolling :  JSType t
            => {auto 0 _ : Elem HTMLFrameElement (Types t)}
            -> t
            -> Attribute True I String
  scrolling v = fromPrim "HTMLFrameElement.getscrolling"
                         prim__scrolling
                         prim__setScrolling
                         (v :> HTMLFrameElement)
  
  export
  src :  JSType t
      => {auto 0 _ : Elem HTMLFrameElement (Types t)}
      -> t
      -> Attribute True I String
  src v = fromPrim "HTMLFrameElement.getsrc"
                   prim__src
                   prim__setSrc
                   (v :> HTMLFrameElement)

namespace HTMLFrameSetElement
  
  export
  new : JSIO HTMLFrameSetElement
  new = primJS $ HTMLFrameSetElement.prim__new 
  
  export
  cols :  JSType t
       => {auto 0 _ : Elem HTMLFrameSetElement (Types t)}
       -> t
       -> Attribute True I String
  cols v = fromPrim "HTMLFrameSetElement.getcols"
                    prim__cols
                    prim__setCols
                    (v :> HTMLFrameSetElement)
  
  export
  rows :  JSType t
       => {auto 0 _ : Elem HTMLFrameSetElement (Types t)}
       -> t
       -> Attribute True I String
  rows v = fromPrim "HTMLFrameSetElement.getrows"
                    prim__rows
                    prim__setRows
                    (v :> HTMLFrameSetElement)

namespace HTMLHRElement
  
  export
  new : JSIO HTMLHRElement
  new = primJS $ HTMLHRElement.prim__new 
  
  export
  align :  JSType t
        => {auto 0 _ : Elem HTMLHRElement (Types t)}
        -> t
        -> Attribute True I String
  align v = fromPrim "HTMLHRElement.getalign"
                     prim__align
                     prim__setAlign
                     (v :> HTMLHRElement)
  
  export
  color :  JSType t
        => {auto 0 _ : Elem HTMLHRElement (Types t)}
        -> t
        -> Attribute True I String
  color v = fromPrim "HTMLHRElement.getcolor"
                     prim__color
                     prim__setColor
                     (v :> HTMLHRElement)
  
  export
  noShade :  JSType t
          => {auto 0 _ : Elem HTMLHRElement (Types t)}
          -> t
          -> Attribute True I Bool
  noShade v = fromPrim "HTMLHRElement.getnoShade"
                       prim__noShade
                       prim__setNoShade
                       (v :> HTMLHRElement)
  
  export
  size :  JSType t
       => {auto 0 _ : Elem HTMLHRElement (Types t)}
       -> t
       -> Attribute True I String
  size v = fromPrim "HTMLHRElement.getsize"
                    prim__size
                    prim__setSize
                    (v :> HTMLHRElement)
  
  export
  width :  JSType t
        => {auto 0 _ : Elem HTMLHRElement (Types t)}
        -> t
        -> Attribute True I String
  width v = fromPrim "HTMLHRElement.getwidth"
                     prim__width
                     prim__setWidth
                     (v :> HTMLHRElement)

namespace HTMLHeadElement
  
  export
  new : JSIO HTMLHeadElement
  new = primJS $ HTMLHeadElement.prim__new 

namespace HTMLHeadingElement
  
  export
  new : JSIO HTMLHeadingElement
  new = primJS $ HTMLHeadingElement.prim__new 
  
  export
  align :  JSType t
        => {auto 0 _ : Elem HTMLHeadingElement (Types t)}
        -> t
        -> Attribute True I String
  align v = fromPrim "HTMLHeadingElement.getalign"
                     prim__align
                     prim__setAlign
                     (v :> HTMLHeadingElement)

namespace HTMLHtmlElement
  
  export
  new : JSIO HTMLHtmlElement
  new = primJS $ HTMLHtmlElement.prim__new 
  
  export
  version :  JSType t
          => {auto 0 _ : Elem HTMLHtmlElement (Types t)}
          -> t
          -> Attribute True I String
  version v = fromPrim "HTMLHtmlElement.getversion"
                       prim__version
                       prim__setVersion
                       (v :> HTMLHtmlElement)

namespace HTMLIFrameElement
  
  export
  new : JSIO HTMLIFrameElement
  new = primJS $ HTMLIFrameElement.prim__new 
  
  export
  align :  JSType t
        => {auto 0 _ : Elem HTMLIFrameElement (Types t)}
        -> t
        -> Attribute True I String
  align v = fromPrim "HTMLIFrameElement.getalign"
                     prim__align
                     prim__setAlign
                     (v :> HTMLIFrameElement)
  
  export
  allow :  JSType t
        => {auto 0 _ : Elem HTMLIFrameElement (Types t)}
        -> t
        -> Attribute True I String
  allow v = fromPrim "HTMLIFrameElement.getallow"
                     prim__allow
                     prim__setAllow
                     (v :> HTMLIFrameElement)
  
  export
  allowFullscreen :  JSType t
                  => {auto 0 _ : Elem HTMLIFrameElement (Types t)}
                  -> t
                  -> Attribute True I Bool
  allowFullscreen v = fromPrim "HTMLIFrameElement.getallowFullscreen"
                               prim__allowFullscreen
                               prim__setAllowFullscreen
                               (v :> HTMLIFrameElement)
  
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
  frameBorder :  JSType t
              => {auto 0 _ : Elem HTMLIFrameElement (Types t)}
              -> t
              -> Attribute True I String
  frameBorder v = fromPrim "HTMLIFrameElement.getframeBorder"
                           prim__frameBorder
                           prim__setFrameBorder
                           (v :> HTMLIFrameElement)
  
  export
  height :  JSType t
         => {auto 0 _ : Elem HTMLIFrameElement (Types t)}
         -> t
         -> Attribute True I String
  height v = fromPrim "HTMLIFrameElement.getheight"
                      prim__height
                      prim__setHeight
                      (v :> HTMLIFrameElement)
  
  export
  loading :  JSType t
          => {auto 0 _ : Elem HTMLIFrameElement (Types t)}
          -> t
          -> Attribute True I String
  loading v = fromPrim "HTMLIFrameElement.getloading"
                       prim__loading
                       prim__setLoading
                       (v :> HTMLIFrameElement)
  
  export
  longDesc :  JSType t
           => {auto 0 _ : Elem HTMLIFrameElement (Types t)}
           -> t
           -> Attribute True I String
  longDesc v = fromPrim "HTMLIFrameElement.getlongDesc"
                        prim__longDesc
                        prim__setLongDesc
                        (v :> HTMLIFrameElement)
  
  export
  marginHeight :  JSType t
               => {auto 0 _ : Elem HTMLIFrameElement (Types t)}
               -> t
               -> Attribute True I String
  marginHeight v = fromPrim "HTMLIFrameElement.getmarginHeight"
                            prim__marginHeight
                            prim__setMarginHeight
                            (v :> HTMLIFrameElement)
  
  export
  marginWidth :  JSType t
              => {auto 0 _ : Elem HTMLIFrameElement (Types t)}
              -> t
              -> Attribute True I String
  marginWidth v = fromPrim "HTMLIFrameElement.getmarginWidth"
                           prim__marginWidth
                           prim__setMarginWidth
                           (v :> HTMLIFrameElement)
  
  export
  name :  JSType t
       => {auto 0 _ : Elem HTMLIFrameElement (Types t)}
       -> t
       -> Attribute True I String
  name v = fromPrim "HTMLIFrameElement.getname"
                    prim__name
                    prim__setName
                    (v :> HTMLIFrameElement)
  
  export
  referrerPolicy :  JSType t
                 => {auto 0 _ : Elem HTMLIFrameElement (Types t)}
                 -> t
                 -> Attribute True I String
  referrerPolicy v = fromPrim "HTMLIFrameElement.getreferrerPolicy"
                              prim__referrerPolicy
                              prim__setReferrerPolicy
                              (v :> HTMLIFrameElement)
  
  export
  sandbox :  JSType t1
          => {auto 0 _ : Elem HTMLIFrameElement (Types t1)}
          -> (obj : t1)
          -> JSIO DOMTokenList
  sandbox a = primJS $ HTMLIFrameElement.prim__sandbox (up a)
  
  export
  scrolling :  JSType t
            => {auto 0 _ : Elem HTMLIFrameElement (Types t)}
            -> t
            -> Attribute True I String
  scrolling v = fromPrim "HTMLIFrameElement.getscrolling"
                         prim__scrolling
                         prim__setScrolling
                         (v :> HTMLIFrameElement)
  
  export
  src :  JSType t
      => {auto 0 _ : Elem HTMLIFrameElement (Types t)}
      -> t
      -> Attribute True I String
  src v = fromPrim "HTMLIFrameElement.getsrc"
                   prim__src
                   prim__setSrc
                   (v :> HTMLIFrameElement)
  
  export
  srcdoc :  JSType t
         => {auto 0 _ : Elem HTMLIFrameElement (Types t)}
         -> t
         -> Attribute True I String
  srcdoc v = fromPrim "HTMLIFrameElement.getsrcdoc"
                      prim__srcdoc
                      prim__setSrcdoc
                      (v :> HTMLIFrameElement)
  
  export
  width :  JSType t
        => {auto 0 _ : Elem HTMLIFrameElement (Types t)}
        -> t
        -> Attribute True I String
  width v = fromPrim "HTMLIFrameElement.getwidth"
                     prim__width
                     prim__setWidth
                     (v :> HTMLIFrameElement)
  
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
  align :  JSType t
        => {auto 0 _ : Elem HTMLImageElement (Types t)}
        -> t
        -> Attribute True I String
  align v = fromPrim "HTMLImageElement.getalign"
                     prim__align
                     prim__setAlign
                     (v :> HTMLImageElement)
  
  export
  alt :  JSType t
      => {auto 0 _ : Elem HTMLImageElement (Types t)}
      -> t
      -> Attribute True I String
  alt v = fromPrim "HTMLImageElement.getalt"
                   prim__alt
                   prim__setAlt
                   (v :> HTMLImageElement)
  
  export
  border :  JSType t
         => {auto 0 _ : Elem HTMLImageElement (Types t)}
         -> t
         -> Attribute True I String
  border v = fromPrim "HTMLImageElement.getborder"
                      prim__border
                      prim__setBorder
                      (v :> HTMLImageElement)
  
  export
  complete :  JSType t1
           => {auto 0 _ : Elem HTMLImageElement (Types t1)}
           -> (obj : t1)
           -> JSIO Bool
  complete a = tryJS "HTMLImageElement.complete"
             $ HTMLImageElement.prim__complete (up a)
  
  export
  crossOrigin :  JSType t
              => {auto 0 _ : Elem HTMLImageElement (Types t)}
              -> t
              -> Attribute False Maybe String
  crossOrigin v = fromNullablePrim "HTMLImageElement.getcrossOrigin"
                                   prim__crossOrigin
                                   prim__setCrossOrigin
                                   (v :> HTMLImageElement)
  
  export
  currentSrc :  JSType t1
             => {auto 0 _ : Elem HTMLImageElement (Types t1)}
             -> (obj : t1)
             -> JSIO String
  currentSrc a = primJS $ HTMLImageElement.prim__currentSrc (up a)
  
  export
  decoding :  JSType t
           => {auto 0 _ : Elem HTMLImageElement (Types t)}
           -> t
           -> Attribute True I String
  decoding v = fromPrim "HTMLImageElement.getdecoding"
                        prim__decoding
                        prim__setDecoding
                        (v :> HTMLImageElement)
  
  export
  height :  JSType t
         => {auto 0 _ : Elem HTMLImageElement (Types t)}
         -> t
         -> Attribute True I UInt32
  height v = fromPrim "HTMLImageElement.getheight"
                      prim__height
                      prim__setHeight
                      (v :> HTMLImageElement)
  
  export
  hspace :  JSType t
         => {auto 0 _ : Elem HTMLImageElement (Types t)}
         -> t
         -> Attribute True I UInt32
  hspace v = fromPrim "HTMLImageElement.gethspace"
                      prim__hspace
                      prim__setHspace
                      (v :> HTMLImageElement)
  
  export
  isMap :  JSType t
        => {auto 0 _ : Elem HTMLImageElement (Types t)}
        -> t
        -> Attribute True I Bool
  isMap v = fromPrim "HTMLImageElement.getisMap"
                     prim__isMap
                     prim__setIsMap
                     (v :> HTMLImageElement)
  
  export
  loading :  JSType t
          => {auto 0 _ : Elem HTMLImageElement (Types t)}
          -> t
          -> Attribute True I String
  loading v = fromPrim "HTMLImageElement.getloading"
                       prim__loading
                       prim__setLoading
                       (v :> HTMLImageElement)
  
  export
  longDesc :  JSType t
           => {auto 0 _ : Elem HTMLImageElement (Types t)}
           -> t
           -> Attribute True I String
  longDesc v = fromPrim "HTMLImageElement.getlongDesc"
                        prim__longDesc
                        prim__setLongDesc
                        (v :> HTMLImageElement)
  
  export
  lowsrc :  JSType t
         => {auto 0 _ : Elem HTMLImageElement (Types t)}
         -> t
         -> Attribute True I String
  lowsrc v = fromPrim "HTMLImageElement.getlowsrc"
                      prim__lowsrc
                      prim__setLowsrc
                      (v :> HTMLImageElement)
  
  export
  name :  JSType t
       => {auto 0 _ : Elem HTMLImageElement (Types t)}
       -> t
       -> Attribute True I String
  name v = fromPrim "HTMLImageElement.getname"
                    prim__name
                    prim__setName
                    (v :> HTMLImageElement)
  
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
  referrerPolicy :  JSType t
                 => {auto 0 _ : Elem HTMLImageElement (Types t)}
                 -> t
                 -> Attribute True I String
  referrerPolicy v = fromPrim "HTMLImageElement.getreferrerPolicy"
                              prim__referrerPolicy
                              prim__setReferrerPolicy
                              (v :> HTMLImageElement)
  
  export
  sizes :  JSType t
        => {auto 0 _ : Elem HTMLImageElement (Types t)}
        -> t
        -> Attribute True I String
  sizes v = fromPrim "HTMLImageElement.getsizes"
                     prim__sizes
                     prim__setSizes
                     (v :> HTMLImageElement)
  
  export
  src :  JSType t
      => {auto 0 _ : Elem HTMLImageElement (Types t)}
      -> t
      -> Attribute True I String
  src v = fromPrim "HTMLImageElement.getsrc"
                   prim__src
                   prim__setSrc
                   (v :> HTMLImageElement)
  
  export
  srcset :  JSType t
         => {auto 0 _ : Elem HTMLImageElement (Types t)}
         -> t
         -> Attribute True I String
  srcset v = fromPrim "HTMLImageElement.getsrcset"
                      prim__srcset
                      prim__setSrcset
                      (v :> HTMLImageElement)
  
  export
  useMap :  JSType t
         => {auto 0 _ : Elem HTMLImageElement (Types t)}
         -> t
         -> Attribute True I String
  useMap v = fromPrim "HTMLImageElement.getuseMap"
                      prim__useMap
                      prim__setUseMap
                      (v :> HTMLImageElement)
  
  export
  vspace :  JSType t
         => {auto 0 _ : Elem HTMLImageElement (Types t)}
         -> t
         -> Attribute True I UInt32
  vspace v = fromPrim "HTMLImageElement.getvspace"
                      prim__vspace
                      prim__setVspace
                      (v :> HTMLImageElement)
  
  export
  width :  JSType t
        => {auto 0 _ : Elem HTMLImageElement (Types t)}
        -> t
        -> Attribute True I UInt32
  width v = fromPrim "HTMLImageElement.getwidth"
                     prim__width
                     prim__setWidth
                     (v :> HTMLImageElement)
  
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
  accept :  JSType t
         => {auto 0 _ : Elem HTMLInputElement (Types t)}
         -> t
         -> Attribute True I String
  accept v = fromPrim "HTMLInputElement.getaccept"
                      prim__accept
                      prim__setAccept
                      (v :> HTMLInputElement)
  
  export
  align :  JSType t
        => {auto 0 _ : Elem HTMLInputElement (Types t)}
        -> t
        -> Attribute True I String
  align v = fromPrim "HTMLInputElement.getalign"
                     prim__align
                     prim__setAlign
                     (v :> HTMLInputElement)
  
  export
  alt :  JSType t
      => {auto 0 _ : Elem HTMLInputElement (Types t)}
      -> t
      -> Attribute True I String
  alt v = fromPrim "HTMLInputElement.getalt"
                   prim__alt
                   prim__setAlt
                   (v :> HTMLInputElement)
  
  export
  autocomplete :  JSType t
               => {auto 0 _ : Elem HTMLInputElement (Types t)}
               -> t
               -> Attribute True I String
  autocomplete v = fromPrim "HTMLInputElement.getautocomplete"
                            prim__autocomplete
                            prim__setAutocomplete
                            (v :> HTMLInputElement)
  
  export
  checked :  JSType t
          => {auto 0 _ : Elem HTMLInputElement (Types t)}
          -> t
          -> Attribute True I Bool
  checked v = fromPrim "HTMLInputElement.getchecked"
                       prim__checked
                       prim__setChecked
                       (v :> HTMLInputElement)
  
  export
  defaultChecked :  JSType t
                 => {auto 0 _ : Elem HTMLInputElement (Types t)}
                 -> t
                 -> Attribute True I Bool
  defaultChecked v = fromPrim "HTMLInputElement.getdefaultChecked"
                              prim__defaultChecked
                              prim__setDefaultChecked
                              (v :> HTMLInputElement)
  
  export
  defaultValue :  JSType t
               => {auto 0 _ : Elem HTMLInputElement (Types t)}
               -> t
               -> Attribute True I String
  defaultValue v = fromPrim "HTMLInputElement.getdefaultValue"
                            prim__defaultValue
                            prim__setDefaultValue
                            (v :> HTMLInputElement)
  
  export
  dirName :  JSType t
          => {auto 0 _ : Elem HTMLInputElement (Types t)}
          -> t
          -> Attribute True I String
  dirName v = fromPrim "HTMLInputElement.getdirName"
                       prim__dirName
                       prim__setDirName
                       (v :> HTMLInputElement)
  
  export
  disabled :  JSType t
           => {auto 0 _ : Elem HTMLInputElement (Types t)}
           -> t
           -> Attribute True I Bool
  disabled v = fromPrim "HTMLInputElement.getdisabled"
                        prim__disabled
                        prim__setDisabled
                        (v :> HTMLInputElement)
  
  export
  files :  JSType t
        => {auto 0 _ : Elem HTMLInputElement (Types t)}
        -> t
        -> Attribute False Maybe FileList
  files v = fromNullablePrim "HTMLInputElement.getfiles"
                             prim__files
                             prim__setFiles
                             (v :> HTMLInputElement)
  
  export
  form :  JSType t1
       => {auto 0 _ : Elem HTMLInputElement (Types t1)}
       -> (obj : t1)
       -> JSIO (Maybe HTMLFormElement)
  form a = tryJS "HTMLInputElement.form" $ HTMLInputElement.prim__form (up a)
  
  export
  formAction :  JSType t
             => {auto 0 _ : Elem HTMLInputElement (Types t)}
             -> t
             -> Attribute True I String
  formAction v = fromPrim "HTMLInputElement.getformAction"
                          prim__formAction
                          prim__setFormAction
                          (v :> HTMLInputElement)
  
  export
  formEnctype :  JSType t
              => {auto 0 _ : Elem HTMLInputElement (Types t)}
              -> t
              -> Attribute True I String
  formEnctype v = fromPrim "HTMLInputElement.getformEnctype"
                           prim__formEnctype
                           prim__setFormEnctype
                           (v :> HTMLInputElement)
  
  export
  formMethod :  JSType t
             => {auto 0 _ : Elem HTMLInputElement (Types t)}
             -> t
             -> Attribute True I String
  formMethod v = fromPrim "HTMLInputElement.getformMethod"
                          prim__formMethod
                          prim__setFormMethod
                          (v :> HTMLInputElement)
  
  export
  formNoValidate :  JSType t
                 => {auto 0 _ : Elem HTMLInputElement (Types t)}
                 -> t
                 -> Attribute True I Bool
  formNoValidate v = fromPrim "HTMLInputElement.getformNoValidate"
                              prim__formNoValidate
                              prim__setFormNoValidate
                              (v :> HTMLInputElement)
  
  export
  formTarget :  JSType t
             => {auto 0 _ : Elem HTMLInputElement (Types t)}
             -> t
             -> Attribute True I String
  formTarget v = fromPrim "HTMLInputElement.getformTarget"
                          prim__formTarget
                          prim__setFormTarget
                          (v :> HTMLInputElement)
  
  export
  height :  JSType t
         => {auto 0 _ : Elem HTMLInputElement (Types t)}
         -> t
         -> Attribute True I UInt32
  height v = fromPrim "HTMLInputElement.getheight"
                      prim__height
                      prim__setHeight
                      (v :> HTMLInputElement)
  
  export
  indeterminate :  JSType t
                => {auto 0 _ : Elem HTMLInputElement (Types t)}
                -> t
                -> Attribute True I Bool
  indeterminate v = fromPrim "HTMLInputElement.getindeterminate"
                             prim__indeterminate
                             prim__setIndeterminate
                             (v :> HTMLInputElement)
  
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
  max :  JSType t
      => {auto 0 _ : Elem HTMLInputElement (Types t)}
      -> t
      -> Attribute True I String
  max v = fromPrim "HTMLInputElement.getmax"
                   prim__max
                   prim__setMax
                   (v :> HTMLInputElement)
  
  export
  maxLength :  JSType t
            => {auto 0 _ : Elem HTMLInputElement (Types t)}
            -> t
            -> Attribute True I Int32
  maxLength v = fromPrim "HTMLInputElement.getmaxLength"
                         prim__maxLength
                         prim__setMaxLength
                         (v :> HTMLInputElement)
  
  export
  min :  JSType t
      => {auto 0 _ : Elem HTMLInputElement (Types t)}
      -> t
      -> Attribute True I String
  min v = fromPrim "HTMLInputElement.getmin"
                   prim__min
                   prim__setMin
                   (v :> HTMLInputElement)
  
  export
  minLength :  JSType t
            => {auto 0 _ : Elem HTMLInputElement (Types t)}
            -> t
            -> Attribute True I Int32
  minLength v = fromPrim "HTMLInputElement.getminLength"
                         prim__minLength
                         prim__setMinLength
                         (v :> HTMLInputElement)
  
  export
  multiple :  JSType t
           => {auto 0 _ : Elem HTMLInputElement (Types t)}
           -> t
           -> Attribute True I Bool
  multiple v = fromPrim "HTMLInputElement.getmultiple"
                        prim__multiple
                        prim__setMultiple
                        (v :> HTMLInputElement)
  
  export
  name :  JSType t
       => {auto 0 _ : Elem HTMLInputElement (Types t)}
       -> t
       -> Attribute True I String
  name v = fromPrim "HTMLInputElement.getname"
                    prim__name
                    prim__setName
                    (v :> HTMLInputElement)
  
  export
  pattern :  JSType t
          => {auto 0 _ : Elem HTMLInputElement (Types t)}
          -> t
          -> Attribute True I String
  pattern v = fromPrim "HTMLInputElement.getpattern"
                       prim__pattern
                       prim__setPattern
                       (v :> HTMLInputElement)
  
  export
  placeholder :  JSType t
              => {auto 0 _ : Elem HTMLInputElement (Types t)}
              -> t
              -> Attribute True I String
  placeholder v = fromPrim "HTMLInputElement.getplaceholder"
                           prim__placeholder
                           prim__setPlaceholder
                           (v :> HTMLInputElement)
  
  export
  readOnly :  JSType t
           => {auto 0 _ : Elem HTMLInputElement (Types t)}
           -> t
           -> Attribute True I Bool
  readOnly v = fromPrim "HTMLInputElement.getreadOnly"
                        prim__readOnly
                        prim__setReadOnly
                        (v :> HTMLInputElement)
  
  export
  required :  JSType t
           => {auto 0 _ : Elem HTMLInputElement (Types t)}
           -> t
           -> Attribute True I Bool
  required v = fromPrim "HTMLInputElement.getrequired"
                        prim__required
                        prim__setRequired
                        (v :> HTMLInputElement)
  
  export
  selectionDirection :  JSType t
                     => {auto 0 _ : Elem HTMLInputElement (Types t)}
                     -> t
                     -> Attribute False Maybe String
  selectionDirection v = fromNullablePrim "HTMLInputElement.getselectionDirection"
                                          prim__selectionDirection
                                          prim__setSelectionDirection
                                          (v :> HTMLInputElement)
  
  export
  selectionEnd :  JSType t
               => {auto 0 _ : Elem HTMLInputElement (Types t)}
               -> t
               -> Attribute False Maybe UInt32
  selectionEnd v = fromNullablePrim "HTMLInputElement.getselectionEnd"
                                    prim__selectionEnd
                                    prim__setSelectionEnd
                                    (v :> HTMLInputElement)
  
  export
  selectionStart :  JSType t
                 => {auto 0 _ : Elem HTMLInputElement (Types t)}
                 -> t
                 -> Attribute False Maybe UInt32
  selectionStart v = fromNullablePrim "HTMLInputElement.getselectionStart"
                                      prim__selectionStart
                                      prim__setSelectionStart
                                      (v :> HTMLInputElement)
  
  export
  size :  JSType t
       => {auto 0 _ : Elem HTMLInputElement (Types t)}
       -> t
       -> Attribute True I UInt32
  size v = fromPrim "HTMLInputElement.getsize"
                    prim__size
                    prim__setSize
                    (v :> HTMLInputElement)
  
  export
  src :  JSType t
      => {auto 0 _ : Elem HTMLInputElement (Types t)}
      -> t
      -> Attribute True I String
  src v = fromPrim "HTMLInputElement.getsrc"
                   prim__src
                   prim__setSrc
                   (v :> HTMLInputElement)
  
  export
  step :  JSType t
       => {auto 0 _ : Elem HTMLInputElement (Types t)}
       -> t
       -> Attribute True I String
  step v = fromPrim "HTMLInputElement.getstep"
                    prim__step
                    prim__setStep
                    (v :> HTMLInputElement)
  
  export
  type :  JSType t
       => {auto 0 _ : Elem HTMLInputElement (Types t)}
       -> t
       -> Attribute True I String
  type v = fromPrim "HTMLInputElement.gettype"
                    prim__type
                    prim__setType
                    (v :> HTMLInputElement)
  
  export
  useMap :  JSType t
         => {auto 0 _ : Elem HTMLInputElement (Types t)}
         -> t
         -> Attribute True I String
  useMap v = fromPrim "HTMLInputElement.getuseMap"
                      prim__useMap
                      prim__setUseMap
                      (v :> HTMLInputElement)
  
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
  value :  JSType t
        => {auto 0 _ : Elem HTMLInputElement (Types t)}
        -> t
        -> Attribute True I String
  value v = fromPrim "HTMLInputElement.getvalue"
                     prim__value
                     prim__setValue
                     (v :> HTMLInputElement)
  
  export
  valueAsDate :  JSType t
              => {auto 0 _ : Elem HTMLInputElement (Types t)}
              -> t
              -> Attribute False Maybe Object
  valueAsDate v = fromNullablePrim "HTMLInputElement.getvalueAsDate"
                                   prim__valueAsDate
                                   prim__setValueAsDate
                                   (v :> HTMLInputElement)
  
  export
  valueAsNumber :  JSType t
                => {auto 0 _ : Elem HTMLInputElement (Types t)}
                -> t
                -> Attribute True I Double
  valueAsNumber v = fromPrim "HTMLInputElement.getvalueAsNumber"
                             prim__valueAsNumber
                             prim__setValueAsNumber
                             (v :> HTMLInputElement)
  
  export
  width :  JSType t
        => {auto 0 _ : Elem HTMLInputElement (Types t)}
        -> t
        -> Attribute True I UInt32
  width v = fromPrim "HTMLInputElement.getwidth"
                     prim__width
                     prim__setWidth
                     (v :> HTMLInputElement)
  
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
  type :  JSType t
       => {auto 0 _ : Elem HTMLLIElement (Types t)}
       -> t
       -> Attribute True I String
  type v = fromPrim "HTMLLIElement.gettype"
                    prim__type
                    prim__setType
                    (v :> HTMLLIElement)
  
  export
  value :  JSType t
        => {auto 0 _ : Elem HTMLLIElement (Types t)}
        -> t
        -> Attribute True I Int32
  value v = fromPrim "HTMLLIElement.getvalue"
                     prim__value
                     prim__setValue
                     (v :> HTMLLIElement)

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
  htmlFor :  JSType t
          => {auto 0 _ : Elem HTMLLabelElement (Types t)}
          -> t
          -> Attribute True I String
  htmlFor v = fromPrim "HTMLLabelElement.gethtmlFor"
                       prim__htmlFor
                       prim__setHtmlFor
                       (v :> HTMLLabelElement)

namespace HTMLLegendElement
  
  export
  new : JSIO HTMLLegendElement
  new = primJS $ HTMLLegendElement.prim__new 
  
  export
  align :  JSType t
        => {auto 0 _ : Elem HTMLLegendElement (Types t)}
        -> t
        -> Attribute True I String
  align v = fromPrim "HTMLLegendElement.getalign"
                     prim__align
                     prim__setAlign
                     (v :> HTMLLegendElement)
  
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
  as :  JSType t
     => {auto 0 _ : Elem HTMLLinkElement (Types t)}
     -> t
     -> Attribute True I String
  as v = fromPrim "HTMLLinkElement.getas"
                  prim__as
                  prim__setAs
                  (v :> HTMLLinkElement)
  
  export
  charset :  JSType t
          => {auto 0 _ : Elem HTMLLinkElement (Types t)}
          -> t
          -> Attribute True I String
  charset v = fromPrim "HTMLLinkElement.getcharset"
                       prim__charset
                       prim__setCharset
                       (v :> HTMLLinkElement)
  
  export
  crossOrigin :  JSType t
              => {auto 0 _ : Elem HTMLLinkElement (Types t)}
              -> t
              -> Attribute False Maybe String
  crossOrigin v = fromNullablePrim "HTMLLinkElement.getcrossOrigin"
                                   prim__crossOrigin
                                   prim__setCrossOrigin
                                   (v :> HTMLLinkElement)
  
  export
  disabled :  JSType t
           => {auto 0 _ : Elem HTMLLinkElement (Types t)}
           -> t
           -> Attribute True I Bool
  disabled v = fromPrim "HTMLLinkElement.getdisabled"
                        prim__disabled
                        prim__setDisabled
                        (v :> HTMLLinkElement)
  
  export
  href :  JSType t
       => {auto 0 _ : Elem HTMLLinkElement (Types t)}
       -> t
       -> Attribute True I String
  href v = fromPrim "HTMLLinkElement.gethref"
                    prim__href
                    prim__setHref
                    (v :> HTMLLinkElement)
  
  export
  hreflang :  JSType t
           => {auto 0 _ : Elem HTMLLinkElement (Types t)}
           -> t
           -> Attribute True I String
  hreflang v = fromPrim "HTMLLinkElement.gethreflang"
                        prim__hreflang
                        prim__setHreflang
                        (v :> HTMLLinkElement)
  
  export
  imageSizes :  JSType t
             => {auto 0 _ : Elem HTMLLinkElement (Types t)}
             -> t
             -> Attribute True I String
  imageSizes v = fromPrim "HTMLLinkElement.getimageSizes"
                          prim__imageSizes
                          prim__setImageSizes
                          (v :> HTMLLinkElement)
  
  export
  imageSrcset :  JSType t
              => {auto 0 _ : Elem HTMLLinkElement (Types t)}
              -> t
              -> Attribute True I String
  imageSrcset v = fromPrim "HTMLLinkElement.getimageSrcset"
                           prim__imageSrcset
                           prim__setImageSrcset
                           (v :> HTMLLinkElement)
  
  export
  integrity :  JSType t
            => {auto 0 _ : Elem HTMLLinkElement (Types t)}
            -> t
            -> Attribute True I String
  integrity v = fromPrim "HTMLLinkElement.getintegrity"
                         prim__integrity
                         prim__setIntegrity
                         (v :> HTMLLinkElement)
  
  export
  media :  JSType t
        => {auto 0 _ : Elem HTMLLinkElement (Types t)}
        -> t
        -> Attribute True I String
  media v = fromPrim "HTMLLinkElement.getmedia"
                     prim__media
                     prim__setMedia
                     (v :> HTMLLinkElement)
  
  export
  referrerPolicy :  JSType t
                 => {auto 0 _ : Elem HTMLLinkElement (Types t)}
                 -> t
                 -> Attribute True I String
  referrerPolicy v = fromPrim "HTMLLinkElement.getreferrerPolicy"
                              prim__referrerPolicy
                              prim__setReferrerPolicy
                              (v :> HTMLLinkElement)
  
  export
  rel :  JSType t
      => {auto 0 _ : Elem HTMLLinkElement (Types t)}
      -> t
      -> Attribute True I String
  rel v = fromPrim "HTMLLinkElement.getrel"
                   prim__rel
                   prim__setRel
                   (v :> HTMLLinkElement)
  
  export
  relList :  JSType t1
          => {auto 0 _ : Elem HTMLLinkElement (Types t1)}
          -> (obj : t1)
          -> JSIO DOMTokenList
  relList a = primJS $ HTMLLinkElement.prim__relList (up a)
  
  export
  rev :  JSType t
      => {auto 0 _ : Elem HTMLLinkElement (Types t)}
      -> t
      -> Attribute True I String
  rev v = fromPrim "HTMLLinkElement.getrev"
                   prim__rev
                   prim__setRev
                   (v :> HTMLLinkElement)
  
  export
  sizes :  JSType t1
        => {auto 0 _ : Elem HTMLLinkElement (Types t1)}
        -> (obj : t1)
        -> JSIO DOMTokenList
  sizes a = primJS $ HTMLLinkElement.prim__sizes (up a)
  
  export
  target :  JSType t
         => {auto 0 _ : Elem HTMLLinkElement (Types t)}
         -> t
         -> Attribute True I String
  target v = fromPrim "HTMLLinkElement.gettarget"
                      prim__target
                      prim__setTarget
                      (v :> HTMLLinkElement)
  
  export
  type :  JSType t
       => {auto 0 _ : Elem HTMLLinkElement (Types t)}
       -> t
       -> Attribute True I String
  type v = fromPrim "HTMLLinkElement.gettype"
                    prim__type
                    prim__setType
                    (v :> HTMLLinkElement)

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
  name :  JSType t
       => {auto 0 _ : Elem HTMLMapElement (Types t)}
       -> t
       -> Attribute True I String
  name v = fromPrim "HTMLMapElement.getname"
                    prim__name
                    prim__setName
                    (v :> HTMLMapElement)

namespace HTMLMarqueeElement
  
  export
  new : JSIO HTMLMarqueeElement
  new = primJS $ HTMLMarqueeElement.prim__new 
  
  export
  behavior :  JSType t
           => {auto 0 _ : Elem HTMLMarqueeElement (Types t)}
           -> t
           -> Attribute True I String
  behavior v = fromPrim "HTMLMarqueeElement.getbehavior"
                        prim__behavior
                        prim__setBehavior
                        (v :> HTMLMarqueeElement)
  
  export
  bgColor :  JSType t
          => {auto 0 _ : Elem HTMLMarqueeElement (Types t)}
          -> t
          -> Attribute True I String
  bgColor v = fromPrim "HTMLMarqueeElement.getbgColor"
                       prim__bgColor
                       prim__setBgColor
                       (v :> HTMLMarqueeElement)
  
  export
  direction :  JSType t
            => {auto 0 _ : Elem HTMLMarqueeElement (Types t)}
            -> t
            -> Attribute True I String
  direction v = fromPrim "HTMLMarqueeElement.getdirection"
                         prim__direction
                         prim__setDirection
                         (v :> HTMLMarqueeElement)
  
  export
  height :  JSType t
         => {auto 0 _ : Elem HTMLMarqueeElement (Types t)}
         -> t
         -> Attribute True I String
  height v = fromPrim "HTMLMarqueeElement.getheight"
                      prim__height
                      prim__setHeight
                      (v :> HTMLMarqueeElement)
  
  export
  hspace :  JSType t
         => {auto 0 _ : Elem HTMLMarqueeElement (Types t)}
         -> t
         -> Attribute True I UInt32
  hspace v = fromPrim "HTMLMarqueeElement.gethspace"
                      prim__hspace
                      prim__setHspace
                      (v :> HTMLMarqueeElement)
  
  export
  loop :  JSType t
       => {auto 0 _ : Elem HTMLMarqueeElement (Types t)}
       -> t
       -> Attribute True I Int32
  loop v = fromPrim "HTMLMarqueeElement.getloop"
                    prim__loop
                    prim__setLoop
                    (v :> HTMLMarqueeElement)
  
  export
  scrollAmount :  JSType t
               => {auto 0 _ : Elem HTMLMarqueeElement (Types t)}
               -> t
               -> Attribute True I UInt32
  scrollAmount v = fromPrim "HTMLMarqueeElement.getscrollAmount"
                            prim__scrollAmount
                            prim__setScrollAmount
                            (v :> HTMLMarqueeElement)
  
  export
  scrollDelay :  JSType t
              => {auto 0 _ : Elem HTMLMarqueeElement (Types t)}
              -> t
              -> Attribute True I UInt32
  scrollDelay v = fromPrim "HTMLMarqueeElement.getscrollDelay"
                           prim__scrollDelay
                           prim__setScrollDelay
                           (v :> HTMLMarqueeElement)
  
  export
  trueSpeed :  JSType t
            => {auto 0 _ : Elem HTMLMarqueeElement (Types t)}
            -> t
            -> Attribute True I Bool
  trueSpeed v = fromPrim "HTMLMarqueeElement.gettrueSpeed"
                         prim__trueSpeed
                         prim__setTrueSpeed
                         (v :> HTMLMarqueeElement)
  
  export
  vspace :  JSType t
         => {auto 0 _ : Elem HTMLMarqueeElement (Types t)}
         -> t
         -> Attribute True I UInt32
  vspace v = fromPrim "HTMLMarqueeElement.getvspace"
                      prim__vspace
                      prim__setVspace
                      (v :> HTMLMarqueeElement)
  
  export
  width :  JSType t
        => {auto 0 _ : Elem HTMLMarqueeElement (Types t)}
        -> t
        -> Attribute True I String
  width v = fromPrim "HTMLMarqueeElement.getwidth"
                     prim__width
                     prim__setWidth
                     (v :> HTMLMarqueeElement)
  
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
  autoplay :  JSType t
           => {auto 0 _ : Elem HTMLMediaElement (Types t)}
           -> t
           -> Attribute True I Bool
  autoplay v = fromPrim "HTMLMediaElement.getautoplay"
                        prim__autoplay
                        prim__setAutoplay
                        (v :> HTMLMediaElement)
  
  export
  buffered :  JSType t1
           => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
           -> (obj : t1)
           -> JSIO TimeRanges
  buffered a = primJS $ HTMLMediaElement.prim__buffered (up a)
  
  export
  controls :  JSType t
           => {auto 0 _ : Elem HTMLMediaElement (Types t)}
           -> t
           -> Attribute True I Bool
  controls v = fromPrim "HTMLMediaElement.getcontrols"
                        prim__controls
                        prim__setControls
                        (v :> HTMLMediaElement)
  
  export
  crossOrigin :  JSType t
              => {auto 0 _ : Elem HTMLMediaElement (Types t)}
              -> t
              -> Attribute False Maybe String
  crossOrigin v = fromNullablePrim "HTMLMediaElement.getcrossOrigin"
                                   prim__crossOrigin
                                   prim__setCrossOrigin
                                   (v :> HTMLMediaElement)
  
  export
  currentSrc :  JSType t1
             => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
             -> (obj : t1)
             -> JSIO String
  currentSrc a = primJS $ HTMLMediaElement.prim__currentSrc (up a)
  
  export
  currentTime :  JSType t
              => {auto 0 _ : Elem HTMLMediaElement (Types t)}
              -> t
              -> Attribute True I Double
  currentTime v = fromPrim "HTMLMediaElement.getcurrentTime"
                           prim__currentTime
                           prim__setCurrentTime
                           (v :> HTMLMediaElement)
  
  export
  defaultMuted :  JSType t
               => {auto 0 _ : Elem HTMLMediaElement (Types t)}
               -> t
               -> Attribute True I Bool
  defaultMuted v = fromPrim "HTMLMediaElement.getdefaultMuted"
                            prim__defaultMuted
                            prim__setDefaultMuted
                            (v :> HTMLMediaElement)
  
  export
  defaultPlaybackRate :  JSType t
                      => {auto 0 _ : Elem HTMLMediaElement (Types t)}
                      -> t
                      -> Attribute True I Double
  defaultPlaybackRate v = fromPrim "HTMLMediaElement.getdefaultPlaybackRate"
                                   prim__defaultPlaybackRate
                                   prim__setDefaultPlaybackRate
                                   (v :> HTMLMediaElement)
  
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
  loop :  JSType t
       => {auto 0 _ : Elem HTMLMediaElement (Types t)}
       -> t
       -> Attribute True I Bool
  loop v = fromPrim "HTMLMediaElement.getloop"
                    prim__loop
                    prim__setLoop
                    (v :> HTMLMediaElement)
  
  export
  muted :  JSType t
        => {auto 0 _ : Elem HTMLMediaElement (Types t)}
        -> t
        -> Attribute True I Bool
  muted v = fromPrim "HTMLMediaElement.getmuted"
                     prim__muted
                     prim__setMuted
                     (v :> HTMLMediaElement)
  
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
  playbackRate :  JSType t
               => {auto 0 _ : Elem HTMLMediaElement (Types t)}
               -> t
               -> Attribute True I Double
  playbackRate v = fromPrim "HTMLMediaElement.getplaybackRate"
                            prim__playbackRate
                            prim__setPlaybackRate
                            (v :> HTMLMediaElement)
  
  export
  played :  JSType t1
         => {auto 0 _ : Elem HTMLMediaElement (Types t1)}
         -> (obj : t1)
         -> JSIO TimeRanges
  played a = primJS $ HTMLMediaElement.prim__played (up a)
  
  export
  preload :  JSType t
          => {auto 0 _ : Elem HTMLMediaElement (Types t)}
          -> t
          -> Attribute True I String
  preload v = fromPrim "HTMLMediaElement.getpreload"
                       prim__preload
                       prim__setPreload
                       (v :> HTMLMediaElement)
  
  export
  preservesPitch :  JSType t
                 => {auto 0 _ : Elem HTMLMediaElement (Types t)}
                 -> t
                 -> Attribute True I Bool
  preservesPitch v = fromPrim "HTMLMediaElement.getpreservesPitch"
                              prim__preservesPitch
                              prim__setPreservesPitch
                              (v :> HTMLMediaElement)
  
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
  src :  JSType t
      => {auto 0 _ : Elem HTMLMediaElement (Types t)}
      -> t
      -> Attribute True I String
  src v = fromPrim "HTMLMediaElement.getsrc"
                   prim__src
                   prim__setSrc
                   (v :> HTMLMediaElement)
  
  export
  srcObject :  JSType t
            => {auto 0 _ : Elem HTMLMediaElement (Types t)}
            -> t
            -> Attribute False Maybe (NS I [ MediaStream , MediaSource , Blob ])
  srcObject v = fromNullablePrim "HTMLMediaElement.getsrcObject"
                                 prim__srcObject
                                 prim__setSrcObject
                                 (v :> HTMLMediaElement)
  
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
  volume :  JSType t
         => {auto 0 _ : Elem HTMLMediaElement (Types t)}
         -> t
         -> Attribute True I Double
  volume v = fromPrim "HTMLMediaElement.getvolume"
                      prim__volume
                      prim__setVolume
                      (v :> HTMLMediaElement)
  
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
  compact :  JSType t
          => {auto 0 _ : Elem HTMLMenuElement (Types t)}
          -> t
          -> Attribute True I Bool
  compact v = fromPrim "HTMLMenuElement.getcompact"
                       prim__compact
                       prim__setCompact
                       (v :> HTMLMenuElement)

namespace HTMLMetaElement
  
  export
  new : JSIO HTMLMetaElement
  new = primJS $ HTMLMetaElement.prim__new 
  
  export
  content :  JSType t
          => {auto 0 _ : Elem HTMLMetaElement (Types t)}
          -> t
          -> Attribute True I String
  content v = fromPrim "HTMLMetaElement.getcontent"
                       prim__content
                       prim__setContent
                       (v :> HTMLMetaElement)
  
  export
  httpEquiv :  JSType t
            => {auto 0 _ : Elem HTMLMetaElement (Types t)}
            -> t
            -> Attribute True I String
  httpEquiv v = fromPrim "HTMLMetaElement.gethttpEquiv"
                         prim__httpEquiv
                         prim__setHttpEquiv
                         (v :> HTMLMetaElement)
  
  export
  name :  JSType t
       => {auto 0 _ : Elem HTMLMetaElement (Types t)}
       -> t
       -> Attribute True I String
  name v = fromPrim "HTMLMetaElement.getname"
                    prim__name
                    prim__setName
                    (v :> HTMLMetaElement)
  
  export
  scheme :  JSType t
         => {auto 0 _ : Elem HTMLMetaElement (Types t)}
         -> t
         -> Attribute True I String
  scheme v = fromPrim "HTMLMetaElement.getscheme"
                      prim__scheme
                      prim__setScheme
                      (v :> HTMLMetaElement)

namespace HTMLMeterElement
  
  export
  new : JSIO HTMLMeterElement
  new = primJS $ HTMLMeterElement.prim__new 
  
  export
  high :  JSType t
       => {auto 0 _ : Elem HTMLMeterElement (Types t)}
       -> t
       -> Attribute True I Double
  high v = fromPrim "HTMLMeterElement.gethigh"
                    prim__high
                    prim__setHigh
                    (v :> HTMLMeterElement)
  
  export
  labels :  JSType t1
         => {auto 0 _ : Elem HTMLMeterElement (Types t1)}
         -> (obj : t1)
         -> JSIO NodeList
  labels a = primJS $ HTMLMeterElement.prim__labels (up a)
  
  export
  low :  JSType t
      => {auto 0 _ : Elem HTMLMeterElement (Types t)}
      -> t
      -> Attribute True I Double
  low v = fromPrim "HTMLMeterElement.getlow"
                   prim__low
                   prim__setLow
                   (v :> HTMLMeterElement)
  
  export
  max :  JSType t
      => {auto 0 _ : Elem HTMLMeterElement (Types t)}
      -> t
      -> Attribute True I Double
  max v = fromPrim "HTMLMeterElement.getmax"
                   prim__max
                   prim__setMax
                   (v :> HTMLMeterElement)
  
  export
  min :  JSType t
      => {auto 0 _ : Elem HTMLMeterElement (Types t)}
      -> t
      -> Attribute True I Double
  min v = fromPrim "HTMLMeterElement.getmin"
                   prim__min
                   prim__setMin
                   (v :> HTMLMeterElement)
  
  export
  optimum :  JSType t
          => {auto 0 _ : Elem HTMLMeterElement (Types t)}
          -> t
          -> Attribute True I Double
  optimum v = fromPrim "HTMLMeterElement.getoptimum"
                       prim__optimum
                       prim__setOptimum
                       (v :> HTMLMeterElement)
  
  export
  value :  JSType t
        => {auto 0 _ : Elem HTMLMeterElement (Types t)}
        -> t
        -> Attribute True I Double
  value v = fromPrim "HTMLMeterElement.getvalue"
                     prim__value
                     prim__setValue
                     (v :> HTMLMeterElement)

namespace HTMLModElement
  
  export
  new : JSIO HTMLModElement
  new = primJS $ HTMLModElement.prim__new 
  
  export
  cite :  JSType t
       => {auto 0 _ : Elem HTMLModElement (Types t)}
       -> t
       -> Attribute True I String
  cite v = fromPrim "HTMLModElement.getcite"
                    prim__cite
                    prim__setCite
                    (v :> HTMLModElement)
  
  export
  dateTime :  JSType t
           => {auto 0 _ : Elem HTMLModElement (Types t)}
           -> t
           -> Attribute True I String
  dateTime v = fromPrim "HTMLModElement.getdateTime"
                        prim__dateTime
                        prim__setDateTime
                        (v :> HTMLModElement)

namespace HTMLOListElement
  
  export
  new : JSIO HTMLOListElement
  new = primJS $ HTMLOListElement.prim__new 
  
  export
  compact :  JSType t
          => {auto 0 _ : Elem HTMLOListElement (Types t)}
          -> t
          -> Attribute True I Bool
  compact v = fromPrim "HTMLOListElement.getcompact"
                       prim__compact
                       prim__setCompact
                       (v :> HTMLOListElement)
  
  export
  reversed :  JSType t
           => {auto 0 _ : Elem HTMLOListElement (Types t)}
           -> t
           -> Attribute True I Bool
  reversed v = fromPrim "HTMLOListElement.getreversed"
                        prim__reversed
                        prim__setReversed
                        (v :> HTMLOListElement)
  
  export
  start :  JSType t
        => {auto 0 _ : Elem HTMLOListElement (Types t)}
        -> t
        -> Attribute True I Int32
  start v = fromPrim "HTMLOListElement.getstart"
                     prim__start
                     prim__setStart
                     (v :> HTMLOListElement)
  
  export
  type :  JSType t
       => {auto 0 _ : Elem HTMLOListElement (Types t)}
       -> t
       -> Attribute True I String
  type v = fromPrim "HTMLOListElement.gettype"
                    prim__type
                    prim__setType
                    (v :> HTMLOListElement)

namespace HTMLObjectElement
  
  export
  new : JSIO HTMLObjectElement
  new = primJS $ HTMLObjectElement.prim__new 
  
  export
  align :  JSType t
        => {auto 0 _ : Elem HTMLObjectElement (Types t)}
        -> t
        -> Attribute True I String
  align v = fromPrim "HTMLObjectElement.getalign"
                     prim__align
                     prim__setAlign
                     (v :> HTMLObjectElement)
  
  export
  archive :  JSType t
          => {auto 0 _ : Elem HTMLObjectElement (Types t)}
          -> t
          -> Attribute True I String
  archive v = fromPrim "HTMLObjectElement.getarchive"
                       prim__archive
                       prim__setArchive
                       (v :> HTMLObjectElement)
  
  export
  border :  JSType t
         => {auto 0 _ : Elem HTMLObjectElement (Types t)}
         -> t
         -> Attribute True I String
  border v = fromPrim "HTMLObjectElement.getborder"
                      prim__border
                      prim__setBorder
                      (v :> HTMLObjectElement)
  
  export
  code :  JSType t
       => {auto 0 _ : Elem HTMLObjectElement (Types t)}
       -> t
       -> Attribute True I String
  code v = fromPrim "HTMLObjectElement.getcode"
                    prim__code
                    prim__setCode
                    (v :> HTMLObjectElement)
  
  export
  codeBase :  JSType t
           => {auto 0 _ : Elem HTMLObjectElement (Types t)}
           -> t
           -> Attribute True I String
  codeBase v = fromPrim "HTMLObjectElement.getcodeBase"
                        prim__codeBase
                        prim__setCodeBase
                        (v :> HTMLObjectElement)
  
  export
  codeType :  JSType t
           => {auto 0 _ : Elem HTMLObjectElement (Types t)}
           -> t
           -> Attribute True I String
  codeType v = fromPrim "HTMLObjectElement.getcodeType"
                        prim__codeType
                        prim__setCodeType
                        (v :> HTMLObjectElement)
  
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
  data_ :  JSType t
        => {auto 0 _ : Elem HTMLObjectElement (Types t)}
        -> t
        -> Attribute True I String
  data_ v = fromPrim "HTMLObjectElement.getdata"
                     prim__data
                     prim__setData
                     (v :> HTMLObjectElement)
  
  export
  declare :  JSType t
          => {auto 0 _ : Elem HTMLObjectElement (Types t)}
          -> t
          -> Attribute True I Bool
  declare v = fromPrim "HTMLObjectElement.getdeclare"
                       prim__declare
                       prim__setDeclare
                       (v :> HTMLObjectElement)
  
  export
  form :  JSType t1
       => {auto 0 _ : Elem HTMLObjectElement (Types t1)}
       -> (obj : t1)
       -> JSIO (Maybe HTMLFormElement)
  form a = tryJS "HTMLObjectElement.form" $ HTMLObjectElement.prim__form (up a)
  
  export
  height :  JSType t
         => {auto 0 _ : Elem HTMLObjectElement (Types t)}
         -> t
         -> Attribute True I String
  height v = fromPrim "HTMLObjectElement.getheight"
                      prim__height
                      prim__setHeight
                      (v :> HTMLObjectElement)
  
  export
  hspace :  JSType t
         => {auto 0 _ : Elem HTMLObjectElement (Types t)}
         -> t
         -> Attribute True I UInt32
  hspace v = fromPrim "HTMLObjectElement.gethspace"
                      prim__hspace
                      prim__setHspace
                      (v :> HTMLObjectElement)
  
  export
  name :  JSType t
       => {auto 0 _ : Elem HTMLObjectElement (Types t)}
       -> t
       -> Attribute True I String
  name v = fromPrim "HTMLObjectElement.getname"
                    prim__name
                    prim__setName
                    (v :> HTMLObjectElement)
  
  export
  standby :  JSType t
          => {auto 0 _ : Elem HTMLObjectElement (Types t)}
          -> t
          -> Attribute True I String
  standby v = fromPrim "HTMLObjectElement.getstandby"
                       prim__standby
                       prim__setStandby
                       (v :> HTMLObjectElement)
  
  export
  type :  JSType t
       => {auto 0 _ : Elem HTMLObjectElement (Types t)}
       -> t
       -> Attribute True I String
  type v = fromPrim "HTMLObjectElement.gettype"
                    prim__type
                    prim__setType
                    (v :> HTMLObjectElement)
  
  export
  useMap :  JSType t
         => {auto 0 _ : Elem HTMLObjectElement (Types t)}
         -> t
         -> Attribute True I String
  useMap v = fromPrim "HTMLObjectElement.getuseMap"
                      prim__useMap
                      prim__setUseMap
                      (v :> HTMLObjectElement)
  
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
  vspace :  JSType t
         => {auto 0 _ : Elem HTMLObjectElement (Types t)}
         -> t
         -> Attribute True I UInt32
  vspace v = fromPrim "HTMLObjectElement.getvspace"
                      prim__vspace
                      prim__setVspace
                      (v :> HTMLObjectElement)
  
  export
  width :  JSType t
        => {auto 0 _ : Elem HTMLObjectElement (Types t)}
        -> t
        -> Attribute True I String
  width v = fromPrim "HTMLObjectElement.getwidth"
                     prim__width
                     prim__setWidth
                     (v :> HTMLObjectElement)
  
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
  disabled :  JSType t
           => {auto 0 _ : Elem HTMLOptGroupElement (Types t)}
           -> t
           -> Attribute True I Bool
  disabled v = fromPrim "HTMLOptGroupElement.getdisabled"
                        prim__disabled
                        prim__setDisabled
                        (v :> HTMLOptGroupElement)
  
  export
  label :  JSType t
        => {auto 0 _ : Elem HTMLOptGroupElement (Types t)}
        -> t
        -> Attribute True I String
  label v = fromPrim "HTMLOptGroupElement.getlabel"
                     prim__label
                     prim__setLabel
                     (v :> HTMLOptGroupElement)

namespace HTMLOptionElement
  
  export
  new : JSIO HTMLOptionElement
  new = primJS $ HTMLOptionElement.prim__new 
  
  export
  defaultSelected :  JSType t
                  => {auto 0 _ : Elem HTMLOptionElement (Types t)}
                  -> t
                  -> Attribute True I Bool
  defaultSelected v = fromPrim "HTMLOptionElement.getdefaultSelected"
                               prim__defaultSelected
                               prim__setDefaultSelected
                               (v :> HTMLOptionElement)
  
  export
  disabled :  JSType t
           => {auto 0 _ : Elem HTMLOptionElement (Types t)}
           -> t
           -> Attribute True I Bool
  disabled v = fromPrim "HTMLOptionElement.getdisabled"
                        prim__disabled
                        prim__setDisabled
                        (v :> HTMLOptionElement)
  
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
  label :  JSType t
        => {auto 0 _ : Elem HTMLOptionElement (Types t)}
        -> t
        -> Attribute True I String
  label v = fromPrim "HTMLOptionElement.getlabel"
                     prim__label
                     prim__setLabel
                     (v :> HTMLOptionElement)
  
  export
  selected :  JSType t
           => {auto 0 _ : Elem HTMLOptionElement (Types t)}
           -> t
           -> Attribute True I Bool
  selected v = fromPrim "HTMLOptionElement.getselected"
                        prim__selected
                        prim__setSelected
                        (v :> HTMLOptionElement)
  
  export
  text :  JSType t
       => {auto 0 _ : Elem HTMLOptionElement (Types t)}
       -> t
       -> Attribute True I String
  text v = fromPrim "HTMLOptionElement.gettext"
                    prim__text
                    prim__setText
                    (v :> HTMLOptionElement)
  
  export
  value :  JSType t
        => {auto 0 _ : Elem HTMLOptionElement (Types t)}
        -> t
        -> Attribute True I String
  value v = fromPrim "HTMLOptionElement.getvalue"
                     prim__value
                     prim__setValue
                     (v :> HTMLOptionElement)

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
  length :  JSType t
         => {auto 0 _ : Elem HTMLOptionsCollection (Types t)}
         -> t
         -> Attribute True I UInt32
  length v = fromPrim "HTMLOptionsCollection.getlength"
                      prim__length
                      prim__setLength
                      (v :> HTMLOptionsCollection)
  
  export
  selectedIndex :  JSType t
                => {auto 0 _ : Elem HTMLOptionsCollection (Types t)}
                -> t
                -> Attribute True I Int32
  selectedIndex v = fromPrim "HTMLOptionsCollection.getselectedIndex"
                             prim__selectedIndex
                             prim__setSelectedIndex
                             (v :> HTMLOptionsCollection)
  
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
  defaultValue :  JSType t
               => {auto 0 _ : Elem HTMLOutputElement (Types t)}
               -> t
               -> Attribute True I String
  defaultValue v = fromPrim "HTMLOutputElement.getdefaultValue"
                            prim__defaultValue
                            prim__setDefaultValue
                            (v :> HTMLOutputElement)
  
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
  name :  JSType t
       => {auto 0 _ : Elem HTMLOutputElement (Types t)}
       -> t
       -> Attribute True I String
  name v = fromPrim "HTMLOutputElement.getname"
                    prim__name
                    prim__setName
                    (v :> HTMLOutputElement)
  
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
  value :  JSType t
        => {auto 0 _ : Elem HTMLOutputElement (Types t)}
        -> t
        -> Attribute True I String
  value v = fromPrim "HTMLOutputElement.getvalue"
                     prim__value
                     prim__setValue
                     (v :> HTMLOutputElement)
  
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
  align :  JSType t
        => {auto 0 _ : Elem HTMLParagraphElement (Types t)}
        -> t
        -> Attribute True I String
  align v = fromPrim "HTMLParagraphElement.getalign"
                     prim__align
                     prim__setAlign
                     (v :> HTMLParagraphElement)

namespace HTMLParamElement
  
  export
  new : JSIO HTMLParamElement
  new = primJS $ HTMLParamElement.prim__new 
  
  export
  name :  JSType t
       => {auto 0 _ : Elem HTMLParamElement (Types t)}
       -> t
       -> Attribute True I String
  name v = fromPrim "HTMLParamElement.getname"
                    prim__name
                    prim__setName
                    (v :> HTMLParamElement)
  
  export
  type :  JSType t
       => {auto 0 _ : Elem HTMLParamElement (Types t)}
       -> t
       -> Attribute True I String
  type v = fromPrim "HTMLParamElement.gettype"
                    prim__type
                    prim__setType
                    (v :> HTMLParamElement)
  
  export
  value :  JSType t
        => {auto 0 _ : Elem HTMLParamElement (Types t)}
        -> t
        -> Attribute True I String
  value v = fromPrim "HTMLParamElement.getvalue"
                     prim__value
                     prim__setValue
                     (v :> HTMLParamElement)
  
  export
  valueType :  JSType t
            => {auto 0 _ : Elem HTMLParamElement (Types t)}
            -> t
            -> Attribute True I String
  valueType v = fromPrim "HTMLParamElement.getvalueType"
                         prim__valueType
                         prim__setValueType
                         (v :> HTMLParamElement)

namespace HTMLPictureElement
  
  export
  new : JSIO HTMLPictureElement
  new = primJS $ HTMLPictureElement.prim__new 

namespace HTMLPreElement
  
  export
  new : JSIO HTMLPreElement
  new = primJS $ HTMLPreElement.prim__new 
  
  export
  width :  JSType t
        => {auto 0 _ : Elem HTMLPreElement (Types t)}
        -> t
        -> Attribute True I Int32
  width v = fromPrim "HTMLPreElement.getwidth"
                     prim__width
                     prim__setWidth
                     (v :> HTMLPreElement)

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
  max :  JSType t
      => {auto 0 _ : Elem HTMLProgressElement (Types t)}
      -> t
      -> Attribute True I Double
  max v = fromPrim "HTMLProgressElement.getmax"
                   prim__max
                   prim__setMax
                   (v :> HTMLProgressElement)
  
  export
  position :  JSType t1
           => {auto 0 _ : Elem HTMLProgressElement (Types t1)}
           -> (obj : t1)
           -> JSIO Double
  position a = primJS $ HTMLProgressElement.prim__position (up a)
  
  export
  value :  JSType t
        => {auto 0 _ : Elem HTMLProgressElement (Types t)}
        -> t
        -> Attribute True I Double
  value v = fromPrim "HTMLProgressElement.getvalue"
                     prim__value
                     prim__setValue
                     (v :> HTMLProgressElement)

namespace HTMLQuoteElement
  
  export
  new : JSIO HTMLQuoteElement
  new = primJS $ HTMLQuoteElement.prim__new 
  
  export
  cite :  JSType t
       => {auto 0 _ : Elem HTMLQuoteElement (Types t)}
       -> t
       -> Attribute True I String
  cite v = fromPrim "HTMLQuoteElement.getcite"
                    prim__cite
                    prim__setCite
                    (v :> HTMLQuoteElement)

namespace HTMLScriptElement
  
  export
  new : JSIO HTMLScriptElement
  new = primJS $ HTMLScriptElement.prim__new 
  
  export
  async :  JSType t
        => {auto 0 _ : Elem HTMLScriptElement (Types t)}
        -> t
        -> Attribute True I Bool
  async v = fromPrim "HTMLScriptElement.getasync"
                     prim__async
                     prim__setAsync
                     (v :> HTMLScriptElement)
  
  export
  charset :  JSType t
          => {auto 0 _ : Elem HTMLScriptElement (Types t)}
          -> t
          -> Attribute True I String
  charset v = fromPrim "HTMLScriptElement.getcharset"
                       prim__charset
                       prim__setCharset
                       (v :> HTMLScriptElement)
  
  export
  crossOrigin :  JSType t
              => {auto 0 _ : Elem HTMLScriptElement (Types t)}
              -> t
              -> Attribute False Maybe String
  crossOrigin v = fromNullablePrim "HTMLScriptElement.getcrossOrigin"
                                   prim__crossOrigin
                                   prim__setCrossOrigin
                                   (v :> HTMLScriptElement)
  
  export
  defer :  JSType t
        => {auto 0 _ : Elem HTMLScriptElement (Types t)}
        -> t
        -> Attribute True I Bool
  defer v = fromPrim "HTMLScriptElement.getdefer"
                     prim__defer
                     prim__setDefer
                     (v :> HTMLScriptElement)
  
  export
  event :  JSType t
        => {auto 0 _ : Elem HTMLScriptElement (Types t)}
        -> t
        -> Attribute True I String
  event v = fromPrim "HTMLScriptElement.getevent"
                     prim__event
                     prim__setEvent
                     (v :> HTMLScriptElement)
  
  export
  htmlFor :  JSType t
          => {auto 0 _ : Elem HTMLScriptElement (Types t)}
          -> t
          -> Attribute True I String
  htmlFor v = fromPrim "HTMLScriptElement.gethtmlFor"
                       prim__htmlFor
                       prim__setHtmlFor
                       (v :> HTMLScriptElement)
  
  export
  integrity :  JSType t
            => {auto 0 _ : Elem HTMLScriptElement (Types t)}
            -> t
            -> Attribute True I String
  integrity v = fromPrim "HTMLScriptElement.getintegrity"
                         prim__integrity
                         prim__setIntegrity
                         (v :> HTMLScriptElement)
  
  export
  noModule :  JSType t
           => {auto 0 _ : Elem HTMLScriptElement (Types t)}
           -> t
           -> Attribute True I Bool
  noModule v = fromPrim "HTMLScriptElement.getnoModule"
                        prim__noModule
                        prim__setNoModule
                        (v :> HTMLScriptElement)
  
  export
  referrerPolicy :  JSType t
                 => {auto 0 _ : Elem HTMLScriptElement (Types t)}
                 -> t
                 -> Attribute True I String
  referrerPolicy v = fromPrim "HTMLScriptElement.getreferrerPolicy"
                              prim__referrerPolicy
                              prim__setReferrerPolicy
                              (v :> HTMLScriptElement)
  
  export
  src :  JSType t
      => {auto 0 _ : Elem HTMLScriptElement (Types t)}
      -> t
      -> Attribute True I String
  src v = fromPrim "HTMLScriptElement.getsrc"
                   prim__src
                   prim__setSrc
                   (v :> HTMLScriptElement)
  
  export
  text :  JSType t
       => {auto 0 _ : Elem HTMLScriptElement (Types t)}
       -> t
       -> Attribute True I String
  text v = fromPrim "HTMLScriptElement.gettext"
                    prim__text
                    prim__setText
                    (v :> HTMLScriptElement)
  
  export
  type :  JSType t
       => {auto 0 _ : Elem HTMLScriptElement (Types t)}
       -> t
       -> Attribute True I String
  type v = fromPrim "HTMLScriptElement.gettype"
                    prim__type
                    prim__setType
                    (v :> HTMLScriptElement)

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
  autocomplete :  JSType t
               => {auto 0 _ : Elem HTMLSelectElement (Types t)}
               -> t
               -> Attribute True I String
  autocomplete v = fromPrim "HTMLSelectElement.getautocomplete"
                            prim__autocomplete
                            prim__setAutocomplete
                            (v :> HTMLSelectElement)
  
  export
  disabled :  JSType t
           => {auto 0 _ : Elem HTMLSelectElement (Types t)}
           -> t
           -> Attribute True I Bool
  disabled v = fromPrim "HTMLSelectElement.getdisabled"
                        prim__disabled
                        prim__setDisabled
                        (v :> HTMLSelectElement)
  
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
  length :  JSType t
         => {auto 0 _ : Elem HTMLSelectElement (Types t)}
         -> t
         -> Attribute True I UInt32
  length v = fromPrim "HTMLSelectElement.getlength"
                      prim__length
                      prim__setLength
                      (v :> HTMLSelectElement)
  
  export
  multiple :  JSType t
           => {auto 0 _ : Elem HTMLSelectElement (Types t)}
           -> t
           -> Attribute True I Bool
  multiple v = fromPrim "HTMLSelectElement.getmultiple"
                        prim__multiple
                        prim__setMultiple
                        (v :> HTMLSelectElement)
  
  export
  name :  JSType t
       => {auto 0 _ : Elem HTMLSelectElement (Types t)}
       -> t
       -> Attribute True I String
  name v = fromPrim "HTMLSelectElement.getname"
                    prim__name
                    prim__setName
                    (v :> HTMLSelectElement)
  
  export
  options :  JSType t1
          => {auto 0 _ : Elem HTMLSelectElement (Types t1)}
          -> (obj : t1)
          -> JSIO HTMLOptionsCollection
  options a = primJS $ HTMLSelectElement.prim__options (up a)
  
  export
  required :  JSType t
           => {auto 0 _ : Elem HTMLSelectElement (Types t)}
           -> t
           -> Attribute True I Bool
  required v = fromPrim "HTMLSelectElement.getrequired"
                        prim__required
                        prim__setRequired
                        (v :> HTMLSelectElement)
  
  export
  selectedIndex :  JSType t
                => {auto 0 _ : Elem HTMLSelectElement (Types t)}
                -> t
                -> Attribute True I Int32
  selectedIndex v = fromPrim "HTMLSelectElement.getselectedIndex"
                             prim__selectedIndex
                             prim__setSelectedIndex
                             (v :> HTMLSelectElement)
  
  export
  selectedOptions :  JSType t1
                  => {auto 0 _ : Elem HTMLSelectElement (Types t1)}
                  -> (obj : t1)
                  -> JSIO HTMLCollection
  selectedOptions a = primJS $ HTMLSelectElement.prim__selectedOptions (up a)
  
  export
  size :  JSType t
       => {auto 0 _ : Elem HTMLSelectElement (Types t)}
       -> t
       -> Attribute True I UInt32
  size v = fromPrim "HTMLSelectElement.getsize"
                    prim__size
                    prim__setSize
                    (v :> HTMLSelectElement)
  
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
  value :  JSType t
        => {auto 0 _ : Elem HTMLSelectElement (Types t)}
        -> t
        -> Attribute True I String
  value v = fromPrim "HTMLSelectElement.getvalue"
                     prim__value
                     prim__setValue
                     (v :> HTMLSelectElement)
  
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
  name :  JSType t
       => {auto 0 _ : Elem HTMLSlotElement (Types t)}
       -> t
       -> Attribute True I String
  name v = fromPrim "HTMLSlotElement.getname"
                    prim__name
                    prim__setName
                    (v :> HTMLSlotElement)
  
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
  height :  JSType t
         => {auto 0 _ : Elem HTMLSourceElement (Types t)}
         -> t
         -> Attribute True I UInt32
  height v = fromPrim "HTMLSourceElement.getheight"
                      prim__height
                      prim__setHeight
                      (v :> HTMLSourceElement)
  
  export
  media :  JSType t
        => {auto 0 _ : Elem HTMLSourceElement (Types t)}
        -> t
        -> Attribute True I String
  media v = fromPrim "HTMLSourceElement.getmedia"
                     prim__media
                     prim__setMedia
                     (v :> HTMLSourceElement)
  
  export
  sizes :  JSType t
        => {auto 0 _ : Elem HTMLSourceElement (Types t)}
        -> t
        -> Attribute True I String
  sizes v = fromPrim "HTMLSourceElement.getsizes"
                     prim__sizes
                     prim__setSizes
                     (v :> HTMLSourceElement)
  
  export
  src :  JSType t
      => {auto 0 _ : Elem HTMLSourceElement (Types t)}
      -> t
      -> Attribute True I String
  src v = fromPrim "HTMLSourceElement.getsrc"
                   prim__src
                   prim__setSrc
                   (v :> HTMLSourceElement)
  
  export
  srcset :  JSType t
         => {auto 0 _ : Elem HTMLSourceElement (Types t)}
         -> t
         -> Attribute True I String
  srcset v = fromPrim "HTMLSourceElement.getsrcset"
                      prim__srcset
                      prim__setSrcset
                      (v :> HTMLSourceElement)
  
  export
  type :  JSType t
       => {auto 0 _ : Elem HTMLSourceElement (Types t)}
       -> t
       -> Attribute True I String
  type v = fromPrim "HTMLSourceElement.gettype"
                    prim__type
                    prim__setType
                    (v :> HTMLSourceElement)
  
  export
  width :  JSType t
        => {auto 0 _ : Elem HTMLSourceElement (Types t)}
        -> t
        -> Attribute True I UInt32
  width v = fromPrim "HTMLSourceElement.getwidth"
                     prim__width
                     prim__setWidth
                     (v :> HTMLSourceElement)

namespace HTMLSpanElement
  
  export
  new : JSIO HTMLSpanElement
  new = primJS $ HTMLSpanElement.prim__new 

namespace HTMLStyleElement
  
  export
  new : JSIO HTMLStyleElement
  new = primJS $ HTMLStyleElement.prim__new 
  
  export
  media :  JSType t
        => {auto 0 _ : Elem HTMLStyleElement (Types t)}
        -> t
        -> Attribute True I String
  media v = fromPrim "HTMLStyleElement.getmedia"
                     prim__media
                     prim__setMedia
                     (v :> HTMLStyleElement)
  
  export
  type :  JSType t
       => {auto 0 _ : Elem HTMLStyleElement (Types t)}
       -> t
       -> Attribute True I String
  type v = fromPrim "HTMLStyleElement.gettype"
                    prim__type
                    prim__setType
                    (v :> HTMLStyleElement)

namespace HTMLTableCaptionElement
  
  export
  new : JSIO HTMLTableCaptionElement
  new = primJS $ HTMLTableCaptionElement.prim__new 
  
  export
  align :  JSType t
        => {auto 0 _ : Elem HTMLTableCaptionElement (Types t)}
        -> t
        -> Attribute True I String
  align v = fromPrim "HTMLTableCaptionElement.getalign"
                     prim__align
                     prim__setAlign
                     (v :> HTMLTableCaptionElement)

namespace HTMLTableCellElement
  
  export
  new : JSIO HTMLTableCellElement
  new = primJS $ HTMLTableCellElement.prim__new 
  
  export
  abbr :  JSType t
       => {auto 0 _ : Elem HTMLTableCellElement (Types t)}
       -> t
       -> Attribute True I String
  abbr v = fromPrim "HTMLTableCellElement.getabbr"
                    prim__abbr
                    prim__setAbbr
                    (v :> HTMLTableCellElement)
  
  export
  align :  JSType t
        => {auto 0 _ : Elem HTMLTableCellElement (Types t)}
        -> t
        -> Attribute True I String
  align v = fromPrim "HTMLTableCellElement.getalign"
                     prim__align
                     prim__setAlign
                     (v :> HTMLTableCellElement)
  
  export
  axis :  JSType t
       => {auto 0 _ : Elem HTMLTableCellElement (Types t)}
       -> t
       -> Attribute True I String
  axis v = fromPrim "HTMLTableCellElement.getaxis"
                    prim__axis
                    prim__setAxis
                    (v :> HTMLTableCellElement)
  
  export
  bgColor :  JSType t
          => {auto 0 _ : Elem HTMLTableCellElement (Types t)}
          -> t
          -> Attribute True I String
  bgColor v = fromPrim "HTMLTableCellElement.getbgColor"
                       prim__bgColor
                       prim__setBgColor
                       (v :> HTMLTableCellElement)
  
  export
  cellIndex :  JSType t1
            => {auto 0 _ : Elem HTMLTableCellElement (Types t1)}
            -> (obj : t1)
            -> JSIO Int32
  cellIndex a = primJS $ HTMLTableCellElement.prim__cellIndex (up a)
  
  export
  ch :  JSType t
     => {auto 0 _ : Elem HTMLTableCellElement (Types t)}
     -> t
     -> Attribute True I String
  ch v = fromPrim "HTMLTableCellElement.getch"
                  prim__ch
                  prim__setCh
                  (v :> HTMLTableCellElement)
  
  export
  chOff :  JSType t
        => {auto 0 _ : Elem HTMLTableCellElement (Types t)}
        -> t
        -> Attribute True I String
  chOff v = fromPrim "HTMLTableCellElement.getchOff"
                     prim__chOff
                     prim__setChOff
                     (v :> HTMLTableCellElement)
  
  export
  colSpan :  JSType t
          => {auto 0 _ : Elem HTMLTableCellElement (Types t)}
          -> t
          -> Attribute True I UInt32
  colSpan v = fromPrim "HTMLTableCellElement.getcolSpan"
                       prim__colSpan
                       prim__setColSpan
                       (v :> HTMLTableCellElement)
  
  export
  headers :  JSType t
          => {auto 0 _ : Elem HTMLTableCellElement (Types t)}
          -> t
          -> Attribute True I String
  headers v = fromPrim "HTMLTableCellElement.getheaders"
                       prim__headers
                       prim__setHeaders
                       (v :> HTMLTableCellElement)
  
  export
  height :  JSType t
         => {auto 0 _ : Elem HTMLTableCellElement (Types t)}
         -> t
         -> Attribute True I String
  height v = fromPrim "HTMLTableCellElement.getheight"
                      prim__height
                      prim__setHeight
                      (v :> HTMLTableCellElement)
  
  export
  noWrap :  JSType t
         => {auto 0 _ : Elem HTMLTableCellElement (Types t)}
         -> t
         -> Attribute True I Bool
  noWrap v = fromPrim "HTMLTableCellElement.getnoWrap"
                      prim__noWrap
                      prim__setNoWrap
                      (v :> HTMLTableCellElement)
  
  export
  rowSpan :  JSType t
          => {auto 0 _ : Elem HTMLTableCellElement (Types t)}
          -> t
          -> Attribute True I UInt32
  rowSpan v = fromPrim "HTMLTableCellElement.getrowSpan"
                       prim__rowSpan
                       prim__setRowSpan
                       (v :> HTMLTableCellElement)
  
  export
  scope :  JSType t
        => {auto 0 _ : Elem HTMLTableCellElement (Types t)}
        -> t
        -> Attribute True I String
  scope v = fromPrim "HTMLTableCellElement.getscope"
                     prim__scope
                     prim__setScope
                     (v :> HTMLTableCellElement)
  
  export
  vAlign :  JSType t
         => {auto 0 _ : Elem HTMLTableCellElement (Types t)}
         -> t
         -> Attribute True I String
  vAlign v = fromPrim "HTMLTableCellElement.getvAlign"
                      prim__vAlign
                      prim__setVAlign
                      (v :> HTMLTableCellElement)
  
  export
  width :  JSType t
        => {auto 0 _ : Elem HTMLTableCellElement (Types t)}
        -> t
        -> Attribute True I String
  width v = fromPrim "HTMLTableCellElement.getwidth"
                     prim__width
                     prim__setWidth
                     (v :> HTMLTableCellElement)

namespace HTMLTableColElement
  
  export
  new : JSIO HTMLTableColElement
  new = primJS $ HTMLTableColElement.prim__new 
  
  export
  align :  JSType t
        => {auto 0 _ : Elem HTMLTableColElement (Types t)}
        -> t
        -> Attribute True I String
  align v = fromPrim "HTMLTableColElement.getalign"
                     prim__align
                     prim__setAlign
                     (v :> HTMLTableColElement)
  
  export
  ch :  JSType t
     => {auto 0 _ : Elem HTMLTableColElement (Types t)}
     -> t
     -> Attribute True I String
  ch v = fromPrim "HTMLTableColElement.getch"
                  prim__ch
                  prim__setCh
                  (v :> HTMLTableColElement)
  
  export
  chOff :  JSType t
        => {auto 0 _ : Elem HTMLTableColElement (Types t)}
        -> t
        -> Attribute True I String
  chOff v = fromPrim "HTMLTableColElement.getchOff"
                     prim__chOff
                     prim__setChOff
                     (v :> HTMLTableColElement)
  
  export
  span :  JSType t
       => {auto 0 _ : Elem HTMLTableColElement (Types t)}
       -> t
       -> Attribute True I UInt32
  span v = fromPrim "HTMLTableColElement.getspan"
                    prim__span
                    prim__setSpan
                    (v :> HTMLTableColElement)
  
  export
  vAlign :  JSType t
         => {auto 0 _ : Elem HTMLTableColElement (Types t)}
         -> t
         -> Attribute True I String
  vAlign v = fromPrim "HTMLTableColElement.getvAlign"
                      prim__vAlign
                      prim__setVAlign
                      (v :> HTMLTableColElement)
  
  export
  width :  JSType t
        => {auto 0 _ : Elem HTMLTableColElement (Types t)}
        -> t
        -> Attribute True I String
  width v = fromPrim "HTMLTableColElement.getwidth"
                     prim__width
                     prim__setWidth
                     (v :> HTMLTableColElement)

namespace HTMLTableElement
  
  export
  new : JSIO HTMLTableElement
  new = primJS $ HTMLTableElement.prim__new 
  
  export
  align :  JSType t
        => {auto 0 _ : Elem HTMLTableElement (Types t)}
        -> t
        -> Attribute True I String
  align v = fromPrim "HTMLTableElement.getalign"
                     prim__align
                     prim__setAlign
                     (v :> HTMLTableElement)
  
  export
  bgColor :  JSType t
          => {auto 0 _ : Elem HTMLTableElement (Types t)}
          -> t
          -> Attribute True I String
  bgColor v = fromPrim "HTMLTableElement.getbgColor"
                       prim__bgColor
                       prim__setBgColor
                       (v :> HTMLTableElement)
  
  export
  border :  JSType t
         => {auto 0 _ : Elem HTMLTableElement (Types t)}
         -> t
         -> Attribute True I String
  border v = fromPrim "HTMLTableElement.getborder"
                      prim__border
                      prim__setBorder
                      (v :> HTMLTableElement)
  
  export
  caption :  JSType t
          => {auto 0 _ : Elem HTMLTableElement (Types t)}
          -> t
          -> Attribute False Maybe HTMLTableCaptionElement
  caption v = fromNullablePrim "HTMLTableElement.getcaption"
                               prim__caption
                               prim__setCaption
                               (v :> HTMLTableElement)
  
  export
  cellPadding :  JSType t
              => {auto 0 _ : Elem HTMLTableElement (Types t)}
              -> t
              -> Attribute True I String
  cellPadding v = fromPrim "HTMLTableElement.getcellPadding"
                           prim__cellPadding
                           prim__setCellPadding
                           (v :> HTMLTableElement)
  
  export
  cellSpacing :  JSType t
              => {auto 0 _ : Elem HTMLTableElement (Types t)}
              -> t
              -> Attribute True I String
  cellSpacing v = fromPrim "HTMLTableElement.getcellSpacing"
                           prim__cellSpacing
                           prim__setCellSpacing
                           (v :> HTMLTableElement)
  
  export
  frame :  JSType t
        => {auto 0 _ : Elem HTMLTableElement (Types t)}
        -> t
        -> Attribute True I String
  frame v = fromPrim "HTMLTableElement.getframe"
                     prim__frame
                     prim__setFrame
                     (v :> HTMLTableElement)
  
  export
  rows :  JSType t1
       => {auto 0 _ : Elem HTMLTableElement (Types t1)}
       -> (obj : t1)
       -> JSIO HTMLCollection
  rows a = primJS $ HTMLTableElement.prim__rows (up a)
  
  export
  rules :  JSType t
        => {auto 0 _ : Elem HTMLTableElement (Types t)}
        -> t
        -> Attribute True I String
  rules v = fromPrim "HTMLTableElement.getrules"
                     prim__rules
                     prim__setRules
                     (v :> HTMLTableElement)
  
  export
  summary :  JSType t
          => {auto 0 _ : Elem HTMLTableElement (Types t)}
          -> t
          -> Attribute True I String
  summary v = fromPrim "HTMLTableElement.getsummary"
                       prim__summary
                       prim__setSummary
                       (v :> HTMLTableElement)
  
  export
  tBodies :  JSType t1
          => {auto 0 _ : Elem HTMLTableElement (Types t1)}
          -> (obj : t1)
          -> JSIO HTMLCollection
  tBodies a = primJS $ HTMLTableElement.prim__tBodies (up a)
  
  export
  tFoot :  JSType t
        => {auto 0 _ : Elem HTMLTableElement (Types t)}
        -> t
        -> Attribute False Maybe HTMLTableSectionElement
  tFoot v = fromNullablePrim "HTMLTableElement.gettFoot"
                             prim__tFoot
                             prim__setTFoot
                             (v :> HTMLTableElement)
  
  export
  tHead :  JSType t
        => {auto 0 _ : Elem HTMLTableElement (Types t)}
        -> t
        -> Attribute False Maybe HTMLTableSectionElement
  tHead v = fromNullablePrim "HTMLTableElement.gettHead"
                             prim__tHead
                             prim__setTHead
                             (v :> HTMLTableElement)
  
  export
  width :  JSType t
        => {auto 0 _ : Elem HTMLTableElement (Types t)}
        -> t
        -> Attribute True I String
  width v = fromPrim "HTMLTableElement.getwidth"
                     prim__width
                     prim__setWidth
                     (v :> HTMLTableElement)
  
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
  align :  JSType t
        => {auto 0 _ : Elem HTMLTableRowElement (Types t)}
        -> t
        -> Attribute True I String
  align v = fromPrim "HTMLTableRowElement.getalign"
                     prim__align
                     prim__setAlign
                     (v :> HTMLTableRowElement)
  
  export
  bgColor :  JSType t
          => {auto 0 _ : Elem HTMLTableRowElement (Types t)}
          -> t
          -> Attribute True I String
  bgColor v = fromPrim "HTMLTableRowElement.getbgColor"
                       prim__bgColor
                       prim__setBgColor
                       (v :> HTMLTableRowElement)
  
  export
  cells :  JSType t1
        => {auto 0 _ : Elem HTMLTableRowElement (Types t1)}
        -> (obj : t1)
        -> JSIO HTMLCollection
  cells a = primJS $ HTMLTableRowElement.prim__cells (up a)
  
  export
  ch :  JSType t
     => {auto 0 _ : Elem HTMLTableRowElement (Types t)}
     -> t
     -> Attribute True I String
  ch v = fromPrim "HTMLTableRowElement.getch"
                  prim__ch
                  prim__setCh
                  (v :> HTMLTableRowElement)
  
  export
  chOff :  JSType t
        => {auto 0 _ : Elem HTMLTableRowElement (Types t)}
        -> t
        -> Attribute True I String
  chOff v = fromPrim "HTMLTableRowElement.getchOff"
                     prim__chOff
                     prim__setChOff
                     (v :> HTMLTableRowElement)
  
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
  vAlign :  JSType t
         => {auto 0 _ : Elem HTMLTableRowElement (Types t)}
         -> t
         -> Attribute True I String
  vAlign v = fromPrim "HTMLTableRowElement.getvAlign"
                      prim__vAlign
                      prim__setVAlign
                      (v :> HTMLTableRowElement)
  
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
  align :  JSType t
        => {auto 0 _ : Elem HTMLTableSectionElement (Types t)}
        -> t
        -> Attribute True I String
  align v = fromPrim "HTMLTableSectionElement.getalign"
                     prim__align
                     prim__setAlign
                     (v :> HTMLTableSectionElement)
  
  export
  ch :  JSType t
     => {auto 0 _ : Elem HTMLTableSectionElement (Types t)}
     -> t
     -> Attribute True I String
  ch v = fromPrim "HTMLTableSectionElement.getch"
                  prim__ch
                  prim__setCh
                  (v :> HTMLTableSectionElement)
  
  export
  chOff :  JSType t
        => {auto 0 _ : Elem HTMLTableSectionElement (Types t)}
        -> t
        -> Attribute True I String
  chOff v = fromPrim "HTMLTableSectionElement.getchOff"
                     prim__chOff
                     prim__setChOff
                     (v :> HTMLTableSectionElement)
  
  export
  rows :  JSType t1
       => {auto 0 _ : Elem HTMLTableSectionElement (Types t1)}
       -> (obj : t1)
       -> JSIO HTMLCollection
  rows a = primJS $ HTMLTableSectionElement.prim__rows (up a)
  
  export
  vAlign :  JSType t
         => {auto 0 _ : Elem HTMLTableSectionElement (Types t)}
         -> t
         -> Attribute True I String
  vAlign v = fromPrim "HTMLTableSectionElement.getvAlign"
                      prim__vAlign
                      prim__setVAlign
                      (v :> HTMLTableSectionElement)
  
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
  autocomplete :  JSType t
               => {auto 0 _ : Elem HTMLTextAreaElement (Types t)}
               -> t
               -> Attribute True I String
  autocomplete v = fromPrim "HTMLTextAreaElement.getautocomplete"
                            prim__autocomplete
                            prim__setAutocomplete
                            (v :> HTMLTextAreaElement)
  
  export
  cols :  JSType t
       => {auto 0 _ : Elem HTMLTextAreaElement (Types t)}
       -> t
       -> Attribute True I UInt32
  cols v = fromPrim "HTMLTextAreaElement.getcols"
                    prim__cols
                    prim__setCols
                    (v :> HTMLTextAreaElement)
  
  export
  defaultValue :  JSType t
               => {auto 0 _ : Elem HTMLTextAreaElement (Types t)}
               -> t
               -> Attribute True I String
  defaultValue v = fromPrim "HTMLTextAreaElement.getdefaultValue"
                            prim__defaultValue
                            prim__setDefaultValue
                            (v :> HTMLTextAreaElement)
  
  export
  dirName :  JSType t
          => {auto 0 _ : Elem HTMLTextAreaElement (Types t)}
          -> t
          -> Attribute True I String
  dirName v = fromPrim "HTMLTextAreaElement.getdirName"
                       prim__dirName
                       prim__setDirName
                       (v :> HTMLTextAreaElement)
  
  export
  disabled :  JSType t
           => {auto 0 _ : Elem HTMLTextAreaElement (Types t)}
           -> t
           -> Attribute True I Bool
  disabled v = fromPrim "HTMLTextAreaElement.getdisabled"
                        prim__disabled
                        prim__setDisabled
                        (v :> HTMLTextAreaElement)
  
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
  maxLength :  JSType t
            => {auto 0 _ : Elem HTMLTextAreaElement (Types t)}
            -> t
            -> Attribute True I Int32
  maxLength v = fromPrim "HTMLTextAreaElement.getmaxLength"
                         prim__maxLength
                         prim__setMaxLength
                         (v :> HTMLTextAreaElement)
  
  export
  minLength :  JSType t
            => {auto 0 _ : Elem HTMLTextAreaElement (Types t)}
            -> t
            -> Attribute True I Int32
  minLength v = fromPrim "HTMLTextAreaElement.getminLength"
                         prim__minLength
                         prim__setMinLength
                         (v :> HTMLTextAreaElement)
  
  export
  name :  JSType t
       => {auto 0 _ : Elem HTMLTextAreaElement (Types t)}
       -> t
       -> Attribute True I String
  name v = fromPrim "HTMLTextAreaElement.getname"
                    prim__name
                    prim__setName
                    (v :> HTMLTextAreaElement)
  
  export
  placeholder :  JSType t
              => {auto 0 _ : Elem HTMLTextAreaElement (Types t)}
              -> t
              -> Attribute True I String
  placeholder v = fromPrim "HTMLTextAreaElement.getplaceholder"
                           prim__placeholder
                           prim__setPlaceholder
                           (v :> HTMLTextAreaElement)
  
  export
  readOnly :  JSType t
           => {auto 0 _ : Elem HTMLTextAreaElement (Types t)}
           -> t
           -> Attribute True I Bool
  readOnly v = fromPrim "HTMLTextAreaElement.getreadOnly"
                        prim__readOnly
                        prim__setReadOnly
                        (v :> HTMLTextAreaElement)
  
  export
  required :  JSType t
           => {auto 0 _ : Elem HTMLTextAreaElement (Types t)}
           -> t
           -> Attribute True I Bool
  required v = fromPrim "HTMLTextAreaElement.getrequired"
                        prim__required
                        prim__setRequired
                        (v :> HTMLTextAreaElement)
  
  export
  rows :  JSType t
       => {auto 0 _ : Elem HTMLTextAreaElement (Types t)}
       -> t
       -> Attribute True I UInt32
  rows v = fromPrim "HTMLTextAreaElement.getrows"
                    prim__rows
                    prim__setRows
                    (v :> HTMLTextAreaElement)
  
  export
  selectionDirection :  JSType t
                     => {auto 0 _ : Elem HTMLTextAreaElement (Types t)}
                     -> t
                     -> Attribute True I String
  selectionDirection v = fromPrim "HTMLTextAreaElement.getselectionDirection"
                                  prim__selectionDirection
                                  prim__setSelectionDirection
                                  (v :> HTMLTextAreaElement)
  
  export
  selectionEnd :  JSType t
               => {auto 0 _ : Elem HTMLTextAreaElement (Types t)}
               -> t
               -> Attribute True I UInt32
  selectionEnd v = fromPrim "HTMLTextAreaElement.getselectionEnd"
                            prim__selectionEnd
                            prim__setSelectionEnd
                            (v :> HTMLTextAreaElement)
  
  export
  selectionStart :  JSType t
                 => {auto 0 _ : Elem HTMLTextAreaElement (Types t)}
                 -> t
                 -> Attribute True I UInt32
  selectionStart v = fromPrim "HTMLTextAreaElement.getselectionStart"
                              prim__selectionStart
                              prim__setSelectionStart
                              (v :> HTMLTextAreaElement)
  
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
  value :  JSType t
        => {auto 0 _ : Elem HTMLTextAreaElement (Types t)}
        -> t
        -> Attribute True I String
  value v = fromPrim "HTMLTextAreaElement.getvalue"
                     prim__value
                     prim__setValue
                     (v :> HTMLTextAreaElement)
  
  export
  willValidate :  JSType t1
               => {auto 0 _ : Elem HTMLTextAreaElement (Types t1)}
               -> (obj : t1)
               -> JSIO Bool
  willValidate a = tryJS "HTMLTextAreaElement.willValidate"
                 $ HTMLTextAreaElement.prim__willValidate (up a)
  
  export
  wrap :  JSType t
       => {auto 0 _ : Elem HTMLTextAreaElement (Types t)}
       -> t
       -> Attribute True I String
  wrap v = fromPrim "HTMLTextAreaElement.getwrap"
                    prim__wrap
                    prim__setWrap
                    (v :> HTMLTextAreaElement)
  
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
  dateTime :  JSType t
           => {auto 0 _ : Elem HTMLTimeElement (Types t)}
           -> t
           -> Attribute True I String
  dateTime v = fromPrim "HTMLTimeElement.getdateTime"
                        prim__dateTime
                        prim__setDateTime
                        (v :> HTMLTimeElement)

namespace HTMLTitleElement
  
  export
  new : JSIO HTMLTitleElement
  new = primJS $ HTMLTitleElement.prim__new 
  
  export
  text :  JSType t
       => {auto 0 _ : Elem HTMLTitleElement (Types t)}
       -> t
       -> Attribute True I String
  text v = fromPrim "HTMLTitleElement.gettext"
                    prim__text
                    prim__setText
                    (v :> HTMLTitleElement)

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
  default_ :  JSType t
           => {auto 0 _ : Elem HTMLTrackElement (Types t)}
           -> t
           -> Attribute True I Bool
  default_ v = fromPrim "HTMLTrackElement.getdefault"
                        prim__default
                        prim__setDefault
                        (v :> HTMLTrackElement)
  
  export
  kind :  JSType t
       => {auto 0 _ : Elem HTMLTrackElement (Types t)}
       -> t
       -> Attribute True I String
  kind v = fromPrim "HTMLTrackElement.getkind"
                    prim__kind
                    prim__setKind
                    (v :> HTMLTrackElement)
  
  export
  label :  JSType t
        => {auto 0 _ : Elem HTMLTrackElement (Types t)}
        -> t
        -> Attribute True I String
  label v = fromPrim "HTMLTrackElement.getlabel"
                     prim__label
                     prim__setLabel
                     (v :> HTMLTrackElement)
  
  export
  readyState :  JSType t1
             => {auto 0 _ : Elem HTMLTrackElement (Types t1)}
             -> (obj : t1)
             -> JSIO UInt16
  readyState a = primJS $ HTMLTrackElement.prim__readyState (up a)
  
  export
  src :  JSType t
      => {auto 0 _ : Elem HTMLTrackElement (Types t)}
      -> t
      -> Attribute True I String
  src v = fromPrim "HTMLTrackElement.getsrc"
                   prim__src
                   prim__setSrc
                   (v :> HTMLTrackElement)
  
  export
  srclang :  JSType t
          => {auto 0 _ : Elem HTMLTrackElement (Types t)}
          -> t
          -> Attribute True I String
  srclang v = fromPrim "HTMLTrackElement.getsrclang"
                       prim__srclang
                       prim__setSrclang
                       (v :> HTMLTrackElement)
  
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
  compact :  JSType t
          => {auto 0 _ : Elem HTMLUListElement (Types t)}
          -> t
          -> Attribute True I Bool
  compact v = fromPrim "HTMLUListElement.getcompact"
                       prim__compact
                       prim__setCompact
                       (v :> HTMLUListElement)
  
  export
  type :  JSType t
       => {auto 0 _ : Elem HTMLUListElement (Types t)}
       -> t
       -> Attribute True I String
  type v = fromPrim "HTMLUListElement.gettype"
                    prim__type
                    prim__setType
                    (v :> HTMLUListElement)


namespace HTMLVideoElement
  
  export
  new : JSIO HTMLVideoElement
  new = primJS $ HTMLVideoElement.prim__new 
  
  export
  height :  JSType t
         => {auto 0 _ : Elem HTMLVideoElement (Types t)}
         -> t
         -> Attribute True I UInt32
  height v = fromPrim "HTMLVideoElement.getheight"
                      prim__height
                      prim__setHeight
                      (v :> HTMLVideoElement)
  
  export
  playsInline :  JSType t
              => {auto 0 _ : Elem HTMLVideoElement (Types t)}
              -> t
              -> Attribute True I Bool
  playsInline v = fromPrim "HTMLVideoElement.getplaysInline"
                           prim__playsInline
                           prim__setPlaysInline
                           (v :> HTMLVideoElement)
  
  export
  poster :  JSType t
         => {auto 0 _ : Elem HTMLVideoElement (Types t)}
         -> t
         -> Attribute True I String
  poster v = fromPrim "HTMLVideoElement.getposter"
                      prim__poster
                      prim__setPoster
                      (v :> HTMLVideoElement)
  
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
  width :  JSType t
        => {auto 0 _ : Elem HTMLVideoElement (Types t)}
        -> t
        -> Attribute True I UInt32
  width v = fromPrim "HTMLVideoElement.getwidth"
                     prim__width
                     prim__setWidth
                     (v :> HTMLVideoElement)

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
  scrollRestoration :  JSType t
                    => {auto 0 _ : Elem History (Types t)}
                    -> t
                    -> Attribute True I ScrollRestoration
  scrollRestoration v = fromPrim "History.getscrollRestoration"
                                 prim__scrollRestoration
                                 prim__setScrollRestoration
                                 (v :> History)
  
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
  hash :  JSType t
       => {auto 0 _ : Elem Location (Types t)}
       -> t
       -> Attribute True I String
  hash v = fromPrim "Location.gethash" prim__hash prim__setHash (v :> Location)
  
  export
  host :  JSType t
       => {auto 0 _ : Elem Location (Types t)}
       -> t
       -> Attribute True I String
  host v = fromPrim "Location.gethost" prim__host prim__setHost (v :> Location)
  
  export
  hostname :  JSType t
           => {auto 0 _ : Elem Location (Types t)}
           -> t
           -> Attribute True I String
  hostname v = fromPrim "Location.gethostname"
                        prim__hostname
                        prim__setHostname
                        (v :> Location)
  
  export
  href :  JSType t
       => {auto 0 _ : Elem Location (Types t)}
       -> t
       -> Attribute True I String
  href v = fromPrim "Location.gethref" prim__href prim__setHref (v :> Location)
  
  export
  origin :  JSType t1
         => {auto 0 _ : Elem Location (Types t1)}
         -> (obj : t1)
         -> JSIO String
  origin a = primJS $ Location.prim__origin (up a)
  
  export
  pathname :  JSType t
           => {auto 0 _ : Elem Location (Types t)}
           -> t
           -> Attribute True I String
  pathname v = fromPrim "Location.getpathname"
                        prim__pathname
                        prim__setPathname
                        (v :> Location)
  
  export
  port :  JSType t
       => {auto 0 _ : Elem Location (Types t)}
       -> t
       -> Attribute True I String
  port v = fromPrim "Location.getport" prim__port prim__setPort (v :> Location)
  
  export
  protocol :  JSType t
           => {auto 0 _ : Elem Location (Types t)}
           -> t
           -> Attribute True I String
  protocol v = fromPrim "Location.getprotocol"
                        prim__protocol
                        prim__setProtocol
                        (v :> Location)
  
  export
  search :  JSType t
         => {auto 0 _ : Elem Location (Types t)}
         -> t
         -> Attribute True I String
  search v = fromPrim "Location.getsearch"
                      prim__search
                      prim__setSearch
                      (v :> Location)
  
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
  onmessage :  JSType t
            => {auto 0 _ : Elem MessagePort (Types t)}
            -> t
            -> Attribute False Maybe EventHandlerNonNull
  onmessage v = fromNullablePrim "MessagePort.getonmessage"
                                 prim__onmessage
                                 prim__setOnmessage
                                 (v :> MessagePort)
  
  export
  onmessageerror :  JSType t
                 => {auto 0 _ : Elem MessagePort (Types t)}
                 -> t
                 -> Attribute False Maybe EventHandlerNonNull
  onmessageerror v = fromNullablePrim "MessagePort.getonmessageerror"
                                      prim__onmessageerror
                                      prim__setOnmessageerror
                                      (v :> MessagePort)
  
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
  height :  JSType t
         => {auto 0 _ : Elem OffscreenCanvas (Types t)}
         -> t
         -> Attribute True I UInt64
  height v = fromPrim "OffscreenCanvas.getheight"
                      prim__height
                      prim__setHeight
                      (v :> OffscreenCanvas)
  
  export
  width :  JSType t
        => {auto 0 _ : Elem OffscreenCanvas (Types t)}
        -> t
        -> Attribute True I UInt64
  width v = fromPrim "OffscreenCanvas.getwidth"
                     prim__width
                     prim__setWidth
                     (v :> OffscreenCanvas)
  
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
  value :  JSType t
        => {auto 0 _ : Elem RadioNodeList (Types t)}
        -> t
        -> Attribute True I String
  value v = fromPrim "RadioNodeList.getvalue"
                     prim__value
                     prim__setValue
                     (v :> RadioNodeList)

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
  onconnect :  JSType t
            => {auto 0 _ : Elem SharedWorkerGlobalScope (Types t)}
            -> t
            -> Attribute False Maybe EventHandlerNonNull
  onconnect v = fromNullablePrim "SharedWorkerGlobalScope.getonconnect"
                                 prim__onconnect
                                 prim__setOnconnect
                                 (v :> SharedWorkerGlobalScope)
  
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
  mode :  JSType t
       => {auto 0 _ : Elem TextTrack (Types t)}
       -> t
       -> Attribute True I TextTrackMode
  mode v = fromPrim "TextTrack.getmode"
                    prim__mode
                    prim__setMode
                    (v :> TextTrack)
  
  export
  oncuechange :  JSType t
              => {auto 0 _ : Elem TextTrack (Types t)}
              -> t
              -> Attribute False Maybe EventHandlerNonNull
  oncuechange v = fromNullablePrim "TextTrack.getoncuechange"
                                   prim__oncuechange
                                   prim__setOncuechange
                                   (v :> TextTrack)
  
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
  endTime :  JSType t
          => {auto 0 _ : Elem TextTrackCue (Types t)}
          -> t
          -> Attribute True I Double
  endTime v = fromPrim "TextTrackCue.getendTime"
                       prim__endTime
                       prim__setEndTime
                       (v :> TextTrackCue)
  
  export
  id :  JSType t
     => {auto 0 _ : Elem TextTrackCue (Types t)}
     -> t
     -> Attribute True I String
  id v = fromPrim "TextTrackCue.getid" prim__id prim__setId (v :> TextTrackCue)
  
  export
  onenter :  JSType t
          => {auto 0 _ : Elem TextTrackCue (Types t)}
          -> t
          -> Attribute False Maybe EventHandlerNonNull
  onenter v = fromNullablePrim "TextTrackCue.getonenter"
                               prim__onenter
                               prim__setOnenter
                               (v :> TextTrackCue)
  
  export
  onexit :  JSType t
         => {auto 0 _ : Elem TextTrackCue (Types t)}
         -> t
         -> Attribute False Maybe EventHandlerNonNull
  onexit v = fromNullablePrim "TextTrackCue.getonexit"
                              prim__onexit
                              prim__setOnexit
                              (v :> TextTrackCue)
  
  export
  pauseOnExit :  JSType t
              => {auto 0 _ : Elem TextTrackCue (Types t)}
              -> t
              -> Attribute True I Bool
  pauseOnExit v = fromPrim "TextTrackCue.getpauseOnExit"
                           prim__pauseOnExit
                           prim__setPauseOnExit
                           (v :> TextTrackCue)
  
  export
  startTime :  JSType t
            => {auto 0 _ : Elem TextTrackCue (Types t)}
            -> t
            -> Attribute True I Double
  startTime v = fromPrim "TextTrackCue.getstartTime"
                         prim__startTime
                         prim__setStartTime
                         (v :> TextTrackCue)
  
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
  onaddtrack :  JSType t
             => {auto 0 _ : Elem TextTrackList (Types t)}
             -> t
             -> Attribute False Maybe EventHandlerNonNull
  onaddtrack v = fromNullablePrim "TextTrackList.getonaddtrack"
                                  prim__onaddtrack
                                  prim__setOnaddtrack
                                  (v :> TextTrackList)
  
  export
  onchange :  JSType t
           => {auto 0 _ : Elem TextTrackList (Types t)}
           -> t
           -> Attribute False Maybe EventHandlerNonNull
  onchange v = fromNullablePrim "TextTrackList.getonchange"
                                prim__onchange
                                prim__setOnchange
                                (v :> TextTrackList)
  
  export
  onremovetrack :  JSType t
                => {auto 0 _ : Elem TextTrackList (Types t)}
                -> t
                -> Attribute False Maybe EventHandlerNonNull
  onremovetrack v = fromNullablePrim "TextTrackList.getonremovetrack"
                                     prim__onremovetrack
                                     prim__setOnremovetrack
                                     (v :> TextTrackList)
  
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
  selected :  JSType t
           => {auto 0 _ : Elem VideoTrack (Types t)}
           -> t
           -> Attribute True I Bool
  selected v = fromPrim "VideoTrack.getselected"
                        prim__selected
                        prim__setSelected
                        (v :> VideoTrack)
  
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
  onaddtrack :  JSType t
             => {auto 0 _ : Elem VideoTrackList (Types t)}
             -> t
             -> Attribute False Maybe EventHandlerNonNull
  onaddtrack v = fromNullablePrim "VideoTrackList.getonaddtrack"
                                  prim__onaddtrack
                                  prim__setOnaddtrack
                                  (v :> VideoTrackList)
  
  export
  onchange :  JSType t
           => {auto 0 _ : Elem VideoTrackList (Types t)}
           -> t
           -> Attribute False Maybe EventHandlerNonNull
  onchange v = fromNullablePrim "VideoTrackList.getonchange"
                                prim__onchange
                                prim__setOnchange
                                (v :> VideoTrackList)
  
  export
  onremovetrack :  JSType t
                => {auto 0 _ : Elem VideoTrackList (Types t)}
                -> t
                -> Attribute False Maybe EventHandlerNonNull
  onremovetrack v = fromNullablePrim "VideoTrackList.getonremovetrack"
                                     prim__onremovetrack
                                     prim__setOnremovetrack
                                     (v :> VideoTrackList)
  
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
  binaryType :  JSType t
             => {auto 0 _ : Elem WebSocket (Types t)}
             -> t
             -> Attribute True I BinaryType
  binaryType v = fromPrim "WebSocket.getbinaryType"
                          prim__binaryType
                          prim__setBinaryType
                          (v :> WebSocket)
  
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
  onclose :  JSType t
          => {auto 0 _ : Elem WebSocket (Types t)}
          -> t
          -> Attribute False Maybe EventHandlerNonNull
  onclose v = fromNullablePrim "WebSocket.getonclose"
                               prim__onclose
                               prim__setOnclose
                               (v :> WebSocket)
  
  export
  onerror :  JSType t
          => {auto 0 _ : Elem WebSocket (Types t)}
          -> t
          -> Attribute False Maybe EventHandlerNonNull
  onerror v = fromNullablePrim "WebSocket.getonerror"
                               prim__onerror
                               prim__setOnerror
                               (v :> WebSocket)
  
  export
  onmessage :  JSType t
            => {auto 0 _ : Elem WebSocket (Types t)}
            -> t
            -> Attribute False Maybe EventHandlerNonNull
  onmessage v = fromNullablePrim "WebSocket.getonmessage"
                                 prim__onmessage
                                 prim__setOnmessage
                                 (v :> WebSocket)
  
  export
  onopen :  JSType t
         => {auto 0 _ : Elem WebSocket (Types t)}
         -> t
         -> Attribute False Maybe EventHandlerNonNull
  onopen v = fromNullablePrim "WebSocket.getonopen"
                              prim__onopen
                              prim__setOnopen
                              (v :> WebSocket)
  
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
  name :  JSType t
       => {auto 0 _ : Elem Window (Types t)}
       -> t
       -> Attribute True I String
  name v = fromPrim "Window.getname" prim__name prim__setName (v :> Window)
  
  export
  navigator :  JSType t1
            => {auto 0 _ : Elem Window (Types t1)}
            -> (obj : t1)
            -> JSIO Navigator
  navigator a = primJS $ Window.prim__navigator (up a)
  
  export
  opener :  JSType t
         => {auto 0 _ : Elem Window (Types t)}
         -> t
         -> Attribute True I Any
  opener v = fromPrim "Window.getopener"
                      prim__opener
                      prim__setOpener
                      (v :> Window)
  
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
  status :  JSType t
         => {auto 0 _ : Elem Window (Types t)}
         -> t
         -> Attribute True I String
  status v = fromPrim "Window.getstatus"
                      prim__status
                      prim__setStatus
                      (v :> Window)
  
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
  onmessage :  JSType t
            => {auto 0 _ : Elem Worker (Types t)}
            -> t
            -> Attribute False Maybe EventHandlerNonNull
  onmessage v = fromNullablePrim "Worker.getonmessage"
                                 prim__onmessage
                                 prim__setOnmessage
                                 (v :> Worker)
  
  export
  onmessageerror :  JSType t
                 => {auto 0 _ : Elem Worker (Types t)}
                 -> t
                 -> Attribute False Maybe EventHandlerNonNull
  onmessageerror v = fromNullablePrim "Worker.getonmessageerror"
                                      prim__onmessageerror
                                      prim__setOnmessageerror
                                      (v :> Worker)
  
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
  onerror :  JSType t
          => {auto 0 _ : Elem WorkerGlobalScope (Types t)}
          -> t
          -> Attribute False Maybe OnErrorEventHandlerNonNull
  onerror v = fromNullablePrim "WorkerGlobalScope.getonerror"
                               prim__onerror
                               prim__setOnerror
                               (v :> WorkerGlobalScope)
  
  export
  onlanguagechange :  JSType t
                   => {auto 0 _ : Elem WorkerGlobalScope (Types t)}
                   -> t
                   -> Attribute False Maybe EventHandlerNonNull
  onlanguagechange v = fromNullablePrim "WorkerGlobalScope.getonlanguagechange"
                                        prim__onlanguagechange
                                        prim__setOnlanguagechange
                                        (v :> WorkerGlobalScope)
  
  export
  onoffline :  JSType t
            => {auto 0 _ : Elem WorkerGlobalScope (Types t)}
            -> t
            -> Attribute False Maybe EventHandlerNonNull
  onoffline v = fromNullablePrim "WorkerGlobalScope.getonoffline"
                                 prim__onoffline
                                 prim__setOnoffline
                                 (v :> WorkerGlobalScope)
  
  export
  ononline :  JSType t
           => {auto 0 _ : Elem WorkerGlobalScope (Types t)}
           -> t
           -> Attribute False Maybe EventHandlerNonNull
  ononline v = fromNullablePrim "WorkerGlobalScope.getononline"
                                prim__ononline
                                prim__setOnonline
                                (v :> WorkerGlobalScope)
  
  export
  onrejectionhandled :  JSType t
                     => {auto 0 _ : Elem WorkerGlobalScope (Types t)}
                     -> t
                     -> Attribute False Maybe EventHandlerNonNull
  onrejectionhandled v = fromNullablePrim "WorkerGlobalScope.getonrejectionhandled"
                                          prim__onrejectionhandled
                                          prim__setOnrejectionhandled
                                          (v :> WorkerGlobalScope)
  
  export
  onunhandledrejection :  JSType t
                       => {auto 0 _ : Elem WorkerGlobalScope (Types t)}
                       -> t
                       -> Attribute False Maybe EventHandlerNonNull
  onunhandledrejection v = fromNullablePrim "WorkerGlobalScope.getonunhandledrejection"
                                            prim__onunhandledrejection
                                            prim__setOnunhandledrejection
                                            (v :> WorkerGlobalScope)
  
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
  ariaAtomic :  JSType t
             => {auto 0 _ : Elem ARIAMixin (Types t)}
             -> t
             -> Attribute True I String
  ariaAtomic v = fromPrim "ARIAMixin.getariaAtomic"
                          prim__ariaAtomic
                          prim__setAriaAtomic
                          (v :> ARIAMixin)
  
  export
  ariaAutoComplete :  JSType t
                   => {auto 0 _ : Elem ARIAMixin (Types t)}
                   -> t
                   -> Attribute True I String
  ariaAutoComplete v = fromPrim "ARIAMixin.getariaAutoComplete"
                                prim__ariaAutoComplete
                                prim__setAriaAutoComplete
                                (v :> ARIAMixin)
  
  export
  ariaBusy :  JSType t
           => {auto 0 _ : Elem ARIAMixin (Types t)}
           -> t
           -> Attribute True I String
  ariaBusy v = fromPrim "ARIAMixin.getariaBusy"
                        prim__ariaBusy
                        prim__setAriaBusy
                        (v :> ARIAMixin)
  
  export
  ariaChecked :  JSType t
              => {auto 0 _ : Elem ARIAMixin (Types t)}
              -> t
              -> Attribute True I String
  ariaChecked v = fromPrim "ARIAMixin.getariaChecked"
                           prim__ariaChecked
                           prim__setAriaChecked
                           (v :> ARIAMixin)
  
  export
  ariaColCount :  JSType t
               => {auto 0 _ : Elem ARIAMixin (Types t)}
               -> t
               -> Attribute True I String
  ariaColCount v = fromPrim "ARIAMixin.getariaColCount"
                            prim__ariaColCount
                            prim__setAriaColCount
                            (v :> ARIAMixin)
  
  export
  ariaColIndex :  JSType t
               => {auto 0 _ : Elem ARIAMixin (Types t)}
               -> t
               -> Attribute True I String
  ariaColIndex v = fromPrim "ARIAMixin.getariaColIndex"
                            prim__ariaColIndex
                            prim__setAriaColIndex
                            (v :> ARIAMixin)
  
  export
  ariaColIndexText :  JSType t
                   => {auto 0 _ : Elem ARIAMixin (Types t)}
                   -> t
                   -> Attribute True I String
  ariaColIndexText v = fromPrim "ARIAMixin.getariaColIndexText"
                                prim__ariaColIndexText
                                prim__setAriaColIndexText
                                (v :> ARIAMixin)
  
  export
  ariaColSpan :  JSType t
              => {auto 0 _ : Elem ARIAMixin (Types t)}
              -> t
              -> Attribute True I String
  ariaColSpan v = fromPrim "ARIAMixin.getariaColSpan"
                           prim__ariaColSpan
                           prim__setAriaColSpan
                           (v :> ARIAMixin)
  
  export
  ariaCurrent :  JSType t
              => {auto 0 _ : Elem ARIAMixin (Types t)}
              -> t
              -> Attribute True I String
  ariaCurrent v = fromPrim "ARIAMixin.getariaCurrent"
                           prim__ariaCurrent
                           prim__setAriaCurrent
                           (v :> ARIAMixin)
  
  export
  ariaDescription :  JSType t
                  => {auto 0 _ : Elem ARIAMixin (Types t)}
                  -> t
                  -> Attribute True I String
  ariaDescription v = fromPrim "ARIAMixin.getariaDescription"
                               prim__ariaDescription
                               prim__setAriaDescription
                               (v :> ARIAMixin)
  
  export
  ariaDisabled :  JSType t
               => {auto 0 _ : Elem ARIAMixin (Types t)}
               -> t
               -> Attribute True I String
  ariaDisabled v = fromPrim "ARIAMixin.getariaDisabled"
                            prim__ariaDisabled
                            prim__setAriaDisabled
                            (v :> ARIAMixin)
  
  export
  ariaExpanded :  JSType t
               => {auto 0 _ : Elem ARIAMixin (Types t)}
               -> t
               -> Attribute True I String
  ariaExpanded v = fromPrim "ARIAMixin.getariaExpanded"
                            prim__ariaExpanded
                            prim__setAriaExpanded
                            (v :> ARIAMixin)
  
  export
  ariaHasPopup :  JSType t
               => {auto 0 _ : Elem ARIAMixin (Types t)}
               -> t
               -> Attribute True I String
  ariaHasPopup v = fromPrim "ARIAMixin.getariaHasPopup"
                            prim__ariaHasPopup
                            prim__setAriaHasPopup
                            (v :> ARIAMixin)
  
  export
  ariaHidden :  JSType t
             => {auto 0 _ : Elem ARIAMixin (Types t)}
             -> t
             -> Attribute True I String
  ariaHidden v = fromPrim "ARIAMixin.getariaHidden"
                          prim__ariaHidden
                          prim__setAriaHidden
                          (v :> ARIAMixin)
  
  export
  ariaInvalid :  JSType t
              => {auto 0 _ : Elem ARIAMixin (Types t)}
              -> t
              -> Attribute True I String
  ariaInvalid v = fromPrim "ARIAMixin.getariaInvalid"
                           prim__ariaInvalid
                           prim__setAriaInvalid
                           (v :> ARIAMixin)
  
  export
  ariaKeyShortcuts :  JSType t
                   => {auto 0 _ : Elem ARIAMixin (Types t)}
                   -> t
                   -> Attribute True I String
  ariaKeyShortcuts v = fromPrim "ARIAMixin.getariaKeyShortcuts"
                                prim__ariaKeyShortcuts
                                prim__setAriaKeyShortcuts
                                (v :> ARIAMixin)
  
  export
  ariaLabel :  JSType t
            => {auto 0 _ : Elem ARIAMixin (Types t)}
            -> t
            -> Attribute True I String
  ariaLabel v = fromPrim "ARIAMixin.getariaLabel"
                         prim__ariaLabel
                         prim__setAriaLabel
                         (v :> ARIAMixin)
  
  export
  ariaLevel :  JSType t
            => {auto 0 _ : Elem ARIAMixin (Types t)}
            -> t
            -> Attribute True I String
  ariaLevel v = fromPrim "ARIAMixin.getariaLevel"
                         prim__ariaLevel
                         prim__setAriaLevel
                         (v :> ARIAMixin)
  
  export
  ariaLive :  JSType t
           => {auto 0 _ : Elem ARIAMixin (Types t)}
           -> t
           -> Attribute True I String
  ariaLive v = fromPrim "ARIAMixin.getariaLive"
                        prim__ariaLive
                        prim__setAriaLive
                        (v :> ARIAMixin)
  
  export
  ariaModal :  JSType t
            => {auto 0 _ : Elem ARIAMixin (Types t)}
            -> t
            -> Attribute True I String
  ariaModal v = fromPrim "ARIAMixin.getariaModal"
                         prim__ariaModal
                         prim__setAriaModal
                         (v :> ARIAMixin)
  
  export
  ariaMultiLine :  JSType t
                => {auto 0 _ : Elem ARIAMixin (Types t)}
                -> t
                -> Attribute True I String
  ariaMultiLine v = fromPrim "ARIAMixin.getariaMultiLine"
                             prim__ariaMultiLine
                             prim__setAriaMultiLine
                             (v :> ARIAMixin)
  
  export
  ariaMultiSelectable :  JSType t
                      => {auto 0 _ : Elem ARIAMixin (Types t)}
                      -> t
                      -> Attribute True I String
  ariaMultiSelectable v = fromPrim "ARIAMixin.getariaMultiSelectable"
                                   prim__ariaMultiSelectable
                                   prim__setAriaMultiSelectable
                                   (v :> ARIAMixin)
  
  export
  ariaOrientation :  JSType t
                  => {auto 0 _ : Elem ARIAMixin (Types t)}
                  -> t
                  -> Attribute True I String
  ariaOrientation v = fromPrim "ARIAMixin.getariaOrientation"
                               prim__ariaOrientation
                               prim__setAriaOrientation
                               (v :> ARIAMixin)
  
  export
  ariaPlaceholder :  JSType t
                  => {auto 0 _ : Elem ARIAMixin (Types t)}
                  -> t
                  -> Attribute True I String
  ariaPlaceholder v = fromPrim "ARIAMixin.getariaPlaceholder"
                               prim__ariaPlaceholder
                               prim__setAriaPlaceholder
                               (v :> ARIAMixin)
  
  export
  ariaPosInSet :  JSType t
               => {auto 0 _ : Elem ARIAMixin (Types t)}
               -> t
               -> Attribute True I String
  ariaPosInSet v = fromPrim "ARIAMixin.getariaPosInSet"
                            prim__ariaPosInSet
                            prim__setAriaPosInSet
                            (v :> ARIAMixin)
  
  export
  ariaPressed :  JSType t
              => {auto 0 _ : Elem ARIAMixin (Types t)}
              -> t
              -> Attribute True I String
  ariaPressed v = fromPrim "ARIAMixin.getariaPressed"
                           prim__ariaPressed
                           prim__setAriaPressed
                           (v :> ARIAMixin)
  
  export
  ariaReadOnly :  JSType t
               => {auto 0 _ : Elem ARIAMixin (Types t)}
               -> t
               -> Attribute True I String
  ariaReadOnly v = fromPrim "ARIAMixin.getariaReadOnly"
                            prim__ariaReadOnly
                            prim__setAriaReadOnly
                            (v :> ARIAMixin)
  
  export
  ariaRequired :  JSType t
               => {auto 0 _ : Elem ARIAMixin (Types t)}
               -> t
               -> Attribute True I String
  ariaRequired v = fromPrim "ARIAMixin.getariaRequired"
                            prim__ariaRequired
                            prim__setAriaRequired
                            (v :> ARIAMixin)
  
  export
  ariaRoleDescription :  JSType t
                      => {auto 0 _ : Elem ARIAMixin (Types t)}
                      -> t
                      -> Attribute True I String
  ariaRoleDescription v = fromPrim "ARIAMixin.getariaRoleDescription"
                                   prim__ariaRoleDescription
                                   prim__setAriaRoleDescription
                                   (v :> ARIAMixin)
  
  export
  ariaRowCount :  JSType t
               => {auto 0 _ : Elem ARIAMixin (Types t)}
               -> t
               -> Attribute True I String
  ariaRowCount v = fromPrim "ARIAMixin.getariaRowCount"
                            prim__ariaRowCount
                            prim__setAriaRowCount
                            (v :> ARIAMixin)
  
  export
  ariaRowIndex :  JSType t
               => {auto 0 _ : Elem ARIAMixin (Types t)}
               -> t
               -> Attribute True I String
  ariaRowIndex v = fromPrim "ARIAMixin.getariaRowIndex"
                            prim__ariaRowIndex
                            prim__setAriaRowIndex
                            (v :> ARIAMixin)
  
  export
  ariaRowIndexText :  JSType t
                   => {auto 0 _ : Elem ARIAMixin (Types t)}
                   -> t
                   -> Attribute True I String
  ariaRowIndexText v = fromPrim "ARIAMixin.getariaRowIndexText"
                                prim__ariaRowIndexText
                                prim__setAriaRowIndexText
                                (v :> ARIAMixin)
  
  export
  ariaRowSpan :  JSType t
              => {auto 0 _ : Elem ARIAMixin (Types t)}
              -> t
              -> Attribute True I String
  ariaRowSpan v = fromPrim "ARIAMixin.getariaRowSpan"
                           prim__ariaRowSpan
                           prim__setAriaRowSpan
                           (v :> ARIAMixin)
  
  export
  ariaSelected :  JSType t
               => {auto 0 _ : Elem ARIAMixin (Types t)}
               -> t
               -> Attribute True I String
  ariaSelected v = fromPrim "ARIAMixin.getariaSelected"
                            prim__ariaSelected
                            prim__setAriaSelected
                            (v :> ARIAMixin)
  
  export
  ariaSetSize :  JSType t
              => {auto 0 _ : Elem ARIAMixin (Types t)}
              -> t
              -> Attribute True I String
  ariaSetSize v = fromPrim "ARIAMixin.getariaSetSize"
                           prim__ariaSetSize
                           prim__setAriaSetSize
                           (v :> ARIAMixin)
  
  export
  ariaSort :  JSType t
           => {auto 0 _ : Elem ARIAMixin (Types t)}
           -> t
           -> Attribute True I String
  ariaSort v = fromPrim "ARIAMixin.getariaSort"
                        prim__ariaSort
                        prim__setAriaSort
                        (v :> ARIAMixin)
  
  export
  ariaValueMax :  JSType t
               => {auto 0 _ : Elem ARIAMixin (Types t)}
               -> t
               -> Attribute True I String
  ariaValueMax v = fromPrim "ARIAMixin.getariaValueMax"
                            prim__ariaValueMax
                            prim__setAriaValueMax
                            (v :> ARIAMixin)
  
  export
  ariaValueMin :  JSType t
               => {auto 0 _ : Elem ARIAMixin (Types t)}
               -> t
               -> Attribute True I String
  ariaValueMin v = fromPrim "ARIAMixin.getariaValueMin"
                            prim__ariaValueMin
                            prim__setAriaValueMin
                            (v :> ARIAMixin)
  
  export
  ariaValueNow :  JSType t
               => {auto 0 _ : Elem ARIAMixin (Types t)}
               -> t
               -> Attribute True I String
  ariaValueNow v = fromPrim "ARIAMixin.getariaValueNow"
                            prim__ariaValueNow
                            prim__setAriaValueNow
                            (v :> ARIAMixin)
  
  export
  ariaValueText :  JSType t
                => {auto 0 _ : Elem ARIAMixin (Types t)}
                -> t
                -> Attribute True I String
  ariaValueText v = fromPrim "ARIAMixin.getariaValueText"
                             prim__ariaValueText
                             prim__setAriaValueText
                             (v :> ARIAMixin)
  
  export
  role :  JSType t
       => {auto 0 _ : Elem ARIAMixin (Types t)}
       -> t
       -> Attribute False Maybe String
  role v = fromNullablePrim "ARIAMixin.getrole"
                            prim__role
                            prim__setRole
                            (v :> ARIAMixin)

namespace AbstractWorker
  
  export
  onerror :  JSType t
          => {auto 0 _ : Elem AbstractWorker (Types t)}
          -> t
          -> Attribute False Maybe EventHandlerNonNull
  onerror v = fromNullablePrim "AbstractWorker.getonerror"
                               prim__onerror
                               prim__setOnerror
                               (v :> AbstractWorker)

namespace CanvasCompositing
  
  export
  globalAlpha :  JSType t
              => {auto 0 _ : Elem CanvasCompositing (Types t)}
              -> t
              -> Attribute True I Double
  globalAlpha v = fromPrim "CanvasCompositing.getglobalAlpha"
                           prim__globalAlpha
                           prim__setGlobalAlpha
                           (v :> CanvasCompositing)
  
  export
  globalCompositeOperation :  JSType t
                           => {auto 0 _ : Elem CanvasCompositing (Types t)}
                           -> t
                           -> Attribute True I String
  globalCompositeOperation v = fromPrim "CanvasCompositing.getglobalCompositeOperation"
                                        prim__globalCompositeOperation
                                        prim__setGlobalCompositeOperation
                                        (v :> CanvasCompositing)

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
  fillStyle :  JSType t
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
  strokeStyle :  JSType t
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
  filter :  JSType t
         => {auto 0 _ : Elem CanvasFilters (Types t)}
         -> t
         -> Attribute True I String
  filter v = fromPrim "CanvasFilters.getfilter"
                      prim__filter
                      prim__setFilter
                      (v :> CanvasFilters)

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
  imageSmoothingEnabled :  JSType t
                        => {auto 0 _ : Elem CanvasImageSmoothing (Types t)}
                        -> t
                        -> Attribute True I Bool
  imageSmoothingEnabled v = fromPrim "CanvasImageSmoothing.getimageSmoothingEnabled"
                                     prim__imageSmoothingEnabled
                                     prim__setImageSmoothingEnabled
                                     (v :> CanvasImageSmoothing)
  
  export
  imageSmoothingQuality :  JSType t
                        => {auto 0 _ : Elem CanvasImageSmoothing (Types t)}
                        -> t
                        -> Attribute True I ImageSmoothingQuality
  imageSmoothingQuality v = fromPrim "CanvasImageSmoothing.getimageSmoothingQuality"
                                     prim__imageSmoothingQuality
                                     prim__setImageSmoothingQuality
                                     (v :> CanvasImageSmoothing)

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
  lineCap :  JSType t
          => {auto 0 _ : Elem CanvasPathDrawingStyles (Types t)}
          -> t
          -> Attribute True I CanvasLineCap
  lineCap v = fromPrim "CanvasPathDrawingStyles.getlineCap"
                       prim__lineCap
                       prim__setLineCap
                       (v :> CanvasPathDrawingStyles)
  
  export
  lineDashOffset :  JSType t
                 => {auto 0 _ : Elem CanvasPathDrawingStyles (Types t)}
                 -> t
                 -> Attribute True I Double
  lineDashOffset v = fromPrim "CanvasPathDrawingStyles.getlineDashOffset"
                              prim__lineDashOffset
                              prim__setLineDashOffset
                              (v :> CanvasPathDrawingStyles)
  
  export
  lineJoin :  JSType t
           => {auto 0 _ : Elem CanvasPathDrawingStyles (Types t)}
           -> t
           -> Attribute True I CanvasLineJoin
  lineJoin v = fromPrim "CanvasPathDrawingStyles.getlineJoin"
                        prim__lineJoin
                        prim__setLineJoin
                        (v :> CanvasPathDrawingStyles)
  
  export
  lineWidth :  JSType t
            => {auto 0 _ : Elem CanvasPathDrawingStyles (Types t)}
            -> t
            -> Attribute True I Double
  lineWidth v = fromPrim "CanvasPathDrawingStyles.getlineWidth"
                         prim__lineWidth
                         prim__setLineWidth
                         (v :> CanvasPathDrawingStyles)
  
  export
  miterLimit :  JSType t
             => {auto 0 _ : Elem CanvasPathDrawingStyles (Types t)}
             -> t
             -> Attribute True I Double
  miterLimit v = fromPrim "CanvasPathDrawingStyles.getmiterLimit"
                          prim__miterLimit
                          prim__setMiterLimit
                          (v :> CanvasPathDrawingStyles)
  
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
  shadowBlur :  JSType t
             => {auto 0 _ : Elem CanvasShadowStyles (Types t)}
             -> t
             -> Attribute True I Double
  shadowBlur v = fromPrim "CanvasShadowStyles.getshadowBlur"
                          prim__shadowBlur
                          prim__setShadowBlur
                          (v :> CanvasShadowStyles)
  
  export
  shadowColor :  JSType t
              => {auto 0 _ : Elem CanvasShadowStyles (Types t)}
              -> t
              -> Attribute True I String
  shadowColor v = fromPrim "CanvasShadowStyles.getshadowColor"
                           prim__shadowColor
                           prim__setShadowColor
                           (v :> CanvasShadowStyles)
  
  export
  shadowOffsetX :  JSType t
                => {auto 0 _ : Elem CanvasShadowStyles (Types t)}
                -> t
                -> Attribute True I Double
  shadowOffsetX v = fromPrim "CanvasShadowStyles.getshadowOffsetX"
                             prim__shadowOffsetX
                             prim__setShadowOffsetX
                             (v :> CanvasShadowStyles)
  
  export
  shadowOffsetY :  JSType t
                => {auto 0 _ : Elem CanvasShadowStyles (Types t)}
                -> t
                -> Attribute True I Double
  shadowOffsetY v = fromPrim "CanvasShadowStyles.getshadowOffsetY"
                             prim__shadowOffsetY
                             prim__setShadowOffsetY
                             (v :> CanvasShadowStyles)

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
  direction :  JSType t
            => {auto 0 _ : Elem CanvasTextDrawingStyles (Types t)}
            -> t
            -> Attribute True I CanvasDirection
  direction v = fromPrim "CanvasTextDrawingStyles.getdirection"
                         prim__direction
                         prim__setDirection
                         (v :> CanvasTextDrawingStyles)
  
  export
  font :  JSType t
       => {auto 0 _ : Elem CanvasTextDrawingStyles (Types t)}
       -> t
       -> Attribute True I String
  font v = fromPrim "CanvasTextDrawingStyles.getfont"
                    prim__font
                    prim__setFont
                    (v :> CanvasTextDrawingStyles)
  
  export
  textAlign :  JSType t
            => {auto 0 _ : Elem CanvasTextDrawingStyles (Types t)}
            -> t
            -> Attribute True I CanvasTextAlign
  textAlign v = fromPrim "CanvasTextDrawingStyles.gettextAlign"
                         prim__textAlign
                         prim__setTextAlign
                         (v :> CanvasTextDrawingStyles)
  
  export
  textBaseline :  JSType t
               => {auto 0 _ : Elem CanvasTextDrawingStyles (Types t)}
               -> t
               -> Attribute True I CanvasTextBaseline
  textBaseline v = fromPrim "CanvasTextDrawingStyles.gettextBaseline"
                            prim__textBaseline
                            prim__setTextBaseline
                            (v :> CanvasTextDrawingStyles)

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
  oncopy :  JSType t
         => {auto 0 _ : Elem DocumentAndElementEventHandlers (Types t)}
         -> t
         -> Attribute False Maybe EventHandlerNonNull
  oncopy v = fromNullablePrim "DocumentAndElementEventHandlers.getoncopy"
                              prim__oncopy
                              prim__setOncopy
                              (v :> DocumentAndElementEventHandlers)
  
  export
  oncut :  JSType t
        => {auto 0 _ : Elem DocumentAndElementEventHandlers (Types t)}
        -> t
        -> Attribute False Maybe EventHandlerNonNull
  oncut v = fromNullablePrim "DocumentAndElementEventHandlers.getoncut"
                             prim__oncut
                             prim__setOncut
                             (v :> DocumentAndElementEventHandlers)
  
  export
  onpaste :  JSType t
          => {auto 0 _ : Elem DocumentAndElementEventHandlers (Types t)}
          -> t
          -> Attribute False Maybe EventHandlerNonNull
  onpaste v = fromNullablePrim "DocumentAndElementEventHandlers.getonpaste"
                               prim__onpaste
                               prim__setOnpaste
                               (v :> DocumentAndElementEventHandlers)

namespace ElementContentEditable
  
  export
  contentEditable :  JSType t
                  => {auto 0 _ : Elem ElementContentEditable (Types t)}
                  -> t
                  -> Attribute True I String
  contentEditable v = fromPrim "ElementContentEditable.getcontentEditable"
                               prim__contentEditable
                               prim__setContentEditable
                               (v :> ElementContentEditable)
  
  export
  enterKeyHint :  JSType t
               => {auto 0 _ : Elem ElementContentEditable (Types t)}
               -> t
               -> Attribute True I String
  enterKeyHint v = fromPrim "ElementContentEditable.getenterKeyHint"
                            prim__enterKeyHint
                            prim__setEnterKeyHint
                            (v :> ElementContentEditable)
  
  export
  inputMode :  JSType t
            => {auto 0 _ : Elem ElementContentEditable (Types t)}
            -> t
            -> Attribute True I String
  inputMode v = fromPrim "ElementContentEditable.getinputMode"
                         prim__inputMode
                         prim__setInputMode
                         (v :> ElementContentEditable)
  
  export
  isContentEditable : (obj : ElementContentEditable) -> JSIO Bool
  isContentEditable a = tryJS "ElementContentEditable.isContentEditable"
                      $ ElementContentEditable.prim__isContentEditable a

namespace GlobalEventHandlers
  
  export
  onabort :  JSType t
          => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
          -> t
          -> Attribute False Maybe EventHandlerNonNull
  onabort v = fromNullablePrim "GlobalEventHandlers.getonabort"
                               prim__onabort
                               prim__setOnabort
                               (v :> GlobalEventHandlers)
  
  export
  onauxclick :  JSType t
             => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
             -> t
             -> Attribute False Maybe EventHandlerNonNull
  onauxclick v = fromNullablePrim "GlobalEventHandlers.getonauxclick"
                                  prim__onauxclick
                                  prim__setOnauxclick
                                  (v :> GlobalEventHandlers)
  
  export
  onblur :  JSType t
         => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
         -> t
         -> Attribute False Maybe EventHandlerNonNull
  onblur v = fromNullablePrim "GlobalEventHandlers.getonblur"
                              prim__onblur
                              prim__setOnblur
                              (v :> GlobalEventHandlers)
  
  export
  oncancel :  JSType t
           => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
           -> t
           -> Attribute False Maybe EventHandlerNonNull
  oncancel v = fromNullablePrim "GlobalEventHandlers.getoncancel"
                                prim__oncancel
                                prim__setOncancel
                                (v :> GlobalEventHandlers)
  
  export
  oncanplay :  JSType t
            => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
            -> t
            -> Attribute False Maybe EventHandlerNonNull
  oncanplay v = fromNullablePrim "GlobalEventHandlers.getoncanplay"
                                 prim__oncanplay
                                 prim__setOncanplay
                                 (v :> GlobalEventHandlers)
  
  export
  oncanplaythrough :  JSType t
                   => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
                   -> t
                   -> Attribute False Maybe EventHandlerNonNull
  oncanplaythrough v = fromNullablePrim "GlobalEventHandlers.getoncanplaythrough"
                                        prim__oncanplaythrough
                                        prim__setOncanplaythrough
                                        (v :> GlobalEventHandlers)
  
  export
  onchange :  JSType t
           => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
           -> t
           -> Attribute False Maybe EventHandlerNonNull
  onchange v = fromNullablePrim "GlobalEventHandlers.getonchange"
                                prim__onchange
                                prim__setOnchange
                                (v :> GlobalEventHandlers)
  
  export
  onclick :  JSType t
          => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
          -> t
          -> Attribute False Maybe EventHandlerNonNull
  onclick v = fromNullablePrim "GlobalEventHandlers.getonclick"
                               prim__onclick
                               prim__setOnclick
                               (v :> GlobalEventHandlers)
  
  export
  onclose :  JSType t
          => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
          -> t
          -> Attribute False Maybe EventHandlerNonNull
  onclose v = fromNullablePrim "GlobalEventHandlers.getonclose"
                               prim__onclose
                               prim__setOnclose
                               (v :> GlobalEventHandlers)
  
  export
  oncontextmenu :  JSType t
                => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
                -> t
                -> Attribute False Maybe EventHandlerNonNull
  oncontextmenu v = fromNullablePrim "GlobalEventHandlers.getoncontextmenu"
                                     prim__oncontextmenu
                                     prim__setOncontextmenu
                                     (v :> GlobalEventHandlers)
  
  export
  oncuechange :  JSType t
              => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
              -> t
              -> Attribute False Maybe EventHandlerNonNull
  oncuechange v = fromNullablePrim "GlobalEventHandlers.getoncuechange"
                                   prim__oncuechange
                                   prim__setOncuechange
                                   (v :> GlobalEventHandlers)
  
  export
  ondblclick :  JSType t
             => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
             -> t
             -> Attribute False Maybe EventHandlerNonNull
  ondblclick v = fromNullablePrim "GlobalEventHandlers.getondblclick"
                                  prim__ondblclick
                                  prim__setOndblclick
                                  (v :> GlobalEventHandlers)
  
  export
  ondrag :  JSType t
         => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
         -> t
         -> Attribute False Maybe EventHandlerNonNull
  ondrag v = fromNullablePrim "GlobalEventHandlers.getondrag"
                              prim__ondrag
                              prim__setOndrag
                              (v :> GlobalEventHandlers)
  
  export
  ondragend :  JSType t
            => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
            -> t
            -> Attribute False Maybe EventHandlerNonNull
  ondragend v = fromNullablePrim "GlobalEventHandlers.getondragend"
                                 prim__ondragend
                                 prim__setOndragend
                                 (v :> GlobalEventHandlers)
  
  export
  ondragenter :  JSType t
              => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
              -> t
              -> Attribute False Maybe EventHandlerNonNull
  ondragenter v = fromNullablePrim "GlobalEventHandlers.getondragenter"
                                   prim__ondragenter
                                   prim__setOndragenter
                                   (v :> GlobalEventHandlers)
  
  export
  ondragleave :  JSType t
              => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
              -> t
              -> Attribute False Maybe EventHandlerNonNull
  ondragleave v = fromNullablePrim "GlobalEventHandlers.getondragleave"
                                   prim__ondragleave
                                   prim__setOndragleave
                                   (v :> GlobalEventHandlers)
  
  export
  ondragover :  JSType t
             => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
             -> t
             -> Attribute False Maybe EventHandlerNonNull
  ondragover v = fromNullablePrim "GlobalEventHandlers.getondragover"
                                  prim__ondragover
                                  prim__setOndragover
                                  (v :> GlobalEventHandlers)
  
  export
  ondragstart :  JSType t
              => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
              -> t
              -> Attribute False Maybe EventHandlerNonNull
  ondragstart v = fromNullablePrim "GlobalEventHandlers.getondragstart"
                                   prim__ondragstart
                                   prim__setOndragstart
                                   (v :> GlobalEventHandlers)
  
  export
  ondrop :  JSType t
         => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
         -> t
         -> Attribute False Maybe EventHandlerNonNull
  ondrop v = fromNullablePrim "GlobalEventHandlers.getondrop"
                              prim__ondrop
                              prim__setOndrop
                              (v :> GlobalEventHandlers)
  
  export
  ondurationchange :  JSType t
                   => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
                   -> t
                   -> Attribute False Maybe EventHandlerNonNull
  ondurationchange v = fromNullablePrim "GlobalEventHandlers.getondurationchange"
                                        prim__ondurationchange
                                        prim__setOndurationchange
                                        (v :> GlobalEventHandlers)
  
  export
  onemptied :  JSType t
            => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
            -> t
            -> Attribute False Maybe EventHandlerNonNull
  onemptied v = fromNullablePrim "GlobalEventHandlers.getonemptied"
                                 prim__onemptied
                                 prim__setOnemptied
                                 (v :> GlobalEventHandlers)
  
  export
  onended :  JSType t
          => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
          -> t
          -> Attribute False Maybe EventHandlerNonNull
  onended v = fromNullablePrim "GlobalEventHandlers.getonended"
                               prim__onended
                               prim__setOnended
                               (v :> GlobalEventHandlers)
  
  export
  onerror :  JSType t
          => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
          -> t
          -> Attribute False Maybe OnErrorEventHandlerNonNull
  onerror v = fromNullablePrim "GlobalEventHandlers.getonerror"
                               prim__onerror
                               prim__setOnerror
                               (v :> GlobalEventHandlers)
  
  export
  onfocus :  JSType t
          => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
          -> t
          -> Attribute False Maybe EventHandlerNonNull
  onfocus v = fromNullablePrim "GlobalEventHandlers.getonfocus"
                               prim__onfocus
                               prim__setOnfocus
                               (v :> GlobalEventHandlers)
  
  export
  onformdata :  JSType t
             => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
             -> t
             -> Attribute False Maybe EventHandlerNonNull
  onformdata v = fromNullablePrim "GlobalEventHandlers.getonformdata"
                                  prim__onformdata
                                  prim__setOnformdata
                                  (v :> GlobalEventHandlers)
  
  export
  oninput :  JSType t
          => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
          -> t
          -> Attribute False Maybe EventHandlerNonNull
  oninput v = fromNullablePrim "GlobalEventHandlers.getoninput"
                               prim__oninput
                               prim__setOninput
                               (v :> GlobalEventHandlers)
  
  export
  oninvalid :  JSType t
            => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
            -> t
            -> Attribute False Maybe EventHandlerNonNull
  oninvalid v = fromNullablePrim "GlobalEventHandlers.getoninvalid"
                                 prim__oninvalid
                                 prim__setOninvalid
                                 (v :> GlobalEventHandlers)
  
  export
  onkeydown :  JSType t
            => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
            -> t
            -> Attribute False Maybe EventHandlerNonNull
  onkeydown v = fromNullablePrim "GlobalEventHandlers.getonkeydown"
                                 prim__onkeydown
                                 prim__setOnkeydown
                                 (v :> GlobalEventHandlers)
  
  export
  onkeypress :  JSType t
             => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
             -> t
             -> Attribute False Maybe EventHandlerNonNull
  onkeypress v = fromNullablePrim "GlobalEventHandlers.getonkeypress"
                                  prim__onkeypress
                                  prim__setOnkeypress
                                  (v :> GlobalEventHandlers)
  
  export
  onkeyup :  JSType t
          => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
          -> t
          -> Attribute False Maybe EventHandlerNonNull
  onkeyup v = fromNullablePrim "GlobalEventHandlers.getonkeyup"
                               prim__onkeyup
                               prim__setOnkeyup
                               (v :> GlobalEventHandlers)
  
  export
  onload :  JSType t
         => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
         -> t
         -> Attribute False Maybe EventHandlerNonNull
  onload v = fromNullablePrim "GlobalEventHandlers.getonload"
                              prim__onload
                              prim__setOnload
                              (v :> GlobalEventHandlers)
  
  export
  onloadeddata :  JSType t
               => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
               -> t
               -> Attribute False Maybe EventHandlerNonNull
  onloadeddata v = fromNullablePrim "GlobalEventHandlers.getonloadeddata"
                                    prim__onloadeddata
                                    prim__setOnloadeddata
                                    (v :> GlobalEventHandlers)
  
  export
  onloadedmetadata :  JSType t
                   => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
                   -> t
                   -> Attribute False Maybe EventHandlerNonNull
  onloadedmetadata v = fromNullablePrim "GlobalEventHandlers.getonloadedmetadata"
                                        prim__onloadedmetadata
                                        prim__setOnloadedmetadata
                                        (v :> GlobalEventHandlers)
  
  export
  onloadstart :  JSType t
              => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
              -> t
              -> Attribute False Maybe EventHandlerNonNull
  onloadstart v = fromNullablePrim "GlobalEventHandlers.getonloadstart"
                                   prim__onloadstart
                                   prim__setOnloadstart
                                   (v :> GlobalEventHandlers)
  
  export
  onmousedown :  JSType t
              => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
              -> t
              -> Attribute False Maybe EventHandlerNonNull
  onmousedown v = fromNullablePrim "GlobalEventHandlers.getonmousedown"
                                   prim__onmousedown
                                   prim__setOnmousedown
                                   (v :> GlobalEventHandlers)
  
  export
  onmouseenter :  JSType t
               => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
               -> t
               -> Attribute False Maybe EventHandlerNonNull
  onmouseenter v = fromNullablePrim "GlobalEventHandlers.getonmouseenter"
                                    prim__onmouseenter
                                    prim__setOnmouseenter
                                    (v :> GlobalEventHandlers)
  
  export
  onmouseleave :  JSType t
               => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
               -> t
               -> Attribute False Maybe EventHandlerNonNull
  onmouseleave v = fromNullablePrim "GlobalEventHandlers.getonmouseleave"
                                    prim__onmouseleave
                                    prim__setOnmouseleave
                                    (v :> GlobalEventHandlers)
  
  export
  onmousemove :  JSType t
              => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
              -> t
              -> Attribute False Maybe EventHandlerNonNull
  onmousemove v = fromNullablePrim "GlobalEventHandlers.getonmousemove"
                                   prim__onmousemove
                                   prim__setOnmousemove
                                   (v :> GlobalEventHandlers)
  
  export
  onmouseout :  JSType t
             => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
             -> t
             -> Attribute False Maybe EventHandlerNonNull
  onmouseout v = fromNullablePrim "GlobalEventHandlers.getonmouseout"
                                  prim__onmouseout
                                  prim__setOnmouseout
                                  (v :> GlobalEventHandlers)
  
  export
  onmouseover :  JSType t
              => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
              -> t
              -> Attribute False Maybe EventHandlerNonNull
  onmouseover v = fromNullablePrim "GlobalEventHandlers.getonmouseover"
                                   prim__onmouseover
                                   prim__setOnmouseover
                                   (v :> GlobalEventHandlers)
  
  export
  onmouseup :  JSType t
            => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
            -> t
            -> Attribute False Maybe EventHandlerNonNull
  onmouseup v = fromNullablePrim "GlobalEventHandlers.getonmouseup"
                                 prim__onmouseup
                                 prim__setOnmouseup
                                 (v :> GlobalEventHandlers)
  
  export
  onpause :  JSType t
          => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
          -> t
          -> Attribute False Maybe EventHandlerNonNull
  onpause v = fromNullablePrim "GlobalEventHandlers.getonpause"
                               prim__onpause
                               prim__setOnpause
                               (v :> GlobalEventHandlers)
  
  export
  onplay :  JSType t
         => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
         -> t
         -> Attribute False Maybe EventHandlerNonNull
  onplay v = fromNullablePrim "GlobalEventHandlers.getonplay"
                              prim__onplay
                              prim__setOnplay
                              (v :> GlobalEventHandlers)
  
  export
  onplaying :  JSType t
            => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
            -> t
            -> Attribute False Maybe EventHandlerNonNull
  onplaying v = fromNullablePrim "GlobalEventHandlers.getonplaying"
                                 prim__onplaying
                                 prim__setOnplaying
                                 (v :> GlobalEventHandlers)
  
  export
  onprogress :  JSType t
             => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
             -> t
             -> Attribute False Maybe EventHandlerNonNull
  onprogress v = fromNullablePrim "GlobalEventHandlers.getonprogress"
                                  prim__onprogress
                                  prim__setOnprogress
                                  (v :> GlobalEventHandlers)
  
  export
  onratechange :  JSType t
               => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
               -> t
               -> Attribute False Maybe EventHandlerNonNull
  onratechange v = fromNullablePrim "GlobalEventHandlers.getonratechange"
                                    prim__onratechange
                                    prim__setOnratechange
                                    (v :> GlobalEventHandlers)
  
  export
  onreset :  JSType t
          => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
          -> t
          -> Attribute False Maybe EventHandlerNonNull
  onreset v = fromNullablePrim "GlobalEventHandlers.getonreset"
                               prim__onreset
                               prim__setOnreset
                               (v :> GlobalEventHandlers)
  
  export
  onresize :  JSType t
           => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
           -> t
           -> Attribute False Maybe EventHandlerNonNull
  onresize v = fromNullablePrim "GlobalEventHandlers.getonresize"
                                prim__onresize
                                prim__setOnresize
                                (v :> GlobalEventHandlers)
  
  export
  onscroll :  JSType t
           => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
           -> t
           -> Attribute False Maybe EventHandlerNonNull
  onscroll v = fromNullablePrim "GlobalEventHandlers.getonscroll"
                                prim__onscroll
                                prim__setOnscroll
                                (v :> GlobalEventHandlers)
  
  export
  onsecuritypolicyviolation :  JSType t
                            => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
                            -> t
                            -> Attribute False Maybe EventHandlerNonNull
  onsecuritypolicyviolation v = fromNullablePrim "GlobalEventHandlers.getonsecuritypolicyviolation"
                                                 prim__onsecuritypolicyviolation
                                                 prim__setOnsecuritypolicyviolation
                                                 (v :> GlobalEventHandlers)
  
  export
  onseeked :  JSType t
           => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
           -> t
           -> Attribute False Maybe EventHandlerNonNull
  onseeked v = fromNullablePrim "GlobalEventHandlers.getonseeked"
                                prim__onseeked
                                prim__setOnseeked
                                (v :> GlobalEventHandlers)
  
  export
  onseeking :  JSType t
            => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
            -> t
            -> Attribute False Maybe EventHandlerNonNull
  onseeking v = fromNullablePrim "GlobalEventHandlers.getonseeking"
                                 prim__onseeking
                                 prim__setOnseeking
                                 (v :> GlobalEventHandlers)
  
  export
  onselect :  JSType t
           => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
           -> t
           -> Attribute False Maybe EventHandlerNonNull
  onselect v = fromNullablePrim "GlobalEventHandlers.getonselect"
                                prim__onselect
                                prim__setOnselect
                                (v :> GlobalEventHandlers)
  
  export
  onslotchange :  JSType t
               => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
               -> t
               -> Attribute False Maybe EventHandlerNonNull
  onslotchange v = fromNullablePrim "GlobalEventHandlers.getonslotchange"
                                    prim__onslotchange
                                    prim__setOnslotchange
                                    (v :> GlobalEventHandlers)
  
  export
  onstalled :  JSType t
            => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
            -> t
            -> Attribute False Maybe EventHandlerNonNull
  onstalled v = fromNullablePrim "GlobalEventHandlers.getonstalled"
                                 prim__onstalled
                                 prim__setOnstalled
                                 (v :> GlobalEventHandlers)
  
  export
  onsubmit :  JSType t
           => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
           -> t
           -> Attribute False Maybe EventHandlerNonNull
  onsubmit v = fromNullablePrim "GlobalEventHandlers.getonsubmit"
                                prim__onsubmit
                                prim__setOnsubmit
                                (v :> GlobalEventHandlers)
  
  export
  onsuspend :  JSType t
            => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
            -> t
            -> Attribute False Maybe EventHandlerNonNull
  onsuspend v = fromNullablePrim "GlobalEventHandlers.getonsuspend"
                                 prim__onsuspend
                                 prim__setOnsuspend
                                 (v :> GlobalEventHandlers)
  
  export
  ontimeupdate :  JSType t
               => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
               -> t
               -> Attribute False Maybe EventHandlerNonNull
  ontimeupdate v = fromNullablePrim "GlobalEventHandlers.getontimeupdate"
                                    prim__ontimeupdate
                                    prim__setOntimeupdate
                                    (v :> GlobalEventHandlers)
  
  export
  ontoggle :  JSType t
           => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
           -> t
           -> Attribute False Maybe EventHandlerNonNull
  ontoggle v = fromNullablePrim "GlobalEventHandlers.getontoggle"
                                prim__ontoggle
                                prim__setOntoggle
                                (v :> GlobalEventHandlers)
  
  export
  onvolumechange :  JSType t
                 => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
                 -> t
                 -> Attribute False Maybe EventHandlerNonNull
  onvolumechange v = fromNullablePrim "GlobalEventHandlers.getonvolumechange"
                                      prim__onvolumechange
                                      prim__setOnvolumechange
                                      (v :> GlobalEventHandlers)
  
  export
  onwaiting :  JSType t
            => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
            -> t
            -> Attribute False Maybe EventHandlerNonNull
  onwaiting v = fromNullablePrim "GlobalEventHandlers.getonwaiting"
                                 prim__onwaiting
                                 prim__setOnwaiting
                                 (v :> GlobalEventHandlers)
  
  export
  onwebkitanimationend :  JSType t
                       => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
                       -> t
                       -> Attribute False Maybe EventHandlerNonNull
  onwebkitanimationend v = fromNullablePrim "GlobalEventHandlers.getonwebkitanimationend"
                                            prim__onwebkitanimationend
                                            prim__setOnwebkitanimationend
                                            (v :> GlobalEventHandlers)
  
  export
  onwebkitanimationiteration :  JSType t
                             => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
                             -> t
                             -> Attribute False Maybe EventHandlerNonNull
  onwebkitanimationiteration v = fromNullablePrim "GlobalEventHandlers.getonwebkitanimationiteration"
                                                  prim__onwebkitanimationiteration
                                                  prim__setOnwebkitanimationiteration
                                                  (v :> GlobalEventHandlers)
  
  export
  onwebkitanimationstart :  JSType t
                         => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
                         -> t
                         -> Attribute False Maybe EventHandlerNonNull
  onwebkitanimationstart v = fromNullablePrim "GlobalEventHandlers.getonwebkitanimationstart"
                                              prim__onwebkitanimationstart
                                              prim__setOnwebkitanimationstart
                                              (v :> GlobalEventHandlers)
  
  export
  onwebkittransitionend :  JSType t
                        => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
                        -> t
                        -> Attribute False Maybe EventHandlerNonNull
  onwebkittransitionend v = fromNullablePrim "GlobalEventHandlers.getonwebkittransitionend"
                                             prim__onwebkittransitionend
                                             prim__setOnwebkittransitionend
                                             (v :> GlobalEventHandlers)
  
  export
  onwheel :  JSType t
          => {auto 0 _ : Elem GlobalEventHandlers (Types t)}
          -> t
          -> Attribute False Maybe EventHandlerNonNull
  onwheel v = fromNullablePrim "GlobalEventHandlers.getonwheel"
                               prim__onwheel
                               prim__setOnwheel
                               (v :> GlobalEventHandlers)

namespace HTMLHyperlinkElementUtils
  
  export
  hash :  JSType t
       => {auto 0 _ : Elem HTMLHyperlinkElementUtils (Types t)}
       -> t
       -> Attribute True I String
  hash v = fromPrim "HTMLHyperlinkElementUtils.gethash"
                    prim__hash
                    prim__setHash
                    (v :> HTMLHyperlinkElementUtils)
  
  export
  host :  JSType t
       => {auto 0 _ : Elem HTMLHyperlinkElementUtils (Types t)}
       -> t
       -> Attribute True I String
  host v = fromPrim "HTMLHyperlinkElementUtils.gethost"
                    prim__host
                    prim__setHost
                    (v :> HTMLHyperlinkElementUtils)
  
  export
  hostname :  JSType t
           => {auto 0 _ : Elem HTMLHyperlinkElementUtils (Types t)}
           -> t
           -> Attribute True I String
  hostname v = fromPrim "HTMLHyperlinkElementUtils.gethostname"
                        prim__hostname
                        prim__setHostname
                        (v :> HTMLHyperlinkElementUtils)
  
  export
  href :  JSType t
       => {auto 0 _ : Elem HTMLHyperlinkElementUtils (Types t)}
       -> t
       -> Attribute True I String
  href v = fromPrim "HTMLHyperlinkElementUtils.gethref"
                    prim__href
                    prim__setHref
                    (v :> HTMLHyperlinkElementUtils)
  
  export
  origin : (obj : HTMLHyperlinkElementUtils) -> JSIO String
  origin a = primJS $ HTMLHyperlinkElementUtils.prim__origin a
  
  export
  password :  JSType t
           => {auto 0 _ : Elem HTMLHyperlinkElementUtils (Types t)}
           -> t
           -> Attribute True I String
  password v = fromPrim "HTMLHyperlinkElementUtils.getpassword"
                        prim__password
                        prim__setPassword
                        (v :> HTMLHyperlinkElementUtils)
  
  export
  pathname :  JSType t
           => {auto 0 _ : Elem HTMLHyperlinkElementUtils (Types t)}
           -> t
           -> Attribute True I String
  pathname v = fromPrim "HTMLHyperlinkElementUtils.getpathname"
                        prim__pathname
                        prim__setPathname
                        (v :> HTMLHyperlinkElementUtils)
  
  export
  port :  JSType t
       => {auto 0 _ : Elem HTMLHyperlinkElementUtils (Types t)}
       -> t
       -> Attribute True I String
  port v = fromPrim "HTMLHyperlinkElementUtils.getport"
                    prim__port
                    prim__setPort
                    (v :> HTMLHyperlinkElementUtils)
  
  export
  protocol :  JSType t
           => {auto 0 _ : Elem HTMLHyperlinkElementUtils (Types t)}
           -> t
           -> Attribute True I String
  protocol v = fromPrim "HTMLHyperlinkElementUtils.getprotocol"
                        prim__protocol
                        prim__setProtocol
                        (v :> HTMLHyperlinkElementUtils)
  
  export
  search :  JSType t
         => {auto 0 _ : Elem HTMLHyperlinkElementUtils (Types t)}
         -> t
         -> Attribute True I String
  search v = fromPrim "HTMLHyperlinkElementUtils.getsearch"
                      prim__search
                      prim__setSearch
                      (v :> HTMLHyperlinkElementUtils)
  
  export
  username :  JSType t
           => {auto 0 _ : Elem HTMLHyperlinkElementUtils (Types t)}
           -> t
           -> Attribute True I String
  username v = fromPrim "HTMLHyperlinkElementUtils.getusername"
                        prim__username
                        prim__setUsername
                        (v :> HTMLHyperlinkElementUtils)

namespace HTMLOrSVGElement
  
  export
  autofocus :  JSType t
            => {auto 0 _ : Elem HTMLOrSVGElement (Types t)}
            -> t
            -> Attribute True I Bool
  autofocus v = fromPrim "HTMLOrSVGElement.getautofocus"
                         prim__autofocus
                         prim__setAutofocus
                         (v :> HTMLOrSVGElement)
  
  export
  dataset : (obj : HTMLOrSVGElement) -> JSIO DOMStringMap
  dataset a = primJS $ HTMLOrSVGElement.prim__dataset a
  
  export
  nonce :  JSType t
        => {auto 0 _ : Elem HTMLOrSVGElement (Types t)}
        -> t
        -> Attribute True I String
  nonce v = fromPrim "HTMLOrSVGElement.getnonce"
                     prim__nonce
                     prim__setNonce
                     (v :> HTMLOrSVGElement)
  
  export
  tabIndex :  JSType t
           => {auto 0 _ : Elem HTMLOrSVGElement (Types t)}
           -> t
           -> Attribute True I Int32
  tabIndex v = fromPrim "HTMLOrSVGElement.gettabIndex"
                        prim__tabIndex
                        prim__setTabIndex
                        (v :> HTMLOrSVGElement)
  
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
  onafterprint :  JSType t
               => {auto 0 _ : Elem WindowEventHandlers (Types t)}
               -> t
               -> Attribute False Maybe EventHandlerNonNull
  onafterprint v = fromNullablePrim "WindowEventHandlers.getonafterprint"
                                    prim__onafterprint
                                    prim__setOnafterprint
                                    (v :> WindowEventHandlers)
  
  export
  onbeforeprint :  JSType t
                => {auto 0 _ : Elem WindowEventHandlers (Types t)}
                -> t
                -> Attribute False Maybe EventHandlerNonNull
  onbeforeprint v = fromNullablePrim "WindowEventHandlers.getonbeforeprint"
                                     prim__onbeforeprint
                                     prim__setOnbeforeprint
                                     (v :> WindowEventHandlers)
  
  export
  onbeforeunload :  JSType t
                 => {auto 0 _ : Elem WindowEventHandlers (Types t)}
                 -> t
                 -> Attribute False Maybe OnBeforeUnloadEventHandlerNonNull
  onbeforeunload v = fromNullablePrim "WindowEventHandlers.getonbeforeunload"
                                      prim__onbeforeunload
                                      prim__setOnbeforeunload
                                      (v :> WindowEventHandlers)
  
  export
  onhashchange :  JSType t
               => {auto 0 _ : Elem WindowEventHandlers (Types t)}
               -> t
               -> Attribute False Maybe EventHandlerNonNull
  onhashchange v = fromNullablePrim "WindowEventHandlers.getonhashchange"
                                    prim__onhashchange
                                    prim__setOnhashchange
                                    (v :> WindowEventHandlers)
  
  export
  onlanguagechange :  JSType t
                   => {auto 0 _ : Elem WindowEventHandlers (Types t)}
                   -> t
                   -> Attribute False Maybe EventHandlerNonNull
  onlanguagechange v = fromNullablePrim "WindowEventHandlers.getonlanguagechange"
                                        prim__onlanguagechange
                                        prim__setOnlanguagechange
                                        (v :> WindowEventHandlers)
  
  export
  onmessage :  JSType t
            => {auto 0 _ : Elem WindowEventHandlers (Types t)}
            -> t
            -> Attribute False Maybe EventHandlerNonNull
  onmessage v = fromNullablePrim "WindowEventHandlers.getonmessage"
                                 prim__onmessage
                                 prim__setOnmessage
                                 (v :> WindowEventHandlers)
  
  export
  onmessageerror :  JSType t
                 => {auto 0 _ : Elem WindowEventHandlers (Types t)}
                 -> t
                 -> Attribute False Maybe EventHandlerNonNull
  onmessageerror v = fromNullablePrim "WindowEventHandlers.getonmessageerror"
                                      prim__onmessageerror
                                      prim__setOnmessageerror
                                      (v :> WindowEventHandlers)
  
  export
  onoffline :  JSType t
            => {auto 0 _ : Elem WindowEventHandlers (Types t)}
            -> t
            -> Attribute False Maybe EventHandlerNonNull
  onoffline v = fromNullablePrim "WindowEventHandlers.getonoffline"
                                 prim__onoffline
                                 prim__setOnoffline
                                 (v :> WindowEventHandlers)
  
  export
  ononline :  JSType t
           => {auto 0 _ : Elem WindowEventHandlers (Types t)}
           -> t
           -> Attribute False Maybe EventHandlerNonNull
  ononline v = fromNullablePrim "WindowEventHandlers.getononline"
                                prim__ononline
                                prim__setOnonline
                                (v :> WindowEventHandlers)
  
  export
  onpagehide :  JSType t
             => {auto 0 _ : Elem WindowEventHandlers (Types t)}
             -> t
             -> Attribute False Maybe EventHandlerNonNull
  onpagehide v = fromNullablePrim "WindowEventHandlers.getonpagehide"
                                  prim__onpagehide
                                  prim__setOnpagehide
                                  (v :> WindowEventHandlers)
  
  export
  onpageshow :  JSType t
             => {auto 0 _ : Elem WindowEventHandlers (Types t)}
             -> t
             -> Attribute False Maybe EventHandlerNonNull
  onpageshow v = fromNullablePrim "WindowEventHandlers.getonpageshow"
                                  prim__onpageshow
                                  prim__setOnpageshow
                                  (v :> WindowEventHandlers)
  
  export
  onpopstate :  JSType t
             => {auto 0 _ : Elem WindowEventHandlers (Types t)}
             -> t
             -> Attribute False Maybe EventHandlerNonNull
  onpopstate v = fromNullablePrim "WindowEventHandlers.getonpopstate"
                                  prim__onpopstate
                                  prim__setOnpopstate
                                  (v :> WindowEventHandlers)
  
  export
  onrejectionhandled :  JSType t
                     => {auto 0 _ : Elem WindowEventHandlers (Types t)}
                     -> t
                     -> Attribute False Maybe EventHandlerNonNull
  onrejectionhandled v = fromNullablePrim "WindowEventHandlers.getonrejectionhandled"
                                          prim__onrejectionhandled
                                          prim__setOnrejectionhandled
                                          (v :> WindowEventHandlers)
  
  export
  onstorage :  JSType t
            => {auto 0 _ : Elem WindowEventHandlers (Types t)}
            -> t
            -> Attribute False Maybe EventHandlerNonNull
  onstorage v = fromNullablePrim "WindowEventHandlers.getonstorage"
                                 prim__onstorage
                                 prim__setOnstorage
                                 (v :> WindowEventHandlers)
  
  export
  onunhandledrejection :  JSType t
                       => {auto 0 _ : Elem WindowEventHandlers (Types t)}
                       -> t
                       -> Attribute False Maybe EventHandlerNonNull
  onunhandledrejection v = fromNullablePrim "WindowEventHandlers.getonunhandledrejection"
                                            prim__onunhandledrejection
                                            prim__setOnunhandledrejection
                                            (v :> WindowEventHandlers)
  
  export
  onunload :  JSType t
           => {auto 0 _ : Elem WindowEventHandlers (Types t)}
           -> t
           -> Attribute False Maybe EventHandlerNonNull
  onunload v = fromNullablePrim "WindowEventHandlers.getonunload"
                                prim__onunload
                                prim__setOnunload
                                (v :> WindowEventHandlers)

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
  flatten :  JSType t
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
  alpha :  JSType t
        => {auto 0 _ : Elem CanvasRenderingContext2DSettings (Types t)}
        -> t
        -> Attribute True Optional Bool
  alpha v = fromUndefOrPrim "CanvasRenderingContext2DSettings.getalpha"
                            prim__alpha
                            prim__setAlpha
                            True
                            (v :> CanvasRenderingContext2DSettings)
  
  export
  desynchronized :  JSType t
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
      -> (code : Optional UInt16)
      -> (reason : Optional String)
      -> JSIO CloseEventInit
  new a b c = primJS $ CloseEventInit.prim__new (toFFI a) (toFFI b) (toFFI c)

  export
  new' : JSIO CloseEventInit
  new' = primJS $ CloseEventInit.prim__new undef undef undef
  
  export
  code :  JSType t
       => {auto 0 _ : Elem CloseEventInit (Types t)}
       -> t
       -> Attribute True Optional UInt16
  code v = fromUndefOrPrim "CloseEventInit.getcode"
                           prim__code
                           prim__setCode
                           0
                           (v :> CloseEventInit)
  
  export
  reason :  JSType t
         => {auto 0 _ : Elem CloseEventInit (Types t)}
         -> t
         -> Attribute True Optional String
  reason v = fromUndefOrPrim "CloseEventInit.getreason"
                             prim__reason
                             prim__setReason
                             ""
                             (v :> CloseEventInit)
  
  export
  wasClean :  JSType t
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
  new :  JSType t1
      => {auto 0 _ : Elem DataTransfer (Types t1)}
      -> (dataTransfer : Optional (Maybe t1))
      -> JSIO DragEventInit
  new a = primJS $ DragEventInit.prim__new (omyUp a)

  export
  new' : JSIO DragEventInit
  new' = primJS $ DragEventInit.prim__new undef
  
  export
  dataTransfer :  JSType t
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
  extends :  JSType t
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
  colno :  JSType t
        => {auto 0 _ : Elem ErrorEventInit (Types t)}
        -> t
        -> Attribute True Optional UInt32
  colno v = fromUndefOrPrim "ErrorEventInit.getcolno"
                            prim__colno
                            prim__setColno
                            0
                            (v :> ErrorEventInit)
  
  export
  error :  JSType t
        => {auto 0 _ : Elem ErrorEventInit (Types t)}
        -> t
        -> Attribute True Optional Any
  error v = fromUndefOrPrim "ErrorEventInit.geterror"
                            prim__error
                            prim__setError
                            (MkAny $ null {a = ()})
                            (v :> ErrorEventInit)
  
  export
  filename :  JSType t
           => {auto 0 _ : Elem ErrorEventInit (Types t)}
           -> t
           -> Attribute True Optional String
  filename v = fromUndefOrPrim "ErrorEventInit.getfilename"
                               prim__filename
                               prim__setFilename
                               ""
                               (v :> ErrorEventInit)
  
  export
  lineno :  JSType t
         => {auto 0 _ : Elem ErrorEventInit (Types t)}
         -> t
         -> Attribute True Optional UInt32
  lineno v = fromUndefOrPrim "ErrorEventInit.getlineno"
                             prim__lineno
                             prim__setLineno
                             0
                             (v :> ErrorEventInit)
  
  export
  message :  JSType t
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
  withCredentials :  JSType t
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
  preventScroll :  JSType t
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
  new :  JSType t1
      => {auto 0 _ : Elem FormData (Types t1)}
      -> (formData : t1)
      -> JSIO FormDataEventInit
  new a = primJS $ FormDataEventInit.prim__new (up a)
  
  export
  formData :  JSType t
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
  newURL :  JSType t
         => {auto 0 _ : Elem HashChangeEventInit (Types t)}
         -> t
         -> Attribute True Optional String
  newURL v = fromUndefOrPrim "HashChangeEventInit.getnewURL"
                             prim__newURL
                             prim__setNewURL
                             ""
                             (v :> HashChangeEventInit)
  
  export
  oldURL :  JSType t
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
  colorSpaceConversion :  JSType t
                       => {auto 0 _ : Elem ImageBitmapOptions (Types t)}
                       -> t
                       -> Attribute False Optional ColorSpaceConversion
  colorSpaceConversion v = fromUndefOrPrimNoDefault "ImageBitmapOptions.getcolorSpaceConversion"
                                                    prim__colorSpaceConversion
                                                    prim__setColorSpaceConversion
                                                    (v :> ImageBitmapOptions)
  
  export
  imageOrientation :  JSType t
                   => {auto 0 _ : Elem ImageBitmapOptions (Types t)}
                   -> t
                   -> Attribute False Optional ImageOrientation
  imageOrientation v = fromUndefOrPrimNoDefault "ImageBitmapOptions.getimageOrientation"
                                                prim__imageOrientation
                                                prim__setImageOrientation
                                                (v :> ImageBitmapOptions)
  
  export
  premultiplyAlpha :  JSType t
                   => {auto 0 _ : Elem ImageBitmapOptions (Types t)}
                   -> t
                   -> Attribute False Optional PremultiplyAlpha
  premultiplyAlpha v = fromUndefOrPrimNoDefault "ImageBitmapOptions.getpremultiplyAlpha"
                                                prim__premultiplyAlpha
                                                prim__setPremultiplyAlpha
                                                (v :> ImageBitmapOptions)
  
  export
  resizeHeight :  JSType t
               => {auto 0 _ : Elem ImageBitmapOptions (Types t)}
               -> t
               -> Attribute False Optional UInt32
  resizeHeight v = fromUndefOrPrimNoDefault "ImageBitmapOptions.getresizeHeight"
                                            prim__resizeHeight
                                            prim__setResizeHeight
                                            (v :> ImageBitmapOptions)
  
  export
  resizeQuality :  JSType t
                => {auto 0 _ : Elem ImageBitmapOptions (Types t)}
                -> t
                -> Attribute False Optional ResizeQuality
  resizeQuality v = fromUndefOrPrimNoDefault "ImageBitmapOptions.getresizeQuality"
                                             prim__resizeQuality
                                             prim__setResizeQuality
                                             (v :> ImageBitmapOptions)
  
  export
  resizeWidth :  JSType t
              => {auto 0 _ : Elem ImageBitmapOptions (Types t)}
              -> t
              -> Attribute False Optional UInt32
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
  alpha :  JSType t
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
  quality :  JSType t
          => {auto 0 _ : Elem ImageEncodeOptions (Types t)}
          -> t
          -> Attribute False Optional Double
  quality v = fromUndefOrPrimNoDefault "ImageEncodeOptions.getquality"
                                       prim__quality
                                       prim__setQuality
                                       (v :> ImageEncodeOptions)
  
  export
  type :  JSType t
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
  data_ :  JSType t
        => {auto 0 _ : Elem MessageEventInit (Types t)}
        -> t
        -> Attribute True Optional Any
  data_ v = fromUndefOrPrim "MessageEventInit.getdata"
                            prim__data
                            prim__setData
                            (MkAny $ null {a = ()})
                            (v :> MessageEventInit)
  
  export
  lastEventId :  JSType t
              => {auto 0 _ : Elem MessageEventInit (Types t)}
              -> t
              -> Attribute True Optional String
  lastEventId v = fromUndefOrPrim "MessageEventInit.getlastEventId"
                                  prim__lastEventId
                                  prim__setLastEventId
                                  ""
                                  (v :> MessageEventInit)
  
  export
  origin :  JSType t
         => {auto 0 _ : Elem MessageEventInit (Types t)}
         -> t
         -> Attribute True Optional String
  origin v = fromUndefOrPrim "MessageEventInit.getorigin"
                             prim__origin
                             prim__setOrigin
                             ""
                             (v :> MessageEventInit)
  
  export
  ports :  JSType t
        => {auto 0 _ : Elem MessageEventInit (Types t)}
        -> t
        -> Attribute False Optional (Array MessagePort)
  ports v = fromUndefOrPrimNoDefault "MessageEventInit.getports"
                                     prim__ports
                                     prim__setPorts
                                     (v :> MessageEventInit)
  
  export
  source :  JSType t
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
  persisted :  JSType t
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
  state :  JSType t
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
  transfer :  JSType t
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
  promise :  JSType t
          => {auto 0 _ : Elem PromiseRejectionEventInit (Types t)}
          -> t
          -> Attribute True I (Promise AnyPtr)
  promise v = fromPrim "PromiseRejectionEventInit.getpromise"
                       prim__promise
                       prim__setPromise
                       (v :> PromiseRejectionEventInit)
  
  export
  reason :  JSType t
         => {auto 0 _ : Elem PromiseRejectionEventInit (Types t)}
         -> t
         -> Attribute False Optional Any
  reason v = fromUndefOrPrimNoDefault "PromiseRejectionEventInit.getreason"
                                      prim__reason
                                      prim__setReason
                                      (v :> PromiseRejectionEventInit)

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
  key :  JSType t
      => {auto 0 _ : Elem StorageEventInit (Types t)}
      -> t
      -> Attribute True Optional (Maybe String)
  key v = fromUndefOrPrim "StorageEventInit.getkey"
                          prim__key
                          prim__setKey
                          Nothing
                          (v :> StorageEventInit)
  
  export
  newValue :  JSType t
           => {auto 0 _ : Elem StorageEventInit (Types t)}
           -> t
           -> Attribute True Optional (Maybe String)
  newValue v = fromUndefOrPrim "StorageEventInit.getnewValue"
                               prim__newValue
                               prim__setNewValue
                               Nothing
                               (v :> StorageEventInit)
  
  export
  oldValue :  JSType t
           => {auto 0 _ : Elem StorageEventInit (Types t)}
           -> t
           -> Attribute True Optional (Maybe String)
  oldValue v = fromUndefOrPrim "StorageEventInit.getoldValue"
                               prim__oldValue
                               prim__setOldValue
                               Nothing
                               (v :> StorageEventInit)
  
  export
  storageArea :  JSType t
              => {auto 0 _ : Elem StorageEventInit (Types t)}
              -> t
              -> Attribute True Optional (Maybe Storage)
  storageArea v = fromUndefOrPrim "StorageEventInit.getstorageArea"
                                  prim__storageArea
                                  prim__setStorageArea
                                  Nothing
                                  (v :> StorageEventInit)
  
  export
  url :  JSType t
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
  new :  JSType t1
      => {auto 0 _ : Elem HTMLElement (Types t1)}
      -> (submitter : Optional (Maybe t1))
      -> JSIO SubmitEventInit
  new a = primJS $ SubmitEventInit.prim__new (omyUp a)

  export
  new' : JSIO SubmitEventInit
  new' = primJS $ SubmitEventInit.prim__new undef
  
  export
  submitter :  JSType t
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
  track :  JSType t
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
  badInput :  JSType t
           => {auto 0 _ : Elem ValidityStateFlags (Types t)}
           -> t
           -> Attribute True Optional Bool
  badInput v = fromUndefOrPrim "ValidityStateFlags.getbadInput"
                               prim__badInput
                               prim__setBadInput
                               False
                               (v :> ValidityStateFlags)
  
  export
  customError :  JSType t
              => {auto 0 _ : Elem ValidityStateFlags (Types t)}
              -> t
              -> Attribute True Optional Bool
  customError v = fromUndefOrPrim "ValidityStateFlags.getcustomError"
                                  prim__customError
                                  prim__setCustomError
                                  False
                                  (v :> ValidityStateFlags)
  
  export
  patternMismatch :  JSType t
                  => {auto 0 _ : Elem ValidityStateFlags (Types t)}
                  -> t
                  -> Attribute True Optional Bool
  patternMismatch v = fromUndefOrPrim "ValidityStateFlags.getpatternMismatch"
                                      prim__patternMismatch
                                      prim__setPatternMismatch
                                      False
                                      (v :> ValidityStateFlags)
  
  export
  rangeOverflow :  JSType t
                => {auto 0 _ : Elem ValidityStateFlags (Types t)}
                -> t
                -> Attribute True Optional Bool
  rangeOverflow v = fromUndefOrPrim "ValidityStateFlags.getrangeOverflow"
                                    prim__rangeOverflow
                                    prim__setRangeOverflow
                                    False
                                    (v :> ValidityStateFlags)
  
  export
  rangeUnderflow :  JSType t
                 => {auto 0 _ : Elem ValidityStateFlags (Types t)}
                 -> t
                 -> Attribute True Optional Bool
  rangeUnderflow v = fromUndefOrPrim "ValidityStateFlags.getrangeUnderflow"
                                     prim__rangeUnderflow
                                     prim__setRangeUnderflow
                                     False
                                     (v :> ValidityStateFlags)
  
  export
  stepMismatch :  JSType t
               => {auto 0 _ : Elem ValidityStateFlags (Types t)}
               -> t
               -> Attribute True Optional Bool
  stepMismatch v = fromUndefOrPrim "ValidityStateFlags.getstepMismatch"
                                   prim__stepMismatch
                                   prim__setStepMismatch
                                   False
                                   (v :> ValidityStateFlags)
  
  export
  tooLong :  JSType t
          => {auto 0 _ : Elem ValidityStateFlags (Types t)}
          -> t
          -> Attribute True Optional Bool
  tooLong v = fromUndefOrPrim "ValidityStateFlags.gettooLong"
                              prim__tooLong
                              prim__setTooLong
                              False
                              (v :> ValidityStateFlags)
  
  export
  tooShort :  JSType t
           => {auto 0 _ : Elem ValidityStateFlags (Types t)}
           -> t
           -> Attribute True Optional Bool
  tooShort v = fromUndefOrPrim "ValidityStateFlags.gettooShort"
                               prim__tooShort
                               prim__setTooShort
                               False
                               (v :> ValidityStateFlags)
  
  export
  typeMismatch :  JSType t
               => {auto 0 _ : Elem ValidityStateFlags (Types t)}
               -> t
               -> Attribute True Optional Bool
  typeMismatch v = fromUndefOrPrim "ValidityStateFlags.gettypeMismatch"
                                   prim__typeMismatch
                                   prim__setTypeMismatch
                                   False
                                   (v :> ValidityStateFlags)
  
  export
  valueMissing :  JSType t
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
  targetOrigin :  JSType t
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
  credentials :  JSType t
              => {auto 0 _ : Elem WorkerOptions (Types t)}
              -> t
              -> Attribute False Optional RequestCredentials
  credentials v = fromUndefOrPrimNoDefault "WorkerOptions.getcredentials"
                                           prim__credentials
                                           prim__setCredentials
                                           (v :> WorkerOptions)
  
  export
  name :  JSType t
       => {auto 0 _ : Elem WorkerOptions (Types t)}
       -> t
       -> Attribute True Optional String
  name v = fromUndefOrPrim "WorkerOptions.getname"
                           prim__name
                           prim__setName
                           ""
                           (v :> WorkerOptions)
  
  export
  type :  JSType t
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
  credentials :  JSType t
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