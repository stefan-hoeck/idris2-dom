module Web.Internal.HtmlPrim

import JS
import Web.Internal.Types

%default total


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace AudioTrack

  export
  %foreign "browser:lambda:x=>x.enabled"
  prim__enabled : AudioTrack -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.enabled = v}"
  prim__setEnabled : AudioTrack -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.id"
  prim__id : AudioTrack -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.kind"
  prim__kind : AudioTrack -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.label"
  prim__label : AudioTrack -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.language"
  prim__language : AudioTrack -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.sourceBuffer"
  prim__sourceBuffer : AudioTrack -> PrimIO (Nullable SourceBuffer)


namespace AudioTrackList

  export
  %foreign "browser:lambda:(o,x)=>o[x]"
  prim__get : AudioTrackList -> Bits32 -> PrimIO AudioTrack

  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : AudioTrackList -> PrimIO Bits32

  export
  %foreign "browser:lambda:x=>x.onaddtrack"
  prim__onaddtrack : AudioTrackList -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onaddtrack = v}"
  prim__setOnaddtrack :  AudioTrackList
                      -> Nullable EventHandlerNonNull
                      -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onchange"
  prim__onchange : AudioTrackList -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onchange = v}"
  prim__setOnchange :  AudioTrackList
                    -> Nullable EventHandlerNonNull
                    -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onremovetrack"
  prim__onremovetrack : AudioTrackList -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onremovetrack = v}"
  prim__setOnremovetrack :  AudioTrackList
                         -> Nullable EventHandlerNonNull
                         -> PrimIO ()


  export
  %foreign "browser:lambda:(x,a)=>x.getTrackById(a)"
  prim__getTrackById : AudioTrackList -> String -> PrimIO (Nullable AudioTrack)


namespace BarProp

  export
  %foreign "browser:lambda:x=>x.visible"
  prim__visible : BarProp -> PrimIO Boolean


namespace BeforeUnloadEvent

  export
  %foreign "browser:lambda:x=>x.returnValue"
  prim__returnValue : BeforeUnloadEvent -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.returnValue = v}"
  prim__setReturnValue : BeforeUnloadEvent -> String -> PrimIO ()



namespace BroadcastChannel

  export
  %foreign "browser:lambda:(a)=> new BroadcastChannel(a)"
  prim__new : String -> PrimIO BroadcastChannel

  export
  %foreign "browser:lambda:x=>x.name"
  prim__name : BroadcastChannel -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : BroadcastChannel -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onmessage = v}"
  prim__setOnmessage :  BroadcastChannel
                     -> Nullable EventHandlerNonNull
                     -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onmessageerror"
  prim__onmessageerror :  BroadcastChannel
                       -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onmessageerror = v}"
  prim__setOnmessageerror :  BroadcastChannel
                          -> Nullable EventHandlerNonNull
                          -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.close()"
  prim__close : BroadcastChannel -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.postMessage(a)"
  prim__postMessage : BroadcastChannel -> AnyPtr -> PrimIO ()


namespace CanvasGradient

  export
  %foreign "browser:lambda:(x,a,b)=>x.addColorStop(a,b)"
  prim__addColorStop : CanvasGradient -> Double -> String -> PrimIO ()


namespace CanvasPattern

  export
  %foreign "browser:lambda:(x,a)=>x.setTransform(a)"
  prim__setTransform : CanvasPattern -> UndefOr DOMMatrix2DInit -> PrimIO ()


namespace CanvasRenderingContext2D

  export
  %foreign "browser:lambda:x=>x.canvas"
  prim__canvas : CanvasRenderingContext2D -> PrimIO HTMLCanvasElement

  export
  %foreign "browser:lambda:x=>x.getContextAttributes()"
  prim__getContextAttributes :  CanvasRenderingContext2D
                             -> PrimIO CanvasRenderingContext2DSettings


namespace CloseEvent

  export
  %foreign "browser:lambda:(a,b)=> new CloseEvent(a,b)"
  prim__new : String -> UndefOr CloseEventInit -> PrimIO CloseEvent

  export
  %foreign "browser:lambda:x=>x.code"
  prim__code : CloseEvent -> PrimIO Bits16

  export
  %foreign "browser:lambda:x=>x.reason"
  prim__reason : CloseEvent -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.wasClean"
  prim__wasClean : CloseEvent -> PrimIO Boolean


namespace CustomElementRegistry

  export
  %foreign "browser:lambda:(x,a,b,c)=>x.define(a,b,c)"
  prim__define :  CustomElementRegistry
               -> String
               -> CustomElementConstructor
               -> UndefOr ElementDefinitionOptions
               -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.get(a)"
  prim__get :  CustomElementRegistry
            -> String
            -> PrimIO (Union2 CustomElementConstructor Undefined)

  export
  %foreign "browser:lambda:(x,a)=>x.upgrade(a)"
  prim__upgrade : CustomElementRegistry -> Node -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.whenDefined(a)"
  prim__whenDefined :  CustomElementRegistry
                    -> String
                    -> PrimIO (Promise CustomElementConstructor)


namespace DOMParser

  export
  %foreign "browser:lambda:()=> new DOMParser()"
  prim__new : PrimIO DOMParser

  export
  %foreign "browser:lambda:(x,a,b)=>x.parseFromString(a,b)"
  prim__parseFromString : DOMParser -> String -> String -> PrimIO Document


namespace DOMStringList

  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : DOMStringList -> PrimIO Bits32

  export
  %foreign "browser:lambda:(x,a)=>x.contains(a)"
  prim__contains : DOMStringList -> String -> PrimIO Boolean

  export
  %foreign "browser:lambda:(x,a)=>x.item(a)"
  prim__item : DOMStringList -> Bits32 -> PrimIO (Nullable String)


namespace DOMStringMap

  export
  %foreign "browser:lambda:(o,x)=>o[x]"
  prim__get : DOMStringMap -> String -> PrimIO String

  export
  %foreign "browser:lambda:(o,x,v)=>o[x] = v"
  prim__set : DOMStringMap -> String -> String -> PrimIO ()


namespace DataTransfer

  export
  %foreign "browser:lambda:()=> new DataTransfer()"
  prim__new : PrimIO DataTransfer

  export
  %foreign "browser:lambda:x=>x.dropEffect"
  prim__dropEffect : DataTransfer -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.dropEffect = v}"
  prim__setDropEffect : DataTransfer -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.effectAllowed"
  prim__effectAllowed : DataTransfer -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.effectAllowed = v}"
  prim__setEffectAllowed : DataTransfer -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.files"
  prim__files : DataTransfer -> PrimIO FileList

  export
  %foreign "browser:lambda:x=>x.items"
  prim__items : DataTransfer -> PrimIO DataTransferItemList

  export
  %foreign "browser:lambda:x=>x.types"
  prim__types : DataTransfer -> PrimIO (Array String)

  export
  %foreign "browser:lambda:(x,a)=>x.clearData(a)"
  prim__clearData : DataTransfer -> UndefOr String -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.getData(a)"
  prim__getData : DataTransfer -> String -> PrimIO String

  export
  %foreign "browser:lambda:(x,a,b)=>x.setData(a,b)"
  prim__setData : DataTransfer -> String -> String -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b,c)=>x.setDragImage(a,b,c)"
  prim__setDragImage : DataTransfer -> Element -> Int32 -> Int32 -> PrimIO ()


namespace DataTransferItem

  export
  %foreign "browser:lambda:x=>x.kind"
  prim__kind : DataTransferItem -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : DataTransferItem -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.getAsFile()"
  prim__getAsFile : DataTransferItem -> PrimIO (Nullable File)

  export
  %foreign "browser:lambda:(x,a)=>x.getAsString(a)"
  prim__getAsString :  DataTransferItem
                    -> Nullable FunctionStringCallback
                    -> PrimIO ()


namespace DataTransferItemList

  export
  %foreign "browser:lambda:(o,x)=>o[x]"
  prim__get : DataTransferItemList -> Bits32 -> PrimIO DataTransferItem

  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : DataTransferItemList -> PrimIO Bits32

  export
  %foreign "browser:lambda:(x,a,b)=>x.add(a,b)"
  prim__add :  DataTransferItemList
            -> String
            -> String
            -> PrimIO (Nullable DataTransferItem)

  export
  %foreign "browser:lambda:(x,a)=>x.add(a)"
  prim__add1 :  DataTransferItemList
             -> File
             -> PrimIO (Nullable DataTransferItem)

  export
  %foreign "browser:lambda:x=>x.clear()"
  prim__clear : DataTransferItemList -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.remove(a)"
  prim__remove : DataTransferItemList -> Bits32 -> PrimIO ()


namespace DedicatedWorkerGlobalScope

  export
  %foreign "browser:lambda:x=>x.name"
  prim__name : DedicatedWorkerGlobalScope -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage :  DedicatedWorkerGlobalScope
                  -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onmessage = v}"
  prim__setOnmessage :  DedicatedWorkerGlobalScope
                     -> Nullable EventHandlerNonNull
                     -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onmessageerror"
  prim__onmessageerror :  DedicatedWorkerGlobalScope
                       -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onmessageerror = v}"
  prim__setOnmessageerror :  DedicatedWorkerGlobalScope
                          -> Nullable EventHandlerNonNull
                          -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.close()"
  prim__close : DedicatedWorkerGlobalScope -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b)=>x.postMessage(a,b)"
  prim__postMessage :  DedicatedWorkerGlobalScope
                    -> AnyPtr
                    -> Array Object
                    -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b)=>x.postMessage(a,b)"
  prim__postMessage1 :  DedicatedWorkerGlobalScope
                     -> AnyPtr
                     -> UndefOr PostMessageOptions
                     -> PrimIO ()


namespace DragEvent

  export
  %foreign "browser:lambda:(a,b)=> new DragEvent(a,b)"
  prim__new : String -> UndefOr DragEventInit -> PrimIO DragEvent

  export
  %foreign "browser:lambda:x=>x.dataTransfer"
  prim__dataTransfer : DragEvent -> PrimIO (Nullable DataTransfer)


namespace ElementInternals

  export
  %foreign "browser:lambda:x=>x.form"
  prim__form : ElementInternals -> PrimIO (Nullable HTMLFormElement)

  export
  %foreign "browser:lambda:x=>x.labels"
  prim__labels : ElementInternals -> PrimIO NodeList

  export
  %foreign "browser:lambda:x=>x.shadowRoot"
  prim__shadowRoot : ElementInternals -> PrimIO (Nullable ShadowRoot)

  export
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : ElementInternals -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : ElementInternals -> PrimIO ValidityState

  export
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : ElementInternals -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.checkValidity()"
  prim__checkValidity : ElementInternals -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.reportValidity()"
  prim__reportValidity : ElementInternals -> PrimIO Boolean

  export
  %foreign "browser:lambda:(x,a,b)=>x.setFormValue(a,b)"
  prim__setFormValue :  ElementInternals
                     -> Nullable (Union3 File String FormData)
                     -> UndefOr (Nullable (Union3 File String FormData))
                     -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b,c)=>x.setValidity(a,b,c)"
  prim__setValidity :  ElementInternals
                    -> UndefOr ValidityStateFlags
                    -> UndefOr String
                    -> UndefOr HTMLElement
                    -> PrimIO ()


namespace ErrorEvent

  export
  %foreign "browser:lambda:(a,b)=> new ErrorEvent(a,b)"
  prim__new : String -> UndefOr ErrorEventInit -> PrimIO ErrorEvent

  export
  %foreign "browser:lambda:x=>x.colno"
  prim__colno : ErrorEvent -> PrimIO Bits32

  export
  %foreign "browser:lambda:x=>x.error"
  prim__error : ErrorEvent -> PrimIO AnyPtr

  export
  %foreign "browser:lambda:x=>x.filename"
  prim__filename : ErrorEvent -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.lineno"
  prim__lineno : ErrorEvent -> PrimIO Bits32

  export
  %foreign "browser:lambda:x=>x.message"
  prim__message : ErrorEvent -> PrimIO String


namespace EventSource

  export
  %foreign "browser:lambda:(a,b)=> new EventSource(a,b)"
  prim__new : String -> UndefOr EventSourceInit -> PrimIO EventSource

  export
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : EventSource -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onerror = v}"
  prim__setOnerror : EventSource -> Nullable EventHandlerNonNull -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : EventSource -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onmessage = v}"
  prim__setOnmessage : EventSource -> Nullable EventHandlerNonNull -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onopen"
  prim__onopen : EventSource -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onopen = v}"
  prim__setOnopen : EventSource -> Nullable EventHandlerNonNull -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : EventSource -> PrimIO Bits16

  export
  %foreign "browser:lambda:x=>x.url"
  prim__url : EventSource -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.withCredentials"
  prim__withCredentials : EventSource -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.close()"
  prim__close : EventSource -> PrimIO ()


namespace External

  export
  %foreign "browser:lambda:x=>x.AddSearchProvider()"
  prim__AddSearchProvider : External -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.IsSearchProviderInstalled()"
  prim__IsSearchProviderInstalled : External -> PrimIO ()


namespace FormDataEvent

  export
  %foreign "browser:lambda:(a,b)=> new FormDataEvent(a,b)"
  prim__new : String -> FormDataEventInit -> PrimIO FormDataEvent

  export
  %foreign "browser:lambda:x=>x.formData"
  prim__formData : FormDataEvent -> PrimIO FormData


namespace HTMLAllCollection

  export
  %foreign "browser:lambda:(o,x)=>o[x]"
  prim__get : HTMLAllCollection -> Bits32 -> PrimIO Element

  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : HTMLAllCollection -> PrimIO Bits32

  export
  %foreign "browser:lambda:(x,a)=>x.item(a)"
  prim__item :  HTMLAllCollection
             -> UndefOr String
             -> PrimIO (Nullable (Union2 HTMLCollection Element))

  export
  %foreign "browser:lambda:(x,a)=>x.namedItem(a)"
  prim__namedItem :  HTMLAllCollection
                  -> String
                  -> PrimIO (Nullable (Union2 HTMLCollection Element))


namespace HTMLAnchorElement

  export
  %foreign "browser:lambda:()=> new HTMLAnchorElement()"
  prim__new : PrimIO HTMLAnchorElement

  export
  %foreign "browser:lambda:x=>x.charset"
  prim__charset : HTMLAnchorElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.charset = v}"
  prim__setCharset : HTMLAnchorElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.coords"
  prim__coords : HTMLAnchorElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.coords = v}"
  prim__setCoords : HTMLAnchorElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.download"
  prim__download : HTMLAnchorElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.download = v}"
  prim__setDownload : HTMLAnchorElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.hreflang"
  prim__hreflang : HTMLAnchorElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.hreflang = v}"
  prim__setHreflang : HTMLAnchorElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.name"
  prim__name : HTMLAnchorElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : HTMLAnchorElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ping"
  prim__ping : HTMLAnchorElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ping = v}"
  prim__setPing : HTMLAnchorElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : HTMLAnchorElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy = v}"
  prim__setReferrerPolicy : HTMLAnchorElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.rel"
  prim__rel : HTMLAnchorElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.rel = v}"
  prim__setRel : HTMLAnchorElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.relList"
  prim__relList : HTMLAnchorElement -> PrimIO DOMTokenList

  export
  %foreign "browser:lambda:x=>x.rev"
  prim__rev : HTMLAnchorElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.rev = v}"
  prim__setRev : HTMLAnchorElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.shape"
  prim__shape : HTMLAnchorElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.shape = v}"
  prim__setShape : HTMLAnchorElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.target"
  prim__target : HTMLAnchorElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.target = v}"
  prim__setTarget : HTMLAnchorElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.text"
  prim__text : HTMLAnchorElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.text = v}"
  prim__setText : HTMLAnchorElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : HTMLAnchorElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : HTMLAnchorElement -> String -> PrimIO ()



namespace HTMLAreaElement

  export
  %foreign "browser:lambda:()=> new HTMLAreaElement()"
  prim__new : PrimIO HTMLAreaElement

  export
  %foreign "browser:lambda:x=>x.alt"
  prim__alt : HTMLAreaElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.alt = v}"
  prim__setAlt : HTMLAreaElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.coords"
  prim__coords : HTMLAreaElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.coords = v}"
  prim__setCoords : HTMLAreaElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.download"
  prim__download : HTMLAreaElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.download = v}"
  prim__setDownload : HTMLAreaElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.noHref"
  prim__noHref : HTMLAreaElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.noHref = v}"
  prim__setNoHref : HTMLAreaElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ping"
  prim__ping : HTMLAreaElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ping = v}"
  prim__setPing : HTMLAreaElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : HTMLAreaElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy = v}"
  prim__setReferrerPolicy : HTMLAreaElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.rel"
  prim__rel : HTMLAreaElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.rel = v}"
  prim__setRel : HTMLAreaElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.relList"
  prim__relList : HTMLAreaElement -> PrimIO DOMTokenList

  export
  %foreign "browser:lambda:x=>x.shape"
  prim__shape : HTMLAreaElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.shape = v}"
  prim__setShape : HTMLAreaElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.target"
  prim__target : HTMLAreaElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.target = v}"
  prim__setTarget : HTMLAreaElement -> String -> PrimIO ()



namespace HTMLAudioElement

  export
  %foreign "browser:lambda:()=> new HTMLAudioElement()"
  prim__new : PrimIO HTMLAudioElement


namespace HTMLBRElement

  export
  %foreign "browser:lambda:()=> new HTMLBRElement()"
  prim__new : PrimIO HTMLBRElement

  export
  %foreign "browser:lambda:x=>x.clear"
  prim__clear : HTMLBRElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.clear = v}"
  prim__setClear : HTMLBRElement -> String -> PrimIO ()



namespace HTMLBaseElement

  export
  %foreign "browser:lambda:()=> new HTMLBaseElement()"
  prim__new : PrimIO HTMLBaseElement

  export
  %foreign "browser:lambda:x=>x.href"
  prim__href : HTMLBaseElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.href = v}"
  prim__setHref : HTMLBaseElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.target"
  prim__target : HTMLBaseElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.target = v}"
  prim__setTarget : HTMLBaseElement -> String -> PrimIO ()



namespace HTMLBodyElement

  export
  %foreign "browser:lambda:()=> new HTMLBodyElement()"
  prim__new : PrimIO HTMLBodyElement

  export
  %foreign "browser:lambda:x=>x.aLink"
  prim__aLink : HTMLBodyElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.aLink = v}"
  prim__setALink : HTMLBodyElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.background"
  prim__background : HTMLBodyElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.background = v}"
  prim__setBackground : HTMLBodyElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.bgColor"
  prim__bgColor : HTMLBodyElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.bgColor = v}"
  prim__setBgColor : HTMLBodyElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.link"
  prim__link : HTMLBodyElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.link = v}"
  prim__setLink : HTMLBodyElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.text"
  prim__text : HTMLBodyElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.text = v}"
  prim__setText : HTMLBodyElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.vLink"
  prim__vLink : HTMLBodyElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.vLink = v}"
  prim__setVLink : HTMLBodyElement -> String -> PrimIO ()



namespace HTMLButtonElement

  export
  %foreign "browser:lambda:()=> new HTMLButtonElement()"
  prim__new : PrimIO HTMLButtonElement

  export
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : HTMLButtonElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.disabled = v}"
  prim__setDisabled : HTMLButtonElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.form"
  prim__form : HTMLButtonElement -> PrimIO (Nullable HTMLFormElement)

  export
  %foreign "browser:lambda:x=>x.formAction"
  prim__formAction : HTMLButtonElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.formAction = v}"
  prim__setFormAction : HTMLButtonElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.formEnctype"
  prim__formEnctype : HTMLButtonElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.formEnctype = v}"
  prim__setFormEnctype : HTMLButtonElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.formMethod"
  prim__formMethod : HTMLButtonElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.formMethod = v}"
  prim__setFormMethod : HTMLButtonElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.formNoValidate"
  prim__formNoValidate : HTMLButtonElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.formNoValidate = v}"
  prim__setFormNoValidate : HTMLButtonElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.formTarget"
  prim__formTarget : HTMLButtonElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.formTarget = v}"
  prim__setFormTarget : HTMLButtonElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.labels"
  prim__labels : HTMLButtonElement -> PrimIO NodeList

  export
  %foreign "browser:lambda:x=>x.name"
  prim__name : HTMLButtonElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : HTMLButtonElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : HTMLButtonElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : HTMLButtonElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : HTMLButtonElement -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : HTMLButtonElement -> PrimIO ValidityState

  export
  %foreign "browser:lambda:x=>x.value"
  prim__value : HTMLButtonElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : HTMLButtonElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : HTMLButtonElement -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.checkValidity()"
  prim__checkValidity : HTMLButtonElement -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.reportValidity()"
  prim__reportValidity : HTMLButtonElement -> PrimIO Boolean

  export
  %foreign "browser:lambda:(x,a)=>x.setCustomValidity(a)"
  prim__setCustomValidity : HTMLButtonElement -> String -> PrimIO ()


namespace HTMLCanvasElement

  export
  %foreign "browser:lambda:()=> new HTMLCanvasElement()"
  prim__new : PrimIO HTMLCanvasElement

  export
  %foreign "browser:lambda:x=>x.height"
  prim__height : HTMLCanvasElement -> PrimIO Bits32


  export
  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : HTMLCanvasElement -> Bits32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.width"
  prim__width : HTMLCanvasElement -> PrimIO Bits32


  export
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : HTMLCanvasElement -> Bits32 -> PrimIO ()


  export
  %foreign "browser:lambda:(x,a,b)=>x.getContext(a,b)"
  prim__getContext :  HTMLCanvasElement
                   -> String
                   -> UndefOr AnyPtr
                   -> PrimIO (Nullable (Union4 CanvasRenderingContext2D
                                               ImageBitmapRenderingContext
                                               WebGLRenderingContext
                                               WebGL2RenderingContext))

  export
  %foreign "browser:lambda:(x,a,b,c)=>x.toBlob(a,b,c)"
  prim__toBlob :  HTMLCanvasElement
               -> BlobCallback
               -> UndefOr String
               -> UndefOr AnyPtr
               -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b)=>x.toDataURL(a,b)"
  prim__toDataURL :  HTMLCanvasElement
                  -> UndefOr String
                  -> UndefOr AnyPtr
                  -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.transferControlToOffscreen()"
  prim__transferControlToOffscreen : HTMLCanvasElement -> PrimIO OffscreenCanvas


namespace HTMLDListElement

  export
  %foreign "browser:lambda:()=> new HTMLDListElement()"
  prim__new : PrimIO HTMLDListElement

  export
  %foreign "browser:lambda:x=>x.compact"
  prim__compact : HTMLDListElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.compact = v}"
  prim__setCompact : HTMLDListElement -> Boolean -> PrimIO ()



namespace HTMLDataElement

  export
  %foreign "browser:lambda:()=> new HTMLDataElement()"
  prim__new : PrimIO HTMLDataElement

  export
  %foreign "browser:lambda:x=>x.value"
  prim__value : HTMLDataElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : HTMLDataElement -> String -> PrimIO ()



namespace HTMLDataListElement

  export
  %foreign "browser:lambda:()=> new HTMLDataListElement()"
  prim__new : PrimIO HTMLDataListElement

  export
  %foreign "browser:lambda:x=>x.options"
  prim__options : HTMLDataListElement -> PrimIO HTMLCollection


namespace HTMLDetailsElement

  export
  %foreign "browser:lambda:()=> new HTMLDetailsElement()"
  prim__new : PrimIO HTMLDetailsElement

  export
  %foreign "browser:lambda:x=>x.open"
  prim__open : HTMLDetailsElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.open = v}"
  prim__setOpen : HTMLDetailsElement -> Boolean -> PrimIO ()



namespace HTMLDialogElement

  export
  %foreign "browser:lambda:()=> new HTMLDialogElement()"
  prim__new : PrimIO HTMLDialogElement

  export
  %foreign "browser:lambda:x=>x.open"
  prim__open : HTMLDialogElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.open = v}"
  prim__setOpen : HTMLDialogElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.returnValue"
  prim__returnValue : HTMLDialogElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.returnValue = v}"
  prim__setReturnValue : HTMLDialogElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:(x,a)=>x.close(a)"
  prim__close : HTMLDialogElement -> UndefOr String -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.show()"
  prim__show : HTMLDialogElement -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.showModal()"
  prim__showModal : HTMLDialogElement -> PrimIO ()


namespace HTMLDirectoryElement

  export
  %foreign "browser:lambda:()=> new HTMLDirectoryElement()"
  prim__new : PrimIO HTMLDirectoryElement

  export
  %foreign "browser:lambda:x=>x.compact"
  prim__compact : HTMLDirectoryElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.compact = v}"
  prim__setCompact : HTMLDirectoryElement -> Boolean -> PrimIO ()



namespace HTMLDivElement

  export
  %foreign "browser:lambda:()=> new HTMLDivElement()"
  prim__new : PrimIO HTMLDivElement

  export
  %foreign "browser:lambda:x=>x.align"
  prim__align : HTMLDivElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : HTMLDivElement -> String -> PrimIO ()



namespace HTMLElement

  export
  %foreign "browser:lambda:()=> new HTMLElement()"
  prim__new : PrimIO HTMLElement

  export
  %foreign "browser:lambda:x=>x.accessKey"
  prim__accessKey : HTMLElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.accessKey = v}"
  prim__setAccessKey : HTMLElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.accessKeyLabel"
  prim__accessKeyLabel : HTMLElement -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.autocapitalize"
  prim__autocapitalize : HTMLElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.autocapitalize = v}"
  prim__setAutocapitalize : HTMLElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.dir"
  prim__dir : HTMLElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.dir = v}"
  prim__setDir : HTMLElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.draggable"
  prim__draggable : HTMLElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.draggable = v}"
  prim__setDraggable : HTMLElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.hidden"
  prim__hidden : HTMLElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.hidden = v}"
  prim__setHidden : HTMLElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.innerText"
  prim__innerText : HTMLElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.innerText = v}"
  prim__setInnerText : HTMLElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.lang"
  prim__lang : HTMLElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.lang = v}"
  prim__setLang : HTMLElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.spellcheck"
  prim__spellcheck : HTMLElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.spellcheck = v}"
  prim__setSpellcheck : HTMLElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.title"
  prim__title : HTMLElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.title = v}"
  prim__setTitle : HTMLElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.translate"
  prim__translate : HTMLElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.translate = v}"
  prim__setTranslate : HTMLElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.attachInternals()"
  prim__attachInternals : HTMLElement -> PrimIO ElementInternals

  export
  %foreign "browser:lambda:x=>x.click()"
  prim__click : HTMLElement -> PrimIO ()


namespace HTMLEmbedElement

  export
  %foreign "browser:lambda:()=> new HTMLEmbedElement()"
  prim__new : PrimIO HTMLEmbedElement

  export
  %foreign "browser:lambda:x=>x.align"
  prim__align : HTMLEmbedElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : HTMLEmbedElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.height"
  prim__height : HTMLEmbedElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : HTMLEmbedElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.name"
  prim__name : HTMLEmbedElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : HTMLEmbedElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.src"
  prim__src : HTMLEmbedElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.src = v}"
  prim__setSrc : HTMLEmbedElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : HTMLEmbedElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : HTMLEmbedElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.width"
  prim__width : HTMLEmbedElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : HTMLEmbedElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.getSVGDocument()"
  prim__getSVGDocument : HTMLEmbedElement -> PrimIO (Nullable Document)


namespace HTMLFieldSetElement

  export
  %foreign "browser:lambda:()=> new HTMLFieldSetElement()"
  prim__new : PrimIO HTMLFieldSetElement

  export
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : HTMLFieldSetElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.disabled = v}"
  prim__setDisabled : HTMLFieldSetElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.elements"
  prim__elements : HTMLFieldSetElement -> PrimIO HTMLCollection

  export
  %foreign "browser:lambda:x=>x.form"
  prim__form : HTMLFieldSetElement -> PrimIO (Nullable HTMLFormElement)

  export
  %foreign "browser:lambda:x=>x.name"
  prim__name : HTMLFieldSetElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : HTMLFieldSetElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : HTMLFieldSetElement -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : HTMLFieldSetElement -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : HTMLFieldSetElement -> PrimIO ValidityState

  export
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : HTMLFieldSetElement -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.checkValidity()"
  prim__checkValidity : HTMLFieldSetElement -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.reportValidity()"
  prim__reportValidity : HTMLFieldSetElement -> PrimIO Boolean

  export
  %foreign "browser:lambda:(x,a)=>x.setCustomValidity(a)"
  prim__setCustomValidity : HTMLFieldSetElement -> String -> PrimIO ()


namespace HTMLFontElement

  export
  %foreign "browser:lambda:()=> new HTMLFontElement()"
  prim__new : PrimIO HTMLFontElement

  export
  %foreign "browser:lambda:x=>x.color"
  prim__color : HTMLFontElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.color = v}"
  prim__setColor : HTMLFontElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.face"
  prim__face : HTMLFontElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.face = v}"
  prim__setFace : HTMLFontElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.size"
  prim__size : HTMLFontElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.size = v}"
  prim__setSize : HTMLFontElement -> String -> PrimIO ()



namespace HTMLFormControlsCollection

  export
  %foreign "browser:lambda:(x,a)=>x.namedItem(a)"
  prim__namedItem :  HTMLFormControlsCollection
                  -> String
                  -> PrimIO (Nullable (Union2 RadioNodeList Element))


namespace HTMLFormElement

  export
  %foreign "browser:lambda:()=> new HTMLFormElement()"
  prim__new : PrimIO HTMLFormElement

  export
  %foreign "browser:lambda:(o,x)=>o[x]"
  prim__get : HTMLFormElement -> Bits32 -> PrimIO Element

  export
  %foreign "browser:lambda:(o,x)=>o[x]"
  prim__get1 :  HTMLFormElement
             -> String
             -> PrimIO (Union2 RadioNodeList Element)

  export
  %foreign "browser:lambda:x=>x.acceptCharset"
  prim__acceptCharset : HTMLFormElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.acceptCharset = v}"
  prim__setAcceptCharset : HTMLFormElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.action"
  prim__action : HTMLFormElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.action = v}"
  prim__setAction : HTMLFormElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.autocomplete"
  prim__autocomplete : HTMLFormElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.autocomplete = v}"
  prim__setAutocomplete : HTMLFormElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.elements"
  prim__elements : HTMLFormElement -> PrimIO HTMLFormControlsCollection

  export
  %foreign "browser:lambda:x=>x.encoding"
  prim__encoding : HTMLFormElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.encoding = v}"
  prim__setEncoding : HTMLFormElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.enctype"
  prim__enctype : HTMLFormElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.enctype = v}"
  prim__setEnctype : HTMLFormElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : HTMLFormElement -> PrimIO Bits32

  export
  %foreign "browser:lambda:x=>x.method"
  prim__method : HTMLFormElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.method = v}"
  prim__setMethod : HTMLFormElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.name"
  prim__name : HTMLFormElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : HTMLFormElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.noValidate"
  prim__noValidate : HTMLFormElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.noValidate = v}"
  prim__setNoValidate : HTMLFormElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.rel"
  prim__rel : HTMLFormElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.rel = v}"
  prim__setRel : HTMLFormElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.relList"
  prim__relList : HTMLFormElement -> PrimIO DOMTokenList

  export
  %foreign "browser:lambda:x=>x.target"
  prim__target : HTMLFormElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.target = v}"
  prim__setTarget : HTMLFormElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.checkValidity()"
  prim__checkValidity : HTMLFormElement -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.reportValidity()"
  prim__reportValidity : HTMLFormElement -> PrimIO Boolean

  export
  %foreign "browser:lambda:(x,a)=>x.requestSubmit(a)"
  prim__requestSubmit :  HTMLFormElement
                      -> UndefOr (Nullable HTMLElement)
                      -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.reset()"
  prim__reset : HTMLFormElement -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.submit()"
  prim__submit : HTMLFormElement -> PrimIO ()


namespace HTMLFrameElement

  export
  %foreign "browser:lambda:()=> new HTMLFrameElement()"
  prim__new : PrimIO HTMLFrameElement

  export
  %foreign "browser:lambda:x=>x.contentDocument"
  prim__contentDocument : HTMLFrameElement -> PrimIO (Nullable Document)

  export
  %foreign "browser:lambda:x=>x.contentWindow"
  prim__contentWindow : HTMLFrameElement -> PrimIO (Nullable WindowProxy)

  export
  %foreign "browser:lambda:x=>x.frameBorder"
  prim__frameBorder : HTMLFrameElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.frameBorder = v}"
  prim__setFrameBorder : HTMLFrameElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.longDesc"
  prim__longDesc : HTMLFrameElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.longDesc = v}"
  prim__setLongDesc : HTMLFrameElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.marginHeight"
  prim__marginHeight : HTMLFrameElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.marginHeight = v}"
  prim__setMarginHeight : HTMLFrameElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.marginWidth"
  prim__marginWidth : HTMLFrameElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.marginWidth = v}"
  prim__setMarginWidth : HTMLFrameElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.name"
  prim__name : HTMLFrameElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : HTMLFrameElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.noResize"
  prim__noResize : HTMLFrameElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.noResize = v}"
  prim__setNoResize : HTMLFrameElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.scrolling"
  prim__scrolling : HTMLFrameElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.scrolling = v}"
  prim__setScrolling : HTMLFrameElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.src"
  prim__src : HTMLFrameElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.src = v}"
  prim__setSrc : HTMLFrameElement -> String -> PrimIO ()



namespace HTMLFrameSetElement

  export
  %foreign "browser:lambda:()=> new HTMLFrameSetElement()"
  prim__new : PrimIO HTMLFrameSetElement

  export
  %foreign "browser:lambda:x=>x.cols"
  prim__cols : HTMLFrameSetElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.cols = v}"
  prim__setCols : HTMLFrameSetElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.rows"
  prim__rows : HTMLFrameSetElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.rows = v}"
  prim__setRows : HTMLFrameSetElement -> String -> PrimIO ()



namespace HTMLHRElement

  export
  %foreign "browser:lambda:()=> new HTMLHRElement()"
  prim__new : PrimIO HTMLHRElement

  export
  %foreign "browser:lambda:x=>x.align"
  prim__align : HTMLHRElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : HTMLHRElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.color"
  prim__color : HTMLHRElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.color = v}"
  prim__setColor : HTMLHRElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.noShade"
  prim__noShade : HTMLHRElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.noShade = v}"
  prim__setNoShade : HTMLHRElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.size"
  prim__size : HTMLHRElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.size = v}"
  prim__setSize : HTMLHRElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.width"
  prim__width : HTMLHRElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : HTMLHRElement -> String -> PrimIO ()



namespace HTMLHeadElement

  export
  %foreign "browser:lambda:()=> new HTMLHeadElement()"
  prim__new : PrimIO HTMLHeadElement


namespace HTMLHeadingElement

  export
  %foreign "browser:lambda:()=> new HTMLHeadingElement()"
  prim__new : PrimIO HTMLHeadingElement

  export
  %foreign "browser:lambda:x=>x.align"
  prim__align : HTMLHeadingElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : HTMLHeadingElement -> String -> PrimIO ()



namespace HTMLHtmlElement

  export
  %foreign "browser:lambda:()=> new HTMLHtmlElement()"
  prim__new : PrimIO HTMLHtmlElement

  export
  %foreign "browser:lambda:x=>x.version"
  prim__version : HTMLHtmlElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.version = v}"
  prim__setVersion : HTMLHtmlElement -> String -> PrimIO ()



namespace HTMLIFrameElement

  export
  %foreign "browser:lambda:()=> new HTMLIFrameElement()"
  prim__new : PrimIO HTMLIFrameElement

  export
  %foreign "browser:lambda:x=>x.align"
  prim__align : HTMLIFrameElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : HTMLIFrameElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.allow"
  prim__allow : HTMLIFrameElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.allow = v}"
  prim__setAllow : HTMLIFrameElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.allowFullscreen"
  prim__allowFullscreen : HTMLIFrameElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.allowFullscreen = v}"
  prim__setAllowFullscreen : HTMLIFrameElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.contentDocument"
  prim__contentDocument : HTMLIFrameElement -> PrimIO (Nullable Document)

  export
  %foreign "browser:lambda:x=>x.contentWindow"
  prim__contentWindow : HTMLIFrameElement -> PrimIO (Nullable WindowProxy)

  export
  %foreign "browser:lambda:x=>x.frameBorder"
  prim__frameBorder : HTMLIFrameElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.frameBorder = v}"
  prim__setFrameBorder : HTMLIFrameElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.height"
  prim__height : HTMLIFrameElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : HTMLIFrameElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.loading"
  prim__loading : HTMLIFrameElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.loading = v}"
  prim__setLoading : HTMLIFrameElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.longDesc"
  prim__longDesc : HTMLIFrameElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.longDesc = v}"
  prim__setLongDesc : HTMLIFrameElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.marginHeight"
  prim__marginHeight : HTMLIFrameElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.marginHeight = v}"
  prim__setMarginHeight : HTMLIFrameElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.marginWidth"
  prim__marginWidth : HTMLIFrameElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.marginWidth = v}"
  prim__setMarginWidth : HTMLIFrameElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.name"
  prim__name : HTMLIFrameElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : HTMLIFrameElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : HTMLIFrameElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy = v}"
  prim__setReferrerPolicy : HTMLIFrameElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.sandbox"
  prim__sandbox : HTMLIFrameElement -> PrimIO DOMTokenList

  export
  %foreign "browser:lambda:x=>x.scrolling"
  prim__scrolling : HTMLIFrameElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.scrolling = v}"
  prim__setScrolling : HTMLIFrameElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.src"
  prim__src : HTMLIFrameElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.src = v}"
  prim__setSrc : HTMLIFrameElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.srcdoc"
  prim__srcdoc : HTMLIFrameElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.srcdoc = v}"
  prim__setSrcdoc : HTMLIFrameElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.width"
  prim__width : HTMLIFrameElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : HTMLIFrameElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.getSVGDocument()"
  prim__getSVGDocument : HTMLIFrameElement -> PrimIO (Nullable Document)


namespace HTMLImageElement

  export
  %foreign "browser:lambda:()=> new HTMLImageElement()"
  prim__new : PrimIO HTMLImageElement

  export
  %foreign "browser:lambda:x=>x.align"
  prim__align : HTMLImageElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : HTMLImageElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.alt"
  prim__alt : HTMLImageElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.alt = v}"
  prim__setAlt : HTMLImageElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.border"
  prim__border : HTMLImageElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.border = v}"
  prim__setBorder : HTMLImageElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.complete"
  prim__complete : HTMLImageElement -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.crossOrigin"
  prim__crossOrigin : HTMLImageElement -> PrimIO (Nullable String)


  export
  %foreign "browser:lambda:(x,v)=>{x.crossOrigin = v}"
  prim__setCrossOrigin : HTMLImageElement -> Nullable String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.currentSrc"
  prim__currentSrc : HTMLImageElement -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.decoding"
  prim__decoding : HTMLImageElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.decoding = v}"
  prim__setDecoding : HTMLImageElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.height"
  prim__height : HTMLImageElement -> PrimIO Bits32


  export
  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : HTMLImageElement -> Bits32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.hspace"
  prim__hspace : HTMLImageElement -> PrimIO Bits32


  export
  %foreign "browser:lambda:(x,v)=>{x.hspace = v}"
  prim__setHspace : HTMLImageElement -> Bits32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.isMap"
  prim__isMap : HTMLImageElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.isMap = v}"
  prim__setIsMap : HTMLImageElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.loading"
  prim__loading : HTMLImageElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.loading = v}"
  prim__setLoading : HTMLImageElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.longDesc"
  prim__longDesc : HTMLImageElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.longDesc = v}"
  prim__setLongDesc : HTMLImageElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.lowsrc"
  prim__lowsrc : HTMLImageElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.lowsrc = v}"
  prim__setLowsrc : HTMLImageElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.name"
  prim__name : HTMLImageElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : HTMLImageElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.naturalHeight"
  prim__naturalHeight : HTMLImageElement -> PrimIO Bits32

  export
  %foreign "browser:lambda:x=>x.naturalWidth"
  prim__naturalWidth : HTMLImageElement -> PrimIO Bits32

  export
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : HTMLImageElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy = v}"
  prim__setReferrerPolicy : HTMLImageElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.sizes"
  prim__sizes : HTMLImageElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.sizes = v}"
  prim__setSizes : HTMLImageElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.src"
  prim__src : HTMLImageElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.src = v}"
  prim__setSrc : HTMLImageElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.srcset"
  prim__srcset : HTMLImageElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.srcset = v}"
  prim__setSrcset : HTMLImageElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.useMap"
  prim__useMap : HTMLImageElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.useMap = v}"
  prim__setUseMap : HTMLImageElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.vspace"
  prim__vspace : HTMLImageElement -> PrimIO Bits32


  export
  %foreign "browser:lambda:(x,v)=>{x.vspace = v}"
  prim__setVspace : HTMLImageElement -> Bits32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.width"
  prim__width : HTMLImageElement -> PrimIO Bits32


  export
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : HTMLImageElement -> Bits32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.decode()"
  prim__decode : HTMLImageElement -> PrimIO (Promise Undefined)


namespace HTMLInputElement

  export
  %foreign "browser:lambda:()=> new HTMLInputElement()"
  prim__new : PrimIO HTMLInputElement

  export
  %foreign "browser:lambda:x=>x.accept"
  prim__accept : HTMLInputElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.accept = v}"
  prim__setAccept : HTMLInputElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.align"
  prim__align : HTMLInputElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : HTMLInputElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.alt"
  prim__alt : HTMLInputElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.alt = v}"
  prim__setAlt : HTMLInputElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.autocomplete"
  prim__autocomplete : HTMLInputElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.autocomplete = v}"
  prim__setAutocomplete : HTMLInputElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.checked"
  prim__checked : HTMLInputElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.checked = v}"
  prim__setChecked : HTMLInputElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.defaultChecked"
  prim__defaultChecked : HTMLInputElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.defaultChecked = v}"
  prim__setDefaultChecked : HTMLInputElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.defaultValue"
  prim__defaultValue : HTMLInputElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.defaultValue = v}"
  prim__setDefaultValue : HTMLInputElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.dirName"
  prim__dirName : HTMLInputElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.dirName = v}"
  prim__setDirName : HTMLInputElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : HTMLInputElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.disabled = v}"
  prim__setDisabled : HTMLInputElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.files"
  prim__files : HTMLInputElement -> PrimIO (Nullable FileList)


  export
  %foreign "browser:lambda:(x,v)=>{x.files = v}"
  prim__setFiles : HTMLInputElement -> Nullable FileList -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.form"
  prim__form : HTMLInputElement -> PrimIO (Nullable HTMLFormElement)

  export
  %foreign "browser:lambda:x=>x.formAction"
  prim__formAction : HTMLInputElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.formAction = v}"
  prim__setFormAction : HTMLInputElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.formEnctype"
  prim__formEnctype : HTMLInputElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.formEnctype = v}"
  prim__setFormEnctype : HTMLInputElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.formMethod"
  prim__formMethod : HTMLInputElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.formMethod = v}"
  prim__setFormMethod : HTMLInputElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.formNoValidate"
  prim__formNoValidate : HTMLInputElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.formNoValidate = v}"
  prim__setFormNoValidate : HTMLInputElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.formTarget"
  prim__formTarget : HTMLInputElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.formTarget = v}"
  prim__setFormTarget : HTMLInputElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.height"
  prim__height : HTMLInputElement -> PrimIO Bits32


  export
  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : HTMLInputElement -> Bits32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.indeterminate"
  prim__indeterminate : HTMLInputElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.indeterminate = v}"
  prim__setIndeterminate : HTMLInputElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.labels"
  prim__labels : HTMLInputElement -> PrimIO (Nullable NodeList)

  export
  %foreign "browser:lambda:x=>x.list"
  prim__list : HTMLInputElement -> PrimIO (Nullable HTMLElement)

  export
  %foreign "browser:lambda:x=>x.max"
  prim__max : HTMLInputElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.max = v}"
  prim__setMax : HTMLInputElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.maxLength"
  prim__maxLength : HTMLInputElement -> PrimIO Int32


  export
  %foreign "browser:lambda:(x,v)=>{x.maxLength = v}"
  prim__setMaxLength : HTMLInputElement -> Int32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.min"
  prim__min : HTMLInputElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.min = v}"
  prim__setMin : HTMLInputElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.minLength"
  prim__minLength : HTMLInputElement -> PrimIO Int32


  export
  %foreign "browser:lambda:(x,v)=>{x.minLength = v}"
  prim__setMinLength : HTMLInputElement -> Int32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.multiple"
  prim__multiple : HTMLInputElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.multiple = v}"
  prim__setMultiple : HTMLInputElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.name"
  prim__name : HTMLInputElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : HTMLInputElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.pattern"
  prim__pattern : HTMLInputElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.pattern = v}"
  prim__setPattern : HTMLInputElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.placeholder"
  prim__placeholder : HTMLInputElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.placeholder = v}"
  prim__setPlaceholder : HTMLInputElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.readOnly"
  prim__readOnly : HTMLInputElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.readOnly = v}"
  prim__setReadOnly : HTMLInputElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.required"
  prim__required : HTMLInputElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.required = v}"
  prim__setRequired : HTMLInputElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.selectionDirection"
  prim__selectionDirection : HTMLInputElement -> PrimIO (Nullable String)


  export
  %foreign "browser:lambda:(x,v)=>{x.selectionDirection = v}"
  prim__setSelectionDirection : HTMLInputElement -> Nullable String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.selectionEnd"
  prim__selectionEnd : HTMLInputElement -> PrimIO (Nullable Bits32)


  export
  %foreign "browser:lambda:(x,v)=>{x.selectionEnd = v}"
  prim__setSelectionEnd : HTMLInputElement -> Nullable Bits32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.selectionStart"
  prim__selectionStart : HTMLInputElement -> PrimIO (Nullable Bits32)


  export
  %foreign "browser:lambda:(x,v)=>{x.selectionStart = v}"
  prim__setSelectionStart : HTMLInputElement -> Nullable Bits32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.size"
  prim__size : HTMLInputElement -> PrimIO Bits32


  export
  %foreign "browser:lambda:(x,v)=>{x.size = v}"
  prim__setSize : HTMLInputElement -> Bits32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.src"
  prim__src : HTMLInputElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.src = v}"
  prim__setSrc : HTMLInputElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.step"
  prim__step : HTMLInputElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.step = v}"
  prim__setStep : HTMLInputElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : HTMLInputElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : HTMLInputElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.useMap"
  prim__useMap : HTMLInputElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.useMap = v}"
  prim__setUseMap : HTMLInputElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : HTMLInputElement -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : HTMLInputElement -> PrimIO ValidityState

  export
  %foreign "browser:lambda:x=>x.value"
  prim__value : HTMLInputElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : HTMLInputElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.valueAsDate"
  prim__valueAsDate : HTMLInputElement -> PrimIO (Nullable Object)


  export
  %foreign "browser:lambda:(x,v)=>{x.valueAsDate = v}"
  prim__setValueAsDate : HTMLInputElement -> Nullable Object -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.valueAsNumber"
  prim__valueAsNumber : HTMLInputElement -> PrimIO Double


  export
  %foreign "browser:lambda:(x,v)=>{x.valueAsNumber = v}"
  prim__setValueAsNumber : HTMLInputElement -> Double -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.width"
  prim__width : HTMLInputElement -> PrimIO Bits32


  export
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : HTMLInputElement -> Bits32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : HTMLInputElement -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.checkValidity()"
  prim__checkValidity : HTMLInputElement -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.reportValidity()"
  prim__reportValidity : HTMLInputElement -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.select()"
  prim__select : HTMLInputElement -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.setCustomValidity(a)"
  prim__setCustomValidity : HTMLInputElement -> String -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.setRangeText(a)"
  prim__setRangeText : HTMLInputElement -> String -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.setRangeText(a,b,c,d)"
  prim__setRangeText1 :  HTMLInputElement
                      -> String
                      -> Bits32
                      -> Bits32
                      -> UndefOr String
                      -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b,c)=>x.setSelectionRange(a,b,c)"
  prim__setSelectionRange :  HTMLInputElement
                          -> Bits32
                          -> Bits32
                          -> UndefOr String
                          -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.stepDown(a)"
  prim__stepDown : HTMLInputElement -> UndefOr Int32 -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.stepUp(a)"
  prim__stepUp : HTMLInputElement -> UndefOr Int32 -> PrimIO ()


namespace HTMLLIElement

  export
  %foreign "browser:lambda:()=> new HTMLLIElement()"
  prim__new : PrimIO HTMLLIElement

  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : HTMLLIElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : HTMLLIElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.value"
  prim__value : HTMLLIElement -> PrimIO Int32


  export
  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : HTMLLIElement -> Int32 -> PrimIO ()



namespace HTMLLabelElement

  export
  %foreign "browser:lambda:()=> new HTMLLabelElement()"
  prim__new : PrimIO HTMLLabelElement

  export
  %foreign "browser:lambda:x=>x.control"
  prim__control : HTMLLabelElement -> PrimIO (Nullable HTMLElement)

  export
  %foreign "browser:lambda:x=>x.form"
  prim__form : HTMLLabelElement -> PrimIO (Nullable HTMLFormElement)

  export
  %foreign "browser:lambda:x=>x.htmlFor"
  prim__htmlFor : HTMLLabelElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.htmlFor = v}"
  prim__setHtmlFor : HTMLLabelElement -> String -> PrimIO ()



namespace HTMLLegendElement

  export
  %foreign "browser:lambda:()=> new HTMLLegendElement()"
  prim__new : PrimIO HTMLLegendElement

  export
  %foreign "browser:lambda:x=>x.align"
  prim__align : HTMLLegendElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : HTMLLegendElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.form"
  prim__form : HTMLLegendElement -> PrimIO (Nullable HTMLFormElement)


namespace HTMLLinkElement

  export
  %foreign "browser:lambda:()=> new HTMLLinkElement()"
  prim__new : PrimIO HTMLLinkElement

  export
  %foreign "browser:lambda:x=>x.as"
  prim__as : HTMLLinkElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.as = v}"
  prim__setAs : HTMLLinkElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.charset"
  prim__charset : HTMLLinkElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.charset = v}"
  prim__setCharset : HTMLLinkElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.crossOrigin"
  prim__crossOrigin : HTMLLinkElement -> PrimIO (Nullable String)


  export
  %foreign "browser:lambda:(x,v)=>{x.crossOrigin = v}"
  prim__setCrossOrigin : HTMLLinkElement -> Nullable String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : HTMLLinkElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.disabled = v}"
  prim__setDisabled : HTMLLinkElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.href"
  prim__href : HTMLLinkElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.href = v}"
  prim__setHref : HTMLLinkElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.hreflang"
  prim__hreflang : HTMLLinkElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.hreflang = v}"
  prim__setHreflang : HTMLLinkElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.imageSizes"
  prim__imageSizes : HTMLLinkElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.imageSizes = v}"
  prim__setImageSizes : HTMLLinkElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.imageSrcset"
  prim__imageSrcset : HTMLLinkElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.imageSrcset = v}"
  prim__setImageSrcset : HTMLLinkElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.integrity"
  prim__integrity : HTMLLinkElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.integrity = v}"
  prim__setIntegrity : HTMLLinkElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.media"
  prim__media : HTMLLinkElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.media = v}"
  prim__setMedia : HTMLLinkElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : HTMLLinkElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy = v}"
  prim__setReferrerPolicy : HTMLLinkElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.rel"
  prim__rel : HTMLLinkElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.rel = v}"
  prim__setRel : HTMLLinkElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.relList"
  prim__relList : HTMLLinkElement -> PrimIO DOMTokenList

  export
  %foreign "browser:lambda:x=>x.rev"
  prim__rev : HTMLLinkElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.rev = v}"
  prim__setRev : HTMLLinkElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.sizes"
  prim__sizes : HTMLLinkElement -> PrimIO DOMTokenList

  export
  %foreign "browser:lambda:x=>x.target"
  prim__target : HTMLLinkElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.target = v}"
  prim__setTarget : HTMLLinkElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : HTMLLinkElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : HTMLLinkElement -> String -> PrimIO ()



namespace HTMLMapElement

  export
  %foreign "browser:lambda:()=> new HTMLMapElement()"
  prim__new : PrimIO HTMLMapElement

  export
  %foreign "browser:lambda:x=>x.areas"
  prim__areas : HTMLMapElement -> PrimIO HTMLCollection

  export
  %foreign "browser:lambda:x=>x.name"
  prim__name : HTMLMapElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : HTMLMapElement -> String -> PrimIO ()



namespace HTMLMarqueeElement

  export
  %foreign "browser:lambda:()=> new HTMLMarqueeElement()"
  prim__new : PrimIO HTMLMarqueeElement

  export
  %foreign "browser:lambda:x=>x.behavior"
  prim__behavior : HTMLMarqueeElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.behavior = v}"
  prim__setBehavior : HTMLMarqueeElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.bgColor"
  prim__bgColor : HTMLMarqueeElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.bgColor = v}"
  prim__setBgColor : HTMLMarqueeElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.direction"
  prim__direction : HTMLMarqueeElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.direction = v}"
  prim__setDirection : HTMLMarqueeElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.height"
  prim__height : HTMLMarqueeElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : HTMLMarqueeElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.hspace"
  prim__hspace : HTMLMarqueeElement -> PrimIO Bits32


  export
  %foreign "browser:lambda:(x,v)=>{x.hspace = v}"
  prim__setHspace : HTMLMarqueeElement -> Bits32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.loop"
  prim__loop : HTMLMarqueeElement -> PrimIO Int32


  export
  %foreign "browser:lambda:(x,v)=>{x.loop = v}"
  prim__setLoop : HTMLMarqueeElement -> Int32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.scrollAmount"
  prim__scrollAmount : HTMLMarqueeElement -> PrimIO Bits32


  export
  %foreign "browser:lambda:(x,v)=>{x.scrollAmount = v}"
  prim__setScrollAmount : HTMLMarqueeElement -> Bits32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.scrollDelay"
  prim__scrollDelay : HTMLMarqueeElement -> PrimIO Bits32


  export
  %foreign "browser:lambda:(x,v)=>{x.scrollDelay = v}"
  prim__setScrollDelay : HTMLMarqueeElement -> Bits32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.trueSpeed"
  prim__trueSpeed : HTMLMarqueeElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.trueSpeed = v}"
  prim__setTrueSpeed : HTMLMarqueeElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.vspace"
  prim__vspace : HTMLMarqueeElement -> PrimIO Bits32


  export
  %foreign "browser:lambda:(x,v)=>{x.vspace = v}"
  prim__setVspace : HTMLMarqueeElement -> Bits32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.width"
  prim__width : HTMLMarqueeElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : HTMLMarqueeElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.start()"
  prim__start : HTMLMarqueeElement -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.stop()"
  prim__stop : HTMLMarqueeElement -> PrimIO ()


namespace HTMLMediaElement

  export
  %foreign "browser:lambda:x=>x.audioTracks"
  prim__audioTracks : HTMLMediaElement -> PrimIO AudioTrackList

  export
  %foreign "browser:lambda:x=>x.autoplay"
  prim__autoplay : HTMLMediaElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.autoplay = v}"
  prim__setAutoplay : HTMLMediaElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.buffered"
  prim__buffered : HTMLMediaElement -> PrimIO TimeRanges

  export
  %foreign "browser:lambda:x=>x.controls"
  prim__controls : HTMLMediaElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.controls = v}"
  prim__setControls : HTMLMediaElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.crossOrigin"
  prim__crossOrigin : HTMLMediaElement -> PrimIO (Nullable String)


  export
  %foreign "browser:lambda:(x,v)=>{x.crossOrigin = v}"
  prim__setCrossOrigin : HTMLMediaElement -> Nullable String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.currentSrc"
  prim__currentSrc : HTMLMediaElement -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.currentTime"
  prim__currentTime : HTMLMediaElement -> PrimIO Double


  export
  %foreign "browser:lambda:(x,v)=>{x.currentTime = v}"
  prim__setCurrentTime : HTMLMediaElement -> Double -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.defaultMuted"
  prim__defaultMuted : HTMLMediaElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.defaultMuted = v}"
  prim__setDefaultMuted : HTMLMediaElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.defaultPlaybackRate"
  prim__defaultPlaybackRate : HTMLMediaElement -> PrimIO Double


  export
  %foreign "browser:lambda:(x,v)=>{x.defaultPlaybackRate = v}"
  prim__setDefaultPlaybackRate : HTMLMediaElement -> Double -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.duration"
  prim__duration : HTMLMediaElement -> PrimIO Double

  export
  %foreign "browser:lambda:x=>x.ended"
  prim__ended : HTMLMediaElement -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.error"
  prim__error : HTMLMediaElement -> PrimIO (Nullable MediaError)

  export
  %foreign "browser:lambda:x=>x.loop"
  prim__loop : HTMLMediaElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.loop = v}"
  prim__setLoop : HTMLMediaElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.muted"
  prim__muted : HTMLMediaElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.muted = v}"
  prim__setMuted : HTMLMediaElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.networkState"
  prim__networkState : HTMLMediaElement -> PrimIO Bits16

  export
  %foreign "browser:lambda:x=>x.paused"
  prim__paused : HTMLMediaElement -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.playbackRate"
  prim__playbackRate : HTMLMediaElement -> PrimIO Double


  export
  %foreign "browser:lambda:(x,v)=>{x.playbackRate = v}"
  prim__setPlaybackRate : HTMLMediaElement -> Double -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.played"
  prim__played : HTMLMediaElement -> PrimIO TimeRanges

  export
  %foreign "browser:lambda:x=>x.preload"
  prim__preload : HTMLMediaElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.preload = v}"
  prim__setPreload : HTMLMediaElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.preservesPitch"
  prim__preservesPitch : HTMLMediaElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.preservesPitch = v}"
  prim__setPreservesPitch : HTMLMediaElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : HTMLMediaElement -> PrimIO Bits16

  export
  %foreign "browser:lambda:x=>x.seekable"
  prim__seekable : HTMLMediaElement -> PrimIO TimeRanges

  export
  %foreign "browser:lambda:x=>x.seeking"
  prim__seeking : HTMLMediaElement -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.src"
  prim__src : HTMLMediaElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.src = v}"
  prim__setSrc : HTMLMediaElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.srcObject"
  prim__srcObject :  HTMLMediaElement
                  -> PrimIO (Nullable (Union3 MediaStream MediaSource Blob))


  export
  %foreign "browser:lambda:(x,v)=>{x.srcObject = v}"
  prim__setSrcObject :  HTMLMediaElement
                     -> Nullable (Union3 MediaStream MediaSource Blob)
                     -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.textTracks"
  prim__textTracks : HTMLMediaElement -> PrimIO TextTrackList

  export
  %foreign "browser:lambda:x=>x.videoTracks"
  prim__videoTracks : HTMLMediaElement -> PrimIO VideoTrackList

  export
  %foreign "browser:lambda:x=>x.volume"
  prim__volume : HTMLMediaElement -> PrimIO Double


  export
  %foreign "browser:lambda:(x,v)=>{x.volume = v}"
  prim__setVolume : HTMLMediaElement -> Double -> PrimIO ()


  export
  %foreign "browser:lambda:(x,a,b,c)=>x.addTextTrack(a,b,c)"
  prim__addTextTrack :  HTMLMediaElement
                     -> String
                     -> UndefOr String
                     -> UndefOr String
                     -> PrimIO TextTrack

  export
  %foreign "browser:lambda:(x,a)=>x.canPlayType(a)"
  prim__canPlayType : HTMLMediaElement -> String -> PrimIO String

  export
  %foreign "browser:lambda:(x,a)=>x.fastSeek(a)"
  prim__fastSeek : HTMLMediaElement -> Double -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.getStartDate()"
  prim__getStartDate : HTMLMediaElement -> PrimIO Object

  export
  %foreign "browser:lambda:x=>x.load()"
  prim__load : HTMLMediaElement -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.pause()"
  prim__pause : HTMLMediaElement -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.play()"
  prim__play : HTMLMediaElement -> PrimIO (Promise Undefined)


namespace HTMLMenuElement

  export
  %foreign "browser:lambda:()=> new HTMLMenuElement()"
  prim__new : PrimIO HTMLMenuElement

  export
  %foreign "browser:lambda:x=>x.compact"
  prim__compact : HTMLMenuElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.compact = v}"
  prim__setCompact : HTMLMenuElement -> Boolean -> PrimIO ()



namespace HTMLMetaElement

  export
  %foreign "browser:lambda:()=> new HTMLMetaElement()"
  prim__new : PrimIO HTMLMetaElement

  export
  %foreign "browser:lambda:x=>x.content"
  prim__content : HTMLMetaElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.content = v}"
  prim__setContent : HTMLMetaElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.httpEquiv"
  prim__httpEquiv : HTMLMetaElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.httpEquiv = v}"
  prim__setHttpEquiv : HTMLMetaElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.name"
  prim__name : HTMLMetaElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : HTMLMetaElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.scheme"
  prim__scheme : HTMLMetaElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.scheme = v}"
  prim__setScheme : HTMLMetaElement -> String -> PrimIO ()



namespace HTMLMeterElement

  export
  %foreign "browser:lambda:()=> new HTMLMeterElement()"
  prim__new : PrimIO HTMLMeterElement

  export
  %foreign "browser:lambda:x=>x.high"
  prim__high : HTMLMeterElement -> PrimIO Double


  export
  %foreign "browser:lambda:(x,v)=>{x.high = v}"
  prim__setHigh : HTMLMeterElement -> Double -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.labels"
  prim__labels : HTMLMeterElement -> PrimIO NodeList

  export
  %foreign "browser:lambda:x=>x.low"
  prim__low : HTMLMeterElement -> PrimIO Double


  export
  %foreign "browser:lambda:(x,v)=>{x.low = v}"
  prim__setLow : HTMLMeterElement -> Double -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.max"
  prim__max : HTMLMeterElement -> PrimIO Double


  export
  %foreign "browser:lambda:(x,v)=>{x.max = v}"
  prim__setMax : HTMLMeterElement -> Double -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.min"
  prim__min : HTMLMeterElement -> PrimIO Double


  export
  %foreign "browser:lambda:(x,v)=>{x.min = v}"
  prim__setMin : HTMLMeterElement -> Double -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.optimum"
  prim__optimum : HTMLMeterElement -> PrimIO Double


  export
  %foreign "browser:lambda:(x,v)=>{x.optimum = v}"
  prim__setOptimum : HTMLMeterElement -> Double -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.value"
  prim__value : HTMLMeterElement -> PrimIO Double


  export
  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : HTMLMeterElement -> Double -> PrimIO ()



namespace HTMLModElement

  export
  %foreign "browser:lambda:()=> new HTMLModElement()"
  prim__new : PrimIO HTMLModElement

  export
  %foreign "browser:lambda:x=>x.cite"
  prim__cite : HTMLModElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.cite = v}"
  prim__setCite : HTMLModElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.dateTime"
  prim__dateTime : HTMLModElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.dateTime = v}"
  prim__setDateTime : HTMLModElement -> String -> PrimIO ()



namespace HTMLOListElement

  export
  %foreign "browser:lambda:()=> new HTMLOListElement()"
  prim__new : PrimIO HTMLOListElement

  export
  %foreign "browser:lambda:x=>x.compact"
  prim__compact : HTMLOListElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.compact = v}"
  prim__setCompact : HTMLOListElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.reversed"
  prim__reversed : HTMLOListElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.reversed = v}"
  prim__setReversed : HTMLOListElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.start"
  prim__start : HTMLOListElement -> PrimIO Int32


  export
  %foreign "browser:lambda:(x,v)=>{x.start = v}"
  prim__setStart : HTMLOListElement -> Int32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : HTMLOListElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : HTMLOListElement -> String -> PrimIO ()



namespace HTMLObjectElement

  export
  %foreign "browser:lambda:()=> new HTMLObjectElement()"
  prim__new : PrimIO HTMLObjectElement

  export
  %foreign "browser:lambda:x=>x.align"
  prim__align : HTMLObjectElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : HTMLObjectElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.archive"
  prim__archive : HTMLObjectElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.archive = v}"
  prim__setArchive : HTMLObjectElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.border"
  prim__border : HTMLObjectElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.border = v}"
  prim__setBorder : HTMLObjectElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.code"
  prim__code : HTMLObjectElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.code = v}"
  prim__setCode : HTMLObjectElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.codeBase"
  prim__codeBase : HTMLObjectElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.codeBase = v}"
  prim__setCodeBase : HTMLObjectElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.codeType"
  prim__codeType : HTMLObjectElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.codeType = v}"
  prim__setCodeType : HTMLObjectElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.contentDocument"
  prim__contentDocument : HTMLObjectElement -> PrimIO (Nullable Document)

  export
  %foreign "browser:lambda:x=>x.contentWindow"
  prim__contentWindow : HTMLObjectElement -> PrimIO (Nullable WindowProxy)

  export
  %foreign "browser:lambda:x=>x.data"
  prim__data : HTMLObjectElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.data = v}"
  prim__setData : HTMLObjectElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.declare"
  prim__declare : HTMLObjectElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.declare = v}"
  prim__setDeclare : HTMLObjectElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.form"
  prim__form : HTMLObjectElement -> PrimIO (Nullable HTMLFormElement)

  export
  %foreign "browser:lambda:x=>x.height"
  prim__height : HTMLObjectElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : HTMLObjectElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.hspace"
  prim__hspace : HTMLObjectElement -> PrimIO Bits32


  export
  %foreign "browser:lambda:(x,v)=>{x.hspace = v}"
  prim__setHspace : HTMLObjectElement -> Bits32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.name"
  prim__name : HTMLObjectElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : HTMLObjectElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.standby"
  prim__standby : HTMLObjectElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.standby = v}"
  prim__setStandby : HTMLObjectElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : HTMLObjectElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : HTMLObjectElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.useMap"
  prim__useMap : HTMLObjectElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.useMap = v}"
  prim__setUseMap : HTMLObjectElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : HTMLObjectElement -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : HTMLObjectElement -> PrimIO ValidityState

  export
  %foreign "browser:lambda:x=>x.vspace"
  prim__vspace : HTMLObjectElement -> PrimIO Bits32


  export
  %foreign "browser:lambda:(x,v)=>{x.vspace = v}"
  prim__setVspace : HTMLObjectElement -> Bits32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.width"
  prim__width : HTMLObjectElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : HTMLObjectElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : HTMLObjectElement -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.checkValidity()"
  prim__checkValidity : HTMLObjectElement -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.getSVGDocument()"
  prim__getSVGDocument : HTMLObjectElement -> PrimIO (Nullable Document)

  export
  %foreign "browser:lambda:x=>x.reportValidity()"
  prim__reportValidity : HTMLObjectElement -> PrimIO Boolean

  export
  %foreign "browser:lambda:(x,a)=>x.setCustomValidity(a)"
  prim__setCustomValidity : HTMLObjectElement -> String -> PrimIO ()


namespace HTMLOptGroupElement

  export
  %foreign "browser:lambda:()=> new HTMLOptGroupElement()"
  prim__new : PrimIO HTMLOptGroupElement

  export
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : HTMLOptGroupElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.disabled = v}"
  prim__setDisabled : HTMLOptGroupElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.label"
  prim__label : HTMLOptGroupElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.label = v}"
  prim__setLabel : HTMLOptGroupElement -> String -> PrimIO ()



namespace HTMLOptionElement

  export
  %foreign "browser:lambda:()=> new HTMLOptionElement()"
  prim__new : PrimIO HTMLOptionElement

  export
  %foreign "browser:lambda:x=>x.defaultSelected"
  prim__defaultSelected : HTMLOptionElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.defaultSelected = v}"
  prim__setDefaultSelected : HTMLOptionElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : HTMLOptionElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.disabled = v}"
  prim__setDisabled : HTMLOptionElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.form"
  prim__form : HTMLOptionElement -> PrimIO (Nullable HTMLFormElement)

  export
  %foreign "browser:lambda:x=>x.index"
  prim__index : HTMLOptionElement -> PrimIO Int32

  export
  %foreign "browser:lambda:x=>x.label"
  prim__label : HTMLOptionElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.label = v}"
  prim__setLabel : HTMLOptionElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.selected"
  prim__selected : HTMLOptionElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.selected = v}"
  prim__setSelected : HTMLOptionElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.text"
  prim__text : HTMLOptionElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.text = v}"
  prim__setText : HTMLOptionElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.value"
  prim__value : HTMLOptionElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : HTMLOptionElement -> String -> PrimIO ()



namespace HTMLOptionsCollection

  export
  %foreign "browser:lambda:(o,x,v)=>o[x] = v"
  prim__set :  HTMLOptionsCollection
            -> Bits32
            -> Nullable HTMLOptionElement
            -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : HTMLOptionsCollection -> PrimIO Bits32


  export
  %foreign "browser:lambda:(x,v)=>{x.length = v}"
  prim__setLength : HTMLOptionsCollection -> Bits32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.selectedIndex"
  prim__selectedIndex : HTMLOptionsCollection -> PrimIO Int32


  export
  %foreign "browser:lambda:(x,v)=>{x.selectedIndex = v}"
  prim__setSelectedIndex : HTMLOptionsCollection -> Int32 -> PrimIO ()


  export
  %foreign "browser:lambda:(x,a,b)=>x.add(a,b)"
  prim__add :  HTMLOptionsCollection
            -> Union2 HTMLOptionElement HTMLOptGroupElement
            -> UndefOr (Nullable (Union2 HTMLElement Int32))
            -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.remove(a)"
  prim__remove : HTMLOptionsCollection -> Int32 -> PrimIO ()


namespace HTMLOutputElement

  export
  %foreign "browser:lambda:()=> new HTMLOutputElement()"
  prim__new : PrimIO HTMLOutputElement

  export
  %foreign "browser:lambda:x=>x.defaultValue"
  prim__defaultValue : HTMLOutputElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.defaultValue = v}"
  prim__setDefaultValue : HTMLOutputElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.form"
  prim__form : HTMLOutputElement -> PrimIO (Nullable HTMLFormElement)

  export
  %foreign "browser:lambda:x=>x.htmlFor"
  prim__htmlFor : HTMLOutputElement -> PrimIO DOMTokenList

  export
  %foreign "browser:lambda:x=>x.labels"
  prim__labels : HTMLOutputElement -> PrimIO NodeList

  export
  %foreign "browser:lambda:x=>x.name"
  prim__name : HTMLOutputElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : HTMLOutputElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : HTMLOutputElement -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : HTMLOutputElement -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : HTMLOutputElement -> PrimIO ValidityState

  export
  %foreign "browser:lambda:x=>x.value"
  prim__value : HTMLOutputElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : HTMLOutputElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : HTMLOutputElement -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.checkValidity()"
  prim__checkValidity : HTMLOutputElement -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.reportValidity()"
  prim__reportValidity : HTMLOutputElement -> PrimIO Boolean

  export
  %foreign "browser:lambda:(x,a)=>x.setCustomValidity(a)"
  prim__setCustomValidity : HTMLOutputElement -> String -> PrimIO ()


namespace HTMLParagraphElement

  export
  %foreign "browser:lambda:()=> new HTMLParagraphElement()"
  prim__new : PrimIO HTMLParagraphElement

  export
  %foreign "browser:lambda:x=>x.align"
  prim__align : HTMLParagraphElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : HTMLParagraphElement -> String -> PrimIO ()



namespace HTMLParamElement

  export
  %foreign "browser:lambda:()=> new HTMLParamElement()"
  prim__new : PrimIO HTMLParamElement

  export
  %foreign "browser:lambda:x=>x.name"
  prim__name : HTMLParamElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : HTMLParamElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : HTMLParamElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : HTMLParamElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.value"
  prim__value : HTMLParamElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : HTMLParamElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.valueType"
  prim__valueType : HTMLParamElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.valueType = v}"
  prim__setValueType : HTMLParamElement -> String -> PrimIO ()



namespace HTMLPictureElement

  export
  %foreign "browser:lambda:()=> new HTMLPictureElement()"
  prim__new : PrimIO HTMLPictureElement


namespace HTMLPreElement

  export
  %foreign "browser:lambda:()=> new HTMLPreElement()"
  prim__new : PrimIO HTMLPreElement

  export
  %foreign "browser:lambda:x=>x.width"
  prim__width : HTMLPreElement -> PrimIO Int32


  export
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : HTMLPreElement -> Int32 -> PrimIO ()



namespace HTMLProgressElement

  export
  %foreign "browser:lambda:()=> new HTMLProgressElement()"
  prim__new : PrimIO HTMLProgressElement

  export
  %foreign "browser:lambda:x=>x.labels"
  prim__labels : HTMLProgressElement -> PrimIO NodeList

  export
  %foreign "browser:lambda:x=>x.max"
  prim__max : HTMLProgressElement -> PrimIO Double


  export
  %foreign "browser:lambda:(x,v)=>{x.max = v}"
  prim__setMax : HTMLProgressElement -> Double -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.position"
  prim__position : HTMLProgressElement -> PrimIO Double

  export
  %foreign "browser:lambda:x=>x.value"
  prim__value : HTMLProgressElement -> PrimIO Double


  export
  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : HTMLProgressElement -> Double -> PrimIO ()



namespace HTMLQuoteElement

  export
  %foreign "browser:lambda:()=> new HTMLQuoteElement()"
  prim__new : PrimIO HTMLQuoteElement

  export
  %foreign "browser:lambda:x=>x.cite"
  prim__cite : HTMLQuoteElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.cite = v}"
  prim__setCite : HTMLQuoteElement -> String -> PrimIO ()



namespace HTMLScriptElement

  export
  %foreign "browser:lambda:()=> new HTMLScriptElement()"
  prim__new : PrimIO HTMLScriptElement

  export
  %foreign "browser:lambda:x=>x.async"
  prim__async : HTMLScriptElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.async = v}"
  prim__setAsync : HTMLScriptElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.charset"
  prim__charset : HTMLScriptElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.charset = v}"
  prim__setCharset : HTMLScriptElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.crossOrigin"
  prim__crossOrigin : HTMLScriptElement -> PrimIO (Nullable String)


  export
  %foreign "browser:lambda:(x,v)=>{x.crossOrigin = v}"
  prim__setCrossOrigin : HTMLScriptElement -> Nullable String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.defer"
  prim__defer : HTMLScriptElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.defer = v}"
  prim__setDefer : HTMLScriptElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.event"
  prim__event : HTMLScriptElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.event = v}"
  prim__setEvent : HTMLScriptElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.htmlFor"
  prim__htmlFor : HTMLScriptElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.htmlFor = v}"
  prim__setHtmlFor : HTMLScriptElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.integrity"
  prim__integrity : HTMLScriptElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.integrity = v}"
  prim__setIntegrity : HTMLScriptElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.noModule"
  prim__noModule : HTMLScriptElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.noModule = v}"
  prim__setNoModule : HTMLScriptElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : HTMLScriptElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy = v}"
  prim__setReferrerPolicy : HTMLScriptElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.src"
  prim__src : HTMLScriptElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.src = v}"
  prim__setSrc : HTMLScriptElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.text"
  prim__text : HTMLScriptElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.text = v}"
  prim__setText : HTMLScriptElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : HTMLScriptElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : HTMLScriptElement -> String -> PrimIO ()



namespace HTMLSelectElement

  export
  %foreign "browser:lambda:()=> new HTMLSelectElement()"
  prim__new : PrimIO HTMLSelectElement

  export
  %foreign "browser:lambda:(o,x,v)=>o[x] = v"
  prim__set :  HTMLSelectElement
            -> Bits32
            -> Nullable HTMLOptionElement
            -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.autocomplete"
  prim__autocomplete : HTMLSelectElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.autocomplete = v}"
  prim__setAutocomplete : HTMLSelectElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : HTMLSelectElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.disabled = v}"
  prim__setDisabled : HTMLSelectElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.form"
  prim__form : HTMLSelectElement -> PrimIO (Nullable HTMLFormElement)

  export
  %foreign "browser:lambda:x=>x.labels"
  prim__labels : HTMLSelectElement -> PrimIO NodeList

  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : HTMLSelectElement -> PrimIO Bits32


  export
  %foreign "browser:lambda:(x,v)=>{x.length = v}"
  prim__setLength : HTMLSelectElement -> Bits32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.multiple"
  prim__multiple : HTMLSelectElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.multiple = v}"
  prim__setMultiple : HTMLSelectElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.name"
  prim__name : HTMLSelectElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : HTMLSelectElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.options"
  prim__options : HTMLSelectElement -> PrimIO HTMLOptionsCollection

  export
  %foreign "browser:lambda:x=>x.required"
  prim__required : HTMLSelectElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.required = v}"
  prim__setRequired : HTMLSelectElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.selectedIndex"
  prim__selectedIndex : HTMLSelectElement -> PrimIO Int32


  export
  %foreign "browser:lambda:(x,v)=>{x.selectedIndex = v}"
  prim__setSelectedIndex : HTMLSelectElement -> Int32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.selectedOptions"
  prim__selectedOptions : HTMLSelectElement -> PrimIO HTMLCollection

  export
  %foreign "browser:lambda:x=>x.size"
  prim__size : HTMLSelectElement -> PrimIO Bits32


  export
  %foreign "browser:lambda:(x,v)=>{x.size = v}"
  prim__setSize : HTMLSelectElement -> Bits32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : HTMLSelectElement -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : HTMLSelectElement -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : HTMLSelectElement -> PrimIO ValidityState

  export
  %foreign "browser:lambda:x=>x.value"
  prim__value : HTMLSelectElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : HTMLSelectElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : HTMLSelectElement -> PrimIO Boolean

  export
  %foreign "browser:lambda:(x,a,b)=>x.add(a,b)"
  prim__add :  HTMLSelectElement
            -> Union2 HTMLOptionElement HTMLOptGroupElement
            -> UndefOr (Nullable (Union2 HTMLElement Int32))
            -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.checkValidity()"
  prim__checkValidity : HTMLSelectElement -> PrimIO Boolean

  export
  %foreign "browser:lambda:(x,a)=>x.item(a)"
  prim__item : HTMLSelectElement -> Bits32 -> PrimIO (Nullable Element)

  export
  %foreign "browser:lambda:(x,a)=>x.namedItem(a)"
  prim__namedItem :  HTMLSelectElement
                  -> String
                  -> PrimIO (Nullable HTMLOptionElement)

  export
  %foreign "browser:lambda:x=>x.remove()"
  prim__remove : HTMLSelectElement -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.remove(a)"
  prim__remove1 : HTMLSelectElement -> Int32 -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.reportValidity()"
  prim__reportValidity : HTMLSelectElement -> PrimIO Boolean

  export
  %foreign "browser:lambda:(x,a)=>x.setCustomValidity(a)"
  prim__setCustomValidity : HTMLSelectElement -> String -> PrimIO ()


namespace HTMLSlotElement

  export
  %foreign "browser:lambda:()=> new HTMLSlotElement()"
  prim__new : PrimIO HTMLSlotElement

  export
  %foreign "browser:lambda:x=>x.name"
  prim__name : HTMLSlotElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : HTMLSlotElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:(x,a)=>x.assignedElements(a)"
  prim__assignedElements :  HTMLSlotElement
                         -> UndefOr AssignedNodesOptions
                         -> PrimIO (Array Element)

  export
  %foreign "browser:lambda:(x,a)=>x.assignedNodes(a)"
  prim__assignedNodes :  HTMLSlotElement
                      -> UndefOr AssignedNodesOptions
                      -> PrimIO (Array Node)


namespace HTMLSourceElement

  export
  %foreign "browser:lambda:()=> new HTMLSourceElement()"
  prim__new : PrimIO HTMLSourceElement

  export
  %foreign "browser:lambda:x=>x.height"
  prim__height : HTMLSourceElement -> PrimIO Bits32


  export
  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : HTMLSourceElement -> Bits32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.media"
  prim__media : HTMLSourceElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.media = v}"
  prim__setMedia : HTMLSourceElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.sizes"
  prim__sizes : HTMLSourceElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.sizes = v}"
  prim__setSizes : HTMLSourceElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.src"
  prim__src : HTMLSourceElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.src = v}"
  prim__setSrc : HTMLSourceElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.srcset"
  prim__srcset : HTMLSourceElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.srcset = v}"
  prim__setSrcset : HTMLSourceElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : HTMLSourceElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : HTMLSourceElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.width"
  prim__width : HTMLSourceElement -> PrimIO Bits32


  export
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : HTMLSourceElement -> Bits32 -> PrimIO ()



namespace HTMLSpanElement

  export
  %foreign "browser:lambda:()=> new HTMLSpanElement()"
  prim__new : PrimIO HTMLSpanElement


namespace HTMLStyleElement

  export
  %foreign "browser:lambda:()=> new HTMLStyleElement()"
  prim__new : PrimIO HTMLStyleElement

  export
  %foreign "browser:lambda:x=>x.media"
  prim__media : HTMLStyleElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.media = v}"
  prim__setMedia : HTMLStyleElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : HTMLStyleElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : HTMLStyleElement -> String -> PrimIO ()



namespace HTMLTableCaptionElement

  export
  %foreign "browser:lambda:()=> new HTMLTableCaptionElement()"
  prim__new : PrimIO HTMLTableCaptionElement

  export
  %foreign "browser:lambda:x=>x.align"
  prim__align : HTMLTableCaptionElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : HTMLTableCaptionElement -> String -> PrimIO ()



namespace HTMLTableCellElement

  export
  %foreign "browser:lambda:()=> new HTMLTableCellElement()"
  prim__new : PrimIO HTMLTableCellElement

  export
  %foreign "browser:lambda:x=>x.abbr"
  prim__abbr : HTMLTableCellElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.abbr = v}"
  prim__setAbbr : HTMLTableCellElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.align"
  prim__align : HTMLTableCellElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : HTMLTableCellElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.axis"
  prim__axis : HTMLTableCellElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.axis = v}"
  prim__setAxis : HTMLTableCellElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.bgColor"
  prim__bgColor : HTMLTableCellElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.bgColor = v}"
  prim__setBgColor : HTMLTableCellElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.cellIndex"
  prim__cellIndex : HTMLTableCellElement -> PrimIO Int32

  export
  %foreign "browser:lambda:x=>x.ch"
  prim__ch : HTMLTableCellElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ch = v}"
  prim__setCh : HTMLTableCellElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.chOff"
  prim__chOff : HTMLTableCellElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.chOff = v}"
  prim__setChOff : HTMLTableCellElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.colSpan"
  prim__colSpan : HTMLTableCellElement -> PrimIO Bits32


  export
  %foreign "browser:lambda:(x,v)=>{x.colSpan = v}"
  prim__setColSpan : HTMLTableCellElement -> Bits32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.headers"
  prim__headers : HTMLTableCellElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.headers = v}"
  prim__setHeaders : HTMLTableCellElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.height"
  prim__height : HTMLTableCellElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : HTMLTableCellElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.noWrap"
  prim__noWrap : HTMLTableCellElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.noWrap = v}"
  prim__setNoWrap : HTMLTableCellElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.rowSpan"
  prim__rowSpan : HTMLTableCellElement -> PrimIO Bits32


  export
  %foreign "browser:lambda:(x,v)=>{x.rowSpan = v}"
  prim__setRowSpan : HTMLTableCellElement -> Bits32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.scope"
  prim__scope : HTMLTableCellElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.scope = v}"
  prim__setScope : HTMLTableCellElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.vAlign"
  prim__vAlign : HTMLTableCellElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.vAlign = v}"
  prim__setVAlign : HTMLTableCellElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.width"
  prim__width : HTMLTableCellElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : HTMLTableCellElement -> String -> PrimIO ()



namespace HTMLTableColElement

  export
  %foreign "browser:lambda:()=> new HTMLTableColElement()"
  prim__new : PrimIO HTMLTableColElement

  export
  %foreign "browser:lambda:x=>x.align"
  prim__align : HTMLTableColElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : HTMLTableColElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ch"
  prim__ch : HTMLTableColElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ch = v}"
  prim__setCh : HTMLTableColElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.chOff"
  prim__chOff : HTMLTableColElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.chOff = v}"
  prim__setChOff : HTMLTableColElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.span"
  prim__span : HTMLTableColElement -> PrimIO Bits32


  export
  %foreign "browser:lambda:(x,v)=>{x.span = v}"
  prim__setSpan : HTMLTableColElement -> Bits32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.vAlign"
  prim__vAlign : HTMLTableColElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.vAlign = v}"
  prim__setVAlign : HTMLTableColElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.width"
  prim__width : HTMLTableColElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : HTMLTableColElement -> String -> PrimIO ()



namespace HTMLTableElement

  export
  %foreign "browser:lambda:()=> new HTMLTableElement()"
  prim__new : PrimIO HTMLTableElement

  export
  %foreign "browser:lambda:x=>x.align"
  prim__align : HTMLTableElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : HTMLTableElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.bgColor"
  prim__bgColor : HTMLTableElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.bgColor = v}"
  prim__setBgColor : HTMLTableElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.border"
  prim__border : HTMLTableElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.border = v}"
  prim__setBorder : HTMLTableElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.caption"
  prim__caption : HTMLTableElement -> PrimIO (Nullable HTMLTableCaptionElement)


  export
  %foreign "browser:lambda:(x,v)=>{x.caption = v}"
  prim__setCaption :  HTMLTableElement
                   -> Nullable HTMLTableCaptionElement
                   -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.cellPadding"
  prim__cellPadding : HTMLTableElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.cellPadding = v}"
  prim__setCellPadding : HTMLTableElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.cellSpacing"
  prim__cellSpacing : HTMLTableElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.cellSpacing = v}"
  prim__setCellSpacing : HTMLTableElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.frame"
  prim__frame : HTMLTableElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.frame = v}"
  prim__setFrame : HTMLTableElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.rows"
  prim__rows : HTMLTableElement -> PrimIO HTMLCollection

  export
  %foreign "browser:lambda:x=>x.rules"
  prim__rules : HTMLTableElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.rules = v}"
  prim__setRules : HTMLTableElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.summary"
  prim__summary : HTMLTableElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.summary = v}"
  prim__setSummary : HTMLTableElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.tBodies"
  prim__tBodies : HTMLTableElement -> PrimIO HTMLCollection

  export
  %foreign "browser:lambda:x=>x.tFoot"
  prim__tFoot : HTMLTableElement -> PrimIO (Nullable HTMLTableSectionElement)


  export
  %foreign "browser:lambda:(x,v)=>{x.tFoot = v}"
  prim__setTFoot :  HTMLTableElement
                 -> Nullable HTMLTableSectionElement
                 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.tHead"
  prim__tHead : HTMLTableElement -> PrimIO (Nullable HTMLTableSectionElement)


  export
  %foreign "browser:lambda:(x,v)=>{x.tHead = v}"
  prim__setTHead :  HTMLTableElement
                 -> Nullable HTMLTableSectionElement
                 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.width"
  prim__width : HTMLTableElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : HTMLTableElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.createCaption()"
  prim__createCaption : HTMLTableElement -> PrimIO HTMLTableCaptionElement

  export
  %foreign "browser:lambda:x=>x.createTBody()"
  prim__createTBody : HTMLTableElement -> PrimIO HTMLTableSectionElement

  export
  %foreign "browser:lambda:x=>x.createTFoot()"
  prim__createTFoot : HTMLTableElement -> PrimIO HTMLTableSectionElement

  export
  %foreign "browser:lambda:x=>x.createTHead()"
  prim__createTHead : HTMLTableElement -> PrimIO HTMLTableSectionElement

  export
  %foreign "browser:lambda:x=>x.deleteCaption()"
  prim__deleteCaption : HTMLTableElement -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.deleteRow(a)"
  prim__deleteRow : HTMLTableElement -> Int32 -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.deleteTFoot()"
  prim__deleteTFoot : HTMLTableElement -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.deleteTHead()"
  prim__deleteTHead : HTMLTableElement -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.insertRow(a)"
  prim__insertRow :  HTMLTableElement
                  -> UndefOr Int32
                  -> PrimIO HTMLTableRowElement


namespace HTMLTableRowElement

  export
  %foreign "browser:lambda:()=> new HTMLTableRowElement()"
  prim__new : PrimIO HTMLTableRowElement

  export
  %foreign "browser:lambda:x=>x.align"
  prim__align : HTMLTableRowElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : HTMLTableRowElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.bgColor"
  prim__bgColor : HTMLTableRowElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.bgColor = v}"
  prim__setBgColor : HTMLTableRowElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.cells"
  prim__cells : HTMLTableRowElement -> PrimIO HTMLCollection

  export
  %foreign "browser:lambda:x=>x.ch"
  prim__ch : HTMLTableRowElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ch = v}"
  prim__setCh : HTMLTableRowElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.chOff"
  prim__chOff : HTMLTableRowElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.chOff = v}"
  prim__setChOff : HTMLTableRowElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.rowIndex"
  prim__rowIndex : HTMLTableRowElement -> PrimIO Int32

  export
  %foreign "browser:lambda:x=>x.sectionRowIndex"
  prim__sectionRowIndex : HTMLTableRowElement -> PrimIO Int32

  export
  %foreign "browser:lambda:x=>x.vAlign"
  prim__vAlign : HTMLTableRowElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.vAlign = v}"
  prim__setVAlign : HTMLTableRowElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:(x,a)=>x.deleteCell(a)"
  prim__deleteCell : HTMLTableRowElement -> Int32 -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.insertCell(a)"
  prim__insertCell :  HTMLTableRowElement
                   -> UndefOr Int32
                   -> PrimIO HTMLTableCellElement


namespace HTMLTableSectionElement

  export
  %foreign "browser:lambda:()=> new HTMLTableSectionElement()"
  prim__new : PrimIO HTMLTableSectionElement

  export
  %foreign "browser:lambda:x=>x.align"
  prim__align : HTMLTableSectionElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : HTMLTableSectionElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ch"
  prim__ch : HTMLTableSectionElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ch = v}"
  prim__setCh : HTMLTableSectionElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.chOff"
  prim__chOff : HTMLTableSectionElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.chOff = v}"
  prim__setChOff : HTMLTableSectionElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.rows"
  prim__rows : HTMLTableSectionElement -> PrimIO HTMLCollection

  export
  %foreign "browser:lambda:x=>x.vAlign"
  prim__vAlign : HTMLTableSectionElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.vAlign = v}"
  prim__setVAlign : HTMLTableSectionElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:(x,a)=>x.deleteRow(a)"
  prim__deleteRow : HTMLTableSectionElement -> Int32 -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.insertRow(a)"
  prim__insertRow :  HTMLTableSectionElement
                  -> UndefOr Int32
                  -> PrimIO HTMLTableRowElement


namespace HTMLTemplateElement

  export
  %foreign "browser:lambda:()=> new HTMLTemplateElement()"
  prim__new : PrimIO HTMLTemplateElement

  export
  %foreign "browser:lambda:x=>x.content"
  prim__content : HTMLTemplateElement -> PrimIO DocumentFragment


namespace HTMLTextAreaElement

  export
  %foreign "browser:lambda:()=> new HTMLTextAreaElement()"
  prim__new : PrimIO HTMLTextAreaElement

  export
  %foreign "browser:lambda:x=>x.autocomplete"
  prim__autocomplete : HTMLTextAreaElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.autocomplete = v}"
  prim__setAutocomplete : HTMLTextAreaElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.cols"
  prim__cols : HTMLTextAreaElement -> PrimIO Bits32


  export
  %foreign "browser:lambda:(x,v)=>{x.cols = v}"
  prim__setCols : HTMLTextAreaElement -> Bits32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.defaultValue"
  prim__defaultValue : HTMLTextAreaElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.defaultValue = v}"
  prim__setDefaultValue : HTMLTextAreaElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.dirName"
  prim__dirName : HTMLTextAreaElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.dirName = v}"
  prim__setDirName : HTMLTextAreaElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : HTMLTextAreaElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.disabled = v}"
  prim__setDisabled : HTMLTextAreaElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.form"
  prim__form : HTMLTextAreaElement -> PrimIO (Nullable HTMLFormElement)

  export
  %foreign "browser:lambda:x=>x.labels"
  prim__labels : HTMLTextAreaElement -> PrimIO NodeList

  export
  %foreign "browser:lambda:x=>x.maxLength"
  prim__maxLength : HTMLTextAreaElement -> PrimIO Int32


  export
  %foreign "browser:lambda:(x,v)=>{x.maxLength = v}"
  prim__setMaxLength : HTMLTextAreaElement -> Int32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.minLength"
  prim__minLength : HTMLTextAreaElement -> PrimIO Int32


  export
  %foreign "browser:lambda:(x,v)=>{x.minLength = v}"
  prim__setMinLength : HTMLTextAreaElement -> Int32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.name"
  prim__name : HTMLTextAreaElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : HTMLTextAreaElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.placeholder"
  prim__placeholder : HTMLTextAreaElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.placeholder = v}"
  prim__setPlaceholder : HTMLTextAreaElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.readOnly"
  prim__readOnly : HTMLTextAreaElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.readOnly = v}"
  prim__setReadOnly : HTMLTextAreaElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.required"
  prim__required : HTMLTextAreaElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.required = v}"
  prim__setRequired : HTMLTextAreaElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.rows"
  prim__rows : HTMLTextAreaElement -> PrimIO Bits32


  export
  %foreign "browser:lambda:(x,v)=>{x.rows = v}"
  prim__setRows : HTMLTextAreaElement -> Bits32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.selectionDirection"
  prim__selectionDirection : HTMLTextAreaElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.selectionDirection = v}"
  prim__setSelectionDirection : HTMLTextAreaElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.selectionEnd"
  prim__selectionEnd : HTMLTextAreaElement -> PrimIO Bits32


  export
  %foreign "browser:lambda:(x,v)=>{x.selectionEnd = v}"
  prim__setSelectionEnd : HTMLTextAreaElement -> Bits32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.selectionStart"
  prim__selectionStart : HTMLTextAreaElement -> PrimIO Bits32


  export
  %foreign "browser:lambda:(x,v)=>{x.selectionStart = v}"
  prim__setSelectionStart : HTMLTextAreaElement -> Bits32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.textLength"
  prim__textLength : HTMLTextAreaElement -> PrimIO Bits32

  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : HTMLTextAreaElement -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.validationMessage"
  prim__validationMessage : HTMLTextAreaElement -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.validity"
  prim__validity : HTMLTextAreaElement -> PrimIO ValidityState

  export
  %foreign "browser:lambda:x=>x.value"
  prim__value : HTMLTextAreaElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : HTMLTextAreaElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.willValidate"
  prim__willValidate : HTMLTextAreaElement -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.wrap"
  prim__wrap : HTMLTextAreaElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.wrap = v}"
  prim__setWrap : HTMLTextAreaElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.checkValidity()"
  prim__checkValidity : HTMLTextAreaElement -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.reportValidity()"
  prim__reportValidity : HTMLTextAreaElement -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.select()"
  prim__select : HTMLTextAreaElement -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.setCustomValidity(a)"
  prim__setCustomValidity : HTMLTextAreaElement -> String -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.setRangeText(a)"
  prim__setRangeText : HTMLTextAreaElement -> String -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.setRangeText(a,b,c,d)"
  prim__setRangeText1 :  HTMLTextAreaElement
                      -> String
                      -> Bits32
                      -> Bits32
                      -> UndefOr String
                      -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b,c)=>x.setSelectionRange(a,b,c)"
  prim__setSelectionRange :  HTMLTextAreaElement
                          -> Bits32
                          -> Bits32
                          -> UndefOr String
                          -> PrimIO ()


namespace HTMLTimeElement

  export
  %foreign "browser:lambda:()=> new HTMLTimeElement()"
  prim__new : PrimIO HTMLTimeElement

  export
  %foreign "browser:lambda:x=>x.dateTime"
  prim__dateTime : HTMLTimeElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.dateTime = v}"
  prim__setDateTime : HTMLTimeElement -> String -> PrimIO ()



namespace HTMLTitleElement

  export
  %foreign "browser:lambda:()=> new HTMLTitleElement()"
  prim__new : PrimIO HTMLTitleElement

  export
  %foreign "browser:lambda:x=>x.text"
  prim__text : HTMLTitleElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.text = v}"
  prim__setText : HTMLTitleElement -> String -> PrimIO ()



namespace HTMLTrackElement

  export
  %foreign "browser:lambda:()=> new HTMLTrackElement()"
  prim__new : PrimIO HTMLTrackElement

  export
  %foreign "browser:lambda:x=>x.default"
  prim__default : HTMLTrackElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.default = v}"
  prim__setDefault : HTMLTrackElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.kind"
  prim__kind : HTMLTrackElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.kind = v}"
  prim__setKind : HTMLTrackElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.label"
  prim__label : HTMLTrackElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.label = v}"
  prim__setLabel : HTMLTrackElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : HTMLTrackElement -> PrimIO Bits16

  export
  %foreign "browser:lambda:x=>x.src"
  prim__src : HTMLTrackElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.src = v}"
  prim__setSrc : HTMLTrackElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.srclang"
  prim__srclang : HTMLTrackElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.srclang = v}"
  prim__setSrclang : HTMLTrackElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.track"
  prim__track : HTMLTrackElement -> PrimIO TextTrack


namespace HTMLUListElement

  export
  %foreign "browser:lambda:()=> new HTMLUListElement()"
  prim__new : PrimIO HTMLUListElement

  export
  %foreign "browser:lambda:x=>x.compact"
  prim__compact : HTMLUListElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.compact = v}"
  prim__setCompact : HTMLUListElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : HTMLUListElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : HTMLUListElement -> String -> PrimIO ()




namespace HTMLVideoElement

  export
  %foreign "browser:lambda:()=> new HTMLVideoElement()"
  prim__new : PrimIO HTMLVideoElement

  export
  %foreign "browser:lambda:x=>x.height"
  prim__height : HTMLVideoElement -> PrimIO Bits32


  export
  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : HTMLVideoElement -> Bits32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.playsInline"
  prim__playsInline : HTMLVideoElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.playsInline = v}"
  prim__setPlaysInline : HTMLVideoElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.poster"
  prim__poster : HTMLVideoElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.poster = v}"
  prim__setPoster : HTMLVideoElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.videoHeight"
  prim__videoHeight : HTMLVideoElement -> PrimIO Bits32

  export
  %foreign "browser:lambda:x=>x.videoWidth"
  prim__videoWidth : HTMLVideoElement -> PrimIO Bits32

  export
  %foreign "browser:lambda:x=>x.width"
  prim__width : HTMLVideoElement -> PrimIO Bits32


  export
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : HTMLVideoElement -> Bits32 -> PrimIO ()



namespace HashChangeEvent

  export
  %foreign "browser:lambda:(a,b)=> new HashChangeEvent(a,b)"
  prim__new : String -> UndefOr HashChangeEventInit -> PrimIO HashChangeEvent

  export
  %foreign "browser:lambda:x=>x.newURL"
  prim__newURL : HashChangeEvent -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.oldURL"
  prim__oldURL : HashChangeEvent -> PrimIO String


namespace History

  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : History -> PrimIO Bits32

  export
  %foreign "browser:lambda:x=>x.scrollRestoration"
  prim__scrollRestoration : History -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.scrollRestoration = v}"
  prim__setScrollRestoration : History -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.state"
  prim__state : History -> PrimIO AnyPtr

  export
  %foreign "browser:lambda:x=>x.back()"
  prim__back : History -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.forward()"
  prim__forward : History -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.go(a)"
  prim__go : History -> UndefOr Int32 -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b,c)=>x.pushState(a,b,c)"
  prim__pushState :  History
                  -> AnyPtr
                  -> String
                  -> UndefOr (Nullable String)
                  -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b,c)=>x.replaceState(a,b,c)"
  prim__replaceState :  History
                     -> AnyPtr
                     -> String
                     -> UndefOr (Nullable String)
                     -> PrimIO ()


namespace ImageBitmap

  export
  %foreign "browser:lambda:x=>x.height"
  prim__height : ImageBitmap -> PrimIO Bits32

  export
  %foreign "browser:lambda:x=>x.width"
  prim__width : ImageBitmap -> PrimIO Bits32

  export
  %foreign "browser:lambda:x=>x.close()"
  prim__close : ImageBitmap -> PrimIO ()


namespace ImageBitmapRenderingContext

  export
  %foreign "browser:lambda:x=>x.canvas"
  prim__canvas :  ImageBitmapRenderingContext
               -> PrimIO (Union2 HTMLCanvasElement OffscreenCanvas)

  export
  %foreign "browser:lambda:(x,a)=>x.transferFromImageBitmap(a)"
  prim__transferFromImageBitmap :  ImageBitmapRenderingContext
                                -> Nullable ImageBitmap
                                -> PrimIO ()


namespace ImageData

  export
  %foreign "browser:lambda:(a,b)=> new ImageData(a,b)"
  prim__new : Bits32 -> Bits32 -> PrimIO ImageData

  export
  %foreign "browser:lambda:(a,b,c)=> new ImageData(a,b,c)"
  prim__new1 : UInt8ClampedArray -> Bits32 -> UndefOr Bits32 -> PrimIO ImageData

  export
  %foreign "browser:lambda:x=>x.data"
  prim__data : ImageData -> PrimIO UInt8ClampedArray

  export
  %foreign "browser:lambda:x=>x.height"
  prim__height : ImageData -> PrimIO Bits32

  export
  %foreign "browser:lambda:x=>x.width"
  prim__width : ImageData -> PrimIO Bits32


namespace Location

  export
  %foreign "browser:lambda:x=>x.ancestorOrigins"
  prim__ancestorOrigins : Location -> PrimIO DOMStringList

  export
  %foreign "browser:lambda:x=>x.hash"
  prim__hash : Location -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.hash = v}"
  prim__setHash : Location -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.host"
  prim__host : Location -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.host = v}"
  prim__setHost : Location -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.hostname"
  prim__hostname : Location -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.hostname = v}"
  prim__setHostname : Location -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.href"
  prim__href : Location -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.href = v}"
  prim__setHref : Location -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.origin"
  prim__origin : Location -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.pathname"
  prim__pathname : Location -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.pathname = v}"
  prim__setPathname : Location -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.port"
  prim__port : Location -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.port = v}"
  prim__setPort : Location -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.protocol"
  prim__protocol : Location -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.protocol = v}"
  prim__setProtocol : Location -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.search"
  prim__search : Location -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.search = v}"
  prim__setSearch : Location -> String -> PrimIO ()


  export
  %foreign "browser:lambda:(x,a)=>x.assign(a)"
  prim__assign : Location -> String -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.reload()"
  prim__reload : Location -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.replace(a)"
  prim__replace : Location -> String -> PrimIO ()


namespace MediaError

  export
  %foreign "browser:lambda:x=>x.code"
  prim__code : MediaError -> PrimIO Bits16

  export
  %foreign "browser:lambda:x=>x.message"
  prim__message : MediaError -> PrimIO String


namespace MessageChannel

  export
  %foreign "browser:lambda:()=> new MessageChannel()"
  prim__new : PrimIO MessageChannel

  export
  %foreign "browser:lambda:x=>x.port1"
  prim__port1 : MessageChannel -> PrimIO MessagePort

  export
  %foreign "browser:lambda:x=>x.port2"
  prim__port2 : MessageChannel -> PrimIO MessagePort


namespace MessageEvent

  export
  %foreign "browser:lambda:(a,b)=> new MessageEvent(a,b)"
  prim__new : String -> UndefOr MessageEventInit -> PrimIO MessageEvent

  export
  %foreign "browser:lambda:x=>x.data"
  prim__data : MessageEvent -> PrimIO AnyPtr

  export
  %foreign "browser:lambda:x=>x.lastEventId"
  prim__lastEventId : MessageEvent -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.origin"
  prim__origin : MessageEvent -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.ports"
  prim__ports : MessageEvent -> PrimIO (Array MessagePort)

  export
  %foreign "browser:lambda:x=>x.source"
  prim__source :  MessageEvent
               -> PrimIO (Nullable (Union3 WindowProxy
                                           MessagePort
                                           ServiceWorker))

  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h)=>x.initMessageEvent(a,b,c,d,e,f,g,h)"
  prim__initMessageEvent :  MessageEvent
                         -> String
                         -> UndefOr Boolean
                         -> UndefOr Boolean
                         -> UndefOr AnyPtr
                         -> UndefOr String
                         -> UndefOr String
                         -> UndefOr (Nullable (Union3 WindowProxy
                                                      MessagePort
                                                      ServiceWorker))
                         -> UndefOr (Array MessagePort)
                         -> PrimIO ()


namespace MessagePort

  export
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : MessagePort -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onmessage = v}"
  prim__setOnmessage : MessagePort -> Nullable EventHandlerNonNull -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onmessageerror"
  prim__onmessageerror : MessagePort -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onmessageerror = v}"
  prim__setOnmessageerror :  MessagePort
                          -> Nullable EventHandlerNonNull
                          -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.close()"
  prim__close : MessagePort -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b)=>x.postMessage(a,b)"
  prim__postMessage : MessagePort -> AnyPtr -> Array Object -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b)=>x.postMessage(a,b)"
  prim__postMessage1 :  MessagePort
                     -> AnyPtr
                     -> UndefOr PostMessageOptions
                     -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.start()"
  prim__start : MessagePort -> PrimIO ()


namespace MimeType

  export
  %foreign "browser:lambda:x=>x.description"
  prim__description : MimeType -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.enabledPlugin"
  prim__enabledPlugin : MimeType -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.suffixes"
  prim__suffixes : MimeType -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : MimeType -> PrimIO ()


namespace MimeTypeArray

  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : MimeTypeArray -> PrimIO Bits32

  export
  %foreign "browser:lambda:(x,a)=>x.item(a)"
  prim__item : MimeTypeArray -> Bits32 -> PrimIO (Nullable Object)

  export
  %foreign "browser:lambda:(x,a)=>x.namedItem(a)"
  prim__namedItem : MimeTypeArray -> String -> PrimIO (Nullable Object)


namespace Navigator

  export
  %foreign "browser:lambda:x=>x.clipboard"
  prim__clipboard : Navigator -> PrimIO Clipboard

  export
  %foreign "browser:lambda:x=>x.mediaDevices"
  prim__mediaDevices : Navigator -> PrimIO MediaDevices

  export
  %foreign "browser:lambda:x=>x.permissions"
  prim__permissions : Navigator -> PrimIO Permissions

  export
  %foreign "browser:lambda:x=>x.serviceWorker"
  prim__serviceWorker : Navigator -> PrimIO ServiceWorkerContainer

  export
  %foreign "browser:lambda:(x,a,b,c)=>x.getUserMedia(a,b,c)"
  prim__getUserMedia :  Navigator
                     -> MediaStreamConstraints
                     -> NavigatorUserMediaSuccessCallback
                     -> NavigatorUserMediaErrorCallback
                     -> PrimIO ()


namespace OffscreenCanvas

  export
  %foreign "browser:lambda:(a,b)=> new OffscreenCanvas(a,b)"
  prim__new : JSBits64 -> JSBits64 -> PrimIO OffscreenCanvas

  export
  %foreign "browser:lambda:x=>x.height"
  prim__height : OffscreenCanvas -> PrimIO JSBits64


  export
  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : OffscreenCanvas -> JSBits64 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.width"
  prim__width : OffscreenCanvas -> PrimIO JSBits64


  export
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : OffscreenCanvas -> JSBits64 -> PrimIO ()


  export
  %foreign "browser:lambda:(x,a)=>x.convertToBlob(a)"
  prim__convertToBlob :  OffscreenCanvas
                      -> UndefOr ImageEncodeOptions
                      -> PrimIO (Promise Blob)

  export
  %foreign "browser:lambda:(x,a,b)=>x.getContext(a,b)"
  prim__getContext :  OffscreenCanvas
                   -> String
                   -> UndefOr AnyPtr
                   -> PrimIO (Nullable (Union4 OffscreenCanvasRenderingContext2D
                                               ImageBitmapRenderingContext
                                               WebGLRenderingContext
                                               WebGL2RenderingContext))

  export
  %foreign "browser:lambda:x=>x.transferToImageBitmap()"
  prim__transferToImageBitmap : OffscreenCanvas -> PrimIO ImageBitmap


namespace OffscreenCanvasRenderingContext2D

  export
  %foreign "browser:lambda:x=>x.canvas"
  prim__canvas : OffscreenCanvasRenderingContext2D -> PrimIO OffscreenCanvas

  export
  %foreign "browser:lambda:x=>x.commit()"
  prim__commit : OffscreenCanvasRenderingContext2D -> PrimIO ()


namespace PageTransitionEvent

  export
  %foreign "browser:lambda:(a,b)=> new PageTransitionEvent(a,b)"
  prim__new :  String
            -> UndefOr PageTransitionEventInit
            -> PrimIO PageTransitionEvent

  export
  %foreign "browser:lambda:x=>x.persisted"
  prim__persisted : PageTransitionEvent -> PrimIO Boolean


namespace Path2D

  export
  %foreign "browser:lambda:(a)=> new Path2D(a)"
  prim__new : UndefOr (Union2 Path2D String) -> PrimIO Path2D

  export
  %foreign "browser:lambda:(x,a,b)=>x.addPath(a,b)"
  prim__addPath : Path2D -> Path2D -> UndefOr DOMMatrix2DInit -> PrimIO ()


namespace Plugin

  export
  %foreign "browser:lambda:x=>x.description"
  prim__description : Plugin -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.filename"
  prim__filename : Plugin -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : Plugin -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.name"
  prim__name : Plugin -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.item(a)"
  prim__item : Plugin -> Bits32 -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.namedItem(a)"
  prim__namedItem : Plugin -> String -> PrimIO ()


namespace PluginArray

  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : PluginArray -> PrimIO Bits32

  export
  %foreign "browser:lambda:(x,a)=>x.item(a)"
  prim__item : PluginArray -> Bits32 -> PrimIO (Nullable Object)

  export
  %foreign "browser:lambda:(x,a)=>x.namedItem(a)"
  prim__namedItem : PluginArray -> String -> PrimIO (Nullable Object)

  export
  %foreign "browser:lambda:x=>x.refresh()"
  prim__refresh : PluginArray -> PrimIO ()


namespace PopStateEvent

  export
  %foreign "browser:lambda:(a,b)=> new PopStateEvent(a,b)"
  prim__new : String -> UndefOr PopStateEventInit -> PrimIO PopStateEvent

  export
  %foreign "browser:lambda:x=>x.state"
  prim__state : PopStateEvent -> PrimIO AnyPtr


namespace PromiseRejectionEvent

  export
  %foreign "browser:lambda:(a,b)=> new PromiseRejectionEvent(a,b)"
  prim__new :  String
            -> PromiseRejectionEventInit
            -> PrimIO PromiseRejectionEvent

  export
  %foreign "browser:lambda:x=>x.promise"
  prim__promise : PromiseRejectionEvent -> PrimIO (Promise AnyPtr)

  export
  %foreign "browser:lambda:x=>x.reason"
  prim__reason : PromiseRejectionEvent -> PrimIO AnyPtr


namespace RadioNodeList

  export
  %foreign "browser:lambda:x=>x.value"
  prim__value : RadioNodeList -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : RadioNodeList -> String -> PrimIO ()



namespace SharedWorker

  export
  %foreign "browser:lambda:(a,b)=> new SharedWorker(a,b)"
  prim__new :  String
            -> UndefOr (Union2 String WorkerOptions)
            -> PrimIO SharedWorker

  export
  %foreign "browser:lambda:x=>x.port"
  prim__port : SharedWorker -> PrimIO MessagePort


namespace SharedWorkerGlobalScope

  export
  %foreign "browser:lambda:x=>x.name"
  prim__name : SharedWorkerGlobalScope -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.onconnect"
  prim__onconnect :  SharedWorkerGlobalScope
                  -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onconnect = v}"
  prim__setOnconnect :  SharedWorkerGlobalScope
                     -> Nullable EventHandlerNonNull
                     -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.close()"
  prim__close : SharedWorkerGlobalScope -> PrimIO ()


namespace Storage

  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : Storage -> PrimIO Bits32

  export
  %foreign "browser:lambda:x=>x.clear()"
  prim__clear : Storage -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.getItem(a)"
  prim__getItem : Storage -> String -> PrimIO (Nullable String)

  export
  %foreign "browser:lambda:(x,a)=>x.key(a)"
  prim__key : Storage -> Bits32 -> PrimIO (Nullable String)

  export
  %foreign "browser:lambda:(x,a,b)=>x.setItem(a,b)"
  prim__setItem : Storage -> String -> String -> PrimIO ()


namespace StorageEvent

  export
  %foreign "browser:lambda:(a,b)=> new StorageEvent(a,b)"
  prim__new : String -> UndefOr StorageEventInit -> PrimIO StorageEvent

  export
  %foreign "browser:lambda:x=>x.key"
  prim__key : StorageEvent -> PrimIO (Nullable String)

  export
  %foreign "browser:lambda:x=>x.newValue"
  prim__newValue : StorageEvent -> PrimIO (Nullable String)

  export
  %foreign "browser:lambda:x=>x.oldValue"
  prim__oldValue : StorageEvent -> PrimIO (Nullable String)

  export
  %foreign "browser:lambda:x=>x.storageArea"
  prim__storageArea : StorageEvent -> PrimIO (Nullable Storage)

  export
  %foreign "browser:lambda:x=>x.url"
  prim__url : StorageEvent -> PrimIO String

  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h)=>x.initStorageEvent(a,b,c,d,e,f,g,h)"
  prim__initStorageEvent :  StorageEvent
                         -> String
                         -> UndefOr Boolean
                         -> UndefOr Boolean
                         -> UndefOr (Nullable String)
                         -> UndefOr (Nullable String)
                         -> UndefOr (Nullable String)
                         -> UndefOr String
                         -> UndefOr (Nullable Storage)
                         -> PrimIO ()


namespace SubmitEvent

  export
  %foreign "browser:lambda:(a,b)=> new SubmitEvent(a,b)"
  prim__new : String -> UndefOr SubmitEventInit -> PrimIO SubmitEvent

  export
  %foreign "browser:lambda:x=>x.submitter"
  prim__submitter : SubmitEvent -> PrimIO (Nullable HTMLElement)


namespace TextMetrics

  export
  %foreign "browser:lambda:x=>x.actualBoundingBoxAscent"
  prim__actualBoundingBoxAscent : TextMetrics -> PrimIO Double

  export
  %foreign "browser:lambda:x=>x.actualBoundingBoxDescent"
  prim__actualBoundingBoxDescent : TextMetrics -> PrimIO Double

  export
  %foreign "browser:lambda:x=>x.actualBoundingBoxLeft"
  prim__actualBoundingBoxLeft : TextMetrics -> PrimIO Double

  export
  %foreign "browser:lambda:x=>x.actualBoundingBoxRight"
  prim__actualBoundingBoxRight : TextMetrics -> PrimIO Double

  export
  %foreign "browser:lambda:x=>x.alphabeticBaseline"
  prim__alphabeticBaseline : TextMetrics -> PrimIO Double

  export
  %foreign "browser:lambda:x=>x.emHeightAscent"
  prim__emHeightAscent : TextMetrics -> PrimIO Double

  export
  %foreign "browser:lambda:x=>x.emHeightDescent"
  prim__emHeightDescent : TextMetrics -> PrimIO Double

  export
  %foreign "browser:lambda:x=>x.fontBoundingBoxAscent"
  prim__fontBoundingBoxAscent : TextMetrics -> PrimIO Double

  export
  %foreign "browser:lambda:x=>x.fontBoundingBoxDescent"
  prim__fontBoundingBoxDescent : TextMetrics -> PrimIO Double

  export
  %foreign "browser:lambda:x=>x.hangingBaseline"
  prim__hangingBaseline : TextMetrics -> PrimIO Double

  export
  %foreign "browser:lambda:x=>x.ideographicBaseline"
  prim__ideographicBaseline : TextMetrics -> PrimIO Double

  export
  %foreign "browser:lambda:x=>x.width"
  prim__width : TextMetrics -> PrimIO Double


namespace TextTrack

  export
  %foreign "browser:lambda:x=>x.activeCues"
  prim__activeCues : TextTrack -> PrimIO (Nullable TextTrackCueList)

  export
  %foreign "browser:lambda:x=>x.cues"
  prim__cues : TextTrack -> PrimIO (Nullable TextTrackCueList)

  export
  %foreign "browser:lambda:x=>x.id"
  prim__id : TextTrack -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.inBandMetadataTrackDispatchType"
  prim__inBandMetadataTrackDispatchType : TextTrack -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.kind"
  prim__kind : TextTrack -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.label"
  prim__label : TextTrack -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.language"
  prim__language : TextTrack -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : TextTrack -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.mode = v}"
  prim__setMode : TextTrack -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.oncuechange"
  prim__oncuechange : TextTrack -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.oncuechange = v}"
  prim__setOncuechange : TextTrack -> Nullable EventHandlerNonNull -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.sourceBuffer"
  prim__sourceBuffer : TextTrack -> PrimIO (Nullable SourceBuffer)

  export
  %foreign "browser:lambda:(x,a)=>x.addCue(a)"
  prim__addCue : TextTrack -> TextTrackCue -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.removeCue(a)"
  prim__removeCue : TextTrack -> TextTrackCue -> PrimIO ()


namespace TextTrackCue

  export
  %foreign "browser:lambda:x=>x.endTime"
  prim__endTime : TextTrackCue -> PrimIO Double


  export
  %foreign "browser:lambda:(x,v)=>{x.endTime = v}"
  prim__setEndTime : TextTrackCue -> Double -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.id"
  prim__id : TextTrackCue -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.id = v}"
  prim__setId : TextTrackCue -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onenter"
  prim__onenter : TextTrackCue -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onenter = v}"
  prim__setOnenter : TextTrackCue -> Nullable EventHandlerNonNull -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onexit"
  prim__onexit : TextTrackCue -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onexit = v}"
  prim__setOnexit : TextTrackCue -> Nullable EventHandlerNonNull -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.pauseOnExit"
  prim__pauseOnExit : TextTrackCue -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.pauseOnExit = v}"
  prim__setPauseOnExit : TextTrackCue -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.startTime"
  prim__startTime : TextTrackCue -> PrimIO Double


  export
  %foreign "browser:lambda:(x,v)=>{x.startTime = v}"
  prim__setStartTime : TextTrackCue -> Double -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.track"
  prim__track : TextTrackCue -> PrimIO (Nullable TextTrack)


namespace TextTrackCueList

  export
  %foreign "browser:lambda:(o,x)=>o[x]"
  prim__get : TextTrackCueList -> Bits32 -> PrimIO TextTrackCue

  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : TextTrackCueList -> PrimIO Bits32

  export
  %foreign "browser:lambda:(x,a)=>x.getCueById(a)"
  prim__getCueById :  TextTrackCueList
                   -> String
                   -> PrimIO (Nullable TextTrackCue)


namespace TextTrackList

  export
  %foreign "browser:lambda:(o,x)=>o[x]"
  prim__get : TextTrackList -> Bits32 -> PrimIO TextTrack

  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : TextTrackList -> PrimIO Bits32

  export
  %foreign "browser:lambda:x=>x.onaddtrack"
  prim__onaddtrack : TextTrackList -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onaddtrack = v}"
  prim__setOnaddtrack :  TextTrackList
                      -> Nullable EventHandlerNonNull
                      -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onchange"
  prim__onchange : TextTrackList -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onchange = v}"
  prim__setOnchange : TextTrackList -> Nullable EventHandlerNonNull -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onremovetrack"
  prim__onremovetrack : TextTrackList -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onremovetrack = v}"
  prim__setOnremovetrack :  TextTrackList
                         -> Nullable EventHandlerNonNull
                         -> PrimIO ()


  export
  %foreign "browser:lambda:(x,a)=>x.getTrackById(a)"
  prim__getTrackById : TextTrackList -> String -> PrimIO (Nullable TextTrack)


namespace TimeRanges

  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : TimeRanges -> PrimIO Bits32

  export
  %foreign "browser:lambda:(x,a)=>x.end(a)"
  prim__end : TimeRanges -> Bits32 -> PrimIO Double

  export
  %foreign "browser:lambda:(x,a)=>x.start(a)"
  prim__start : TimeRanges -> Bits32 -> PrimIO Double


namespace TrackEvent

  export
  %foreign "browser:lambda:(a,b)=> new TrackEvent(a,b)"
  prim__new : String -> UndefOr TrackEventInit -> PrimIO TrackEvent

  export
  %foreign "browser:lambda:x=>x.track"
  prim__track :  TrackEvent
              -> PrimIO (Nullable (Union3 VideoTrack AudioTrack TextTrack))


namespace ValidityState

  export
  %foreign "browser:lambda:x=>x.badInput"
  prim__badInput : ValidityState -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.customError"
  prim__customError : ValidityState -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.patternMismatch"
  prim__patternMismatch : ValidityState -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.rangeOverflow"
  prim__rangeOverflow : ValidityState -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.rangeUnderflow"
  prim__rangeUnderflow : ValidityState -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.stepMismatch"
  prim__stepMismatch : ValidityState -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.tooLong"
  prim__tooLong : ValidityState -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.tooShort"
  prim__tooShort : ValidityState -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.typeMismatch"
  prim__typeMismatch : ValidityState -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.valid"
  prim__valid : ValidityState -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.valueMissing"
  prim__valueMissing : ValidityState -> PrimIO Boolean


namespace VideoTrack

  export
  %foreign "browser:lambda:x=>x.id"
  prim__id : VideoTrack -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.kind"
  prim__kind : VideoTrack -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.label"
  prim__label : VideoTrack -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.language"
  prim__language : VideoTrack -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.selected"
  prim__selected : VideoTrack -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.selected = v}"
  prim__setSelected : VideoTrack -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.sourceBuffer"
  prim__sourceBuffer : VideoTrack -> PrimIO (Nullable SourceBuffer)


namespace VideoTrackList

  export
  %foreign "browser:lambda:(o,x)=>o[x]"
  prim__get : VideoTrackList -> Bits32 -> PrimIO VideoTrack

  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : VideoTrackList -> PrimIO Bits32

  export
  %foreign "browser:lambda:x=>x.onaddtrack"
  prim__onaddtrack : VideoTrackList -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onaddtrack = v}"
  prim__setOnaddtrack :  VideoTrackList
                      -> Nullable EventHandlerNonNull
                      -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onchange"
  prim__onchange : VideoTrackList -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onchange = v}"
  prim__setOnchange :  VideoTrackList
                    -> Nullable EventHandlerNonNull
                    -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onremovetrack"
  prim__onremovetrack : VideoTrackList -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onremovetrack = v}"
  prim__setOnremovetrack :  VideoTrackList
                         -> Nullable EventHandlerNonNull
                         -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.selectedIndex"
  prim__selectedIndex : VideoTrackList -> PrimIO Int32

  export
  %foreign "browser:lambda:(x,a)=>x.getTrackById(a)"
  prim__getTrackById : VideoTrackList -> String -> PrimIO (Nullable VideoTrack)


namespace WebSocket

  export
  %foreign "browser:lambda:(a,b)=> new WebSocket(a,b)"
  prim__new :  String
            -> UndefOr (Union2 String (Array String))
            -> PrimIO WebSocket

  export
  %foreign "browser:lambda:x=>x.binaryType"
  prim__binaryType : WebSocket -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.binaryType = v}"
  prim__setBinaryType : WebSocket -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.bufferedAmount"
  prim__bufferedAmount : WebSocket -> PrimIO JSBits64

  export
  %foreign "browser:lambda:x=>x.extensions"
  prim__extensions : WebSocket -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.onclose"
  prim__onclose : WebSocket -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onclose = v}"
  prim__setOnclose : WebSocket -> Nullable EventHandlerNonNull -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : WebSocket -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onerror = v}"
  prim__setOnerror : WebSocket -> Nullable EventHandlerNonNull -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : WebSocket -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onmessage = v}"
  prim__setOnmessage : WebSocket -> Nullable EventHandlerNonNull -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onopen"
  prim__onopen : WebSocket -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onopen = v}"
  prim__setOnopen : WebSocket -> Nullable EventHandlerNonNull -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.protocol"
  prim__protocol : WebSocket -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : WebSocket -> PrimIO Bits16

  export
  %foreign "browser:lambda:x=>x.url"
  prim__url : WebSocket -> PrimIO String

  export
  %foreign "browser:lambda:(x,a,b)=>x.close(a,b)"
  prim__close : WebSocket -> UndefOr Bits16 -> UndefOr String -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.send(a)"
  prim__send : WebSocket -> String -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.send(a)"
  prim__send1 : WebSocket -> Blob -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.send(a)"
  prim__send2 : WebSocket -> ArrayBuffer -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.send(a)"
  prim__send3 :  WebSocket
              -> Union10 Int8Array
                         Int16Array
                         Int32Array
                         UInt8Array
                         UInt8Array
                         UInt8Array
                         UInt8ClampedArray
                         Float32Array
                         Float64Array
                         DataView
              -> PrimIO ()


namespace Window

  export
  %foreign "browser:lambda:(o,x)=>o[x]"
  prim__get : Window -> String -> PrimIO Object

  export
  %foreign "browser:lambda:x=>x.closed"
  prim__closed : Window -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.customElements"
  prim__customElements : Window -> PrimIO CustomElementRegistry

  export
  %foreign "browser:lambda:x=>x.document"
  prim__document : Window -> PrimIO Document

  export
  %foreign "browser:lambda:x=>x.event"
  prim__event : Window -> PrimIO (Union2 Event Undefined)

  export
  %foreign "browser:lambda:x=>x.external"
  prim__external : Window -> PrimIO External

  export
  %foreign "browser:lambda:x=>x.frameElement"
  prim__frameElement : Window -> PrimIO (Nullable Element)

  export
  %foreign "browser:lambda:x=>x.frames"
  prim__frames : Window -> PrimIO WindowProxy

  export
  %foreign "browser:lambda:x=>x.history"
  prim__history : Window -> PrimIO History

  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : Window -> PrimIO Bits32

  export
  %foreign "browser:lambda:x=>x.location"
  prim__location : Window -> PrimIO Location

  export
  %foreign "browser:lambda:x=>x.locationbar"
  prim__locationbar : Window -> PrimIO BarProp

  export
  %foreign "browser:lambda:x=>x.menubar"
  prim__menubar : Window -> PrimIO BarProp

  export
  %foreign "browser:lambda:x=>x.name"
  prim__name : Window -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : Window -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.navigator"
  prim__navigator : Window -> PrimIO Navigator

  export
  %foreign "browser:lambda:x=>x.opener"
  prim__opener : Window -> PrimIO AnyPtr


  export
  %foreign "browser:lambda:(x,v)=>{x.opener = v}"
  prim__setOpener : Window -> AnyPtr -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.originAgentCluster"
  prim__originAgentCluster : Window -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.parent"
  prim__parent : Window -> PrimIO (Nullable WindowProxy)

  export
  %foreign "browser:lambda:x=>x.personalbar"
  prim__personalbar : Window -> PrimIO BarProp

  export
  %foreign "browser:lambda:x=>x.scrollbars"
  prim__scrollbars : Window -> PrimIO BarProp

  export
  %foreign "browser:lambda:x=>x.self"
  prim__self : Window -> PrimIO WindowProxy

  export
  %foreign "browser:lambda:x=>x.status"
  prim__status : Window -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.status = v}"
  prim__setStatus : Window -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.statusbar"
  prim__statusbar : Window -> PrimIO BarProp

  export
  %foreign "browser:lambda:x=>x.toolbar"
  prim__toolbar : Window -> PrimIO BarProp

  export
  %foreign "browser:lambda:x=>x.top"
  prim__top : Window -> PrimIO (Nullable WindowProxy)

  export
  %foreign "browser:lambda:x=>x.window"
  prim__window : Window -> PrimIO WindowProxy

  export
  %foreign "browser:lambda:x=>x.alert()"
  prim__alert : Window -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.alert(a)"
  prim__alert1 : Window -> String -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.blur()"
  prim__blur : Window -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.captureEvents()"
  prim__captureEvents : Window -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.close()"
  prim__close : Window -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.confirm(a)"
  prim__confirm : Window -> UndefOr String -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.focus()"
  prim__focus : Window -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b)=>x.getComputedStyle(a,b)"
  prim__getComputedStyle :  Window
                         -> Element
                         -> UndefOr (Nullable String)
                         -> PrimIO CSSStyleDeclaration

  export
  %foreign "browser:lambda:(x,a,b,c)=>x.open(a,b,c)"
  prim__open :  Window
             -> UndefOr String
             -> UndefOr String
             -> UndefOr String
             -> PrimIO (Nullable WindowProxy)

  export
  %foreign "browser:lambda:(x,a,b,c)=>x.postMessage(a,b,c)"
  prim__postMessage :  Window
                    -> AnyPtr
                    -> String
                    -> UndefOr (Array Object)
                    -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b)=>x.postMessage(a,b)"
  prim__postMessage1 :  Window
                     -> AnyPtr
                     -> UndefOr WindowPostMessageOptions
                     -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.print()"
  prim__print : Window -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b)=>x.prompt(a,b)"
  prim__prompt :  Window
               -> UndefOr String
               -> UndefOr String
               -> PrimIO (Nullable String)

  export
  %foreign "browser:lambda:x=>x.releaseEvents()"
  prim__releaseEvents : Window -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.stop()"
  prim__stop : Window -> PrimIO ()


namespace Worker

  export
  %foreign "browser:lambda:(a,b)=> new Worker(a,b)"
  prim__new : String -> UndefOr WorkerOptions -> PrimIO Worker

  export
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : Worker -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onmessage = v}"
  prim__setOnmessage : Worker -> Nullable EventHandlerNonNull -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onmessageerror"
  prim__onmessageerror : Worker -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onmessageerror = v}"
  prim__setOnmessageerror : Worker -> Nullable EventHandlerNonNull -> PrimIO ()


  export
  %foreign "browser:lambda:(x,a,b)=>x.postMessage(a,b)"
  prim__postMessage : Worker -> AnyPtr -> Array Object -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b)=>x.postMessage(a,b)"
  prim__postMessage1 :  Worker
                     -> AnyPtr
                     -> UndefOr PostMessageOptions
                     -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.terminate()"
  prim__terminate : Worker -> PrimIO ()


namespace WorkerGlobalScope

  export
  %foreign "browser:lambda:x=>x.location"
  prim__location : WorkerGlobalScope -> PrimIO WorkerLocation

  export
  %foreign "browser:lambda:x=>x.navigator"
  prim__navigator : WorkerGlobalScope -> PrimIO WorkerNavigator

  export
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror :  WorkerGlobalScope
                -> PrimIO (Nullable OnErrorEventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onerror = v}"
  prim__setOnerror :  WorkerGlobalScope
                   -> Nullable OnErrorEventHandlerNonNull
                   -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onlanguagechange"
  prim__onlanguagechange :  WorkerGlobalScope
                         -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onlanguagechange = v}"
  prim__setOnlanguagechange :  WorkerGlobalScope
                            -> Nullable EventHandlerNonNull
                            -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onoffline"
  prim__onoffline : WorkerGlobalScope -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onoffline = v}"
  prim__setOnoffline :  WorkerGlobalScope
                     -> Nullable EventHandlerNonNull
                     -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ononline"
  prim__ononline : WorkerGlobalScope -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.ononline = v}"
  prim__setOnonline :  WorkerGlobalScope
                    -> Nullable EventHandlerNonNull
                    -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onrejectionhandled"
  prim__onrejectionhandled :  WorkerGlobalScope
                           -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onrejectionhandled = v}"
  prim__setOnrejectionhandled :  WorkerGlobalScope
                              -> Nullable EventHandlerNonNull
                              -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onunhandledrejection"
  prim__onunhandledrejection :  WorkerGlobalScope
                             -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onunhandledrejection = v}"
  prim__setOnunhandledrejection :  WorkerGlobalScope
                                -> Nullable EventHandlerNonNull
                                -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.self"
  prim__self : WorkerGlobalScope -> PrimIO WorkerGlobalScope

  export
  %foreign "browser:lambda:(x,va)=>x.importScripts(...va())"
  prim__importScripts : WorkerGlobalScope -> IO (Array String) -> PrimIO ()


namespace WorkerLocation

  export
  %foreign "browser:lambda:x=>x.hash"
  prim__hash : WorkerLocation -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.host"
  prim__host : WorkerLocation -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.hostname"
  prim__hostname : WorkerLocation -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.href"
  prim__href : WorkerLocation -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.origin"
  prim__origin : WorkerLocation -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.pathname"
  prim__pathname : WorkerLocation -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.port"
  prim__port : WorkerLocation -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.protocol"
  prim__protocol : WorkerLocation -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.search"
  prim__search : WorkerLocation -> PrimIO String


namespace WorkerNavigator

  export
  %foreign "browser:lambda:x=>x.permissions"
  prim__permissions : WorkerNavigator -> PrimIO Permissions

  export
  %foreign "browser:lambda:x=>x.serviceWorker"
  prim__serviceWorker : WorkerNavigator -> PrimIO ServiceWorkerContainer


namespace Worklet

  export
  %foreign "browser:lambda:(x,a,b)=>x.addModule(a,b)"
  prim__addModule :  Worklet
                  -> String
                  -> UndefOr WorkletOptions
                  -> PrimIO (Promise Undefined)




--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace ARIAMixin

  export
  %foreign "browser:lambda:x=>x.ariaAtomic"
  prim__ariaAtomic : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaAtomic = v}"
  prim__setAriaAtomic : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaAutoComplete"
  prim__ariaAutoComplete : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaAutoComplete = v}"
  prim__setAriaAutoComplete : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaBusy"
  prim__ariaBusy : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaBusy = v}"
  prim__setAriaBusy : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaChecked"
  prim__ariaChecked : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaChecked = v}"
  prim__setAriaChecked : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaColCount"
  prim__ariaColCount : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaColCount = v}"
  prim__setAriaColCount : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaColIndex"
  prim__ariaColIndex : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaColIndex = v}"
  prim__setAriaColIndex : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaColIndexText"
  prim__ariaColIndexText : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaColIndexText = v}"
  prim__setAriaColIndexText : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaColSpan"
  prim__ariaColSpan : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaColSpan = v}"
  prim__setAriaColSpan : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaCurrent"
  prim__ariaCurrent : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaCurrent = v}"
  prim__setAriaCurrent : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaDescription"
  prim__ariaDescription : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaDescription = v}"
  prim__setAriaDescription : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaDisabled"
  prim__ariaDisabled : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaDisabled = v}"
  prim__setAriaDisabled : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaExpanded"
  prim__ariaExpanded : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaExpanded = v}"
  prim__setAriaExpanded : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaHasPopup"
  prim__ariaHasPopup : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaHasPopup = v}"
  prim__setAriaHasPopup : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaHidden"
  prim__ariaHidden : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaHidden = v}"
  prim__setAriaHidden : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaInvalid"
  prim__ariaInvalid : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaInvalid = v}"
  prim__setAriaInvalid : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaKeyShortcuts"
  prim__ariaKeyShortcuts : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaKeyShortcuts = v}"
  prim__setAriaKeyShortcuts : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaLabel"
  prim__ariaLabel : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaLabel = v}"
  prim__setAriaLabel : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaLevel"
  prim__ariaLevel : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaLevel = v}"
  prim__setAriaLevel : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaLive"
  prim__ariaLive : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaLive = v}"
  prim__setAriaLive : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaModal"
  prim__ariaModal : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaModal = v}"
  prim__setAriaModal : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaMultiLine"
  prim__ariaMultiLine : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaMultiLine = v}"
  prim__setAriaMultiLine : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaMultiSelectable"
  prim__ariaMultiSelectable : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaMultiSelectable = v}"
  prim__setAriaMultiSelectable : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaOrientation"
  prim__ariaOrientation : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaOrientation = v}"
  prim__setAriaOrientation : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaPlaceholder"
  prim__ariaPlaceholder : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaPlaceholder = v}"
  prim__setAriaPlaceholder : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaPosInSet"
  prim__ariaPosInSet : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaPosInSet = v}"
  prim__setAriaPosInSet : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaPressed"
  prim__ariaPressed : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaPressed = v}"
  prim__setAriaPressed : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaReadOnly"
  prim__ariaReadOnly : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaReadOnly = v}"
  prim__setAriaReadOnly : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaRequired"
  prim__ariaRequired : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaRequired = v}"
  prim__setAriaRequired : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaRoleDescription"
  prim__ariaRoleDescription : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaRoleDescription = v}"
  prim__setAriaRoleDescription : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaRowCount"
  prim__ariaRowCount : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaRowCount = v}"
  prim__setAriaRowCount : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaRowIndex"
  prim__ariaRowIndex : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaRowIndex = v}"
  prim__setAriaRowIndex : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaRowIndexText"
  prim__ariaRowIndexText : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaRowIndexText = v}"
  prim__setAriaRowIndexText : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaRowSpan"
  prim__ariaRowSpan : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaRowSpan = v}"
  prim__setAriaRowSpan : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaSelected"
  prim__ariaSelected : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaSelected = v}"
  prim__setAriaSelected : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaSetSize"
  prim__ariaSetSize : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaSetSize = v}"
  prim__setAriaSetSize : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaSort"
  prim__ariaSort : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaSort = v}"
  prim__setAriaSort : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaValueMax"
  prim__ariaValueMax : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaValueMax = v}"
  prim__setAriaValueMax : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaValueMin"
  prim__ariaValueMin : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaValueMin = v}"
  prim__setAriaValueMin : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaValueNow"
  prim__ariaValueNow : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaValueNow = v}"
  prim__setAriaValueNow : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ariaValueText"
  prim__ariaValueText : ARIAMixin -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.ariaValueText = v}"
  prim__setAriaValueText : ARIAMixin -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.role"
  prim__role : ARIAMixin -> PrimIO (Nullable String)


  export
  %foreign "browser:lambda:(x,v)=>{x.role = v}"
  prim__setRole : ARIAMixin -> Nullable String -> PrimIO ()



namespace AbstractWorker

  export
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : AbstractWorker -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onerror = v}"
  prim__setOnerror : AbstractWorker -> Nullable EventHandlerNonNull -> PrimIO ()



namespace CanvasCompositing

  export
  %foreign "browser:lambda:x=>x.globalAlpha"
  prim__globalAlpha : CanvasCompositing -> PrimIO Double


  export
  %foreign "browser:lambda:(x,v)=>{x.globalAlpha = v}"
  prim__setGlobalAlpha : CanvasCompositing -> Double -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.globalCompositeOperation"
  prim__globalCompositeOperation : CanvasCompositing -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.globalCompositeOperation = v}"
  prim__setGlobalCompositeOperation : CanvasCompositing -> String -> PrimIO ()



namespace CanvasDrawImage

  export
  %foreign "browser:lambda:(x,a,b,c)=>x.drawImage(a,b,c)"
  prim__drawImage :  CanvasDrawImage
                  -> Union6 HTMLImageElement
                            SVGImageElement
                            HTMLVideoElement
                            HTMLCanvasElement
                            ImageBitmap
                            OffscreenCanvas
                  -> Double
                  -> Double
                  -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.drawImage(a,b,c,d,e)"
  prim__drawImage1 :  CanvasDrawImage
                   -> Union6 HTMLImageElement
                             SVGImageElement
                             HTMLVideoElement
                             HTMLCanvasElement
                             ImageBitmap
                             OffscreenCanvas
                   -> Double
                   -> Double
                   -> Double
                   -> Double
                   -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i)=>x.drawImage(a,b,c,d,e,f,g,h,i)"
  prim__drawImage2 :  CanvasDrawImage
                   -> Union6 HTMLImageElement
                             SVGImageElement
                             HTMLVideoElement
                             HTMLCanvasElement
                             ImageBitmap
                             OffscreenCanvas
                   -> Double
                   -> Double
                   -> Double
                   -> Double
                   -> Double
                   -> Double
                   -> Double
                   -> Double
                   -> PrimIO ()


namespace CanvasDrawPath

  export
  %foreign "browser:lambda:x=>x.beginPath()"
  prim__beginPath : CanvasDrawPath -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.clip(a)"
  prim__clip : CanvasDrawPath -> UndefOr String -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b)=>x.clip(a,b)"
  prim__clip1 : CanvasDrawPath -> Path2D -> UndefOr String -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.fill(a)"
  prim__fill : CanvasDrawPath -> UndefOr String -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b)=>x.fill(a,b)"
  prim__fill1 : CanvasDrawPath -> Path2D -> UndefOr String -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b,c)=>x.isPointInPath(a,b,c)"
  prim__isPointInPath :  CanvasDrawPath
                      -> Double
                      -> Double
                      -> UndefOr String
                      -> PrimIO Boolean

  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.isPointInPath(a,b,c,d)"
  prim__isPointInPath1 :  CanvasDrawPath
                       -> Path2D
                       -> Double
                       -> Double
                       -> UndefOr String
                       -> PrimIO Boolean

  export
  %foreign "browser:lambda:(x,a,b)=>x.isPointInStroke(a,b)"
  prim__isPointInStroke : CanvasDrawPath -> Double -> Double -> PrimIO Boolean

  export
  %foreign "browser:lambda:(x,a,b,c)=>x.isPointInStroke(a,b,c)"
  prim__isPointInStroke1 :  CanvasDrawPath
                         -> Path2D
                         -> Double
                         -> Double
                         -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.stroke()"
  prim__stroke : CanvasDrawPath -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.stroke(a)"
  prim__stroke1 : CanvasDrawPath -> Path2D -> PrimIO ()


namespace CanvasFillStrokeStyles

  export
  %foreign "browser:lambda:x=>x.fillStyle"
  prim__fillStyle :  CanvasFillStrokeStyles
                  -> PrimIO (Union3 String CanvasGradient CanvasPattern)


  export
  %foreign "browser:lambda:(x,v)=>{x.fillStyle = v}"
  prim__setFillStyle :  CanvasFillStrokeStyles
                     -> Union3 String CanvasGradient CanvasPattern
                     -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.strokeStyle"
  prim__strokeStyle :  CanvasFillStrokeStyles
                    -> PrimIO (Union3 String CanvasGradient CanvasPattern)


  export
  %foreign "browser:lambda:(x,v)=>{x.strokeStyle = v}"
  prim__setStrokeStyle :  CanvasFillStrokeStyles
                       -> Union3 String CanvasGradient CanvasPattern
                       -> PrimIO ()


  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.createLinearGradient(a,b,c,d)"
  prim__createLinearGradient :  CanvasFillStrokeStyles
                             -> Double
                             -> Double
                             -> Double
                             -> Double
                             -> PrimIO CanvasGradient

  export
  %foreign "browser:lambda:(x,a,b)=>x.createPattern(a,b)"
  prim__createPattern :  CanvasFillStrokeStyles
                      -> Union6 HTMLImageElement
                                SVGImageElement
                                HTMLVideoElement
                                HTMLCanvasElement
                                ImageBitmap
                                OffscreenCanvas
                      -> String
                      -> PrimIO (Nullable CanvasPattern)

  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.createRadialGradient(a,b,c,d,e,f)"
  prim__createRadialGradient :  CanvasFillStrokeStyles
                             -> Double
                             -> Double
                             -> Double
                             -> Double
                             -> Double
                             -> Double
                             -> PrimIO CanvasGradient


namespace CanvasFilters

  export
  %foreign "browser:lambda:x=>x.filter"
  prim__filter : CanvasFilters -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.filter = v}"
  prim__setFilter : CanvasFilters -> String -> PrimIO ()



namespace CanvasImageData

  export
  %foreign "browser:lambda:(x,a,b)=>x.createImageData(a,b)"
  prim__createImageData : CanvasImageData -> Int32 -> Int32 -> PrimIO ImageData

  export
  %foreign "browser:lambda:(x,a)=>x.createImageData(a)"
  prim__createImageData1 : CanvasImageData -> ImageData -> PrimIO ImageData

  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.getImageData(a,b,c,d)"
  prim__getImageData :  CanvasImageData
                     -> Int32
                     -> Int32
                     -> Int32
                     -> Int32
                     -> PrimIO ImageData

  export
  %foreign "browser:lambda:(x,a,b,c)=>x.putImageData(a,b,c)"
  prim__putImageData :  CanvasImageData
                     -> ImageData
                     -> Int32
                     -> Int32
                     -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g)=>x.putImageData(a,b,c,d,e,f,g)"
  prim__putImageData1 :  CanvasImageData
                      -> ImageData
                      -> Int32
                      -> Int32
                      -> Int32
                      -> Int32
                      -> Int32
                      -> Int32
                      -> PrimIO ()


namespace CanvasImageSmoothing

  export
  %foreign "browser:lambda:x=>x.imageSmoothingEnabled"
  prim__imageSmoothingEnabled : CanvasImageSmoothing -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.imageSmoothingEnabled = v}"
  prim__setImageSmoothingEnabled : CanvasImageSmoothing -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.imageSmoothingQuality"
  prim__imageSmoothingQuality : CanvasImageSmoothing -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.imageSmoothingQuality = v}"
  prim__setImageSmoothingQuality : CanvasImageSmoothing -> String -> PrimIO ()



namespace CanvasPath

  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.arc(a,b,c,d,e,f)"
  prim__arc :  CanvasPath
            -> Double
            -> Double
            -> Double
            -> Double
            -> Double
            -> UndefOr Boolean
            -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.arcTo(a,b,c,d,e)"
  prim__arcTo :  CanvasPath
              -> Double
              -> Double
              -> Double
              -> Double
              -> Double
              -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.bezierCurveTo(a,b,c,d,e,f)"
  prim__bezierCurveTo :  CanvasPath
                      -> Double
                      -> Double
                      -> Double
                      -> Double
                      -> Double
                      -> Double
                      -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.closePath()"
  prim__closePath : CanvasPath -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h)=>x.ellipse(a,b,c,d,e,f,g,h)"
  prim__ellipse :  CanvasPath
                -> Double
                -> Double
                -> Double
                -> Double
                -> Double
                -> Double
                -> Double
                -> UndefOr Boolean
                -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b)=>x.lineTo(a,b)"
  prim__lineTo : CanvasPath -> Double -> Double -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b)=>x.moveTo(a,b)"
  prim__moveTo : CanvasPath -> Double -> Double -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.quadraticCurveTo(a,b,c,d)"
  prim__quadraticCurveTo :  CanvasPath
                         -> Double
                         -> Double
                         -> Double
                         -> Double
                         -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.rect(a,b,c,d)"
  prim__rect : CanvasPath -> Double -> Double -> Double -> Double -> PrimIO ()


namespace CanvasPathDrawingStyles

  export
  %foreign "browser:lambda:x=>x.lineCap"
  prim__lineCap : CanvasPathDrawingStyles -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.lineCap = v}"
  prim__setLineCap : CanvasPathDrawingStyles -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.lineDashOffset"
  prim__lineDashOffset : CanvasPathDrawingStyles -> PrimIO Double


  export
  %foreign "browser:lambda:(x,v)=>{x.lineDashOffset = v}"
  prim__setLineDashOffset : CanvasPathDrawingStyles -> Double -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.lineJoin"
  prim__lineJoin : CanvasPathDrawingStyles -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.lineJoin = v}"
  prim__setLineJoin : CanvasPathDrawingStyles -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.lineWidth"
  prim__lineWidth : CanvasPathDrawingStyles -> PrimIO Double


  export
  %foreign "browser:lambda:(x,v)=>{x.lineWidth = v}"
  prim__setLineWidth : CanvasPathDrawingStyles -> Double -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.miterLimit"
  prim__miterLimit : CanvasPathDrawingStyles -> PrimIO Double


  export
  %foreign "browser:lambda:(x,v)=>{x.miterLimit = v}"
  prim__setMiterLimit : CanvasPathDrawingStyles -> Double -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.getLineDash()"
  prim__getLineDash : CanvasPathDrawingStyles -> PrimIO (Array Double)

  export
  %foreign "browser:lambda:(x,a)=>x.setLineDash(a)"
  prim__setLineDash : CanvasPathDrawingStyles -> Array Double -> PrimIO ()


namespace CanvasRect

  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.clearRect(a,b,c,d)"
  prim__clearRect :  CanvasRect
                  -> Double
                  -> Double
                  -> Double
                  -> Double
                  -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.fillRect(a,b,c,d)"
  prim__fillRect :  CanvasRect
                 -> Double
                 -> Double
                 -> Double
                 -> Double
                 -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.strokeRect(a,b,c,d)"
  prim__strokeRect :  CanvasRect
                   -> Double
                   -> Double
                   -> Double
                   -> Double
                   -> PrimIO ()


namespace CanvasShadowStyles

  export
  %foreign "browser:lambda:x=>x.shadowBlur"
  prim__shadowBlur : CanvasShadowStyles -> PrimIO Double


  export
  %foreign "browser:lambda:(x,v)=>{x.shadowBlur = v}"
  prim__setShadowBlur : CanvasShadowStyles -> Double -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.shadowColor"
  prim__shadowColor : CanvasShadowStyles -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.shadowColor = v}"
  prim__setShadowColor : CanvasShadowStyles -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.shadowOffsetX"
  prim__shadowOffsetX : CanvasShadowStyles -> PrimIO Double


  export
  %foreign "browser:lambda:(x,v)=>{x.shadowOffsetX = v}"
  prim__setShadowOffsetX : CanvasShadowStyles -> Double -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.shadowOffsetY"
  prim__shadowOffsetY : CanvasShadowStyles -> PrimIO Double


  export
  %foreign "browser:lambda:(x,v)=>{x.shadowOffsetY = v}"
  prim__setShadowOffsetY : CanvasShadowStyles -> Double -> PrimIO ()



namespace CanvasState

  export
  %foreign "browser:lambda:x=>x.restore()"
  prim__restore : CanvasState -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.save()"
  prim__save : CanvasState -> PrimIO ()


namespace CanvasText

  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.fillText(a,b,c,d)"
  prim__fillText :  CanvasText
                 -> String
                 -> Double
                 -> Double
                 -> UndefOr Double
                 -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.measureText(a)"
  prim__measureText : CanvasText -> String -> PrimIO TextMetrics

  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.strokeText(a,b,c,d)"
  prim__strokeText :  CanvasText
                   -> String
                   -> Double
                   -> Double
                   -> UndefOr Double
                   -> PrimIO ()


namespace CanvasTextDrawingStyles

  export
  %foreign "browser:lambda:x=>x.direction"
  prim__direction : CanvasTextDrawingStyles -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.direction = v}"
  prim__setDirection : CanvasTextDrawingStyles -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.font"
  prim__font : CanvasTextDrawingStyles -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.font = v}"
  prim__setFont : CanvasTextDrawingStyles -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.textAlign"
  prim__textAlign : CanvasTextDrawingStyles -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.textAlign = v}"
  prim__setTextAlign : CanvasTextDrawingStyles -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.textBaseline"
  prim__textBaseline : CanvasTextDrawingStyles -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.textBaseline = v}"
  prim__setTextBaseline : CanvasTextDrawingStyles -> String -> PrimIO ()



namespace CanvasTransform

  export
  %foreign "browser:lambda:x=>x.getTransform()"
  prim__getTransform : CanvasTransform -> PrimIO DOMMatrix

  export
  %foreign "browser:lambda:x=>x.resetTransform()"
  prim__resetTransform : CanvasTransform -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.rotate(a)"
  prim__rotate : CanvasTransform -> Double -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b)=>x.scale(a,b)"
  prim__scale : CanvasTransform -> Double -> Double -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.setTransform(a,b,c,d,e,f)"
  prim__setTransform :  CanvasTransform
                     -> Double
                     -> Double
                     -> Double
                     -> Double
                     -> Double
                     -> Double
                     -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.setTransform(a)"
  prim__setTransform1 : CanvasTransform -> UndefOr DOMMatrix2DInit -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.transform(a,b,c,d,e,f)"
  prim__transform :  CanvasTransform
                  -> Double
                  -> Double
                  -> Double
                  -> Double
                  -> Double
                  -> Double
                  -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b)=>x.translate(a,b)"
  prim__translate : CanvasTransform -> Double -> Double -> PrimIO ()


namespace CanvasUserInterface

  export
  %foreign "browser:lambda:(x,a)=>x.drawFocusIfNeeded(a)"
  prim__drawFocusIfNeeded : CanvasUserInterface -> Element -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b)=>x.drawFocusIfNeeded(a,b)"
  prim__drawFocusIfNeeded1 :  CanvasUserInterface
                           -> Path2D
                           -> Element
                           -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.scrollPathIntoView()"
  prim__scrollPathIntoView : CanvasUserInterface -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.scrollPathIntoView(a)"
  prim__scrollPathIntoView1 : CanvasUserInterface -> Path2D -> PrimIO ()


namespace DocumentAndElementEventHandlers

  export
  %foreign "browser:lambda:x=>x.oncopy"
  prim__oncopy :  DocumentAndElementEventHandlers
               -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.oncopy = v}"
  prim__setOncopy :  DocumentAndElementEventHandlers
                  -> Nullable EventHandlerNonNull
                  -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.oncut"
  prim__oncut :  DocumentAndElementEventHandlers
              -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.oncut = v}"
  prim__setOncut :  DocumentAndElementEventHandlers
                 -> Nullable EventHandlerNonNull
                 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onpaste"
  prim__onpaste :  DocumentAndElementEventHandlers
                -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onpaste = v}"
  prim__setOnpaste :  DocumentAndElementEventHandlers
                   -> Nullable EventHandlerNonNull
                   -> PrimIO ()



namespace ElementContentEditable

  export
  %foreign "browser:lambda:x=>x.contentEditable"
  prim__contentEditable : ElementContentEditable -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.contentEditable = v}"
  prim__setContentEditable : ElementContentEditable -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.enterKeyHint"
  prim__enterKeyHint : ElementContentEditable -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.enterKeyHint = v}"
  prim__setEnterKeyHint : ElementContentEditable -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.inputMode"
  prim__inputMode : ElementContentEditable -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.inputMode = v}"
  prim__setInputMode : ElementContentEditable -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.isContentEditable"
  prim__isContentEditable : ElementContentEditable -> PrimIO Boolean


namespace GlobalEventHandlers

  export
  %foreign "browser:lambda:x=>x.onabort"
  prim__onabort : GlobalEventHandlers -> PrimIO (Nullable UIEventHandler)


  export
  %foreign "browser:lambda:(x,v)=>{x.onabort = v}"
  prim__setOnabort : GlobalEventHandlers -> Nullable UIEventHandler -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onauxclick"
  prim__onauxclick : GlobalEventHandlers -> PrimIO (Nullable MouseEventHandler)


  export
  %foreign "browser:lambda:(x,v)=>{x.onauxclick = v}"
  prim__setOnauxclick :  GlobalEventHandlers
                      -> Nullable MouseEventHandler
                      -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onblur"
  prim__onblur : GlobalEventHandlers -> PrimIO (Nullable FocusEventHandler)


  export
  %foreign "browser:lambda:(x,v)=>{x.onblur = v}"
  prim__setOnblur :  GlobalEventHandlers
                  -> Nullable FocusEventHandler
                  -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.oncancel"
  prim__oncancel : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.oncancel = v}"
  prim__setOncancel :  GlobalEventHandlers
                    -> Nullable EventHandlerNonNull
                    -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.oncanplay"
  prim__oncanplay : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.oncanplay = v}"
  prim__setOncanplay :  GlobalEventHandlers
                     -> Nullable EventHandlerNonNull
                     -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.oncanplaythrough"
  prim__oncanplaythrough :  GlobalEventHandlers
                         -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.oncanplaythrough = v}"
  prim__setOncanplaythrough :  GlobalEventHandlers
                            -> Nullable EventHandlerNonNull
                            -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onchange"
  prim__onchange : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onchange = v}"
  prim__setOnchange :  GlobalEventHandlers
                    -> Nullable EventHandlerNonNull
                    -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onclick"
  prim__onclick : GlobalEventHandlers -> PrimIO (Nullable MouseEventHandler)


  export
  %foreign "browser:lambda:(x,v)=>{x.onclick = v}"
  prim__setOnclick :  GlobalEventHandlers
                   -> Nullable MouseEventHandler
                   -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onclose"
  prim__onclose : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onclose = v}"
  prim__setOnclose :  GlobalEventHandlers
                   -> Nullable EventHandlerNonNull
                   -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.oncontextmenu"
  prim__oncontextmenu :  GlobalEventHandlers
                      -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.oncontextmenu = v}"
  prim__setOncontextmenu :  GlobalEventHandlers
                         -> Nullable EventHandlerNonNull
                         -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.oncuechange"
  prim__oncuechange :  GlobalEventHandlers
                    -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.oncuechange = v}"
  prim__setOncuechange :  GlobalEventHandlers
                       -> Nullable EventHandlerNonNull
                       -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ondblclick"
  prim__ondblclick : GlobalEventHandlers -> PrimIO (Nullable MouseEventHandler)


  export
  %foreign "browser:lambda:(x,v)=>{x.ondblclick = v}"
  prim__setOndblclick :  GlobalEventHandlers
                      -> Nullable MouseEventHandler
                      -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ondrag"
  prim__ondrag : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.ondrag = v}"
  prim__setOndrag :  GlobalEventHandlers
                  -> Nullable EventHandlerNonNull
                  -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ondragend"
  prim__ondragend : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.ondragend = v}"
  prim__setOndragend :  GlobalEventHandlers
                     -> Nullable EventHandlerNonNull
                     -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ondragenter"
  prim__ondragenter :  GlobalEventHandlers
                    -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.ondragenter = v}"
  prim__setOndragenter :  GlobalEventHandlers
                       -> Nullable EventHandlerNonNull
                       -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ondragleave"
  prim__ondragleave :  GlobalEventHandlers
                    -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.ondragleave = v}"
  prim__setOndragleave :  GlobalEventHandlers
                       -> Nullable EventHandlerNonNull
                       -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ondragover"
  prim__ondragover :  GlobalEventHandlers
                   -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.ondragover = v}"
  prim__setOndragover :  GlobalEventHandlers
                      -> Nullable EventHandlerNonNull
                      -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ondragstart"
  prim__ondragstart :  GlobalEventHandlers
                    -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.ondragstart = v}"
  prim__setOndragstart :  GlobalEventHandlers
                       -> Nullable EventHandlerNonNull
                       -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ondrop"
  prim__ondrop : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.ondrop = v}"
  prim__setOndrop :  GlobalEventHandlers
                  -> Nullable EventHandlerNonNull
                  -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ondurationchange"
  prim__ondurationchange :  GlobalEventHandlers
                         -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.ondurationchange = v}"
  prim__setOndurationchange :  GlobalEventHandlers
                            -> Nullable EventHandlerNonNull
                            -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onemptied"
  prim__onemptied : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onemptied = v}"
  prim__setOnemptied :  GlobalEventHandlers
                     -> Nullable EventHandlerNonNull
                     -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onended"
  prim__onended : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onended = v}"
  prim__setOnended :  GlobalEventHandlers
                   -> Nullable EventHandlerNonNull
                   -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror :  GlobalEventHandlers
                -> PrimIO (Nullable OnErrorEventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onerror = v}"
  prim__setOnerror :  GlobalEventHandlers
                   -> Nullable OnErrorEventHandlerNonNull
                   -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onfocus"
  prim__onfocus : GlobalEventHandlers -> PrimIO (Nullable FocusEventHandler)


  export
  %foreign "browser:lambda:(x,v)=>{x.onfocus = v}"
  prim__setOnfocus :  GlobalEventHandlers
                   -> Nullable FocusEventHandler
                   -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onformdata"
  prim__onformdata :  GlobalEventHandlers
                   -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onformdata = v}"
  prim__setOnformdata :  GlobalEventHandlers
                      -> Nullable EventHandlerNonNull
                      -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.oninput"
  prim__oninput : GlobalEventHandlers -> PrimIO (Nullable InputEventHandler)


  export
  %foreign "browser:lambda:(x,v)=>{x.oninput = v}"
  prim__setOninput :  GlobalEventHandlers
                   -> Nullable InputEventHandler
                   -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.oninvalid"
  prim__oninvalid : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.oninvalid = v}"
  prim__setOninvalid :  GlobalEventHandlers
                     -> Nullable EventHandlerNonNull
                     -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onkeydown"
  prim__onkeydown :  GlobalEventHandlers
                  -> PrimIO (Nullable KeyboardEventHandler)


  export
  %foreign "browser:lambda:(x,v)=>{x.onkeydown = v}"
  prim__setOnkeydown :  GlobalEventHandlers
                     -> Nullable KeyboardEventHandler
                     -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onkeypress"
  prim__onkeypress :  GlobalEventHandlers
                   -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onkeypress = v}"
  prim__setOnkeypress :  GlobalEventHandlers
                      -> Nullable EventHandlerNonNull
                      -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onkeyup"
  prim__onkeyup : GlobalEventHandlers -> PrimIO (Nullable KeyboardEventHandler)


  export
  %foreign "browser:lambda:(x,v)=>{x.onkeyup = v}"
  prim__setOnkeyup :  GlobalEventHandlers
                   -> Nullable KeyboardEventHandler
                   -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onload"
  prim__onload : GlobalEventHandlers -> PrimIO (Nullable UIEventHandler)


  export
  %foreign "browser:lambda:(x,v)=>{x.onload = v}"
  prim__setOnload : GlobalEventHandlers -> Nullable UIEventHandler -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onloadeddata"
  prim__onloadeddata :  GlobalEventHandlers
                     -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onloadeddata = v}"
  prim__setOnloadeddata :  GlobalEventHandlers
                        -> Nullable EventHandlerNonNull
                        -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onloadedmetadata"
  prim__onloadedmetadata :  GlobalEventHandlers
                         -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onloadedmetadata = v}"
  prim__setOnloadedmetadata :  GlobalEventHandlers
                            -> Nullable EventHandlerNonNull
                            -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onloadstart"
  prim__onloadstart :  GlobalEventHandlers
                    -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onloadstart = v}"
  prim__setOnloadstart :  GlobalEventHandlers
                       -> Nullable EventHandlerNonNull
                       -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onmousedown"
  prim__onmousedown : GlobalEventHandlers -> PrimIO (Nullable MouseEventHandler)


  export
  %foreign "browser:lambda:(x,v)=>{x.onmousedown = v}"
  prim__setOnmousedown :  GlobalEventHandlers
                       -> Nullable MouseEventHandler
                       -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onmouseenter"
  prim__onmouseenter :  GlobalEventHandlers
                     -> PrimIO (Nullable MouseEventHandler)


  export
  %foreign "browser:lambda:(x,v)=>{x.onmouseenter = v}"
  prim__setOnmouseenter :  GlobalEventHandlers
                        -> Nullable MouseEventHandler
                        -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onmouseleave"
  prim__onmouseleave :  GlobalEventHandlers
                     -> PrimIO (Nullable MouseEventHandler)


  export
  %foreign "browser:lambda:(x,v)=>{x.onmouseleave = v}"
  prim__setOnmouseleave :  GlobalEventHandlers
                        -> Nullable MouseEventHandler
                        -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onmousemove"
  prim__onmousemove : GlobalEventHandlers -> PrimIO (Nullable MouseEventHandler)


  export
  %foreign "browser:lambda:(x,v)=>{x.onmousemove = v}"
  prim__setOnmousemove :  GlobalEventHandlers
                       -> Nullable MouseEventHandler
                       -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onmouseout"
  prim__onmouseout : GlobalEventHandlers -> PrimIO (Nullable MouseEventHandler)


  export
  %foreign "browser:lambda:(x,v)=>{x.onmouseout = v}"
  prim__setOnmouseout :  GlobalEventHandlers
                      -> Nullable MouseEventHandler
                      -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onmouseover"
  prim__onmouseover : GlobalEventHandlers -> PrimIO (Nullable MouseEventHandler)


  export
  %foreign "browser:lambda:(x,v)=>{x.onmouseover = v}"
  prim__setOnmouseover :  GlobalEventHandlers
                       -> Nullable MouseEventHandler
                       -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onmouseup"
  prim__onmouseup : GlobalEventHandlers -> PrimIO (Nullable MouseEventHandler)


  export
  %foreign "browser:lambda:(x,v)=>{x.onmouseup = v}"
  prim__setOnmouseup :  GlobalEventHandlers
                     -> Nullable MouseEventHandler
                     -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onpause"
  prim__onpause : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onpause = v}"
  prim__setOnpause :  GlobalEventHandlers
                   -> Nullable EventHandlerNonNull
                   -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onplay"
  prim__onplay : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onplay = v}"
  prim__setOnplay :  GlobalEventHandlers
                  -> Nullable EventHandlerNonNull
                  -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onplaying"
  prim__onplaying : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onplaying = v}"
  prim__setOnplaying :  GlobalEventHandlers
                     -> Nullable EventHandlerNonNull
                     -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onprogress"
  prim__onprogress :  GlobalEventHandlers
                   -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onprogress = v}"
  prim__setOnprogress :  GlobalEventHandlers
                      -> Nullable EventHandlerNonNull
                      -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onratechange"
  prim__onratechange :  GlobalEventHandlers
                     -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onratechange = v}"
  prim__setOnratechange :  GlobalEventHandlers
                        -> Nullable EventHandlerNonNull
                        -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onreset"
  prim__onreset : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onreset = v}"
  prim__setOnreset :  GlobalEventHandlers
                   -> Nullable EventHandlerNonNull
                   -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onresize"
  prim__onresize : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onresize = v}"
  prim__setOnresize :  GlobalEventHandlers
                    -> Nullable EventHandlerNonNull
                    -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onscroll"
  prim__onscroll : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onscroll = v}"
  prim__setOnscroll :  GlobalEventHandlers
                    -> Nullable EventHandlerNonNull
                    -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onsecuritypolicyviolation"
  prim__onsecuritypolicyviolation :  GlobalEventHandlers
                                  -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onsecuritypolicyviolation = v}"
  prim__setOnsecuritypolicyviolation :  GlobalEventHandlers
                                     -> Nullable EventHandlerNonNull
                                     -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onseeked"
  prim__onseeked : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onseeked = v}"
  prim__setOnseeked :  GlobalEventHandlers
                    -> Nullable EventHandlerNonNull
                    -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onseeking"
  prim__onseeking : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onseeking = v}"
  prim__setOnseeking :  GlobalEventHandlers
                     -> Nullable EventHandlerNonNull
                     -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onselect"
  prim__onselect : GlobalEventHandlers -> PrimIO (Nullable UIEventHandler)


  export
  %foreign "browser:lambda:(x,v)=>{x.onselect = v}"
  prim__setOnselect :  GlobalEventHandlers
                    -> Nullable UIEventHandler
                    -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onslotchange"
  prim__onslotchange :  GlobalEventHandlers
                     -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onslotchange = v}"
  prim__setOnslotchange :  GlobalEventHandlers
                        -> Nullable EventHandlerNonNull
                        -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onstalled"
  prim__onstalled : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onstalled = v}"
  prim__setOnstalled :  GlobalEventHandlers
                     -> Nullable EventHandlerNonNull
                     -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onsubmit"
  prim__onsubmit : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onsubmit = v}"
  prim__setOnsubmit :  GlobalEventHandlers
                    -> Nullable EventHandlerNonNull
                    -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onsuspend"
  prim__onsuspend : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onsuspend = v}"
  prim__setOnsuspend :  GlobalEventHandlers
                     -> Nullable EventHandlerNonNull
                     -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ontimeupdate"
  prim__ontimeupdate :  GlobalEventHandlers
                     -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.ontimeupdate = v}"
  prim__setOntimeupdate :  GlobalEventHandlers
                        -> Nullable EventHandlerNonNull
                        -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ontoggle"
  prim__ontoggle : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.ontoggle = v}"
  prim__setOntoggle :  GlobalEventHandlers
                    -> Nullable EventHandlerNonNull
                    -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onvolumechange"
  prim__onvolumechange :  GlobalEventHandlers
                       -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onvolumechange = v}"
  prim__setOnvolumechange :  GlobalEventHandlers
                          -> Nullable EventHandlerNonNull
                          -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onwaiting"
  prim__onwaiting : GlobalEventHandlers -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onwaiting = v}"
  prim__setOnwaiting :  GlobalEventHandlers
                     -> Nullable EventHandlerNonNull
                     -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onwebkitanimationend"
  prim__onwebkitanimationend :  GlobalEventHandlers
                             -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onwebkitanimationend = v}"
  prim__setOnwebkitanimationend :  GlobalEventHandlers
                                -> Nullable EventHandlerNonNull
                                -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onwebkitanimationiteration"
  prim__onwebkitanimationiteration :  GlobalEventHandlers
                                   -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onwebkitanimationiteration = v}"
  prim__setOnwebkitanimationiteration :  GlobalEventHandlers
                                      -> Nullable EventHandlerNonNull
                                      -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onwebkitanimationstart"
  prim__onwebkitanimationstart :  GlobalEventHandlers
                               -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onwebkitanimationstart = v}"
  prim__setOnwebkitanimationstart :  GlobalEventHandlers
                                  -> Nullable EventHandlerNonNull
                                  -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onwebkittransitionend"
  prim__onwebkittransitionend :  GlobalEventHandlers
                              -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onwebkittransitionend = v}"
  prim__setOnwebkittransitionend :  GlobalEventHandlers
                                 -> Nullable EventHandlerNonNull
                                 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onwheel"
  prim__onwheel : GlobalEventHandlers -> PrimIO (Nullable WheelEventHandler)


  export
  %foreign "browser:lambda:(x,v)=>{x.onwheel = v}"
  prim__setOnwheel :  GlobalEventHandlers
                   -> Nullable WheelEventHandler
                   -> PrimIO ()



namespace HTMLHyperlinkElementUtils

  export
  %foreign "browser:lambda:x=>x.hash"
  prim__hash : HTMLHyperlinkElementUtils -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.hash = v}"
  prim__setHash : HTMLHyperlinkElementUtils -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.host"
  prim__host : HTMLHyperlinkElementUtils -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.host = v}"
  prim__setHost : HTMLHyperlinkElementUtils -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.hostname"
  prim__hostname : HTMLHyperlinkElementUtils -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.hostname = v}"
  prim__setHostname : HTMLHyperlinkElementUtils -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.href"
  prim__href : HTMLHyperlinkElementUtils -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.href = v}"
  prim__setHref : HTMLHyperlinkElementUtils -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.origin"
  prim__origin : HTMLHyperlinkElementUtils -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.password"
  prim__password : HTMLHyperlinkElementUtils -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.password = v}"
  prim__setPassword : HTMLHyperlinkElementUtils -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.pathname"
  prim__pathname : HTMLHyperlinkElementUtils -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.pathname = v}"
  prim__setPathname : HTMLHyperlinkElementUtils -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.port"
  prim__port : HTMLHyperlinkElementUtils -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.port = v}"
  prim__setPort : HTMLHyperlinkElementUtils -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.protocol"
  prim__protocol : HTMLHyperlinkElementUtils -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.protocol = v}"
  prim__setProtocol : HTMLHyperlinkElementUtils -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.search"
  prim__search : HTMLHyperlinkElementUtils -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.search = v}"
  prim__setSearch : HTMLHyperlinkElementUtils -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.username"
  prim__username : HTMLHyperlinkElementUtils -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.username = v}"
  prim__setUsername : HTMLHyperlinkElementUtils -> String -> PrimIO ()



namespace HTMLOrSVGElement

  export
  %foreign "browser:lambda:x=>x.autofocus"
  prim__autofocus : HTMLOrSVGElement -> PrimIO Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.autofocus = v}"
  prim__setAutofocus : HTMLOrSVGElement -> Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.dataset"
  prim__dataset : HTMLOrSVGElement -> PrimIO DOMStringMap

  export
  %foreign "browser:lambda:x=>x.nonce"
  prim__nonce : HTMLOrSVGElement -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.nonce = v}"
  prim__setNonce : HTMLOrSVGElement -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.tabIndex"
  prim__tabIndex : HTMLOrSVGElement -> PrimIO Int32


  export
  %foreign "browser:lambda:(x,v)=>{x.tabIndex = v}"
  prim__setTabIndex : HTMLOrSVGElement -> Int32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.blur()"
  prim__blur : HTMLOrSVGElement -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.focus(a)"
  prim__focus : HTMLOrSVGElement -> UndefOr FocusOptions -> PrimIO ()


namespace NavigatorConcurrentHardware

  export
  %foreign "browser:lambda:x=>x.hardwareConcurrency"
  prim__hardwareConcurrency : NavigatorConcurrentHardware -> PrimIO JSBits64


namespace NavigatorContentUtils

  export
  %foreign "browser:lambda:(x,a,b)=>x.registerProtocolHandler(a,b)"
  prim__registerProtocolHandler :  NavigatorContentUtils
                                -> String
                                -> String
                                -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b)=>x.unregisterProtocolHandler(a,b)"
  prim__unregisterProtocolHandler :  NavigatorContentUtils
                                  -> String
                                  -> String
                                  -> PrimIO ()


namespace NavigatorCookies

  export
  %foreign "browser:lambda:x=>x.cookieEnabled"
  prim__cookieEnabled : NavigatorCookies -> PrimIO Boolean


namespace NavigatorID

  export
  %foreign "browser:lambda:x=>x.appCodeName"
  prim__appCodeName : NavigatorID -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.appName"
  prim__appName : NavigatorID -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.appVersion"
  prim__appVersion : NavigatorID -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.platform"
  prim__platform : NavigatorID -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.product"
  prim__product : NavigatorID -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.productSub"
  prim__productSub : NavigatorID -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.userAgent"
  prim__userAgent : NavigatorID -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.vendor"
  prim__vendor : NavigatorID -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.vendorSub"
  prim__vendorSub : NavigatorID -> PrimIO String


namespace NavigatorLanguage

  export
  %foreign "browser:lambda:x=>x.language"
  prim__language : NavigatorLanguage -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.languages"
  prim__languages : NavigatorLanguage -> PrimIO (Array String)


namespace NavigatorOnLine

  export
  %foreign "browser:lambda:x=>x.onLine"
  prim__onLine : NavigatorOnLine -> PrimIO Boolean


namespace NavigatorPlugins

  export
  %foreign "browser:lambda:x=>x.mimeTypes"
  prim__mimeTypes : NavigatorPlugins -> PrimIO MimeTypeArray

  export
  %foreign "browser:lambda:x=>x.plugins"
  prim__plugins : NavigatorPlugins -> PrimIO PluginArray

  export
  %foreign "browser:lambda:x=>x.javaEnabled()"
  prim__javaEnabled : NavigatorPlugins -> PrimIO Boolean


namespace WindowEventHandlers

  export
  %foreign "browser:lambda:x=>x.onafterprint"
  prim__onafterprint :  WindowEventHandlers
                     -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onafterprint = v}"
  prim__setOnafterprint :  WindowEventHandlers
                        -> Nullable EventHandlerNonNull
                        -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onbeforeprint"
  prim__onbeforeprint :  WindowEventHandlers
                      -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onbeforeprint = v}"
  prim__setOnbeforeprint :  WindowEventHandlers
                         -> Nullable EventHandlerNonNull
                         -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onbeforeunload"
  prim__onbeforeunload :  WindowEventHandlers
                       -> PrimIO (Nullable OnBeforeUnloadEventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onbeforeunload = v}"
  prim__setOnbeforeunload :  WindowEventHandlers
                          -> Nullable OnBeforeUnloadEventHandlerNonNull
                          -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onhashchange"
  prim__onhashchange :  WindowEventHandlers
                     -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onhashchange = v}"
  prim__setOnhashchange :  WindowEventHandlers
                        -> Nullable EventHandlerNonNull
                        -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onlanguagechange"
  prim__onlanguagechange :  WindowEventHandlers
                         -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onlanguagechange = v}"
  prim__setOnlanguagechange :  WindowEventHandlers
                            -> Nullable EventHandlerNonNull
                            -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : WindowEventHandlers -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onmessage = v}"
  prim__setOnmessage :  WindowEventHandlers
                     -> Nullable EventHandlerNonNull
                     -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onmessageerror"
  prim__onmessageerror :  WindowEventHandlers
                       -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onmessageerror = v}"
  prim__setOnmessageerror :  WindowEventHandlers
                          -> Nullable EventHandlerNonNull
                          -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onoffline"
  prim__onoffline : WindowEventHandlers -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onoffline = v}"
  prim__setOnoffline :  WindowEventHandlers
                     -> Nullable EventHandlerNonNull
                     -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ononline"
  prim__ononline : WindowEventHandlers -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.ononline = v}"
  prim__setOnonline :  WindowEventHandlers
                    -> Nullable EventHandlerNonNull
                    -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onpagehide"
  prim__onpagehide :  WindowEventHandlers
                   -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onpagehide = v}"
  prim__setOnpagehide :  WindowEventHandlers
                      -> Nullable EventHandlerNonNull
                      -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onpageshow"
  prim__onpageshow :  WindowEventHandlers
                   -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onpageshow = v}"
  prim__setOnpageshow :  WindowEventHandlers
                      -> Nullable EventHandlerNonNull
                      -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onpopstate"
  prim__onpopstate :  WindowEventHandlers
                   -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onpopstate = v}"
  prim__setOnpopstate :  WindowEventHandlers
                      -> Nullable EventHandlerNonNull
                      -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onrejectionhandled"
  prim__onrejectionhandled :  WindowEventHandlers
                           -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onrejectionhandled = v}"
  prim__setOnrejectionhandled :  WindowEventHandlers
                              -> Nullable EventHandlerNonNull
                              -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onstorage"
  prim__onstorage : WindowEventHandlers -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onstorage = v}"
  prim__setOnstorage :  WindowEventHandlers
                     -> Nullable EventHandlerNonNull
                     -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onunhandledrejection"
  prim__onunhandledrejection :  WindowEventHandlers
                             -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onunhandledrejection = v}"
  prim__setOnunhandledrejection :  WindowEventHandlers
                                -> Nullable EventHandlerNonNull
                                -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onunload"
  prim__onunload : WindowEventHandlers -> PrimIO (Nullable UIEventHandler)


  export
  %foreign "browser:lambda:(x,v)=>{x.onunload = v}"
  prim__setOnunload :  WindowEventHandlers
                    -> Nullable UIEventHandler
                    -> PrimIO ()




--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace AssignedNodesOptions

  export
  %foreign "browser:lambda:(a)=> {flatten: a}"
  prim__new : UndefOr Boolean -> PrimIO AssignedNodesOptions

  export
  %foreign "browser:lambda:x=>x.flatten"
  prim__flatten : AssignedNodesOptions -> PrimIO (UndefOr Boolean)


  export
  %foreign "browser:lambda:(x,v)=>{x.flatten = v}"
  prim__setFlatten : AssignedNodesOptions -> UndefOr Boolean -> PrimIO ()



namespace CanvasRenderingContext2DSettings

  export
  %foreign "browser:lambda:(a,b)=> {alpha: a,desynchronized: b}"
  prim__new :  UndefOr Boolean
            -> UndefOr Boolean
            -> PrimIO CanvasRenderingContext2DSettings

  export
  %foreign "browser:lambda:x=>x.alpha"
  prim__alpha : CanvasRenderingContext2DSettings -> PrimIO (UndefOr Boolean)


  export
  %foreign "browser:lambda:(x,v)=>{x.alpha = v}"
  prim__setAlpha :  CanvasRenderingContext2DSettings
                 -> UndefOr Boolean
                 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.desynchronized"
  prim__desynchronized :  CanvasRenderingContext2DSettings
                       -> PrimIO (UndefOr Boolean)


  export
  %foreign "browser:lambda:(x,v)=>{x.desynchronized = v}"
  prim__setDesynchronized :  CanvasRenderingContext2DSettings
                          -> UndefOr Boolean
                          -> PrimIO ()



namespace CloseEventInit

  export
  %foreign "browser:lambda:(a,b,c)=> {wasClean: a,code: b,reason: c}"
  prim__new :  UndefOr Boolean
            -> UndefOr Bits16
            -> UndefOr String
            -> PrimIO CloseEventInit

  export
  %foreign "browser:lambda:x=>x.code"
  prim__code : CloseEventInit -> PrimIO (UndefOr Bits16)


  export
  %foreign "browser:lambda:(x,v)=>{x.code = v}"
  prim__setCode : CloseEventInit -> UndefOr Bits16 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.reason"
  prim__reason : CloseEventInit -> PrimIO (UndefOr String)


  export
  %foreign "browser:lambda:(x,v)=>{x.reason = v}"
  prim__setReason : CloseEventInit -> UndefOr String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.wasClean"
  prim__wasClean : CloseEventInit -> PrimIO (UndefOr Boolean)


  export
  %foreign "browser:lambda:(x,v)=>{x.wasClean = v}"
  prim__setWasClean : CloseEventInit -> UndefOr Boolean -> PrimIO ()



namespace DragEventInit

  export
  %foreign "browser:lambda:(a)=> {dataTransfer: a}"
  prim__new : UndefOr (Nullable DataTransfer) -> PrimIO DragEventInit

  export
  %foreign "browser:lambda:x=>x.dataTransfer"
  prim__dataTransfer : DragEventInit -> PrimIO (UndefOr (Nullable DataTransfer))


  export
  %foreign "browser:lambda:(x,v)=>{x.dataTransfer = v}"
  prim__setDataTransfer :  DragEventInit
                        -> UndefOr (Nullable DataTransfer)
                        -> PrimIO ()



namespace ElementDefinitionOptions

  export
  %foreign "browser:lambda:(a)=> {extends: a}"
  prim__new : UndefOr String -> PrimIO ElementDefinitionOptions

  export
  %foreign "browser:lambda:x=>x.extends"
  prim__extends : ElementDefinitionOptions -> PrimIO (UndefOr String)


  export
  %foreign "browser:lambda:(x,v)=>{x.extends = v}"
  prim__setExtends : ElementDefinitionOptions -> UndefOr String -> PrimIO ()



namespace ErrorEventInit

  export
  %foreign "browser:lambda:(a,b,c,d,e)=> {message: a,filename: b,lineno: c,colno: d,error: e}"
  prim__new :  UndefOr String
            -> UndefOr String
            -> UndefOr Bits32
            -> UndefOr Bits32
            -> UndefOr AnyPtr
            -> PrimIO ErrorEventInit

  export
  %foreign "browser:lambda:x=>x.colno"
  prim__colno : ErrorEventInit -> PrimIO (UndefOr Bits32)


  export
  %foreign "browser:lambda:(x,v)=>{x.colno = v}"
  prim__setColno : ErrorEventInit -> UndefOr Bits32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.error"
  prim__error : ErrorEventInit -> PrimIO (UndefOr AnyPtr)


  export
  %foreign "browser:lambda:(x,v)=>{x.error = v}"
  prim__setError : ErrorEventInit -> UndefOr AnyPtr -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.filename"
  prim__filename : ErrorEventInit -> PrimIO (UndefOr String)


  export
  %foreign "browser:lambda:(x,v)=>{x.filename = v}"
  prim__setFilename : ErrorEventInit -> UndefOr String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.lineno"
  prim__lineno : ErrorEventInit -> PrimIO (UndefOr Bits32)


  export
  %foreign "browser:lambda:(x,v)=>{x.lineno = v}"
  prim__setLineno : ErrorEventInit -> UndefOr Bits32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.message"
  prim__message : ErrorEventInit -> PrimIO (UndefOr String)


  export
  %foreign "browser:lambda:(x,v)=>{x.message = v}"
  prim__setMessage : ErrorEventInit -> UndefOr String -> PrimIO ()



namespace EventSourceInit

  export
  %foreign "browser:lambda:(a)=> {withCredentials: a}"
  prim__new : UndefOr Boolean -> PrimIO EventSourceInit

  export
  %foreign "browser:lambda:x=>x.withCredentials"
  prim__withCredentials : EventSourceInit -> PrimIO (UndefOr Boolean)


  export
  %foreign "browser:lambda:(x,v)=>{x.withCredentials = v}"
  prim__setWithCredentials : EventSourceInit -> UndefOr Boolean -> PrimIO ()



namespace FocusOptions

  export
  %foreign "browser:lambda:(a)=> {preventScroll: a}"
  prim__new : UndefOr Boolean -> PrimIO FocusOptions

  export
  %foreign "browser:lambda:x=>x.preventScroll"
  prim__preventScroll : FocusOptions -> PrimIO (UndefOr Boolean)


  export
  %foreign "browser:lambda:(x,v)=>{x.preventScroll = v}"
  prim__setPreventScroll : FocusOptions -> UndefOr Boolean -> PrimIO ()



namespace FormDataEventInit

  export
  %foreign "browser:lambda:(a)=> {formData: a}"
  prim__new : FormData -> PrimIO FormDataEventInit

  export
  %foreign "browser:lambda:x=>x.formData"
  prim__formData : FormDataEventInit -> PrimIO FormData


  export
  %foreign "browser:lambda:(x,v)=>{x.formData = v}"
  prim__setFormData : FormDataEventInit -> FormData -> PrimIO ()



namespace HashChangeEventInit

  export
  %foreign "browser:lambda:(a,b)=> {oldURL: a,newURL: b}"
  prim__new : UndefOr String -> UndefOr String -> PrimIO HashChangeEventInit

  export
  %foreign "browser:lambda:x=>x.newURL"
  prim__newURL : HashChangeEventInit -> PrimIO (UndefOr String)


  export
  %foreign "browser:lambda:(x,v)=>{x.newURL = v}"
  prim__setNewURL : HashChangeEventInit -> UndefOr String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.oldURL"
  prim__oldURL : HashChangeEventInit -> PrimIO (UndefOr String)


  export
  %foreign "browser:lambda:(x,v)=>{x.oldURL = v}"
  prim__setOldURL : HashChangeEventInit -> UndefOr String -> PrimIO ()



namespace ImageBitmapOptions

  export
  %foreign "browser:lambda:(a,b,c,d,e,f)=> {imageOrientation: a,premultiplyAlpha: b,colorSpaceConversion: c,resizeWidth: d,resizeHeight: e,resizeQuality: f}"
  prim__new :  UndefOr String
            -> UndefOr String
            -> UndefOr String
            -> UndefOr Bits32
            -> UndefOr Bits32
            -> UndefOr String
            -> PrimIO ImageBitmapOptions

  export
  %foreign "browser:lambda:x=>x.colorSpaceConversion"
  prim__colorSpaceConversion : ImageBitmapOptions -> PrimIO (UndefOr String)


  export
  %foreign "browser:lambda:(x,v)=>{x.colorSpaceConversion = v}"
  prim__setColorSpaceConversion :  ImageBitmapOptions
                                -> UndefOr String
                                -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.imageOrientation"
  prim__imageOrientation : ImageBitmapOptions -> PrimIO (UndefOr String)


  export
  %foreign "browser:lambda:(x,v)=>{x.imageOrientation = v}"
  prim__setImageOrientation : ImageBitmapOptions -> UndefOr String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.premultiplyAlpha"
  prim__premultiplyAlpha : ImageBitmapOptions -> PrimIO (UndefOr String)


  export
  %foreign "browser:lambda:(x,v)=>{x.premultiplyAlpha = v}"
  prim__setPremultiplyAlpha : ImageBitmapOptions -> UndefOr String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.resizeHeight"
  prim__resizeHeight : ImageBitmapOptions -> PrimIO (UndefOr Bits32)


  export
  %foreign "browser:lambda:(x,v)=>{x.resizeHeight = v}"
  prim__setResizeHeight : ImageBitmapOptions -> UndefOr Bits32 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.resizeQuality"
  prim__resizeQuality : ImageBitmapOptions -> PrimIO (UndefOr String)


  export
  %foreign "browser:lambda:(x,v)=>{x.resizeQuality = v}"
  prim__setResizeQuality : ImageBitmapOptions -> UndefOr String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.resizeWidth"
  prim__resizeWidth : ImageBitmapOptions -> PrimIO (UndefOr Bits32)


  export
  %foreign "browser:lambda:(x,v)=>{x.resizeWidth = v}"
  prim__setResizeWidth : ImageBitmapOptions -> UndefOr Bits32 -> PrimIO ()



namespace ImageBitmapRenderingContextSettings

  export
  %foreign "browser:lambda:(a)=> {alpha: a}"
  prim__new : UndefOr Boolean -> PrimIO ImageBitmapRenderingContextSettings

  export
  %foreign "browser:lambda:x=>x.alpha"
  prim__alpha : ImageBitmapRenderingContextSettings -> PrimIO (UndefOr Boolean)


  export
  %foreign "browser:lambda:(x,v)=>{x.alpha = v}"
  prim__setAlpha :  ImageBitmapRenderingContextSettings
                 -> UndefOr Boolean
                 -> PrimIO ()



namespace ImageEncodeOptions

  export
  %foreign "browser:lambda:(a,b)=> {type: a,quality: b}"
  prim__new : UndefOr String -> UndefOr Double -> PrimIO ImageEncodeOptions

  export
  %foreign "browser:lambda:x=>x.quality"
  prim__quality : ImageEncodeOptions -> PrimIO (UndefOr Double)


  export
  %foreign "browser:lambda:(x,v)=>{x.quality = v}"
  prim__setQuality : ImageEncodeOptions -> UndefOr Double -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : ImageEncodeOptions -> PrimIO (UndefOr String)


  export
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : ImageEncodeOptions -> UndefOr String -> PrimIO ()



namespace MessageEventInit

  export
  %foreign "browser:lambda:(a,b,c,d,e)=> {data: a,origin: b,lastEventId: c,source: d,ports: e}"
  prim__new :  UndefOr AnyPtr
            -> UndefOr String
            -> UndefOr String
            -> UndefOr (Nullable (Union3 WindowProxy MessagePort ServiceWorker))
            -> UndefOr (Array MessagePort)
            -> PrimIO MessageEventInit

  export
  %foreign "browser:lambda:x=>x.data"
  prim__data : MessageEventInit -> PrimIO (UndefOr AnyPtr)


  export
  %foreign "browser:lambda:(x,v)=>{x.data = v}"
  prim__setData : MessageEventInit -> UndefOr AnyPtr -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.lastEventId"
  prim__lastEventId : MessageEventInit -> PrimIO (UndefOr String)


  export
  %foreign "browser:lambda:(x,v)=>{x.lastEventId = v}"
  prim__setLastEventId : MessageEventInit -> UndefOr String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.origin"
  prim__origin : MessageEventInit -> PrimIO (UndefOr String)


  export
  %foreign "browser:lambda:(x,v)=>{x.origin = v}"
  prim__setOrigin : MessageEventInit -> UndefOr String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ports"
  prim__ports : MessageEventInit -> PrimIO (UndefOr (Array MessagePort))


  export
  %foreign "browser:lambda:(x,v)=>{x.ports = v}"
  prim__setPorts : MessageEventInit -> UndefOr (Array MessagePort) -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.source"
  prim__source :  MessageEventInit
               -> PrimIO (UndefOr (Nullable (Union3 WindowProxy
                                                    MessagePort
                                                    ServiceWorker)))


  export
  %foreign "browser:lambda:(x,v)=>{x.source = v}"
  prim__setSource :  MessageEventInit
                  -> UndefOr (Nullable (Union3 WindowProxy
                                               MessagePort
                                               ServiceWorker))
                  -> PrimIO ()



namespace PageTransitionEventInit

  export
  %foreign "browser:lambda:(a)=> {persisted: a}"
  prim__new : UndefOr Boolean -> PrimIO PageTransitionEventInit

  export
  %foreign "browser:lambda:x=>x.persisted"
  prim__persisted : PageTransitionEventInit -> PrimIO (UndefOr Boolean)


  export
  %foreign "browser:lambda:(x,v)=>{x.persisted = v}"
  prim__setPersisted : PageTransitionEventInit -> UndefOr Boolean -> PrimIO ()



namespace PopStateEventInit

  export
  %foreign "browser:lambda:(a)=> {state: a}"
  prim__new : UndefOr AnyPtr -> PrimIO PopStateEventInit

  export
  %foreign "browser:lambda:x=>x.state"
  prim__state : PopStateEventInit -> PrimIO (UndefOr AnyPtr)


  export
  %foreign "browser:lambda:(x,v)=>{x.state = v}"
  prim__setState : PopStateEventInit -> UndefOr AnyPtr -> PrimIO ()



namespace PostMessageOptions

  export
  %foreign "browser:lambda:(a)=> {transfer: a}"
  prim__new : UndefOr (Array Object) -> PrimIO PostMessageOptions

  export
  %foreign "browser:lambda:x=>x.transfer"
  prim__transfer : PostMessageOptions -> PrimIO (UndefOr (Array Object))


  export
  %foreign "browser:lambda:(x,v)=>{x.transfer = v}"
  prim__setTransfer : PostMessageOptions -> UndefOr (Array Object) -> PrimIO ()



namespace PromiseRejectionEventInit

  export
  %foreign "browser:lambda:(a,b)=> {promise: a,reason: b}"
  prim__new :  Promise AnyPtr
            -> UndefOr AnyPtr
            -> PrimIO PromiseRejectionEventInit

  export
  %foreign "browser:lambda:x=>x.promise"
  prim__promise : PromiseRejectionEventInit -> PrimIO (Promise AnyPtr)


  export
  %foreign "browser:lambda:(x,v)=>{x.promise = v}"
  prim__setPromise : PromiseRejectionEventInit -> Promise AnyPtr -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.reason"
  prim__reason : PromiseRejectionEventInit -> PrimIO (UndefOr AnyPtr)


  export
  %foreign "browser:lambda:(x,v)=>{x.reason = v}"
  prim__setReason : PromiseRejectionEventInit -> UndefOr AnyPtr -> PrimIO ()



namespace StorageEventInit

  export
  %foreign "browser:lambda:(a,b,c,d,e)=> {key: a,oldValue: b,newValue: c,url: d,storageArea: e}"
  prim__new :  UndefOr (Nullable String)
            -> UndefOr (Nullable String)
            -> UndefOr (Nullable String)
            -> UndefOr String
            -> UndefOr (Nullable Storage)
            -> PrimIO StorageEventInit

  export
  %foreign "browser:lambda:x=>x.key"
  prim__key : StorageEventInit -> PrimIO (UndefOr (Nullable String))


  export
  %foreign "browser:lambda:(x,v)=>{x.key = v}"
  prim__setKey : StorageEventInit -> UndefOr (Nullable String) -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.newValue"
  prim__newValue : StorageEventInit -> PrimIO (UndefOr (Nullable String))


  export
  %foreign "browser:lambda:(x,v)=>{x.newValue = v}"
  prim__setNewValue : StorageEventInit -> UndefOr (Nullable String) -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.oldValue"
  prim__oldValue : StorageEventInit -> PrimIO (UndefOr (Nullable String))


  export
  %foreign "browser:lambda:(x,v)=>{x.oldValue = v}"
  prim__setOldValue : StorageEventInit -> UndefOr (Nullable String) -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.storageArea"
  prim__storageArea : StorageEventInit -> PrimIO (UndefOr (Nullable Storage))


  export
  %foreign "browser:lambda:(x,v)=>{x.storageArea = v}"
  prim__setStorageArea :  StorageEventInit
                       -> UndefOr (Nullable Storage)
                       -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.url"
  prim__url : StorageEventInit -> PrimIO (UndefOr String)


  export
  %foreign "browser:lambda:(x,v)=>{x.url = v}"
  prim__setUrl : StorageEventInit -> UndefOr String -> PrimIO ()



namespace SubmitEventInit

  export
  %foreign "browser:lambda:(a)=> {submitter: a}"
  prim__new : UndefOr (Nullable HTMLElement) -> PrimIO SubmitEventInit

  export
  %foreign "browser:lambda:x=>x.submitter"
  prim__submitter : SubmitEventInit -> PrimIO (UndefOr (Nullable HTMLElement))


  export
  %foreign "browser:lambda:(x,v)=>{x.submitter = v}"
  prim__setSubmitter :  SubmitEventInit
                     -> UndefOr (Nullable HTMLElement)
                     -> PrimIO ()



namespace TrackEventInit

  export
  %foreign "browser:lambda:(a)=> {track: a}"
  prim__new :  UndefOr (Nullable (Union3 VideoTrack AudioTrack TextTrack))
            -> PrimIO TrackEventInit

  export
  %foreign "browser:lambda:x=>x.track"
  prim__track :  TrackEventInit
              -> PrimIO (UndefOr (Nullable (Union3 VideoTrack
                                                   AudioTrack
                                                   TextTrack)))


  export
  %foreign "browser:lambda:(x,v)=>{x.track = v}"
  prim__setTrack :  TrackEventInit
                 -> UndefOr (Nullable (Union3 VideoTrack AudioTrack TextTrack))
                 -> PrimIO ()



namespace ValidityStateFlags

  export
  %foreign "browser:lambda:(a,b,c,d,e,f,g,h,i,j)=> {valueMissing: a,typeMismatch: b,patternMismatch: c,tooLong: d,tooShort: e,rangeUnderflow: f,rangeOverflow: g,stepMismatch: h,badInput: i,customError: j}"
  prim__new :  UndefOr Boolean
            -> UndefOr Boolean
            -> UndefOr Boolean
            -> UndefOr Boolean
            -> UndefOr Boolean
            -> UndefOr Boolean
            -> UndefOr Boolean
            -> UndefOr Boolean
            -> UndefOr Boolean
            -> UndefOr Boolean
            -> PrimIO ValidityStateFlags

  export
  %foreign "browser:lambda:x=>x.badInput"
  prim__badInput : ValidityStateFlags -> PrimIO (UndefOr Boolean)


  export
  %foreign "browser:lambda:(x,v)=>{x.badInput = v}"
  prim__setBadInput : ValidityStateFlags -> UndefOr Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.customError"
  prim__customError : ValidityStateFlags -> PrimIO (UndefOr Boolean)


  export
  %foreign "browser:lambda:(x,v)=>{x.customError = v}"
  prim__setCustomError : ValidityStateFlags -> UndefOr Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.patternMismatch"
  prim__patternMismatch : ValidityStateFlags -> PrimIO (UndefOr Boolean)


  export
  %foreign "browser:lambda:(x,v)=>{x.patternMismatch = v}"
  prim__setPatternMismatch : ValidityStateFlags -> UndefOr Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.rangeOverflow"
  prim__rangeOverflow : ValidityStateFlags -> PrimIO (UndefOr Boolean)


  export
  %foreign "browser:lambda:(x,v)=>{x.rangeOverflow = v}"
  prim__setRangeOverflow : ValidityStateFlags -> UndefOr Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.rangeUnderflow"
  prim__rangeUnderflow : ValidityStateFlags -> PrimIO (UndefOr Boolean)


  export
  %foreign "browser:lambda:(x,v)=>{x.rangeUnderflow = v}"
  prim__setRangeUnderflow : ValidityStateFlags -> UndefOr Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.stepMismatch"
  prim__stepMismatch : ValidityStateFlags -> PrimIO (UndefOr Boolean)


  export
  %foreign "browser:lambda:(x,v)=>{x.stepMismatch = v}"
  prim__setStepMismatch : ValidityStateFlags -> UndefOr Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.tooLong"
  prim__tooLong : ValidityStateFlags -> PrimIO (UndefOr Boolean)


  export
  %foreign "browser:lambda:(x,v)=>{x.tooLong = v}"
  prim__setTooLong : ValidityStateFlags -> UndefOr Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.tooShort"
  prim__tooShort : ValidityStateFlags -> PrimIO (UndefOr Boolean)


  export
  %foreign "browser:lambda:(x,v)=>{x.tooShort = v}"
  prim__setTooShort : ValidityStateFlags -> UndefOr Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.typeMismatch"
  prim__typeMismatch : ValidityStateFlags -> PrimIO (UndefOr Boolean)


  export
  %foreign "browser:lambda:(x,v)=>{x.typeMismatch = v}"
  prim__setTypeMismatch : ValidityStateFlags -> UndefOr Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.valueMissing"
  prim__valueMissing : ValidityStateFlags -> PrimIO (UndefOr Boolean)


  export
  %foreign "browser:lambda:(x,v)=>{x.valueMissing = v}"
  prim__setValueMissing : ValidityStateFlags -> UndefOr Boolean -> PrimIO ()



namespace WindowPostMessageOptions

  export
  %foreign "browser:lambda:(a)=> {targetOrigin: a}"
  prim__new : UndefOr String -> PrimIO WindowPostMessageOptions

  export
  %foreign "browser:lambda:x=>x.targetOrigin"
  prim__targetOrigin : WindowPostMessageOptions -> PrimIO (UndefOr String)


  export
  %foreign "browser:lambda:(x,v)=>{x.targetOrigin = v}"
  prim__setTargetOrigin :  WindowPostMessageOptions
                        -> UndefOr String
                        -> PrimIO ()



namespace WorkerOptions

  export
  %foreign "browser:lambda:(a,b,c)=> {type: a,credentials: b,name: c}"
  prim__new :  UndefOr String
            -> UndefOr String
            -> UndefOr String
            -> PrimIO WorkerOptions

  export
  %foreign "browser:lambda:x=>x.credentials"
  prim__credentials : WorkerOptions -> PrimIO (UndefOr String)


  export
  %foreign "browser:lambda:(x,v)=>{x.credentials = v}"
  prim__setCredentials : WorkerOptions -> UndefOr String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.name"
  prim__name : WorkerOptions -> PrimIO (UndefOr String)


  export
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : WorkerOptions -> UndefOr String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : WorkerOptions -> PrimIO (UndefOr String)


  export
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : WorkerOptions -> UndefOr String -> PrimIO ()



namespace WorkletOptions

  export
  %foreign "browser:lambda:(a)=> {credentials: a}"
  prim__new : UndefOr String -> PrimIO WorkletOptions

  export
  %foreign "browser:lambda:x=>x.credentials"
  prim__credentials : WorkletOptions -> PrimIO (UndefOr String)


  export
  %foreign "browser:lambda:(x,v)=>{x.credentials = v}"
  prim__setCredentials : WorkletOptions -> UndefOr String -> PrimIO ()




--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------

namespace BlobCallback

  export
  %foreign "browser:lambda:x=>(a)=>x(a)()"
  prim__toBlobCallback : ( Nullable Blob -> IO () ) -> PrimIO BlobCallback


namespace CompositionEventHandler

  export
  %foreign "browser:lambda:x=>(a)=>x(a)()"
  prim__toCompositionEventHandler :  ( CompositionEvent -> IO () )
                                  -> PrimIO CompositionEventHandler


namespace CustomElementConstructor

  export
  %foreign "browser:lambda:x=>()=>x()()"
  prim__toCustomElementConstructor :  (() -> IO HTMLElement)
                                   -> PrimIO CustomElementConstructor


namespace EventHandlerNonNull

  export
  %foreign "browser:lambda:x=>(a)=>x(a)()"
  prim__toEventHandlerNonNull :  ( Event -> IO AnyPtr )
                              -> PrimIO EventHandlerNonNull


namespace FocusEventHandler

  export
  %foreign "browser:lambda:x=>(a)=>x(a)()"
  prim__toFocusEventHandler :  ( FocusEvent -> IO () )
                            -> PrimIO FocusEventHandler


namespace FunctionStringCallback

  export
  %foreign "browser:lambda:x=>(a)=>x(a)()"
  prim__toFunctionStringCallback :  ( String -> IO () )
                                 -> PrimIO FunctionStringCallback


namespace InputEventHandler

  export
  %foreign "browser:lambda:x=>(a)=>x(a)()"
  prim__toInputEventHandler :  ( InputEvent -> IO () )
                            -> PrimIO InputEventHandler


namespace KeyboardEventHandler

  export
  %foreign "browser:lambda:x=>(a)=>x(a)()"
  prim__toKeyboardEventHandler :  ( KeyboardEvent -> IO () )
                               -> PrimIO KeyboardEventHandler


namespace MouseEventHandler

  export
  %foreign "browser:lambda:x=>(a)=>x(a)()"
  prim__toMouseEventHandler :  ( MouseEvent -> IO () )
                            -> PrimIO MouseEventHandler


namespace OnBeforeUnloadEventHandlerNonNull

  export
  %foreign "browser:lambda:x=>(a)=>x(a)()"
  prim__toOnBeforeUnloadEventHandlerNonNull :  ( Event -> IO (Nullable String) )
                                            -> PrimIO OnBeforeUnloadEventHandlerNonNull


namespace OnErrorEventHandlerNonNull

  export
  %foreign "browser:lambda:x=>(a,b,c,d,e)=>x(a,b,c,d,e)()"
  prim__toOnErrorEventHandlerNonNull :  (  Union2 Event String
                                        -> UndefOr String
                                        -> UndefOr Bits32
                                        -> UndefOr Bits32
                                        -> UndefOr AnyPtr
                                        -> IO AnyPtr
                                        )
                                     -> PrimIO OnErrorEventHandlerNonNull


namespace UIEventHandler

  export
  %foreign "browser:lambda:x=>(a)=>x(a)()"
  prim__toUIEventHandler : ( UIEvent -> IO () ) -> PrimIO UIEventHandler


namespace WheelEventHandler

  export
  %foreign "browser:lambda:x=>(a)=>x(a)()"
  prim__toWheelEventHandler :  ( WheelEvent -> IO () )
                            -> PrimIO WheelEventHandler
