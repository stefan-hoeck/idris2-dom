module Web.Html

import Data.SOP
import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace AudioTrack
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr
  
  export
  id :  Cast audioTrack AudioTrack
     => ToJS AudioTrack
     => (obj : audioTrack)
     -> IO String
  
  %foreign "browser:lambda:x=>x.kind"
  prim__kind : AnyPtr -> PrimIO AnyPtr
  
  export
  kind :  Cast audioTrack AudioTrack
       => ToJS AudioTrack
       => (obj : audioTrack)
       -> IO String
  
  %foreign "browser:lambda:x=>x.label"
  prim__label : AnyPtr -> PrimIO AnyPtr
  
  export
  label :  Cast audioTrack AudioTrack
        => ToJS AudioTrack
        => (obj : audioTrack)
        -> IO String
  
  %foreign "browser:lambda:x=>x.language"
  prim__language : AnyPtr -> PrimIO AnyPtr
  
  export
  language :  Cast audioTrack AudioTrack
           => ToJS AudioTrack
           => (obj : audioTrack)
           -> IO String
  
  %foreign "browser:lambda:x=>x.sourceBuffer"
  prim__sourceBuffer : AnyPtr -> PrimIO AnyPtr
  
  export
  sourceBuffer :  Cast audioTrack AudioTrack
               => ToJS AudioTrack
               => (obj : audioTrack)
               -> IO (Maybe SourceBuffer)
  
  %foreign "browser:lambda:x=>x.enabled"
  prim__enabled : AnyPtr -> PrimIO AnyPtr
  
  export
  enabled :  Cast audioTrack AudioTrack
          => ToJS AudioTrack
          => (obj : audioTrack)
          -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.enabled = v}"
  prim__setEnabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setEnabled :  Cast audioTrack AudioTrack
             => ToJS AudioTrack
             => (obj : audioTrack)
             -> (v : Bool)
             -> IO ()

namespace AudioTrackList
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  export
  length :  Cast audioTrackList AudioTrackList
         => ToJS AudioTrackList
         => (obj : audioTrackList)
         -> IO UInt32
  
  %foreign "browser:lambda:x=>x.onaddtrack"
  prim__onaddtrack : AnyPtr -> PrimIO AnyPtr
  
  export
  onaddtrack :  Cast audioTrackList AudioTrackList
             => ToJS AudioTrackList
             => (obj : audioTrackList)
             -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onaddtrack = v}"
  prim__setOnaddtrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnaddtrack :  Cast audioTrackList AudioTrackList
                => ToJS AudioTrackList
                => Cast eventHandler EventHandler
                => ToJS EventHandler
                => (obj : audioTrackList)
                -> (v : eventHandler)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.onchange"
  prim__onchange : AnyPtr -> PrimIO AnyPtr
  
  export
  onchange :  Cast audioTrackList AudioTrackList
           => ToJS AudioTrackList
           => (obj : audioTrackList)
           -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onchange = v}"
  prim__setOnchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnchange :  Cast audioTrackList AudioTrackList
              => ToJS AudioTrackList
              => Cast eventHandler EventHandler
              => ToJS EventHandler
              => (obj : audioTrackList)
              -> (v : eventHandler)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.onremovetrack"
  prim__onremovetrack : AnyPtr -> PrimIO AnyPtr
  
  export
  onremovetrack :  Cast audioTrackList AudioTrackList
                => ToJS AudioTrackList
                => (obj : audioTrackList)
                -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onremovetrack = v}"
  prim__setOnremovetrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnremovetrack :  Cast audioTrackList AudioTrackList
                   => ToJS AudioTrackList
                   => Cast eventHandler EventHandler
                   => ToJS EventHandler
                   => (obj : audioTrackList)
                   -> (v : eventHandler)
                   -> IO ()

namespace BarProp
  
  %foreign "browser:lambda:x=>x.visible"
  prim__visible : AnyPtr -> PrimIO AnyPtr
  
  export
  visible : Cast barProp BarProp => ToJS BarProp => (obj : barProp) -> IO Bool

namespace BeforeUnloadEvent
  
  %foreign "browser:lambda:x=>x.returnValue"
  prim__returnValue : AnyPtr -> PrimIO AnyPtr
  
  export
  returnValue :  Cast beforeUnloadEvent BeforeUnloadEvent
              => ToJS BeforeUnloadEvent
              => (obj : beforeUnloadEvent)
              -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.returnValue = v}"
  prim__setReturnValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setReturnValue :  Cast beforeUnloadEvent BeforeUnloadEvent
                 => ToJS BeforeUnloadEvent
                 => (obj : beforeUnloadEvent)
                 -> (v : String)
                 -> IO ()

namespace BroadcastChannel
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr
  
  export
  name :  Cast broadcastChannel BroadcastChannel
       => ToJS BroadcastChannel
       => (obj : broadcastChannel)
       -> IO String
  
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : AnyPtr -> PrimIO AnyPtr
  
  export
  onmessage :  Cast broadcastChannel BroadcastChannel
            => ToJS BroadcastChannel
            => (obj : broadcastChannel)
            -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onmessage = v}"
  prim__setOnmessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnmessage :  Cast broadcastChannel BroadcastChannel
               => ToJS BroadcastChannel
               => Cast eventHandler EventHandler
               => ToJS EventHandler
               => (obj : broadcastChannel)
               -> (v : eventHandler)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.onmessageerror"
  prim__onmessageerror : AnyPtr -> PrimIO AnyPtr
  
  export
  onmessageerror :  Cast broadcastChannel BroadcastChannel
                 => ToJS BroadcastChannel
                 => (obj : broadcastChannel)
                 -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onmessageerror = v}"
  prim__setOnmessageerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnmessageerror :  Cast broadcastChannel BroadcastChannel
                    => ToJS BroadcastChannel
                    => Cast eventHandler EventHandler
                    => ToJS EventHandler
                    => (obj : broadcastChannel)
                    -> (v : eventHandler)
                    -> IO ()

namespace CanvasRenderingContext2D
  
  %foreign "browser:lambda:x=>x.canvas"
  prim__canvas : AnyPtr -> PrimIO AnyPtr
  
  export
  canvas :  Cast canvasRenderingContext2D CanvasRenderingContext2D
         => ToJS CanvasRenderingContext2D
         => (obj : canvasRenderingContext2D)
         -> IO HTMLCanvasElement

namespace CloseEvent
  
  %foreign "browser:lambda:x=>x.code"
  prim__code : AnyPtr -> PrimIO AnyPtr
  
  export
  code :  Cast closeEvent CloseEvent
       => ToJS CloseEvent
       => (obj : closeEvent)
       -> IO UInt16
  
  %foreign "browser:lambda:x=>x.reason"
  prim__reason : AnyPtr -> PrimIO AnyPtr
  
  export
  reason :  Cast closeEvent CloseEvent
         => ToJS CloseEvent
         => (obj : closeEvent)
         -> IO String
  
  %foreign "browser:lambda:x=>x.wasClean"
  prim__wasClean : AnyPtr -> PrimIO AnyPtr
  
  export
  wasClean :  Cast closeEvent CloseEvent
           => ToJS CloseEvent
           => (obj : closeEvent)
           -> IO Bool

namespace DOMStringList
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  export
  length :  Cast dOMStringList DOMStringList
         => ToJS DOMStringList
         => (obj : dOMStringList)
         -> IO UInt32

namespace DataTransfer
  
  %foreign "browser:lambda:x=>x.files"
  prim__files : AnyPtr -> PrimIO AnyPtr
  
  export
  files :  Cast dataTransfer DataTransfer
        => ToJS DataTransfer
        => (obj : dataTransfer)
        -> IO FileList
  
  %foreign "browser:lambda:x=>x.items"
  prim__items : AnyPtr -> PrimIO AnyPtr
  
  export
  items :  Cast dataTransfer DataTransfer
        => ToJS DataTransfer
        => (obj : dataTransfer)
        -> IO DataTransferItemList
  
  %foreign "browser:lambda:x=>x.types"
  prim__types : AnyPtr -> PrimIO AnyPtr
  
  export
  types :  Cast dataTransfer DataTransfer
        => ToJS DataTransfer
        => (obj : dataTransfer)
        -> IO (JSArray String)
  
  %foreign "browser:lambda:x=>x.dropEffect"
  prim__dropEffect : AnyPtr -> PrimIO AnyPtr
  
  export
  dropEffect :  Cast dataTransfer DataTransfer
             => ToJS DataTransfer
             => (obj : dataTransfer)
             -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.dropEffect = v}"
  prim__setDropEffect : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDropEffect :  Cast dataTransfer DataTransfer
                => ToJS DataTransfer
                => (obj : dataTransfer)
                -> (v : String)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.effectAllowed"
  prim__effectAllowed : AnyPtr -> PrimIO AnyPtr
  
  export
  effectAllowed :  Cast dataTransfer DataTransfer
                => ToJS DataTransfer
                => (obj : dataTransfer)
                -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.effectAllowed = v}"
  prim__setEffectAllowed : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setEffectAllowed :  Cast dataTransfer DataTransfer
                   => ToJS DataTransfer
                   => (obj : dataTransfer)
                   -> (v : String)
                   -> IO ()

namespace DataTransferItem
  
  %foreign "browser:lambda:x=>x.kind"
  prim__kind : AnyPtr -> PrimIO AnyPtr
  
  export
  kind :  Cast dataTransferItem DataTransferItem
       => ToJS DataTransferItem
       => (obj : dataTransferItem)
       -> IO String
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  export
  type :  Cast dataTransferItem DataTransferItem
       => ToJS DataTransferItem
       => (obj : dataTransferItem)
       -> IO String

namespace DataTransferItemList
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  export
  length :  Cast dataTransferItemList DataTransferItemList
         => ToJS DataTransferItemList
         => (obj : dataTransferItemList)
         -> IO UInt32

namespace DedicatedWorkerGlobalScope
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr
  
  export
  name :  Cast dedicatedWorkerGlobalScope DedicatedWorkerGlobalScope
       => ToJS DedicatedWorkerGlobalScope
       => (obj : dedicatedWorkerGlobalScope)
       -> IO String
  
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : AnyPtr -> PrimIO AnyPtr
  
  export
  onmessage :  Cast dedicatedWorkerGlobalScope DedicatedWorkerGlobalScope
            => ToJS DedicatedWorkerGlobalScope
            => (obj : dedicatedWorkerGlobalScope)
            -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onmessage = v}"
  prim__setOnmessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnmessage :  Cast dedicatedWorkerGlobalScope DedicatedWorkerGlobalScope
               => ToJS DedicatedWorkerGlobalScope
               => Cast eventHandler EventHandler
               => ToJS EventHandler
               => (obj : dedicatedWorkerGlobalScope)
               -> (v : eventHandler)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.onmessageerror"
  prim__onmessageerror : AnyPtr -> PrimIO AnyPtr
  
  export
  onmessageerror :  Cast dedicatedWorkerGlobalScope DedicatedWorkerGlobalScope
                 => ToJS DedicatedWorkerGlobalScope
                 => (obj : dedicatedWorkerGlobalScope)
                 -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onmessageerror = v}"
  prim__setOnmessageerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnmessageerror :  Cast dedicatedWorkerGlobalScope DedicatedWorkerGlobalScope
                    => ToJS DedicatedWorkerGlobalScope
                    => Cast eventHandler EventHandler
                    => ToJS EventHandler
                    => (obj : dedicatedWorkerGlobalScope)
                    -> (v : eventHandler)
                    -> IO ()

namespace DragEvent
  
  %foreign "browser:lambda:x=>x.dataTransfer"
  prim__dataTransfer : AnyPtr -> PrimIO AnyPtr
  
  export
  dataTransfer :  Cast dragEvent DragEvent
               => ToJS DragEvent
               => (obj : dragEvent)
               -> IO (Maybe DataTransfer)

namespace ElementInternals
  
  %foreign "browser:lambda:x=>x.form"
  prim__form : AnyPtr -> PrimIO AnyPtr
  
  export
  form :  Cast elementInternals ElementInternals
       => ToJS ElementInternals
       => (obj : elementInternals)
       -> IO (Maybe HTMLFormElement)
  
  %foreign "browser:lambda:x=>x.labels"
  prim__labels : AnyPtr -> PrimIO AnyPtr
  
  export
  labels :  Cast elementInternals ElementInternals
         => ToJS ElementInternals
         => (obj : elementInternals)
         -> IO NodeList
  
  %foreign "browser:lambda:x=>x.shadowRoot"
  prim__shadowRoot : AnyPtr -> PrimIO AnyPtr
  
  export
  shadowRoot :  Cast elementInternals ElementInternals
             => ToJS ElementInternals
             => (obj : elementInternals)
             -> IO (Maybe ShadowRoot)
  
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : AnyPtr -> PrimIO AnyPtr
  
  export
  validationMessage :  Cast elementInternals ElementInternals
                    => ToJS ElementInternals
                    => (obj : elementInternals)
                    -> IO String
  
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : AnyPtr -> PrimIO AnyPtr
  
  export
  validity :  Cast elementInternals ElementInternals
           => ToJS ElementInternals
           => (obj : elementInternals)
           -> IO ValidityState
  
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : AnyPtr -> PrimIO AnyPtr
  
  export
  willValidate :  Cast elementInternals ElementInternals
               => ToJS ElementInternals
               => (obj : elementInternals)
               -> IO Bool

namespace ErrorEvent
  
  %foreign "browser:lambda:x=>x.colno"
  prim__colno : AnyPtr -> PrimIO AnyPtr
  
  export
  colno :  Cast errorEvent ErrorEvent
        => ToJS ErrorEvent
        => (obj : errorEvent)
        -> IO UInt32
  
  %foreign "browser:lambda:x=>x.error"
  prim__error : AnyPtr -> PrimIO AnyPtr
  
  export
  error :  Cast errorEvent ErrorEvent
        => ToJS ErrorEvent
        => (obj : errorEvent)
        -> IO JSAny
  
  %foreign "browser:lambda:x=>x.filename"
  prim__filename : AnyPtr -> PrimIO AnyPtr
  
  export
  filename :  Cast errorEvent ErrorEvent
           => ToJS ErrorEvent
           => (obj : errorEvent)
           -> IO String
  
  %foreign "browser:lambda:x=>x.lineno"
  prim__lineno : AnyPtr -> PrimIO AnyPtr
  
  export
  lineno :  Cast errorEvent ErrorEvent
         => ToJS ErrorEvent
         => (obj : errorEvent)
         -> IO UInt32
  
  %foreign "browser:lambda:x=>x.message"
  prim__message : AnyPtr -> PrimIO AnyPtr
  
  export
  message :  Cast errorEvent ErrorEvent
          => ToJS ErrorEvent
          => (obj : errorEvent)
          -> IO String

namespace EventSource
  
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
  readyState :  Cast eventSource EventSource
             => ToJS EventSource
             => (obj : eventSource)
             -> IO UInt16
  
  %foreign "browser:lambda:x=>x.url"
  prim__url : AnyPtr -> PrimIO AnyPtr
  
  export
  url :  Cast eventSource EventSource
      => ToJS EventSource
      => (obj : eventSource)
      -> IO String
  
  %foreign "browser:lambda:x=>x.withCredentials"
  prim__withCredentials : AnyPtr -> PrimIO AnyPtr
  
  export
  withCredentials :  Cast eventSource EventSource
                  => ToJS EventSource
                  => (obj : eventSource)
                  -> IO Bool
  
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : AnyPtr -> PrimIO AnyPtr
  
  export
  onerror :  Cast eventSource EventSource
          => ToJS EventSource
          => (obj : eventSource)
          -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onerror = v}"
  prim__setOnerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnerror :  Cast eventHandler EventHandler
             => ToJS EventHandler
             => Cast eventSource EventSource
             => ToJS EventSource
             => (obj : eventSource)
             -> (v : eventHandler)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : AnyPtr -> PrimIO AnyPtr
  
  export
  onmessage :  Cast eventSource EventSource
            => ToJS EventSource
            => (obj : eventSource)
            -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onmessage = v}"
  prim__setOnmessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnmessage :  Cast eventHandler EventHandler
               => ToJS EventHandler
               => Cast eventSource EventSource
               => ToJS EventSource
               => (obj : eventSource)
               -> (v : eventHandler)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.onopen"
  prim__onopen : AnyPtr -> PrimIO AnyPtr
  
  export
  onopen :  Cast eventSource EventSource
         => ToJS EventSource
         => (obj : eventSource)
         -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onopen = v}"
  prim__setOnopen : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnopen :  Cast eventHandler EventHandler
            => ToJS EventHandler
            => Cast eventSource EventSource
            => ToJS EventSource
            => (obj : eventSource)
            -> (v : eventHandler)
            -> IO ()

namespace FormDataEvent
  
  %foreign "browser:lambda:x=>x.formData"
  prim__formData : AnyPtr -> PrimIO AnyPtr
  
  export
  formData :  Cast formDataEvent FormDataEvent
           => ToJS FormDataEvent
           => (obj : formDataEvent)
           -> IO FormData

namespace HTMLAllCollection
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  export
  length :  Cast hTMLAllCollection HTMLAllCollection
         => ToJS HTMLAllCollection
         => (obj : hTMLAllCollection)
         -> IO UInt32

namespace HTMLAnchorElement
  
  %foreign "browser:lambda:x=>x.relList"
  prim__relList : AnyPtr -> PrimIO AnyPtr
  
  export
  relList :  Cast hTMLAnchorElement HTMLAnchorElement
          => ToJS HTMLAnchorElement
          => (obj : hTMLAnchorElement)
          -> IO DOMTokenList
  
  %foreign "browser:lambda:x=>x.charset"
  prim__charset : AnyPtr -> PrimIO AnyPtr
  
  export
  charset :  Cast hTMLAnchorElement HTMLAnchorElement
          => ToJS HTMLAnchorElement
          => (obj : hTMLAnchorElement)
          -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.charset = v}"
  prim__setCharset : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCharset :  Cast hTMLAnchorElement HTMLAnchorElement
             => ToJS HTMLAnchorElement
             => (obj : hTMLAnchorElement)
             -> (v : String)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.coords"
  prim__coords : AnyPtr -> PrimIO AnyPtr
  
  export
  coords :  Cast hTMLAnchorElement HTMLAnchorElement
         => ToJS HTMLAnchorElement
         => (obj : hTMLAnchorElement)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.coords = v}"
  prim__setCoords : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCoords :  Cast hTMLAnchorElement HTMLAnchorElement
            => ToJS HTMLAnchorElement
            => (obj : hTMLAnchorElement)
            -> (v : String)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.download"
  prim__download : AnyPtr -> PrimIO AnyPtr
  
  export
  download :  Cast hTMLAnchorElement HTMLAnchorElement
           => ToJS HTMLAnchorElement
           => (obj : hTMLAnchorElement)
           -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.download = v}"
  prim__setDownload : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDownload :  Cast hTMLAnchorElement HTMLAnchorElement
              => ToJS HTMLAnchorElement
              => (obj : hTMLAnchorElement)
              -> (v : String)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.hreflang"
  prim__hreflang : AnyPtr -> PrimIO AnyPtr
  
  export
  hreflang :  Cast hTMLAnchorElement HTMLAnchorElement
           => ToJS HTMLAnchorElement
           => (obj : hTMLAnchorElement)
           -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.hreflang = v}"
  prim__setHreflang : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHreflang :  Cast hTMLAnchorElement HTMLAnchorElement
              => ToJS HTMLAnchorElement
              => (obj : hTMLAnchorElement)
              -> (v : String)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr
  
  export
  name :  Cast hTMLAnchorElement HTMLAnchorElement
       => ToJS HTMLAnchorElement
       => (obj : hTMLAnchorElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setName :  Cast hTMLAnchorElement HTMLAnchorElement
          => ToJS HTMLAnchorElement
          => (obj : hTMLAnchorElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.ping"
  prim__ping : AnyPtr -> PrimIO AnyPtr
  
  export
  ping :  Cast hTMLAnchorElement HTMLAnchorElement
       => ToJS HTMLAnchorElement
       => (obj : hTMLAnchorElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ping = v}"
  prim__setPing : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setPing :  Cast hTMLAnchorElement HTMLAnchorElement
          => ToJS HTMLAnchorElement
          => (obj : hTMLAnchorElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : AnyPtr -> PrimIO AnyPtr
  
  export
  referrerPolicy :  Cast hTMLAnchorElement HTMLAnchorElement
                 => ToJS HTMLAnchorElement
                 => (obj : hTMLAnchorElement)
                 -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy = v}"
  prim__setReferrerPolicy : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setReferrerPolicy :  Cast hTMLAnchorElement HTMLAnchorElement
                    => ToJS HTMLAnchorElement
                    => (obj : hTMLAnchorElement)
                    -> (v : String)
                    -> IO ()
  
  %foreign "browser:lambda:x=>x.rel"
  prim__rel : AnyPtr -> PrimIO AnyPtr
  
  export
  rel :  Cast hTMLAnchorElement HTMLAnchorElement
      => ToJS HTMLAnchorElement
      => (obj : hTMLAnchorElement)
      -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.rel = v}"
  prim__setRel : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setRel :  Cast hTMLAnchorElement HTMLAnchorElement
         => ToJS HTMLAnchorElement
         => (obj : hTMLAnchorElement)
         -> (v : String)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.rev"
  prim__rev : AnyPtr -> PrimIO AnyPtr
  
  export
  rev :  Cast hTMLAnchorElement HTMLAnchorElement
      => ToJS HTMLAnchorElement
      => (obj : hTMLAnchorElement)
      -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.rev = v}"
  prim__setRev : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setRev :  Cast hTMLAnchorElement HTMLAnchorElement
         => ToJS HTMLAnchorElement
         => (obj : hTMLAnchorElement)
         -> (v : String)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.shape"
  prim__shape : AnyPtr -> PrimIO AnyPtr
  
  export
  shape :  Cast hTMLAnchorElement HTMLAnchorElement
        => ToJS HTMLAnchorElement
        => (obj : hTMLAnchorElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.shape = v}"
  prim__setShape : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setShape :  Cast hTMLAnchorElement HTMLAnchorElement
           => ToJS HTMLAnchorElement
           => (obj : hTMLAnchorElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr
  
  export
  target :  Cast hTMLAnchorElement HTMLAnchorElement
         => ToJS HTMLAnchorElement
         => (obj : hTMLAnchorElement)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.target = v}"
  prim__setTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setTarget :  Cast hTMLAnchorElement HTMLAnchorElement
            => ToJS HTMLAnchorElement
            => (obj : hTMLAnchorElement)
            -> (v : String)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.text"
  prim__text : AnyPtr -> PrimIO AnyPtr
  
  export
  text :  Cast hTMLAnchorElement HTMLAnchorElement
       => ToJS HTMLAnchorElement
       => (obj : hTMLAnchorElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.text = v}"
  prim__setText : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setText :  Cast hTMLAnchorElement HTMLAnchorElement
          => ToJS HTMLAnchorElement
          => (obj : hTMLAnchorElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  export
  type :  Cast hTMLAnchorElement HTMLAnchorElement
       => ToJS HTMLAnchorElement
       => (obj : hTMLAnchorElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setType :  Cast hTMLAnchorElement HTMLAnchorElement
          => ToJS HTMLAnchorElement
          => (obj : hTMLAnchorElement)
          -> (v : String)
          -> IO ()

namespace HTMLAreaElement
  
  %foreign "browser:lambda:x=>x.relList"
  prim__relList : AnyPtr -> PrimIO AnyPtr
  
  export
  relList :  Cast hTMLAreaElement HTMLAreaElement
          => ToJS HTMLAreaElement
          => (obj : hTMLAreaElement)
          -> IO DOMTokenList
  
  %foreign "browser:lambda:x=>x.alt"
  prim__alt : AnyPtr -> PrimIO AnyPtr
  
  export
  alt :  Cast hTMLAreaElement HTMLAreaElement
      => ToJS HTMLAreaElement
      => (obj : hTMLAreaElement)
      -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.alt = v}"
  prim__setAlt : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAlt :  Cast hTMLAreaElement HTMLAreaElement
         => ToJS HTMLAreaElement
         => (obj : hTMLAreaElement)
         -> (v : String)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.coords"
  prim__coords : AnyPtr -> PrimIO AnyPtr
  
  export
  coords :  Cast hTMLAreaElement HTMLAreaElement
         => ToJS HTMLAreaElement
         => (obj : hTMLAreaElement)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.coords = v}"
  prim__setCoords : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCoords :  Cast hTMLAreaElement HTMLAreaElement
            => ToJS HTMLAreaElement
            => (obj : hTMLAreaElement)
            -> (v : String)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.download"
  prim__download : AnyPtr -> PrimIO AnyPtr
  
  export
  download :  Cast hTMLAreaElement HTMLAreaElement
           => ToJS HTMLAreaElement
           => (obj : hTMLAreaElement)
           -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.download = v}"
  prim__setDownload : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDownload :  Cast hTMLAreaElement HTMLAreaElement
              => ToJS HTMLAreaElement
              => (obj : hTMLAreaElement)
              -> (v : String)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.noHref"
  prim__noHref : AnyPtr -> PrimIO AnyPtr
  
  export
  noHref :  Cast hTMLAreaElement HTMLAreaElement
         => ToJS HTMLAreaElement
         => (obj : hTMLAreaElement)
         -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.noHref = v}"
  prim__setNoHref : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setNoHref :  Cast hTMLAreaElement HTMLAreaElement
            => ToJS HTMLAreaElement
            => (obj : hTMLAreaElement)
            -> (v : Bool)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.ping"
  prim__ping : AnyPtr -> PrimIO AnyPtr
  
  export
  ping :  Cast hTMLAreaElement HTMLAreaElement
       => ToJS HTMLAreaElement
       => (obj : hTMLAreaElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ping = v}"
  prim__setPing : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setPing :  Cast hTMLAreaElement HTMLAreaElement
          => ToJS HTMLAreaElement
          => (obj : hTMLAreaElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : AnyPtr -> PrimIO AnyPtr
  
  export
  referrerPolicy :  Cast hTMLAreaElement HTMLAreaElement
                 => ToJS HTMLAreaElement
                 => (obj : hTMLAreaElement)
                 -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy = v}"
  prim__setReferrerPolicy : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setReferrerPolicy :  Cast hTMLAreaElement HTMLAreaElement
                    => ToJS HTMLAreaElement
                    => (obj : hTMLAreaElement)
                    -> (v : String)
                    -> IO ()
  
  %foreign "browser:lambda:x=>x.rel"
  prim__rel : AnyPtr -> PrimIO AnyPtr
  
  export
  rel :  Cast hTMLAreaElement HTMLAreaElement
      => ToJS HTMLAreaElement
      => (obj : hTMLAreaElement)
      -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.rel = v}"
  prim__setRel : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setRel :  Cast hTMLAreaElement HTMLAreaElement
         => ToJS HTMLAreaElement
         => (obj : hTMLAreaElement)
         -> (v : String)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.shape"
  prim__shape : AnyPtr -> PrimIO AnyPtr
  
  export
  shape :  Cast hTMLAreaElement HTMLAreaElement
        => ToJS HTMLAreaElement
        => (obj : hTMLAreaElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.shape = v}"
  prim__setShape : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setShape :  Cast hTMLAreaElement HTMLAreaElement
           => ToJS HTMLAreaElement
           => (obj : hTMLAreaElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr
  
  export
  target :  Cast hTMLAreaElement HTMLAreaElement
         => ToJS HTMLAreaElement
         => (obj : hTMLAreaElement)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.target = v}"
  prim__setTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setTarget :  Cast hTMLAreaElement HTMLAreaElement
            => ToJS HTMLAreaElement
            => (obj : hTMLAreaElement)
            -> (v : String)
            -> IO ()

namespace HTMLBRElement
  
  %foreign "browser:lambda:x=>x.clear"
  prim__clear : AnyPtr -> PrimIO AnyPtr
  
  export
  clear :  Cast hTMLBRElement HTMLBRElement
        => ToJS HTMLBRElement
        => (obj : hTMLBRElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.clear = v}"
  prim__setClear : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setClear :  Cast hTMLBRElement HTMLBRElement
           => ToJS HTMLBRElement
           => (obj : hTMLBRElement)
           -> (v : String)
           -> IO ()

namespace HTMLBaseElement
  
  %foreign "browser:lambda:x=>x.href"
  prim__href : AnyPtr -> PrimIO AnyPtr
  
  export
  href :  Cast hTMLBaseElement HTMLBaseElement
       => ToJS HTMLBaseElement
       => (obj : hTMLBaseElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.href = v}"
  prim__setHref : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHref :  Cast hTMLBaseElement HTMLBaseElement
          => ToJS HTMLBaseElement
          => (obj : hTMLBaseElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr
  
  export
  target :  Cast hTMLBaseElement HTMLBaseElement
         => ToJS HTMLBaseElement
         => (obj : hTMLBaseElement)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.target = v}"
  prim__setTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setTarget :  Cast hTMLBaseElement HTMLBaseElement
            => ToJS HTMLBaseElement
            => (obj : hTMLBaseElement)
            -> (v : String)
            -> IO ()

namespace HTMLBodyElement
  
  %foreign "browser:lambda:x=>x.aLink"
  prim__aLink : AnyPtr -> PrimIO AnyPtr
  
  export
  aLink :  Cast hTMLBodyElement HTMLBodyElement
        => ToJS HTMLBodyElement
        => (obj : hTMLBodyElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.aLink = v}"
  prim__setALink : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setALink :  Cast hTMLBodyElement HTMLBodyElement
           => ToJS HTMLBodyElement
           => (obj : hTMLBodyElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.background"
  prim__background : AnyPtr -> PrimIO AnyPtr
  
  export
  background :  Cast hTMLBodyElement HTMLBodyElement
             => ToJS HTMLBodyElement
             => (obj : hTMLBodyElement)
             -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.background = v}"
  prim__setBackground : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setBackground :  Cast hTMLBodyElement HTMLBodyElement
                => ToJS HTMLBodyElement
                => (obj : hTMLBodyElement)
                -> (v : String)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.bgColor"
  prim__bgColor : AnyPtr -> PrimIO AnyPtr
  
  export
  bgColor :  Cast hTMLBodyElement HTMLBodyElement
          => ToJS HTMLBodyElement
          => (obj : hTMLBodyElement)
          -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.bgColor = v}"
  prim__setBgColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setBgColor :  Cast hTMLBodyElement HTMLBodyElement
             => ToJS HTMLBodyElement
             => (obj : hTMLBodyElement)
             -> (v : String)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.link"
  prim__link : AnyPtr -> PrimIO AnyPtr
  
  export
  link :  Cast hTMLBodyElement HTMLBodyElement
       => ToJS HTMLBodyElement
       => (obj : hTMLBodyElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.link = v}"
  prim__setLink : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setLink :  Cast hTMLBodyElement HTMLBodyElement
          => ToJS HTMLBodyElement
          => (obj : hTMLBodyElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.text"
  prim__text : AnyPtr -> PrimIO AnyPtr
  
  export
  text :  Cast hTMLBodyElement HTMLBodyElement
       => ToJS HTMLBodyElement
       => (obj : hTMLBodyElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.text = v}"
  prim__setText : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setText :  Cast hTMLBodyElement HTMLBodyElement
          => ToJS HTMLBodyElement
          => (obj : hTMLBodyElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.vLink"
  prim__vLink : AnyPtr -> PrimIO AnyPtr
  
  export
  vLink :  Cast hTMLBodyElement HTMLBodyElement
        => ToJS HTMLBodyElement
        => (obj : hTMLBodyElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.vLink = v}"
  prim__setVLink : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setVLink :  Cast hTMLBodyElement HTMLBodyElement
           => ToJS HTMLBodyElement
           => (obj : hTMLBodyElement)
           -> (v : String)
           -> IO ()

namespace HTMLButtonElement
  
  %foreign "browser:lambda:x=>x.form"
  prim__form : AnyPtr -> PrimIO AnyPtr
  
  export
  form :  Cast hTMLButtonElement HTMLButtonElement
       => ToJS HTMLButtonElement
       => (obj : hTMLButtonElement)
       -> IO (Maybe HTMLFormElement)
  
  %foreign "browser:lambda:x=>x.labels"
  prim__labels : AnyPtr -> PrimIO AnyPtr
  
  export
  labels :  Cast hTMLButtonElement HTMLButtonElement
         => ToJS HTMLButtonElement
         => (obj : hTMLButtonElement)
         -> IO NodeList
  
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : AnyPtr -> PrimIO AnyPtr
  
  export
  validationMessage :  Cast hTMLButtonElement HTMLButtonElement
                    => ToJS HTMLButtonElement
                    => (obj : hTMLButtonElement)
                    -> IO String
  
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : AnyPtr -> PrimIO AnyPtr
  
  export
  validity :  Cast hTMLButtonElement HTMLButtonElement
           => ToJS HTMLButtonElement
           => (obj : hTMLButtonElement)
           -> IO ValidityState
  
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : AnyPtr -> PrimIO AnyPtr
  
  export
  willValidate :  Cast hTMLButtonElement HTMLButtonElement
               => ToJS HTMLButtonElement
               => (obj : hTMLButtonElement)
               -> IO Bool
  
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : AnyPtr -> PrimIO AnyPtr
  
  export
  disabled :  Cast hTMLButtonElement HTMLButtonElement
           => ToJS HTMLButtonElement
           => (obj : hTMLButtonElement)
           -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.disabled = v}"
  prim__setDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDisabled :  Cast hTMLButtonElement HTMLButtonElement
              => ToJS HTMLButtonElement
              => (obj : hTMLButtonElement)
              -> (v : Bool)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.formAction"
  prim__formAction : AnyPtr -> PrimIO AnyPtr
  
  export
  formAction :  Cast hTMLButtonElement HTMLButtonElement
             => ToJS HTMLButtonElement
             => (obj : hTMLButtonElement)
             -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.formAction = v}"
  prim__setFormAction : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setFormAction :  Cast hTMLButtonElement HTMLButtonElement
                => ToJS HTMLButtonElement
                => (obj : hTMLButtonElement)
                -> (v : String)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.formEnctype"
  prim__formEnctype : AnyPtr -> PrimIO AnyPtr
  
  export
  formEnctype :  Cast hTMLButtonElement HTMLButtonElement
              => ToJS HTMLButtonElement
              => (obj : hTMLButtonElement)
              -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.formEnctype = v}"
  prim__setFormEnctype : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setFormEnctype :  Cast hTMLButtonElement HTMLButtonElement
                 => ToJS HTMLButtonElement
                 => (obj : hTMLButtonElement)
                 -> (v : String)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.formMethod"
  prim__formMethod : AnyPtr -> PrimIO AnyPtr
  
  export
  formMethod :  Cast hTMLButtonElement HTMLButtonElement
             => ToJS HTMLButtonElement
             => (obj : hTMLButtonElement)
             -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.formMethod = v}"
  prim__setFormMethod : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setFormMethod :  Cast hTMLButtonElement HTMLButtonElement
                => ToJS HTMLButtonElement
                => (obj : hTMLButtonElement)
                -> (v : String)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.formNoValidate"
  prim__formNoValidate : AnyPtr -> PrimIO AnyPtr
  
  export
  formNoValidate :  Cast hTMLButtonElement HTMLButtonElement
                 => ToJS HTMLButtonElement
                 => (obj : hTMLButtonElement)
                 -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.formNoValidate = v}"
  prim__setFormNoValidate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setFormNoValidate :  Cast hTMLButtonElement HTMLButtonElement
                    => ToJS HTMLButtonElement
                    => (obj : hTMLButtonElement)
                    -> (v : Bool)
                    -> IO ()
  
  %foreign "browser:lambda:x=>x.formTarget"
  prim__formTarget : AnyPtr -> PrimIO AnyPtr
  
  export
  formTarget :  Cast hTMLButtonElement HTMLButtonElement
             => ToJS HTMLButtonElement
             => (obj : hTMLButtonElement)
             -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.formTarget = v}"
  prim__setFormTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setFormTarget :  Cast hTMLButtonElement HTMLButtonElement
                => ToJS HTMLButtonElement
                => (obj : hTMLButtonElement)
                -> (v : String)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr
  
  export
  name :  Cast hTMLButtonElement HTMLButtonElement
       => ToJS HTMLButtonElement
       => (obj : hTMLButtonElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setName :  Cast hTMLButtonElement HTMLButtonElement
          => ToJS HTMLButtonElement
          => (obj : hTMLButtonElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  export
  type :  Cast hTMLButtonElement HTMLButtonElement
       => ToJS HTMLButtonElement
       => (obj : hTMLButtonElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setType :  Cast hTMLButtonElement HTMLButtonElement
          => ToJS HTMLButtonElement
          => (obj : hTMLButtonElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr
  
  export
  value :  Cast hTMLButtonElement HTMLButtonElement
        => ToJS HTMLButtonElement
        => (obj : hTMLButtonElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setValue :  Cast hTMLButtonElement HTMLButtonElement
           => ToJS HTMLButtonElement
           => (obj : hTMLButtonElement)
           -> (v : String)
           -> IO ()

namespace HTMLCanvasElement
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr
  
  export
  height :  Cast hTMLCanvasElement HTMLCanvasElement
         => ToJS HTMLCanvasElement
         => (obj : hTMLCanvasElement)
         -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHeight :  Cast hTMLCanvasElement HTMLCanvasElement
            => ToJS HTMLCanvasElement
            => (obj : hTMLCanvasElement)
            -> (v : UInt32)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr
  
  export
  width :  Cast hTMLCanvasElement HTMLCanvasElement
        => ToJS HTMLCanvasElement
        => (obj : hTMLCanvasElement)
        -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setWidth :  Cast hTMLCanvasElement HTMLCanvasElement
           => ToJS HTMLCanvasElement
           => (obj : hTMLCanvasElement)
           -> (v : UInt32)
           -> IO ()

namespace HTMLDListElement
  
  %foreign "browser:lambda:x=>x.compact"
  prim__compact : AnyPtr -> PrimIO AnyPtr
  
  export
  compact :  Cast hTMLDListElement HTMLDListElement
          => ToJS HTMLDListElement
          => (obj : hTMLDListElement)
          -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.compact = v}"
  prim__setCompact : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCompact :  Cast hTMLDListElement HTMLDListElement
             => ToJS HTMLDListElement
             => (obj : hTMLDListElement)
             -> (v : Bool)
             -> IO ()

namespace HTMLDataElement
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr
  
  export
  value :  Cast hTMLDataElement HTMLDataElement
        => ToJS HTMLDataElement
        => (obj : hTMLDataElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setValue :  Cast hTMLDataElement HTMLDataElement
           => ToJS HTMLDataElement
           => (obj : hTMLDataElement)
           -> (v : String)
           -> IO ()

namespace HTMLDataListElement
  
  %foreign "browser:lambda:x=>x.options"
  prim__options : AnyPtr -> PrimIO AnyPtr
  
  export
  options :  Cast hTMLDataListElement HTMLDataListElement
          => ToJS HTMLDataListElement
          => (obj : hTMLDataListElement)
          -> IO HTMLCollection

namespace HTMLDetailsElement
  
  %foreign "browser:lambda:x=>x.open"
  prim__open_ : AnyPtr -> PrimIO AnyPtr
  
  export
  open_ :  Cast hTMLDetailsElement HTMLDetailsElement
        => ToJS HTMLDetailsElement
        => (obj : hTMLDetailsElement)
        -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.open = v}"
  prim__setOpen : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOpen :  Cast hTMLDetailsElement HTMLDetailsElement
          => ToJS HTMLDetailsElement
          => (obj : hTMLDetailsElement)
          -> (v : Bool)
          -> IO ()

namespace HTMLDialogElement
  
  %foreign "browser:lambda:x=>x.open"
  prim__open_ : AnyPtr -> PrimIO AnyPtr
  
  export
  open_ :  Cast hTMLDialogElement HTMLDialogElement
        => ToJS HTMLDialogElement
        => (obj : hTMLDialogElement)
        -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.open = v}"
  prim__setOpen : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOpen :  Cast hTMLDialogElement HTMLDialogElement
          => ToJS HTMLDialogElement
          => (obj : hTMLDialogElement)
          -> (v : Bool)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.returnValue"
  prim__returnValue : AnyPtr -> PrimIO AnyPtr
  
  export
  returnValue :  Cast hTMLDialogElement HTMLDialogElement
              => ToJS HTMLDialogElement
              => (obj : hTMLDialogElement)
              -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.returnValue = v}"
  prim__setReturnValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setReturnValue :  Cast hTMLDialogElement HTMLDialogElement
                 => ToJS HTMLDialogElement
                 => (obj : hTMLDialogElement)
                 -> (v : String)
                 -> IO ()

namespace HTMLDirectoryElement
  
  %foreign "browser:lambda:x=>x.compact"
  prim__compact : AnyPtr -> PrimIO AnyPtr
  
  export
  compact :  Cast hTMLDirectoryElement HTMLDirectoryElement
          => ToJS HTMLDirectoryElement
          => (obj : hTMLDirectoryElement)
          -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.compact = v}"
  prim__setCompact : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCompact :  Cast hTMLDirectoryElement HTMLDirectoryElement
             => ToJS HTMLDirectoryElement
             => (obj : hTMLDirectoryElement)
             -> (v : Bool)
             -> IO ()

namespace HTMLDivElement
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr
  
  export
  align :  Cast hTMLDivElement HTMLDivElement
        => ToJS HTMLDivElement
        => (obj : hTMLDivElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAlign :  Cast hTMLDivElement HTMLDivElement
           => ToJS HTMLDivElement
           => (obj : hTMLDivElement)
           -> (v : String)
           -> IO ()

namespace HTMLElement
  
  %foreign "browser:lambda:x=>x.accessKeyLabel"
  prim__accessKeyLabel : AnyPtr -> PrimIO AnyPtr
  
  export
  accessKeyLabel :  Cast hTMLElement HTMLElement
                 => ToJS HTMLElement
                 => (obj : hTMLElement)
                 -> IO String
  
  %foreign "browser:lambda:x=>x.accessKey"
  prim__accessKey : AnyPtr -> PrimIO AnyPtr
  
  export
  accessKey :  Cast hTMLElement HTMLElement
            => ToJS HTMLElement
            => (obj : hTMLElement)
            -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.accessKey = v}"
  prim__setAccessKey : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAccessKey :  Cast hTMLElement HTMLElement
               => ToJS HTMLElement
               => (obj : hTMLElement)
               -> (v : String)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.autocapitalize"
  prim__autocapitalize : AnyPtr -> PrimIO AnyPtr
  
  export
  autocapitalize :  Cast hTMLElement HTMLElement
                 => ToJS HTMLElement
                 => (obj : hTMLElement)
                 -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.autocapitalize = v}"
  prim__setAutocapitalize : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAutocapitalize :  Cast hTMLElement HTMLElement
                    => ToJS HTMLElement
                    => (obj : hTMLElement)
                    -> (v : String)
                    -> IO ()
  
  %foreign "browser:lambda:x=>x.dir"
  prim__dir : AnyPtr -> PrimIO AnyPtr
  
  export
  dir :  Cast hTMLElement HTMLElement
      => ToJS HTMLElement
      => (obj : hTMLElement)
      -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.dir = v}"
  prim__setDir : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDir :  Cast hTMLElement HTMLElement
         => ToJS HTMLElement
         => (obj : hTMLElement)
         -> (v : String)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.draggable"
  prim__draggable : AnyPtr -> PrimIO AnyPtr
  
  export
  draggable :  Cast hTMLElement HTMLElement
            => ToJS HTMLElement
            => (obj : hTMLElement)
            -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.draggable = v}"
  prim__setDraggable : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDraggable :  Cast hTMLElement HTMLElement
               => ToJS HTMLElement
               => (obj : hTMLElement)
               -> (v : Bool)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.hidden"
  prim__hidden : AnyPtr -> PrimIO AnyPtr
  
  export
  hidden :  Cast hTMLElement HTMLElement
         => ToJS HTMLElement
         => (obj : hTMLElement)
         -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.hidden = v}"
  prim__setHidden : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHidden :  Cast hTMLElement HTMLElement
            => ToJS HTMLElement
            => (obj : hTMLElement)
            -> (v : Bool)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.innerText"
  prim__innerText : AnyPtr -> PrimIO AnyPtr
  
  export
  innerText :  Cast hTMLElement HTMLElement
            => ToJS HTMLElement
            => (obj : hTMLElement)
            -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.innerText = v}"
  prim__setInnerText : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setInnerText :  Cast hTMLElement HTMLElement
               => ToJS HTMLElement
               => (obj : hTMLElement)
               -> (v : String)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.lang"
  prim__lang : AnyPtr -> PrimIO AnyPtr
  
  export
  lang :  Cast hTMLElement HTMLElement
       => ToJS HTMLElement
       => (obj : hTMLElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.lang = v}"
  prim__setLang : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setLang :  Cast hTMLElement HTMLElement
          => ToJS HTMLElement
          => (obj : hTMLElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.spellcheck"
  prim__spellcheck : AnyPtr -> PrimIO AnyPtr
  
  export
  spellcheck :  Cast hTMLElement HTMLElement
             => ToJS HTMLElement
             => (obj : hTMLElement)
             -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.spellcheck = v}"
  prim__setSpellcheck : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSpellcheck :  Cast hTMLElement HTMLElement
                => ToJS HTMLElement
                => (obj : hTMLElement)
                -> (v : Bool)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.title"
  prim__title : AnyPtr -> PrimIO AnyPtr
  
  export
  title :  Cast hTMLElement HTMLElement
        => ToJS HTMLElement
        => (obj : hTMLElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.title = v}"
  prim__setTitle : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setTitle :  Cast hTMLElement HTMLElement
           => ToJS HTMLElement
           => (obj : hTMLElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.translate"
  prim__translate : AnyPtr -> PrimIO AnyPtr
  
  export
  translate :  Cast hTMLElement HTMLElement
            => ToJS HTMLElement
            => (obj : hTMLElement)
            -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.translate = v}"
  prim__setTranslate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setTranslate :  Cast hTMLElement HTMLElement
               => ToJS HTMLElement
               => (obj : hTMLElement)
               -> (v : Bool)
               -> IO ()

namespace HTMLEmbedElement
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr
  
  export
  align :  Cast hTMLEmbedElement HTMLEmbedElement
        => ToJS HTMLEmbedElement
        => (obj : hTMLEmbedElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAlign :  Cast hTMLEmbedElement HTMLEmbedElement
           => ToJS HTMLEmbedElement
           => (obj : hTMLEmbedElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr
  
  export
  height :  Cast hTMLEmbedElement HTMLEmbedElement
         => ToJS HTMLEmbedElement
         => (obj : hTMLEmbedElement)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHeight :  Cast hTMLEmbedElement HTMLEmbedElement
            => ToJS HTMLEmbedElement
            => (obj : hTMLEmbedElement)
            -> (v : String)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr
  
  export
  name :  Cast hTMLEmbedElement HTMLEmbedElement
       => ToJS HTMLEmbedElement
       => (obj : hTMLEmbedElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setName :  Cast hTMLEmbedElement HTMLEmbedElement
          => ToJS HTMLEmbedElement
          => (obj : hTMLEmbedElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.src"
  prim__src : AnyPtr -> PrimIO AnyPtr
  
  export
  src :  Cast hTMLEmbedElement HTMLEmbedElement
      => ToJS HTMLEmbedElement
      => (obj : hTMLEmbedElement)
      -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.src = v}"
  prim__setSrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSrc :  Cast hTMLEmbedElement HTMLEmbedElement
         => ToJS HTMLEmbedElement
         => (obj : hTMLEmbedElement)
         -> (v : String)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  export
  type :  Cast hTMLEmbedElement HTMLEmbedElement
       => ToJS HTMLEmbedElement
       => (obj : hTMLEmbedElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setType :  Cast hTMLEmbedElement HTMLEmbedElement
          => ToJS HTMLEmbedElement
          => (obj : hTMLEmbedElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr
  
  export
  width :  Cast hTMLEmbedElement HTMLEmbedElement
        => ToJS HTMLEmbedElement
        => (obj : hTMLEmbedElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setWidth :  Cast hTMLEmbedElement HTMLEmbedElement
           => ToJS HTMLEmbedElement
           => (obj : hTMLEmbedElement)
           -> (v : String)
           -> IO ()

namespace HTMLFieldSetElement
  
  %foreign "browser:lambda:x=>x.elements"
  prim__elements : AnyPtr -> PrimIO AnyPtr
  
  export
  elements :  Cast hTMLFieldSetElement HTMLFieldSetElement
           => ToJS HTMLFieldSetElement
           => (obj : hTMLFieldSetElement)
           -> IO HTMLCollection
  
  %foreign "browser:lambda:x=>x.form"
  prim__form : AnyPtr -> PrimIO AnyPtr
  
  export
  form :  Cast hTMLFieldSetElement HTMLFieldSetElement
       => ToJS HTMLFieldSetElement
       => (obj : hTMLFieldSetElement)
       -> IO (Maybe HTMLFormElement)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  export
  type :  Cast hTMLFieldSetElement HTMLFieldSetElement
       => ToJS HTMLFieldSetElement
       => (obj : hTMLFieldSetElement)
       -> IO String
  
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : AnyPtr -> PrimIO AnyPtr
  
  export
  validationMessage :  Cast hTMLFieldSetElement HTMLFieldSetElement
                    => ToJS HTMLFieldSetElement
                    => (obj : hTMLFieldSetElement)
                    -> IO String
  
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : AnyPtr -> PrimIO AnyPtr
  
  export
  validity :  Cast hTMLFieldSetElement HTMLFieldSetElement
           => ToJS HTMLFieldSetElement
           => (obj : hTMLFieldSetElement)
           -> IO ValidityState
  
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : AnyPtr -> PrimIO AnyPtr
  
  export
  willValidate :  Cast hTMLFieldSetElement HTMLFieldSetElement
               => ToJS HTMLFieldSetElement
               => (obj : hTMLFieldSetElement)
               -> IO Bool
  
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : AnyPtr -> PrimIO AnyPtr
  
  export
  disabled :  Cast hTMLFieldSetElement HTMLFieldSetElement
           => ToJS HTMLFieldSetElement
           => (obj : hTMLFieldSetElement)
           -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.disabled = v}"
  prim__setDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDisabled :  Cast hTMLFieldSetElement HTMLFieldSetElement
              => ToJS HTMLFieldSetElement
              => (obj : hTMLFieldSetElement)
              -> (v : Bool)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr
  
  export
  name :  Cast hTMLFieldSetElement HTMLFieldSetElement
       => ToJS HTMLFieldSetElement
       => (obj : hTMLFieldSetElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setName :  Cast hTMLFieldSetElement HTMLFieldSetElement
          => ToJS HTMLFieldSetElement
          => (obj : hTMLFieldSetElement)
          -> (v : String)
          -> IO ()

namespace HTMLFontElement
  
  %foreign "browser:lambda:x=>x.color"
  prim__color : AnyPtr -> PrimIO AnyPtr
  
  export
  color :  Cast hTMLFontElement HTMLFontElement
        => ToJS HTMLFontElement
        => (obj : hTMLFontElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.color = v}"
  prim__setColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setColor :  Cast hTMLFontElement HTMLFontElement
           => ToJS HTMLFontElement
           => (obj : hTMLFontElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.face"
  prim__face : AnyPtr -> PrimIO AnyPtr
  
  export
  face :  Cast hTMLFontElement HTMLFontElement
       => ToJS HTMLFontElement
       => (obj : hTMLFontElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.face = v}"
  prim__setFace : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setFace :  Cast hTMLFontElement HTMLFontElement
          => ToJS HTMLFontElement
          => (obj : hTMLFontElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.size"
  prim__size : AnyPtr -> PrimIO AnyPtr
  
  export
  size :  Cast hTMLFontElement HTMLFontElement
       => ToJS HTMLFontElement
       => (obj : hTMLFontElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.size = v}"
  prim__setSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSize :  Cast hTMLFontElement HTMLFontElement
          => ToJS HTMLFontElement
          => (obj : hTMLFontElement)
          -> (v : String)
          -> IO ()

namespace HTMLFormElement
  
  %foreign "browser:lambda:x=>x.elements"
  prim__elements : AnyPtr -> PrimIO AnyPtr
  
  export
  elements :  Cast hTMLFormElement HTMLFormElement
           => ToJS HTMLFormElement
           => (obj : hTMLFormElement)
           -> IO HTMLFormControlsCollection
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  export
  length :  Cast hTMLFormElement HTMLFormElement
         => ToJS HTMLFormElement
         => (obj : hTMLFormElement)
         -> IO UInt32
  
  %foreign "browser:lambda:x=>x.relList"
  prim__relList : AnyPtr -> PrimIO AnyPtr
  
  export
  relList :  Cast hTMLFormElement HTMLFormElement
          => ToJS HTMLFormElement
          => (obj : hTMLFormElement)
          -> IO DOMTokenList
  
  %foreign "browser:lambda:x=>x.acceptCharset"
  prim__acceptCharset : AnyPtr -> PrimIO AnyPtr
  
  export
  acceptCharset :  Cast hTMLFormElement HTMLFormElement
                => ToJS HTMLFormElement
                => (obj : hTMLFormElement)
                -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.acceptCharset = v}"
  prim__setAcceptCharset : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAcceptCharset :  Cast hTMLFormElement HTMLFormElement
                   => ToJS HTMLFormElement
                   => (obj : hTMLFormElement)
                   -> (v : String)
                   -> IO ()
  
  %foreign "browser:lambda:x=>x.action"
  prim__action : AnyPtr -> PrimIO AnyPtr
  
  export
  action :  Cast hTMLFormElement HTMLFormElement
         => ToJS HTMLFormElement
         => (obj : hTMLFormElement)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.action = v}"
  prim__setAction : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAction :  Cast hTMLFormElement HTMLFormElement
            => ToJS HTMLFormElement
            => (obj : hTMLFormElement)
            -> (v : String)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.autocomplete"
  prim__autocomplete : AnyPtr -> PrimIO AnyPtr
  
  export
  autocomplete :  Cast hTMLFormElement HTMLFormElement
               => ToJS HTMLFormElement
               => (obj : hTMLFormElement)
               -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.autocomplete = v}"
  prim__setAutocomplete : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAutocomplete :  Cast hTMLFormElement HTMLFormElement
                  => ToJS HTMLFormElement
                  => (obj : hTMLFormElement)
                  -> (v : String)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.encoding"
  prim__encoding : AnyPtr -> PrimIO AnyPtr
  
  export
  encoding :  Cast hTMLFormElement HTMLFormElement
           => ToJS HTMLFormElement
           => (obj : hTMLFormElement)
           -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.encoding = v}"
  prim__setEncoding : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setEncoding :  Cast hTMLFormElement HTMLFormElement
              => ToJS HTMLFormElement
              => (obj : hTMLFormElement)
              -> (v : String)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.enctype"
  prim__enctype : AnyPtr -> PrimIO AnyPtr
  
  export
  enctype :  Cast hTMLFormElement HTMLFormElement
          => ToJS HTMLFormElement
          => (obj : hTMLFormElement)
          -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.enctype = v}"
  prim__setEnctype : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setEnctype :  Cast hTMLFormElement HTMLFormElement
             => ToJS HTMLFormElement
             => (obj : hTMLFormElement)
             -> (v : String)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.method"
  prim__method : AnyPtr -> PrimIO AnyPtr
  
  export
  method :  Cast hTMLFormElement HTMLFormElement
         => ToJS HTMLFormElement
         => (obj : hTMLFormElement)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.method = v}"
  prim__setMethod : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setMethod :  Cast hTMLFormElement HTMLFormElement
            => ToJS HTMLFormElement
            => (obj : hTMLFormElement)
            -> (v : String)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr
  
  export
  name :  Cast hTMLFormElement HTMLFormElement
       => ToJS HTMLFormElement
       => (obj : hTMLFormElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setName :  Cast hTMLFormElement HTMLFormElement
          => ToJS HTMLFormElement
          => (obj : hTMLFormElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.noValidate"
  prim__noValidate : AnyPtr -> PrimIO AnyPtr
  
  export
  noValidate :  Cast hTMLFormElement HTMLFormElement
             => ToJS HTMLFormElement
             => (obj : hTMLFormElement)
             -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.noValidate = v}"
  prim__setNoValidate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setNoValidate :  Cast hTMLFormElement HTMLFormElement
                => ToJS HTMLFormElement
                => (obj : hTMLFormElement)
                -> (v : Bool)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.rel"
  prim__rel : AnyPtr -> PrimIO AnyPtr
  
  export
  rel :  Cast hTMLFormElement HTMLFormElement
      => ToJS HTMLFormElement
      => (obj : hTMLFormElement)
      -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.rel = v}"
  prim__setRel : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setRel :  Cast hTMLFormElement HTMLFormElement
         => ToJS HTMLFormElement
         => (obj : hTMLFormElement)
         -> (v : String)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr
  
  export
  target :  Cast hTMLFormElement HTMLFormElement
         => ToJS HTMLFormElement
         => (obj : hTMLFormElement)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.target = v}"
  prim__setTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setTarget :  Cast hTMLFormElement HTMLFormElement
            => ToJS HTMLFormElement
            => (obj : hTMLFormElement)
            -> (v : String)
            -> IO ()

namespace HTMLFrameElement
  
  %foreign "browser:lambda:x=>x.contentDocument"
  prim__contentDocument : AnyPtr -> PrimIO AnyPtr
  
  export
  contentDocument :  Cast hTMLFrameElement HTMLFrameElement
                  => ToJS HTMLFrameElement
                  => (obj : hTMLFrameElement)
                  -> IO (Maybe Document)
  
  %foreign "browser:lambda:x=>x.contentWindow"
  prim__contentWindow : AnyPtr -> PrimIO AnyPtr
  
  export
  contentWindow :  Cast hTMLFrameElement HTMLFrameElement
                => ToJS HTMLFrameElement
                => (obj : hTMLFrameElement)
                -> IO (Maybe WindowProxy)
  
  %foreign "browser:lambda:x=>x.frameBorder"
  prim__frameBorder : AnyPtr -> PrimIO AnyPtr
  
  export
  frameBorder :  Cast hTMLFrameElement HTMLFrameElement
              => ToJS HTMLFrameElement
              => (obj : hTMLFrameElement)
              -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.frameBorder = v}"
  prim__setFrameBorder : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setFrameBorder :  Cast hTMLFrameElement HTMLFrameElement
                 => ToJS HTMLFrameElement
                 => (obj : hTMLFrameElement)
                 -> (v : String)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.longDesc"
  prim__longDesc : AnyPtr -> PrimIO AnyPtr
  
  export
  longDesc :  Cast hTMLFrameElement HTMLFrameElement
           => ToJS HTMLFrameElement
           => (obj : hTMLFrameElement)
           -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.longDesc = v}"
  prim__setLongDesc : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setLongDesc :  Cast hTMLFrameElement HTMLFrameElement
              => ToJS HTMLFrameElement
              => (obj : hTMLFrameElement)
              -> (v : String)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.marginHeight"
  prim__marginHeight : AnyPtr -> PrimIO AnyPtr
  
  export
  marginHeight :  Cast hTMLFrameElement HTMLFrameElement
               => ToJS HTMLFrameElement
               => (obj : hTMLFrameElement)
               -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.marginHeight = v}"
  prim__setMarginHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setMarginHeight :  Cast hTMLFrameElement HTMLFrameElement
                  => ToJS HTMLFrameElement
                  => (obj : hTMLFrameElement)
                  -> (v : String)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.marginWidth"
  prim__marginWidth : AnyPtr -> PrimIO AnyPtr
  
  export
  marginWidth :  Cast hTMLFrameElement HTMLFrameElement
              => ToJS HTMLFrameElement
              => (obj : hTMLFrameElement)
              -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.marginWidth = v}"
  prim__setMarginWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setMarginWidth :  Cast hTMLFrameElement HTMLFrameElement
                 => ToJS HTMLFrameElement
                 => (obj : hTMLFrameElement)
                 -> (v : String)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr
  
  export
  name :  Cast hTMLFrameElement HTMLFrameElement
       => ToJS HTMLFrameElement
       => (obj : hTMLFrameElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setName :  Cast hTMLFrameElement HTMLFrameElement
          => ToJS HTMLFrameElement
          => (obj : hTMLFrameElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.noResize"
  prim__noResize : AnyPtr -> PrimIO AnyPtr
  
  export
  noResize :  Cast hTMLFrameElement HTMLFrameElement
           => ToJS HTMLFrameElement
           => (obj : hTMLFrameElement)
           -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.noResize = v}"
  prim__setNoResize : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setNoResize :  Cast hTMLFrameElement HTMLFrameElement
              => ToJS HTMLFrameElement
              => (obj : hTMLFrameElement)
              -> (v : Bool)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.scrolling"
  prim__scrolling : AnyPtr -> PrimIO AnyPtr
  
  export
  scrolling :  Cast hTMLFrameElement HTMLFrameElement
            => ToJS HTMLFrameElement
            => (obj : hTMLFrameElement)
            -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.scrolling = v}"
  prim__setScrolling : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setScrolling :  Cast hTMLFrameElement HTMLFrameElement
               => ToJS HTMLFrameElement
               => (obj : hTMLFrameElement)
               -> (v : String)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.src"
  prim__src : AnyPtr -> PrimIO AnyPtr
  
  export
  src :  Cast hTMLFrameElement HTMLFrameElement
      => ToJS HTMLFrameElement
      => (obj : hTMLFrameElement)
      -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.src = v}"
  prim__setSrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSrc :  Cast hTMLFrameElement HTMLFrameElement
         => ToJS HTMLFrameElement
         => (obj : hTMLFrameElement)
         -> (v : String)
         -> IO ()

namespace HTMLFrameSetElement
  
  %foreign "browser:lambda:x=>x.cols"
  prim__cols : AnyPtr -> PrimIO AnyPtr
  
  export
  cols :  Cast hTMLFrameSetElement HTMLFrameSetElement
       => ToJS HTMLFrameSetElement
       => (obj : hTMLFrameSetElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.cols = v}"
  prim__setCols : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCols :  Cast hTMLFrameSetElement HTMLFrameSetElement
          => ToJS HTMLFrameSetElement
          => (obj : hTMLFrameSetElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.rows"
  prim__rows : AnyPtr -> PrimIO AnyPtr
  
  export
  rows :  Cast hTMLFrameSetElement HTMLFrameSetElement
       => ToJS HTMLFrameSetElement
       => (obj : hTMLFrameSetElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.rows = v}"
  prim__setRows : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setRows :  Cast hTMLFrameSetElement HTMLFrameSetElement
          => ToJS HTMLFrameSetElement
          => (obj : hTMLFrameSetElement)
          -> (v : String)
          -> IO ()

namespace HTMLHRElement
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr
  
  export
  align :  Cast hTMLHRElement HTMLHRElement
        => ToJS HTMLHRElement
        => (obj : hTMLHRElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAlign :  Cast hTMLHRElement HTMLHRElement
           => ToJS HTMLHRElement
           => (obj : hTMLHRElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.color"
  prim__color : AnyPtr -> PrimIO AnyPtr
  
  export
  color :  Cast hTMLHRElement HTMLHRElement
        => ToJS HTMLHRElement
        => (obj : hTMLHRElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.color = v}"
  prim__setColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setColor :  Cast hTMLHRElement HTMLHRElement
           => ToJS HTMLHRElement
           => (obj : hTMLHRElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.noShade"
  prim__noShade : AnyPtr -> PrimIO AnyPtr
  
  export
  noShade :  Cast hTMLHRElement HTMLHRElement
          => ToJS HTMLHRElement
          => (obj : hTMLHRElement)
          -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.noShade = v}"
  prim__setNoShade : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setNoShade :  Cast hTMLHRElement HTMLHRElement
             => ToJS HTMLHRElement
             => (obj : hTMLHRElement)
             -> (v : Bool)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.size"
  prim__size : AnyPtr -> PrimIO AnyPtr
  
  export
  size :  Cast hTMLHRElement HTMLHRElement
       => ToJS HTMLHRElement
       => (obj : hTMLHRElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.size = v}"
  prim__setSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSize :  Cast hTMLHRElement HTMLHRElement
          => ToJS HTMLHRElement
          => (obj : hTMLHRElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr
  
  export
  width :  Cast hTMLHRElement HTMLHRElement
        => ToJS HTMLHRElement
        => (obj : hTMLHRElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setWidth :  Cast hTMLHRElement HTMLHRElement
           => ToJS HTMLHRElement
           => (obj : hTMLHRElement)
           -> (v : String)
           -> IO ()

namespace HTMLHeadingElement
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr
  
  export
  align :  Cast hTMLHeadingElement HTMLHeadingElement
        => ToJS HTMLHeadingElement
        => (obj : hTMLHeadingElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAlign :  Cast hTMLHeadingElement HTMLHeadingElement
           => ToJS HTMLHeadingElement
           => (obj : hTMLHeadingElement)
           -> (v : String)
           -> IO ()

namespace HTMLHtmlElement
  
  %foreign "browser:lambda:x=>x.version"
  prim__version : AnyPtr -> PrimIO AnyPtr
  
  export
  version :  Cast hTMLHtmlElement HTMLHtmlElement
          => ToJS HTMLHtmlElement
          => (obj : hTMLHtmlElement)
          -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.version = v}"
  prim__setVersion : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setVersion :  Cast hTMLHtmlElement HTMLHtmlElement
             => ToJS HTMLHtmlElement
             => (obj : hTMLHtmlElement)
             -> (v : String)
             -> IO ()

namespace HTMLIFrameElement
  
  %foreign "browser:lambda:x=>x.contentDocument"
  prim__contentDocument : AnyPtr -> PrimIO AnyPtr
  
  export
  contentDocument :  Cast hTMLIFrameElement HTMLIFrameElement
                  => ToJS HTMLIFrameElement
                  => (obj : hTMLIFrameElement)
                  -> IO (Maybe Document)
  
  %foreign "browser:lambda:x=>x.contentWindow"
  prim__contentWindow : AnyPtr -> PrimIO AnyPtr
  
  export
  contentWindow :  Cast hTMLIFrameElement HTMLIFrameElement
                => ToJS HTMLIFrameElement
                => (obj : hTMLIFrameElement)
                -> IO (Maybe WindowProxy)
  
  %foreign "browser:lambda:x=>x.sandbox"
  prim__sandbox : AnyPtr -> PrimIO AnyPtr
  
  export
  sandbox :  Cast hTMLIFrameElement HTMLIFrameElement
          => ToJS HTMLIFrameElement
          => (obj : hTMLIFrameElement)
          -> IO DOMTokenList
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr
  
  export
  align :  Cast hTMLIFrameElement HTMLIFrameElement
        => ToJS HTMLIFrameElement
        => (obj : hTMLIFrameElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAlign :  Cast hTMLIFrameElement HTMLIFrameElement
           => ToJS HTMLIFrameElement
           => (obj : hTMLIFrameElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.allow"
  prim__allow : AnyPtr -> PrimIO AnyPtr
  
  export
  allow :  Cast hTMLIFrameElement HTMLIFrameElement
        => ToJS HTMLIFrameElement
        => (obj : hTMLIFrameElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.allow = v}"
  prim__setAllow : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAllow :  Cast hTMLIFrameElement HTMLIFrameElement
           => ToJS HTMLIFrameElement
           => (obj : hTMLIFrameElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.allowFullscreen"
  prim__allowFullscreen : AnyPtr -> PrimIO AnyPtr
  
  export
  allowFullscreen :  Cast hTMLIFrameElement HTMLIFrameElement
                  => ToJS HTMLIFrameElement
                  => (obj : hTMLIFrameElement)
                  -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.allowFullscreen = v}"
  prim__setAllowFullscreen : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAllowFullscreen :  Cast hTMLIFrameElement HTMLIFrameElement
                     => ToJS HTMLIFrameElement
                     => (obj : hTMLIFrameElement)
                     -> (v : Bool)
                     -> IO ()
  
  %foreign "browser:lambda:x=>x.frameBorder"
  prim__frameBorder : AnyPtr -> PrimIO AnyPtr
  
  export
  frameBorder :  Cast hTMLIFrameElement HTMLIFrameElement
              => ToJS HTMLIFrameElement
              => (obj : hTMLIFrameElement)
              -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.frameBorder = v}"
  prim__setFrameBorder : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setFrameBorder :  Cast hTMLIFrameElement HTMLIFrameElement
                 => ToJS HTMLIFrameElement
                 => (obj : hTMLIFrameElement)
                 -> (v : String)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr
  
  export
  height :  Cast hTMLIFrameElement HTMLIFrameElement
         => ToJS HTMLIFrameElement
         => (obj : hTMLIFrameElement)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHeight :  Cast hTMLIFrameElement HTMLIFrameElement
            => ToJS HTMLIFrameElement
            => (obj : hTMLIFrameElement)
            -> (v : String)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.loading"
  prim__loading : AnyPtr -> PrimIO AnyPtr
  
  export
  loading :  Cast hTMLIFrameElement HTMLIFrameElement
          => ToJS HTMLIFrameElement
          => (obj : hTMLIFrameElement)
          -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.loading = v}"
  prim__setLoading : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setLoading :  Cast hTMLIFrameElement HTMLIFrameElement
             => ToJS HTMLIFrameElement
             => (obj : hTMLIFrameElement)
             -> (v : String)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.longDesc"
  prim__longDesc : AnyPtr -> PrimIO AnyPtr
  
  export
  longDesc :  Cast hTMLIFrameElement HTMLIFrameElement
           => ToJS HTMLIFrameElement
           => (obj : hTMLIFrameElement)
           -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.longDesc = v}"
  prim__setLongDesc : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setLongDesc :  Cast hTMLIFrameElement HTMLIFrameElement
              => ToJS HTMLIFrameElement
              => (obj : hTMLIFrameElement)
              -> (v : String)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.marginHeight"
  prim__marginHeight : AnyPtr -> PrimIO AnyPtr
  
  export
  marginHeight :  Cast hTMLIFrameElement HTMLIFrameElement
               => ToJS HTMLIFrameElement
               => (obj : hTMLIFrameElement)
               -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.marginHeight = v}"
  prim__setMarginHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setMarginHeight :  Cast hTMLIFrameElement HTMLIFrameElement
                  => ToJS HTMLIFrameElement
                  => (obj : hTMLIFrameElement)
                  -> (v : String)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.marginWidth"
  prim__marginWidth : AnyPtr -> PrimIO AnyPtr
  
  export
  marginWidth :  Cast hTMLIFrameElement HTMLIFrameElement
              => ToJS HTMLIFrameElement
              => (obj : hTMLIFrameElement)
              -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.marginWidth = v}"
  prim__setMarginWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setMarginWidth :  Cast hTMLIFrameElement HTMLIFrameElement
                 => ToJS HTMLIFrameElement
                 => (obj : hTMLIFrameElement)
                 -> (v : String)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr
  
  export
  name :  Cast hTMLIFrameElement HTMLIFrameElement
       => ToJS HTMLIFrameElement
       => (obj : hTMLIFrameElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setName :  Cast hTMLIFrameElement HTMLIFrameElement
          => ToJS HTMLIFrameElement
          => (obj : hTMLIFrameElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : AnyPtr -> PrimIO AnyPtr
  
  export
  referrerPolicy :  Cast hTMLIFrameElement HTMLIFrameElement
                 => ToJS HTMLIFrameElement
                 => (obj : hTMLIFrameElement)
                 -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy = v}"
  prim__setReferrerPolicy : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setReferrerPolicy :  Cast hTMLIFrameElement HTMLIFrameElement
                    => ToJS HTMLIFrameElement
                    => (obj : hTMLIFrameElement)
                    -> (v : String)
                    -> IO ()
  
  %foreign "browser:lambda:x=>x.scrolling"
  prim__scrolling : AnyPtr -> PrimIO AnyPtr
  
  export
  scrolling :  Cast hTMLIFrameElement HTMLIFrameElement
            => ToJS HTMLIFrameElement
            => (obj : hTMLIFrameElement)
            -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.scrolling = v}"
  prim__setScrolling : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setScrolling :  Cast hTMLIFrameElement HTMLIFrameElement
               => ToJS HTMLIFrameElement
               => (obj : hTMLIFrameElement)
               -> (v : String)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.src"
  prim__src : AnyPtr -> PrimIO AnyPtr
  
  export
  src :  Cast hTMLIFrameElement HTMLIFrameElement
      => ToJS HTMLIFrameElement
      => (obj : hTMLIFrameElement)
      -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.src = v}"
  prim__setSrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSrc :  Cast hTMLIFrameElement HTMLIFrameElement
         => ToJS HTMLIFrameElement
         => (obj : hTMLIFrameElement)
         -> (v : String)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.srcdoc"
  prim__srcdoc : AnyPtr -> PrimIO AnyPtr
  
  export
  srcdoc :  Cast hTMLIFrameElement HTMLIFrameElement
         => ToJS HTMLIFrameElement
         => (obj : hTMLIFrameElement)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.srcdoc = v}"
  prim__setSrcdoc : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSrcdoc :  Cast hTMLIFrameElement HTMLIFrameElement
            => ToJS HTMLIFrameElement
            => (obj : hTMLIFrameElement)
            -> (v : String)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr
  
  export
  width :  Cast hTMLIFrameElement HTMLIFrameElement
        => ToJS HTMLIFrameElement
        => (obj : hTMLIFrameElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setWidth :  Cast hTMLIFrameElement HTMLIFrameElement
           => ToJS HTMLIFrameElement
           => (obj : hTMLIFrameElement)
           -> (v : String)
           -> IO ()

namespace HTMLImageElement
  
  %foreign "browser:lambda:x=>x.complete"
  prim__complete : AnyPtr -> PrimIO AnyPtr
  
  export
  complete :  Cast hTMLImageElement HTMLImageElement
           => ToJS HTMLImageElement
           => (obj : hTMLImageElement)
           -> IO Bool
  
  %foreign "browser:lambda:x=>x.currentSrc"
  prim__currentSrc : AnyPtr -> PrimIO AnyPtr
  
  export
  currentSrc :  Cast hTMLImageElement HTMLImageElement
             => ToJS HTMLImageElement
             => (obj : hTMLImageElement)
             -> IO String
  
  %foreign "browser:lambda:x=>x.naturalHeight"
  prim__naturalHeight : AnyPtr -> PrimIO AnyPtr
  
  export
  naturalHeight :  Cast hTMLImageElement HTMLImageElement
                => ToJS HTMLImageElement
                => (obj : hTMLImageElement)
                -> IO UInt32
  
  %foreign "browser:lambda:x=>x.naturalWidth"
  prim__naturalWidth : AnyPtr -> PrimIO AnyPtr
  
  export
  naturalWidth :  Cast hTMLImageElement HTMLImageElement
               => ToJS HTMLImageElement
               => (obj : hTMLImageElement)
               -> IO UInt32
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr
  
  export
  align :  Cast hTMLImageElement HTMLImageElement
        => ToJS HTMLImageElement
        => (obj : hTMLImageElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAlign :  Cast hTMLImageElement HTMLImageElement
           => ToJS HTMLImageElement
           => (obj : hTMLImageElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.alt"
  prim__alt : AnyPtr -> PrimIO AnyPtr
  
  export
  alt :  Cast hTMLImageElement HTMLImageElement
      => ToJS HTMLImageElement
      => (obj : hTMLImageElement)
      -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.alt = v}"
  prim__setAlt : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAlt :  Cast hTMLImageElement HTMLImageElement
         => ToJS HTMLImageElement
         => (obj : hTMLImageElement)
         -> (v : String)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.border"
  prim__border : AnyPtr -> PrimIO AnyPtr
  
  export
  border :  Cast hTMLImageElement HTMLImageElement
         => ToJS HTMLImageElement
         => (obj : hTMLImageElement)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.border = v}"
  prim__setBorder : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setBorder :  Cast hTMLImageElement HTMLImageElement
            => ToJS HTMLImageElement
            => (obj : hTMLImageElement)
            -> (v : String)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.crossOrigin"
  prim__crossOrigin : AnyPtr -> PrimIO AnyPtr
  
  export
  crossOrigin :  Cast hTMLImageElement HTMLImageElement
              => ToJS HTMLImageElement
              => (obj : hTMLImageElement)
              -> IO (Maybe String)
  
  %foreign "browser:lambda:(x,v)=>{x.crossOrigin = v}"
  prim__setCrossOrigin : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCrossOrigin :  Cast hTMLImageElement HTMLImageElement
                 => ToJS HTMLImageElement
                 => (obj : hTMLImageElement)
                 -> (v : Maybe String)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.decoding"
  prim__decoding : AnyPtr -> PrimIO AnyPtr
  
  export
  decoding :  Cast hTMLImageElement HTMLImageElement
           => ToJS HTMLImageElement
           => (obj : hTMLImageElement)
           -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.decoding = v}"
  prim__setDecoding : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDecoding :  Cast hTMLImageElement HTMLImageElement
              => ToJS HTMLImageElement
              => (obj : hTMLImageElement)
              -> (v : String)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr
  
  export
  height :  Cast hTMLImageElement HTMLImageElement
         => ToJS HTMLImageElement
         => (obj : hTMLImageElement)
         -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHeight :  Cast hTMLImageElement HTMLImageElement
            => ToJS HTMLImageElement
            => (obj : hTMLImageElement)
            -> (v : UInt32)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.hspace"
  prim__hspace : AnyPtr -> PrimIO AnyPtr
  
  export
  hspace :  Cast hTMLImageElement HTMLImageElement
         => ToJS HTMLImageElement
         => (obj : hTMLImageElement)
         -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.hspace = v}"
  prim__setHspace : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHspace :  Cast hTMLImageElement HTMLImageElement
            => ToJS HTMLImageElement
            => (obj : hTMLImageElement)
            -> (v : UInt32)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.isMap"
  prim__isMap : AnyPtr -> PrimIO AnyPtr
  
  export
  isMap :  Cast hTMLImageElement HTMLImageElement
        => ToJS HTMLImageElement
        => (obj : hTMLImageElement)
        -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.isMap = v}"
  prim__setIsMap : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setIsMap :  Cast hTMLImageElement HTMLImageElement
           => ToJS HTMLImageElement
           => (obj : hTMLImageElement)
           -> (v : Bool)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.loading"
  prim__loading : AnyPtr -> PrimIO AnyPtr
  
  export
  loading :  Cast hTMLImageElement HTMLImageElement
          => ToJS HTMLImageElement
          => (obj : hTMLImageElement)
          -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.loading = v}"
  prim__setLoading : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setLoading :  Cast hTMLImageElement HTMLImageElement
             => ToJS HTMLImageElement
             => (obj : hTMLImageElement)
             -> (v : String)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.longDesc"
  prim__longDesc : AnyPtr -> PrimIO AnyPtr
  
  export
  longDesc :  Cast hTMLImageElement HTMLImageElement
           => ToJS HTMLImageElement
           => (obj : hTMLImageElement)
           -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.longDesc = v}"
  prim__setLongDesc : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setLongDesc :  Cast hTMLImageElement HTMLImageElement
              => ToJS HTMLImageElement
              => (obj : hTMLImageElement)
              -> (v : String)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.lowsrc"
  prim__lowsrc : AnyPtr -> PrimIO AnyPtr
  
  export
  lowsrc :  Cast hTMLImageElement HTMLImageElement
         => ToJS HTMLImageElement
         => (obj : hTMLImageElement)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.lowsrc = v}"
  prim__setLowsrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setLowsrc :  Cast hTMLImageElement HTMLImageElement
            => ToJS HTMLImageElement
            => (obj : hTMLImageElement)
            -> (v : String)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr
  
  export
  name :  Cast hTMLImageElement HTMLImageElement
       => ToJS HTMLImageElement
       => (obj : hTMLImageElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setName :  Cast hTMLImageElement HTMLImageElement
          => ToJS HTMLImageElement
          => (obj : hTMLImageElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : AnyPtr -> PrimIO AnyPtr
  
  export
  referrerPolicy :  Cast hTMLImageElement HTMLImageElement
                 => ToJS HTMLImageElement
                 => (obj : hTMLImageElement)
                 -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy = v}"
  prim__setReferrerPolicy : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setReferrerPolicy :  Cast hTMLImageElement HTMLImageElement
                    => ToJS HTMLImageElement
                    => (obj : hTMLImageElement)
                    -> (v : String)
                    -> IO ()
  
  %foreign "browser:lambda:x=>x.sizes"
  prim__sizes : AnyPtr -> PrimIO AnyPtr
  
  export
  sizes :  Cast hTMLImageElement HTMLImageElement
        => ToJS HTMLImageElement
        => (obj : hTMLImageElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.sizes = v}"
  prim__setSizes : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSizes :  Cast hTMLImageElement HTMLImageElement
           => ToJS HTMLImageElement
           => (obj : hTMLImageElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.src"
  prim__src : AnyPtr -> PrimIO AnyPtr
  
  export
  src :  Cast hTMLImageElement HTMLImageElement
      => ToJS HTMLImageElement
      => (obj : hTMLImageElement)
      -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.src = v}"
  prim__setSrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSrc :  Cast hTMLImageElement HTMLImageElement
         => ToJS HTMLImageElement
         => (obj : hTMLImageElement)
         -> (v : String)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.srcset"
  prim__srcset : AnyPtr -> PrimIO AnyPtr
  
  export
  srcset :  Cast hTMLImageElement HTMLImageElement
         => ToJS HTMLImageElement
         => (obj : hTMLImageElement)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.srcset = v}"
  prim__setSrcset : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSrcset :  Cast hTMLImageElement HTMLImageElement
            => ToJS HTMLImageElement
            => (obj : hTMLImageElement)
            -> (v : String)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.useMap"
  prim__useMap : AnyPtr -> PrimIO AnyPtr
  
  export
  useMap :  Cast hTMLImageElement HTMLImageElement
         => ToJS HTMLImageElement
         => (obj : hTMLImageElement)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.useMap = v}"
  prim__setUseMap : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setUseMap :  Cast hTMLImageElement HTMLImageElement
            => ToJS HTMLImageElement
            => (obj : hTMLImageElement)
            -> (v : String)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.vspace"
  prim__vspace : AnyPtr -> PrimIO AnyPtr
  
  export
  vspace :  Cast hTMLImageElement HTMLImageElement
         => ToJS HTMLImageElement
         => (obj : hTMLImageElement)
         -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.vspace = v}"
  prim__setVspace : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setVspace :  Cast hTMLImageElement HTMLImageElement
            => ToJS HTMLImageElement
            => (obj : hTMLImageElement)
            -> (v : UInt32)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr
  
  export
  width :  Cast hTMLImageElement HTMLImageElement
        => ToJS HTMLImageElement
        => (obj : hTMLImageElement)
        -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setWidth :  Cast hTMLImageElement HTMLImageElement
           => ToJS HTMLImageElement
           => (obj : hTMLImageElement)
           -> (v : UInt32)
           -> IO ()

namespace HTMLInputElement
  
  %foreign "browser:lambda:x=>x.form"
  prim__form : AnyPtr -> PrimIO AnyPtr
  
  export
  form :  Cast hTMLInputElement HTMLInputElement
       => ToJS HTMLInputElement
       => (obj : hTMLInputElement)
       -> IO (Maybe HTMLFormElement)
  
  %foreign "browser:lambda:x=>x.labels"
  prim__labels : AnyPtr -> PrimIO AnyPtr
  
  export
  labels :  Cast hTMLInputElement HTMLInputElement
         => ToJS HTMLInputElement
         => (obj : hTMLInputElement)
         -> IO (Maybe NodeList)
  
  %foreign "browser:lambda:x=>x.list"
  prim__list : AnyPtr -> PrimIO AnyPtr
  
  export
  list :  Cast hTMLInputElement HTMLInputElement
       => ToJS HTMLInputElement
       => (obj : hTMLInputElement)
       -> IO (Maybe HTMLElement)
  
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : AnyPtr -> PrimIO AnyPtr
  
  export
  validationMessage :  Cast hTMLInputElement HTMLInputElement
                    => ToJS HTMLInputElement
                    => (obj : hTMLInputElement)
                    -> IO String
  
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : AnyPtr -> PrimIO AnyPtr
  
  export
  validity :  Cast hTMLInputElement HTMLInputElement
           => ToJS HTMLInputElement
           => (obj : hTMLInputElement)
           -> IO ValidityState
  
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : AnyPtr -> PrimIO AnyPtr
  
  export
  willValidate :  Cast hTMLInputElement HTMLInputElement
               => ToJS HTMLInputElement
               => (obj : hTMLInputElement)
               -> IO Bool
  
  %foreign "browser:lambda:x=>x.accept"
  prim__accept : AnyPtr -> PrimIO AnyPtr
  
  export
  accept :  Cast hTMLInputElement HTMLInputElement
         => ToJS HTMLInputElement
         => (obj : hTMLInputElement)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.accept = v}"
  prim__setAccept : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAccept :  Cast hTMLInputElement HTMLInputElement
            => ToJS HTMLInputElement
            => (obj : hTMLInputElement)
            -> (v : String)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr
  
  export
  align :  Cast hTMLInputElement HTMLInputElement
        => ToJS HTMLInputElement
        => (obj : hTMLInputElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAlign :  Cast hTMLInputElement HTMLInputElement
           => ToJS HTMLInputElement
           => (obj : hTMLInputElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.alt"
  prim__alt : AnyPtr -> PrimIO AnyPtr
  
  export
  alt :  Cast hTMLInputElement HTMLInputElement
      => ToJS HTMLInputElement
      => (obj : hTMLInputElement)
      -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.alt = v}"
  prim__setAlt : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAlt :  Cast hTMLInputElement HTMLInputElement
         => ToJS HTMLInputElement
         => (obj : hTMLInputElement)
         -> (v : String)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.autocomplete"
  prim__autocomplete : AnyPtr -> PrimIO AnyPtr
  
  export
  autocomplete :  Cast hTMLInputElement HTMLInputElement
               => ToJS HTMLInputElement
               => (obj : hTMLInputElement)
               -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.autocomplete = v}"
  prim__setAutocomplete : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAutocomplete :  Cast hTMLInputElement HTMLInputElement
                  => ToJS HTMLInputElement
                  => (obj : hTMLInputElement)
                  -> (v : String)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.checked"
  prim__checked : AnyPtr -> PrimIO AnyPtr
  
  export
  checked :  Cast hTMLInputElement HTMLInputElement
          => ToJS HTMLInputElement
          => (obj : hTMLInputElement)
          -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.checked = v}"
  prim__setChecked : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setChecked :  Cast hTMLInputElement HTMLInputElement
             => ToJS HTMLInputElement
             => (obj : hTMLInputElement)
             -> (v : Bool)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.defaultChecked"
  prim__defaultChecked : AnyPtr -> PrimIO AnyPtr
  
  export
  defaultChecked :  Cast hTMLInputElement HTMLInputElement
                 => ToJS HTMLInputElement
                 => (obj : hTMLInputElement)
                 -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.defaultChecked = v}"
  prim__setDefaultChecked : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDefaultChecked :  Cast hTMLInputElement HTMLInputElement
                    => ToJS HTMLInputElement
                    => (obj : hTMLInputElement)
                    -> (v : Bool)
                    -> IO ()
  
  %foreign "browser:lambda:x=>x.defaultValue"
  prim__defaultValue : AnyPtr -> PrimIO AnyPtr
  
  export
  defaultValue :  Cast hTMLInputElement HTMLInputElement
               => ToJS HTMLInputElement
               => (obj : hTMLInputElement)
               -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.defaultValue = v}"
  prim__setDefaultValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDefaultValue :  Cast hTMLInputElement HTMLInputElement
                  => ToJS HTMLInputElement
                  => (obj : hTMLInputElement)
                  -> (v : String)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.dirName"
  prim__dirName : AnyPtr -> PrimIO AnyPtr
  
  export
  dirName :  Cast hTMLInputElement HTMLInputElement
          => ToJS HTMLInputElement
          => (obj : hTMLInputElement)
          -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.dirName = v}"
  prim__setDirName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDirName :  Cast hTMLInputElement HTMLInputElement
             => ToJS HTMLInputElement
             => (obj : hTMLInputElement)
             -> (v : String)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : AnyPtr -> PrimIO AnyPtr
  
  export
  disabled :  Cast hTMLInputElement HTMLInputElement
           => ToJS HTMLInputElement
           => (obj : hTMLInputElement)
           -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.disabled = v}"
  prim__setDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDisabled :  Cast hTMLInputElement HTMLInputElement
              => ToJS HTMLInputElement
              => (obj : hTMLInputElement)
              -> (v : Bool)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.files"
  prim__files : AnyPtr -> PrimIO AnyPtr
  
  export
  files :  Cast hTMLInputElement HTMLInputElement
        => ToJS HTMLInputElement
        => (obj : hTMLInputElement)
        -> IO (Maybe FileList)
  
  %foreign "browser:lambda:(x,v)=>{x.files = v}"
  prim__setFiles : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setFiles :  Cast fileList FileList
           => ToJS FileList
           => Cast hTMLInputElement HTMLInputElement
           => ToJS HTMLInputElement
           => (obj : hTMLInputElement)
           -> (v : Maybe fileList)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.formAction"
  prim__formAction : AnyPtr -> PrimIO AnyPtr
  
  export
  formAction :  Cast hTMLInputElement HTMLInputElement
             => ToJS HTMLInputElement
             => (obj : hTMLInputElement)
             -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.formAction = v}"
  prim__setFormAction : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setFormAction :  Cast hTMLInputElement HTMLInputElement
                => ToJS HTMLInputElement
                => (obj : hTMLInputElement)
                -> (v : String)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.formEnctype"
  prim__formEnctype : AnyPtr -> PrimIO AnyPtr
  
  export
  formEnctype :  Cast hTMLInputElement HTMLInputElement
              => ToJS HTMLInputElement
              => (obj : hTMLInputElement)
              -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.formEnctype = v}"
  prim__setFormEnctype : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setFormEnctype :  Cast hTMLInputElement HTMLInputElement
                 => ToJS HTMLInputElement
                 => (obj : hTMLInputElement)
                 -> (v : String)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.formMethod"
  prim__formMethod : AnyPtr -> PrimIO AnyPtr
  
  export
  formMethod :  Cast hTMLInputElement HTMLInputElement
             => ToJS HTMLInputElement
             => (obj : hTMLInputElement)
             -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.formMethod = v}"
  prim__setFormMethod : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setFormMethod :  Cast hTMLInputElement HTMLInputElement
                => ToJS HTMLInputElement
                => (obj : hTMLInputElement)
                -> (v : String)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.formNoValidate"
  prim__formNoValidate : AnyPtr -> PrimIO AnyPtr
  
  export
  formNoValidate :  Cast hTMLInputElement HTMLInputElement
                 => ToJS HTMLInputElement
                 => (obj : hTMLInputElement)
                 -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.formNoValidate = v}"
  prim__setFormNoValidate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setFormNoValidate :  Cast hTMLInputElement HTMLInputElement
                    => ToJS HTMLInputElement
                    => (obj : hTMLInputElement)
                    -> (v : Bool)
                    -> IO ()
  
  %foreign "browser:lambda:x=>x.formTarget"
  prim__formTarget : AnyPtr -> PrimIO AnyPtr
  
  export
  formTarget :  Cast hTMLInputElement HTMLInputElement
             => ToJS HTMLInputElement
             => (obj : hTMLInputElement)
             -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.formTarget = v}"
  prim__setFormTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setFormTarget :  Cast hTMLInputElement HTMLInputElement
                => ToJS HTMLInputElement
                => (obj : hTMLInputElement)
                -> (v : String)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr
  
  export
  height :  Cast hTMLInputElement HTMLInputElement
         => ToJS HTMLInputElement
         => (obj : hTMLInputElement)
         -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHeight :  Cast hTMLInputElement HTMLInputElement
            => ToJS HTMLInputElement
            => (obj : hTMLInputElement)
            -> (v : UInt32)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.indeterminate"
  prim__indeterminate : AnyPtr -> PrimIO AnyPtr
  
  export
  indeterminate :  Cast hTMLInputElement HTMLInputElement
                => ToJS HTMLInputElement
                => (obj : hTMLInputElement)
                -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.indeterminate = v}"
  prim__setIndeterminate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setIndeterminate :  Cast hTMLInputElement HTMLInputElement
                   => ToJS HTMLInputElement
                   => (obj : hTMLInputElement)
                   -> (v : Bool)
                   -> IO ()
  
  %foreign "browser:lambda:x=>x.max"
  prim__max : AnyPtr -> PrimIO AnyPtr
  
  export
  max :  Cast hTMLInputElement HTMLInputElement
      => ToJS HTMLInputElement
      => (obj : hTMLInputElement)
      -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.max = v}"
  prim__setMax : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setMax :  Cast hTMLInputElement HTMLInputElement
         => ToJS HTMLInputElement
         => (obj : hTMLInputElement)
         -> (v : String)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.maxLength"
  prim__maxLength : AnyPtr -> PrimIO AnyPtr
  
  export
  maxLength :  Cast hTMLInputElement HTMLInputElement
            => ToJS HTMLInputElement
            => (obj : hTMLInputElement)
            -> IO Int32
  
  %foreign "browser:lambda:(x,v)=>{x.maxLength = v}"
  prim__setMaxLength : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setMaxLength :  Cast hTMLInputElement HTMLInputElement
               => ToJS HTMLInputElement
               => (obj : hTMLInputElement)
               -> (v : Int32)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.min"
  prim__min : AnyPtr -> PrimIO AnyPtr
  
  export
  min :  Cast hTMLInputElement HTMLInputElement
      => ToJS HTMLInputElement
      => (obj : hTMLInputElement)
      -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.min = v}"
  prim__setMin : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setMin :  Cast hTMLInputElement HTMLInputElement
         => ToJS HTMLInputElement
         => (obj : hTMLInputElement)
         -> (v : String)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.minLength"
  prim__minLength : AnyPtr -> PrimIO AnyPtr
  
  export
  minLength :  Cast hTMLInputElement HTMLInputElement
            => ToJS HTMLInputElement
            => (obj : hTMLInputElement)
            -> IO Int32
  
  %foreign "browser:lambda:(x,v)=>{x.minLength = v}"
  prim__setMinLength : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setMinLength :  Cast hTMLInputElement HTMLInputElement
               => ToJS HTMLInputElement
               => (obj : hTMLInputElement)
               -> (v : Int32)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.multiple"
  prim__multiple : AnyPtr -> PrimIO AnyPtr
  
  export
  multiple :  Cast hTMLInputElement HTMLInputElement
           => ToJS HTMLInputElement
           => (obj : hTMLInputElement)
           -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.multiple = v}"
  prim__setMultiple : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setMultiple :  Cast hTMLInputElement HTMLInputElement
              => ToJS HTMLInputElement
              => (obj : hTMLInputElement)
              -> (v : Bool)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr
  
  export
  name :  Cast hTMLInputElement HTMLInputElement
       => ToJS HTMLInputElement
       => (obj : hTMLInputElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setName :  Cast hTMLInputElement HTMLInputElement
          => ToJS HTMLInputElement
          => (obj : hTMLInputElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.pattern"
  prim__pattern : AnyPtr -> PrimIO AnyPtr
  
  export
  pattern :  Cast hTMLInputElement HTMLInputElement
          => ToJS HTMLInputElement
          => (obj : hTMLInputElement)
          -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.pattern = v}"
  prim__setPattern : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setPattern :  Cast hTMLInputElement HTMLInputElement
             => ToJS HTMLInputElement
             => (obj : hTMLInputElement)
             -> (v : String)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.placeholder"
  prim__placeholder : AnyPtr -> PrimIO AnyPtr
  
  export
  placeholder :  Cast hTMLInputElement HTMLInputElement
              => ToJS HTMLInputElement
              => (obj : hTMLInputElement)
              -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.placeholder = v}"
  prim__setPlaceholder : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setPlaceholder :  Cast hTMLInputElement HTMLInputElement
                 => ToJS HTMLInputElement
                 => (obj : hTMLInputElement)
                 -> (v : String)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.readOnly"
  prim__readOnly : AnyPtr -> PrimIO AnyPtr
  
  export
  readOnly :  Cast hTMLInputElement HTMLInputElement
           => ToJS HTMLInputElement
           => (obj : hTMLInputElement)
           -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.readOnly = v}"
  prim__setReadOnly : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setReadOnly :  Cast hTMLInputElement HTMLInputElement
              => ToJS HTMLInputElement
              => (obj : hTMLInputElement)
              -> (v : Bool)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.required"
  prim__required : AnyPtr -> PrimIO AnyPtr
  
  export
  required :  Cast hTMLInputElement HTMLInputElement
           => ToJS HTMLInputElement
           => (obj : hTMLInputElement)
           -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.required = v}"
  prim__setRequired : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setRequired :  Cast hTMLInputElement HTMLInputElement
              => ToJS HTMLInputElement
              => (obj : hTMLInputElement)
              -> (v : Bool)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.selectionDirection"
  prim__selectionDirection : AnyPtr -> PrimIO AnyPtr
  
  export
  selectionDirection :  Cast hTMLInputElement HTMLInputElement
                     => ToJS HTMLInputElement
                     => (obj : hTMLInputElement)
                     -> IO (Maybe String)
  
  %foreign "browser:lambda:(x,v)=>{x.selectionDirection = v}"
  prim__setSelectionDirection : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSelectionDirection :  Cast hTMLInputElement HTMLInputElement
                        => ToJS HTMLInputElement
                        => (obj : hTMLInputElement)
                        -> (v : Maybe String)
                        -> IO ()
  
  %foreign "browser:lambda:x=>x.selectionEnd"
  prim__selectionEnd : AnyPtr -> PrimIO AnyPtr
  
  export
  selectionEnd :  Cast hTMLInputElement HTMLInputElement
               => ToJS HTMLInputElement
               => (obj : hTMLInputElement)
               -> IO (Maybe UInt32)
  
  %foreign "browser:lambda:(x,v)=>{x.selectionEnd = v}"
  prim__setSelectionEnd : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSelectionEnd :  Cast hTMLInputElement HTMLInputElement
                  => ToJS HTMLInputElement
                  => (obj : hTMLInputElement)
                  -> (v : Maybe UInt32)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.selectionStart"
  prim__selectionStart : AnyPtr -> PrimIO AnyPtr
  
  export
  selectionStart :  Cast hTMLInputElement HTMLInputElement
                 => ToJS HTMLInputElement
                 => (obj : hTMLInputElement)
                 -> IO (Maybe UInt32)
  
  %foreign "browser:lambda:(x,v)=>{x.selectionStart = v}"
  prim__setSelectionStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSelectionStart :  Cast hTMLInputElement HTMLInputElement
                    => ToJS HTMLInputElement
                    => (obj : hTMLInputElement)
                    -> (v : Maybe UInt32)
                    -> IO ()
  
  %foreign "browser:lambda:x=>x.size"
  prim__size : AnyPtr -> PrimIO AnyPtr
  
  export
  size :  Cast hTMLInputElement HTMLInputElement
       => ToJS HTMLInputElement
       => (obj : hTMLInputElement)
       -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.size = v}"
  prim__setSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSize :  Cast hTMLInputElement HTMLInputElement
          => ToJS HTMLInputElement
          => (obj : hTMLInputElement)
          -> (v : UInt32)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.src"
  prim__src : AnyPtr -> PrimIO AnyPtr
  
  export
  src :  Cast hTMLInputElement HTMLInputElement
      => ToJS HTMLInputElement
      => (obj : hTMLInputElement)
      -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.src = v}"
  prim__setSrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSrc :  Cast hTMLInputElement HTMLInputElement
         => ToJS HTMLInputElement
         => (obj : hTMLInputElement)
         -> (v : String)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.step"
  prim__step : AnyPtr -> PrimIO AnyPtr
  
  export
  step :  Cast hTMLInputElement HTMLInputElement
       => ToJS HTMLInputElement
       => (obj : hTMLInputElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.step = v}"
  prim__setStep : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setStep :  Cast hTMLInputElement HTMLInputElement
          => ToJS HTMLInputElement
          => (obj : hTMLInputElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  export
  type :  Cast hTMLInputElement HTMLInputElement
       => ToJS HTMLInputElement
       => (obj : hTMLInputElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setType :  Cast hTMLInputElement HTMLInputElement
          => ToJS HTMLInputElement
          => (obj : hTMLInputElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.useMap"
  prim__useMap : AnyPtr -> PrimIO AnyPtr
  
  export
  useMap :  Cast hTMLInputElement HTMLInputElement
         => ToJS HTMLInputElement
         => (obj : hTMLInputElement)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.useMap = v}"
  prim__setUseMap : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setUseMap :  Cast hTMLInputElement HTMLInputElement
            => ToJS HTMLInputElement
            => (obj : hTMLInputElement)
            -> (v : String)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr
  
  export
  value :  Cast hTMLInputElement HTMLInputElement
        => ToJS HTMLInputElement
        => (obj : hTMLInputElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setValue :  Cast hTMLInputElement HTMLInputElement
           => ToJS HTMLInputElement
           => (obj : hTMLInputElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.valueAsDate"
  prim__valueAsDate : AnyPtr -> PrimIO AnyPtr
  
  export
  valueAsDate :  Cast hTMLInputElement HTMLInputElement
              => ToJS HTMLInputElement
              => (obj : hTMLInputElement)
              -> IO (Maybe JSObject)
  
  %foreign "browser:lambda:(x,v)=>{x.valueAsDate = v}"
  prim__setValueAsDate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setValueAsDate :  Cast hTMLInputElement HTMLInputElement
                 => ToJS HTMLInputElement
                 => (obj : hTMLInputElement)
                 -> (v : Maybe JSObject)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.valueAsNumber"
  prim__valueAsNumber : AnyPtr -> PrimIO AnyPtr
  
  export
  valueAsNumber :  Cast hTMLInputElement HTMLInputElement
                => ToJS HTMLInputElement
                => (obj : hTMLInputElement)
                -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.valueAsNumber = v}"
  prim__setValueAsNumber : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setValueAsNumber :  Cast hTMLInputElement HTMLInputElement
                   => ToJS HTMLInputElement
                   => (obj : hTMLInputElement)
                   -> (v : Double)
                   -> IO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr
  
  export
  width :  Cast hTMLInputElement HTMLInputElement
        => ToJS HTMLInputElement
        => (obj : hTMLInputElement)
        -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setWidth :  Cast hTMLInputElement HTMLInputElement
           => ToJS HTMLInputElement
           => (obj : hTMLInputElement)
           -> (v : UInt32)
           -> IO ()

namespace HTMLLIElement
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  export
  type :  Cast hTMLLIElement HTMLLIElement
       => ToJS HTMLLIElement
       => (obj : hTMLLIElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setType :  Cast hTMLLIElement HTMLLIElement
          => ToJS HTMLLIElement
          => (obj : hTMLLIElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr
  
  export
  value :  Cast hTMLLIElement HTMLLIElement
        => ToJS HTMLLIElement
        => (obj : hTMLLIElement)
        -> IO Int32
  
  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setValue :  Cast hTMLLIElement HTMLLIElement
           => ToJS HTMLLIElement
           => (obj : hTMLLIElement)
           -> (v : Int32)
           -> IO ()

namespace HTMLLabelElement
  
  %foreign "browser:lambda:x=>x.control"
  prim__control : AnyPtr -> PrimIO AnyPtr
  
  export
  control :  Cast hTMLLabelElement HTMLLabelElement
          => ToJS HTMLLabelElement
          => (obj : hTMLLabelElement)
          -> IO (Maybe HTMLElement)
  
  %foreign "browser:lambda:x=>x.form"
  prim__form : AnyPtr -> PrimIO AnyPtr
  
  export
  form :  Cast hTMLLabelElement HTMLLabelElement
       => ToJS HTMLLabelElement
       => (obj : hTMLLabelElement)
       -> IO (Maybe HTMLFormElement)
  
  %foreign "browser:lambda:x=>x.htmlFor"
  prim__htmlFor : AnyPtr -> PrimIO AnyPtr
  
  export
  htmlFor :  Cast hTMLLabelElement HTMLLabelElement
          => ToJS HTMLLabelElement
          => (obj : hTMLLabelElement)
          -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.htmlFor = v}"
  prim__setHtmlFor : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHtmlFor :  Cast hTMLLabelElement HTMLLabelElement
             => ToJS HTMLLabelElement
             => (obj : hTMLLabelElement)
             -> (v : String)
             -> IO ()

namespace HTMLLegendElement
  
  %foreign "browser:lambda:x=>x.form"
  prim__form : AnyPtr -> PrimIO AnyPtr
  
  export
  form :  Cast hTMLLegendElement HTMLLegendElement
       => ToJS HTMLLegendElement
       => (obj : hTMLLegendElement)
       -> IO (Maybe HTMLFormElement)
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr
  
  export
  align :  Cast hTMLLegendElement HTMLLegendElement
        => ToJS HTMLLegendElement
        => (obj : hTMLLegendElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAlign :  Cast hTMLLegendElement HTMLLegendElement
           => ToJS HTMLLegendElement
           => (obj : hTMLLegendElement)
           -> (v : String)
           -> IO ()

namespace HTMLLinkElement
  
  %foreign "browser:lambda:x=>x.relList"
  prim__relList : AnyPtr -> PrimIO AnyPtr
  
  export
  relList :  Cast hTMLLinkElement HTMLLinkElement
          => ToJS HTMLLinkElement
          => (obj : hTMLLinkElement)
          -> IO DOMTokenList
  
  %foreign "browser:lambda:x=>x.sizes"
  prim__sizes : AnyPtr -> PrimIO AnyPtr
  
  export
  sizes :  Cast hTMLLinkElement HTMLLinkElement
        => ToJS HTMLLinkElement
        => (obj : hTMLLinkElement)
        -> IO DOMTokenList
  
  %foreign "browser:lambda:x=>x.as"
  prim__as : AnyPtr -> PrimIO AnyPtr
  
  export
  as :  Cast hTMLLinkElement HTMLLinkElement
     => ToJS HTMLLinkElement
     => (obj : hTMLLinkElement)
     -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.as = v}"
  prim__setAs : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAs :  Cast hTMLLinkElement HTMLLinkElement
        => ToJS HTMLLinkElement
        => (obj : hTMLLinkElement)
        -> (v : String)
        -> IO ()
  
  %foreign "browser:lambda:x=>x.charset"
  prim__charset : AnyPtr -> PrimIO AnyPtr
  
  export
  charset :  Cast hTMLLinkElement HTMLLinkElement
          => ToJS HTMLLinkElement
          => (obj : hTMLLinkElement)
          -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.charset = v}"
  prim__setCharset : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCharset :  Cast hTMLLinkElement HTMLLinkElement
             => ToJS HTMLLinkElement
             => (obj : hTMLLinkElement)
             -> (v : String)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.crossOrigin"
  prim__crossOrigin : AnyPtr -> PrimIO AnyPtr
  
  export
  crossOrigin :  Cast hTMLLinkElement HTMLLinkElement
              => ToJS HTMLLinkElement
              => (obj : hTMLLinkElement)
              -> IO (Maybe String)
  
  %foreign "browser:lambda:(x,v)=>{x.crossOrigin = v}"
  prim__setCrossOrigin : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCrossOrigin :  Cast hTMLLinkElement HTMLLinkElement
                 => ToJS HTMLLinkElement
                 => (obj : hTMLLinkElement)
                 -> (v : Maybe String)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : AnyPtr -> PrimIO AnyPtr
  
  export
  disabled :  Cast hTMLLinkElement HTMLLinkElement
           => ToJS HTMLLinkElement
           => (obj : hTMLLinkElement)
           -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.disabled = v}"
  prim__setDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDisabled :  Cast hTMLLinkElement HTMLLinkElement
              => ToJS HTMLLinkElement
              => (obj : hTMLLinkElement)
              -> (v : Bool)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.href"
  prim__href : AnyPtr -> PrimIO AnyPtr
  
  export
  href :  Cast hTMLLinkElement HTMLLinkElement
       => ToJS HTMLLinkElement
       => (obj : hTMLLinkElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.href = v}"
  prim__setHref : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHref :  Cast hTMLLinkElement HTMLLinkElement
          => ToJS HTMLLinkElement
          => (obj : hTMLLinkElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.hreflang"
  prim__hreflang : AnyPtr -> PrimIO AnyPtr
  
  export
  hreflang :  Cast hTMLLinkElement HTMLLinkElement
           => ToJS HTMLLinkElement
           => (obj : hTMLLinkElement)
           -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.hreflang = v}"
  prim__setHreflang : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHreflang :  Cast hTMLLinkElement HTMLLinkElement
              => ToJS HTMLLinkElement
              => (obj : hTMLLinkElement)
              -> (v : String)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.imageSizes"
  prim__imageSizes : AnyPtr -> PrimIO AnyPtr
  
  export
  imageSizes :  Cast hTMLLinkElement HTMLLinkElement
             => ToJS HTMLLinkElement
             => (obj : hTMLLinkElement)
             -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.imageSizes = v}"
  prim__setImageSizes : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setImageSizes :  Cast hTMLLinkElement HTMLLinkElement
                => ToJS HTMLLinkElement
                => (obj : hTMLLinkElement)
                -> (v : String)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.imageSrcset"
  prim__imageSrcset : AnyPtr -> PrimIO AnyPtr
  
  export
  imageSrcset :  Cast hTMLLinkElement HTMLLinkElement
              => ToJS HTMLLinkElement
              => (obj : hTMLLinkElement)
              -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.imageSrcset = v}"
  prim__setImageSrcset : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setImageSrcset :  Cast hTMLLinkElement HTMLLinkElement
                 => ToJS HTMLLinkElement
                 => (obj : hTMLLinkElement)
                 -> (v : String)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.integrity"
  prim__integrity : AnyPtr -> PrimIO AnyPtr
  
  export
  integrity :  Cast hTMLLinkElement HTMLLinkElement
            => ToJS HTMLLinkElement
            => (obj : hTMLLinkElement)
            -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.integrity = v}"
  prim__setIntegrity : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setIntegrity :  Cast hTMLLinkElement HTMLLinkElement
               => ToJS HTMLLinkElement
               => (obj : hTMLLinkElement)
               -> (v : String)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.media"
  prim__media : AnyPtr -> PrimIO AnyPtr
  
  export
  media :  Cast hTMLLinkElement HTMLLinkElement
        => ToJS HTMLLinkElement
        => (obj : hTMLLinkElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.media = v}"
  prim__setMedia : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setMedia :  Cast hTMLLinkElement HTMLLinkElement
           => ToJS HTMLLinkElement
           => (obj : hTMLLinkElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : AnyPtr -> PrimIO AnyPtr
  
  export
  referrerPolicy :  Cast hTMLLinkElement HTMLLinkElement
                 => ToJS HTMLLinkElement
                 => (obj : hTMLLinkElement)
                 -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy = v}"
  prim__setReferrerPolicy : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setReferrerPolicy :  Cast hTMLLinkElement HTMLLinkElement
                    => ToJS HTMLLinkElement
                    => (obj : hTMLLinkElement)
                    -> (v : String)
                    -> IO ()
  
  %foreign "browser:lambda:x=>x.rel"
  prim__rel : AnyPtr -> PrimIO AnyPtr
  
  export
  rel :  Cast hTMLLinkElement HTMLLinkElement
      => ToJS HTMLLinkElement
      => (obj : hTMLLinkElement)
      -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.rel = v}"
  prim__setRel : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setRel :  Cast hTMLLinkElement HTMLLinkElement
         => ToJS HTMLLinkElement
         => (obj : hTMLLinkElement)
         -> (v : String)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.rev"
  prim__rev : AnyPtr -> PrimIO AnyPtr
  
  export
  rev :  Cast hTMLLinkElement HTMLLinkElement
      => ToJS HTMLLinkElement
      => (obj : hTMLLinkElement)
      -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.rev = v}"
  prim__setRev : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setRev :  Cast hTMLLinkElement HTMLLinkElement
         => ToJS HTMLLinkElement
         => (obj : hTMLLinkElement)
         -> (v : String)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr
  
  export
  target :  Cast hTMLLinkElement HTMLLinkElement
         => ToJS HTMLLinkElement
         => (obj : hTMLLinkElement)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.target = v}"
  prim__setTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setTarget :  Cast hTMLLinkElement HTMLLinkElement
            => ToJS HTMLLinkElement
            => (obj : hTMLLinkElement)
            -> (v : String)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  export
  type :  Cast hTMLLinkElement HTMLLinkElement
       => ToJS HTMLLinkElement
       => (obj : hTMLLinkElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setType :  Cast hTMLLinkElement HTMLLinkElement
          => ToJS HTMLLinkElement
          => (obj : hTMLLinkElement)
          -> (v : String)
          -> IO ()

namespace HTMLMapElement
  
  %foreign "browser:lambda:x=>x.areas"
  prim__areas : AnyPtr -> PrimIO AnyPtr
  
  export
  areas :  Cast hTMLMapElement HTMLMapElement
        => ToJS HTMLMapElement
        => (obj : hTMLMapElement)
        -> IO HTMLCollection
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr
  
  export
  name :  Cast hTMLMapElement HTMLMapElement
       => ToJS HTMLMapElement
       => (obj : hTMLMapElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setName :  Cast hTMLMapElement HTMLMapElement
          => ToJS HTMLMapElement
          => (obj : hTMLMapElement)
          -> (v : String)
          -> IO ()

namespace HTMLMarqueeElement
  
  %foreign "browser:lambda:x=>x.behavior"
  prim__behavior : AnyPtr -> PrimIO AnyPtr
  
  export
  behavior :  Cast hTMLMarqueeElement HTMLMarqueeElement
           => ToJS HTMLMarqueeElement
           => (obj : hTMLMarqueeElement)
           -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.behavior = v}"
  prim__setBehavior : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setBehavior :  Cast hTMLMarqueeElement HTMLMarqueeElement
              => ToJS HTMLMarqueeElement
              => (obj : hTMLMarqueeElement)
              -> (v : String)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.bgColor"
  prim__bgColor : AnyPtr -> PrimIO AnyPtr
  
  export
  bgColor :  Cast hTMLMarqueeElement HTMLMarqueeElement
          => ToJS HTMLMarqueeElement
          => (obj : hTMLMarqueeElement)
          -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.bgColor = v}"
  prim__setBgColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setBgColor :  Cast hTMLMarqueeElement HTMLMarqueeElement
             => ToJS HTMLMarqueeElement
             => (obj : hTMLMarqueeElement)
             -> (v : String)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.direction"
  prim__direction : AnyPtr -> PrimIO AnyPtr
  
  export
  direction :  Cast hTMLMarqueeElement HTMLMarqueeElement
            => ToJS HTMLMarqueeElement
            => (obj : hTMLMarqueeElement)
            -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.direction = v}"
  prim__setDirection : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDirection :  Cast hTMLMarqueeElement HTMLMarqueeElement
               => ToJS HTMLMarqueeElement
               => (obj : hTMLMarqueeElement)
               -> (v : String)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr
  
  export
  height :  Cast hTMLMarqueeElement HTMLMarqueeElement
         => ToJS HTMLMarqueeElement
         => (obj : hTMLMarqueeElement)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHeight :  Cast hTMLMarqueeElement HTMLMarqueeElement
            => ToJS HTMLMarqueeElement
            => (obj : hTMLMarqueeElement)
            -> (v : String)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.hspace"
  prim__hspace : AnyPtr -> PrimIO AnyPtr
  
  export
  hspace :  Cast hTMLMarqueeElement HTMLMarqueeElement
         => ToJS HTMLMarqueeElement
         => (obj : hTMLMarqueeElement)
         -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.hspace = v}"
  prim__setHspace : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHspace :  Cast hTMLMarqueeElement HTMLMarqueeElement
            => ToJS HTMLMarqueeElement
            => (obj : hTMLMarqueeElement)
            -> (v : UInt32)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.loop"
  prim__loop : AnyPtr -> PrimIO AnyPtr
  
  export
  loop :  Cast hTMLMarqueeElement HTMLMarqueeElement
       => ToJS HTMLMarqueeElement
       => (obj : hTMLMarqueeElement)
       -> IO Int32
  
  %foreign "browser:lambda:(x,v)=>{x.loop = v}"
  prim__setLoop : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setLoop :  Cast hTMLMarqueeElement HTMLMarqueeElement
          => ToJS HTMLMarqueeElement
          => (obj : hTMLMarqueeElement)
          -> (v : Int32)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.scrollAmount"
  prim__scrollAmount : AnyPtr -> PrimIO AnyPtr
  
  export
  scrollAmount :  Cast hTMLMarqueeElement HTMLMarqueeElement
               => ToJS HTMLMarqueeElement
               => (obj : hTMLMarqueeElement)
               -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.scrollAmount = v}"
  prim__setScrollAmount : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setScrollAmount :  Cast hTMLMarqueeElement HTMLMarqueeElement
                  => ToJS HTMLMarqueeElement
                  => (obj : hTMLMarqueeElement)
                  -> (v : UInt32)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.scrollDelay"
  prim__scrollDelay : AnyPtr -> PrimIO AnyPtr
  
  export
  scrollDelay :  Cast hTMLMarqueeElement HTMLMarqueeElement
              => ToJS HTMLMarqueeElement
              => (obj : hTMLMarqueeElement)
              -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.scrollDelay = v}"
  prim__setScrollDelay : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setScrollDelay :  Cast hTMLMarqueeElement HTMLMarqueeElement
                 => ToJS HTMLMarqueeElement
                 => (obj : hTMLMarqueeElement)
                 -> (v : UInt32)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.trueSpeed"
  prim__trueSpeed : AnyPtr -> PrimIO AnyPtr
  
  export
  trueSpeed :  Cast hTMLMarqueeElement HTMLMarqueeElement
            => ToJS HTMLMarqueeElement
            => (obj : hTMLMarqueeElement)
            -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.trueSpeed = v}"
  prim__setTrueSpeed : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setTrueSpeed :  Cast hTMLMarqueeElement HTMLMarqueeElement
               => ToJS HTMLMarqueeElement
               => (obj : hTMLMarqueeElement)
               -> (v : Bool)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.vspace"
  prim__vspace : AnyPtr -> PrimIO AnyPtr
  
  export
  vspace :  Cast hTMLMarqueeElement HTMLMarqueeElement
         => ToJS HTMLMarqueeElement
         => (obj : hTMLMarqueeElement)
         -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.vspace = v}"
  prim__setVspace : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setVspace :  Cast hTMLMarqueeElement HTMLMarqueeElement
            => ToJS HTMLMarqueeElement
            => (obj : hTMLMarqueeElement)
            -> (v : UInt32)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr
  
  export
  width :  Cast hTMLMarqueeElement HTMLMarqueeElement
        => ToJS HTMLMarqueeElement
        => (obj : hTMLMarqueeElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setWidth :  Cast hTMLMarqueeElement HTMLMarqueeElement
           => ToJS HTMLMarqueeElement
           => (obj : hTMLMarqueeElement)
           -> (v : String)
           -> IO ()

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
  audioTracks :  Cast hTMLMediaElement HTMLMediaElement
              => ToJS HTMLMediaElement
              => (obj : hTMLMediaElement)
              -> IO AudioTrackList
  
  %foreign "browser:lambda:x=>x.buffered"
  prim__buffered : AnyPtr -> PrimIO AnyPtr
  
  export
  buffered :  Cast hTMLMediaElement HTMLMediaElement
           => ToJS HTMLMediaElement
           => (obj : hTMLMediaElement)
           -> IO TimeRanges
  
  %foreign "browser:lambda:x=>x.currentSrc"
  prim__currentSrc : AnyPtr -> PrimIO AnyPtr
  
  export
  currentSrc :  Cast hTMLMediaElement HTMLMediaElement
             => ToJS HTMLMediaElement
             => (obj : hTMLMediaElement)
             -> IO String
  
  %foreign "browser:lambda:x=>x.duration"
  prim__duration : AnyPtr -> PrimIO AnyPtr
  
  export
  duration :  Cast hTMLMediaElement HTMLMediaElement
           => ToJS HTMLMediaElement
           => (obj : hTMLMediaElement)
           -> IO Double
  
  %foreign "browser:lambda:x=>x.ended"
  prim__ended : AnyPtr -> PrimIO AnyPtr
  
  export
  ended :  Cast hTMLMediaElement HTMLMediaElement
        => ToJS HTMLMediaElement
        => (obj : hTMLMediaElement)
        -> IO Bool
  
  %foreign "browser:lambda:x=>x.error"
  prim__error : AnyPtr -> PrimIO AnyPtr
  
  export
  error :  Cast hTMLMediaElement HTMLMediaElement
        => ToJS HTMLMediaElement
        => (obj : hTMLMediaElement)
        -> IO (Maybe MediaError)
  
  %foreign "browser:lambda:x=>x.networkState"
  prim__networkState : AnyPtr -> PrimIO AnyPtr
  
  export
  networkState :  Cast hTMLMediaElement HTMLMediaElement
               => ToJS HTMLMediaElement
               => (obj : hTMLMediaElement)
               -> IO UInt16
  
  %foreign "browser:lambda:x=>x.paused"
  prim__paused : AnyPtr -> PrimIO AnyPtr
  
  export
  paused :  Cast hTMLMediaElement HTMLMediaElement
         => ToJS HTMLMediaElement
         => (obj : hTMLMediaElement)
         -> IO Bool
  
  %foreign "browser:lambda:x=>x.played"
  prim__played : AnyPtr -> PrimIO AnyPtr
  
  export
  played :  Cast hTMLMediaElement HTMLMediaElement
         => ToJS HTMLMediaElement
         => (obj : hTMLMediaElement)
         -> IO TimeRanges
  
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : AnyPtr -> PrimIO AnyPtr
  
  export
  readyState :  Cast hTMLMediaElement HTMLMediaElement
             => ToJS HTMLMediaElement
             => (obj : hTMLMediaElement)
             -> IO UInt16
  
  %foreign "browser:lambda:x=>x.seekable"
  prim__seekable : AnyPtr -> PrimIO AnyPtr
  
  export
  seekable :  Cast hTMLMediaElement HTMLMediaElement
           => ToJS HTMLMediaElement
           => (obj : hTMLMediaElement)
           -> IO TimeRanges
  
  %foreign "browser:lambda:x=>x.seeking"
  prim__seeking : AnyPtr -> PrimIO AnyPtr
  
  export
  seeking :  Cast hTMLMediaElement HTMLMediaElement
          => ToJS HTMLMediaElement
          => (obj : hTMLMediaElement)
          -> IO Bool
  
  %foreign "browser:lambda:x=>x.textTracks"
  prim__textTracks : AnyPtr -> PrimIO AnyPtr
  
  export
  textTracks :  Cast hTMLMediaElement HTMLMediaElement
             => ToJS HTMLMediaElement
             => (obj : hTMLMediaElement)
             -> IO TextTrackList
  
  %foreign "browser:lambda:x=>x.videoTracks"
  prim__videoTracks : AnyPtr -> PrimIO AnyPtr
  
  export
  videoTracks :  Cast hTMLMediaElement HTMLMediaElement
              => ToJS HTMLMediaElement
              => (obj : hTMLMediaElement)
              -> IO VideoTrackList
  
  %foreign "browser:lambda:x=>x.autoplay"
  prim__autoplay : AnyPtr -> PrimIO AnyPtr
  
  export
  autoplay :  Cast hTMLMediaElement HTMLMediaElement
           => ToJS HTMLMediaElement
           => (obj : hTMLMediaElement)
           -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.autoplay = v}"
  prim__setAutoplay : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAutoplay :  Cast hTMLMediaElement HTMLMediaElement
              => ToJS HTMLMediaElement
              => (obj : hTMLMediaElement)
              -> (v : Bool)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.controls"
  prim__controls : AnyPtr -> PrimIO AnyPtr
  
  export
  controls :  Cast hTMLMediaElement HTMLMediaElement
           => ToJS HTMLMediaElement
           => (obj : hTMLMediaElement)
           -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.controls = v}"
  prim__setControls : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setControls :  Cast hTMLMediaElement HTMLMediaElement
              => ToJS HTMLMediaElement
              => (obj : hTMLMediaElement)
              -> (v : Bool)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.crossOrigin"
  prim__crossOrigin : AnyPtr -> PrimIO AnyPtr
  
  export
  crossOrigin :  Cast hTMLMediaElement HTMLMediaElement
              => ToJS HTMLMediaElement
              => (obj : hTMLMediaElement)
              -> IO (Maybe String)
  
  %foreign "browser:lambda:(x,v)=>{x.crossOrigin = v}"
  prim__setCrossOrigin : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCrossOrigin :  Cast hTMLMediaElement HTMLMediaElement
                 => ToJS HTMLMediaElement
                 => (obj : hTMLMediaElement)
                 -> (v : Maybe String)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.currentTime"
  prim__currentTime : AnyPtr -> PrimIO AnyPtr
  
  export
  currentTime :  Cast hTMLMediaElement HTMLMediaElement
              => ToJS HTMLMediaElement
              => (obj : hTMLMediaElement)
              -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.currentTime = v}"
  prim__setCurrentTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCurrentTime :  Cast hTMLMediaElement HTMLMediaElement
                 => ToJS HTMLMediaElement
                 => (obj : hTMLMediaElement)
                 -> (v : Double)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.defaultMuted"
  prim__defaultMuted : AnyPtr -> PrimIO AnyPtr
  
  export
  defaultMuted :  Cast hTMLMediaElement HTMLMediaElement
               => ToJS HTMLMediaElement
               => (obj : hTMLMediaElement)
               -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.defaultMuted = v}"
  prim__setDefaultMuted : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDefaultMuted :  Cast hTMLMediaElement HTMLMediaElement
                  => ToJS HTMLMediaElement
                  => (obj : hTMLMediaElement)
                  -> (v : Bool)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.defaultPlaybackRate"
  prim__defaultPlaybackRate : AnyPtr -> PrimIO AnyPtr
  
  export
  defaultPlaybackRate :  Cast hTMLMediaElement HTMLMediaElement
                      => ToJS HTMLMediaElement
                      => (obj : hTMLMediaElement)
                      -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.defaultPlaybackRate = v}"
  prim__setDefaultPlaybackRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDefaultPlaybackRate :  Cast hTMLMediaElement HTMLMediaElement
                         => ToJS HTMLMediaElement
                         => (obj : hTMLMediaElement)
                         -> (v : Double)
                         -> IO ()
  
  %foreign "browser:lambda:x=>x.loop"
  prim__loop : AnyPtr -> PrimIO AnyPtr
  
  export
  loop :  Cast hTMLMediaElement HTMLMediaElement
       => ToJS HTMLMediaElement
       => (obj : hTMLMediaElement)
       -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.loop = v}"
  prim__setLoop : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setLoop :  Cast hTMLMediaElement HTMLMediaElement
          => ToJS HTMLMediaElement
          => (obj : hTMLMediaElement)
          -> (v : Bool)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.muted"
  prim__muted : AnyPtr -> PrimIO AnyPtr
  
  export
  muted :  Cast hTMLMediaElement HTMLMediaElement
        => ToJS HTMLMediaElement
        => (obj : hTMLMediaElement)
        -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.muted = v}"
  prim__setMuted : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setMuted :  Cast hTMLMediaElement HTMLMediaElement
           => ToJS HTMLMediaElement
           => (obj : hTMLMediaElement)
           -> (v : Bool)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.playbackRate"
  prim__playbackRate : AnyPtr -> PrimIO AnyPtr
  
  export
  playbackRate :  Cast hTMLMediaElement HTMLMediaElement
               => ToJS HTMLMediaElement
               => (obj : hTMLMediaElement)
               -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.playbackRate = v}"
  prim__setPlaybackRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setPlaybackRate :  Cast hTMLMediaElement HTMLMediaElement
                  => ToJS HTMLMediaElement
                  => (obj : hTMLMediaElement)
                  -> (v : Double)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.preload"
  prim__preload : AnyPtr -> PrimIO AnyPtr
  
  export
  preload :  Cast hTMLMediaElement HTMLMediaElement
          => ToJS HTMLMediaElement
          => (obj : hTMLMediaElement)
          -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.preload = v}"
  prim__setPreload : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setPreload :  Cast hTMLMediaElement HTMLMediaElement
             => ToJS HTMLMediaElement
             => (obj : hTMLMediaElement)
             -> (v : String)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.preservesPitch"
  prim__preservesPitch : AnyPtr -> PrimIO AnyPtr
  
  export
  preservesPitch :  Cast hTMLMediaElement HTMLMediaElement
                 => ToJS HTMLMediaElement
                 => (obj : hTMLMediaElement)
                 -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.preservesPitch = v}"
  prim__setPreservesPitch : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setPreservesPitch :  Cast hTMLMediaElement HTMLMediaElement
                    => ToJS HTMLMediaElement
                    => (obj : hTMLMediaElement)
                    -> (v : Bool)
                    -> IO ()
  
  %foreign "browser:lambda:x=>x.src"
  prim__src : AnyPtr -> PrimIO AnyPtr
  
  export
  src :  Cast hTMLMediaElement HTMLMediaElement
      => ToJS HTMLMediaElement
      => (obj : hTMLMediaElement)
      -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.src = v}"
  prim__setSrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSrc :  Cast hTMLMediaElement HTMLMediaElement
         => ToJS HTMLMediaElement
         => (obj : hTMLMediaElement)
         -> (v : String)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.srcObject"
  prim__srcObject : AnyPtr -> PrimIO AnyPtr
  
  export
  srcObject :  Cast hTMLMediaElement HTMLMediaElement
            => ToJS HTMLMediaElement
            => (obj : hTMLMediaElement)
            -> IO (Maybe MediaProvider)
  
  %foreign "browser:lambda:(x,v)=>{x.srcObject = v}"
  prim__setSrcObject : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSrcObject :  Cast hTMLMediaElement HTMLMediaElement
               => ToJS HTMLMediaElement
               => Cast mediaProvider MediaProvider
               => ToJS MediaProvider
               => (obj : hTMLMediaElement)
               -> (v : Maybe mediaProvider)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.volume"
  prim__volume : AnyPtr -> PrimIO AnyPtr
  
  export
  volume :  Cast hTMLMediaElement HTMLMediaElement
         => ToJS HTMLMediaElement
         => (obj : hTMLMediaElement)
         -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.volume = v}"
  prim__setVolume : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setVolume :  Cast hTMLMediaElement HTMLMediaElement
            => ToJS HTMLMediaElement
            => (obj : hTMLMediaElement)
            -> (v : Double)
            -> IO ()

namespace HTMLMenuElement
  
  %foreign "browser:lambda:x=>x.compact"
  prim__compact : AnyPtr -> PrimIO AnyPtr
  
  export
  compact :  Cast hTMLMenuElement HTMLMenuElement
          => ToJS HTMLMenuElement
          => (obj : hTMLMenuElement)
          -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.compact = v}"
  prim__setCompact : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCompact :  Cast hTMLMenuElement HTMLMenuElement
             => ToJS HTMLMenuElement
             => (obj : hTMLMenuElement)
             -> (v : Bool)
             -> IO ()

namespace HTMLMetaElement
  
  %foreign "browser:lambda:x=>x.content"
  prim__content : AnyPtr -> PrimIO AnyPtr
  
  export
  content :  Cast hTMLMetaElement HTMLMetaElement
          => ToJS HTMLMetaElement
          => (obj : hTMLMetaElement)
          -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.content = v}"
  prim__setContent : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setContent :  Cast hTMLMetaElement HTMLMetaElement
             => ToJS HTMLMetaElement
             => (obj : hTMLMetaElement)
             -> (v : String)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.httpEquiv"
  prim__httpEquiv : AnyPtr -> PrimIO AnyPtr
  
  export
  httpEquiv :  Cast hTMLMetaElement HTMLMetaElement
            => ToJS HTMLMetaElement
            => (obj : hTMLMetaElement)
            -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.httpEquiv = v}"
  prim__setHttpEquiv : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHttpEquiv :  Cast hTMLMetaElement HTMLMetaElement
               => ToJS HTMLMetaElement
               => (obj : hTMLMetaElement)
               -> (v : String)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr
  
  export
  name :  Cast hTMLMetaElement HTMLMetaElement
       => ToJS HTMLMetaElement
       => (obj : hTMLMetaElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setName :  Cast hTMLMetaElement HTMLMetaElement
          => ToJS HTMLMetaElement
          => (obj : hTMLMetaElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.scheme"
  prim__scheme : AnyPtr -> PrimIO AnyPtr
  
  export
  scheme :  Cast hTMLMetaElement HTMLMetaElement
         => ToJS HTMLMetaElement
         => (obj : hTMLMetaElement)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.scheme = v}"
  prim__setScheme : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setScheme :  Cast hTMLMetaElement HTMLMetaElement
            => ToJS HTMLMetaElement
            => (obj : hTMLMetaElement)
            -> (v : String)
            -> IO ()

namespace HTMLMeterElement
  
  %foreign "browser:lambda:x=>x.labels"
  prim__labels : AnyPtr -> PrimIO AnyPtr
  
  export
  labels :  Cast hTMLMeterElement HTMLMeterElement
         => ToJS HTMLMeterElement
         => (obj : hTMLMeterElement)
         -> IO NodeList
  
  %foreign "browser:lambda:x=>x.high"
  prim__high : AnyPtr -> PrimIO AnyPtr
  
  export
  high :  Cast hTMLMeterElement HTMLMeterElement
       => ToJS HTMLMeterElement
       => (obj : hTMLMeterElement)
       -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.high = v}"
  prim__setHigh : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHigh :  Cast hTMLMeterElement HTMLMeterElement
          => ToJS HTMLMeterElement
          => (obj : hTMLMeterElement)
          -> (v : Double)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.low"
  prim__low : AnyPtr -> PrimIO AnyPtr
  
  export
  low :  Cast hTMLMeterElement HTMLMeterElement
      => ToJS HTMLMeterElement
      => (obj : hTMLMeterElement)
      -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.low = v}"
  prim__setLow : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setLow :  Cast hTMLMeterElement HTMLMeterElement
         => ToJS HTMLMeterElement
         => (obj : hTMLMeterElement)
         -> (v : Double)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.max"
  prim__max : AnyPtr -> PrimIO AnyPtr
  
  export
  max :  Cast hTMLMeterElement HTMLMeterElement
      => ToJS HTMLMeterElement
      => (obj : hTMLMeterElement)
      -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.max = v}"
  prim__setMax : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setMax :  Cast hTMLMeterElement HTMLMeterElement
         => ToJS HTMLMeterElement
         => (obj : hTMLMeterElement)
         -> (v : Double)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.min"
  prim__min : AnyPtr -> PrimIO AnyPtr
  
  export
  min :  Cast hTMLMeterElement HTMLMeterElement
      => ToJS HTMLMeterElement
      => (obj : hTMLMeterElement)
      -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.min = v}"
  prim__setMin : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setMin :  Cast hTMLMeterElement HTMLMeterElement
         => ToJS HTMLMeterElement
         => (obj : hTMLMeterElement)
         -> (v : Double)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.optimum"
  prim__optimum : AnyPtr -> PrimIO AnyPtr
  
  export
  optimum :  Cast hTMLMeterElement HTMLMeterElement
          => ToJS HTMLMeterElement
          => (obj : hTMLMeterElement)
          -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.optimum = v}"
  prim__setOptimum : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOptimum :  Cast hTMLMeterElement HTMLMeterElement
             => ToJS HTMLMeterElement
             => (obj : hTMLMeterElement)
             -> (v : Double)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr
  
  export
  value :  Cast hTMLMeterElement HTMLMeterElement
        => ToJS HTMLMeterElement
        => (obj : hTMLMeterElement)
        -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setValue :  Cast hTMLMeterElement HTMLMeterElement
           => ToJS HTMLMeterElement
           => (obj : hTMLMeterElement)
           -> (v : Double)
           -> IO ()

namespace HTMLModElement
  
  %foreign "browser:lambda:x=>x.cite"
  prim__cite : AnyPtr -> PrimIO AnyPtr
  
  export
  cite :  Cast hTMLModElement HTMLModElement
       => ToJS HTMLModElement
       => (obj : hTMLModElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.cite = v}"
  prim__setCite : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCite :  Cast hTMLModElement HTMLModElement
          => ToJS HTMLModElement
          => (obj : hTMLModElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.dateTime"
  prim__dateTime : AnyPtr -> PrimIO AnyPtr
  
  export
  dateTime :  Cast hTMLModElement HTMLModElement
           => ToJS HTMLModElement
           => (obj : hTMLModElement)
           -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.dateTime = v}"
  prim__setDateTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDateTime :  Cast hTMLModElement HTMLModElement
              => ToJS HTMLModElement
              => (obj : hTMLModElement)
              -> (v : String)
              -> IO ()

namespace HTMLOListElement
  
  %foreign "browser:lambda:x=>x.compact"
  prim__compact : AnyPtr -> PrimIO AnyPtr
  
  export
  compact :  Cast hTMLOListElement HTMLOListElement
          => ToJS HTMLOListElement
          => (obj : hTMLOListElement)
          -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.compact = v}"
  prim__setCompact : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCompact :  Cast hTMLOListElement HTMLOListElement
             => ToJS HTMLOListElement
             => (obj : hTMLOListElement)
             -> (v : Bool)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.reversed"
  prim__reversed : AnyPtr -> PrimIO AnyPtr
  
  export
  reversed :  Cast hTMLOListElement HTMLOListElement
           => ToJS HTMLOListElement
           => (obj : hTMLOListElement)
           -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.reversed = v}"
  prim__setReversed : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setReversed :  Cast hTMLOListElement HTMLOListElement
              => ToJS HTMLOListElement
              => (obj : hTMLOListElement)
              -> (v : Bool)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.start"
  prim__start : AnyPtr -> PrimIO AnyPtr
  
  export
  start :  Cast hTMLOListElement HTMLOListElement
        => ToJS HTMLOListElement
        => (obj : hTMLOListElement)
        -> IO Int32
  
  %foreign "browser:lambda:(x,v)=>{x.start = v}"
  prim__setStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setStart :  Cast hTMLOListElement HTMLOListElement
           => ToJS HTMLOListElement
           => (obj : hTMLOListElement)
           -> (v : Int32)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  export
  type :  Cast hTMLOListElement HTMLOListElement
       => ToJS HTMLOListElement
       => (obj : hTMLOListElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setType :  Cast hTMLOListElement HTMLOListElement
          => ToJS HTMLOListElement
          => (obj : hTMLOListElement)
          -> (v : String)
          -> IO ()

namespace HTMLObjectElement
  
  %foreign "browser:lambda:x=>x.contentDocument"
  prim__contentDocument : AnyPtr -> PrimIO AnyPtr
  
  export
  contentDocument :  Cast hTMLObjectElement HTMLObjectElement
                  => ToJS HTMLObjectElement
                  => (obj : hTMLObjectElement)
                  -> IO (Maybe Document)
  
  %foreign "browser:lambda:x=>x.contentWindow"
  prim__contentWindow : AnyPtr -> PrimIO AnyPtr
  
  export
  contentWindow :  Cast hTMLObjectElement HTMLObjectElement
                => ToJS HTMLObjectElement
                => (obj : hTMLObjectElement)
                -> IO (Maybe WindowProxy)
  
  %foreign "browser:lambda:x=>x.form"
  prim__form : AnyPtr -> PrimIO AnyPtr
  
  export
  form :  Cast hTMLObjectElement HTMLObjectElement
       => ToJS HTMLObjectElement
       => (obj : hTMLObjectElement)
       -> IO (Maybe HTMLFormElement)
  
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : AnyPtr -> PrimIO AnyPtr
  
  export
  validationMessage :  Cast hTMLObjectElement HTMLObjectElement
                    => ToJS HTMLObjectElement
                    => (obj : hTMLObjectElement)
                    -> IO String
  
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : AnyPtr -> PrimIO AnyPtr
  
  export
  validity :  Cast hTMLObjectElement HTMLObjectElement
           => ToJS HTMLObjectElement
           => (obj : hTMLObjectElement)
           -> IO ValidityState
  
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : AnyPtr -> PrimIO AnyPtr
  
  export
  willValidate :  Cast hTMLObjectElement HTMLObjectElement
               => ToJS HTMLObjectElement
               => (obj : hTMLObjectElement)
               -> IO Bool
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr
  
  export
  align :  Cast hTMLObjectElement HTMLObjectElement
        => ToJS HTMLObjectElement
        => (obj : hTMLObjectElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAlign :  Cast hTMLObjectElement HTMLObjectElement
           => ToJS HTMLObjectElement
           => (obj : hTMLObjectElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.archive"
  prim__archive : AnyPtr -> PrimIO AnyPtr
  
  export
  archive :  Cast hTMLObjectElement HTMLObjectElement
          => ToJS HTMLObjectElement
          => (obj : hTMLObjectElement)
          -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.archive = v}"
  prim__setArchive : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setArchive :  Cast hTMLObjectElement HTMLObjectElement
             => ToJS HTMLObjectElement
             => (obj : hTMLObjectElement)
             -> (v : String)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.border"
  prim__border : AnyPtr -> PrimIO AnyPtr
  
  export
  border :  Cast hTMLObjectElement HTMLObjectElement
         => ToJS HTMLObjectElement
         => (obj : hTMLObjectElement)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.border = v}"
  prim__setBorder : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setBorder :  Cast hTMLObjectElement HTMLObjectElement
            => ToJS HTMLObjectElement
            => (obj : hTMLObjectElement)
            -> (v : String)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.code"
  prim__code : AnyPtr -> PrimIO AnyPtr
  
  export
  code :  Cast hTMLObjectElement HTMLObjectElement
       => ToJS HTMLObjectElement
       => (obj : hTMLObjectElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.code = v}"
  prim__setCode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCode :  Cast hTMLObjectElement HTMLObjectElement
          => ToJS HTMLObjectElement
          => (obj : hTMLObjectElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.codeBase"
  prim__codeBase : AnyPtr -> PrimIO AnyPtr
  
  export
  codeBase :  Cast hTMLObjectElement HTMLObjectElement
           => ToJS HTMLObjectElement
           => (obj : hTMLObjectElement)
           -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.codeBase = v}"
  prim__setCodeBase : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCodeBase :  Cast hTMLObjectElement HTMLObjectElement
              => ToJS HTMLObjectElement
              => (obj : hTMLObjectElement)
              -> (v : String)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.codeType"
  prim__codeType : AnyPtr -> PrimIO AnyPtr
  
  export
  codeType :  Cast hTMLObjectElement HTMLObjectElement
           => ToJS HTMLObjectElement
           => (obj : hTMLObjectElement)
           -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.codeType = v}"
  prim__setCodeType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCodeType :  Cast hTMLObjectElement HTMLObjectElement
              => ToJS HTMLObjectElement
              => (obj : hTMLObjectElement)
              -> (v : String)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.data"
  prim__data_ : AnyPtr -> PrimIO AnyPtr
  
  export
  data_ :  Cast hTMLObjectElement HTMLObjectElement
        => ToJS HTMLObjectElement
        => (obj : hTMLObjectElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.data = v}"
  prim__setData : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setData :  Cast hTMLObjectElement HTMLObjectElement
          => ToJS HTMLObjectElement
          => (obj : hTMLObjectElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.declare"
  prim__declare : AnyPtr -> PrimIO AnyPtr
  
  export
  declare :  Cast hTMLObjectElement HTMLObjectElement
          => ToJS HTMLObjectElement
          => (obj : hTMLObjectElement)
          -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.declare = v}"
  prim__setDeclare : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDeclare :  Cast hTMLObjectElement HTMLObjectElement
             => ToJS HTMLObjectElement
             => (obj : hTMLObjectElement)
             -> (v : Bool)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr
  
  export
  height :  Cast hTMLObjectElement HTMLObjectElement
         => ToJS HTMLObjectElement
         => (obj : hTMLObjectElement)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHeight :  Cast hTMLObjectElement HTMLObjectElement
            => ToJS HTMLObjectElement
            => (obj : hTMLObjectElement)
            -> (v : String)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.hspace"
  prim__hspace : AnyPtr -> PrimIO AnyPtr
  
  export
  hspace :  Cast hTMLObjectElement HTMLObjectElement
         => ToJS HTMLObjectElement
         => (obj : hTMLObjectElement)
         -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.hspace = v}"
  prim__setHspace : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHspace :  Cast hTMLObjectElement HTMLObjectElement
            => ToJS HTMLObjectElement
            => (obj : hTMLObjectElement)
            -> (v : UInt32)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr
  
  export
  name :  Cast hTMLObjectElement HTMLObjectElement
       => ToJS HTMLObjectElement
       => (obj : hTMLObjectElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setName :  Cast hTMLObjectElement HTMLObjectElement
          => ToJS HTMLObjectElement
          => (obj : hTMLObjectElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.standby"
  prim__standby : AnyPtr -> PrimIO AnyPtr
  
  export
  standby :  Cast hTMLObjectElement HTMLObjectElement
          => ToJS HTMLObjectElement
          => (obj : hTMLObjectElement)
          -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.standby = v}"
  prim__setStandby : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setStandby :  Cast hTMLObjectElement HTMLObjectElement
             => ToJS HTMLObjectElement
             => (obj : hTMLObjectElement)
             -> (v : String)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  export
  type :  Cast hTMLObjectElement HTMLObjectElement
       => ToJS HTMLObjectElement
       => (obj : hTMLObjectElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setType :  Cast hTMLObjectElement HTMLObjectElement
          => ToJS HTMLObjectElement
          => (obj : hTMLObjectElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.useMap"
  prim__useMap : AnyPtr -> PrimIO AnyPtr
  
  export
  useMap :  Cast hTMLObjectElement HTMLObjectElement
         => ToJS HTMLObjectElement
         => (obj : hTMLObjectElement)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.useMap = v}"
  prim__setUseMap : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setUseMap :  Cast hTMLObjectElement HTMLObjectElement
            => ToJS HTMLObjectElement
            => (obj : hTMLObjectElement)
            -> (v : String)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.vspace"
  prim__vspace : AnyPtr -> PrimIO AnyPtr
  
  export
  vspace :  Cast hTMLObjectElement HTMLObjectElement
         => ToJS HTMLObjectElement
         => (obj : hTMLObjectElement)
         -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.vspace = v}"
  prim__setVspace : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setVspace :  Cast hTMLObjectElement HTMLObjectElement
            => ToJS HTMLObjectElement
            => (obj : hTMLObjectElement)
            -> (v : UInt32)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr
  
  export
  width :  Cast hTMLObjectElement HTMLObjectElement
        => ToJS HTMLObjectElement
        => (obj : hTMLObjectElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setWidth :  Cast hTMLObjectElement HTMLObjectElement
           => ToJS HTMLObjectElement
           => (obj : hTMLObjectElement)
           -> (v : String)
           -> IO ()

namespace HTMLOptGroupElement
  
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : AnyPtr -> PrimIO AnyPtr
  
  export
  disabled :  Cast hTMLOptGroupElement HTMLOptGroupElement
           => ToJS HTMLOptGroupElement
           => (obj : hTMLOptGroupElement)
           -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.disabled = v}"
  prim__setDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDisabled :  Cast hTMLOptGroupElement HTMLOptGroupElement
              => ToJS HTMLOptGroupElement
              => (obj : hTMLOptGroupElement)
              -> (v : Bool)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.label"
  prim__label : AnyPtr -> PrimIO AnyPtr
  
  export
  label :  Cast hTMLOptGroupElement HTMLOptGroupElement
        => ToJS HTMLOptGroupElement
        => (obj : hTMLOptGroupElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.label = v}"
  prim__setLabel : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setLabel :  Cast hTMLOptGroupElement HTMLOptGroupElement
           => ToJS HTMLOptGroupElement
           => (obj : hTMLOptGroupElement)
           -> (v : String)
           -> IO ()

namespace HTMLOptionElement
  
  %foreign "browser:lambda:x=>x.form"
  prim__form : AnyPtr -> PrimIO AnyPtr
  
  export
  form :  Cast hTMLOptionElement HTMLOptionElement
       => ToJS HTMLOptionElement
       => (obj : hTMLOptionElement)
       -> IO (Maybe HTMLFormElement)
  
  %foreign "browser:lambda:x=>x.index"
  prim__index : AnyPtr -> PrimIO AnyPtr
  
  export
  index :  Cast hTMLOptionElement HTMLOptionElement
        => ToJS HTMLOptionElement
        => (obj : hTMLOptionElement)
        -> IO Int32
  
  %foreign "browser:lambda:x=>x.defaultSelected"
  prim__defaultSelected : AnyPtr -> PrimIO AnyPtr
  
  export
  defaultSelected :  Cast hTMLOptionElement HTMLOptionElement
                  => ToJS HTMLOptionElement
                  => (obj : hTMLOptionElement)
                  -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.defaultSelected = v}"
  prim__setDefaultSelected : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDefaultSelected :  Cast hTMLOptionElement HTMLOptionElement
                     => ToJS HTMLOptionElement
                     => (obj : hTMLOptionElement)
                     -> (v : Bool)
                     -> IO ()
  
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : AnyPtr -> PrimIO AnyPtr
  
  export
  disabled :  Cast hTMLOptionElement HTMLOptionElement
           => ToJS HTMLOptionElement
           => (obj : hTMLOptionElement)
           -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.disabled = v}"
  prim__setDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDisabled :  Cast hTMLOptionElement HTMLOptionElement
              => ToJS HTMLOptionElement
              => (obj : hTMLOptionElement)
              -> (v : Bool)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.label"
  prim__label : AnyPtr -> PrimIO AnyPtr
  
  export
  label :  Cast hTMLOptionElement HTMLOptionElement
        => ToJS HTMLOptionElement
        => (obj : hTMLOptionElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.label = v}"
  prim__setLabel : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setLabel :  Cast hTMLOptionElement HTMLOptionElement
           => ToJS HTMLOptionElement
           => (obj : hTMLOptionElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.selected"
  prim__selected : AnyPtr -> PrimIO AnyPtr
  
  export
  selected :  Cast hTMLOptionElement HTMLOptionElement
           => ToJS HTMLOptionElement
           => (obj : hTMLOptionElement)
           -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.selected = v}"
  prim__setSelected : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSelected :  Cast hTMLOptionElement HTMLOptionElement
              => ToJS HTMLOptionElement
              => (obj : hTMLOptionElement)
              -> (v : Bool)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.text"
  prim__text : AnyPtr -> PrimIO AnyPtr
  
  export
  text :  Cast hTMLOptionElement HTMLOptionElement
       => ToJS HTMLOptionElement
       => (obj : hTMLOptionElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.text = v}"
  prim__setText : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setText :  Cast hTMLOptionElement HTMLOptionElement
          => ToJS HTMLOptionElement
          => (obj : hTMLOptionElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr
  
  export
  value :  Cast hTMLOptionElement HTMLOptionElement
        => ToJS HTMLOptionElement
        => (obj : hTMLOptionElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setValue :  Cast hTMLOptionElement HTMLOptionElement
           => ToJS HTMLOptionElement
           => (obj : hTMLOptionElement)
           -> (v : String)
           -> IO ()

namespace HTMLOptionsCollection
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  export
  length :  Cast hTMLOptionsCollection HTMLOptionsCollection
         => ToJS HTMLOptionsCollection
         => (obj : hTMLOptionsCollection)
         -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.length = v}"
  prim__setLength : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setLength :  Cast hTMLOptionsCollection HTMLOptionsCollection
            => ToJS HTMLOptionsCollection
            => (obj : hTMLOptionsCollection)
            -> (v : UInt32)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.selectedIndex"
  prim__selectedIndex : AnyPtr -> PrimIO AnyPtr
  
  export
  selectedIndex :  Cast hTMLOptionsCollection HTMLOptionsCollection
                => ToJS HTMLOptionsCollection
                => (obj : hTMLOptionsCollection)
                -> IO Int32
  
  %foreign "browser:lambda:(x,v)=>{x.selectedIndex = v}"
  prim__setSelectedIndex : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSelectedIndex :  Cast hTMLOptionsCollection HTMLOptionsCollection
                   => ToJS HTMLOptionsCollection
                   => (obj : hTMLOptionsCollection)
                   -> (v : Int32)
                   -> IO ()

namespace HTMLOutputElement
  
  %foreign "browser:lambda:x=>x.form"
  prim__form : AnyPtr -> PrimIO AnyPtr
  
  export
  form :  Cast hTMLOutputElement HTMLOutputElement
       => ToJS HTMLOutputElement
       => (obj : hTMLOutputElement)
       -> IO (Maybe HTMLFormElement)
  
  %foreign "browser:lambda:x=>x.htmlFor"
  prim__htmlFor : AnyPtr -> PrimIO AnyPtr
  
  export
  htmlFor :  Cast hTMLOutputElement HTMLOutputElement
          => ToJS HTMLOutputElement
          => (obj : hTMLOutputElement)
          -> IO DOMTokenList
  
  %foreign "browser:lambda:x=>x.labels"
  prim__labels : AnyPtr -> PrimIO AnyPtr
  
  export
  labels :  Cast hTMLOutputElement HTMLOutputElement
         => ToJS HTMLOutputElement
         => (obj : hTMLOutputElement)
         -> IO NodeList
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  export
  type :  Cast hTMLOutputElement HTMLOutputElement
       => ToJS HTMLOutputElement
       => (obj : hTMLOutputElement)
       -> IO String
  
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : AnyPtr -> PrimIO AnyPtr
  
  export
  validationMessage :  Cast hTMLOutputElement HTMLOutputElement
                    => ToJS HTMLOutputElement
                    => (obj : hTMLOutputElement)
                    -> IO String
  
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : AnyPtr -> PrimIO AnyPtr
  
  export
  validity :  Cast hTMLOutputElement HTMLOutputElement
           => ToJS HTMLOutputElement
           => (obj : hTMLOutputElement)
           -> IO ValidityState
  
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : AnyPtr -> PrimIO AnyPtr
  
  export
  willValidate :  Cast hTMLOutputElement HTMLOutputElement
               => ToJS HTMLOutputElement
               => (obj : hTMLOutputElement)
               -> IO Bool
  
  %foreign "browser:lambda:x=>x.defaultValue"
  prim__defaultValue : AnyPtr -> PrimIO AnyPtr
  
  export
  defaultValue :  Cast hTMLOutputElement HTMLOutputElement
               => ToJS HTMLOutputElement
               => (obj : hTMLOutputElement)
               -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.defaultValue = v}"
  prim__setDefaultValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDefaultValue :  Cast hTMLOutputElement HTMLOutputElement
                  => ToJS HTMLOutputElement
                  => (obj : hTMLOutputElement)
                  -> (v : String)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr
  
  export
  name :  Cast hTMLOutputElement HTMLOutputElement
       => ToJS HTMLOutputElement
       => (obj : hTMLOutputElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setName :  Cast hTMLOutputElement HTMLOutputElement
          => ToJS HTMLOutputElement
          => (obj : hTMLOutputElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr
  
  export
  value :  Cast hTMLOutputElement HTMLOutputElement
        => ToJS HTMLOutputElement
        => (obj : hTMLOutputElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setValue :  Cast hTMLOutputElement HTMLOutputElement
           => ToJS HTMLOutputElement
           => (obj : hTMLOutputElement)
           -> (v : String)
           -> IO ()

namespace HTMLParagraphElement
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr
  
  export
  align :  Cast hTMLParagraphElement HTMLParagraphElement
        => ToJS HTMLParagraphElement
        => (obj : hTMLParagraphElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAlign :  Cast hTMLParagraphElement HTMLParagraphElement
           => ToJS HTMLParagraphElement
           => (obj : hTMLParagraphElement)
           -> (v : String)
           -> IO ()

namespace HTMLParamElement
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr
  
  export
  name :  Cast hTMLParamElement HTMLParamElement
       => ToJS HTMLParamElement
       => (obj : hTMLParamElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setName :  Cast hTMLParamElement HTMLParamElement
          => ToJS HTMLParamElement
          => (obj : hTMLParamElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  export
  type :  Cast hTMLParamElement HTMLParamElement
       => ToJS HTMLParamElement
       => (obj : hTMLParamElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setType :  Cast hTMLParamElement HTMLParamElement
          => ToJS HTMLParamElement
          => (obj : hTMLParamElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr
  
  export
  value :  Cast hTMLParamElement HTMLParamElement
        => ToJS HTMLParamElement
        => (obj : hTMLParamElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setValue :  Cast hTMLParamElement HTMLParamElement
           => ToJS HTMLParamElement
           => (obj : hTMLParamElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.valueType"
  prim__valueType : AnyPtr -> PrimIO AnyPtr
  
  export
  valueType :  Cast hTMLParamElement HTMLParamElement
            => ToJS HTMLParamElement
            => (obj : hTMLParamElement)
            -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.valueType = v}"
  prim__setValueType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setValueType :  Cast hTMLParamElement HTMLParamElement
               => ToJS HTMLParamElement
               => (obj : hTMLParamElement)
               -> (v : String)
               -> IO ()

namespace HTMLPreElement
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr
  
  export
  width :  Cast hTMLPreElement HTMLPreElement
        => ToJS HTMLPreElement
        => (obj : hTMLPreElement)
        -> IO Int32
  
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setWidth :  Cast hTMLPreElement HTMLPreElement
           => ToJS HTMLPreElement
           => (obj : hTMLPreElement)
           -> (v : Int32)
           -> IO ()

namespace HTMLProgressElement
  
  %foreign "browser:lambda:x=>x.labels"
  prim__labels : AnyPtr -> PrimIO AnyPtr
  
  export
  labels :  Cast hTMLProgressElement HTMLProgressElement
         => ToJS HTMLProgressElement
         => (obj : hTMLProgressElement)
         -> IO NodeList
  
  %foreign "browser:lambda:x=>x.position"
  prim__position : AnyPtr -> PrimIO AnyPtr
  
  export
  position :  Cast hTMLProgressElement HTMLProgressElement
           => ToJS HTMLProgressElement
           => (obj : hTMLProgressElement)
           -> IO Double
  
  %foreign "browser:lambda:x=>x.max"
  prim__max : AnyPtr -> PrimIO AnyPtr
  
  export
  max :  Cast hTMLProgressElement HTMLProgressElement
      => ToJS HTMLProgressElement
      => (obj : hTMLProgressElement)
      -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.max = v}"
  prim__setMax : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setMax :  Cast hTMLProgressElement HTMLProgressElement
         => ToJS HTMLProgressElement
         => (obj : hTMLProgressElement)
         -> (v : Double)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr
  
  export
  value :  Cast hTMLProgressElement HTMLProgressElement
        => ToJS HTMLProgressElement
        => (obj : hTMLProgressElement)
        -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setValue :  Cast hTMLProgressElement HTMLProgressElement
           => ToJS HTMLProgressElement
           => (obj : hTMLProgressElement)
           -> (v : Double)
           -> IO ()

namespace HTMLQuoteElement
  
  %foreign "browser:lambda:x=>x.cite"
  prim__cite : AnyPtr -> PrimIO AnyPtr
  
  export
  cite :  Cast hTMLQuoteElement HTMLQuoteElement
       => ToJS HTMLQuoteElement
       => (obj : hTMLQuoteElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.cite = v}"
  prim__setCite : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCite :  Cast hTMLQuoteElement HTMLQuoteElement
          => ToJS HTMLQuoteElement
          => (obj : hTMLQuoteElement)
          -> (v : String)
          -> IO ()

namespace HTMLScriptElement
  
  %foreign "browser:lambda:x=>x.async"
  prim__async : AnyPtr -> PrimIO AnyPtr
  
  export
  async :  Cast hTMLScriptElement HTMLScriptElement
        => ToJS HTMLScriptElement
        => (obj : hTMLScriptElement)
        -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.async = v}"
  prim__setAsync : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAsync :  Cast hTMLScriptElement HTMLScriptElement
           => ToJS HTMLScriptElement
           => (obj : hTMLScriptElement)
           -> (v : Bool)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.charset"
  prim__charset : AnyPtr -> PrimIO AnyPtr
  
  export
  charset :  Cast hTMLScriptElement HTMLScriptElement
          => ToJS HTMLScriptElement
          => (obj : hTMLScriptElement)
          -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.charset = v}"
  prim__setCharset : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCharset :  Cast hTMLScriptElement HTMLScriptElement
             => ToJS HTMLScriptElement
             => (obj : hTMLScriptElement)
             -> (v : String)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.crossOrigin"
  prim__crossOrigin : AnyPtr -> PrimIO AnyPtr
  
  export
  crossOrigin :  Cast hTMLScriptElement HTMLScriptElement
              => ToJS HTMLScriptElement
              => (obj : hTMLScriptElement)
              -> IO (Maybe String)
  
  %foreign "browser:lambda:(x,v)=>{x.crossOrigin = v}"
  prim__setCrossOrigin : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCrossOrigin :  Cast hTMLScriptElement HTMLScriptElement
                 => ToJS HTMLScriptElement
                 => (obj : hTMLScriptElement)
                 -> (v : Maybe String)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.defer"
  prim__defer : AnyPtr -> PrimIO AnyPtr
  
  export
  defer :  Cast hTMLScriptElement HTMLScriptElement
        => ToJS HTMLScriptElement
        => (obj : hTMLScriptElement)
        -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.defer = v}"
  prim__setDefer : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDefer :  Cast hTMLScriptElement HTMLScriptElement
           => ToJS HTMLScriptElement
           => (obj : hTMLScriptElement)
           -> (v : Bool)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.event"
  prim__event : AnyPtr -> PrimIO AnyPtr
  
  export
  event :  Cast hTMLScriptElement HTMLScriptElement
        => ToJS HTMLScriptElement
        => (obj : hTMLScriptElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.event = v}"
  prim__setEvent : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setEvent :  Cast hTMLScriptElement HTMLScriptElement
           => ToJS HTMLScriptElement
           => (obj : hTMLScriptElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.htmlFor"
  prim__htmlFor : AnyPtr -> PrimIO AnyPtr
  
  export
  htmlFor :  Cast hTMLScriptElement HTMLScriptElement
          => ToJS HTMLScriptElement
          => (obj : hTMLScriptElement)
          -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.htmlFor = v}"
  prim__setHtmlFor : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHtmlFor :  Cast hTMLScriptElement HTMLScriptElement
             => ToJS HTMLScriptElement
             => (obj : hTMLScriptElement)
             -> (v : String)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.integrity"
  prim__integrity : AnyPtr -> PrimIO AnyPtr
  
  export
  integrity :  Cast hTMLScriptElement HTMLScriptElement
            => ToJS HTMLScriptElement
            => (obj : hTMLScriptElement)
            -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.integrity = v}"
  prim__setIntegrity : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setIntegrity :  Cast hTMLScriptElement HTMLScriptElement
               => ToJS HTMLScriptElement
               => (obj : hTMLScriptElement)
               -> (v : String)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.noModule"
  prim__noModule : AnyPtr -> PrimIO AnyPtr
  
  export
  noModule :  Cast hTMLScriptElement HTMLScriptElement
           => ToJS HTMLScriptElement
           => (obj : hTMLScriptElement)
           -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.noModule = v}"
  prim__setNoModule : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setNoModule :  Cast hTMLScriptElement HTMLScriptElement
              => ToJS HTMLScriptElement
              => (obj : hTMLScriptElement)
              -> (v : Bool)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : AnyPtr -> PrimIO AnyPtr
  
  export
  referrerPolicy :  Cast hTMLScriptElement HTMLScriptElement
                 => ToJS HTMLScriptElement
                 => (obj : hTMLScriptElement)
                 -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy = v}"
  prim__setReferrerPolicy : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setReferrerPolicy :  Cast hTMLScriptElement HTMLScriptElement
                    => ToJS HTMLScriptElement
                    => (obj : hTMLScriptElement)
                    -> (v : String)
                    -> IO ()
  
  %foreign "browser:lambda:x=>x.src"
  prim__src : AnyPtr -> PrimIO AnyPtr
  
  export
  src :  Cast hTMLScriptElement HTMLScriptElement
      => ToJS HTMLScriptElement
      => (obj : hTMLScriptElement)
      -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.src = v}"
  prim__setSrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSrc :  Cast hTMLScriptElement HTMLScriptElement
         => ToJS HTMLScriptElement
         => (obj : hTMLScriptElement)
         -> (v : String)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.text"
  prim__text : AnyPtr -> PrimIO AnyPtr
  
  export
  text :  Cast hTMLScriptElement HTMLScriptElement
       => ToJS HTMLScriptElement
       => (obj : hTMLScriptElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.text = v}"
  prim__setText : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setText :  Cast hTMLScriptElement HTMLScriptElement
          => ToJS HTMLScriptElement
          => (obj : hTMLScriptElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  export
  type :  Cast hTMLScriptElement HTMLScriptElement
       => ToJS HTMLScriptElement
       => (obj : hTMLScriptElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setType :  Cast hTMLScriptElement HTMLScriptElement
          => ToJS HTMLScriptElement
          => (obj : hTMLScriptElement)
          -> (v : String)
          -> IO ()

namespace HTMLSelectElement
  
  %foreign "browser:lambda:x=>x.form"
  prim__form : AnyPtr -> PrimIO AnyPtr
  
  export
  form :  Cast hTMLSelectElement HTMLSelectElement
       => ToJS HTMLSelectElement
       => (obj : hTMLSelectElement)
       -> IO (Maybe HTMLFormElement)
  
  %foreign "browser:lambda:x=>x.labels"
  prim__labels : AnyPtr -> PrimIO AnyPtr
  
  export
  labels :  Cast hTMLSelectElement HTMLSelectElement
         => ToJS HTMLSelectElement
         => (obj : hTMLSelectElement)
         -> IO NodeList
  
  %foreign "browser:lambda:x=>x.options"
  prim__options : AnyPtr -> PrimIO AnyPtr
  
  export
  options :  Cast hTMLSelectElement HTMLSelectElement
          => ToJS HTMLSelectElement
          => (obj : hTMLSelectElement)
          -> IO HTMLOptionsCollection
  
  %foreign "browser:lambda:x=>x.selectedOptions"
  prim__selectedOptions : AnyPtr -> PrimIO AnyPtr
  
  export
  selectedOptions :  Cast hTMLSelectElement HTMLSelectElement
                  => ToJS HTMLSelectElement
                  => (obj : hTMLSelectElement)
                  -> IO HTMLCollection
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  export
  type :  Cast hTMLSelectElement HTMLSelectElement
       => ToJS HTMLSelectElement
       => (obj : hTMLSelectElement)
       -> IO String
  
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : AnyPtr -> PrimIO AnyPtr
  
  export
  validationMessage :  Cast hTMLSelectElement HTMLSelectElement
                    => ToJS HTMLSelectElement
                    => (obj : hTMLSelectElement)
                    -> IO String
  
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : AnyPtr -> PrimIO AnyPtr
  
  export
  validity :  Cast hTMLSelectElement HTMLSelectElement
           => ToJS HTMLSelectElement
           => (obj : hTMLSelectElement)
           -> IO ValidityState
  
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : AnyPtr -> PrimIO AnyPtr
  
  export
  willValidate :  Cast hTMLSelectElement HTMLSelectElement
               => ToJS HTMLSelectElement
               => (obj : hTMLSelectElement)
               -> IO Bool
  
  %foreign "browser:lambda:x=>x.autocomplete"
  prim__autocomplete : AnyPtr -> PrimIO AnyPtr
  
  export
  autocomplete :  Cast hTMLSelectElement HTMLSelectElement
               => ToJS HTMLSelectElement
               => (obj : hTMLSelectElement)
               -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.autocomplete = v}"
  prim__setAutocomplete : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAutocomplete :  Cast hTMLSelectElement HTMLSelectElement
                  => ToJS HTMLSelectElement
                  => (obj : hTMLSelectElement)
                  -> (v : String)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : AnyPtr -> PrimIO AnyPtr
  
  export
  disabled :  Cast hTMLSelectElement HTMLSelectElement
           => ToJS HTMLSelectElement
           => (obj : hTMLSelectElement)
           -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.disabled = v}"
  prim__setDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDisabled :  Cast hTMLSelectElement HTMLSelectElement
              => ToJS HTMLSelectElement
              => (obj : hTMLSelectElement)
              -> (v : Bool)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  export
  length :  Cast hTMLSelectElement HTMLSelectElement
         => ToJS HTMLSelectElement
         => (obj : hTMLSelectElement)
         -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.length = v}"
  prim__setLength : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setLength :  Cast hTMLSelectElement HTMLSelectElement
            => ToJS HTMLSelectElement
            => (obj : hTMLSelectElement)
            -> (v : UInt32)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.multiple"
  prim__multiple : AnyPtr -> PrimIO AnyPtr
  
  export
  multiple :  Cast hTMLSelectElement HTMLSelectElement
           => ToJS HTMLSelectElement
           => (obj : hTMLSelectElement)
           -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.multiple = v}"
  prim__setMultiple : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setMultiple :  Cast hTMLSelectElement HTMLSelectElement
              => ToJS HTMLSelectElement
              => (obj : hTMLSelectElement)
              -> (v : Bool)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr
  
  export
  name :  Cast hTMLSelectElement HTMLSelectElement
       => ToJS HTMLSelectElement
       => (obj : hTMLSelectElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setName :  Cast hTMLSelectElement HTMLSelectElement
          => ToJS HTMLSelectElement
          => (obj : hTMLSelectElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.required"
  prim__required : AnyPtr -> PrimIO AnyPtr
  
  export
  required :  Cast hTMLSelectElement HTMLSelectElement
           => ToJS HTMLSelectElement
           => (obj : hTMLSelectElement)
           -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.required = v}"
  prim__setRequired : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setRequired :  Cast hTMLSelectElement HTMLSelectElement
              => ToJS HTMLSelectElement
              => (obj : hTMLSelectElement)
              -> (v : Bool)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.selectedIndex"
  prim__selectedIndex : AnyPtr -> PrimIO AnyPtr
  
  export
  selectedIndex :  Cast hTMLSelectElement HTMLSelectElement
                => ToJS HTMLSelectElement
                => (obj : hTMLSelectElement)
                -> IO Int32
  
  %foreign "browser:lambda:(x,v)=>{x.selectedIndex = v}"
  prim__setSelectedIndex : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSelectedIndex :  Cast hTMLSelectElement HTMLSelectElement
                   => ToJS HTMLSelectElement
                   => (obj : hTMLSelectElement)
                   -> (v : Int32)
                   -> IO ()
  
  %foreign "browser:lambda:x=>x.size"
  prim__size : AnyPtr -> PrimIO AnyPtr
  
  export
  size :  Cast hTMLSelectElement HTMLSelectElement
       => ToJS HTMLSelectElement
       => (obj : hTMLSelectElement)
       -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.size = v}"
  prim__setSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSize :  Cast hTMLSelectElement HTMLSelectElement
          => ToJS HTMLSelectElement
          => (obj : hTMLSelectElement)
          -> (v : UInt32)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr
  
  export
  value :  Cast hTMLSelectElement HTMLSelectElement
        => ToJS HTMLSelectElement
        => (obj : hTMLSelectElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setValue :  Cast hTMLSelectElement HTMLSelectElement
           => ToJS HTMLSelectElement
           => (obj : hTMLSelectElement)
           -> (v : String)
           -> IO ()

namespace HTMLSlotElement
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr
  
  export
  name :  Cast hTMLSlotElement HTMLSlotElement
       => ToJS HTMLSlotElement
       => (obj : hTMLSlotElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setName :  Cast hTMLSlotElement HTMLSlotElement
          => ToJS HTMLSlotElement
          => (obj : hTMLSlotElement)
          -> (v : String)
          -> IO ()

namespace HTMLSourceElement
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr
  
  export
  height :  Cast hTMLSourceElement HTMLSourceElement
         => ToJS HTMLSourceElement
         => (obj : hTMLSourceElement)
         -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHeight :  Cast hTMLSourceElement HTMLSourceElement
            => ToJS HTMLSourceElement
            => (obj : hTMLSourceElement)
            -> (v : UInt32)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.media"
  prim__media : AnyPtr -> PrimIO AnyPtr
  
  export
  media :  Cast hTMLSourceElement HTMLSourceElement
        => ToJS HTMLSourceElement
        => (obj : hTMLSourceElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.media = v}"
  prim__setMedia : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setMedia :  Cast hTMLSourceElement HTMLSourceElement
           => ToJS HTMLSourceElement
           => (obj : hTMLSourceElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.sizes"
  prim__sizes : AnyPtr -> PrimIO AnyPtr
  
  export
  sizes :  Cast hTMLSourceElement HTMLSourceElement
        => ToJS HTMLSourceElement
        => (obj : hTMLSourceElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.sizes = v}"
  prim__setSizes : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSizes :  Cast hTMLSourceElement HTMLSourceElement
           => ToJS HTMLSourceElement
           => (obj : hTMLSourceElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.src"
  prim__src : AnyPtr -> PrimIO AnyPtr
  
  export
  src :  Cast hTMLSourceElement HTMLSourceElement
      => ToJS HTMLSourceElement
      => (obj : hTMLSourceElement)
      -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.src = v}"
  prim__setSrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSrc :  Cast hTMLSourceElement HTMLSourceElement
         => ToJS HTMLSourceElement
         => (obj : hTMLSourceElement)
         -> (v : String)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.srcset"
  prim__srcset : AnyPtr -> PrimIO AnyPtr
  
  export
  srcset :  Cast hTMLSourceElement HTMLSourceElement
         => ToJS HTMLSourceElement
         => (obj : hTMLSourceElement)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.srcset = v}"
  prim__setSrcset : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSrcset :  Cast hTMLSourceElement HTMLSourceElement
            => ToJS HTMLSourceElement
            => (obj : hTMLSourceElement)
            -> (v : String)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  export
  type :  Cast hTMLSourceElement HTMLSourceElement
       => ToJS HTMLSourceElement
       => (obj : hTMLSourceElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setType :  Cast hTMLSourceElement HTMLSourceElement
          => ToJS HTMLSourceElement
          => (obj : hTMLSourceElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr
  
  export
  width :  Cast hTMLSourceElement HTMLSourceElement
        => ToJS HTMLSourceElement
        => (obj : hTMLSourceElement)
        -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setWidth :  Cast hTMLSourceElement HTMLSourceElement
           => ToJS HTMLSourceElement
           => (obj : hTMLSourceElement)
           -> (v : UInt32)
           -> IO ()

namespace HTMLStyleElement
  
  %foreign "browser:lambda:x=>x.media"
  prim__media : AnyPtr -> PrimIO AnyPtr
  
  export
  media :  Cast hTMLStyleElement HTMLStyleElement
        => ToJS HTMLStyleElement
        => (obj : hTMLStyleElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.media = v}"
  prim__setMedia : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setMedia :  Cast hTMLStyleElement HTMLStyleElement
           => ToJS HTMLStyleElement
           => (obj : hTMLStyleElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  export
  type :  Cast hTMLStyleElement HTMLStyleElement
       => ToJS HTMLStyleElement
       => (obj : hTMLStyleElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setType :  Cast hTMLStyleElement HTMLStyleElement
          => ToJS HTMLStyleElement
          => (obj : hTMLStyleElement)
          -> (v : String)
          -> IO ()

namespace HTMLTableCaptionElement
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr
  
  export
  align :  Cast hTMLTableCaptionElement HTMLTableCaptionElement
        => ToJS HTMLTableCaptionElement
        => (obj : hTMLTableCaptionElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAlign :  Cast hTMLTableCaptionElement HTMLTableCaptionElement
           => ToJS HTMLTableCaptionElement
           => (obj : hTMLTableCaptionElement)
           -> (v : String)
           -> IO ()

namespace HTMLTableCellElement
  
  %foreign "browser:lambda:x=>x.cellIndex"
  prim__cellIndex : AnyPtr -> PrimIO AnyPtr
  
  export
  cellIndex :  Cast hTMLTableCellElement HTMLTableCellElement
            => ToJS HTMLTableCellElement
            => (obj : hTMLTableCellElement)
            -> IO Int32
  
  %foreign "browser:lambda:x=>x.abbr"
  prim__abbr : AnyPtr -> PrimIO AnyPtr
  
  export
  abbr :  Cast hTMLTableCellElement HTMLTableCellElement
       => ToJS HTMLTableCellElement
       => (obj : hTMLTableCellElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.abbr = v}"
  prim__setAbbr : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAbbr :  Cast hTMLTableCellElement HTMLTableCellElement
          => ToJS HTMLTableCellElement
          => (obj : hTMLTableCellElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr
  
  export
  align :  Cast hTMLTableCellElement HTMLTableCellElement
        => ToJS HTMLTableCellElement
        => (obj : hTMLTableCellElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAlign :  Cast hTMLTableCellElement HTMLTableCellElement
           => ToJS HTMLTableCellElement
           => (obj : hTMLTableCellElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.axis"
  prim__axis : AnyPtr -> PrimIO AnyPtr
  
  export
  axis :  Cast hTMLTableCellElement HTMLTableCellElement
       => ToJS HTMLTableCellElement
       => (obj : hTMLTableCellElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.axis = v}"
  prim__setAxis : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAxis :  Cast hTMLTableCellElement HTMLTableCellElement
          => ToJS HTMLTableCellElement
          => (obj : hTMLTableCellElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.bgColor"
  prim__bgColor : AnyPtr -> PrimIO AnyPtr
  
  export
  bgColor :  Cast hTMLTableCellElement HTMLTableCellElement
          => ToJS HTMLTableCellElement
          => (obj : hTMLTableCellElement)
          -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.bgColor = v}"
  prim__setBgColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setBgColor :  Cast hTMLTableCellElement HTMLTableCellElement
             => ToJS HTMLTableCellElement
             => (obj : hTMLTableCellElement)
             -> (v : String)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.ch"
  prim__ch : AnyPtr -> PrimIO AnyPtr
  
  export
  ch :  Cast hTMLTableCellElement HTMLTableCellElement
     => ToJS HTMLTableCellElement
     => (obj : hTMLTableCellElement)
     -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ch = v}"
  prim__setCh : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCh :  Cast hTMLTableCellElement HTMLTableCellElement
        => ToJS HTMLTableCellElement
        => (obj : hTMLTableCellElement)
        -> (v : String)
        -> IO ()
  
  %foreign "browser:lambda:x=>x.chOff"
  prim__chOff : AnyPtr -> PrimIO AnyPtr
  
  export
  chOff :  Cast hTMLTableCellElement HTMLTableCellElement
        => ToJS HTMLTableCellElement
        => (obj : hTMLTableCellElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.chOff = v}"
  prim__setChOff : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setChOff :  Cast hTMLTableCellElement HTMLTableCellElement
           => ToJS HTMLTableCellElement
           => (obj : hTMLTableCellElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.colSpan"
  prim__colSpan : AnyPtr -> PrimIO AnyPtr
  
  export
  colSpan :  Cast hTMLTableCellElement HTMLTableCellElement
          => ToJS HTMLTableCellElement
          => (obj : hTMLTableCellElement)
          -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.colSpan = v}"
  prim__setColSpan : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setColSpan :  Cast hTMLTableCellElement HTMLTableCellElement
             => ToJS HTMLTableCellElement
             => (obj : hTMLTableCellElement)
             -> (v : UInt32)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.headers"
  prim__headers : AnyPtr -> PrimIO AnyPtr
  
  export
  headers :  Cast hTMLTableCellElement HTMLTableCellElement
          => ToJS HTMLTableCellElement
          => (obj : hTMLTableCellElement)
          -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.headers = v}"
  prim__setHeaders : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHeaders :  Cast hTMLTableCellElement HTMLTableCellElement
             => ToJS HTMLTableCellElement
             => (obj : hTMLTableCellElement)
             -> (v : String)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr
  
  export
  height :  Cast hTMLTableCellElement HTMLTableCellElement
         => ToJS HTMLTableCellElement
         => (obj : hTMLTableCellElement)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHeight :  Cast hTMLTableCellElement HTMLTableCellElement
            => ToJS HTMLTableCellElement
            => (obj : hTMLTableCellElement)
            -> (v : String)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.noWrap"
  prim__noWrap : AnyPtr -> PrimIO AnyPtr
  
  export
  noWrap :  Cast hTMLTableCellElement HTMLTableCellElement
         => ToJS HTMLTableCellElement
         => (obj : hTMLTableCellElement)
         -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.noWrap = v}"
  prim__setNoWrap : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setNoWrap :  Cast hTMLTableCellElement HTMLTableCellElement
            => ToJS HTMLTableCellElement
            => (obj : hTMLTableCellElement)
            -> (v : Bool)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.rowSpan"
  prim__rowSpan : AnyPtr -> PrimIO AnyPtr
  
  export
  rowSpan :  Cast hTMLTableCellElement HTMLTableCellElement
          => ToJS HTMLTableCellElement
          => (obj : hTMLTableCellElement)
          -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.rowSpan = v}"
  prim__setRowSpan : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setRowSpan :  Cast hTMLTableCellElement HTMLTableCellElement
             => ToJS HTMLTableCellElement
             => (obj : hTMLTableCellElement)
             -> (v : UInt32)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.scope"
  prim__scope : AnyPtr -> PrimIO AnyPtr
  
  export
  scope :  Cast hTMLTableCellElement HTMLTableCellElement
        => ToJS HTMLTableCellElement
        => (obj : hTMLTableCellElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.scope = v}"
  prim__setScope : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setScope :  Cast hTMLTableCellElement HTMLTableCellElement
           => ToJS HTMLTableCellElement
           => (obj : hTMLTableCellElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.vAlign"
  prim__vAlign : AnyPtr -> PrimIO AnyPtr
  
  export
  vAlign :  Cast hTMLTableCellElement HTMLTableCellElement
         => ToJS HTMLTableCellElement
         => (obj : hTMLTableCellElement)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.vAlign = v}"
  prim__setVAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setVAlign :  Cast hTMLTableCellElement HTMLTableCellElement
            => ToJS HTMLTableCellElement
            => (obj : hTMLTableCellElement)
            -> (v : String)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr
  
  export
  width :  Cast hTMLTableCellElement HTMLTableCellElement
        => ToJS HTMLTableCellElement
        => (obj : hTMLTableCellElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setWidth :  Cast hTMLTableCellElement HTMLTableCellElement
           => ToJS HTMLTableCellElement
           => (obj : hTMLTableCellElement)
           -> (v : String)
           -> IO ()

namespace HTMLTableColElement
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr
  
  export
  align :  Cast hTMLTableColElement HTMLTableColElement
        => ToJS HTMLTableColElement
        => (obj : hTMLTableColElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAlign :  Cast hTMLTableColElement HTMLTableColElement
           => ToJS HTMLTableColElement
           => (obj : hTMLTableColElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.ch"
  prim__ch : AnyPtr -> PrimIO AnyPtr
  
  export
  ch :  Cast hTMLTableColElement HTMLTableColElement
     => ToJS HTMLTableColElement
     => (obj : hTMLTableColElement)
     -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ch = v}"
  prim__setCh : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCh :  Cast hTMLTableColElement HTMLTableColElement
        => ToJS HTMLTableColElement
        => (obj : hTMLTableColElement)
        -> (v : String)
        -> IO ()
  
  %foreign "browser:lambda:x=>x.chOff"
  prim__chOff : AnyPtr -> PrimIO AnyPtr
  
  export
  chOff :  Cast hTMLTableColElement HTMLTableColElement
        => ToJS HTMLTableColElement
        => (obj : hTMLTableColElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.chOff = v}"
  prim__setChOff : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setChOff :  Cast hTMLTableColElement HTMLTableColElement
           => ToJS HTMLTableColElement
           => (obj : hTMLTableColElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.span"
  prim__span : AnyPtr -> PrimIO AnyPtr
  
  export
  span :  Cast hTMLTableColElement HTMLTableColElement
       => ToJS HTMLTableColElement
       => (obj : hTMLTableColElement)
       -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.span = v}"
  prim__setSpan : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSpan :  Cast hTMLTableColElement HTMLTableColElement
          => ToJS HTMLTableColElement
          => (obj : hTMLTableColElement)
          -> (v : UInt32)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.vAlign"
  prim__vAlign : AnyPtr -> PrimIO AnyPtr
  
  export
  vAlign :  Cast hTMLTableColElement HTMLTableColElement
         => ToJS HTMLTableColElement
         => (obj : hTMLTableColElement)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.vAlign = v}"
  prim__setVAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setVAlign :  Cast hTMLTableColElement HTMLTableColElement
            => ToJS HTMLTableColElement
            => (obj : hTMLTableColElement)
            -> (v : String)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr
  
  export
  width :  Cast hTMLTableColElement HTMLTableColElement
        => ToJS HTMLTableColElement
        => (obj : hTMLTableColElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setWidth :  Cast hTMLTableColElement HTMLTableColElement
           => ToJS HTMLTableColElement
           => (obj : hTMLTableColElement)
           -> (v : String)
           -> IO ()

namespace HTMLTableElement
  
  %foreign "browser:lambda:x=>x.rows"
  prim__rows : AnyPtr -> PrimIO AnyPtr
  
  export
  rows :  Cast hTMLTableElement HTMLTableElement
       => ToJS HTMLTableElement
       => (obj : hTMLTableElement)
       -> IO HTMLCollection
  
  %foreign "browser:lambda:x=>x.tBodies"
  prim__tBodies : AnyPtr -> PrimIO AnyPtr
  
  export
  tBodies :  Cast hTMLTableElement HTMLTableElement
          => ToJS HTMLTableElement
          => (obj : hTMLTableElement)
          -> IO HTMLCollection
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr
  
  export
  align :  Cast hTMLTableElement HTMLTableElement
        => ToJS HTMLTableElement
        => (obj : hTMLTableElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAlign :  Cast hTMLTableElement HTMLTableElement
           => ToJS HTMLTableElement
           => (obj : hTMLTableElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.bgColor"
  prim__bgColor : AnyPtr -> PrimIO AnyPtr
  
  export
  bgColor :  Cast hTMLTableElement HTMLTableElement
          => ToJS HTMLTableElement
          => (obj : hTMLTableElement)
          -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.bgColor = v}"
  prim__setBgColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setBgColor :  Cast hTMLTableElement HTMLTableElement
             => ToJS HTMLTableElement
             => (obj : hTMLTableElement)
             -> (v : String)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.border"
  prim__border : AnyPtr -> PrimIO AnyPtr
  
  export
  border :  Cast hTMLTableElement HTMLTableElement
         => ToJS HTMLTableElement
         => (obj : hTMLTableElement)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.border = v}"
  prim__setBorder : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setBorder :  Cast hTMLTableElement HTMLTableElement
            => ToJS HTMLTableElement
            => (obj : hTMLTableElement)
            -> (v : String)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.caption"
  prim__caption : AnyPtr -> PrimIO AnyPtr
  
  export
  caption :  Cast hTMLTableElement HTMLTableElement
          => ToJS HTMLTableElement
          => (obj : hTMLTableElement)
          -> IO (Maybe HTMLTableCaptionElement)
  
  %foreign "browser:lambda:(x,v)=>{x.caption = v}"
  prim__setCaption : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCaption :  Cast hTMLTableCaptionElement HTMLTableCaptionElement
             => ToJS HTMLTableCaptionElement
             => Cast hTMLTableElement HTMLTableElement
             => ToJS HTMLTableElement
             => (obj : hTMLTableElement)
             -> (v : Maybe hTMLTableCaptionElement)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.cellPadding"
  prim__cellPadding : AnyPtr -> PrimIO AnyPtr
  
  export
  cellPadding :  Cast hTMLTableElement HTMLTableElement
              => ToJS HTMLTableElement
              => (obj : hTMLTableElement)
              -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.cellPadding = v}"
  prim__setCellPadding : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCellPadding :  Cast hTMLTableElement HTMLTableElement
                 => ToJS HTMLTableElement
                 => (obj : hTMLTableElement)
                 -> (v : String)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.cellSpacing"
  prim__cellSpacing : AnyPtr -> PrimIO AnyPtr
  
  export
  cellSpacing :  Cast hTMLTableElement HTMLTableElement
              => ToJS HTMLTableElement
              => (obj : hTMLTableElement)
              -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.cellSpacing = v}"
  prim__setCellSpacing : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCellSpacing :  Cast hTMLTableElement HTMLTableElement
                 => ToJS HTMLTableElement
                 => (obj : hTMLTableElement)
                 -> (v : String)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.frame"
  prim__frame : AnyPtr -> PrimIO AnyPtr
  
  export
  frame :  Cast hTMLTableElement HTMLTableElement
        => ToJS HTMLTableElement
        => (obj : hTMLTableElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.frame = v}"
  prim__setFrame : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setFrame :  Cast hTMLTableElement HTMLTableElement
           => ToJS HTMLTableElement
           => (obj : hTMLTableElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.rules"
  prim__rules : AnyPtr -> PrimIO AnyPtr
  
  export
  rules :  Cast hTMLTableElement HTMLTableElement
        => ToJS HTMLTableElement
        => (obj : hTMLTableElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.rules = v}"
  prim__setRules : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setRules :  Cast hTMLTableElement HTMLTableElement
           => ToJS HTMLTableElement
           => (obj : hTMLTableElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.summary"
  prim__summary : AnyPtr -> PrimIO AnyPtr
  
  export
  summary :  Cast hTMLTableElement HTMLTableElement
          => ToJS HTMLTableElement
          => (obj : hTMLTableElement)
          -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.summary = v}"
  prim__setSummary : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSummary :  Cast hTMLTableElement HTMLTableElement
             => ToJS HTMLTableElement
             => (obj : hTMLTableElement)
             -> (v : String)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.tFoot"
  prim__tFoot : AnyPtr -> PrimIO AnyPtr
  
  export
  tFoot :  Cast hTMLTableElement HTMLTableElement
        => ToJS HTMLTableElement
        => (obj : hTMLTableElement)
        -> IO (Maybe HTMLTableSectionElement)
  
  %foreign "browser:lambda:(x,v)=>{x.tFoot = v}"
  prim__setTFoot : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setTFoot :  Cast hTMLTableElement HTMLTableElement
           => ToJS HTMLTableElement
           => Cast hTMLTableSectionElement HTMLTableSectionElement
           => ToJS HTMLTableSectionElement
           => (obj : hTMLTableElement)
           -> (v : Maybe hTMLTableSectionElement)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.tHead"
  prim__tHead : AnyPtr -> PrimIO AnyPtr
  
  export
  tHead :  Cast hTMLTableElement HTMLTableElement
        => ToJS HTMLTableElement
        => (obj : hTMLTableElement)
        -> IO (Maybe HTMLTableSectionElement)
  
  %foreign "browser:lambda:(x,v)=>{x.tHead = v}"
  prim__setTHead : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setTHead :  Cast hTMLTableElement HTMLTableElement
           => ToJS HTMLTableElement
           => Cast hTMLTableSectionElement HTMLTableSectionElement
           => ToJS HTMLTableSectionElement
           => (obj : hTMLTableElement)
           -> (v : Maybe hTMLTableSectionElement)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr
  
  export
  width :  Cast hTMLTableElement HTMLTableElement
        => ToJS HTMLTableElement
        => (obj : hTMLTableElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setWidth :  Cast hTMLTableElement HTMLTableElement
           => ToJS HTMLTableElement
           => (obj : hTMLTableElement)
           -> (v : String)
           -> IO ()

namespace HTMLTableRowElement
  
  %foreign "browser:lambda:x=>x.cells"
  prim__cells : AnyPtr -> PrimIO AnyPtr
  
  export
  cells :  Cast hTMLTableRowElement HTMLTableRowElement
        => ToJS HTMLTableRowElement
        => (obj : hTMLTableRowElement)
        -> IO HTMLCollection
  
  %foreign "browser:lambda:x=>x.rowIndex"
  prim__rowIndex : AnyPtr -> PrimIO AnyPtr
  
  export
  rowIndex :  Cast hTMLTableRowElement HTMLTableRowElement
           => ToJS HTMLTableRowElement
           => (obj : hTMLTableRowElement)
           -> IO Int32
  
  %foreign "browser:lambda:x=>x.sectionRowIndex"
  prim__sectionRowIndex : AnyPtr -> PrimIO AnyPtr
  
  export
  sectionRowIndex :  Cast hTMLTableRowElement HTMLTableRowElement
                  => ToJS HTMLTableRowElement
                  => (obj : hTMLTableRowElement)
                  -> IO Int32
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr
  
  export
  align :  Cast hTMLTableRowElement HTMLTableRowElement
        => ToJS HTMLTableRowElement
        => (obj : hTMLTableRowElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAlign :  Cast hTMLTableRowElement HTMLTableRowElement
           => ToJS HTMLTableRowElement
           => (obj : hTMLTableRowElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.bgColor"
  prim__bgColor : AnyPtr -> PrimIO AnyPtr
  
  export
  bgColor :  Cast hTMLTableRowElement HTMLTableRowElement
          => ToJS HTMLTableRowElement
          => (obj : hTMLTableRowElement)
          -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.bgColor = v}"
  prim__setBgColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setBgColor :  Cast hTMLTableRowElement HTMLTableRowElement
             => ToJS HTMLTableRowElement
             => (obj : hTMLTableRowElement)
             -> (v : String)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.ch"
  prim__ch : AnyPtr -> PrimIO AnyPtr
  
  export
  ch :  Cast hTMLTableRowElement HTMLTableRowElement
     => ToJS HTMLTableRowElement
     => (obj : hTMLTableRowElement)
     -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ch = v}"
  prim__setCh : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCh :  Cast hTMLTableRowElement HTMLTableRowElement
        => ToJS HTMLTableRowElement
        => (obj : hTMLTableRowElement)
        -> (v : String)
        -> IO ()
  
  %foreign "browser:lambda:x=>x.chOff"
  prim__chOff : AnyPtr -> PrimIO AnyPtr
  
  export
  chOff :  Cast hTMLTableRowElement HTMLTableRowElement
        => ToJS HTMLTableRowElement
        => (obj : hTMLTableRowElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.chOff = v}"
  prim__setChOff : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setChOff :  Cast hTMLTableRowElement HTMLTableRowElement
           => ToJS HTMLTableRowElement
           => (obj : hTMLTableRowElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.vAlign"
  prim__vAlign : AnyPtr -> PrimIO AnyPtr
  
  export
  vAlign :  Cast hTMLTableRowElement HTMLTableRowElement
         => ToJS HTMLTableRowElement
         => (obj : hTMLTableRowElement)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.vAlign = v}"
  prim__setVAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setVAlign :  Cast hTMLTableRowElement HTMLTableRowElement
            => ToJS HTMLTableRowElement
            => (obj : hTMLTableRowElement)
            -> (v : String)
            -> IO ()

namespace HTMLTableSectionElement
  
  %foreign "browser:lambda:x=>x.rows"
  prim__rows : AnyPtr -> PrimIO AnyPtr
  
  export
  rows :  Cast hTMLTableSectionElement HTMLTableSectionElement
       => ToJS HTMLTableSectionElement
       => (obj : hTMLTableSectionElement)
       -> IO HTMLCollection
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr
  
  export
  align :  Cast hTMLTableSectionElement HTMLTableSectionElement
        => ToJS HTMLTableSectionElement
        => (obj : hTMLTableSectionElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAlign :  Cast hTMLTableSectionElement HTMLTableSectionElement
           => ToJS HTMLTableSectionElement
           => (obj : hTMLTableSectionElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.ch"
  prim__ch : AnyPtr -> PrimIO AnyPtr
  
  export
  ch :  Cast hTMLTableSectionElement HTMLTableSectionElement
     => ToJS HTMLTableSectionElement
     => (obj : hTMLTableSectionElement)
     -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ch = v}"
  prim__setCh : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCh :  Cast hTMLTableSectionElement HTMLTableSectionElement
        => ToJS HTMLTableSectionElement
        => (obj : hTMLTableSectionElement)
        -> (v : String)
        -> IO ()
  
  %foreign "browser:lambda:x=>x.chOff"
  prim__chOff : AnyPtr -> PrimIO AnyPtr
  
  export
  chOff :  Cast hTMLTableSectionElement HTMLTableSectionElement
        => ToJS HTMLTableSectionElement
        => (obj : hTMLTableSectionElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.chOff = v}"
  prim__setChOff : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setChOff :  Cast hTMLTableSectionElement HTMLTableSectionElement
           => ToJS HTMLTableSectionElement
           => (obj : hTMLTableSectionElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.vAlign"
  prim__vAlign : AnyPtr -> PrimIO AnyPtr
  
  export
  vAlign :  Cast hTMLTableSectionElement HTMLTableSectionElement
         => ToJS HTMLTableSectionElement
         => (obj : hTMLTableSectionElement)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.vAlign = v}"
  prim__setVAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setVAlign :  Cast hTMLTableSectionElement HTMLTableSectionElement
            => ToJS HTMLTableSectionElement
            => (obj : hTMLTableSectionElement)
            -> (v : String)
            -> IO ()

namespace HTMLTemplateElement
  
  %foreign "browser:lambda:x=>x.content"
  prim__content : AnyPtr -> PrimIO AnyPtr
  
  export
  content :  Cast hTMLTemplateElement HTMLTemplateElement
          => ToJS HTMLTemplateElement
          => (obj : hTMLTemplateElement)
          -> IO DocumentFragment

namespace HTMLTextAreaElement
  
  %foreign "browser:lambda:x=>x.form"
  prim__form : AnyPtr -> PrimIO AnyPtr
  
  export
  form :  Cast hTMLTextAreaElement HTMLTextAreaElement
       => ToJS HTMLTextAreaElement
       => (obj : hTMLTextAreaElement)
       -> IO (Maybe HTMLFormElement)
  
  %foreign "browser:lambda:x=>x.labels"
  prim__labels : AnyPtr -> PrimIO AnyPtr
  
  export
  labels :  Cast hTMLTextAreaElement HTMLTextAreaElement
         => ToJS HTMLTextAreaElement
         => (obj : hTMLTextAreaElement)
         -> IO NodeList
  
  %foreign "browser:lambda:x=>x.textLength"
  prim__textLength : AnyPtr -> PrimIO AnyPtr
  
  export
  textLength :  Cast hTMLTextAreaElement HTMLTextAreaElement
             => ToJS HTMLTextAreaElement
             => (obj : hTMLTextAreaElement)
             -> IO UInt32
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  export
  type :  Cast hTMLTextAreaElement HTMLTextAreaElement
       => ToJS HTMLTextAreaElement
       => (obj : hTMLTextAreaElement)
       -> IO String
  
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : AnyPtr -> PrimIO AnyPtr
  
  export
  validationMessage :  Cast hTMLTextAreaElement HTMLTextAreaElement
                    => ToJS HTMLTextAreaElement
                    => (obj : hTMLTextAreaElement)
                    -> IO String
  
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : AnyPtr -> PrimIO AnyPtr
  
  export
  validity :  Cast hTMLTextAreaElement HTMLTextAreaElement
           => ToJS HTMLTextAreaElement
           => (obj : hTMLTextAreaElement)
           -> IO ValidityState
  
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : AnyPtr -> PrimIO AnyPtr
  
  export
  willValidate :  Cast hTMLTextAreaElement HTMLTextAreaElement
               => ToJS HTMLTextAreaElement
               => (obj : hTMLTextAreaElement)
               -> IO Bool
  
  %foreign "browser:lambda:x=>x.autocomplete"
  prim__autocomplete : AnyPtr -> PrimIO AnyPtr
  
  export
  autocomplete :  Cast hTMLTextAreaElement HTMLTextAreaElement
               => ToJS HTMLTextAreaElement
               => (obj : hTMLTextAreaElement)
               -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.autocomplete = v}"
  prim__setAutocomplete : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAutocomplete :  Cast hTMLTextAreaElement HTMLTextAreaElement
                  => ToJS HTMLTextAreaElement
                  => (obj : hTMLTextAreaElement)
                  -> (v : String)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.cols"
  prim__cols : AnyPtr -> PrimIO AnyPtr
  
  export
  cols :  Cast hTMLTextAreaElement HTMLTextAreaElement
       => ToJS HTMLTextAreaElement
       => (obj : hTMLTextAreaElement)
       -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.cols = v}"
  prim__setCols : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCols :  Cast hTMLTextAreaElement HTMLTextAreaElement
          => ToJS HTMLTextAreaElement
          => (obj : hTMLTextAreaElement)
          -> (v : UInt32)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.defaultValue"
  prim__defaultValue : AnyPtr -> PrimIO AnyPtr
  
  export
  defaultValue :  Cast hTMLTextAreaElement HTMLTextAreaElement
               => ToJS HTMLTextAreaElement
               => (obj : hTMLTextAreaElement)
               -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.defaultValue = v}"
  prim__setDefaultValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDefaultValue :  Cast hTMLTextAreaElement HTMLTextAreaElement
                  => ToJS HTMLTextAreaElement
                  => (obj : hTMLTextAreaElement)
                  -> (v : String)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.dirName"
  prim__dirName : AnyPtr -> PrimIO AnyPtr
  
  export
  dirName :  Cast hTMLTextAreaElement HTMLTextAreaElement
          => ToJS HTMLTextAreaElement
          => (obj : hTMLTextAreaElement)
          -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.dirName = v}"
  prim__setDirName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDirName :  Cast hTMLTextAreaElement HTMLTextAreaElement
             => ToJS HTMLTextAreaElement
             => (obj : hTMLTextAreaElement)
             -> (v : String)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : AnyPtr -> PrimIO AnyPtr
  
  export
  disabled :  Cast hTMLTextAreaElement HTMLTextAreaElement
           => ToJS HTMLTextAreaElement
           => (obj : hTMLTextAreaElement)
           -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.disabled = v}"
  prim__setDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDisabled :  Cast hTMLTextAreaElement HTMLTextAreaElement
              => ToJS HTMLTextAreaElement
              => (obj : hTMLTextAreaElement)
              -> (v : Bool)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.maxLength"
  prim__maxLength : AnyPtr -> PrimIO AnyPtr
  
  export
  maxLength :  Cast hTMLTextAreaElement HTMLTextAreaElement
            => ToJS HTMLTextAreaElement
            => (obj : hTMLTextAreaElement)
            -> IO Int32
  
  %foreign "browser:lambda:(x,v)=>{x.maxLength = v}"
  prim__setMaxLength : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setMaxLength :  Cast hTMLTextAreaElement HTMLTextAreaElement
               => ToJS HTMLTextAreaElement
               => (obj : hTMLTextAreaElement)
               -> (v : Int32)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.minLength"
  prim__minLength : AnyPtr -> PrimIO AnyPtr
  
  export
  minLength :  Cast hTMLTextAreaElement HTMLTextAreaElement
            => ToJS HTMLTextAreaElement
            => (obj : hTMLTextAreaElement)
            -> IO Int32
  
  %foreign "browser:lambda:(x,v)=>{x.minLength = v}"
  prim__setMinLength : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setMinLength :  Cast hTMLTextAreaElement HTMLTextAreaElement
               => ToJS HTMLTextAreaElement
               => (obj : hTMLTextAreaElement)
               -> (v : Int32)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr
  
  export
  name :  Cast hTMLTextAreaElement HTMLTextAreaElement
       => ToJS HTMLTextAreaElement
       => (obj : hTMLTextAreaElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setName :  Cast hTMLTextAreaElement HTMLTextAreaElement
          => ToJS HTMLTextAreaElement
          => (obj : hTMLTextAreaElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.placeholder"
  prim__placeholder : AnyPtr -> PrimIO AnyPtr
  
  export
  placeholder :  Cast hTMLTextAreaElement HTMLTextAreaElement
              => ToJS HTMLTextAreaElement
              => (obj : hTMLTextAreaElement)
              -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.placeholder = v}"
  prim__setPlaceholder : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setPlaceholder :  Cast hTMLTextAreaElement HTMLTextAreaElement
                 => ToJS HTMLTextAreaElement
                 => (obj : hTMLTextAreaElement)
                 -> (v : String)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.readOnly"
  prim__readOnly : AnyPtr -> PrimIO AnyPtr
  
  export
  readOnly :  Cast hTMLTextAreaElement HTMLTextAreaElement
           => ToJS HTMLTextAreaElement
           => (obj : hTMLTextAreaElement)
           -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.readOnly = v}"
  prim__setReadOnly : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setReadOnly :  Cast hTMLTextAreaElement HTMLTextAreaElement
              => ToJS HTMLTextAreaElement
              => (obj : hTMLTextAreaElement)
              -> (v : Bool)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.required"
  prim__required : AnyPtr -> PrimIO AnyPtr
  
  export
  required :  Cast hTMLTextAreaElement HTMLTextAreaElement
           => ToJS HTMLTextAreaElement
           => (obj : hTMLTextAreaElement)
           -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.required = v}"
  prim__setRequired : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setRequired :  Cast hTMLTextAreaElement HTMLTextAreaElement
              => ToJS HTMLTextAreaElement
              => (obj : hTMLTextAreaElement)
              -> (v : Bool)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.rows"
  prim__rows : AnyPtr -> PrimIO AnyPtr
  
  export
  rows :  Cast hTMLTextAreaElement HTMLTextAreaElement
       => ToJS HTMLTextAreaElement
       => (obj : hTMLTextAreaElement)
       -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.rows = v}"
  prim__setRows : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setRows :  Cast hTMLTextAreaElement HTMLTextAreaElement
          => ToJS HTMLTextAreaElement
          => (obj : hTMLTextAreaElement)
          -> (v : UInt32)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.selectionDirection"
  prim__selectionDirection : AnyPtr -> PrimIO AnyPtr
  
  export
  selectionDirection :  Cast hTMLTextAreaElement HTMLTextAreaElement
                     => ToJS HTMLTextAreaElement
                     => (obj : hTMLTextAreaElement)
                     -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.selectionDirection = v}"
  prim__setSelectionDirection : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSelectionDirection :  Cast hTMLTextAreaElement HTMLTextAreaElement
                        => ToJS HTMLTextAreaElement
                        => (obj : hTMLTextAreaElement)
                        -> (v : String)
                        -> IO ()
  
  %foreign "browser:lambda:x=>x.selectionEnd"
  prim__selectionEnd : AnyPtr -> PrimIO AnyPtr
  
  export
  selectionEnd :  Cast hTMLTextAreaElement HTMLTextAreaElement
               => ToJS HTMLTextAreaElement
               => (obj : hTMLTextAreaElement)
               -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.selectionEnd = v}"
  prim__setSelectionEnd : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSelectionEnd :  Cast hTMLTextAreaElement HTMLTextAreaElement
                  => ToJS HTMLTextAreaElement
                  => (obj : hTMLTextAreaElement)
                  -> (v : UInt32)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.selectionStart"
  prim__selectionStart : AnyPtr -> PrimIO AnyPtr
  
  export
  selectionStart :  Cast hTMLTextAreaElement HTMLTextAreaElement
                 => ToJS HTMLTextAreaElement
                 => (obj : hTMLTextAreaElement)
                 -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.selectionStart = v}"
  prim__setSelectionStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSelectionStart :  Cast hTMLTextAreaElement HTMLTextAreaElement
                    => ToJS HTMLTextAreaElement
                    => (obj : hTMLTextAreaElement)
                    -> (v : UInt32)
                    -> IO ()
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr
  
  export
  value :  Cast hTMLTextAreaElement HTMLTextAreaElement
        => ToJS HTMLTextAreaElement
        => (obj : hTMLTextAreaElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setValue :  Cast hTMLTextAreaElement HTMLTextAreaElement
           => ToJS HTMLTextAreaElement
           => (obj : hTMLTextAreaElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.wrap"
  prim__wrap : AnyPtr -> PrimIO AnyPtr
  
  export
  wrap :  Cast hTMLTextAreaElement HTMLTextAreaElement
       => ToJS HTMLTextAreaElement
       => (obj : hTMLTextAreaElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.wrap = v}"
  prim__setWrap : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setWrap :  Cast hTMLTextAreaElement HTMLTextAreaElement
          => ToJS HTMLTextAreaElement
          => (obj : hTMLTextAreaElement)
          -> (v : String)
          -> IO ()

namespace HTMLTimeElement
  
  %foreign "browser:lambda:x=>x.dateTime"
  prim__dateTime : AnyPtr -> PrimIO AnyPtr
  
  export
  dateTime :  Cast hTMLTimeElement HTMLTimeElement
           => ToJS HTMLTimeElement
           => (obj : hTMLTimeElement)
           -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.dateTime = v}"
  prim__setDateTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDateTime :  Cast hTMLTimeElement HTMLTimeElement
              => ToJS HTMLTimeElement
              => (obj : hTMLTimeElement)
              -> (v : String)
              -> IO ()

namespace HTMLTitleElement
  
  %foreign "browser:lambda:x=>x.text"
  prim__text : AnyPtr -> PrimIO AnyPtr
  
  export
  text :  Cast hTMLTitleElement HTMLTitleElement
       => ToJS HTMLTitleElement
       => (obj : hTMLTitleElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.text = v}"
  prim__setText : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setText :  Cast hTMLTitleElement HTMLTitleElement
          => ToJS HTMLTitleElement
          => (obj : hTMLTitleElement)
          -> (v : String)
          -> IO ()

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
  NONE = 0o0
  
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : AnyPtr -> PrimIO AnyPtr
  
  export
  readyState :  Cast hTMLTrackElement HTMLTrackElement
             => ToJS HTMLTrackElement
             => (obj : hTMLTrackElement)
             -> IO UInt16
  
  %foreign "browser:lambda:x=>x.track"
  prim__track : AnyPtr -> PrimIO AnyPtr
  
  export
  track :  Cast hTMLTrackElement HTMLTrackElement
        => ToJS HTMLTrackElement
        => (obj : hTMLTrackElement)
        -> IO TextTrack
  
  %foreign "browser:lambda:x=>x.default"
  prim__default_ : AnyPtr -> PrimIO AnyPtr
  
  export
  default_ :  Cast hTMLTrackElement HTMLTrackElement
           => ToJS HTMLTrackElement
           => (obj : hTMLTrackElement)
           -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.default = v}"
  prim__setDefault : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDefault :  Cast hTMLTrackElement HTMLTrackElement
             => ToJS HTMLTrackElement
             => (obj : hTMLTrackElement)
             -> (v : Bool)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.kind"
  prim__kind : AnyPtr -> PrimIO AnyPtr
  
  export
  kind :  Cast hTMLTrackElement HTMLTrackElement
       => ToJS HTMLTrackElement
       => (obj : hTMLTrackElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.kind = v}"
  prim__setKind : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setKind :  Cast hTMLTrackElement HTMLTrackElement
          => ToJS HTMLTrackElement
          => (obj : hTMLTrackElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.label"
  prim__label : AnyPtr -> PrimIO AnyPtr
  
  export
  label :  Cast hTMLTrackElement HTMLTrackElement
        => ToJS HTMLTrackElement
        => (obj : hTMLTrackElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.label = v}"
  prim__setLabel : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setLabel :  Cast hTMLTrackElement HTMLTrackElement
           => ToJS HTMLTrackElement
           => (obj : hTMLTrackElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.src"
  prim__src : AnyPtr -> PrimIO AnyPtr
  
  export
  src :  Cast hTMLTrackElement HTMLTrackElement
      => ToJS HTMLTrackElement
      => (obj : hTMLTrackElement)
      -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.src = v}"
  prim__setSrc : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSrc :  Cast hTMLTrackElement HTMLTrackElement
         => ToJS HTMLTrackElement
         => (obj : hTMLTrackElement)
         -> (v : String)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.srclang"
  prim__srclang : AnyPtr -> PrimIO AnyPtr
  
  export
  srclang :  Cast hTMLTrackElement HTMLTrackElement
          => ToJS HTMLTrackElement
          => (obj : hTMLTrackElement)
          -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.srclang = v}"
  prim__setSrclang : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSrclang :  Cast hTMLTrackElement HTMLTrackElement
             => ToJS HTMLTrackElement
             => (obj : hTMLTrackElement)
             -> (v : String)
             -> IO ()

namespace HTMLUListElement
  
  %foreign "browser:lambda:x=>x.compact"
  prim__compact : AnyPtr -> PrimIO AnyPtr
  
  export
  compact :  Cast hTMLUListElement HTMLUListElement
          => ToJS HTMLUListElement
          => (obj : hTMLUListElement)
          -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.compact = v}"
  prim__setCompact : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCompact :  Cast hTMLUListElement HTMLUListElement
             => ToJS HTMLUListElement
             => (obj : hTMLUListElement)
             -> (v : Bool)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  export
  type :  Cast hTMLUListElement HTMLUListElement
       => ToJS HTMLUListElement
       => (obj : hTMLUListElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setType :  Cast hTMLUListElement HTMLUListElement
          => ToJS HTMLUListElement
          => (obj : hTMLUListElement)
          -> (v : String)
          -> IO ()

namespace HTMLVideoElement
  
  %foreign "browser:lambda:x=>x.videoHeight"
  prim__videoHeight : AnyPtr -> PrimIO AnyPtr
  
  export
  videoHeight :  Cast hTMLVideoElement HTMLVideoElement
              => ToJS HTMLVideoElement
              => (obj : hTMLVideoElement)
              -> IO UInt32
  
  %foreign "browser:lambda:x=>x.videoWidth"
  prim__videoWidth : AnyPtr -> PrimIO AnyPtr
  
  export
  videoWidth :  Cast hTMLVideoElement HTMLVideoElement
             => ToJS HTMLVideoElement
             => (obj : hTMLVideoElement)
             -> IO UInt32
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr
  
  export
  height :  Cast hTMLVideoElement HTMLVideoElement
         => ToJS HTMLVideoElement
         => (obj : hTMLVideoElement)
         -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHeight :  Cast hTMLVideoElement HTMLVideoElement
            => ToJS HTMLVideoElement
            => (obj : hTMLVideoElement)
            -> (v : UInt32)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.playsInline"
  prim__playsInline : AnyPtr -> PrimIO AnyPtr
  
  export
  playsInline :  Cast hTMLVideoElement HTMLVideoElement
              => ToJS HTMLVideoElement
              => (obj : hTMLVideoElement)
              -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.playsInline = v}"
  prim__setPlaysInline : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setPlaysInline :  Cast hTMLVideoElement HTMLVideoElement
                 => ToJS HTMLVideoElement
                 => (obj : hTMLVideoElement)
                 -> (v : Bool)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.poster"
  prim__poster : AnyPtr -> PrimIO AnyPtr
  
  export
  poster :  Cast hTMLVideoElement HTMLVideoElement
         => ToJS HTMLVideoElement
         => (obj : hTMLVideoElement)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.poster = v}"
  prim__setPoster : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setPoster :  Cast hTMLVideoElement HTMLVideoElement
            => ToJS HTMLVideoElement
            => (obj : hTMLVideoElement)
            -> (v : String)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr
  
  export
  width :  Cast hTMLVideoElement HTMLVideoElement
        => ToJS HTMLVideoElement
        => (obj : hTMLVideoElement)
        -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setWidth :  Cast hTMLVideoElement HTMLVideoElement
           => ToJS HTMLVideoElement
           => (obj : hTMLVideoElement)
           -> (v : UInt32)
           -> IO ()

namespace HashChangeEvent
  
  %foreign "browser:lambda:x=>x.newURL"
  prim__newURL : AnyPtr -> PrimIO AnyPtr
  
  export
  newURL :  Cast hashChangeEvent HashChangeEvent
         => ToJS HashChangeEvent
         => (obj : hashChangeEvent)
         -> IO String
  
  %foreign "browser:lambda:x=>x.oldURL"
  prim__oldURL : AnyPtr -> PrimIO AnyPtr
  
  export
  oldURL :  Cast hashChangeEvent HashChangeEvent
         => ToJS HashChangeEvent
         => (obj : hashChangeEvent)
         -> IO String

namespace History
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  export
  length : Cast history History => ToJS History => (obj : history) -> IO UInt32
  
  %foreign "browser:lambda:x=>x.state"
  prim__state : AnyPtr -> PrimIO AnyPtr
  
  export
  state : Cast history History => ToJS History => (obj : history) -> IO JSAny
  
  %foreign "browser:lambda:x=>x.scrollRestoration"
  prim__scrollRestoration : AnyPtr -> PrimIO AnyPtr
  
  export
  scrollRestoration :  Cast history History
                    => ToJS History
                    => (obj : history)
                    -> IO ScrollRestoration
  
  %foreign "browser:lambda:(x,v)=>{x.scrollRestoration = v}"
  prim__setScrollRestoration : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setScrollRestoration :  Cast history History
                       => ToJS History
                       => Cast scrollRestoration ScrollRestoration
                       => ToJS ScrollRestoration
                       => (obj : history)
                       -> (v : scrollRestoration)
                       -> IO ()

namespace ImageBitmap
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr
  
  export
  height :  Cast imageBitmap ImageBitmap
         => ToJS ImageBitmap
         => (obj : imageBitmap)
         -> IO UInt32
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr
  
  export
  width :  Cast imageBitmap ImageBitmap
        => ToJS ImageBitmap
        => (obj : imageBitmap)
        -> IO UInt32

namespace ImageBitmapRenderingContext
  
  %foreign "browser:lambda:x=>x.canvas"
  prim__canvas : AnyPtr -> PrimIO AnyPtr
  
  export
  canvas :  Cast imageBitmapRenderingContext ImageBitmapRenderingContext
         => ToJS ImageBitmapRenderingContext
         => (obj : imageBitmapRenderingContext)
         -> IO (NS I [ HTMLCanvasElement , OffscreenCanvas ])

namespace ImageData
  
  %foreign "browser:lambda:x=>x.data"
  prim__data_ : AnyPtr -> PrimIO AnyPtr
  
  export
  data_ :  Cast imageData ImageData
        => ToJS ImageData
        => (obj : imageData)
        -> IO (JSArray UInt8)
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr
  
  export
  height :  Cast imageData ImageData
         => ToJS ImageData
         => (obj : imageData)
         -> IO UInt32
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr
  
  export
  width :  Cast imageData ImageData
        => ToJS ImageData
        => (obj : imageData)
        -> IO UInt32

namespace Location
  
  %foreign "browser:lambda:x=>x.ancestorOrigins"
  prim__ancestorOrigins : AnyPtr -> PrimIO AnyPtr
  
  export
  ancestorOrigins :  Cast location Location
                  => ToJS Location
                  => (obj : location)
                  -> IO DOMStringList
  
  %foreign "browser:lambda:x=>x.origin"
  prim__origin : AnyPtr -> PrimIO AnyPtr
  
  export
  origin :  Cast location Location
         => ToJS Location
         => (obj : location)
         -> IO String
  
  %foreign "browser:lambda:x=>x.hash"
  prim__hash : AnyPtr -> PrimIO AnyPtr
  
  export
  hash :  Cast location Location
       => ToJS Location
       => (obj : location)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.hash = v}"
  prim__setHash : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHash :  Cast location Location
          => ToJS Location
          => (obj : location)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.host"
  prim__host : AnyPtr -> PrimIO AnyPtr
  
  export
  host :  Cast location Location
       => ToJS Location
       => (obj : location)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.host = v}"
  prim__setHost : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHost :  Cast location Location
          => ToJS Location
          => (obj : location)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.hostname"
  prim__hostname : AnyPtr -> PrimIO AnyPtr
  
  export
  hostname :  Cast location Location
           => ToJS Location
           => (obj : location)
           -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.hostname = v}"
  prim__setHostname : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHostname :  Cast location Location
              => ToJS Location
              => (obj : location)
              -> (v : String)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.pathname"
  prim__pathname : AnyPtr -> PrimIO AnyPtr
  
  export
  pathname :  Cast location Location
           => ToJS Location
           => (obj : location)
           -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.pathname = v}"
  prim__setPathname : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setPathname :  Cast location Location
              => ToJS Location
              => (obj : location)
              -> (v : String)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.port"
  prim__port : AnyPtr -> PrimIO AnyPtr
  
  export
  port :  Cast location Location
       => ToJS Location
       => (obj : location)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.port = v}"
  prim__setPort : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setPort :  Cast location Location
          => ToJS Location
          => (obj : location)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.protocol"
  prim__protocol : AnyPtr -> PrimIO AnyPtr
  
  export
  protocol :  Cast location Location
           => ToJS Location
           => (obj : location)
           -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.protocol = v}"
  prim__setProtocol : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setProtocol :  Cast location Location
              => ToJS Location
              => (obj : location)
              -> (v : String)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.search"
  prim__search : AnyPtr -> PrimIO AnyPtr
  
  export
  search :  Cast location Location
         => ToJS Location
         => (obj : location)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.search = v}"
  prim__setSearch : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSearch :  Cast location Location
            => ToJS Location
            => (obj : location)
            -> (v : String)
            -> IO ()

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
  
  %foreign "browser:lambda:x=>x.code"
  prim__code : AnyPtr -> PrimIO AnyPtr
  
  export
  code :  Cast mediaError MediaError
       => ToJS MediaError
       => (obj : mediaError)
       -> IO UInt16
  
  %foreign "browser:lambda:x=>x.message"
  prim__message : AnyPtr -> PrimIO AnyPtr
  
  export
  message :  Cast mediaError MediaError
          => ToJS MediaError
          => (obj : mediaError)
          -> IO String

namespace MessageChannel
  
  %foreign "browser:lambda:x=>x.port1"
  prim__port1 : AnyPtr -> PrimIO AnyPtr
  
  export
  port1 :  Cast messageChannel MessageChannel
        => ToJS MessageChannel
        => (obj : messageChannel)
        -> IO MessagePort
  
  %foreign "browser:lambda:x=>x.port2"
  prim__port2 : AnyPtr -> PrimIO AnyPtr
  
  export
  port2 :  Cast messageChannel MessageChannel
        => ToJS MessageChannel
        => (obj : messageChannel)
        -> IO MessagePort

namespace MessageEvent
  
  %foreign "browser:lambda:x=>x.data"
  prim__data_ : AnyPtr -> PrimIO AnyPtr
  
  export
  data_ :  Cast messageEvent MessageEvent
        => ToJS MessageEvent
        => (obj : messageEvent)
        -> IO JSAny
  
  %foreign "browser:lambda:x=>x.lastEventId"
  prim__lastEventId : AnyPtr -> PrimIO AnyPtr
  
  export
  lastEventId :  Cast messageEvent MessageEvent
              => ToJS MessageEvent
              => (obj : messageEvent)
              -> IO String
  
  %foreign "browser:lambda:x=>x.origin"
  prim__origin : AnyPtr -> PrimIO AnyPtr
  
  export
  origin :  Cast messageEvent MessageEvent
         => ToJS MessageEvent
         => (obj : messageEvent)
         -> IO String
  
  %foreign "browser:lambda:x=>x.ports"
  prim__ports : AnyPtr -> PrimIO AnyPtr
  
  export
  ports :  Cast messageEvent MessageEvent
        => ToJS MessageEvent
        => (obj : messageEvent)
        -> IO (JSArray MessagePort)
  
  %foreign "browser:lambda:x=>x.source"
  prim__source : AnyPtr -> PrimIO AnyPtr
  
  export
  source :  Cast messageEvent MessageEvent
         => ToJS MessageEvent
         => (obj : messageEvent)
         -> IO (Maybe MessageEventSource)

namespace MessagePort
  
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : AnyPtr -> PrimIO AnyPtr
  
  export
  onmessage :  Cast messagePort MessagePort
            => ToJS MessagePort
            => (obj : messagePort)
            -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onmessage = v}"
  prim__setOnmessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnmessage :  Cast eventHandler EventHandler
               => ToJS EventHandler
               => Cast messagePort MessagePort
               => ToJS MessagePort
               => (obj : messagePort)
               -> (v : eventHandler)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.onmessageerror"
  prim__onmessageerror : AnyPtr -> PrimIO AnyPtr
  
  export
  onmessageerror :  Cast messagePort MessagePort
                 => ToJS MessagePort
                 => (obj : messagePort)
                 -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onmessageerror = v}"
  prim__setOnmessageerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnmessageerror :  Cast eventHandler EventHandler
                    => ToJS EventHandler
                    => Cast messagePort MessagePort
                    => ToJS MessagePort
                    => (obj : messagePort)
                    -> (v : eventHandler)
                    -> IO ()

namespace MimeType
  
  %foreign "browser:lambda:x=>x.description"
  prim__description : AnyPtr -> PrimIO ()
  
  export
  description :  Cast mimeType MimeType
              => ToJS MimeType
              => (obj : mimeType)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.enabledPlugin"
  prim__enabledPlugin : AnyPtr -> PrimIO ()
  
  export
  enabledPlugin :  Cast mimeType MimeType
                => ToJS MimeType
                => (obj : mimeType)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.suffixes"
  prim__suffixes : AnyPtr -> PrimIO ()
  
  export
  suffixes :  Cast mimeType MimeType
           => ToJS MimeType
           => (obj : mimeType)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO ()
  
  export
  type : Cast mimeType MimeType => ToJS MimeType => (obj : mimeType) -> IO ()

namespace MimeTypeArray
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  export
  length :  Cast mimeTypeArray MimeTypeArray
         => ToJS MimeTypeArray
         => (obj : mimeTypeArray)
         -> IO UInt32

namespace Navigator
  
  %foreign "browser:lambda:x=>x.clipboard"
  prim__clipboard : AnyPtr -> PrimIO AnyPtr
  
  export
  clipboard :  Cast navigator Navigator
            => ToJS Navigator
            => (obj : navigator)
            -> IO Clipboard
  
  %foreign "browser:lambda:x=>x.mediaDevices"
  prim__mediaDevices : AnyPtr -> PrimIO AnyPtr
  
  export
  mediaDevices :  Cast navigator Navigator
               => ToJS Navigator
               => (obj : navigator)
               -> IO MediaDevices
  
  %foreign "browser:lambda:x=>x.permissions"
  prim__permissions : AnyPtr -> PrimIO AnyPtr
  
  export
  permissions :  Cast navigator Navigator
              => ToJS Navigator
              => (obj : navigator)
              -> IO Permissions
  
  %foreign "browser:lambda:x=>x.serviceWorker"
  prim__serviceWorker : AnyPtr -> PrimIO AnyPtr
  
  export
  serviceWorker :  Cast navigator Navigator
                => ToJS Navigator
                => (obj : navigator)
                -> IO ServiceWorkerContainer

namespace OffscreenCanvas
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr
  
  export
  height :  Cast offscreenCanvas OffscreenCanvas
         => ToJS OffscreenCanvas
         => (obj : offscreenCanvas)
         -> IO UInt64
  
  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHeight :  Cast offscreenCanvas OffscreenCanvas
            => ToJS OffscreenCanvas
            => (obj : offscreenCanvas)
            -> (v : UInt64)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr
  
  export
  width :  Cast offscreenCanvas OffscreenCanvas
        => ToJS OffscreenCanvas
        => (obj : offscreenCanvas)
        -> IO UInt64
  
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setWidth :  Cast offscreenCanvas OffscreenCanvas
           => ToJS OffscreenCanvas
           => (obj : offscreenCanvas)
           -> (v : UInt64)
           -> IO ()

namespace OffscreenCanvasRenderingContext2D
  
  %foreign "browser:lambda:x=>x.canvas"
  prim__canvas : AnyPtr -> PrimIO AnyPtr
  
  export
  canvas :  Cast offscreenCanvasRenderingContext2D OffscreenCanvasRenderingContext2D
         => ToJS OffscreenCanvasRenderingContext2D
         => (obj : offscreenCanvasRenderingContext2D)
         -> IO OffscreenCanvas

namespace PageTransitionEvent
  
  %foreign "browser:lambda:x=>x.persisted"
  prim__persisted : AnyPtr -> PrimIO AnyPtr
  
  export
  persisted :  Cast pageTransitionEvent PageTransitionEvent
            => ToJS PageTransitionEvent
            => (obj : pageTransitionEvent)
            -> IO Bool

namespace Plugin
  
  %foreign "browser:lambda:x=>x.description"
  prim__description : AnyPtr -> PrimIO ()
  
  export
  description : Cast plugin Plugin => ToJS Plugin => (obj : plugin) -> IO ()
  
  %foreign "browser:lambda:x=>x.filename"
  prim__filename : AnyPtr -> PrimIO ()
  
  export
  filename : Cast plugin Plugin => ToJS Plugin => (obj : plugin) -> IO ()
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO ()
  
  export
  length : Cast plugin Plugin => ToJS Plugin => (obj : plugin) -> IO ()
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO ()
  
  export
  name : Cast plugin Plugin => ToJS Plugin => (obj : plugin) -> IO ()

namespace PluginArray
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  export
  length :  Cast pluginArray PluginArray
         => ToJS PluginArray
         => (obj : pluginArray)
         -> IO UInt32

namespace PopStateEvent
  
  %foreign "browser:lambda:x=>x.state"
  prim__state : AnyPtr -> PrimIO AnyPtr
  
  export
  state :  Cast popStateEvent PopStateEvent
        => ToJS PopStateEvent
        => (obj : popStateEvent)
        -> IO JSAny

namespace PromiseRejectionEvent
  
  %foreign "browser:lambda:x=>x.promise"
  prim__promise : AnyPtr -> PrimIO AnyPtr
  
  export
  promise :  Cast promiseRejectionEvent PromiseRejectionEvent
          => ToJS PromiseRejectionEvent
          => (obj : promiseRejectionEvent)
          -> IO (JSPromise JSAny)
  
  %foreign "browser:lambda:x=>x.reason"
  prim__reason : AnyPtr -> PrimIO AnyPtr
  
  export
  reason :  Cast promiseRejectionEvent PromiseRejectionEvent
         => ToJS PromiseRejectionEvent
         => (obj : promiseRejectionEvent)
         -> IO JSAny

namespace RadioNodeList
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr
  
  export
  value :  Cast radioNodeList RadioNodeList
        => ToJS RadioNodeList
        => (obj : radioNodeList)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setValue :  Cast radioNodeList RadioNodeList
           => ToJS RadioNodeList
           => (obj : radioNodeList)
           -> (v : String)
           -> IO ()

namespace SharedWorker
  
  %foreign "browser:lambda:x=>x.port"
  prim__port : AnyPtr -> PrimIO AnyPtr
  
  export
  port :  Cast sharedWorker SharedWorker
       => ToJS SharedWorker
       => (obj : sharedWorker)
       -> IO MessagePort

namespace SharedWorkerGlobalScope
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr
  
  export
  name :  Cast sharedWorkerGlobalScope SharedWorkerGlobalScope
       => ToJS SharedWorkerGlobalScope
       => (obj : sharedWorkerGlobalScope)
       -> IO String
  
  %foreign "browser:lambda:x=>x.onconnect"
  prim__onconnect : AnyPtr -> PrimIO AnyPtr
  
  export
  onconnect :  Cast sharedWorkerGlobalScope SharedWorkerGlobalScope
            => ToJS SharedWorkerGlobalScope
            => (obj : sharedWorkerGlobalScope)
            -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onconnect = v}"
  prim__setOnconnect : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnconnect :  Cast eventHandler EventHandler
               => ToJS EventHandler
               => Cast sharedWorkerGlobalScope SharedWorkerGlobalScope
               => ToJS SharedWorkerGlobalScope
               => (obj : sharedWorkerGlobalScope)
               -> (v : eventHandler)
               -> IO ()

namespace Storage
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  export
  length : Cast storage Storage => ToJS Storage => (obj : storage) -> IO UInt32

namespace StorageEvent
  
  %foreign "browser:lambda:x=>x.key"
  prim__key : AnyPtr -> PrimIO AnyPtr
  
  export
  key :  Cast storageEvent StorageEvent
      => ToJS StorageEvent
      => (obj : storageEvent)
      -> IO (Maybe String)
  
  %foreign "browser:lambda:x=>x.newValue"
  prim__newValue : AnyPtr -> PrimIO AnyPtr
  
  export
  newValue :  Cast storageEvent StorageEvent
           => ToJS StorageEvent
           => (obj : storageEvent)
           -> IO (Maybe String)
  
  %foreign "browser:lambda:x=>x.oldValue"
  prim__oldValue : AnyPtr -> PrimIO AnyPtr
  
  export
  oldValue :  Cast storageEvent StorageEvent
           => ToJS StorageEvent
           => (obj : storageEvent)
           -> IO (Maybe String)
  
  %foreign "browser:lambda:x=>x.storageArea"
  prim__storageArea : AnyPtr -> PrimIO AnyPtr
  
  export
  storageArea :  Cast storageEvent StorageEvent
              => ToJS StorageEvent
              => (obj : storageEvent)
              -> IO (Maybe Storage)
  
  %foreign "browser:lambda:x=>x.url"
  prim__url : AnyPtr -> PrimIO AnyPtr
  
  export
  url :  Cast storageEvent StorageEvent
      => ToJS StorageEvent
      => (obj : storageEvent)
      -> IO String

namespace SubmitEvent
  
  %foreign "browser:lambda:x=>x.submitter"
  prim__submitter : AnyPtr -> PrimIO AnyPtr
  
  export
  submitter :  Cast submitEvent SubmitEvent
            => ToJS SubmitEvent
            => (obj : submitEvent)
            -> IO (Maybe HTMLElement)

namespace TextMetrics
  
  %foreign "browser:lambda:x=>x.actualBoundingBoxAscent"
  prim__actualBoundingBoxAscent : AnyPtr -> PrimIO AnyPtr
  
  export
  actualBoundingBoxAscent :  Cast textMetrics TextMetrics
                          => ToJS TextMetrics
                          => (obj : textMetrics)
                          -> IO Double
  
  %foreign "browser:lambda:x=>x.actualBoundingBoxDescent"
  prim__actualBoundingBoxDescent : AnyPtr -> PrimIO AnyPtr
  
  export
  actualBoundingBoxDescent :  Cast textMetrics TextMetrics
                           => ToJS TextMetrics
                           => (obj : textMetrics)
                           -> IO Double
  
  %foreign "browser:lambda:x=>x.actualBoundingBoxLeft"
  prim__actualBoundingBoxLeft : AnyPtr -> PrimIO AnyPtr
  
  export
  actualBoundingBoxLeft :  Cast textMetrics TextMetrics
                        => ToJS TextMetrics
                        => (obj : textMetrics)
                        -> IO Double
  
  %foreign "browser:lambda:x=>x.actualBoundingBoxRight"
  prim__actualBoundingBoxRight : AnyPtr -> PrimIO AnyPtr
  
  export
  actualBoundingBoxRight :  Cast textMetrics TextMetrics
                         => ToJS TextMetrics
                         => (obj : textMetrics)
                         -> IO Double
  
  %foreign "browser:lambda:x=>x.alphabeticBaseline"
  prim__alphabeticBaseline : AnyPtr -> PrimIO AnyPtr
  
  export
  alphabeticBaseline :  Cast textMetrics TextMetrics
                     => ToJS TextMetrics
                     => (obj : textMetrics)
                     -> IO Double
  
  %foreign "browser:lambda:x=>x.emHeightAscent"
  prim__emHeightAscent : AnyPtr -> PrimIO AnyPtr
  
  export
  emHeightAscent :  Cast textMetrics TextMetrics
                 => ToJS TextMetrics
                 => (obj : textMetrics)
                 -> IO Double
  
  %foreign "browser:lambda:x=>x.emHeightDescent"
  prim__emHeightDescent : AnyPtr -> PrimIO AnyPtr
  
  export
  emHeightDescent :  Cast textMetrics TextMetrics
                  => ToJS TextMetrics
                  => (obj : textMetrics)
                  -> IO Double
  
  %foreign "browser:lambda:x=>x.fontBoundingBoxAscent"
  prim__fontBoundingBoxAscent : AnyPtr -> PrimIO AnyPtr
  
  export
  fontBoundingBoxAscent :  Cast textMetrics TextMetrics
                        => ToJS TextMetrics
                        => (obj : textMetrics)
                        -> IO Double
  
  %foreign "browser:lambda:x=>x.fontBoundingBoxDescent"
  prim__fontBoundingBoxDescent : AnyPtr -> PrimIO AnyPtr
  
  export
  fontBoundingBoxDescent :  Cast textMetrics TextMetrics
                         => ToJS TextMetrics
                         => (obj : textMetrics)
                         -> IO Double
  
  %foreign "browser:lambda:x=>x.hangingBaseline"
  prim__hangingBaseline : AnyPtr -> PrimIO AnyPtr
  
  export
  hangingBaseline :  Cast textMetrics TextMetrics
                  => ToJS TextMetrics
                  => (obj : textMetrics)
                  -> IO Double
  
  %foreign "browser:lambda:x=>x.ideographicBaseline"
  prim__ideographicBaseline : AnyPtr -> PrimIO AnyPtr
  
  export
  ideographicBaseline :  Cast textMetrics TextMetrics
                      => ToJS TextMetrics
                      => (obj : textMetrics)
                      -> IO Double
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr
  
  export
  width :  Cast textMetrics TextMetrics
        => ToJS TextMetrics
        => (obj : textMetrics)
        -> IO Double

namespace TextTrack
  
  %foreign "browser:lambda:x=>x.activeCues"
  prim__activeCues : AnyPtr -> PrimIO AnyPtr
  
  export
  activeCues :  Cast textTrack TextTrack
             => ToJS TextTrack
             => (obj : textTrack)
             -> IO (Maybe TextTrackCueList)
  
  %foreign "browser:lambda:x=>x.cues"
  prim__cues : AnyPtr -> PrimIO AnyPtr
  
  export
  cues :  Cast textTrack TextTrack
       => ToJS TextTrack
       => (obj : textTrack)
       -> IO (Maybe TextTrackCueList)
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr
  
  export
  id :  Cast textTrack TextTrack
     => ToJS TextTrack
     => (obj : textTrack)
     -> IO String
  
  %foreign "browser:lambda:x=>x.inBandMetadataTrackDispatchType"
  prim__inBandMetadataTrackDispatchType : AnyPtr -> PrimIO AnyPtr
  
  export
  inBandMetadataTrackDispatchType :  Cast textTrack TextTrack
                                  => ToJS TextTrack
                                  => (obj : textTrack)
                                  -> IO String
  
  %foreign "browser:lambda:x=>x.kind"
  prim__kind : AnyPtr -> PrimIO AnyPtr
  
  export
  kind :  Cast textTrack TextTrack
       => ToJS TextTrack
       => (obj : textTrack)
       -> IO TextTrackKind
  
  %foreign "browser:lambda:x=>x.label"
  prim__label : AnyPtr -> PrimIO AnyPtr
  
  export
  label :  Cast textTrack TextTrack
        => ToJS TextTrack
        => (obj : textTrack)
        -> IO String
  
  %foreign "browser:lambda:x=>x.language"
  prim__language : AnyPtr -> PrimIO AnyPtr
  
  export
  language :  Cast textTrack TextTrack
           => ToJS TextTrack
           => (obj : textTrack)
           -> IO String
  
  %foreign "browser:lambda:x=>x.sourceBuffer"
  prim__sourceBuffer : AnyPtr -> PrimIO AnyPtr
  
  export
  sourceBuffer :  Cast textTrack TextTrack
               => ToJS TextTrack
               => (obj : textTrack)
               -> IO (Maybe SourceBuffer)
  
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : AnyPtr -> PrimIO AnyPtr
  
  export
  mode :  Cast textTrack TextTrack
       => ToJS TextTrack
       => (obj : textTrack)
       -> IO TextTrackMode
  
  %foreign "browser:lambda:(x,v)=>{x.mode = v}"
  prim__setMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setMode :  Cast textTrack TextTrack
          => ToJS TextTrack
          => Cast textTrackMode TextTrackMode
          => ToJS TextTrackMode
          => (obj : textTrack)
          -> (v : textTrackMode)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.oncuechange"
  prim__oncuechange : AnyPtr -> PrimIO AnyPtr
  
  export
  oncuechange :  Cast textTrack TextTrack
              => ToJS TextTrack
              => (obj : textTrack)
              -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.oncuechange = v}"
  prim__setOncuechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOncuechange :  Cast eventHandler EventHandler
                 => ToJS EventHandler
                 => Cast textTrack TextTrack
                 => ToJS TextTrack
                 => (obj : textTrack)
                 -> (v : eventHandler)
                 -> IO ()

namespace TextTrackCue
  
  %foreign "browser:lambda:x=>x.track"
  prim__track : AnyPtr -> PrimIO AnyPtr
  
  export
  track :  Cast textTrackCue TextTrackCue
        => ToJS TextTrackCue
        => (obj : textTrackCue)
        -> IO (Maybe TextTrack)
  
  %foreign "browser:lambda:x=>x.endTime"
  prim__endTime : AnyPtr -> PrimIO AnyPtr
  
  export
  endTime :  Cast textTrackCue TextTrackCue
          => ToJS TextTrackCue
          => (obj : textTrackCue)
          -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.endTime = v}"
  prim__setEndTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setEndTime :  Cast textTrackCue TextTrackCue
             => ToJS TextTrackCue
             => (obj : textTrackCue)
             -> (v : Double)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr
  
  export
  id :  Cast textTrackCue TextTrackCue
     => ToJS TextTrackCue
     => (obj : textTrackCue)
     -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.id = v}"
  prim__setId : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setId :  Cast textTrackCue TextTrackCue
        => ToJS TextTrackCue
        => (obj : textTrackCue)
        -> (v : String)
        -> IO ()
  
  %foreign "browser:lambda:x=>x.onenter"
  prim__onenter : AnyPtr -> PrimIO AnyPtr
  
  export
  onenter :  Cast textTrackCue TextTrackCue
          => ToJS TextTrackCue
          => (obj : textTrackCue)
          -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onenter = v}"
  prim__setOnenter : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnenter :  Cast eventHandler EventHandler
             => ToJS EventHandler
             => Cast textTrackCue TextTrackCue
             => ToJS TextTrackCue
             => (obj : textTrackCue)
             -> (v : eventHandler)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.onexit"
  prim__onexit : AnyPtr -> PrimIO AnyPtr
  
  export
  onexit :  Cast textTrackCue TextTrackCue
         => ToJS TextTrackCue
         => (obj : textTrackCue)
         -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onexit = v}"
  prim__setOnexit : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnexit :  Cast eventHandler EventHandler
            => ToJS EventHandler
            => Cast textTrackCue TextTrackCue
            => ToJS TextTrackCue
            => (obj : textTrackCue)
            -> (v : eventHandler)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.pauseOnExit"
  prim__pauseOnExit : AnyPtr -> PrimIO AnyPtr
  
  export
  pauseOnExit :  Cast textTrackCue TextTrackCue
              => ToJS TextTrackCue
              => (obj : textTrackCue)
              -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.pauseOnExit = v}"
  prim__setPauseOnExit : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setPauseOnExit :  Cast textTrackCue TextTrackCue
                 => ToJS TextTrackCue
                 => (obj : textTrackCue)
                 -> (v : Bool)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.startTime"
  prim__startTime : AnyPtr -> PrimIO AnyPtr
  
  export
  startTime :  Cast textTrackCue TextTrackCue
            => ToJS TextTrackCue
            => (obj : textTrackCue)
            -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.startTime = v}"
  prim__setStartTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setStartTime :  Cast textTrackCue TextTrackCue
               => ToJS TextTrackCue
               => (obj : textTrackCue)
               -> (v : Double)
               -> IO ()

namespace TextTrackCueList
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  export
  length :  Cast textTrackCueList TextTrackCueList
         => ToJS TextTrackCueList
         => (obj : textTrackCueList)
         -> IO UInt32

namespace TextTrackList
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  export
  length :  Cast textTrackList TextTrackList
         => ToJS TextTrackList
         => (obj : textTrackList)
         -> IO UInt32
  
  %foreign "browser:lambda:x=>x.onaddtrack"
  prim__onaddtrack : AnyPtr -> PrimIO AnyPtr
  
  export
  onaddtrack :  Cast textTrackList TextTrackList
             => ToJS TextTrackList
             => (obj : textTrackList)
             -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onaddtrack = v}"
  prim__setOnaddtrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnaddtrack :  Cast eventHandler EventHandler
                => ToJS EventHandler
                => Cast textTrackList TextTrackList
                => ToJS TextTrackList
                => (obj : textTrackList)
                -> (v : eventHandler)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.onchange"
  prim__onchange : AnyPtr -> PrimIO AnyPtr
  
  export
  onchange :  Cast textTrackList TextTrackList
           => ToJS TextTrackList
           => (obj : textTrackList)
           -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onchange = v}"
  prim__setOnchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnchange :  Cast eventHandler EventHandler
              => ToJS EventHandler
              => Cast textTrackList TextTrackList
              => ToJS TextTrackList
              => (obj : textTrackList)
              -> (v : eventHandler)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.onremovetrack"
  prim__onremovetrack : AnyPtr -> PrimIO AnyPtr
  
  export
  onremovetrack :  Cast textTrackList TextTrackList
                => ToJS TextTrackList
                => (obj : textTrackList)
                -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onremovetrack = v}"
  prim__setOnremovetrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnremovetrack :  Cast eventHandler EventHandler
                   => ToJS EventHandler
                   => Cast textTrackList TextTrackList
                   => ToJS TextTrackList
                   => (obj : textTrackList)
                   -> (v : eventHandler)
                   -> IO ()

namespace TimeRanges
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  export
  length :  Cast timeRanges TimeRanges
         => ToJS TimeRanges
         => (obj : timeRanges)
         -> IO UInt32

namespace TrackEvent
  
  %foreign "browser:lambda:x=>x.track"
  prim__track : AnyPtr -> PrimIO AnyPtr
  
  export
  track :  Cast trackEvent TrackEvent
        => ToJS TrackEvent
        => (obj : trackEvent)
        -> IO (Maybe (NS I [ VideoTrack , AudioTrack , TextTrack ]))

namespace ValidityState
  
  %foreign "browser:lambda:x=>x.badInput"
  prim__badInput : AnyPtr -> PrimIO AnyPtr
  
  export
  badInput :  Cast validityState ValidityState
           => ToJS ValidityState
           => (obj : validityState)
           -> IO Bool
  
  %foreign "browser:lambda:x=>x.customError"
  prim__customError : AnyPtr -> PrimIO AnyPtr
  
  export
  customError :  Cast validityState ValidityState
              => ToJS ValidityState
              => (obj : validityState)
              -> IO Bool
  
  %foreign "browser:lambda:x=>x.patternMismatch"
  prim__patternMismatch : AnyPtr -> PrimIO AnyPtr
  
  export
  patternMismatch :  Cast validityState ValidityState
                  => ToJS ValidityState
                  => (obj : validityState)
                  -> IO Bool
  
  %foreign "browser:lambda:x=>x.rangeOverflow"
  prim__rangeOverflow : AnyPtr -> PrimIO AnyPtr
  
  export
  rangeOverflow :  Cast validityState ValidityState
                => ToJS ValidityState
                => (obj : validityState)
                -> IO Bool
  
  %foreign "browser:lambda:x=>x.rangeUnderflow"
  prim__rangeUnderflow : AnyPtr -> PrimIO AnyPtr
  
  export
  rangeUnderflow :  Cast validityState ValidityState
                 => ToJS ValidityState
                 => (obj : validityState)
                 -> IO Bool
  
  %foreign "browser:lambda:x=>x.stepMismatch"
  prim__stepMismatch : AnyPtr -> PrimIO AnyPtr
  
  export
  stepMismatch :  Cast validityState ValidityState
               => ToJS ValidityState
               => (obj : validityState)
               -> IO Bool
  
  %foreign "browser:lambda:x=>x.tooLong"
  prim__tooLong : AnyPtr -> PrimIO AnyPtr
  
  export
  tooLong :  Cast validityState ValidityState
          => ToJS ValidityState
          => (obj : validityState)
          -> IO Bool
  
  %foreign "browser:lambda:x=>x.tooShort"
  prim__tooShort : AnyPtr -> PrimIO AnyPtr
  
  export
  tooShort :  Cast validityState ValidityState
           => ToJS ValidityState
           => (obj : validityState)
           -> IO Bool
  
  %foreign "browser:lambda:x=>x.typeMismatch"
  prim__typeMismatch : AnyPtr -> PrimIO AnyPtr
  
  export
  typeMismatch :  Cast validityState ValidityState
               => ToJS ValidityState
               => (obj : validityState)
               -> IO Bool
  
  %foreign "browser:lambda:x=>x.valid"
  prim__valid : AnyPtr -> PrimIO AnyPtr
  
  export
  valid :  Cast validityState ValidityState
        => ToJS ValidityState
        => (obj : validityState)
        -> IO Bool
  
  %foreign "browser:lambda:x=>x.valueMissing"
  prim__valueMissing : AnyPtr -> PrimIO AnyPtr
  
  export
  valueMissing :  Cast validityState ValidityState
               => ToJS ValidityState
               => (obj : validityState)
               -> IO Bool

namespace VideoTrack
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr
  
  export
  id :  Cast videoTrack VideoTrack
     => ToJS VideoTrack
     => (obj : videoTrack)
     -> IO String
  
  %foreign "browser:lambda:x=>x.kind"
  prim__kind : AnyPtr -> PrimIO AnyPtr
  
  export
  kind :  Cast videoTrack VideoTrack
       => ToJS VideoTrack
       => (obj : videoTrack)
       -> IO String
  
  %foreign "browser:lambda:x=>x.label"
  prim__label : AnyPtr -> PrimIO AnyPtr
  
  export
  label :  Cast videoTrack VideoTrack
        => ToJS VideoTrack
        => (obj : videoTrack)
        -> IO String
  
  %foreign "browser:lambda:x=>x.language"
  prim__language : AnyPtr -> PrimIO AnyPtr
  
  export
  language :  Cast videoTrack VideoTrack
           => ToJS VideoTrack
           => (obj : videoTrack)
           -> IO String
  
  %foreign "browser:lambda:x=>x.sourceBuffer"
  prim__sourceBuffer : AnyPtr -> PrimIO AnyPtr
  
  export
  sourceBuffer :  Cast videoTrack VideoTrack
               => ToJS VideoTrack
               => (obj : videoTrack)
               -> IO (Maybe SourceBuffer)
  
  %foreign "browser:lambda:x=>x.selected"
  prim__selected : AnyPtr -> PrimIO AnyPtr
  
  export
  selected :  Cast videoTrack VideoTrack
           => ToJS VideoTrack
           => (obj : videoTrack)
           -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.selected = v}"
  prim__setSelected : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSelected :  Cast videoTrack VideoTrack
              => ToJS VideoTrack
              => (obj : videoTrack)
              -> (v : Bool)
              -> IO ()

namespace VideoTrackList
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  export
  length :  Cast videoTrackList VideoTrackList
         => ToJS VideoTrackList
         => (obj : videoTrackList)
         -> IO UInt32
  
  %foreign "browser:lambda:x=>x.selectedIndex"
  prim__selectedIndex : AnyPtr -> PrimIO AnyPtr
  
  export
  selectedIndex :  Cast videoTrackList VideoTrackList
                => ToJS VideoTrackList
                => (obj : videoTrackList)
                -> IO Int32
  
  %foreign "browser:lambda:x=>x.onaddtrack"
  prim__onaddtrack : AnyPtr -> PrimIO AnyPtr
  
  export
  onaddtrack :  Cast videoTrackList VideoTrackList
             => ToJS VideoTrackList
             => (obj : videoTrackList)
             -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onaddtrack = v}"
  prim__setOnaddtrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnaddtrack :  Cast eventHandler EventHandler
                => ToJS EventHandler
                => Cast videoTrackList VideoTrackList
                => ToJS VideoTrackList
                => (obj : videoTrackList)
                -> (v : eventHandler)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.onchange"
  prim__onchange : AnyPtr -> PrimIO AnyPtr
  
  export
  onchange :  Cast videoTrackList VideoTrackList
           => ToJS VideoTrackList
           => (obj : videoTrackList)
           -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onchange = v}"
  prim__setOnchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnchange :  Cast eventHandler EventHandler
              => ToJS EventHandler
              => Cast videoTrackList VideoTrackList
              => ToJS VideoTrackList
              => (obj : videoTrackList)
              -> (v : eventHandler)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.onremovetrack"
  prim__onremovetrack : AnyPtr -> PrimIO AnyPtr
  
  export
  onremovetrack :  Cast videoTrackList VideoTrackList
                => ToJS VideoTrackList
                => (obj : videoTrackList)
                -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onremovetrack = v}"
  prim__setOnremovetrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnremovetrack :  Cast eventHandler EventHandler
                   => ToJS EventHandler
                   => Cast videoTrackList VideoTrackList
                   => ToJS VideoTrackList
                   => (obj : videoTrackList)
                   -> (v : eventHandler)
                   -> IO ()

namespace WebSocket
  
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
  bufferedAmount :  Cast webSocket WebSocket
                 => ToJS WebSocket
                 => (obj : webSocket)
                 -> IO UInt64
  
  %foreign "browser:lambda:x=>x.extensions"
  prim__extensions : AnyPtr -> PrimIO AnyPtr
  
  export
  extensions :  Cast webSocket WebSocket
             => ToJS WebSocket
             => (obj : webSocket)
             -> IO String
  
  %foreign "browser:lambda:x=>x.protocol"
  prim__protocol : AnyPtr -> PrimIO AnyPtr
  
  export
  protocol :  Cast webSocket WebSocket
           => ToJS WebSocket
           => (obj : webSocket)
           -> IO String
  
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : AnyPtr -> PrimIO AnyPtr
  
  export
  readyState :  Cast webSocket WebSocket
             => ToJS WebSocket
             => (obj : webSocket)
             -> IO UInt16
  
  %foreign "browser:lambda:x=>x.url"
  prim__url : AnyPtr -> PrimIO AnyPtr
  
  export
  url :  Cast webSocket WebSocket
      => ToJS WebSocket
      => (obj : webSocket)
      -> IO String
  
  %foreign "browser:lambda:x=>x.binaryType"
  prim__binaryType : AnyPtr -> PrimIO AnyPtr
  
  export
  binaryType :  Cast webSocket WebSocket
             => ToJS WebSocket
             => (obj : webSocket)
             -> IO BinaryType
  
  %foreign "browser:lambda:(x,v)=>{x.binaryType = v}"
  prim__setBinaryType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setBinaryType :  Cast binaryType BinaryType
                => ToJS BinaryType
                => Cast webSocket WebSocket
                => ToJS WebSocket
                => (obj : webSocket)
                -> (v : binaryType)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.onclose"
  prim__onclose : AnyPtr -> PrimIO AnyPtr
  
  export
  onclose :  Cast webSocket WebSocket
          => ToJS WebSocket
          => (obj : webSocket)
          -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onclose = v}"
  prim__setOnclose : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnclose :  Cast eventHandler EventHandler
             => ToJS EventHandler
             => Cast webSocket WebSocket
             => ToJS WebSocket
             => (obj : webSocket)
             -> (v : eventHandler)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : AnyPtr -> PrimIO AnyPtr
  
  export
  onerror :  Cast webSocket WebSocket
          => ToJS WebSocket
          => (obj : webSocket)
          -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onerror = v}"
  prim__setOnerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnerror :  Cast eventHandler EventHandler
             => ToJS EventHandler
             => Cast webSocket WebSocket
             => ToJS WebSocket
             => (obj : webSocket)
             -> (v : eventHandler)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : AnyPtr -> PrimIO AnyPtr
  
  export
  onmessage :  Cast webSocket WebSocket
            => ToJS WebSocket
            => (obj : webSocket)
            -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onmessage = v}"
  prim__setOnmessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnmessage :  Cast eventHandler EventHandler
               => ToJS EventHandler
               => Cast webSocket WebSocket
               => ToJS WebSocket
               => (obj : webSocket)
               -> (v : eventHandler)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.onopen"
  prim__onopen : AnyPtr -> PrimIO AnyPtr
  
  export
  onopen :  Cast webSocket WebSocket
         => ToJS WebSocket
         => (obj : webSocket)
         -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onopen = v}"
  prim__setOnopen : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnopen :  Cast eventHandler EventHandler
            => ToJS EventHandler
            => Cast webSocket WebSocket
            => ToJS WebSocket
            => (obj : webSocket)
            -> (v : eventHandler)
            -> IO ()

namespace Window
  
  %foreign "browser:lambda:x=>x.closed"
  prim__closed : AnyPtr -> PrimIO AnyPtr
  
  export
  closed : Cast window Window => ToJS Window => (obj : window) -> IO Bool
  
  %foreign "browser:lambda:x=>x.customElements"
  prim__customElements : AnyPtr -> PrimIO AnyPtr
  
  export
  customElements :  Cast window Window
                 => ToJS Window
                 => (obj : window)
                 -> IO CustomElementRegistry
  
  %foreign "browser:lambda:x=>x.document"
  prim__document : AnyPtr -> PrimIO AnyPtr
  
  export
  document : Cast window Window => ToJS Window => (obj : window) -> IO Document
  
  %foreign "browser:lambda:x=>x.event"
  prim__event : AnyPtr -> PrimIO AnyPtr
  
  export
  event :  Cast window Window
        => ToJS Window
        => (obj : window)
        -> IO (NS I [ Event , Undefined ])
  
  %foreign "browser:lambda:x=>x.external"
  prim__external : AnyPtr -> PrimIO AnyPtr
  
  export
  external : Cast window Window => ToJS Window => (obj : window) -> IO External
  
  %foreign "browser:lambda:x=>x.frameElement"
  prim__frameElement : AnyPtr -> PrimIO AnyPtr
  
  export
  frameElement :  Cast window Window
               => ToJS Window
               => (obj : window)
               -> IO (Maybe Element)
  
  %foreign "browser:lambda:x=>x.frames"
  prim__frames : AnyPtr -> PrimIO AnyPtr
  
  export
  frames : Cast window Window => ToJS Window => (obj : window) -> IO WindowProxy
  
  %foreign "browser:lambda:x=>x.history"
  prim__history : AnyPtr -> PrimIO AnyPtr
  
  export
  history : Cast window Window => ToJS Window => (obj : window) -> IO History
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  export
  length : Cast window Window => ToJS Window => (obj : window) -> IO UInt32
  
  %foreign "browser:lambda:x=>x.location"
  prim__location : AnyPtr -> PrimIO AnyPtr
  
  export
  location : Cast window Window => ToJS Window => (obj : window) -> IO Location
  
  %foreign "browser:lambda:x=>x.locationbar"
  prim__locationbar : AnyPtr -> PrimIO AnyPtr
  
  export
  locationbar :  Cast window Window
              => ToJS Window
              => (obj : window)
              -> IO BarProp
  
  %foreign "browser:lambda:x=>x.menubar"
  prim__menubar : AnyPtr -> PrimIO AnyPtr
  
  export
  menubar : Cast window Window => ToJS Window => (obj : window) -> IO BarProp
  
  %foreign "browser:lambda:x=>x.navigator"
  prim__navigator : AnyPtr -> PrimIO AnyPtr
  
  export
  navigator :  Cast window Window
            => ToJS Window
            => (obj : window)
            -> IO Navigator
  
  %foreign "browser:lambda:x=>x.originAgentCluster"
  prim__originAgentCluster : AnyPtr -> PrimIO AnyPtr
  
  export
  originAgentCluster :  Cast window Window
                     => ToJS Window
                     => (obj : window)
                     -> IO Bool
  
  %foreign "browser:lambda:x=>x.parent"
  prim__parent : AnyPtr -> PrimIO AnyPtr
  
  export
  parent :  Cast window Window
         => ToJS Window
         => (obj : window)
         -> IO (Maybe WindowProxy)
  
  %foreign "browser:lambda:x=>x.personalbar"
  prim__personalbar : AnyPtr -> PrimIO AnyPtr
  
  export
  personalbar :  Cast window Window
              => ToJS Window
              => (obj : window)
              -> IO BarProp
  
  %foreign "browser:lambda:x=>x.scrollbars"
  prim__scrollbars : AnyPtr -> PrimIO AnyPtr
  
  export
  scrollbars : Cast window Window => ToJS Window => (obj : window) -> IO BarProp
  
  %foreign "browser:lambda:x=>x.self"
  prim__self : AnyPtr -> PrimIO AnyPtr
  
  export
  self : Cast window Window => ToJS Window => (obj : window) -> IO WindowProxy
  
  %foreign "browser:lambda:x=>x.statusbar"
  prim__statusbar : AnyPtr -> PrimIO AnyPtr
  
  export
  statusbar : Cast window Window => ToJS Window => (obj : window) -> IO BarProp
  
  %foreign "browser:lambda:x=>x.toolbar"
  prim__toolbar : AnyPtr -> PrimIO AnyPtr
  
  export
  toolbar : Cast window Window => ToJS Window => (obj : window) -> IO BarProp
  
  %foreign "browser:lambda:x=>x.top"
  prim__top : AnyPtr -> PrimIO AnyPtr
  
  export
  top :  Cast window Window
      => ToJS Window
      => (obj : window)
      -> IO (Maybe WindowProxy)
  
  %foreign "browser:lambda:x=>x.window"
  prim__window : AnyPtr -> PrimIO AnyPtr
  
  export
  window : Cast window Window => ToJS Window => (obj : window) -> IO WindowProxy
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr
  
  export
  name : Cast window Window => ToJS Window => (obj : window) -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setName :  Cast window Window
          => ToJS Window
          => (obj : window)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.opener"
  prim__opener : AnyPtr -> PrimIO AnyPtr
  
  export
  opener : Cast window Window => ToJS Window => (obj : window) -> IO JSAny
  
  %foreign "browser:lambda:(x,v)=>{x.opener = v}"
  prim__setOpener : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOpener :  Cast window Window
            => ToJS Window
            => (obj : window)
            -> (v : JSAny)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.status"
  prim__status : AnyPtr -> PrimIO AnyPtr
  
  export
  status : Cast window Window => ToJS Window => (obj : window) -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.status = v}"
  prim__setStatus : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setStatus :  Cast window Window
            => ToJS Window
            => (obj : window)
            -> (v : String)
            -> IO ()

namespace Worker
  
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : AnyPtr -> PrimIO AnyPtr
  
  export
  onmessage :  Cast worker Worker
            => ToJS Worker
            => (obj : worker)
            -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onmessage = v}"
  prim__setOnmessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnmessage :  Cast eventHandler EventHandler
               => ToJS EventHandler
               => Cast worker Worker
               => ToJS Worker
               => (obj : worker)
               -> (v : eventHandler)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.onmessageerror"
  prim__onmessageerror : AnyPtr -> PrimIO AnyPtr
  
  export
  onmessageerror :  Cast worker Worker
                 => ToJS Worker
                 => (obj : worker)
                 -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onmessageerror = v}"
  prim__setOnmessageerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnmessageerror :  Cast eventHandler EventHandler
                    => ToJS EventHandler
                    => Cast worker Worker
                    => ToJS Worker
                    => (obj : worker)
                    -> (v : eventHandler)
                    -> IO ()

namespace WorkerGlobalScope
  
  %foreign "browser:lambda:x=>x.location"
  prim__location : AnyPtr -> PrimIO AnyPtr
  
  export
  location :  Cast workerGlobalScope WorkerGlobalScope
           => ToJS WorkerGlobalScope
           => (obj : workerGlobalScope)
           -> IO WorkerLocation
  
  %foreign "browser:lambda:x=>x.navigator"
  prim__navigator : AnyPtr -> PrimIO AnyPtr
  
  export
  navigator :  Cast workerGlobalScope WorkerGlobalScope
            => ToJS WorkerGlobalScope
            => (obj : workerGlobalScope)
            -> IO WorkerNavigator
  
  %foreign "browser:lambda:x=>x.self"
  prim__self : AnyPtr -> PrimIO AnyPtr
  
  export
  self :  Cast workerGlobalScope WorkerGlobalScope
       => ToJS WorkerGlobalScope
       => (obj : workerGlobalScope)
       -> IO WorkerGlobalScope
  
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : AnyPtr -> PrimIO AnyPtr
  
  export
  onerror :  Cast workerGlobalScope WorkerGlobalScope
          => ToJS WorkerGlobalScope
          => (obj : workerGlobalScope)
          -> IO OnErrorEventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onerror = v}"
  prim__setOnerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnerror :  Cast onErrorEventHandler OnErrorEventHandler
             => ToJS OnErrorEventHandler
             => Cast workerGlobalScope WorkerGlobalScope
             => ToJS WorkerGlobalScope
             => (obj : workerGlobalScope)
             -> (v : onErrorEventHandler)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.onlanguagechange"
  prim__onlanguagechange : AnyPtr -> PrimIO AnyPtr
  
  export
  onlanguagechange :  Cast workerGlobalScope WorkerGlobalScope
                   => ToJS WorkerGlobalScope
                   => (obj : workerGlobalScope)
                   -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onlanguagechange = v}"
  prim__setOnlanguagechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnlanguagechange :  Cast eventHandler EventHandler
                      => ToJS EventHandler
                      => Cast workerGlobalScope WorkerGlobalScope
                      => ToJS WorkerGlobalScope
                      => (obj : workerGlobalScope)
                      -> (v : eventHandler)
                      -> IO ()
  
  %foreign "browser:lambda:x=>x.onoffline"
  prim__onoffline : AnyPtr -> PrimIO AnyPtr
  
  export
  onoffline :  Cast workerGlobalScope WorkerGlobalScope
            => ToJS WorkerGlobalScope
            => (obj : workerGlobalScope)
            -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onoffline = v}"
  prim__setOnoffline : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnoffline :  Cast eventHandler EventHandler
               => ToJS EventHandler
               => Cast workerGlobalScope WorkerGlobalScope
               => ToJS WorkerGlobalScope
               => (obj : workerGlobalScope)
               -> (v : eventHandler)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.ononline"
  prim__ononline : AnyPtr -> PrimIO AnyPtr
  
  export
  ononline :  Cast workerGlobalScope WorkerGlobalScope
           => ToJS WorkerGlobalScope
           => (obj : workerGlobalScope)
           -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.ononline = v}"
  prim__setOnonline : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnonline :  Cast eventHandler EventHandler
              => ToJS EventHandler
              => Cast workerGlobalScope WorkerGlobalScope
              => ToJS WorkerGlobalScope
              => (obj : workerGlobalScope)
              -> (v : eventHandler)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.onrejectionhandled"
  prim__onrejectionhandled : AnyPtr -> PrimIO AnyPtr
  
  export
  onrejectionhandled :  Cast workerGlobalScope WorkerGlobalScope
                     => ToJS WorkerGlobalScope
                     => (obj : workerGlobalScope)
                     -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onrejectionhandled = v}"
  prim__setOnrejectionhandled : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnrejectionhandled :  Cast eventHandler EventHandler
                        => ToJS EventHandler
                        => Cast workerGlobalScope WorkerGlobalScope
                        => ToJS WorkerGlobalScope
                        => (obj : workerGlobalScope)
                        -> (v : eventHandler)
                        -> IO ()
  
  %foreign "browser:lambda:x=>x.onunhandledrejection"
  prim__onunhandledrejection : AnyPtr -> PrimIO AnyPtr
  
  export
  onunhandledrejection :  Cast workerGlobalScope WorkerGlobalScope
                       => ToJS WorkerGlobalScope
                       => (obj : workerGlobalScope)
                       -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onunhandledrejection = v}"
  prim__setOnunhandledrejection : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnunhandledrejection :  Cast eventHandler EventHandler
                          => ToJS EventHandler
                          => Cast workerGlobalScope WorkerGlobalScope
                          => ToJS WorkerGlobalScope
                          => (obj : workerGlobalScope)
                          -> (v : eventHandler)
                          -> IO ()

namespace WorkerLocation
  
  %foreign "browser:lambda:x=>x.hash"
  prim__hash : AnyPtr -> PrimIO AnyPtr
  
  export
  hash :  Cast workerLocation WorkerLocation
       => ToJS WorkerLocation
       => (obj : workerLocation)
       -> IO String
  
  %foreign "browser:lambda:x=>x.host"
  prim__host : AnyPtr -> PrimIO AnyPtr
  
  export
  host :  Cast workerLocation WorkerLocation
       => ToJS WorkerLocation
       => (obj : workerLocation)
       -> IO String
  
  %foreign "browser:lambda:x=>x.hostname"
  prim__hostname : AnyPtr -> PrimIO AnyPtr
  
  export
  hostname :  Cast workerLocation WorkerLocation
           => ToJS WorkerLocation
           => (obj : workerLocation)
           -> IO String
  
  %foreign "browser:lambda:x=>x.origin"
  prim__origin : AnyPtr -> PrimIO AnyPtr
  
  export
  origin :  Cast workerLocation WorkerLocation
         => ToJS WorkerLocation
         => (obj : workerLocation)
         -> IO String
  
  %foreign "browser:lambda:x=>x.pathname"
  prim__pathname : AnyPtr -> PrimIO AnyPtr
  
  export
  pathname :  Cast workerLocation WorkerLocation
           => ToJS WorkerLocation
           => (obj : workerLocation)
           -> IO String
  
  %foreign "browser:lambda:x=>x.port"
  prim__port : AnyPtr -> PrimIO AnyPtr
  
  export
  port :  Cast workerLocation WorkerLocation
       => ToJS WorkerLocation
       => (obj : workerLocation)
       -> IO String
  
  %foreign "browser:lambda:x=>x.protocol"
  prim__protocol : AnyPtr -> PrimIO AnyPtr
  
  export
  protocol :  Cast workerLocation WorkerLocation
           => ToJS WorkerLocation
           => (obj : workerLocation)
           -> IO String
  
  %foreign "browser:lambda:x=>x.search"
  prim__search : AnyPtr -> PrimIO AnyPtr
  
  export
  search :  Cast workerLocation WorkerLocation
         => ToJS WorkerLocation
         => (obj : workerLocation)
         -> IO String

namespace WorkerNavigator
  
  %foreign "browser:lambda:x=>x.permissions"
  prim__permissions : AnyPtr -> PrimIO AnyPtr
  
  export
  permissions :  Cast workerNavigator WorkerNavigator
              => ToJS WorkerNavigator
              => (obj : workerNavigator)
              -> IO Permissions
  
  %foreign "browser:lambda:x=>x.serviceWorker"
  prim__serviceWorker : AnyPtr -> PrimIO AnyPtr
  
  export
  serviceWorker :  Cast workerNavigator WorkerNavigator
                => ToJS WorkerNavigator
                => (obj : workerNavigator)
                -> IO ServiceWorkerContainer

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace ARIAMixin
  
  %foreign "browser:lambda:x=>x.ariaAtomic"
  prim__ariaAtomic : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaAtomic :  Cast aRIAMixin ARIAMixin
             => ToJS ARIAMixin
             => (obj : aRIAMixin)
             -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaAtomic = v}"
  prim__setAriaAtomic : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaAtomic :  Cast aRIAMixin ARIAMixin
                => ToJS ARIAMixin
                => (obj : aRIAMixin)
                -> (v : String)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaAutoComplete"
  prim__ariaAutoComplete : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaAutoComplete :  Cast aRIAMixin ARIAMixin
                   => ToJS ARIAMixin
                   => (obj : aRIAMixin)
                   -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaAutoComplete = v}"
  prim__setAriaAutoComplete : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaAutoComplete :  Cast aRIAMixin ARIAMixin
                      => ToJS ARIAMixin
                      => (obj : aRIAMixin)
                      -> (v : String)
                      -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaBusy"
  prim__ariaBusy : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaBusy :  Cast aRIAMixin ARIAMixin
           => ToJS ARIAMixin
           => (obj : aRIAMixin)
           -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaBusy = v}"
  prim__setAriaBusy : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaBusy :  Cast aRIAMixin ARIAMixin
              => ToJS ARIAMixin
              => (obj : aRIAMixin)
              -> (v : String)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaChecked"
  prim__ariaChecked : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaChecked :  Cast aRIAMixin ARIAMixin
              => ToJS ARIAMixin
              => (obj : aRIAMixin)
              -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaChecked = v}"
  prim__setAriaChecked : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaChecked :  Cast aRIAMixin ARIAMixin
                 => ToJS ARIAMixin
                 => (obj : aRIAMixin)
                 -> (v : String)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaColCount"
  prim__ariaColCount : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaColCount :  Cast aRIAMixin ARIAMixin
               => ToJS ARIAMixin
               => (obj : aRIAMixin)
               -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaColCount = v}"
  prim__setAriaColCount : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaColCount :  Cast aRIAMixin ARIAMixin
                  => ToJS ARIAMixin
                  => (obj : aRIAMixin)
                  -> (v : String)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaColIndex"
  prim__ariaColIndex : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaColIndex :  Cast aRIAMixin ARIAMixin
               => ToJS ARIAMixin
               => (obj : aRIAMixin)
               -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaColIndex = v}"
  prim__setAriaColIndex : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaColIndex :  Cast aRIAMixin ARIAMixin
                  => ToJS ARIAMixin
                  => (obj : aRIAMixin)
                  -> (v : String)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaColIndexText"
  prim__ariaColIndexText : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaColIndexText :  Cast aRIAMixin ARIAMixin
                   => ToJS ARIAMixin
                   => (obj : aRIAMixin)
                   -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaColIndexText = v}"
  prim__setAriaColIndexText : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaColIndexText :  Cast aRIAMixin ARIAMixin
                      => ToJS ARIAMixin
                      => (obj : aRIAMixin)
                      -> (v : String)
                      -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaColSpan"
  prim__ariaColSpan : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaColSpan :  Cast aRIAMixin ARIAMixin
              => ToJS ARIAMixin
              => (obj : aRIAMixin)
              -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaColSpan = v}"
  prim__setAriaColSpan : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaColSpan :  Cast aRIAMixin ARIAMixin
                 => ToJS ARIAMixin
                 => (obj : aRIAMixin)
                 -> (v : String)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaCurrent"
  prim__ariaCurrent : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaCurrent :  Cast aRIAMixin ARIAMixin
              => ToJS ARIAMixin
              => (obj : aRIAMixin)
              -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaCurrent = v}"
  prim__setAriaCurrent : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaCurrent :  Cast aRIAMixin ARIAMixin
                 => ToJS ARIAMixin
                 => (obj : aRIAMixin)
                 -> (v : String)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaDescription"
  prim__ariaDescription : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaDescription :  Cast aRIAMixin ARIAMixin
                  => ToJS ARIAMixin
                  => (obj : aRIAMixin)
                  -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaDescription = v}"
  prim__setAriaDescription : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaDescription :  Cast aRIAMixin ARIAMixin
                     => ToJS ARIAMixin
                     => (obj : aRIAMixin)
                     -> (v : String)
                     -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaDisabled"
  prim__ariaDisabled : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaDisabled :  Cast aRIAMixin ARIAMixin
               => ToJS ARIAMixin
               => (obj : aRIAMixin)
               -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaDisabled = v}"
  prim__setAriaDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaDisabled :  Cast aRIAMixin ARIAMixin
                  => ToJS ARIAMixin
                  => (obj : aRIAMixin)
                  -> (v : String)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaExpanded"
  prim__ariaExpanded : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaExpanded :  Cast aRIAMixin ARIAMixin
               => ToJS ARIAMixin
               => (obj : aRIAMixin)
               -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaExpanded = v}"
  prim__setAriaExpanded : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaExpanded :  Cast aRIAMixin ARIAMixin
                  => ToJS ARIAMixin
                  => (obj : aRIAMixin)
                  -> (v : String)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaHasPopup"
  prim__ariaHasPopup : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaHasPopup :  Cast aRIAMixin ARIAMixin
               => ToJS ARIAMixin
               => (obj : aRIAMixin)
               -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaHasPopup = v}"
  prim__setAriaHasPopup : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaHasPopup :  Cast aRIAMixin ARIAMixin
                  => ToJS ARIAMixin
                  => (obj : aRIAMixin)
                  -> (v : String)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaHidden"
  prim__ariaHidden : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaHidden :  Cast aRIAMixin ARIAMixin
             => ToJS ARIAMixin
             => (obj : aRIAMixin)
             -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaHidden = v}"
  prim__setAriaHidden : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaHidden :  Cast aRIAMixin ARIAMixin
                => ToJS ARIAMixin
                => (obj : aRIAMixin)
                -> (v : String)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaInvalid"
  prim__ariaInvalid : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaInvalid :  Cast aRIAMixin ARIAMixin
              => ToJS ARIAMixin
              => (obj : aRIAMixin)
              -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaInvalid = v}"
  prim__setAriaInvalid : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaInvalid :  Cast aRIAMixin ARIAMixin
                 => ToJS ARIAMixin
                 => (obj : aRIAMixin)
                 -> (v : String)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaKeyShortcuts"
  prim__ariaKeyShortcuts : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaKeyShortcuts :  Cast aRIAMixin ARIAMixin
                   => ToJS ARIAMixin
                   => (obj : aRIAMixin)
                   -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaKeyShortcuts = v}"
  prim__setAriaKeyShortcuts : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaKeyShortcuts :  Cast aRIAMixin ARIAMixin
                      => ToJS ARIAMixin
                      => (obj : aRIAMixin)
                      -> (v : String)
                      -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaLabel"
  prim__ariaLabel : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaLabel :  Cast aRIAMixin ARIAMixin
            => ToJS ARIAMixin
            => (obj : aRIAMixin)
            -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaLabel = v}"
  prim__setAriaLabel : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaLabel :  Cast aRIAMixin ARIAMixin
               => ToJS ARIAMixin
               => (obj : aRIAMixin)
               -> (v : String)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaLevel"
  prim__ariaLevel : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaLevel :  Cast aRIAMixin ARIAMixin
            => ToJS ARIAMixin
            => (obj : aRIAMixin)
            -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaLevel = v}"
  prim__setAriaLevel : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaLevel :  Cast aRIAMixin ARIAMixin
               => ToJS ARIAMixin
               => (obj : aRIAMixin)
               -> (v : String)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaLive"
  prim__ariaLive : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaLive :  Cast aRIAMixin ARIAMixin
           => ToJS ARIAMixin
           => (obj : aRIAMixin)
           -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaLive = v}"
  prim__setAriaLive : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaLive :  Cast aRIAMixin ARIAMixin
              => ToJS ARIAMixin
              => (obj : aRIAMixin)
              -> (v : String)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaModal"
  prim__ariaModal : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaModal :  Cast aRIAMixin ARIAMixin
            => ToJS ARIAMixin
            => (obj : aRIAMixin)
            -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaModal = v}"
  prim__setAriaModal : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaModal :  Cast aRIAMixin ARIAMixin
               => ToJS ARIAMixin
               => (obj : aRIAMixin)
               -> (v : String)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaMultiLine"
  prim__ariaMultiLine : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaMultiLine :  Cast aRIAMixin ARIAMixin
                => ToJS ARIAMixin
                => (obj : aRIAMixin)
                -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaMultiLine = v}"
  prim__setAriaMultiLine : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaMultiLine :  Cast aRIAMixin ARIAMixin
                   => ToJS ARIAMixin
                   => (obj : aRIAMixin)
                   -> (v : String)
                   -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaMultiSelectable"
  prim__ariaMultiSelectable : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaMultiSelectable :  Cast aRIAMixin ARIAMixin
                      => ToJS ARIAMixin
                      => (obj : aRIAMixin)
                      -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaMultiSelectable = v}"
  prim__setAriaMultiSelectable : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaMultiSelectable :  Cast aRIAMixin ARIAMixin
                         => ToJS ARIAMixin
                         => (obj : aRIAMixin)
                         -> (v : String)
                         -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaOrientation"
  prim__ariaOrientation : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaOrientation :  Cast aRIAMixin ARIAMixin
                  => ToJS ARIAMixin
                  => (obj : aRIAMixin)
                  -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaOrientation = v}"
  prim__setAriaOrientation : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaOrientation :  Cast aRIAMixin ARIAMixin
                     => ToJS ARIAMixin
                     => (obj : aRIAMixin)
                     -> (v : String)
                     -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaPlaceholder"
  prim__ariaPlaceholder : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaPlaceholder :  Cast aRIAMixin ARIAMixin
                  => ToJS ARIAMixin
                  => (obj : aRIAMixin)
                  -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaPlaceholder = v}"
  prim__setAriaPlaceholder : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaPlaceholder :  Cast aRIAMixin ARIAMixin
                     => ToJS ARIAMixin
                     => (obj : aRIAMixin)
                     -> (v : String)
                     -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaPosInSet"
  prim__ariaPosInSet : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaPosInSet :  Cast aRIAMixin ARIAMixin
               => ToJS ARIAMixin
               => (obj : aRIAMixin)
               -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaPosInSet = v}"
  prim__setAriaPosInSet : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaPosInSet :  Cast aRIAMixin ARIAMixin
                  => ToJS ARIAMixin
                  => (obj : aRIAMixin)
                  -> (v : String)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaPressed"
  prim__ariaPressed : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaPressed :  Cast aRIAMixin ARIAMixin
              => ToJS ARIAMixin
              => (obj : aRIAMixin)
              -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaPressed = v}"
  prim__setAriaPressed : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaPressed :  Cast aRIAMixin ARIAMixin
                 => ToJS ARIAMixin
                 => (obj : aRIAMixin)
                 -> (v : String)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaReadOnly"
  prim__ariaReadOnly : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaReadOnly :  Cast aRIAMixin ARIAMixin
               => ToJS ARIAMixin
               => (obj : aRIAMixin)
               -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaReadOnly = v}"
  prim__setAriaReadOnly : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaReadOnly :  Cast aRIAMixin ARIAMixin
                  => ToJS ARIAMixin
                  => (obj : aRIAMixin)
                  -> (v : String)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaRequired"
  prim__ariaRequired : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaRequired :  Cast aRIAMixin ARIAMixin
               => ToJS ARIAMixin
               => (obj : aRIAMixin)
               -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaRequired = v}"
  prim__setAriaRequired : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaRequired :  Cast aRIAMixin ARIAMixin
                  => ToJS ARIAMixin
                  => (obj : aRIAMixin)
                  -> (v : String)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaRoleDescription"
  prim__ariaRoleDescription : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaRoleDescription :  Cast aRIAMixin ARIAMixin
                      => ToJS ARIAMixin
                      => (obj : aRIAMixin)
                      -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaRoleDescription = v}"
  prim__setAriaRoleDescription : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaRoleDescription :  Cast aRIAMixin ARIAMixin
                         => ToJS ARIAMixin
                         => (obj : aRIAMixin)
                         -> (v : String)
                         -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaRowCount"
  prim__ariaRowCount : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaRowCount :  Cast aRIAMixin ARIAMixin
               => ToJS ARIAMixin
               => (obj : aRIAMixin)
               -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaRowCount = v}"
  prim__setAriaRowCount : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaRowCount :  Cast aRIAMixin ARIAMixin
                  => ToJS ARIAMixin
                  => (obj : aRIAMixin)
                  -> (v : String)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaRowIndex"
  prim__ariaRowIndex : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaRowIndex :  Cast aRIAMixin ARIAMixin
               => ToJS ARIAMixin
               => (obj : aRIAMixin)
               -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaRowIndex = v}"
  prim__setAriaRowIndex : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaRowIndex :  Cast aRIAMixin ARIAMixin
                  => ToJS ARIAMixin
                  => (obj : aRIAMixin)
                  -> (v : String)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaRowIndexText"
  prim__ariaRowIndexText : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaRowIndexText :  Cast aRIAMixin ARIAMixin
                   => ToJS ARIAMixin
                   => (obj : aRIAMixin)
                   -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaRowIndexText = v}"
  prim__setAriaRowIndexText : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaRowIndexText :  Cast aRIAMixin ARIAMixin
                      => ToJS ARIAMixin
                      => (obj : aRIAMixin)
                      -> (v : String)
                      -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaRowSpan"
  prim__ariaRowSpan : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaRowSpan :  Cast aRIAMixin ARIAMixin
              => ToJS ARIAMixin
              => (obj : aRIAMixin)
              -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaRowSpan = v}"
  prim__setAriaRowSpan : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaRowSpan :  Cast aRIAMixin ARIAMixin
                 => ToJS ARIAMixin
                 => (obj : aRIAMixin)
                 -> (v : String)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaSelected"
  prim__ariaSelected : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaSelected :  Cast aRIAMixin ARIAMixin
               => ToJS ARIAMixin
               => (obj : aRIAMixin)
               -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaSelected = v}"
  prim__setAriaSelected : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaSelected :  Cast aRIAMixin ARIAMixin
                  => ToJS ARIAMixin
                  => (obj : aRIAMixin)
                  -> (v : String)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaSetSize"
  prim__ariaSetSize : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaSetSize :  Cast aRIAMixin ARIAMixin
              => ToJS ARIAMixin
              => (obj : aRIAMixin)
              -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaSetSize = v}"
  prim__setAriaSetSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaSetSize :  Cast aRIAMixin ARIAMixin
                 => ToJS ARIAMixin
                 => (obj : aRIAMixin)
                 -> (v : String)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaSort"
  prim__ariaSort : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaSort :  Cast aRIAMixin ARIAMixin
           => ToJS ARIAMixin
           => (obj : aRIAMixin)
           -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaSort = v}"
  prim__setAriaSort : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaSort :  Cast aRIAMixin ARIAMixin
              => ToJS ARIAMixin
              => (obj : aRIAMixin)
              -> (v : String)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaValueMax"
  prim__ariaValueMax : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaValueMax :  Cast aRIAMixin ARIAMixin
               => ToJS ARIAMixin
               => (obj : aRIAMixin)
               -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaValueMax = v}"
  prim__setAriaValueMax : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaValueMax :  Cast aRIAMixin ARIAMixin
                  => ToJS ARIAMixin
                  => (obj : aRIAMixin)
                  -> (v : String)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaValueMin"
  prim__ariaValueMin : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaValueMin :  Cast aRIAMixin ARIAMixin
               => ToJS ARIAMixin
               => (obj : aRIAMixin)
               -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaValueMin = v}"
  prim__setAriaValueMin : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaValueMin :  Cast aRIAMixin ARIAMixin
                  => ToJS ARIAMixin
                  => (obj : aRIAMixin)
                  -> (v : String)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaValueNow"
  prim__ariaValueNow : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaValueNow :  Cast aRIAMixin ARIAMixin
               => ToJS ARIAMixin
               => (obj : aRIAMixin)
               -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaValueNow = v}"
  prim__setAriaValueNow : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaValueNow :  Cast aRIAMixin ARIAMixin
                  => ToJS ARIAMixin
                  => (obj : aRIAMixin)
                  -> (v : String)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.ariaValueText"
  prim__ariaValueText : AnyPtr -> PrimIO AnyPtr
  
  export
  ariaValueText :  Cast aRIAMixin ARIAMixin
                => ToJS ARIAMixin
                => (obj : aRIAMixin)
                -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ariaValueText = v}"
  prim__setAriaValueText : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAriaValueText :  Cast aRIAMixin ARIAMixin
                   => ToJS ARIAMixin
                   => (obj : aRIAMixin)
                   -> (v : String)
                   -> IO ()
  
  %foreign "browser:lambda:x=>x.role"
  prim__role : AnyPtr -> PrimIO AnyPtr
  
  export
  role :  Cast aRIAMixin ARIAMixin
       => ToJS ARIAMixin
       => (obj : aRIAMixin)
       -> IO (Maybe String)
  
  %foreign "browser:lambda:(x,v)=>{x.role = v}"
  prim__setRole : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setRole :  Cast aRIAMixin ARIAMixin
          => ToJS ARIAMixin
          => (obj : aRIAMixin)
          -> (v : Maybe String)
          -> IO ()

namespace AbstractWorker
  
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : AnyPtr -> PrimIO AnyPtr
  
  export
  onerror :  Cast abstractWorker AbstractWorker
          => ToJS AbstractWorker
          => (obj : abstractWorker)
          -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onerror = v}"
  prim__setOnerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnerror :  Cast abstractWorker AbstractWorker
             => ToJS AbstractWorker
             => Cast eventHandler EventHandler
             => ToJS EventHandler
             => (obj : abstractWorker)
             -> (v : eventHandler)
             -> IO ()

namespace CanvasCompositing
  
  %foreign "browser:lambda:x=>x.globalAlpha"
  prim__globalAlpha : AnyPtr -> PrimIO AnyPtr
  
  export
  globalAlpha :  Cast canvasCompositing CanvasCompositing
              => ToJS CanvasCompositing
              => (obj : canvasCompositing)
              -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.globalAlpha = v}"
  prim__setGlobalAlpha : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setGlobalAlpha :  Cast canvasCompositing CanvasCompositing
                 => ToJS CanvasCompositing
                 => (obj : canvasCompositing)
                 -> (v : Double)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.globalCompositeOperation"
  prim__globalCompositeOperation : AnyPtr -> PrimIO AnyPtr
  
  export
  globalCompositeOperation :  Cast canvasCompositing CanvasCompositing
                           => ToJS CanvasCompositing
                           => (obj : canvasCompositing)
                           -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.globalCompositeOperation = v}"
  prim__setGlobalCompositeOperation : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setGlobalCompositeOperation :  Cast canvasCompositing CanvasCompositing
                              => ToJS CanvasCompositing
                              => (obj : canvasCompositing)
                              -> (v : String)
                              -> IO ()

namespace CanvasFillStrokeStyles
  
  %foreign "browser:lambda:x=>x.fillStyle"
  prim__fillStyle : AnyPtr -> PrimIO AnyPtr
  
  export
  fillStyle :  Cast canvasFillStrokeStyles CanvasFillStrokeStyles
            => ToJS CanvasFillStrokeStyles
            => (obj : canvasFillStrokeStyles)
            -> IO (NS I [ String , CanvasGradient , CanvasPattern ])
  
  %foreign "browser:lambda:(x,v)=>{x.fillStyle = v}"
  prim__setFillStyle : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setFillStyle :  Cast canvasFillStrokeStyles CanvasFillStrokeStyles
               => ToJS CanvasFillStrokeStyles
               => (obj : canvasFillStrokeStyles)
               -> (v : NS I [ String , CanvasGradient , CanvasPattern ])
               -> IO ()
  
  %foreign "browser:lambda:x=>x.strokeStyle"
  prim__strokeStyle : AnyPtr -> PrimIO AnyPtr
  
  export
  strokeStyle :  Cast canvasFillStrokeStyles CanvasFillStrokeStyles
              => ToJS CanvasFillStrokeStyles
              => (obj : canvasFillStrokeStyles)
              -> IO (NS I [ String , CanvasGradient , CanvasPattern ])
  
  %foreign "browser:lambda:(x,v)=>{x.strokeStyle = v}"
  prim__setStrokeStyle : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setStrokeStyle :  Cast canvasFillStrokeStyles CanvasFillStrokeStyles
                 => ToJS CanvasFillStrokeStyles
                 => (obj : canvasFillStrokeStyles)
                 -> (v : NS I [ String , CanvasGradient , CanvasPattern ])
                 -> IO ()

namespace CanvasFilters
  
  %foreign "browser:lambda:x=>x.filter"
  prim__filter : AnyPtr -> PrimIO AnyPtr
  
  export
  filter :  Cast canvasFilters CanvasFilters
         => ToJS CanvasFilters
         => (obj : canvasFilters)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.filter = v}"
  prim__setFilter : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setFilter :  Cast canvasFilters CanvasFilters
            => ToJS CanvasFilters
            => (obj : canvasFilters)
            -> (v : String)
            -> IO ()

namespace CanvasImageSmoothing
  
  %foreign "browser:lambda:x=>x.imageSmoothingEnabled"
  prim__imageSmoothingEnabled : AnyPtr -> PrimIO AnyPtr
  
  export
  imageSmoothingEnabled :  Cast canvasImageSmoothing CanvasImageSmoothing
                        => ToJS CanvasImageSmoothing
                        => (obj : canvasImageSmoothing)
                        -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.imageSmoothingEnabled = v}"
  prim__setImageSmoothingEnabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setImageSmoothingEnabled :  Cast canvasImageSmoothing CanvasImageSmoothing
                           => ToJS CanvasImageSmoothing
                           => (obj : canvasImageSmoothing)
                           -> (v : Bool)
                           -> IO ()
  
  %foreign "browser:lambda:x=>x.imageSmoothingQuality"
  prim__imageSmoothingQuality : AnyPtr -> PrimIO AnyPtr
  
  export
  imageSmoothingQuality :  Cast canvasImageSmoothing CanvasImageSmoothing
                        => ToJS CanvasImageSmoothing
                        => (obj : canvasImageSmoothing)
                        -> IO ImageSmoothingQuality
  
  %foreign "browser:lambda:(x,v)=>{x.imageSmoothingQuality = v}"
  prim__setImageSmoothingQuality : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setImageSmoothingQuality :  Cast canvasImageSmoothing CanvasImageSmoothing
                           => ToJS CanvasImageSmoothing
                           => Cast imageSmoothingQuality ImageSmoothingQuality
                           => ToJS ImageSmoothingQuality
                           => (obj : canvasImageSmoothing)
                           -> (v : imageSmoothingQuality)
                           -> IO ()

namespace CanvasPathDrawingStyles
  
  %foreign "browser:lambda:x=>x.lineCap"
  prim__lineCap : AnyPtr -> PrimIO AnyPtr
  
  export
  lineCap :  Cast canvasPathDrawingStyles CanvasPathDrawingStyles
          => ToJS CanvasPathDrawingStyles
          => (obj : canvasPathDrawingStyles)
          -> IO CanvasLineCap
  
  %foreign "browser:lambda:(x,v)=>{x.lineCap = v}"
  prim__setLineCap : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setLineCap :  Cast canvasLineCap CanvasLineCap
             => ToJS CanvasLineCap
             => Cast canvasPathDrawingStyles CanvasPathDrawingStyles
             => ToJS CanvasPathDrawingStyles
             => (obj : canvasPathDrawingStyles)
             -> (v : canvasLineCap)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.lineDashOffset"
  prim__lineDashOffset : AnyPtr -> PrimIO AnyPtr
  
  export
  lineDashOffset :  Cast canvasPathDrawingStyles CanvasPathDrawingStyles
                 => ToJS CanvasPathDrawingStyles
                 => (obj : canvasPathDrawingStyles)
                 -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.lineDashOffset = v}"
  prim__setLineDashOffset : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setLineDashOffset :  Cast canvasPathDrawingStyles CanvasPathDrawingStyles
                    => ToJS CanvasPathDrawingStyles
                    => (obj : canvasPathDrawingStyles)
                    -> (v : Double)
                    -> IO ()
  
  %foreign "browser:lambda:x=>x.lineJoin"
  prim__lineJoin : AnyPtr -> PrimIO AnyPtr
  
  export
  lineJoin :  Cast canvasPathDrawingStyles CanvasPathDrawingStyles
           => ToJS CanvasPathDrawingStyles
           => (obj : canvasPathDrawingStyles)
           -> IO CanvasLineJoin
  
  %foreign "browser:lambda:(x,v)=>{x.lineJoin = v}"
  prim__setLineJoin : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setLineJoin :  Cast canvasLineJoin CanvasLineJoin
              => ToJS CanvasLineJoin
              => Cast canvasPathDrawingStyles CanvasPathDrawingStyles
              => ToJS CanvasPathDrawingStyles
              => (obj : canvasPathDrawingStyles)
              -> (v : canvasLineJoin)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.lineWidth"
  prim__lineWidth : AnyPtr -> PrimIO AnyPtr
  
  export
  lineWidth :  Cast canvasPathDrawingStyles CanvasPathDrawingStyles
            => ToJS CanvasPathDrawingStyles
            => (obj : canvasPathDrawingStyles)
            -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.lineWidth = v}"
  prim__setLineWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setLineWidth :  Cast canvasPathDrawingStyles CanvasPathDrawingStyles
               => ToJS CanvasPathDrawingStyles
               => (obj : canvasPathDrawingStyles)
               -> (v : Double)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.miterLimit"
  prim__miterLimit : AnyPtr -> PrimIO AnyPtr
  
  export
  miterLimit :  Cast canvasPathDrawingStyles CanvasPathDrawingStyles
             => ToJS CanvasPathDrawingStyles
             => (obj : canvasPathDrawingStyles)
             -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.miterLimit = v}"
  prim__setMiterLimit : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setMiterLimit :  Cast canvasPathDrawingStyles CanvasPathDrawingStyles
                => ToJS CanvasPathDrawingStyles
                => (obj : canvasPathDrawingStyles)
                -> (v : Double)
                -> IO ()

namespace CanvasShadowStyles
  
  %foreign "browser:lambda:x=>x.shadowBlur"
  prim__shadowBlur : AnyPtr -> PrimIO AnyPtr
  
  export
  shadowBlur :  Cast canvasShadowStyles CanvasShadowStyles
             => ToJS CanvasShadowStyles
             => (obj : canvasShadowStyles)
             -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.shadowBlur = v}"
  prim__setShadowBlur : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setShadowBlur :  Cast canvasShadowStyles CanvasShadowStyles
                => ToJS CanvasShadowStyles
                => (obj : canvasShadowStyles)
                -> (v : Double)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.shadowColor"
  prim__shadowColor : AnyPtr -> PrimIO AnyPtr
  
  export
  shadowColor :  Cast canvasShadowStyles CanvasShadowStyles
              => ToJS CanvasShadowStyles
              => (obj : canvasShadowStyles)
              -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.shadowColor = v}"
  prim__setShadowColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setShadowColor :  Cast canvasShadowStyles CanvasShadowStyles
                 => ToJS CanvasShadowStyles
                 => (obj : canvasShadowStyles)
                 -> (v : String)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.shadowOffsetX"
  prim__shadowOffsetX : AnyPtr -> PrimIO AnyPtr
  
  export
  shadowOffsetX :  Cast canvasShadowStyles CanvasShadowStyles
                => ToJS CanvasShadowStyles
                => (obj : canvasShadowStyles)
                -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.shadowOffsetX = v}"
  prim__setShadowOffsetX : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setShadowOffsetX :  Cast canvasShadowStyles CanvasShadowStyles
                   => ToJS CanvasShadowStyles
                   => (obj : canvasShadowStyles)
                   -> (v : Double)
                   -> IO ()
  
  %foreign "browser:lambda:x=>x.shadowOffsetY"
  prim__shadowOffsetY : AnyPtr -> PrimIO AnyPtr
  
  export
  shadowOffsetY :  Cast canvasShadowStyles CanvasShadowStyles
                => ToJS CanvasShadowStyles
                => (obj : canvasShadowStyles)
                -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.shadowOffsetY = v}"
  prim__setShadowOffsetY : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setShadowOffsetY :  Cast canvasShadowStyles CanvasShadowStyles
                   => ToJS CanvasShadowStyles
                   => (obj : canvasShadowStyles)
                   -> (v : Double)
                   -> IO ()

namespace CanvasTextDrawingStyles
  
  %foreign "browser:lambda:x=>x.direction"
  prim__direction : AnyPtr -> PrimIO AnyPtr
  
  export
  direction :  Cast canvasTextDrawingStyles CanvasTextDrawingStyles
            => ToJS CanvasTextDrawingStyles
            => (obj : canvasTextDrawingStyles)
            -> IO CanvasDirection
  
  %foreign "browser:lambda:(x,v)=>{x.direction = v}"
  prim__setDirection : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDirection :  Cast canvasDirection CanvasDirection
               => ToJS CanvasDirection
               => Cast canvasTextDrawingStyles CanvasTextDrawingStyles
               => ToJS CanvasTextDrawingStyles
               => (obj : canvasTextDrawingStyles)
               -> (v : canvasDirection)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.font"
  prim__font : AnyPtr -> PrimIO AnyPtr
  
  export
  font :  Cast canvasTextDrawingStyles CanvasTextDrawingStyles
       => ToJS CanvasTextDrawingStyles
       => (obj : canvasTextDrawingStyles)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.font = v}"
  prim__setFont : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setFont :  Cast canvasTextDrawingStyles CanvasTextDrawingStyles
          => ToJS CanvasTextDrawingStyles
          => (obj : canvasTextDrawingStyles)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.textAlign"
  prim__textAlign : AnyPtr -> PrimIO AnyPtr
  
  export
  textAlign :  Cast canvasTextDrawingStyles CanvasTextDrawingStyles
            => ToJS CanvasTextDrawingStyles
            => (obj : canvasTextDrawingStyles)
            -> IO CanvasTextAlign
  
  %foreign "browser:lambda:(x,v)=>{x.textAlign = v}"
  prim__setTextAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setTextAlign :  Cast canvasTextAlign CanvasTextAlign
               => ToJS CanvasTextAlign
               => Cast canvasTextDrawingStyles CanvasTextDrawingStyles
               => ToJS CanvasTextDrawingStyles
               => (obj : canvasTextDrawingStyles)
               -> (v : canvasTextAlign)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.textBaseline"
  prim__textBaseline : AnyPtr -> PrimIO AnyPtr
  
  export
  textBaseline :  Cast canvasTextDrawingStyles CanvasTextDrawingStyles
               => ToJS CanvasTextDrawingStyles
               => (obj : canvasTextDrawingStyles)
               -> IO CanvasTextBaseline
  
  %foreign "browser:lambda:(x,v)=>{x.textBaseline = v}"
  prim__setTextBaseline : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setTextBaseline :  Cast canvasTextBaseline CanvasTextBaseline
                  => ToJS CanvasTextBaseline
                  => Cast canvasTextDrawingStyles CanvasTextDrawingStyles
                  => ToJS CanvasTextDrawingStyles
                  => (obj : canvasTextDrawingStyles)
                  -> (v : canvasTextBaseline)
                  -> IO ()

namespace DocumentAndElementEventHandlers
  
  %foreign "browser:lambda:x=>x.oncopy"
  prim__oncopy : AnyPtr -> PrimIO AnyPtr
  
  export
  oncopy :  Cast documentAndElementEventHandlers DocumentAndElementEventHandlers
         => ToJS DocumentAndElementEventHandlers
         => (obj : documentAndElementEventHandlers)
         -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.oncopy = v}"
  prim__setOncopy : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOncopy :  Cast documentAndElementEventHandlers DocumentAndElementEventHandlers
            => ToJS DocumentAndElementEventHandlers
            => Cast eventHandler EventHandler
            => ToJS EventHandler
            => (obj : documentAndElementEventHandlers)
            -> (v : eventHandler)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.oncut"
  prim__oncut : AnyPtr -> PrimIO AnyPtr
  
  export
  oncut :  Cast documentAndElementEventHandlers DocumentAndElementEventHandlers
        => ToJS DocumentAndElementEventHandlers
        => (obj : documentAndElementEventHandlers)
        -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.oncut = v}"
  prim__setOncut : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOncut :  Cast documentAndElementEventHandlers DocumentAndElementEventHandlers
           => ToJS DocumentAndElementEventHandlers
           => Cast eventHandler EventHandler
           => ToJS EventHandler
           => (obj : documentAndElementEventHandlers)
           -> (v : eventHandler)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.onpaste"
  prim__onpaste : AnyPtr -> PrimIO AnyPtr
  
  export
  onpaste :  Cast documentAndElementEventHandlers DocumentAndElementEventHandlers
          => ToJS DocumentAndElementEventHandlers
          => (obj : documentAndElementEventHandlers)
          -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onpaste = v}"
  prim__setOnpaste : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnpaste :  Cast documentAndElementEventHandlers DocumentAndElementEventHandlers
             => ToJS DocumentAndElementEventHandlers
             => Cast eventHandler EventHandler
             => ToJS EventHandler
             => (obj : documentAndElementEventHandlers)
             -> (v : eventHandler)
             -> IO ()

namespace ElementContentEditable
  
  %foreign "browser:lambda:x=>x.isContentEditable"
  prim__isContentEditable : AnyPtr -> PrimIO AnyPtr
  
  export
  isContentEditable :  Cast elementContentEditable ElementContentEditable
                    => ToJS ElementContentEditable
                    => (obj : elementContentEditable)
                    -> IO Bool
  
  %foreign "browser:lambda:x=>x.contentEditable"
  prim__contentEditable : AnyPtr -> PrimIO AnyPtr
  
  export
  contentEditable :  Cast elementContentEditable ElementContentEditable
                  => ToJS ElementContentEditable
                  => (obj : elementContentEditable)
                  -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.contentEditable = v}"
  prim__setContentEditable : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setContentEditable :  Cast elementContentEditable ElementContentEditable
                     => ToJS ElementContentEditable
                     => (obj : elementContentEditable)
                     -> (v : String)
                     -> IO ()
  
  %foreign "browser:lambda:x=>x.enterKeyHint"
  prim__enterKeyHint : AnyPtr -> PrimIO AnyPtr
  
  export
  enterKeyHint :  Cast elementContentEditable ElementContentEditable
               => ToJS ElementContentEditable
               => (obj : elementContentEditable)
               -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.enterKeyHint = v}"
  prim__setEnterKeyHint : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setEnterKeyHint :  Cast elementContentEditable ElementContentEditable
                  => ToJS ElementContentEditable
                  => (obj : elementContentEditable)
                  -> (v : String)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.inputMode"
  prim__inputMode : AnyPtr -> PrimIO AnyPtr
  
  export
  inputMode :  Cast elementContentEditable ElementContentEditable
            => ToJS ElementContentEditable
            => (obj : elementContentEditable)
            -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.inputMode = v}"
  prim__setInputMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setInputMode :  Cast elementContentEditable ElementContentEditable
               => ToJS ElementContentEditable
               => (obj : elementContentEditable)
               -> (v : String)
               -> IO ()

namespace GlobalEventHandlers
  
  %foreign "browser:lambda:x=>x.onabort"
  prim__onabort : AnyPtr -> PrimIO AnyPtr
  
  export
  onabort :  Cast globalEventHandlers GlobalEventHandlers
          => ToJS GlobalEventHandlers
          => (obj : globalEventHandlers)
          -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onabort = v}"
  prim__setOnabort : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnabort :  Cast eventHandler EventHandler
             => ToJS EventHandler
             => Cast globalEventHandlers GlobalEventHandlers
             => ToJS GlobalEventHandlers
             => (obj : globalEventHandlers)
             -> (v : eventHandler)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.onauxclick"
  prim__onauxclick : AnyPtr -> PrimIO AnyPtr
  
  export
  onauxclick :  Cast globalEventHandlers GlobalEventHandlers
             => ToJS GlobalEventHandlers
             => (obj : globalEventHandlers)
             -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onauxclick = v}"
  prim__setOnauxclick : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnauxclick :  Cast eventHandler EventHandler
                => ToJS EventHandler
                => Cast globalEventHandlers GlobalEventHandlers
                => ToJS GlobalEventHandlers
                => (obj : globalEventHandlers)
                -> (v : eventHandler)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.onblur"
  prim__onblur : AnyPtr -> PrimIO AnyPtr
  
  export
  onblur :  Cast globalEventHandlers GlobalEventHandlers
         => ToJS GlobalEventHandlers
         => (obj : globalEventHandlers)
         -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onblur = v}"
  prim__setOnblur : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnblur :  Cast eventHandler EventHandler
            => ToJS EventHandler
            => Cast globalEventHandlers GlobalEventHandlers
            => ToJS GlobalEventHandlers
            => (obj : globalEventHandlers)
            -> (v : eventHandler)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.oncancel"
  prim__oncancel : AnyPtr -> PrimIO AnyPtr
  
  export
  oncancel :  Cast globalEventHandlers GlobalEventHandlers
           => ToJS GlobalEventHandlers
           => (obj : globalEventHandlers)
           -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.oncancel = v}"
  prim__setOncancel : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOncancel :  Cast eventHandler EventHandler
              => ToJS EventHandler
              => Cast globalEventHandlers GlobalEventHandlers
              => ToJS GlobalEventHandlers
              => (obj : globalEventHandlers)
              -> (v : eventHandler)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.oncanplay"
  prim__oncanplay : AnyPtr -> PrimIO AnyPtr
  
  export
  oncanplay :  Cast globalEventHandlers GlobalEventHandlers
            => ToJS GlobalEventHandlers
            => (obj : globalEventHandlers)
            -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.oncanplay = v}"
  prim__setOncanplay : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOncanplay :  Cast eventHandler EventHandler
               => ToJS EventHandler
               => Cast globalEventHandlers GlobalEventHandlers
               => ToJS GlobalEventHandlers
               => (obj : globalEventHandlers)
               -> (v : eventHandler)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.oncanplaythrough"
  prim__oncanplaythrough : AnyPtr -> PrimIO AnyPtr
  
  export
  oncanplaythrough :  Cast globalEventHandlers GlobalEventHandlers
                   => ToJS GlobalEventHandlers
                   => (obj : globalEventHandlers)
                   -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.oncanplaythrough = v}"
  prim__setOncanplaythrough : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOncanplaythrough :  Cast eventHandler EventHandler
                      => ToJS EventHandler
                      => Cast globalEventHandlers GlobalEventHandlers
                      => ToJS GlobalEventHandlers
                      => (obj : globalEventHandlers)
                      -> (v : eventHandler)
                      -> IO ()
  
  %foreign "browser:lambda:x=>x.onchange"
  prim__onchange : AnyPtr -> PrimIO AnyPtr
  
  export
  onchange :  Cast globalEventHandlers GlobalEventHandlers
           => ToJS GlobalEventHandlers
           => (obj : globalEventHandlers)
           -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onchange = v}"
  prim__setOnchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnchange :  Cast eventHandler EventHandler
              => ToJS EventHandler
              => Cast globalEventHandlers GlobalEventHandlers
              => ToJS GlobalEventHandlers
              => (obj : globalEventHandlers)
              -> (v : eventHandler)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.onclick"
  prim__onclick : AnyPtr -> PrimIO AnyPtr
  
  export
  onclick :  Cast globalEventHandlers GlobalEventHandlers
          => ToJS GlobalEventHandlers
          => (obj : globalEventHandlers)
          -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onclick = v}"
  prim__setOnclick : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnclick :  Cast eventHandler EventHandler
             => ToJS EventHandler
             => Cast globalEventHandlers GlobalEventHandlers
             => ToJS GlobalEventHandlers
             => (obj : globalEventHandlers)
             -> (v : eventHandler)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.onclose"
  prim__onclose : AnyPtr -> PrimIO AnyPtr
  
  export
  onclose :  Cast globalEventHandlers GlobalEventHandlers
          => ToJS GlobalEventHandlers
          => (obj : globalEventHandlers)
          -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onclose = v}"
  prim__setOnclose : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnclose :  Cast eventHandler EventHandler
             => ToJS EventHandler
             => Cast globalEventHandlers GlobalEventHandlers
             => ToJS GlobalEventHandlers
             => (obj : globalEventHandlers)
             -> (v : eventHandler)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.oncontextmenu"
  prim__oncontextmenu : AnyPtr -> PrimIO AnyPtr
  
  export
  oncontextmenu :  Cast globalEventHandlers GlobalEventHandlers
                => ToJS GlobalEventHandlers
                => (obj : globalEventHandlers)
                -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.oncontextmenu = v}"
  prim__setOncontextmenu : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOncontextmenu :  Cast eventHandler EventHandler
                   => ToJS EventHandler
                   => Cast globalEventHandlers GlobalEventHandlers
                   => ToJS GlobalEventHandlers
                   => (obj : globalEventHandlers)
                   -> (v : eventHandler)
                   -> IO ()
  
  %foreign "browser:lambda:x=>x.oncuechange"
  prim__oncuechange : AnyPtr -> PrimIO AnyPtr
  
  export
  oncuechange :  Cast globalEventHandlers GlobalEventHandlers
              => ToJS GlobalEventHandlers
              => (obj : globalEventHandlers)
              -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.oncuechange = v}"
  prim__setOncuechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOncuechange :  Cast eventHandler EventHandler
                 => ToJS EventHandler
                 => Cast globalEventHandlers GlobalEventHandlers
                 => ToJS GlobalEventHandlers
                 => (obj : globalEventHandlers)
                 -> (v : eventHandler)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.ondblclick"
  prim__ondblclick : AnyPtr -> PrimIO AnyPtr
  
  export
  ondblclick :  Cast globalEventHandlers GlobalEventHandlers
             => ToJS GlobalEventHandlers
             => (obj : globalEventHandlers)
             -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.ondblclick = v}"
  prim__setOndblclick : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOndblclick :  Cast eventHandler EventHandler
                => ToJS EventHandler
                => Cast globalEventHandlers GlobalEventHandlers
                => ToJS GlobalEventHandlers
                => (obj : globalEventHandlers)
                -> (v : eventHandler)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.ondrag"
  prim__ondrag : AnyPtr -> PrimIO AnyPtr
  
  export
  ondrag :  Cast globalEventHandlers GlobalEventHandlers
         => ToJS GlobalEventHandlers
         => (obj : globalEventHandlers)
         -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.ondrag = v}"
  prim__setOndrag : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOndrag :  Cast eventHandler EventHandler
            => ToJS EventHandler
            => Cast globalEventHandlers GlobalEventHandlers
            => ToJS GlobalEventHandlers
            => (obj : globalEventHandlers)
            -> (v : eventHandler)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.ondragend"
  prim__ondragend : AnyPtr -> PrimIO AnyPtr
  
  export
  ondragend :  Cast globalEventHandlers GlobalEventHandlers
            => ToJS GlobalEventHandlers
            => (obj : globalEventHandlers)
            -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.ondragend = v}"
  prim__setOndragend : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOndragend :  Cast eventHandler EventHandler
               => ToJS EventHandler
               => Cast globalEventHandlers GlobalEventHandlers
               => ToJS GlobalEventHandlers
               => (obj : globalEventHandlers)
               -> (v : eventHandler)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.ondragenter"
  prim__ondragenter : AnyPtr -> PrimIO AnyPtr
  
  export
  ondragenter :  Cast globalEventHandlers GlobalEventHandlers
              => ToJS GlobalEventHandlers
              => (obj : globalEventHandlers)
              -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.ondragenter = v}"
  prim__setOndragenter : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOndragenter :  Cast eventHandler EventHandler
                 => ToJS EventHandler
                 => Cast globalEventHandlers GlobalEventHandlers
                 => ToJS GlobalEventHandlers
                 => (obj : globalEventHandlers)
                 -> (v : eventHandler)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.ondragleave"
  prim__ondragleave : AnyPtr -> PrimIO AnyPtr
  
  export
  ondragleave :  Cast globalEventHandlers GlobalEventHandlers
              => ToJS GlobalEventHandlers
              => (obj : globalEventHandlers)
              -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.ondragleave = v}"
  prim__setOndragleave : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOndragleave :  Cast eventHandler EventHandler
                 => ToJS EventHandler
                 => Cast globalEventHandlers GlobalEventHandlers
                 => ToJS GlobalEventHandlers
                 => (obj : globalEventHandlers)
                 -> (v : eventHandler)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.ondragover"
  prim__ondragover : AnyPtr -> PrimIO AnyPtr
  
  export
  ondragover :  Cast globalEventHandlers GlobalEventHandlers
             => ToJS GlobalEventHandlers
             => (obj : globalEventHandlers)
             -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.ondragover = v}"
  prim__setOndragover : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOndragover :  Cast eventHandler EventHandler
                => ToJS EventHandler
                => Cast globalEventHandlers GlobalEventHandlers
                => ToJS GlobalEventHandlers
                => (obj : globalEventHandlers)
                -> (v : eventHandler)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.ondragstart"
  prim__ondragstart : AnyPtr -> PrimIO AnyPtr
  
  export
  ondragstart :  Cast globalEventHandlers GlobalEventHandlers
              => ToJS GlobalEventHandlers
              => (obj : globalEventHandlers)
              -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.ondragstart = v}"
  prim__setOndragstart : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOndragstart :  Cast eventHandler EventHandler
                 => ToJS EventHandler
                 => Cast globalEventHandlers GlobalEventHandlers
                 => ToJS GlobalEventHandlers
                 => (obj : globalEventHandlers)
                 -> (v : eventHandler)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.ondrop"
  prim__ondrop : AnyPtr -> PrimIO AnyPtr
  
  export
  ondrop :  Cast globalEventHandlers GlobalEventHandlers
         => ToJS GlobalEventHandlers
         => (obj : globalEventHandlers)
         -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.ondrop = v}"
  prim__setOndrop : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOndrop :  Cast eventHandler EventHandler
            => ToJS EventHandler
            => Cast globalEventHandlers GlobalEventHandlers
            => ToJS GlobalEventHandlers
            => (obj : globalEventHandlers)
            -> (v : eventHandler)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.ondurationchange"
  prim__ondurationchange : AnyPtr -> PrimIO AnyPtr
  
  export
  ondurationchange :  Cast globalEventHandlers GlobalEventHandlers
                   => ToJS GlobalEventHandlers
                   => (obj : globalEventHandlers)
                   -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.ondurationchange = v}"
  prim__setOndurationchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOndurationchange :  Cast eventHandler EventHandler
                      => ToJS EventHandler
                      => Cast globalEventHandlers GlobalEventHandlers
                      => ToJS GlobalEventHandlers
                      => (obj : globalEventHandlers)
                      -> (v : eventHandler)
                      -> IO ()
  
  %foreign "browser:lambda:x=>x.onemptied"
  prim__onemptied : AnyPtr -> PrimIO AnyPtr
  
  export
  onemptied :  Cast globalEventHandlers GlobalEventHandlers
            => ToJS GlobalEventHandlers
            => (obj : globalEventHandlers)
            -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onemptied = v}"
  prim__setOnemptied : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnemptied :  Cast eventHandler EventHandler
               => ToJS EventHandler
               => Cast globalEventHandlers GlobalEventHandlers
               => ToJS GlobalEventHandlers
               => (obj : globalEventHandlers)
               -> (v : eventHandler)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.onended"
  prim__onended : AnyPtr -> PrimIO AnyPtr
  
  export
  onended :  Cast globalEventHandlers GlobalEventHandlers
          => ToJS GlobalEventHandlers
          => (obj : globalEventHandlers)
          -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onended = v}"
  prim__setOnended : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnended :  Cast eventHandler EventHandler
             => ToJS EventHandler
             => Cast globalEventHandlers GlobalEventHandlers
             => ToJS GlobalEventHandlers
             => (obj : globalEventHandlers)
             -> (v : eventHandler)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : AnyPtr -> PrimIO AnyPtr
  
  export
  onerror :  Cast globalEventHandlers GlobalEventHandlers
          => ToJS GlobalEventHandlers
          => (obj : globalEventHandlers)
          -> IO OnErrorEventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onerror = v}"
  prim__setOnerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnerror :  Cast globalEventHandlers GlobalEventHandlers
             => ToJS GlobalEventHandlers
             => Cast onErrorEventHandler OnErrorEventHandler
             => ToJS OnErrorEventHandler
             => (obj : globalEventHandlers)
             -> (v : onErrorEventHandler)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.onfocus"
  prim__onfocus : AnyPtr -> PrimIO AnyPtr
  
  export
  onfocus :  Cast globalEventHandlers GlobalEventHandlers
          => ToJS GlobalEventHandlers
          => (obj : globalEventHandlers)
          -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onfocus = v}"
  prim__setOnfocus : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnfocus :  Cast eventHandler EventHandler
             => ToJS EventHandler
             => Cast globalEventHandlers GlobalEventHandlers
             => ToJS GlobalEventHandlers
             => (obj : globalEventHandlers)
             -> (v : eventHandler)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.onformdata"
  prim__onformdata : AnyPtr -> PrimIO AnyPtr
  
  export
  onformdata :  Cast globalEventHandlers GlobalEventHandlers
             => ToJS GlobalEventHandlers
             => (obj : globalEventHandlers)
             -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onformdata = v}"
  prim__setOnformdata : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnformdata :  Cast eventHandler EventHandler
                => ToJS EventHandler
                => Cast globalEventHandlers GlobalEventHandlers
                => ToJS GlobalEventHandlers
                => (obj : globalEventHandlers)
                -> (v : eventHandler)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.oninput"
  prim__oninput : AnyPtr -> PrimIO AnyPtr
  
  export
  oninput :  Cast globalEventHandlers GlobalEventHandlers
          => ToJS GlobalEventHandlers
          => (obj : globalEventHandlers)
          -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.oninput = v}"
  prim__setOninput : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOninput :  Cast eventHandler EventHandler
             => ToJS EventHandler
             => Cast globalEventHandlers GlobalEventHandlers
             => ToJS GlobalEventHandlers
             => (obj : globalEventHandlers)
             -> (v : eventHandler)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.oninvalid"
  prim__oninvalid : AnyPtr -> PrimIO AnyPtr
  
  export
  oninvalid :  Cast globalEventHandlers GlobalEventHandlers
            => ToJS GlobalEventHandlers
            => (obj : globalEventHandlers)
            -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.oninvalid = v}"
  prim__setOninvalid : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOninvalid :  Cast eventHandler EventHandler
               => ToJS EventHandler
               => Cast globalEventHandlers GlobalEventHandlers
               => ToJS GlobalEventHandlers
               => (obj : globalEventHandlers)
               -> (v : eventHandler)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.onkeydown"
  prim__onkeydown : AnyPtr -> PrimIO AnyPtr
  
  export
  onkeydown :  Cast globalEventHandlers GlobalEventHandlers
            => ToJS GlobalEventHandlers
            => (obj : globalEventHandlers)
            -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onkeydown = v}"
  prim__setOnkeydown : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnkeydown :  Cast eventHandler EventHandler
               => ToJS EventHandler
               => Cast globalEventHandlers GlobalEventHandlers
               => ToJS GlobalEventHandlers
               => (obj : globalEventHandlers)
               -> (v : eventHandler)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.onkeypress"
  prim__onkeypress : AnyPtr -> PrimIO AnyPtr
  
  export
  onkeypress :  Cast globalEventHandlers GlobalEventHandlers
             => ToJS GlobalEventHandlers
             => (obj : globalEventHandlers)
             -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onkeypress = v}"
  prim__setOnkeypress : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnkeypress :  Cast eventHandler EventHandler
                => ToJS EventHandler
                => Cast globalEventHandlers GlobalEventHandlers
                => ToJS GlobalEventHandlers
                => (obj : globalEventHandlers)
                -> (v : eventHandler)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.onkeyup"
  prim__onkeyup : AnyPtr -> PrimIO AnyPtr
  
  export
  onkeyup :  Cast globalEventHandlers GlobalEventHandlers
          => ToJS GlobalEventHandlers
          => (obj : globalEventHandlers)
          -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onkeyup = v}"
  prim__setOnkeyup : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnkeyup :  Cast eventHandler EventHandler
             => ToJS EventHandler
             => Cast globalEventHandlers GlobalEventHandlers
             => ToJS GlobalEventHandlers
             => (obj : globalEventHandlers)
             -> (v : eventHandler)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.onload"
  prim__onload : AnyPtr -> PrimIO AnyPtr
  
  export
  onload :  Cast globalEventHandlers GlobalEventHandlers
         => ToJS GlobalEventHandlers
         => (obj : globalEventHandlers)
         -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onload = v}"
  prim__setOnload : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnload :  Cast eventHandler EventHandler
            => ToJS EventHandler
            => Cast globalEventHandlers GlobalEventHandlers
            => ToJS GlobalEventHandlers
            => (obj : globalEventHandlers)
            -> (v : eventHandler)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.onloadeddata"
  prim__onloadeddata : AnyPtr -> PrimIO AnyPtr
  
  export
  onloadeddata :  Cast globalEventHandlers GlobalEventHandlers
               => ToJS GlobalEventHandlers
               => (obj : globalEventHandlers)
               -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onloadeddata = v}"
  prim__setOnloadeddata : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnloadeddata :  Cast eventHandler EventHandler
                  => ToJS EventHandler
                  => Cast globalEventHandlers GlobalEventHandlers
                  => ToJS GlobalEventHandlers
                  => (obj : globalEventHandlers)
                  -> (v : eventHandler)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.onloadedmetadata"
  prim__onloadedmetadata : AnyPtr -> PrimIO AnyPtr
  
  export
  onloadedmetadata :  Cast globalEventHandlers GlobalEventHandlers
                   => ToJS GlobalEventHandlers
                   => (obj : globalEventHandlers)
                   -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onloadedmetadata = v}"
  prim__setOnloadedmetadata : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnloadedmetadata :  Cast eventHandler EventHandler
                      => ToJS EventHandler
                      => Cast globalEventHandlers GlobalEventHandlers
                      => ToJS GlobalEventHandlers
                      => (obj : globalEventHandlers)
                      -> (v : eventHandler)
                      -> IO ()
  
  %foreign "browser:lambda:x=>x.onloadstart"
  prim__onloadstart : AnyPtr -> PrimIO AnyPtr
  
  export
  onloadstart :  Cast globalEventHandlers GlobalEventHandlers
              => ToJS GlobalEventHandlers
              => (obj : globalEventHandlers)
              -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onloadstart = v}"
  prim__setOnloadstart : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnloadstart :  Cast eventHandler EventHandler
                 => ToJS EventHandler
                 => Cast globalEventHandlers GlobalEventHandlers
                 => ToJS GlobalEventHandlers
                 => (obj : globalEventHandlers)
                 -> (v : eventHandler)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.onmousedown"
  prim__onmousedown : AnyPtr -> PrimIO AnyPtr
  
  export
  onmousedown :  Cast globalEventHandlers GlobalEventHandlers
              => ToJS GlobalEventHandlers
              => (obj : globalEventHandlers)
              -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onmousedown = v}"
  prim__setOnmousedown : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnmousedown :  Cast eventHandler EventHandler
                 => ToJS EventHandler
                 => Cast globalEventHandlers GlobalEventHandlers
                 => ToJS GlobalEventHandlers
                 => (obj : globalEventHandlers)
                 -> (v : eventHandler)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.onmouseenter"
  prim__onmouseenter : AnyPtr -> PrimIO AnyPtr
  
  export
  onmouseenter :  Cast globalEventHandlers GlobalEventHandlers
               => ToJS GlobalEventHandlers
               => (obj : globalEventHandlers)
               -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onmouseenter = v}"
  prim__setOnmouseenter : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnmouseenter :  Cast eventHandler EventHandler
                  => ToJS EventHandler
                  => Cast globalEventHandlers GlobalEventHandlers
                  => ToJS GlobalEventHandlers
                  => (obj : globalEventHandlers)
                  -> (v : eventHandler)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.onmouseleave"
  prim__onmouseleave : AnyPtr -> PrimIO AnyPtr
  
  export
  onmouseleave :  Cast globalEventHandlers GlobalEventHandlers
               => ToJS GlobalEventHandlers
               => (obj : globalEventHandlers)
               -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onmouseleave = v}"
  prim__setOnmouseleave : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnmouseleave :  Cast eventHandler EventHandler
                  => ToJS EventHandler
                  => Cast globalEventHandlers GlobalEventHandlers
                  => ToJS GlobalEventHandlers
                  => (obj : globalEventHandlers)
                  -> (v : eventHandler)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.onmousemove"
  prim__onmousemove : AnyPtr -> PrimIO AnyPtr
  
  export
  onmousemove :  Cast globalEventHandlers GlobalEventHandlers
              => ToJS GlobalEventHandlers
              => (obj : globalEventHandlers)
              -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onmousemove = v}"
  prim__setOnmousemove : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnmousemove :  Cast eventHandler EventHandler
                 => ToJS EventHandler
                 => Cast globalEventHandlers GlobalEventHandlers
                 => ToJS GlobalEventHandlers
                 => (obj : globalEventHandlers)
                 -> (v : eventHandler)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.onmouseout"
  prim__onmouseout : AnyPtr -> PrimIO AnyPtr
  
  export
  onmouseout :  Cast globalEventHandlers GlobalEventHandlers
             => ToJS GlobalEventHandlers
             => (obj : globalEventHandlers)
             -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onmouseout = v}"
  prim__setOnmouseout : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnmouseout :  Cast eventHandler EventHandler
                => ToJS EventHandler
                => Cast globalEventHandlers GlobalEventHandlers
                => ToJS GlobalEventHandlers
                => (obj : globalEventHandlers)
                -> (v : eventHandler)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.onmouseover"
  prim__onmouseover : AnyPtr -> PrimIO AnyPtr
  
  export
  onmouseover :  Cast globalEventHandlers GlobalEventHandlers
              => ToJS GlobalEventHandlers
              => (obj : globalEventHandlers)
              -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onmouseover = v}"
  prim__setOnmouseover : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnmouseover :  Cast eventHandler EventHandler
                 => ToJS EventHandler
                 => Cast globalEventHandlers GlobalEventHandlers
                 => ToJS GlobalEventHandlers
                 => (obj : globalEventHandlers)
                 -> (v : eventHandler)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.onmouseup"
  prim__onmouseup : AnyPtr -> PrimIO AnyPtr
  
  export
  onmouseup :  Cast globalEventHandlers GlobalEventHandlers
            => ToJS GlobalEventHandlers
            => (obj : globalEventHandlers)
            -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onmouseup = v}"
  prim__setOnmouseup : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnmouseup :  Cast eventHandler EventHandler
               => ToJS EventHandler
               => Cast globalEventHandlers GlobalEventHandlers
               => ToJS GlobalEventHandlers
               => (obj : globalEventHandlers)
               -> (v : eventHandler)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.onpause"
  prim__onpause : AnyPtr -> PrimIO AnyPtr
  
  export
  onpause :  Cast globalEventHandlers GlobalEventHandlers
          => ToJS GlobalEventHandlers
          => (obj : globalEventHandlers)
          -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onpause = v}"
  prim__setOnpause : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnpause :  Cast eventHandler EventHandler
             => ToJS EventHandler
             => Cast globalEventHandlers GlobalEventHandlers
             => ToJS GlobalEventHandlers
             => (obj : globalEventHandlers)
             -> (v : eventHandler)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.onplay"
  prim__onplay : AnyPtr -> PrimIO AnyPtr
  
  export
  onplay :  Cast globalEventHandlers GlobalEventHandlers
         => ToJS GlobalEventHandlers
         => (obj : globalEventHandlers)
         -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onplay = v}"
  prim__setOnplay : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnplay :  Cast eventHandler EventHandler
            => ToJS EventHandler
            => Cast globalEventHandlers GlobalEventHandlers
            => ToJS GlobalEventHandlers
            => (obj : globalEventHandlers)
            -> (v : eventHandler)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.onplaying"
  prim__onplaying : AnyPtr -> PrimIO AnyPtr
  
  export
  onplaying :  Cast globalEventHandlers GlobalEventHandlers
            => ToJS GlobalEventHandlers
            => (obj : globalEventHandlers)
            -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onplaying = v}"
  prim__setOnplaying : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnplaying :  Cast eventHandler EventHandler
               => ToJS EventHandler
               => Cast globalEventHandlers GlobalEventHandlers
               => ToJS GlobalEventHandlers
               => (obj : globalEventHandlers)
               -> (v : eventHandler)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.onprogress"
  prim__onprogress : AnyPtr -> PrimIO AnyPtr
  
  export
  onprogress :  Cast globalEventHandlers GlobalEventHandlers
             => ToJS GlobalEventHandlers
             => (obj : globalEventHandlers)
             -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onprogress = v}"
  prim__setOnprogress : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnprogress :  Cast eventHandler EventHandler
                => ToJS EventHandler
                => Cast globalEventHandlers GlobalEventHandlers
                => ToJS GlobalEventHandlers
                => (obj : globalEventHandlers)
                -> (v : eventHandler)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.onratechange"
  prim__onratechange : AnyPtr -> PrimIO AnyPtr
  
  export
  onratechange :  Cast globalEventHandlers GlobalEventHandlers
               => ToJS GlobalEventHandlers
               => (obj : globalEventHandlers)
               -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onratechange = v}"
  prim__setOnratechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnratechange :  Cast eventHandler EventHandler
                  => ToJS EventHandler
                  => Cast globalEventHandlers GlobalEventHandlers
                  => ToJS GlobalEventHandlers
                  => (obj : globalEventHandlers)
                  -> (v : eventHandler)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.onreset"
  prim__onreset : AnyPtr -> PrimIO AnyPtr
  
  export
  onreset :  Cast globalEventHandlers GlobalEventHandlers
          => ToJS GlobalEventHandlers
          => (obj : globalEventHandlers)
          -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onreset = v}"
  prim__setOnreset : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnreset :  Cast eventHandler EventHandler
             => ToJS EventHandler
             => Cast globalEventHandlers GlobalEventHandlers
             => ToJS GlobalEventHandlers
             => (obj : globalEventHandlers)
             -> (v : eventHandler)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.onresize"
  prim__onresize : AnyPtr -> PrimIO AnyPtr
  
  export
  onresize :  Cast globalEventHandlers GlobalEventHandlers
           => ToJS GlobalEventHandlers
           => (obj : globalEventHandlers)
           -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onresize = v}"
  prim__setOnresize : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnresize :  Cast eventHandler EventHandler
              => ToJS EventHandler
              => Cast globalEventHandlers GlobalEventHandlers
              => ToJS GlobalEventHandlers
              => (obj : globalEventHandlers)
              -> (v : eventHandler)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.onscroll"
  prim__onscroll : AnyPtr -> PrimIO AnyPtr
  
  export
  onscroll :  Cast globalEventHandlers GlobalEventHandlers
           => ToJS GlobalEventHandlers
           => (obj : globalEventHandlers)
           -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onscroll = v}"
  prim__setOnscroll : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnscroll :  Cast eventHandler EventHandler
              => ToJS EventHandler
              => Cast globalEventHandlers GlobalEventHandlers
              => ToJS GlobalEventHandlers
              => (obj : globalEventHandlers)
              -> (v : eventHandler)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.onsecuritypolicyviolation"
  prim__onsecuritypolicyviolation : AnyPtr -> PrimIO AnyPtr
  
  export
  onsecuritypolicyviolation :  Cast globalEventHandlers GlobalEventHandlers
                            => ToJS GlobalEventHandlers
                            => (obj : globalEventHandlers)
                            -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onsecuritypolicyviolation = v}"
  prim__setOnsecuritypolicyviolation : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnsecuritypolicyviolation :  Cast eventHandler EventHandler
                               => ToJS EventHandler
                               => Cast globalEventHandlers GlobalEventHandlers
                               => ToJS GlobalEventHandlers
                               => (obj : globalEventHandlers)
                               -> (v : eventHandler)
                               -> IO ()
  
  %foreign "browser:lambda:x=>x.onseeked"
  prim__onseeked : AnyPtr -> PrimIO AnyPtr
  
  export
  onseeked :  Cast globalEventHandlers GlobalEventHandlers
           => ToJS GlobalEventHandlers
           => (obj : globalEventHandlers)
           -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onseeked = v}"
  prim__setOnseeked : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnseeked :  Cast eventHandler EventHandler
              => ToJS EventHandler
              => Cast globalEventHandlers GlobalEventHandlers
              => ToJS GlobalEventHandlers
              => (obj : globalEventHandlers)
              -> (v : eventHandler)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.onseeking"
  prim__onseeking : AnyPtr -> PrimIO AnyPtr
  
  export
  onseeking :  Cast globalEventHandlers GlobalEventHandlers
            => ToJS GlobalEventHandlers
            => (obj : globalEventHandlers)
            -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onseeking = v}"
  prim__setOnseeking : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnseeking :  Cast eventHandler EventHandler
               => ToJS EventHandler
               => Cast globalEventHandlers GlobalEventHandlers
               => ToJS GlobalEventHandlers
               => (obj : globalEventHandlers)
               -> (v : eventHandler)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.onselect"
  prim__onselect : AnyPtr -> PrimIO AnyPtr
  
  export
  onselect :  Cast globalEventHandlers GlobalEventHandlers
           => ToJS GlobalEventHandlers
           => (obj : globalEventHandlers)
           -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onselect = v}"
  prim__setOnselect : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnselect :  Cast eventHandler EventHandler
              => ToJS EventHandler
              => Cast globalEventHandlers GlobalEventHandlers
              => ToJS GlobalEventHandlers
              => (obj : globalEventHandlers)
              -> (v : eventHandler)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.onslotchange"
  prim__onslotchange : AnyPtr -> PrimIO AnyPtr
  
  export
  onslotchange :  Cast globalEventHandlers GlobalEventHandlers
               => ToJS GlobalEventHandlers
               => (obj : globalEventHandlers)
               -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onslotchange = v}"
  prim__setOnslotchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnslotchange :  Cast eventHandler EventHandler
                  => ToJS EventHandler
                  => Cast globalEventHandlers GlobalEventHandlers
                  => ToJS GlobalEventHandlers
                  => (obj : globalEventHandlers)
                  -> (v : eventHandler)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.onstalled"
  prim__onstalled : AnyPtr -> PrimIO AnyPtr
  
  export
  onstalled :  Cast globalEventHandlers GlobalEventHandlers
            => ToJS GlobalEventHandlers
            => (obj : globalEventHandlers)
            -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onstalled = v}"
  prim__setOnstalled : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnstalled :  Cast eventHandler EventHandler
               => ToJS EventHandler
               => Cast globalEventHandlers GlobalEventHandlers
               => ToJS GlobalEventHandlers
               => (obj : globalEventHandlers)
               -> (v : eventHandler)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.onsubmit"
  prim__onsubmit : AnyPtr -> PrimIO AnyPtr
  
  export
  onsubmit :  Cast globalEventHandlers GlobalEventHandlers
           => ToJS GlobalEventHandlers
           => (obj : globalEventHandlers)
           -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onsubmit = v}"
  prim__setOnsubmit : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnsubmit :  Cast eventHandler EventHandler
              => ToJS EventHandler
              => Cast globalEventHandlers GlobalEventHandlers
              => ToJS GlobalEventHandlers
              => (obj : globalEventHandlers)
              -> (v : eventHandler)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.onsuspend"
  prim__onsuspend : AnyPtr -> PrimIO AnyPtr
  
  export
  onsuspend :  Cast globalEventHandlers GlobalEventHandlers
            => ToJS GlobalEventHandlers
            => (obj : globalEventHandlers)
            -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onsuspend = v}"
  prim__setOnsuspend : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnsuspend :  Cast eventHandler EventHandler
               => ToJS EventHandler
               => Cast globalEventHandlers GlobalEventHandlers
               => ToJS GlobalEventHandlers
               => (obj : globalEventHandlers)
               -> (v : eventHandler)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.ontimeupdate"
  prim__ontimeupdate : AnyPtr -> PrimIO AnyPtr
  
  export
  ontimeupdate :  Cast globalEventHandlers GlobalEventHandlers
               => ToJS GlobalEventHandlers
               => (obj : globalEventHandlers)
               -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.ontimeupdate = v}"
  prim__setOntimeupdate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOntimeupdate :  Cast eventHandler EventHandler
                  => ToJS EventHandler
                  => Cast globalEventHandlers GlobalEventHandlers
                  => ToJS GlobalEventHandlers
                  => (obj : globalEventHandlers)
                  -> (v : eventHandler)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.ontoggle"
  prim__ontoggle : AnyPtr -> PrimIO AnyPtr
  
  export
  ontoggle :  Cast globalEventHandlers GlobalEventHandlers
           => ToJS GlobalEventHandlers
           => (obj : globalEventHandlers)
           -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.ontoggle = v}"
  prim__setOntoggle : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOntoggle :  Cast eventHandler EventHandler
              => ToJS EventHandler
              => Cast globalEventHandlers GlobalEventHandlers
              => ToJS GlobalEventHandlers
              => (obj : globalEventHandlers)
              -> (v : eventHandler)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.onvolumechange"
  prim__onvolumechange : AnyPtr -> PrimIO AnyPtr
  
  export
  onvolumechange :  Cast globalEventHandlers GlobalEventHandlers
                 => ToJS GlobalEventHandlers
                 => (obj : globalEventHandlers)
                 -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onvolumechange = v}"
  prim__setOnvolumechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnvolumechange :  Cast eventHandler EventHandler
                    => ToJS EventHandler
                    => Cast globalEventHandlers GlobalEventHandlers
                    => ToJS GlobalEventHandlers
                    => (obj : globalEventHandlers)
                    -> (v : eventHandler)
                    -> IO ()
  
  %foreign "browser:lambda:x=>x.onwaiting"
  prim__onwaiting : AnyPtr -> PrimIO AnyPtr
  
  export
  onwaiting :  Cast globalEventHandlers GlobalEventHandlers
            => ToJS GlobalEventHandlers
            => (obj : globalEventHandlers)
            -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onwaiting = v}"
  prim__setOnwaiting : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnwaiting :  Cast eventHandler EventHandler
               => ToJS EventHandler
               => Cast globalEventHandlers GlobalEventHandlers
               => ToJS GlobalEventHandlers
               => (obj : globalEventHandlers)
               -> (v : eventHandler)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.onwebkitanimationend"
  prim__onwebkitanimationend : AnyPtr -> PrimIO AnyPtr
  
  export
  onwebkitanimationend :  Cast globalEventHandlers GlobalEventHandlers
                       => ToJS GlobalEventHandlers
                       => (obj : globalEventHandlers)
                       -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onwebkitanimationend = v}"
  prim__setOnwebkitanimationend : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnwebkitanimationend :  Cast eventHandler EventHandler
                          => ToJS EventHandler
                          => Cast globalEventHandlers GlobalEventHandlers
                          => ToJS GlobalEventHandlers
                          => (obj : globalEventHandlers)
                          -> (v : eventHandler)
                          -> IO ()
  
  %foreign "browser:lambda:x=>x.onwebkitanimationiteration"
  prim__onwebkitanimationiteration : AnyPtr -> PrimIO AnyPtr
  
  export
  onwebkitanimationiteration :  Cast globalEventHandlers GlobalEventHandlers
                             => ToJS GlobalEventHandlers
                             => (obj : globalEventHandlers)
                             -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onwebkitanimationiteration = v}"
  prim__setOnwebkitanimationiteration : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnwebkitanimationiteration :  Cast eventHandler EventHandler
                                => ToJS EventHandler
                                => Cast globalEventHandlers GlobalEventHandlers
                                => ToJS GlobalEventHandlers
                                => (obj : globalEventHandlers)
                                -> (v : eventHandler)
                                -> IO ()
  
  %foreign "browser:lambda:x=>x.onwebkitanimationstart"
  prim__onwebkitanimationstart : AnyPtr -> PrimIO AnyPtr
  
  export
  onwebkitanimationstart :  Cast globalEventHandlers GlobalEventHandlers
                         => ToJS GlobalEventHandlers
                         => (obj : globalEventHandlers)
                         -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onwebkitanimationstart = v}"
  prim__setOnwebkitanimationstart : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnwebkitanimationstart :  Cast eventHandler EventHandler
                            => ToJS EventHandler
                            => Cast globalEventHandlers GlobalEventHandlers
                            => ToJS GlobalEventHandlers
                            => (obj : globalEventHandlers)
                            -> (v : eventHandler)
                            -> IO ()
  
  %foreign "browser:lambda:x=>x.onwebkittransitionend"
  prim__onwebkittransitionend : AnyPtr -> PrimIO AnyPtr
  
  export
  onwebkittransitionend :  Cast globalEventHandlers GlobalEventHandlers
                        => ToJS GlobalEventHandlers
                        => (obj : globalEventHandlers)
                        -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onwebkittransitionend = v}"
  prim__setOnwebkittransitionend : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnwebkittransitionend :  Cast eventHandler EventHandler
                           => ToJS EventHandler
                           => Cast globalEventHandlers GlobalEventHandlers
                           => ToJS GlobalEventHandlers
                           => (obj : globalEventHandlers)
                           -> (v : eventHandler)
                           -> IO ()
  
  %foreign "browser:lambda:x=>x.onwheel"
  prim__onwheel : AnyPtr -> PrimIO AnyPtr
  
  export
  onwheel :  Cast globalEventHandlers GlobalEventHandlers
          => ToJS GlobalEventHandlers
          => (obj : globalEventHandlers)
          -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onwheel = v}"
  prim__setOnwheel : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnwheel :  Cast eventHandler EventHandler
             => ToJS EventHandler
             => Cast globalEventHandlers GlobalEventHandlers
             => ToJS GlobalEventHandlers
             => (obj : globalEventHandlers)
             -> (v : eventHandler)
             -> IO ()

namespace HTMLHyperlinkElementUtils
  
  %foreign "browser:lambda:x=>x.origin"
  prim__origin : AnyPtr -> PrimIO AnyPtr
  
  export
  origin :  Cast hTMLHyperlinkElementUtils HTMLHyperlinkElementUtils
         => ToJS HTMLHyperlinkElementUtils
         => (obj : hTMLHyperlinkElementUtils)
         -> IO String
  
  %foreign "browser:lambda:x=>x.hash"
  prim__hash : AnyPtr -> PrimIO AnyPtr
  
  export
  hash :  Cast hTMLHyperlinkElementUtils HTMLHyperlinkElementUtils
       => ToJS HTMLHyperlinkElementUtils
       => (obj : hTMLHyperlinkElementUtils)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.hash = v}"
  prim__setHash : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHash :  Cast hTMLHyperlinkElementUtils HTMLHyperlinkElementUtils
          => ToJS HTMLHyperlinkElementUtils
          => (obj : hTMLHyperlinkElementUtils)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.host"
  prim__host : AnyPtr -> PrimIO AnyPtr
  
  export
  host :  Cast hTMLHyperlinkElementUtils HTMLHyperlinkElementUtils
       => ToJS HTMLHyperlinkElementUtils
       => (obj : hTMLHyperlinkElementUtils)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.host = v}"
  prim__setHost : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHost :  Cast hTMLHyperlinkElementUtils HTMLHyperlinkElementUtils
          => ToJS HTMLHyperlinkElementUtils
          => (obj : hTMLHyperlinkElementUtils)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.hostname"
  prim__hostname : AnyPtr -> PrimIO AnyPtr
  
  export
  hostname :  Cast hTMLHyperlinkElementUtils HTMLHyperlinkElementUtils
           => ToJS HTMLHyperlinkElementUtils
           => (obj : hTMLHyperlinkElementUtils)
           -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.hostname = v}"
  prim__setHostname : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHostname :  Cast hTMLHyperlinkElementUtils HTMLHyperlinkElementUtils
              => ToJS HTMLHyperlinkElementUtils
              => (obj : hTMLHyperlinkElementUtils)
              -> (v : String)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.password"
  prim__password : AnyPtr -> PrimIO AnyPtr
  
  export
  password :  Cast hTMLHyperlinkElementUtils HTMLHyperlinkElementUtils
           => ToJS HTMLHyperlinkElementUtils
           => (obj : hTMLHyperlinkElementUtils)
           -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.password = v}"
  prim__setPassword : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setPassword :  Cast hTMLHyperlinkElementUtils HTMLHyperlinkElementUtils
              => ToJS HTMLHyperlinkElementUtils
              => (obj : hTMLHyperlinkElementUtils)
              -> (v : String)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.pathname"
  prim__pathname : AnyPtr -> PrimIO AnyPtr
  
  export
  pathname :  Cast hTMLHyperlinkElementUtils HTMLHyperlinkElementUtils
           => ToJS HTMLHyperlinkElementUtils
           => (obj : hTMLHyperlinkElementUtils)
           -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.pathname = v}"
  prim__setPathname : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setPathname :  Cast hTMLHyperlinkElementUtils HTMLHyperlinkElementUtils
              => ToJS HTMLHyperlinkElementUtils
              => (obj : hTMLHyperlinkElementUtils)
              -> (v : String)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.port"
  prim__port : AnyPtr -> PrimIO AnyPtr
  
  export
  port :  Cast hTMLHyperlinkElementUtils HTMLHyperlinkElementUtils
       => ToJS HTMLHyperlinkElementUtils
       => (obj : hTMLHyperlinkElementUtils)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.port = v}"
  prim__setPort : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setPort :  Cast hTMLHyperlinkElementUtils HTMLHyperlinkElementUtils
          => ToJS HTMLHyperlinkElementUtils
          => (obj : hTMLHyperlinkElementUtils)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.protocol"
  prim__protocol : AnyPtr -> PrimIO AnyPtr
  
  export
  protocol :  Cast hTMLHyperlinkElementUtils HTMLHyperlinkElementUtils
           => ToJS HTMLHyperlinkElementUtils
           => (obj : hTMLHyperlinkElementUtils)
           -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.protocol = v}"
  prim__setProtocol : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setProtocol :  Cast hTMLHyperlinkElementUtils HTMLHyperlinkElementUtils
              => ToJS HTMLHyperlinkElementUtils
              => (obj : hTMLHyperlinkElementUtils)
              -> (v : String)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.search"
  prim__search : AnyPtr -> PrimIO AnyPtr
  
  export
  search :  Cast hTMLHyperlinkElementUtils HTMLHyperlinkElementUtils
         => ToJS HTMLHyperlinkElementUtils
         => (obj : hTMLHyperlinkElementUtils)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.search = v}"
  prim__setSearch : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSearch :  Cast hTMLHyperlinkElementUtils HTMLHyperlinkElementUtils
            => ToJS HTMLHyperlinkElementUtils
            => (obj : hTMLHyperlinkElementUtils)
            -> (v : String)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.username"
  prim__username : AnyPtr -> PrimIO AnyPtr
  
  export
  username :  Cast hTMLHyperlinkElementUtils HTMLHyperlinkElementUtils
           => ToJS HTMLHyperlinkElementUtils
           => (obj : hTMLHyperlinkElementUtils)
           -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.username = v}"
  prim__setUsername : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setUsername :  Cast hTMLHyperlinkElementUtils HTMLHyperlinkElementUtils
              => ToJS HTMLHyperlinkElementUtils
              => (obj : hTMLHyperlinkElementUtils)
              -> (v : String)
              -> IO ()

namespace HTMLOrSVGElement
  
  %foreign "browser:lambda:x=>x.dataset"
  prim__dataset : AnyPtr -> PrimIO AnyPtr
  
  export
  dataset :  Cast hTMLOrSVGElement HTMLOrSVGElement
          => ToJS HTMLOrSVGElement
          => (obj : hTMLOrSVGElement)
          -> IO DOMStringMap
  
  %foreign "browser:lambda:x=>x.autofocus"
  prim__autofocus : AnyPtr -> PrimIO AnyPtr
  
  export
  autofocus :  Cast hTMLOrSVGElement HTMLOrSVGElement
            => ToJS HTMLOrSVGElement
            => (obj : hTMLOrSVGElement)
            -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.autofocus = v}"
  prim__setAutofocus : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAutofocus :  Cast hTMLOrSVGElement HTMLOrSVGElement
               => ToJS HTMLOrSVGElement
               => (obj : hTMLOrSVGElement)
               -> (v : Bool)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.nonce"
  prim__nonce : AnyPtr -> PrimIO AnyPtr
  
  export
  nonce :  Cast hTMLOrSVGElement HTMLOrSVGElement
        => ToJS HTMLOrSVGElement
        => (obj : hTMLOrSVGElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.nonce = v}"
  prim__setNonce : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setNonce :  Cast hTMLOrSVGElement HTMLOrSVGElement
           => ToJS HTMLOrSVGElement
           => (obj : hTMLOrSVGElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.tabIndex"
  prim__tabIndex : AnyPtr -> PrimIO AnyPtr
  
  export
  tabIndex :  Cast hTMLOrSVGElement HTMLOrSVGElement
           => ToJS HTMLOrSVGElement
           => (obj : hTMLOrSVGElement)
           -> IO Int32
  
  %foreign "browser:lambda:(x,v)=>{x.tabIndex = v}"
  prim__setTabIndex : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setTabIndex :  Cast hTMLOrSVGElement HTMLOrSVGElement
              => ToJS HTMLOrSVGElement
              => (obj : hTMLOrSVGElement)
              -> (v : Int32)
              -> IO ()

namespace NavigatorConcurrentHardware
  
  %foreign "browser:lambda:x=>x.hardwareConcurrency"
  prim__hardwareConcurrency : AnyPtr -> PrimIO AnyPtr
  
  export
  hardwareConcurrency :  Cast navigatorConcurrentHardware NavigatorConcurrentHardware
                      => ToJS NavigatorConcurrentHardware
                      => (obj : navigatorConcurrentHardware)
                      -> IO UInt64

namespace NavigatorCookies
  
  %foreign "browser:lambda:x=>x.cookieEnabled"
  prim__cookieEnabled : AnyPtr -> PrimIO AnyPtr
  
  export
  cookieEnabled :  Cast navigatorCookies NavigatorCookies
                => ToJS NavigatorCookies
                => (obj : navigatorCookies)
                -> IO Bool

namespace NavigatorID
  
  %foreign "browser:lambda:x=>x.appCodeName"
  prim__appCodeName : AnyPtr -> PrimIO AnyPtr
  
  export
  appCodeName :  Cast navigatorID NavigatorID
              => ToJS NavigatorID
              => (obj : navigatorID)
              -> IO String
  
  %foreign "browser:lambda:x=>x.appName"
  prim__appName : AnyPtr -> PrimIO AnyPtr
  
  export
  appName :  Cast navigatorID NavigatorID
          => ToJS NavigatorID
          => (obj : navigatorID)
          -> IO String
  
  %foreign "browser:lambda:x=>x.appVersion"
  prim__appVersion : AnyPtr -> PrimIO AnyPtr
  
  export
  appVersion :  Cast navigatorID NavigatorID
             => ToJS NavigatorID
             => (obj : navigatorID)
             -> IO String
  
  %foreign "browser:lambda:x=>x.platform"
  prim__platform : AnyPtr -> PrimIO AnyPtr
  
  export
  platform :  Cast navigatorID NavigatorID
           => ToJS NavigatorID
           => (obj : navigatorID)
           -> IO String
  
  %foreign "browser:lambda:x=>x.product"
  prim__product : AnyPtr -> PrimIO AnyPtr
  
  export
  product :  Cast navigatorID NavigatorID
          => ToJS NavigatorID
          => (obj : navigatorID)
          -> IO String
  
  %foreign "browser:lambda:x=>x.productSub"
  prim__productSub : AnyPtr -> PrimIO AnyPtr
  
  export
  productSub :  Cast navigatorID NavigatorID
             => ToJS NavigatorID
             => (obj : navigatorID)
             -> IO String
  
  %foreign "browser:lambda:x=>x.userAgent"
  prim__userAgent : AnyPtr -> PrimIO AnyPtr
  
  export
  userAgent :  Cast navigatorID NavigatorID
            => ToJS NavigatorID
            => (obj : navigatorID)
            -> IO String
  
  %foreign "browser:lambda:x=>x.vendor"
  prim__vendor : AnyPtr -> PrimIO AnyPtr
  
  export
  vendor :  Cast navigatorID NavigatorID
         => ToJS NavigatorID
         => (obj : navigatorID)
         -> IO String
  
  %foreign "browser:lambda:x=>x.vendorSub"
  prim__vendorSub : AnyPtr -> PrimIO AnyPtr
  
  export
  vendorSub :  Cast navigatorID NavigatorID
            => ToJS NavigatorID
            => (obj : navigatorID)
            -> IO String

namespace NavigatorLanguage
  
  %foreign "browser:lambda:x=>x.language"
  prim__language : AnyPtr -> PrimIO AnyPtr
  
  export
  language :  Cast navigatorLanguage NavigatorLanguage
           => ToJS NavigatorLanguage
           => (obj : navigatorLanguage)
           -> IO String
  
  %foreign "browser:lambda:x=>x.languages"
  prim__languages : AnyPtr -> PrimIO AnyPtr
  
  export
  languages :  Cast navigatorLanguage NavigatorLanguage
            => ToJS NavigatorLanguage
            => (obj : navigatorLanguage)
            -> IO (JSArray String)

namespace NavigatorOnLine
  
  %foreign "browser:lambda:x=>x.onLine"
  prim__onLine : AnyPtr -> PrimIO AnyPtr
  
  export
  onLine :  Cast navigatorOnLine NavigatorOnLine
         => ToJS NavigatorOnLine
         => (obj : navigatorOnLine)
         -> IO Bool

namespace NavigatorPlugins
  
  %foreign "browser:lambda:x=>x.mimeTypes"
  prim__mimeTypes : AnyPtr -> PrimIO AnyPtr
  
  export
  mimeTypes :  Cast navigatorPlugins NavigatorPlugins
            => ToJS NavigatorPlugins
            => (obj : navigatorPlugins)
            -> IO MimeTypeArray
  
  %foreign "browser:lambda:x=>x.plugins"
  prim__plugins : AnyPtr -> PrimIO AnyPtr
  
  export
  plugins :  Cast navigatorPlugins NavigatorPlugins
          => ToJS NavigatorPlugins
          => (obj : navigatorPlugins)
          -> IO PluginArray

namespace WindowEventHandlers
  
  %foreign "browser:lambda:x=>x.onafterprint"
  prim__onafterprint : AnyPtr -> PrimIO AnyPtr
  
  export
  onafterprint :  Cast windowEventHandlers WindowEventHandlers
               => ToJS WindowEventHandlers
               => (obj : windowEventHandlers)
               -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onafterprint = v}"
  prim__setOnafterprint : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnafterprint :  Cast eventHandler EventHandler
                  => ToJS EventHandler
                  => Cast windowEventHandlers WindowEventHandlers
                  => ToJS WindowEventHandlers
                  => (obj : windowEventHandlers)
                  -> (v : eventHandler)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.onbeforeprint"
  prim__onbeforeprint : AnyPtr -> PrimIO AnyPtr
  
  export
  onbeforeprint :  Cast windowEventHandlers WindowEventHandlers
                => ToJS WindowEventHandlers
                => (obj : windowEventHandlers)
                -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onbeforeprint = v}"
  prim__setOnbeforeprint : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnbeforeprint :  Cast eventHandler EventHandler
                   => ToJS EventHandler
                   => Cast windowEventHandlers WindowEventHandlers
                   => ToJS WindowEventHandlers
                   => (obj : windowEventHandlers)
                   -> (v : eventHandler)
                   -> IO ()
  
  %foreign "browser:lambda:x=>x.onbeforeunload"
  prim__onbeforeunload : AnyPtr -> PrimIO AnyPtr
  
  export
  onbeforeunload :  Cast windowEventHandlers WindowEventHandlers
                 => ToJS WindowEventHandlers
                 => (obj : windowEventHandlers)
                 -> IO OnBeforeUnloadEventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onbeforeunload = v}"
  prim__setOnbeforeunload : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnbeforeunload :  Cast onBeforeUnloadEventHandler OnBeforeUnloadEventHandler
                    => ToJS OnBeforeUnloadEventHandler
                    => Cast windowEventHandlers WindowEventHandlers
                    => ToJS WindowEventHandlers
                    => (obj : windowEventHandlers)
                    -> (v : onBeforeUnloadEventHandler)
                    -> IO ()
  
  %foreign "browser:lambda:x=>x.onhashchange"
  prim__onhashchange : AnyPtr -> PrimIO AnyPtr
  
  export
  onhashchange :  Cast windowEventHandlers WindowEventHandlers
               => ToJS WindowEventHandlers
               => (obj : windowEventHandlers)
               -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onhashchange = v}"
  prim__setOnhashchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnhashchange :  Cast eventHandler EventHandler
                  => ToJS EventHandler
                  => Cast windowEventHandlers WindowEventHandlers
                  => ToJS WindowEventHandlers
                  => (obj : windowEventHandlers)
                  -> (v : eventHandler)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.onlanguagechange"
  prim__onlanguagechange : AnyPtr -> PrimIO AnyPtr
  
  export
  onlanguagechange :  Cast windowEventHandlers WindowEventHandlers
                   => ToJS WindowEventHandlers
                   => (obj : windowEventHandlers)
                   -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onlanguagechange = v}"
  prim__setOnlanguagechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnlanguagechange :  Cast eventHandler EventHandler
                      => ToJS EventHandler
                      => Cast windowEventHandlers WindowEventHandlers
                      => ToJS WindowEventHandlers
                      => (obj : windowEventHandlers)
                      -> (v : eventHandler)
                      -> IO ()
  
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : AnyPtr -> PrimIO AnyPtr
  
  export
  onmessage :  Cast windowEventHandlers WindowEventHandlers
            => ToJS WindowEventHandlers
            => (obj : windowEventHandlers)
            -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onmessage = v}"
  prim__setOnmessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnmessage :  Cast eventHandler EventHandler
               => ToJS EventHandler
               => Cast windowEventHandlers WindowEventHandlers
               => ToJS WindowEventHandlers
               => (obj : windowEventHandlers)
               -> (v : eventHandler)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.onmessageerror"
  prim__onmessageerror : AnyPtr -> PrimIO AnyPtr
  
  export
  onmessageerror :  Cast windowEventHandlers WindowEventHandlers
                 => ToJS WindowEventHandlers
                 => (obj : windowEventHandlers)
                 -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onmessageerror = v}"
  prim__setOnmessageerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnmessageerror :  Cast eventHandler EventHandler
                    => ToJS EventHandler
                    => Cast windowEventHandlers WindowEventHandlers
                    => ToJS WindowEventHandlers
                    => (obj : windowEventHandlers)
                    -> (v : eventHandler)
                    -> IO ()
  
  %foreign "browser:lambda:x=>x.onoffline"
  prim__onoffline : AnyPtr -> PrimIO AnyPtr
  
  export
  onoffline :  Cast windowEventHandlers WindowEventHandlers
            => ToJS WindowEventHandlers
            => (obj : windowEventHandlers)
            -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onoffline = v}"
  prim__setOnoffline : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnoffline :  Cast eventHandler EventHandler
               => ToJS EventHandler
               => Cast windowEventHandlers WindowEventHandlers
               => ToJS WindowEventHandlers
               => (obj : windowEventHandlers)
               -> (v : eventHandler)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.ononline"
  prim__ononline : AnyPtr -> PrimIO AnyPtr
  
  export
  ononline :  Cast windowEventHandlers WindowEventHandlers
           => ToJS WindowEventHandlers
           => (obj : windowEventHandlers)
           -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.ononline = v}"
  prim__setOnonline : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnonline :  Cast eventHandler EventHandler
              => ToJS EventHandler
              => Cast windowEventHandlers WindowEventHandlers
              => ToJS WindowEventHandlers
              => (obj : windowEventHandlers)
              -> (v : eventHandler)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.onpagehide"
  prim__onpagehide : AnyPtr -> PrimIO AnyPtr
  
  export
  onpagehide :  Cast windowEventHandlers WindowEventHandlers
             => ToJS WindowEventHandlers
             => (obj : windowEventHandlers)
             -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onpagehide = v}"
  prim__setOnpagehide : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnpagehide :  Cast eventHandler EventHandler
                => ToJS EventHandler
                => Cast windowEventHandlers WindowEventHandlers
                => ToJS WindowEventHandlers
                => (obj : windowEventHandlers)
                -> (v : eventHandler)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.onpageshow"
  prim__onpageshow : AnyPtr -> PrimIO AnyPtr
  
  export
  onpageshow :  Cast windowEventHandlers WindowEventHandlers
             => ToJS WindowEventHandlers
             => (obj : windowEventHandlers)
             -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onpageshow = v}"
  prim__setOnpageshow : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnpageshow :  Cast eventHandler EventHandler
                => ToJS EventHandler
                => Cast windowEventHandlers WindowEventHandlers
                => ToJS WindowEventHandlers
                => (obj : windowEventHandlers)
                -> (v : eventHandler)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.onpopstate"
  prim__onpopstate : AnyPtr -> PrimIO AnyPtr
  
  export
  onpopstate :  Cast windowEventHandlers WindowEventHandlers
             => ToJS WindowEventHandlers
             => (obj : windowEventHandlers)
             -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onpopstate = v}"
  prim__setOnpopstate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnpopstate :  Cast eventHandler EventHandler
                => ToJS EventHandler
                => Cast windowEventHandlers WindowEventHandlers
                => ToJS WindowEventHandlers
                => (obj : windowEventHandlers)
                -> (v : eventHandler)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.onrejectionhandled"
  prim__onrejectionhandled : AnyPtr -> PrimIO AnyPtr
  
  export
  onrejectionhandled :  Cast windowEventHandlers WindowEventHandlers
                     => ToJS WindowEventHandlers
                     => (obj : windowEventHandlers)
                     -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onrejectionhandled = v}"
  prim__setOnrejectionhandled : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnrejectionhandled :  Cast eventHandler EventHandler
                        => ToJS EventHandler
                        => Cast windowEventHandlers WindowEventHandlers
                        => ToJS WindowEventHandlers
                        => (obj : windowEventHandlers)
                        -> (v : eventHandler)
                        -> IO ()
  
  %foreign "browser:lambda:x=>x.onstorage"
  prim__onstorage : AnyPtr -> PrimIO AnyPtr
  
  export
  onstorage :  Cast windowEventHandlers WindowEventHandlers
            => ToJS WindowEventHandlers
            => (obj : windowEventHandlers)
            -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onstorage = v}"
  prim__setOnstorage : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnstorage :  Cast eventHandler EventHandler
               => ToJS EventHandler
               => Cast windowEventHandlers WindowEventHandlers
               => ToJS WindowEventHandlers
               => (obj : windowEventHandlers)
               -> (v : eventHandler)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.onunhandledrejection"
  prim__onunhandledrejection : AnyPtr -> PrimIO AnyPtr
  
  export
  onunhandledrejection :  Cast windowEventHandlers WindowEventHandlers
                       => ToJS WindowEventHandlers
                       => (obj : windowEventHandlers)
                       -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onunhandledrejection = v}"
  prim__setOnunhandledrejection : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnunhandledrejection :  Cast eventHandler EventHandler
                          => ToJS EventHandler
                          => Cast windowEventHandlers WindowEventHandlers
                          => ToJS WindowEventHandlers
                          => (obj : windowEventHandlers)
                          -> (v : eventHandler)
                          -> IO ()
  
  %foreign "browser:lambda:x=>x.onunload"
  prim__onunload : AnyPtr -> PrimIO AnyPtr
  
  export
  onunload :  Cast windowEventHandlers WindowEventHandlers
           => ToJS WindowEventHandlers
           => (obj : windowEventHandlers)
           -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onunload = v}"
  prim__setOnunload : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnunload :  Cast eventHandler EventHandler
              => ToJS EventHandler
              => Cast windowEventHandlers WindowEventHandlers
              => ToJS WindowEventHandlers
              => (obj : windowEventHandlers)
              -> (v : eventHandler)
              -> IO ()

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace AssignedNodesOptions
  
  %foreign "browser:lambda:x=>x.flatten"
  prim__flatten : AnyPtr -> PrimIO AnyPtr
  
  export
  flatten :  Cast assignedNodesOptions AssignedNodesOptions
          => ToJS AssignedNodesOptions
          => (obj : assignedNodesOptions)
          -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.flatten = v}"
  prim__setFlatten : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setFlatten :  Cast assignedNodesOptions AssignedNodesOptions
             => ToJS AssignedNodesOptions
             => (obj : assignedNodesOptions)
             -> (v : Bool)
             -> IO ()

namespace CanvasRenderingContext2DSettings
  
  %foreign "browser:lambda:x=>x.alpha"
  prim__alpha : AnyPtr -> PrimIO AnyPtr
  
  export
  alpha :  Cast canvasRenderingContext2DSettings CanvasRenderingContext2DSettings
        => ToJS CanvasRenderingContext2DSettings
        => (obj : canvasRenderingContext2DSettings)
        -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.alpha = v}"
  prim__setAlpha : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAlpha :  Cast canvasRenderingContext2DSettings CanvasRenderingContext2DSettings
           => ToJS CanvasRenderingContext2DSettings
           => (obj : canvasRenderingContext2DSettings)
           -> (v : Bool)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.desynchronized"
  prim__desynchronized : AnyPtr -> PrimIO AnyPtr
  
  export
  desynchronized :  Cast canvasRenderingContext2DSettings CanvasRenderingContext2DSettings
                 => ToJS CanvasRenderingContext2DSettings
                 => (obj : canvasRenderingContext2DSettings)
                 -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.desynchronized = v}"
  prim__setDesynchronized : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDesynchronized :  Cast canvasRenderingContext2DSettings CanvasRenderingContext2DSettings
                    => ToJS CanvasRenderingContext2DSettings
                    => (obj : canvasRenderingContext2DSettings)
                    -> (v : Bool)
                    -> IO ()

namespace CloseEventInit
  
  %foreign "browser:lambda:x=>x.code"
  prim__code : AnyPtr -> PrimIO AnyPtr
  
  export
  code :  Cast closeEventInit CloseEventInit
       => ToJS CloseEventInit
       => (obj : closeEventInit)
       -> IO UInt16
  
  %foreign "browser:lambda:(x,v)=>{x.code = v}"
  prim__setCode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCode :  Cast closeEventInit CloseEventInit
          => ToJS CloseEventInit
          => (obj : closeEventInit)
          -> (v : UInt16)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.reason"
  prim__reason : AnyPtr -> PrimIO AnyPtr
  
  export
  reason :  Cast closeEventInit CloseEventInit
         => ToJS CloseEventInit
         => (obj : closeEventInit)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.reason = v}"
  prim__setReason : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setReason :  Cast closeEventInit CloseEventInit
            => ToJS CloseEventInit
            => (obj : closeEventInit)
            -> (v : String)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.wasClean"
  prim__wasClean : AnyPtr -> PrimIO AnyPtr
  
  export
  wasClean :  Cast closeEventInit CloseEventInit
           => ToJS CloseEventInit
           => (obj : closeEventInit)
           -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.wasClean = v}"
  prim__setWasClean : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setWasClean :  Cast closeEventInit CloseEventInit
              => ToJS CloseEventInit
              => (obj : closeEventInit)
              -> (v : Bool)
              -> IO ()

namespace DragEventInit
  
  %foreign "browser:lambda:x=>x.dataTransfer"
  prim__dataTransfer : AnyPtr -> PrimIO AnyPtr
  
  export
  dataTransfer :  Cast dragEventInit DragEventInit
               => ToJS DragEventInit
               => (obj : dragEventInit)
               -> IO (Maybe DataTransfer)
  
  %foreign "browser:lambda:(x,v)=>{x.dataTransfer = v}"
  prim__setDataTransfer : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDataTransfer :  Cast dataTransfer DataTransfer
                  => ToJS DataTransfer
                  => Cast dragEventInit DragEventInit
                  => ToJS DragEventInit
                  => (obj : dragEventInit)
                  -> (v : Maybe dataTransfer)
                  -> IO ()

namespace ElementDefinitionOptions
  
  %foreign "browser:lambda:x=>x.extends"
  prim__extends : AnyPtr -> PrimIO AnyPtr
  
  export
  extends :  Cast elementDefinitionOptions ElementDefinitionOptions
          => ToJS ElementDefinitionOptions
          => (obj : elementDefinitionOptions)
          -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.extends = v}"
  prim__setExtends : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setExtends :  Cast elementDefinitionOptions ElementDefinitionOptions
             => ToJS ElementDefinitionOptions
             => (obj : elementDefinitionOptions)
             -> (v : String)
             -> IO ()

namespace ErrorEventInit
  
  %foreign "browser:lambda:x=>x.colno"
  prim__colno : AnyPtr -> PrimIO AnyPtr
  
  export
  colno :  Cast errorEventInit ErrorEventInit
        => ToJS ErrorEventInit
        => (obj : errorEventInit)
        -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.colno = v}"
  prim__setColno : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setColno :  Cast errorEventInit ErrorEventInit
           => ToJS ErrorEventInit
           => (obj : errorEventInit)
           -> (v : UInt32)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.error"
  prim__error : AnyPtr -> PrimIO AnyPtr
  
  export
  error :  Cast errorEventInit ErrorEventInit
        => ToJS ErrorEventInit
        => (obj : errorEventInit)
        -> IO JSAny
  
  %foreign "browser:lambda:(x,v)=>{x.error = v}"
  prim__setError : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setError :  Cast errorEventInit ErrorEventInit
           => ToJS ErrorEventInit
           => (obj : errorEventInit)
           -> (v : JSAny)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.filename"
  prim__filename : AnyPtr -> PrimIO AnyPtr
  
  export
  filename :  Cast errorEventInit ErrorEventInit
           => ToJS ErrorEventInit
           => (obj : errorEventInit)
           -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.filename = v}"
  prim__setFilename : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setFilename :  Cast errorEventInit ErrorEventInit
              => ToJS ErrorEventInit
              => (obj : errorEventInit)
              -> (v : String)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.lineno"
  prim__lineno : AnyPtr -> PrimIO AnyPtr
  
  export
  lineno :  Cast errorEventInit ErrorEventInit
         => ToJS ErrorEventInit
         => (obj : errorEventInit)
         -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.lineno = v}"
  prim__setLineno : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setLineno :  Cast errorEventInit ErrorEventInit
            => ToJS ErrorEventInit
            => (obj : errorEventInit)
            -> (v : UInt32)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.message"
  prim__message : AnyPtr -> PrimIO AnyPtr
  
  export
  message :  Cast errorEventInit ErrorEventInit
          => ToJS ErrorEventInit
          => (obj : errorEventInit)
          -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.message = v}"
  prim__setMessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setMessage :  Cast errorEventInit ErrorEventInit
             => ToJS ErrorEventInit
             => (obj : errorEventInit)
             -> (v : String)
             -> IO ()

namespace EventSourceInit
  
  %foreign "browser:lambda:x=>x.withCredentials"
  prim__withCredentials : AnyPtr -> PrimIO AnyPtr
  
  export
  withCredentials :  Cast eventSourceInit EventSourceInit
                  => ToJS EventSourceInit
                  => (obj : eventSourceInit)
                  -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.withCredentials = v}"
  prim__setWithCredentials : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setWithCredentials :  Cast eventSourceInit EventSourceInit
                     => ToJS EventSourceInit
                     => (obj : eventSourceInit)
                     -> (v : Bool)
                     -> IO ()

namespace FocusOptions
  
  %foreign "browser:lambda:x=>x.preventScroll"
  prim__preventScroll : AnyPtr -> PrimIO AnyPtr
  
  export
  preventScroll :  Cast focusOptions FocusOptions
                => ToJS FocusOptions
                => (obj : focusOptions)
                -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.preventScroll = v}"
  prim__setPreventScroll : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setPreventScroll :  Cast focusOptions FocusOptions
                   => ToJS FocusOptions
                   => (obj : focusOptions)
                   -> (v : Bool)
                   -> IO ()

namespace FormDataEventInit
  
  %foreign "browser:lambda:x=>x.formData"
  prim__formData : AnyPtr -> PrimIO AnyPtr
  
  export
  formData :  Cast formDataEventInit FormDataEventInit
           => ToJS FormDataEventInit
           => (obj : formDataEventInit)
           -> IO FormData
  
  %foreign "browser:lambda:(x,v)=>{x.formData = v}"
  prim__setFormData : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setFormData :  Cast formData FormData
              => ToJS FormData
              => Cast formDataEventInit FormDataEventInit
              => ToJS FormDataEventInit
              => (obj : formDataEventInit)
              -> (v : formData)
              -> IO ()

namespace HashChangeEventInit
  
  %foreign "browser:lambda:x=>x.newURL"
  prim__newURL : AnyPtr -> PrimIO AnyPtr
  
  export
  newURL :  Cast hashChangeEventInit HashChangeEventInit
         => ToJS HashChangeEventInit
         => (obj : hashChangeEventInit)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.newURL = v}"
  prim__setNewURL : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setNewURL :  Cast hashChangeEventInit HashChangeEventInit
            => ToJS HashChangeEventInit
            => (obj : hashChangeEventInit)
            -> (v : String)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.oldURL"
  prim__oldURL : AnyPtr -> PrimIO AnyPtr
  
  export
  oldURL :  Cast hashChangeEventInit HashChangeEventInit
         => ToJS HashChangeEventInit
         => (obj : hashChangeEventInit)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.oldURL = v}"
  prim__setOldURL : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOldURL :  Cast hashChangeEventInit HashChangeEventInit
            => ToJS HashChangeEventInit
            => (obj : hashChangeEventInit)
            -> (v : String)
            -> IO ()

namespace ImageBitmapOptions
  
  %foreign "browser:lambda:x=>x.colorSpaceConversion"
  prim__colorSpaceConversion : AnyPtr -> PrimIO AnyPtr
  
  export
  colorSpaceConversion :  Cast imageBitmapOptions ImageBitmapOptions
                       => ToJS ImageBitmapOptions
                       => (obj : imageBitmapOptions)
                       -> IO ColorSpaceConversion
  
  %foreign "browser:lambda:(x,v)=>{x.colorSpaceConversion = v}"
  prim__setColorSpaceConversion : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setColorSpaceConversion :  Cast colorSpaceConversion ColorSpaceConversion
                          => ToJS ColorSpaceConversion
                          => Cast imageBitmapOptions ImageBitmapOptions
                          => ToJS ImageBitmapOptions
                          => (obj : imageBitmapOptions)
                          -> (v : colorSpaceConversion)
                          -> IO ()
  
  %foreign "browser:lambda:x=>x.imageOrientation"
  prim__imageOrientation : AnyPtr -> PrimIO AnyPtr
  
  export
  imageOrientation :  Cast imageBitmapOptions ImageBitmapOptions
                   => ToJS ImageBitmapOptions
                   => (obj : imageBitmapOptions)
                   -> IO ImageOrientation
  
  %foreign "browser:lambda:(x,v)=>{x.imageOrientation = v}"
  prim__setImageOrientation : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setImageOrientation :  Cast imageBitmapOptions ImageBitmapOptions
                      => ToJS ImageBitmapOptions
                      => Cast imageOrientation ImageOrientation
                      => ToJS ImageOrientation
                      => (obj : imageBitmapOptions)
                      -> (v : imageOrientation)
                      -> IO ()
  
  %foreign "browser:lambda:x=>x.premultiplyAlpha"
  prim__premultiplyAlpha : AnyPtr -> PrimIO AnyPtr
  
  export
  premultiplyAlpha :  Cast imageBitmapOptions ImageBitmapOptions
                   => ToJS ImageBitmapOptions
                   => (obj : imageBitmapOptions)
                   -> IO PremultiplyAlpha
  
  %foreign "browser:lambda:(x,v)=>{x.premultiplyAlpha = v}"
  prim__setPremultiplyAlpha : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setPremultiplyAlpha :  Cast imageBitmapOptions ImageBitmapOptions
                      => ToJS ImageBitmapOptions
                      => Cast premultiplyAlpha PremultiplyAlpha
                      => ToJS PremultiplyAlpha
                      => (obj : imageBitmapOptions)
                      -> (v : premultiplyAlpha)
                      -> IO ()
  
  %foreign "browser:lambda:x=>x.resizeHeight"
  prim__resizeHeight : AnyPtr -> PrimIO AnyPtr
  
  export
  resizeHeight :  Cast imageBitmapOptions ImageBitmapOptions
               => ToJS ImageBitmapOptions
               => (obj : imageBitmapOptions)
               -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.resizeHeight = v}"
  prim__setResizeHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setResizeHeight :  Cast imageBitmapOptions ImageBitmapOptions
                  => ToJS ImageBitmapOptions
                  => (obj : imageBitmapOptions)
                  -> (v : UInt32)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.resizeQuality"
  prim__resizeQuality : AnyPtr -> PrimIO AnyPtr
  
  export
  resizeQuality :  Cast imageBitmapOptions ImageBitmapOptions
                => ToJS ImageBitmapOptions
                => (obj : imageBitmapOptions)
                -> IO ResizeQuality
  
  %foreign "browser:lambda:(x,v)=>{x.resizeQuality = v}"
  prim__setResizeQuality : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setResizeQuality :  Cast imageBitmapOptions ImageBitmapOptions
                   => ToJS ImageBitmapOptions
                   => Cast resizeQuality ResizeQuality
                   => ToJS ResizeQuality
                   => (obj : imageBitmapOptions)
                   -> (v : resizeQuality)
                   -> IO ()
  
  %foreign "browser:lambda:x=>x.resizeWidth"
  prim__resizeWidth : AnyPtr -> PrimIO AnyPtr
  
  export
  resizeWidth :  Cast imageBitmapOptions ImageBitmapOptions
              => ToJS ImageBitmapOptions
              => (obj : imageBitmapOptions)
              -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.resizeWidth = v}"
  prim__setResizeWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setResizeWidth :  Cast imageBitmapOptions ImageBitmapOptions
                 => ToJS ImageBitmapOptions
                 => (obj : imageBitmapOptions)
                 -> (v : UInt32)
                 -> IO ()

namespace ImageBitmapRenderingContextSettings
  
  %foreign "browser:lambda:x=>x.alpha"
  prim__alpha : AnyPtr -> PrimIO AnyPtr
  
  export
  alpha :  Cast imageBitmapRenderingContextSettings ImageBitmapRenderingContextSettings
        => ToJS ImageBitmapRenderingContextSettings
        => (obj : imageBitmapRenderingContextSettings)
        -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.alpha = v}"
  prim__setAlpha : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAlpha :  Cast imageBitmapRenderingContextSettings ImageBitmapRenderingContextSettings
           => ToJS ImageBitmapRenderingContextSettings
           => (obj : imageBitmapRenderingContextSettings)
           -> (v : Bool)
           -> IO ()

namespace ImageEncodeOptions
  
  %foreign "browser:lambda:x=>x.quality"
  prim__quality : AnyPtr -> PrimIO AnyPtr
  
  export
  quality :  Cast imageEncodeOptions ImageEncodeOptions
          => ToJS ImageEncodeOptions
          => (obj : imageEncodeOptions)
          -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.quality = v}"
  prim__setQuality : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setQuality :  Cast imageEncodeOptions ImageEncodeOptions
             => ToJS ImageEncodeOptions
             => (obj : imageEncodeOptions)
             -> (v : Double)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  export
  type :  Cast imageEncodeOptions ImageEncodeOptions
       => ToJS ImageEncodeOptions
       => (obj : imageEncodeOptions)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setType :  Cast imageEncodeOptions ImageEncodeOptions
          => ToJS ImageEncodeOptions
          => (obj : imageEncodeOptions)
          -> (v : String)
          -> IO ()

namespace MessageEventInit
  
  %foreign "browser:lambda:x=>x.data"
  prim__data_ : AnyPtr -> PrimIO AnyPtr
  
  export
  data_ :  Cast messageEventInit MessageEventInit
        => ToJS MessageEventInit
        => (obj : messageEventInit)
        -> IO JSAny
  
  %foreign "browser:lambda:(x,v)=>{x.data = v}"
  prim__setData : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setData :  Cast messageEventInit MessageEventInit
          => ToJS MessageEventInit
          => (obj : messageEventInit)
          -> (v : JSAny)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.lastEventId"
  prim__lastEventId : AnyPtr -> PrimIO AnyPtr
  
  export
  lastEventId :  Cast messageEventInit MessageEventInit
              => ToJS MessageEventInit
              => (obj : messageEventInit)
              -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.lastEventId = v}"
  prim__setLastEventId : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setLastEventId :  Cast messageEventInit MessageEventInit
                 => ToJS MessageEventInit
                 => (obj : messageEventInit)
                 -> (v : String)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.origin"
  prim__origin : AnyPtr -> PrimIO AnyPtr
  
  export
  origin :  Cast messageEventInit MessageEventInit
         => ToJS MessageEventInit
         => (obj : messageEventInit)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.origin = v}"
  prim__setOrigin : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOrigin :  Cast messageEventInit MessageEventInit
            => ToJS MessageEventInit
            => (obj : messageEventInit)
            -> (v : String)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.ports"
  prim__ports : AnyPtr -> PrimIO AnyPtr
  
  export
  ports :  Cast messageEventInit MessageEventInit
        => ToJS MessageEventInit
        => (obj : messageEventInit)
        -> IO (JSArray MessagePort)
  
  %foreign "browser:lambda:(x,v)=>{x.ports = v}"
  prim__setPorts : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setPorts :  Cast messageEventInit MessageEventInit
           => ToJS MessageEventInit
           => (obj : messageEventInit)
           -> (v : JSArray MessagePort)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.source"
  prim__source : AnyPtr -> PrimIO AnyPtr
  
  export
  source :  Cast messageEventInit MessageEventInit
         => ToJS MessageEventInit
         => (obj : messageEventInit)
         -> IO (Maybe MessageEventSource)
  
  %foreign "browser:lambda:(x,v)=>{x.source = v}"
  prim__setSource : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSource :  Cast messageEventInit MessageEventInit
            => ToJS MessageEventInit
            => Cast messageEventSource MessageEventSource
            => ToJS MessageEventSource
            => (obj : messageEventInit)
            -> (v : Maybe messageEventSource)
            -> IO ()

namespace PageTransitionEventInit
  
  %foreign "browser:lambda:x=>x.persisted"
  prim__persisted : AnyPtr -> PrimIO AnyPtr
  
  export
  persisted :  Cast pageTransitionEventInit PageTransitionEventInit
            => ToJS PageTransitionEventInit
            => (obj : pageTransitionEventInit)
            -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.persisted = v}"
  prim__setPersisted : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setPersisted :  Cast pageTransitionEventInit PageTransitionEventInit
               => ToJS PageTransitionEventInit
               => (obj : pageTransitionEventInit)
               -> (v : Bool)
               -> IO ()

namespace PopStateEventInit
  
  %foreign "browser:lambda:x=>x.state"
  prim__state : AnyPtr -> PrimIO AnyPtr
  
  export
  state :  Cast popStateEventInit PopStateEventInit
        => ToJS PopStateEventInit
        => (obj : popStateEventInit)
        -> IO JSAny
  
  %foreign "browser:lambda:(x,v)=>{x.state = v}"
  prim__setState : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setState :  Cast popStateEventInit PopStateEventInit
           => ToJS PopStateEventInit
           => (obj : popStateEventInit)
           -> (v : JSAny)
           -> IO ()

namespace PostMessageOptions
  
  %foreign "browser:lambda:x=>x.transfer"
  prim__transfer : AnyPtr -> PrimIO AnyPtr
  
  export
  transfer :  Cast postMessageOptions PostMessageOptions
           => ToJS PostMessageOptions
           => (obj : postMessageOptions)
           -> IO (JSArray JSObject)
  
  %foreign "browser:lambda:(x,v)=>{x.transfer = v}"
  prim__setTransfer : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setTransfer :  Cast postMessageOptions PostMessageOptions
              => ToJS PostMessageOptions
              => (obj : postMessageOptions)
              -> (v : JSArray JSObject)
              -> IO ()

namespace PromiseRejectionEventInit
  
  %foreign "browser:lambda:x=>x.promise"
  prim__promise : AnyPtr -> PrimIO AnyPtr
  
  export
  promise :  Cast promiseRejectionEventInit PromiseRejectionEventInit
          => ToJS PromiseRejectionEventInit
          => (obj : promiseRejectionEventInit)
          -> IO (JSPromise JSAny)
  
  %foreign "browser:lambda:(x,v)=>{x.promise = v}"
  prim__setPromise : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setPromise :  Cast promiseRejectionEventInit PromiseRejectionEventInit
             => ToJS PromiseRejectionEventInit
             => (obj : promiseRejectionEventInit)
             -> (v : JSPromise JSAny)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.reason"
  prim__reason : AnyPtr -> PrimIO AnyPtr
  
  export
  reason :  Cast promiseRejectionEventInit PromiseRejectionEventInit
         => ToJS PromiseRejectionEventInit
         => (obj : promiseRejectionEventInit)
         -> IO JSAny
  
  %foreign "browser:lambda:(x,v)=>{x.reason = v}"
  prim__setReason : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setReason :  Cast promiseRejectionEventInit PromiseRejectionEventInit
            => ToJS PromiseRejectionEventInit
            => (obj : promiseRejectionEventInit)
            -> (v : JSAny)
            -> IO ()

namespace StorageEventInit
  
  %foreign "browser:lambda:x=>x.key"
  prim__key : AnyPtr -> PrimIO AnyPtr
  
  export
  key :  Cast storageEventInit StorageEventInit
      => ToJS StorageEventInit
      => (obj : storageEventInit)
      -> IO (Maybe String)
  
  %foreign "browser:lambda:(x,v)=>{x.key = v}"
  prim__setKey : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setKey :  Cast storageEventInit StorageEventInit
         => ToJS StorageEventInit
         => (obj : storageEventInit)
         -> (v : Maybe String)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.newValue"
  prim__newValue : AnyPtr -> PrimIO AnyPtr
  
  export
  newValue :  Cast storageEventInit StorageEventInit
           => ToJS StorageEventInit
           => (obj : storageEventInit)
           -> IO (Maybe String)
  
  %foreign "browser:lambda:(x,v)=>{x.newValue = v}"
  prim__setNewValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setNewValue :  Cast storageEventInit StorageEventInit
              => ToJS StorageEventInit
              => (obj : storageEventInit)
              -> (v : Maybe String)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.oldValue"
  prim__oldValue : AnyPtr -> PrimIO AnyPtr
  
  export
  oldValue :  Cast storageEventInit StorageEventInit
           => ToJS StorageEventInit
           => (obj : storageEventInit)
           -> IO (Maybe String)
  
  %foreign "browser:lambda:(x,v)=>{x.oldValue = v}"
  prim__setOldValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOldValue :  Cast storageEventInit StorageEventInit
              => ToJS StorageEventInit
              => (obj : storageEventInit)
              -> (v : Maybe String)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.storageArea"
  prim__storageArea : AnyPtr -> PrimIO AnyPtr
  
  export
  storageArea :  Cast storageEventInit StorageEventInit
              => ToJS StorageEventInit
              => (obj : storageEventInit)
              -> IO (Maybe Storage)
  
  %foreign "browser:lambda:(x,v)=>{x.storageArea = v}"
  prim__setStorageArea : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setStorageArea :  Cast storage Storage
                 => ToJS Storage
                 => Cast storageEventInit StorageEventInit
                 => ToJS StorageEventInit
                 => (obj : storageEventInit)
                 -> (v : Maybe storage)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.url"
  prim__url : AnyPtr -> PrimIO AnyPtr
  
  export
  url :  Cast storageEventInit StorageEventInit
      => ToJS StorageEventInit
      => (obj : storageEventInit)
      -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.url = v}"
  prim__setUrl : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setUrl :  Cast storageEventInit StorageEventInit
         => ToJS StorageEventInit
         => (obj : storageEventInit)
         -> (v : String)
         -> IO ()

namespace SubmitEventInit
  
  %foreign "browser:lambda:x=>x.submitter"
  prim__submitter : AnyPtr -> PrimIO AnyPtr
  
  export
  submitter :  Cast submitEventInit SubmitEventInit
            => ToJS SubmitEventInit
            => (obj : submitEventInit)
            -> IO (Maybe HTMLElement)
  
  %foreign "browser:lambda:(x,v)=>{x.submitter = v}"
  prim__setSubmitter : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSubmitter :  Cast hTMLElement HTMLElement
               => ToJS HTMLElement
               => Cast submitEventInit SubmitEventInit
               => ToJS SubmitEventInit
               => (obj : submitEventInit)
               -> (v : Maybe hTMLElement)
               -> IO ()

namespace TrackEventInit
  
  %foreign "browser:lambda:x=>x.track"
  prim__track : AnyPtr -> PrimIO AnyPtr
  
  export
  track :  Cast trackEventInit TrackEventInit
        => ToJS TrackEventInit
        => (obj : trackEventInit)
        -> IO (Maybe (NS I [ VideoTrack , AudioTrack , TextTrack ]))
  
  %foreign "browser:lambda:(x,v)=>{x.track = v}"
  prim__setTrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setTrack :  Cast trackEventInit TrackEventInit
           => ToJS TrackEventInit
           => (obj : trackEventInit)
           -> (v : Maybe (NS I [ VideoTrack , AudioTrack , TextTrack ]))
           -> IO ()

namespace ValidityStateFlags
  
  %foreign "browser:lambda:x=>x.badInput"
  prim__badInput : AnyPtr -> PrimIO AnyPtr
  
  export
  badInput :  Cast validityStateFlags ValidityStateFlags
           => ToJS ValidityStateFlags
           => (obj : validityStateFlags)
           -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.badInput = v}"
  prim__setBadInput : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setBadInput :  Cast validityStateFlags ValidityStateFlags
              => ToJS ValidityStateFlags
              => (obj : validityStateFlags)
              -> (v : Bool)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.customError"
  prim__customError : AnyPtr -> PrimIO AnyPtr
  
  export
  customError :  Cast validityStateFlags ValidityStateFlags
              => ToJS ValidityStateFlags
              => (obj : validityStateFlags)
              -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.customError = v}"
  prim__setCustomError : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCustomError :  Cast validityStateFlags ValidityStateFlags
                 => ToJS ValidityStateFlags
                 => (obj : validityStateFlags)
                 -> (v : Bool)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.patternMismatch"
  prim__patternMismatch : AnyPtr -> PrimIO AnyPtr
  
  export
  patternMismatch :  Cast validityStateFlags ValidityStateFlags
                  => ToJS ValidityStateFlags
                  => (obj : validityStateFlags)
                  -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.patternMismatch = v}"
  prim__setPatternMismatch : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setPatternMismatch :  Cast validityStateFlags ValidityStateFlags
                     => ToJS ValidityStateFlags
                     => (obj : validityStateFlags)
                     -> (v : Bool)
                     -> IO ()
  
  %foreign "browser:lambda:x=>x.rangeOverflow"
  prim__rangeOverflow : AnyPtr -> PrimIO AnyPtr
  
  export
  rangeOverflow :  Cast validityStateFlags ValidityStateFlags
                => ToJS ValidityStateFlags
                => (obj : validityStateFlags)
                -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.rangeOverflow = v}"
  prim__setRangeOverflow : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setRangeOverflow :  Cast validityStateFlags ValidityStateFlags
                   => ToJS ValidityStateFlags
                   => (obj : validityStateFlags)
                   -> (v : Bool)
                   -> IO ()
  
  %foreign "browser:lambda:x=>x.rangeUnderflow"
  prim__rangeUnderflow : AnyPtr -> PrimIO AnyPtr
  
  export
  rangeUnderflow :  Cast validityStateFlags ValidityStateFlags
                 => ToJS ValidityStateFlags
                 => (obj : validityStateFlags)
                 -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.rangeUnderflow = v}"
  prim__setRangeUnderflow : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setRangeUnderflow :  Cast validityStateFlags ValidityStateFlags
                    => ToJS ValidityStateFlags
                    => (obj : validityStateFlags)
                    -> (v : Bool)
                    -> IO ()
  
  %foreign "browser:lambda:x=>x.stepMismatch"
  prim__stepMismatch : AnyPtr -> PrimIO AnyPtr
  
  export
  stepMismatch :  Cast validityStateFlags ValidityStateFlags
               => ToJS ValidityStateFlags
               => (obj : validityStateFlags)
               -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.stepMismatch = v}"
  prim__setStepMismatch : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setStepMismatch :  Cast validityStateFlags ValidityStateFlags
                  => ToJS ValidityStateFlags
                  => (obj : validityStateFlags)
                  -> (v : Bool)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.tooLong"
  prim__tooLong : AnyPtr -> PrimIO AnyPtr
  
  export
  tooLong :  Cast validityStateFlags ValidityStateFlags
          => ToJS ValidityStateFlags
          => (obj : validityStateFlags)
          -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.tooLong = v}"
  prim__setTooLong : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setTooLong :  Cast validityStateFlags ValidityStateFlags
             => ToJS ValidityStateFlags
             => (obj : validityStateFlags)
             -> (v : Bool)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.tooShort"
  prim__tooShort : AnyPtr -> PrimIO AnyPtr
  
  export
  tooShort :  Cast validityStateFlags ValidityStateFlags
           => ToJS ValidityStateFlags
           => (obj : validityStateFlags)
           -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.tooShort = v}"
  prim__setTooShort : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setTooShort :  Cast validityStateFlags ValidityStateFlags
              => ToJS ValidityStateFlags
              => (obj : validityStateFlags)
              -> (v : Bool)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.typeMismatch"
  prim__typeMismatch : AnyPtr -> PrimIO AnyPtr
  
  export
  typeMismatch :  Cast validityStateFlags ValidityStateFlags
               => ToJS ValidityStateFlags
               => (obj : validityStateFlags)
               -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.typeMismatch = v}"
  prim__setTypeMismatch : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setTypeMismatch :  Cast validityStateFlags ValidityStateFlags
                  => ToJS ValidityStateFlags
                  => (obj : validityStateFlags)
                  -> (v : Bool)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.valueMissing"
  prim__valueMissing : AnyPtr -> PrimIO AnyPtr
  
  export
  valueMissing :  Cast validityStateFlags ValidityStateFlags
               => ToJS ValidityStateFlags
               => (obj : validityStateFlags)
               -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.valueMissing = v}"
  prim__setValueMissing : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setValueMissing :  Cast validityStateFlags ValidityStateFlags
                  => ToJS ValidityStateFlags
                  => (obj : validityStateFlags)
                  -> (v : Bool)
                  -> IO ()

namespace WindowPostMessageOptions
  
  %foreign "browser:lambda:x=>x.targetOrigin"
  prim__targetOrigin : AnyPtr -> PrimIO AnyPtr
  
  export
  targetOrigin :  Cast windowPostMessageOptions WindowPostMessageOptions
               => ToJS WindowPostMessageOptions
               => (obj : windowPostMessageOptions)
               -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.targetOrigin = v}"
  prim__setTargetOrigin : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setTargetOrigin :  Cast windowPostMessageOptions WindowPostMessageOptions
                  => ToJS WindowPostMessageOptions
                  => (obj : windowPostMessageOptions)
                  -> (v : String)
                  -> IO ()

namespace WorkerOptions
  
  %foreign "browser:lambda:x=>x.credentials"
  prim__credentials : AnyPtr -> PrimIO AnyPtr
  
  export
  credentials :  Cast workerOptions WorkerOptions
              => ToJS WorkerOptions
              => (obj : workerOptions)
              -> IO RequestCredentials
  
  %foreign "browser:lambda:(x,v)=>{x.credentials = v}"
  prim__setCredentials : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCredentials :  Cast requestCredentials RequestCredentials
                 => ToJS RequestCredentials
                 => Cast workerOptions WorkerOptions
                 => ToJS WorkerOptions
                 => (obj : workerOptions)
                 -> (v : requestCredentials)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr
  
  export
  name :  Cast workerOptions WorkerOptions
       => ToJS WorkerOptions
       => (obj : workerOptions)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setName :  Cast workerOptions WorkerOptions
          => ToJS WorkerOptions
          => (obj : workerOptions)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  export
  type :  Cast workerOptions WorkerOptions
       => ToJS WorkerOptions
       => (obj : workerOptions)
       -> IO WorkerType
  
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setType :  Cast workerOptions WorkerOptions
          => ToJS WorkerOptions
          => Cast workerType WorkerType
          => ToJS WorkerType
          => (obj : workerOptions)
          -> (v : workerType)
          -> IO ()

namespace WorkletOptions
  
  %foreign "browser:lambda:x=>x.credentials"
  prim__credentials : AnyPtr -> PrimIO AnyPtr
  
  export
  credentials :  Cast workletOptions WorkletOptions
              => ToJS WorkletOptions
              => (obj : workletOptions)
              -> IO RequestCredentials
  
  %foreign "browser:lambda:(x,v)=>{x.credentials = v}"
  prim__setCredentials : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCredentials :  Cast requestCredentials RequestCredentials
                 => ToJS RequestCredentials
                 => Cast workletOptions WorkletOptions
                 => ToJS WorkletOptions
                 => (obj : workletOptions)
                 -> (v : requestCredentials)
                 -> IO ()



--------------------------------------------------------------------------------
--          Casts
--------------------------------------------------------------------------------

export
Cast AudioTrackList EventTarget where
  cast = believe_me

export
Cast BeforeUnloadEvent Event where
  cast = believe_me

export
Cast BroadcastChannel EventTarget where
  cast = believe_me

export
Cast CanvasRenderingContext2D CanvasCompositing where
  cast = believe_me

export
Cast CanvasRenderingContext2D CanvasDrawImage where
  cast = believe_me

export
Cast CanvasRenderingContext2D CanvasDrawPath where
  cast = believe_me

export
Cast CanvasRenderingContext2D CanvasFillStrokeStyles where
  cast = believe_me

export
Cast CanvasRenderingContext2D CanvasFilters where
  cast = believe_me

export
Cast CanvasRenderingContext2D CanvasImageData where
  cast = believe_me

export
Cast CanvasRenderingContext2D CanvasImageSmoothing where
  cast = believe_me

export
Cast CanvasRenderingContext2D CanvasPath where
  cast = believe_me

export
Cast CanvasRenderingContext2D CanvasPathDrawingStyles where
  cast = believe_me

export
Cast CanvasRenderingContext2D CanvasRect where
  cast = believe_me

export
Cast CanvasRenderingContext2D CanvasShadowStyles where
  cast = believe_me

export
Cast CanvasRenderingContext2D CanvasState where
  cast = believe_me

export
Cast CanvasRenderingContext2D CanvasText where
  cast = believe_me

export
Cast CanvasRenderingContext2D CanvasTextDrawingStyles where
  cast = believe_me

export
Cast CanvasRenderingContext2D CanvasTransform where
  cast = believe_me

export
Cast CanvasRenderingContext2D CanvasUserInterface where
  cast = believe_me

export
Cast CloseEvent Event where
  cast = believe_me

export
Cast CloseEventInit EventInit where
  cast = believe_me

export
Cast DedicatedWorkerGlobalScope WorkerGlobalScope where
  cast = believe_me

export
Cast Document DocumentAndElementEventHandlers where
  cast = believe_me

export
Cast Document GlobalEventHandlers where
  cast = believe_me

export
Cast DragEvent MouseEvent where
  cast = believe_me

export
Cast DragEventInit MouseEventInit where
  cast = believe_me

export
Cast ElementInternals ARIAMixin where
  cast = believe_me

export
Cast ErrorEvent Event where
  cast = believe_me

export
Cast ErrorEventInit EventInit where
  cast = believe_me

export
Cast EventSource EventTarget where
  cast = believe_me

export
Cast FormDataEvent Event where
  cast = believe_me

export
Cast FormDataEventInit EventInit where
  cast = believe_me

export
Cast HTMLAnchorElement HTMLElement where
  cast = believe_me

export
Cast HTMLAnchorElement HTMLHyperlinkElementUtils where
  cast = believe_me

export
Cast HTMLAreaElement HTMLElement where
  cast = believe_me

export
Cast HTMLAreaElement HTMLHyperlinkElementUtils where
  cast = believe_me

export
Cast HTMLAudioElement HTMLMediaElement where
  cast = believe_me

export
Cast HTMLBRElement HTMLElement where
  cast = believe_me

export
Cast HTMLBaseElement HTMLElement where
  cast = believe_me

export
Cast HTMLBodyElement HTMLElement where
  cast = believe_me

export
Cast HTMLBodyElement WindowEventHandlers where
  cast = believe_me

export
Cast HTMLButtonElement HTMLElement where
  cast = believe_me

export
Cast HTMLCanvasElement HTMLElement where
  cast = believe_me

export
Cast HTMLDListElement HTMLElement where
  cast = believe_me

export
Cast HTMLDataElement HTMLElement where
  cast = believe_me

export
Cast HTMLDataListElement HTMLElement where
  cast = believe_me

export
Cast HTMLDetailsElement HTMLElement where
  cast = believe_me

export
Cast HTMLDialogElement HTMLElement where
  cast = believe_me

export
Cast HTMLDirectoryElement HTMLElement where
  cast = believe_me

export
Cast HTMLDivElement HTMLElement where
  cast = believe_me

export
Cast HTMLElement DocumentAndElementEventHandlers where
  cast = believe_me

export
Cast HTMLElement Element where
  cast = believe_me

export
Cast HTMLElement ElementContentEditable where
  cast = believe_me

export
Cast HTMLElement GlobalEventHandlers where
  cast = believe_me

export
Cast HTMLElement HTMLOrSVGElement where
  cast = believe_me

export
Cast HTMLEmbedElement HTMLElement where
  cast = believe_me

export
Cast HTMLFieldSetElement HTMLElement where
  cast = believe_me

export
Cast HTMLFontElement HTMLElement where
  cast = believe_me

export
Cast HTMLFormControlsCollection HTMLCollection where
  cast = believe_me

export
Cast HTMLFormElement HTMLElement where
  cast = believe_me

export
Cast HTMLFrameElement HTMLElement where
  cast = believe_me

export
Cast HTMLFrameSetElement HTMLElement where
  cast = believe_me

export
Cast HTMLFrameSetElement WindowEventHandlers where
  cast = believe_me

export
Cast HTMLHRElement HTMLElement where
  cast = believe_me

export
Cast HTMLHeadElement HTMLElement where
  cast = believe_me

export
Cast HTMLHeadingElement HTMLElement where
  cast = believe_me

export
Cast HTMLHtmlElement HTMLElement where
  cast = believe_me

export
Cast HTMLIFrameElement HTMLElement where
  cast = believe_me

export
Cast HTMLImageElement HTMLElement where
  cast = believe_me

export
Cast HTMLInputElement HTMLElement where
  cast = believe_me

export
Cast HTMLLIElement HTMLElement where
  cast = believe_me

export
Cast HTMLLabelElement HTMLElement where
  cast = believe_me

export
Cast HTMLLegendElement HTMLElement where
  cast = believe_me

export
Cast HTMLLinkElement HTMLElement where
  cast = believe_me

export
Cast HTMLLinkElement LinkStyle where
  cast = believe_me

export
Cast HTMLMapElement HTMLElement where
  cast = believe_me

export
Cast HTMLMarqueeElement HTMLElement where
  cast = believe_me

export
Cast HTMLMediaElement HTMLElement where
  cast = believe_me

export
Cast HTMLMenuElement HTMLElement where
  cast = believe_me

export
Cast HTMLMetaElement HTMLElement where
  cast = believe_me

export
Cast HTMLMeterElement HTMLElement where
  cast = believe_me

export
Cast HTMLModElement HTMLElement where
  cast = believe_me

export
Cast HTMLOListElement HTMLElement where
  cast = believe_me

export
Cast HTMLObjectElement HTMLElement where
  cast = believe_me

export
Cast HTMLOptGroupElement HTMLElement where
  cast = believe_me

export
Cast HTMLOptionElement HTMLElement where
  cast = believe_me

export
Cast HTMLOptionsCollection HTMLCollection where
  cast = believe_me

export
Cast HTMLOutputElement HTMLElement where
  cast = believe_me

export
Cast HTMLParagraphElement HTMLElement where
  cast = believe_me

export
Cast HTMLParamElement HTMLElement where
  cast = believe_me

export
Cast HTMLPictureElement HTMLElement where
  cast = believe_me

export
Cast HTMLPreElement HTMLElement where
  cast = believe_me

export
Cast HTMLProgressElement HTMLElement where
  cast = believe_me

export
Cast HTMLQuoteElement HTMLElement where
  cast = believe_me

export
Cast HTMLScriptElement HTMLElement where
  cast = believe_me

export
Cast HTMLSelectElement HTMLElement where
  cast = believe_me

export
Cast HTMLSlotElement HTMLElement where
  cast = believe_me

export
Cast HTMLSourceElement HTMLElement where
  cast = believe_me

export
Cast HTMLSpanElement HTMLElement where
  cast = believe_me

export
Cast HTMLStyleElement HTMLElement where
  cast = believe_me

export
Cast HTMLStyleElement LinkStyle where
  cast = believe_me

export
Cast HTMLTableCaptionElement HTMLElement where
  cast = believe_me

export
Cast HTMLTableCellElement HTMLElement where
  cast = believe_me

export
Cast HTMLTableColElement HTMLElement where
  cast = believe_me

export
Cast HTMLTableElement HTMLElement where
  cast = believe_me

export
Cast HTMLTableRowElement HTMLElement where
  cast = believe_me

export
Cast HTMLTableSectionElement HTMLElement where
  cast = believe_me

export
Cast HTMLTemplateElement HTMLElement where
  cast = believe_me

export
Cast HTMLTextAreaElement HTMLElement where
  cast = believe_me

export
Cast HTMLTimeElement HTMLElement where
  cast = believe_me

export
Cast HTMLTitleElement HTMLElement where
  cast = believe_me

export
Cast HTMLTrackElement HTMLElement where
  cast = believe_me

export
Cast HTMLUListElement HTMLElement where
  cast = believe_me

export
Cast HTMLUnknownElement HTMLElement where
  cast = believe_me

export
Cast HTMLVideoElement HTMLMediaElement where
  cast = believe_me

export
Cast HashChangeEvent Event where
  cast = believe_me

export
Cast HashChangeEventInit EventInit where
  cast = believe_me

export
Cast MessageEvent Event where
  cast = believe_me

export
Cast MessageEventInit EventInit where
  cast = believe_me

export
Cast MessagePort EventTarget where
  cast = believe_me

export
Cast Navigator NavigatorConcurrentHardware where
  cast = believe_me

export
Cast Navigator NavigatorContentUtils where
  cast = believe_me

export
Cast Navigator NavigatorCookies where
  cast = believe_me

export
Cast Navigator NavigatorID where
  cast = believe_me

export
Cast Navigator NavigatorLanguage where
  cast = believe_me

export
Cast Navigator NavigatorOnLine where
  cast = believe_me

export
Cast Navigator NavigatorPlugins where
  cast = believe_me

export
Cast OffscreenCanvas EventTarget where
  cast = believe_me

export
Cast OffscreenCanvasRenderingContext2D CanvasCompositing where
  cast = believe_me

export
Cast OffscreenCanvasRenderingContext2D CanvasDrawImage where
  cast = believe_me

export
Cast OffscreenCanvasRenderingContext2D CanvasDrawPath where
  cast = believe_me

export
Cast OffscreenCanvasRenderingContext2D CanvasFillStrokeStyles where
  cast = believe_me

export
Cast OffscreenCanvasRenderingContext2D CanvasFilters where
  cast = believe_me

export
Cast OffscreenCanvasRenderingContext2D CanvasImageData where
  cast = believe_me

export
Cast OffscreenCanvasRenderingContext2D CanvasImageSmoothing where
  cast = believe_me

export
Cast OffscreenCanvasRenderingContext2D CanvasPath where
  cast = believe_me

export
Cast OffscreenCanvasRenderingContext2D CanvasPathDrawingStyles where
  cast = believe_me

export
Cast OffscreenCanvasRenderingContext2D CanvasRect where
  cast = believe_me

export
Cast OffscreenCanvasRenderingContext2D CanvasShadowStyles where
  cast = believe_me

export
Cast OffscreenCanvasRenderingContext2D CanvasState where
  cast = believe_me

export
Cast OffscreenCanvasRenderingContext2D CanvasText where
  cast = believe_me

export
Cast OffscreenCanvasRenderingContext2D CanvasTextDrawingStyles where
  cast = believe_me

export
Cast OffscreenCanvasRenderingContext2D CanvasTransform where
  cast = believe_me

export
Cast PageTransitionEvent Event where
  cast = believe_me

export
Cast PageTransitionEventInit EventInit where
  cast = believe_me

export
Cast Path2D CanvasPath where
  cast = believe_me

export
Cast PopStateEvent Event where
  cast = believe_me

export
Cast PopStateEventInit EventInit where
  cast = believe_me

export
Cast PromiseRejectionEvent Event where
  cast = believe_me

export
Cast PromiseRejectionEventInit EventInit where
  cast = believe_me

export
Cast RadioNodeList NodeList where
  cast = believe_me

export
Cast SharedWorker AbstractWorker where
  cast = believe_me

export
Cast SharedWorker EventTarget where
  cast = believe_me

export
Cast SharedWorkerGlobalScope WorkerGlobalScope where
  cast = believe_me

export
Cast StorageEvent Event where
  cast = believe_me

export
Cast StorageEventInit EventInit where
  cast = believe_me

export
Cast SubmitEvent Event where
  cast = believe_me

export
Cast SubmitEventInit EventInit where
  cast = believe_me

export
Cast TextTrack EventTarget where
  cast = believe_me

export
Cast TextTrackCue EventTarget where
  cast = believe_me

export
Cast TextTrackList EventTarget where
  cast = believe_me

export
Cast TrackEvent Event where
  cast = believe_me

export
Cast TrackEventInit EventInit where
  cast = believe_me

export
Cast VideoTrackList EventTarget where
  cast = believe_me

export
Cast WebSocket EventTarget where
  cast = believe_me

export
Cast Window EventTarget where
  cast = believe_me

export
Cast Window GlobalEventHandlers where
  cast = believe_me

export
Cast Window WindowEventHandlers where
  cast = believe_me

export
Cast WindowPostMessageOptions PostMessageOptions where
  cast = believe_me

export
Cast Worker AbstractWorker where
  cast = believe_me

export
Cast Worker EventTarget where
  cast = believe_me

export
Cast WorkerGlobalScope EventTarget where
  cast = believe_me

export
Cast WorkerNavigator NavigatorConcurrentHardware where
  cast = believe_me

export
Cast WorkerNavigator NavigatorID where
  cast = believe_me

export
Cast WorkerNavigator NavigatorLanguage where
  cast = believe_me

export
Cast WorkerNavigator NavigatorOnLine where
  cast = believe_me