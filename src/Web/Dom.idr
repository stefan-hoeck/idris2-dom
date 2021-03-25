module Web.Dom

import Data.SOP
import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace AbortController
  
  %foreign "browser:lambda:x=>x.signal"
  prim__signal : AnyPtr -> PrimIO AnyPtr
  
  export
  signal :  Cast abortController AbortController
         => ToJS AbortController
         => (obj : abortController)
         -> IO AbortSignal

namespace AbortSignal
  
  %foreign "browser:lambda:x=>x.aborted"
  prim__aborted : AnyPtr -> PrimIO AnyPtr
  
  export
  aborted :  Cast abortSignal AbortSignal
          => ToJS AbortSignal
          => (obj : abortSignal)
          -> IO Bool
  
  %foreign "browser:lambda:x=>x.onabort"
  prim__onabort : AnyPtr -> PrimIO AnyPtr
  
  export
  onabort :  Cast abortSignal AbortSignal
          => ToJS AbortSignal
          => (obj : abortSignal)
          -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onabort = v}"
  prim__setOnabort : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnabort :  Cast abortSignal AbortSignal
             => ToJS AbortSignal
             => Cast eventHandler EventHandler
             => ToJS EventHandler
             => (obj : abortSignal)
             -> (v : eventHandler)
             -> IO ()

namespace AbstractRange
  
  %foreign "browser:lambda:x=>x.collapsed"
  prim__collapsed : AnyPtr -> PrimIO AnyPtr
  
  export
  collapsed :  Cast abstractRange AbstractRange
            => ToJS AbstractRange
            => (obj : abstractRange)
            -> IO Bool
  
  %foreign "browser:lambda:x=>x.endContainer"
  prim__endContainer : AnyPtr -> PrimIO AnyPtr
  
  export
  endContainer :  Cast abstractRange AbstractRange
               => ToJS AbstractRange
               => (obj : abstractRange)
               -> IO Node
  
  %foreign "browser:lambda:x=>x.endOffset"
  prim__endOffset : AnyPtr -> PrimIO AnyPtr
  
  export
  endOffset :  Cast abstractRange AbstractRange
            => ToJS AbstractRange
            => (obj : abstractRange)
            -> IO UInt32
  
  %foreign "browser:lambda:x=>x.startContainer"
  prim__startContainer : AnyPtr -> PrimIO AnyPtr
  
  export
  startContainer :  Cast abstractRange AbstractRange
                 => ToJS AbstractRange
                 => (obj : abstractRange)
                 -> IO Node
  
  %foreign "browser:lambda:x=>x.startOffset"
  prim__startOffset : AnyPtr -> PrimIO AnyPtr
  
  export
  startOffset :  Cast abstractRange AbstractRange
              => ToJS AbstractRange
              => (obj : abstractRange)
              -> IO UInt32

namespace Attr
  
  %foreign "browser:lambda:x=>x.localName"
  prim__localName : AnyPtr -> PrimIO AnyPtr
  
  export
  localName : Cast attr Attr => ToJS Attr => (obj : attr) -> IO String
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr
  
  export
  name : Cast attr Attr => ToJS Attr => (obj : attr) -> IO String
  
  %foreign "browser:lambda:x=>x.namespaceURI"
  prim__namespaceURI : AnyPtr -> PrimIO AnyPtr
  
  export
  namespaceURI :  Cast attr Attr
               => ToJS Attr
               => (obj : attr)
               -> IO (Maybe String)
  
  %foreign "browser:lambda:x=>x.ownerElement"
  prim__ownerElement : AnyPtr -> PrimIO AnyPtr
  
  export
  ownerElement :  Cast attr Attr
               => ToJS Attr
               => (obj : attr)
               -> IO (Maybe Element)
  
  %foreign "browser:lambda:x=>x.prefix"
  prim__prefix_ : AnyPtr -> PrimIO AnyPtr
  
  export
  prefix_ : Cast attr Attr => ToJS Attr => (obj : attr) -> IO (Maybe String)
  
  %foreign "browser:lambda:x=>x.specified"
  prim__specified : AnyPtr -> PrimIO AnyPtr
  
  export
  specified : Cast attr Attr => ToJS Attr => (obj : attr) -> IO Bool
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr
  
  export
  value : Cast attr Attr => ToJS Attr => (obj : attr) -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setValue :  Cast attr Attr
           => ToJS Attr
           => (obj : attr)
           -> (v : String)
           -> IO ()

namespace CharacterData
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  export
  length :  Cast characterData CharacterData
         => ToJS CharacterData
         => (obj : characterData)
         -> IO UInt32
  
  %foreign "browser:lambda:x=>x.data"
  prim__data_ : AnyPtr -> PrimIO AnyPtr
  
  export
  data_ :  Cast characterData CharacterData
        => ToJS CharacterData
        => (obj : characterData)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.data = v}"
  prim__setData : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setData :  Cast characterData CharacterData
          => ToJS CharacterData
          => (obj : characterData)
          -> (v : String)
          -> IO ()

namespace CustomEvent
  
  %foreign "browser:lambda:x=>x.detail"
  prim__detail : AnyPtr -> PrimIO AnyPtr
  
  export
  detail :  Cast customEvent CustomEvent
         => ToJS CustomEvent
         => (obj : customEvent)
         -> IO JSAny

namespace DOMTokenList
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  export
  length :  Cast dOMTokenList DOMTokenList
         => ToJS DOMTokenList
         => (obj : dOMTokenList)
         -> IO UInt32

namespace Document
  
  %foreign "browser:lambda:x=>x.URL"
  prim__URL : AnyPtr -> PrimIO AnyPtr
  
  export
  URL : Cast document Document => ToJS Document => (obj : document) -> IO String
  
  %foreign "browser:lambda:x=>x.all"
  prim__all : AnyPtr -> PrimIO AnyPtr
  
  export
  all :  Cast document Document
      => ToJS Document
      => (obj : document)
      -> IO HTMLAllCollection
  
  %foreign "browser:lambda:x=>x.anchors"
  prim__anchors : AnyPtr -> PrimIO AnyPtr
  
  export
  anchors :  Cast document Document
          => ToJS Document
          => (obj : document)
          -> IO HTMLCollection
  
  %foreign "browser:lambda:x=>x.applets"
  prim__applets : AnyPtr -> PrimIO AnyPtr
  
  export
  applets :  Cast document Document
          => ToJS Document
          => (obj : document)
          -> IO HTMLCollection
  
  %foreign "browser:lambda:x=>x.characterSet"
  prim__characterSet : AnyPtr -> PrimIO AnyPtr
  
  export
  characterSet :  Cast document Document
               => ToJS Document
               => (obj : document)
               -> IO String
  
  %foreign "browser:lambda:x=>x.charset"
  prim__charset : AnyPtr -> PrimIO AnyPtr
  
  export
  charset :  Cast document Document
          => ToJS Document
          => (obj : document)
          -> IO String
  
  %foreign "browser:lambda:x=>x.compatMode"
  prim__compatMode : AnyPtr -> PrimIO AnyPtr
  
  export
  compatMode :  Cast document Document
             => ToJS Document
             => (obj : document)
             -> IO String
  
  %foreign "browser:lambda:x=>x.contentType"
  prim__contentType : AnyPtr -> PrimIO AnyPtr
  
  export
  contentType :  Cast document Document
              => ToJS Document
              => (obj : document)
              -> IO String
  
  %foreign "browser:lambda:x=>x.currentScript"
  prim__currentScript : AnyPtr -> PrimIO AnyPtr
  
  export
  currentScript :  Cast document Document
                => ToJS Document
                => (obj : document)
                -> IO (Maybe HTMLOrSVGScriptElement)
  
  %foreign "browser:lambda:x=>x.defaultView"
  prim__defaultView : AnyPtr -> PrimIO AnyPtr
  
  export
  defaultView :  Cast document Document
              => ToJS Document
              => (obj : document)
              -> IO (Maybe WindowProxy)
  
  %foreign "browser:lambda:x=>x.doctype"
  prim__doctype : AnyPtr -> PrimIO AnyPtr
  
  export
  doctype :  Cast document Document
          => ToJS Document
          => (obj : document)
          -> IO (Maybe DocumentType)
  
  %foreign "browser:lambda:x=>x.documentElement"
  prim__documentElement : AnyPtr -> PrimIO AnyPtr
  
  export
  documentElement :  Cast document Document
                  => ToJS Document
                  => (obj : document)
                  -> IO (Maybe Element)
  
  %foreign "browser:lambda:x=>x.documentURI"
  prim__documentURI : AnyPtr -> PrimIO AnyPtr
  
  export
  documentURI :  Cast document Document
              => ToJS Document
              => (obj : document)
              -> IO String
  
  %foreign "browser:lambda:x=>x.embeds"
  prim__embeds : AnyPtr -> PrimIO AnyPtr
  
  export
  embeds :  Cast document Document
         => ToJS Document
         => (obj : document)
         -> IO HTMLCollection
  
  %foreign "browser:lambda:x=>x.forms"
  prim__forms : AnyPtr -> PrimIO AnyPtr
  
  export
  forms :  Cast document Document
        => ToJS Document
        => (obj : document)
        -> IO HTMLCollection
  
  %foreign "browser:lambda:x=>x.head"
  prim__head : AnyPtr -> PrimIO AnyPtr
  
  export
  head :  Cast document Document
       => ToJS Document
       => (obj : document)
       -> IO (Maybe HTMLHeadElement)
  
  %foreign "browser:lambda:x=>x.hidden"
  prim__hidden : AnyPtr -> PrimIO AnyPtr
  
  export
  hidden :  Cast document Document
         => ToJS Document
         => (obj : document)
         -> IO Bool
  
  %foreign "browser:lambda:x=>x.images"
  prim__images : AnyPtr -> PrimIO AnyPtr
  
  export
  images :  Cast document Document
         => ToJS Document
         => (obj : document)
         -> IO HTMLCollection
  
  %foreign "browser:lambda:x=>x.implementation"
  prim__implementation_ : AnyPtr -> PrimIO AnyPtr
  
  export
  implementation_ :  Cast document Document
                  => ToJS Document
                  => (obj : document)
                  -> IO DOMImplementation
  
  %foreign "browser:lambda:x=>x.inputEncoding"
  prim__inputEncoding : AnyPtr -> PrimIO AnyPtr
  
  export
  inputEncoding :  Cast document Document
                => ToJS Document
                => (obj : document)
                -> IO String
  
  %foreign "browser:lambda:x=>x.lastModified"
  prim__lastModified : AnyPtr -> PrimIO AnyPtr
  
  export
  lastModified :  Cast document Document
               => ToJS Document
               => (obj : document)
               -> IO String
  
  %foreign "browser:lambda:x=>x.links"
  prim__links : AnyPtr -> PrimIO AnyPtr
  
  export
  links :  Cast document Document
        => ToJS Document
        => (obj : document)
        -> IO HTMLCollection
  
  %foreign "browser:lambda:x=>x.location"
  prim__location : AnyPtr -> PrimIO AnyPtr
  
  export
  location :  Cast document Document
           => ToJS Document
           => (obj : document)
           -> IO (Maybe Location)
  
  %foreign "browser:lambda:x=>x.plugins"
  prim__plugins : AnyPtr -> PrimIO AnyPtr
  
  export
  plugins :  Cast document Document
          => ToJS Document
          => (obj : document)
          -> IO HTMLCollection
  
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : AnyPtr -> PrimIO AnyPtr
  
  export
  readyState :  Cast document Document
             => ToJS Document
             => (obj : document)
             -> IO DocumentReadyState
  
  %foreign "browser:lambda:x=>x.referrer"
  prim__referrer : AnyPtr -> PrimIO AnyPtr
  
  export
  referrer :  Cast document Document
           => ToJS Document
           => (obj : document)
           -> IO String
  
  %foreign "browser:lambda:x=>x.rootElement"
  prim__rootElement : AnyPtr -> PrimIO AnyPtr
  
  export
  rootElement :  Cast document Document
              => ToJS Document
              => (obj : document)
              -> IO (Maybe SVGSVGElement)
  
  %foreign "browser:lambda:x=>x.scripts"
  prim__scripts : AnyPtr -> PrimIO AnyPtr
  
  export
  scripts :  Cast document Document
          => ToJS Document
          => (obj : document)
          -> IO HTMLCollection
  
  %foreign "browser:lambda:x=>x.timeline"
  prim__timeline : AnyPtr -> PrimIO AnyPtr
  
  export
  timeline :  Cast document Document
           => ToJS Document
           => (obj : document)
           -> IO DocumentTimeline
  
  %foreign "browser:lambda:x=>x.visibilityState"
  prim__visibilityState : AnyPtr -> PrimIO AnyPtr
  
  export
  visibilityState :  Cast document Document
                  => ToJS Document
                  => (obj : document)
                  -> IO VisibilityState
  
  %foreign "browser:lambda:x=>x.alinkColor"
  prim__alinkColor : AnyPtr -> PrimIO AnyPtr
  
  export
  alinkColor :  Cast document Document
             => ToJS Document
             => (obj : document)
             -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.alinkColor = v}"
  prim__setAlinkColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAlinkColor :  Cast document Document
                => ToJS Document
                => (obj : document)
                -> (v : String)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.bgColor"
  prim__bgColor : AnyPtr -> PrimIO AnyPtr
  
  export
  bgColor :  Cast document Document
          => ToJS Document
          => (obj : document)
          -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.bgColor = v}"
  prim__setBgColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setBgColor :  Cast document Document
             => ToJS Document
             => (obj : document)
             -> (v : String)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.body"
  prim__body : AnyPtr -> PrimIO AnyPtr
  
  export
  body :  Cast document Document
       => ToJS Document
       => (obj : document)
       -> IO (Maybe HTMLElement)
  
  %foreign "browser:lambda:(x,v)=>{x.body = v}"
  prim__setBody : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setBody :  Cast document Document
          => ToJS Document
          => Cast hTMLElement HTMLElement
          => ToJS HTMLElement
          => (obj : document)
          -> (v : Maybe hTMLElement)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.cookie"
  prim__cookie : AnyPtr -> PrimIO AnyPtr
  
  export
  cookie :  Cast document Document
         => ToJS Document
         => (obj : document)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.cookie = v}"
  prim__setCookie : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCookie :  Cast document Document
            => ToJS Document
            => (obj : document)
            -> (v : String)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.designMode"
  prim__designMode : AnyPtr -> PrimIO AnyPtr
  
  export
  designMode :  Cast document Document
             => ToJS Document
             => (obj : document)
             -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.designMode = v}"
  prim__setDesignMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDesignMode :  Cast document Document
                => ToJS Document
                => (obj : document)
                -> (v : String)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.dir"
  prim__dir : AnyPtr -> PrimIO AnyPtr
  
  export
  dir : Cast document Document => ToJS Document => (obj : document) -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.dir = v}"
  prim__setDir : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDir :  Cast document Document
         => ToJS Document
         => (obj : document)
         -> (v : String)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.domain"
  prim__domain : AnyPtr -> PrimIO AnyPtr
  
  export
  domain :  Cast document Document
         => ToJS Document
         => (obj : document)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.domain = v}"
  prim__setDomain : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDomain :  Cast document Document
            => ToJS Document
            => (obj : document)
            -> (v : String)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.fgColor"
  prim__fgColor : AnyPtr -> PrimIO AnyPtr
  
  export
  fgColor :  Cast document Document
          => ToJS Document
          => (obj : document)
          -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.fgColor = v}"
  prim__setFgColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setFgColor :  Cast document Document
             => ToJS Document
             => (obj : document)
             -> (v : String)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.linkColor"
  prim__linkColor : AnyPtr -> PrimIO AnyPtr
  
  export
  linkColor :  Cast document Document
            => ToJS Document
            => (obj : document)
            -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.linkColor = v}"
  prim__setLinkColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setLinkColor :  Cast document Document
               => ToJS Document
               => (obj : document)
               -> (v : String)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.onreadystatechange"
  prim__onreadystatechange : AnyPtr -> PrimIO AnyPtr
  
  export
  onreadystatechange :  Cast document Document
                     => ToJS Document
                     => (obj : document)
                     -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onreadystatechange = v}"
  prim__setOnreadystatechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnreadystatechange :  Cast document Document
                        => ToJS Document
                        => Cast eventHandler EventHandler
                        => ToJS EventHandler
                        => (obj : document)
                        -> (v : eventHandler)
                        -> IO ()
  
  %foreign "browser:lambda:x=>x.onvisibilitychange"
  prim__onvisibilitychange : AnyPtr -> PrimIO AnyPtr
  
  export
  onvisibilitychange :  Cast document Document
                     => ToJS Document
                     => (obj : document)
                     -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onvisibilitychange = v}"
  prim__setOnvisibilitychange : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnvisibilitychange :  Cast document Document
                        => ToJS Document
                        => Cast eventHandler EventHandler
                        => ToJS EventHandler
                        => (obj : document)
                        -> (v : eventHandler)
                        -> IO ()
  
  %foreign "browser:lambda:x=>x.title"
  prim__title : AnyPtr -> PrimIO AnyPtr
  
  export
  title :  Cast document Document
        => ToJS Document
        => (obj : document)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.title = v}"
  prim__setTitle : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setTitle :  Cast document Document
           => ToJS Document
           => (obj : document)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.vlinkColor"
  prim__vlinkColor : AnyPtr -> PrimIO AnyPtr
  
  export
  vlinkColor :  Cast document Document
             => ToJS Document
             => (obj : document)
             -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.vlinkColor = v}"
  prim__setVlinkColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setVlinkColor :  Cast document Document
                => ToJS Document
                => (obj : document)
                -> (v : String)
                -> IO ()

namespace DocumentType
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr
  
  export
  name :  Cast documentType DocumentType
       => ToJS DocumentType
       => (obj : documentType)
       -> IO String
  
  %foreign "browser:lambda:x=>x.publicId"
  prim__publicId : AnyPtr -> PrimIO AnyPtr
  
  export
  publicId :  Cast documentType DocumentType
           => ToJS DocumentType
           => (obj : documentType)
           -> IO String
  
  %foreign "browser:lambda:x=>x.systemId"
  prim__systemId : AnyPtr -> PrimIO AnyPtr
  
  export
  systemId :  Cast documentType DocumentType
           => ToJS DocumentType
           => (obj : documentType)
           -> IO String

namespace Element
  
  %foreign "browser:lambda:x=>x.attributes"
  prim__attributes : AnyPtr -> PrimIO AnyPtr
  
  export
  attributes :  Cast element Element
             => ToJS Element
             => (obj : element)
             -> IO NamedNodeMap
  
  %foreign "browser:lambda:x=>x.classList"
  prim__classList : AnyPtr -> PrimIO AnyPtr
  
  export
  classList :  Cast element Element
            => ToJS Element
            => (obj : element)
            -> IO DOMTokenList
  
  %foreign "browser:lambda:x=>x.localName"
  prim__localName : AnyPtr -> PrimIO AnyPtr
  
  export
  localName :  Cast element Element
            => ToJS Element
            => (obj : element)
            -> IO String
  
  %foreign "browser:lambda:x=>x.namespaceURI"
  prim__namespaceURI : AnyPtr -> PrimIO AnyPtr
  
  export
  namespaceURI :  Cast element Element
               => ToJS Element
               => (obj : element)
               -> IO (Maybe String)
  
  %foreign "browser:lambda:x=>x.prefix"
  prim__prefix_ : AnyPtr -> PrimIO AnyPtr
  
  export
  prefix_ :  Cast element Element
          => ToJS Element
          => (obj : element)
          -> IO (Maybe String)
  
  %foreign "browser:lambda:x=>x.shadowRoot"
  prim__shadowRoot : AnyPtr -> PrimIO AnyPtr
  
  export
  shadowRoot :  Cast element Element
             => ToJS Element
             => (obj : element)
             -> IO (Maybe ShadowRoot)
  
  %foreign "browser:lambda:x=>x.tagName"
  prim__tagName : AnyPtr -> PrimIO AnyPtr
  
  export
  tagName : Cast element Element => ToJS Element => (obj : element) -> IO String
  
  %foreign "browser:lambda:x=>x.className"
  prim__className : AnyPtr -> PrimIO AnyPtr
  
  export
  className :  Cast element Element
            => ToJS Element
            => (obj : element)
            -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.className = v}"
  prim__setClassName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setClassName :  Cast element Element
               => ToJS Element
               => (obj : element)
               -> (v : String)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr
  
  export
  id : Cast element Element => ToJS Element => (obj : element) -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.id = v}"
  prim__setId : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setId :  Cast element Element
        => ToJS Element
        => (obj : element)
        -> (v : String)
        -> IO ()
  
  %foreign "browser:lambda:x=>x.slot"
  prim__slot : AnyPtr -> PrimIO AnyPtr
  
  export
  slot : Cast element Element => ToJS Element => (obj : element) -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.slot = v}"
  prim__setSlot : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSlot :  Cast element Element
          => ToJS Element
          => (obj : element)
          -> (v : String)
          -> IO ()

namespace Event
  
  public export
  AT_TARGET : UInt16
  AT_TARGET = 2
  
  public export
  BUBBLING_PHASE : UInt16
  BUBBLING_PHASE = 3
  
  public export
  CAPTURING_PHASE : UInt16
  CAPTURING_PHASE = 1
  
  public export
  NONE : UInt16
  NONE = 0o0
  
  %foreign "browser:lambda:x=>x.bubbles"
  prim__bubbles : AnyPtr -> PrimIO AnyPtr
  
  export
  bubbles : Cast event Event => ToJS Event => (obj : event) -> IO Bool
  
  %foreign "browser:lambda:x=>x.cancelable"
  prim__cancelable : AnyPtr -> PrimIO AnyPtr
  
  export
  cancelable : Cast event Event => ToJS Event => (obj : event) -> IO Bool
  
  %foreign "browser:lambda:x=>x.composed"
  prim__composed : AnyPtr -> PrimIO AnyPtr
  
  export
  composed : Cast event Event => ToJS Event => (obj : event) -> IO Bool
  
  %foreign "browser:lambda:x=>x.currentTarget"
  prim__currentTarget : AnyPtr -> PrimIO AnyPtr
  
  export
  currentTarget :  Cast event Event
                => ToJS Event
                => (obj : event)
                -> IO (Maybe EventTarget)
  
  %foreign "browser:lambda:x=>x.defaultPrevented"
  prim__defaultPrevented : AnyPtr -> PrimIO AnyPtr
  
  export
  defaultPrevented : Cast event Event => ToJS Event => (obj : event) -> IO Bool
  
  %foreign "browser:lambda:x=>x.eventPhase"
  prim__eventPhase : AnyPtr -> PrimIO AnyPtr
  
  export
  eventPhase : Cast event Event => ToJS Event => (obj : event) -> IO UInt16
  
  %foreign "browser:lambda:x=>x.isTrusted"
  prim__isTrusted : AnyPtr -> PrimIO AnyPtr
  
  export
  isTrusted : Cast event Event => ToJS Event => (obj : event) -> IO Bool
  
  %foreign "browser:lambda:x=>x.srcElement"
  prim__srcElement : AnyPtr -> PrimIO AnyPtr
  
  export
  srcElement :  Cast event Event
             => ToJS Event
             => (obj : event)
             -> IO (Maybe EventTarget)
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr
  
  export
  target :  Cast event Event
         => ToJS Event
         => (obj : event)
         -> IO (Maybe EventTarget)
  
  %foreign "browser:lambda:x=>x.timeStamp"
  prim__timeStamp : AnyPtr -> PrimIO AnyPtr
  
  export
  timeStamp :  Cast event Event
            => ToJS Event
            => (obj : event)
            -> IO DOMHighResTimeStamp
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  export
  type : Cast event Event => ToJS Event => (obj : event) -> IO String
  
  %foreign "browser:lambda:x=>x.cancelBubble"
  prim__cancelBubble : AnyPtr -> PrimIO AnyPtr
  
  export
  cancelBubble : Cast event Event => ToJS Event => (obj : event) -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.cancelBubble = v}"
  prim__setCancelBubble : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCancelBubble :  Cast event Event
                  => ToJS Event
                  => (obj : event)
                  -> (v : Bool)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.returnValue"
  prim__returnValue : AnyPtr -> PrimIO AnyPtr
  
  export
  returnValue : Cast event Event => ToJS Event => (obj : event) -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.returnValue = v}"
  prim__setReturnValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setReturnValue :  Cast event Event
                 => ToJS Event
                 => (obj : event)
                 -> (v : Bool)
                 -> IO ()

namespace HTMLCollection
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  export
  length :  Cast hTMLCollection HTMLCollection
         => ToJS HTMLCollection
         => (obj : hTMLCollection)
         -> IO UInt32

namespace MutationRecord
  
  %foreign "browser:lambda:x=>x.addedNodes"
  prim__addedNodes : AnyPtr -> PrimIO AnyPtr
  
  export
  addedNodes :  Cast mutationRecord MutationRecord
             => ToJS MutationRecord
             => (obj : mutationRecord)
             -> IO NodeList
  
  %foreign "browser:lambda:x=>x.attributeName"
  prim__attributeName : AnyPtr -> PrimIO AnyPtr
  
  export
  attributeName :  Cast mutationRecord MutationRecord
                => ToJS MutationRecord
                => (obj : mutationRecord)
                -> IO (Maybe String)
  
  %foreign "browser:lambda:x=>x.attributeNamespace"
  prim__attributeNamespace : AnyPtr -> PrimIO AnyPtr
  
  export
  attributeNamespace :  Cast mutationRecord MutationRecord
                     => ToJS MutationRecord
                     => (obj : mutationRecord)
                     -> IO (Maybe String)
  
  %foreign "browser:lambda:x=>x.nextSibling"
  prim__nextSibling : AnyPtr -> PrimIO AnyPtr
  
  export
  nextSibling :  Cast mutationRecord MutationRecord
              => ToJS MutationRecord
              => (obj : mutationRecord)
              -> IO (Maybe Node)
  
  %foreign "browser:lambda:x=>x.oldValue"
  prim__oldValue : AnyPtr -> PrimIO AnyPtr
  
  export
  oldValue :  Cast mutationRecord MutationRecord
           => ToJS MutationRecord
           => (obj : mutationRecord)
           -> IO (Maybe String)
  
  %foreign "browser:lambda:x=>x.previousSibling"
  prim__previousSibling : AnyPtr -> PrimIO AnyPtr
  
  export
  previousSibling :  Cast mutationRecord MutationRecord
                  => ToJS MutationRecord
                  => (obj : mutationRecord)
                  -> IO (Maybe Node)
  
  %foreign "browser:lambda:x=>x.removedNodes"
  prim__removedNodes : AnyPtr -> PrimIO AnyPtr
  
  export
  removedNodes :  Cast mutationRecord MutationRecord
               => ToJS MutationRecord
               => (obj : mutationRecord)
               -> IO NodeList
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr
  
  export
  target :  Cast mutationRecord MutationRecord
         => ToJS MutationRecord
         => (obj : mutationRecord)
         -> IO Node
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  export
  type :  Cast mutationRecord MutationRecord
       => ToJS MutationRecord
       => (obj : mutationRecord)
       -> IO String

namespace NamedNodeMap
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  export
  length :  Cast namedNodeMap NamedNodeMap
         => ToJS NamedNodeMap
         => (obj : namedNodeMap)
         -> IO UInt32

namespace Node
  
  public export
  ATTRIBUTE_NODE : UInt16
  ATTRIBUTE_NODE = 2
  
  public export
  CDATA_SECTION_NODE : UInt16
  CDATA_SECTION_NODE = 4
  
  public export
  COMMENT_NODE : UInt16
  COMMENT_NODE = 8
  
  public export
  DOCUMENT_FRAGMENT_NODE : UInt16
  DOCUMENT_FRAGMENT_NODE = 11
  
  public export
  DOCUMENT_NODE : UInt16
  DOCUMENT_NODE = 9
  
  public export
  DOCUMENT_POSITION_CONTAINED_BY : UInt16
  DOCUMENT_POSITION_CONTAINED_BY = 0x10
  
  public export
  DOCUMENT_POSITION_CONTAINS : UInt16
  DOCUMENT_POSITION_CONTAINS = 0x8
  
  public export
  DOCUMENT_POSITION_DISCONNECTED : UInt16
  DOCUMENT_POSITION_DISCONNECTED = 0x1
  
  public export
  DOCUMENT_POSITION_FOLLOWING : UInt16
  DOCUMENT_POSITION_FOLLOWING = 0x4
  
  public export
  DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC : UInt16
  DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC = 0x20
  
  public export
  DOCUMENT_POSITION_PRECEDING : UInt16
  DOCUMENT_POSITION_PRECEDING = 0x2
  
  public export
  DOCUMENT_TYPE_NODE : UInt16
  DOCUMENT_TYPE_NODE = 10
  
  public export
  ELEMENT_NODE : UInt16
  ELEMENT_NODE = 1
  
  public export
  ENTITY_NODE : UInt16
  ENTITY_NODE = 6
  
  public export
  ENTITY_REFERENCE_NODE : UInt16
  ENTITY_REFERENCE_NODE = 5
  
  public export
  NOTATION_NODE : UInt16
  NOTATION_NODE = 12
  
  public export
  PROCESSING_INSTRUCTION_NODE : UInt16
  PROCESSING_INSTRUCTION_NODE = 7
  
  public export
  TEXT_NODE : UInt16
  TEXT_NODE = 3
  
  %foreign "browser:lambda:x=>x.baseURI"
  prim__baseURI : AnyPtr -> PrimIO AnyPtr
  
  export
  baseURI : Cast node Node => ToJS Node => (obj : node) -> IO String
  
  %foreign "browser:lambda:x=>x.childNodes"
  prim__childNodes : AnyPtr -> PrimIO AnyPtr
  
  export
  childNodes : Cast node Node => ToJS Node => (obj : node) -> IO NodeList
  
  %foreign "browser:lambda:x=>x.firstChild"
  prim__firstChild : AnyPtr -> PrimIO AnyPtr
  
  export
  firstChild : Cast node Node => ToJS Node => (obj : node) -> IO (Maybe Node)
  
  %foreign "browser:lambda:x=>x.isConnected"
  prim__isConnected : AnyPtr -> PrimIO AnyPtr
  
  export
  isConnected : Cast node Node => ToJS Node => (obj : node) -> IO Bool
  
  %foreign "browser:lambda:x=>x.lastChild"
  prim__lastChild : AnyPtr -> PrimIO AnyPtr
  
  export
  lastChild : Cast node Node => ToJS Node => (obj : node) -> IO (Maybe Node)
  
  %foreign "browser:lambda:x=>x.nextSibling"
  prim__nextSibling : AnyPtr -> PrimIO AnyPtr
  
  export
  nextSibling : Cast node Node => ToJS Node => (obj : node) -> IO (Maybe Node)
  
  %foreign "browser:lambda:x=>x.nodeName"
  prim__nodeName : AnyPtr -> PrimIO AnyPtr
  
  export
  nodeName : Cast node Node => ToJS Node => (obj : node) -> IO String
  
  %foreign "browser:lambda:x=>x.nodeType"
  prim__nodeType : AnyPtr -> PrimIO AnyPtr
  
  export
  nodeType : Cast node Node => ToJS Node => (obj : node) -> IO UInt16
  
  %foreign "browser:lambda:x=>x.ownerDocument"
  prim__ownerDocument : AnyPtr -> PrimIO AnyPtr
  
  export
  ownerDocument :  Cast node Node
                => ToJS Node
                => (obj : node)
                -> IO (Maybe Document)
  
  %foreign "browser:lambda:x=>x.parentElement"
  prim__parentElement : AnyPtr -> PrimIO AnyPtr
  
  export
  parentElement :  Cast node Node
                => ToJS Node
                => (obj : node)
                -> IO (Maybe Element)
  
  %foreign "browser:lambda:x=>x.parentNode"
  prim__parentNode : AnyPtr -> PrimIO AnyPtr
  
  export
  parentNode : Cast node Node => ToJS Node => (obj : node) -> IO (Maybe Node)
  
  %foreign "browser:lambda:x=>x.previousSibling"
  prim__previousSibling : AnyPtr -> PrimIO AnyPtr
  
  export
  previousSibling :  Cast node Node
                  => ToJS Node
                  => (obj : node)
                  -> IO (Maybe Node)
  
  %foreign "browser:lambda:x=>x.nodeValue"
  prim__nodeValue : AnyPtr -> PrimIO AnyPtr
  
  export
  nodeValue : Cast node Node => ToJS Node => (obj : node) -> IO (Maybe String)
  
  %foreign "browser:lambda:(x,v)=>{x.nodeValue = v}"
  prim__setNodeValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setNodeValue :  Cast node Node
               => ToJS Node
               => (obj : node)
               -> (v : Maybe String)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.textContent"
  prim__textContent : AnyPtr -> PrimIO AnyPtr
  
  export
  textContent : Cast node Node => ToJS Node => (obj : node) -> IO (Maybe String)
  
  %foreign "browser:lambda:(x,v)=>{x.textContent = v}"
  prim__setTextContent : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setTextContent :  Cast node Node
                 => ToJS Node
                 => (obj : node)
                 -> (v : Maybe String)
                 -> IO ()

namespace NodeIterator
  
  %foreign "browser:lambda:x=>x.filter"
  prim__filter : AnyPtr -> PrimIO AnyPtr
  
  export
  filter :  Cast nodeIterator NodeIterator
         => ToJS NodeIterator
         => (obj : nodeIterator)
         -> IO (Maybe NodeFilter)
  
  %foreign "browser:lambda:x=>x.pointerBeforeReferenceNode"
  prim__pointerBeforeReferenceNode : AnyPtr -> PrimIO AnyPtr
  
  export
  pointerBeforeReferenceNode :  Cast nodeIterator NodeIterator
                             => ToJS NodeIterator
                             => (obj : nodeIterator)
                             -> IO Bool
  
  %foreign "browser:lambda:x=>x.referenceNode"
  prim__referenceNode : AnyPtr -> PrimIO AnyPtr
  
  export
  referenceNode :  Cast nodeIterator NodeIterator
                => ToJS NodeIterator
                => (obj : nodeIterator)
                -> IO Node
  
  %foreign "browser:lambda:x=>x.root"
  prim__root : AnyPtr -> PrimIO AnyPtr
  
  export
  root :  Cast nodeIterator NodeIterator
       => ToJS NodeIterator
       => (obj : nodeIterator)
       -> IO Node
  
  %foreign "browser:lambda:x=>x.whatToShow"
  prim__whatToShow : AnyPtr -> PrimIO AnyPtr
  
  export
  whatToShow :  Cast nodeIterator NodeIterator
             => ToJS NodeIterator
             => (obj : nodeIterator)
             -> IO UInt32

namespace NodeList
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  export
  length :  Cast nodeList NodeList
         => ToJS NodeList
         => (obj : nodeList)
         -> IO UInt32

namespace Performance
  
  %foreign "browser:lambda:x=>x.timeOrigin"
  prim__timeOrigin : AnyPtr -> PrimIO AnyPtr
  
  export
  timeOrigin :  Cast performance Performance
             => ToJS Performance
             => (obj : performance)
             -> IO DOMHighResTimeStamp

namespace ProcessingInstruction
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr
  
  export
  target :  Cast processingInstruction ProcessingInstruction
         => ToJS ProcessingInstruction
         => (obj : processingInstruction)
         -> IO String

namespace Range
  
  public export
  END_TO_END : UInt16
  END_TO_END = 2
  
  public export
  END_TO_START : UInt16
  END_TO_START = 3
  
  public export
  START_TO_END : UInt16
  START_TO_END = 1
  
  public export
  START_TO_START : UInt16
  START_TO_START = 0o0
  
  %foreign "browser:lambda:x=>x.commonAncestorContainer"
  prim__commonAncestorContainer : AnyPtr -> PrimIO AnyPtr
  
  export
  commonAncestorContainer :  Cast range Range
                          => ToJS Range
                          => (obj : range)
                          -> IO Node

namespace ShadowRoot
  
  %foreign "browser:lambda:x=>x.host"
  prim__host : AnyPtr -> PrimIO AnyPtr
  
  export
  host :  Cast shadowRoot ShadowRoot
       => ToJS ShadowRoot
       => (obj : shadowRoot)
       -> IO Element
  
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : AnyPtr -> PrimIO AnyPtr
  
  export
  mode :  Cast shadowRoot ShadowRoot
       => ToJS ShadowRoot
       => (obj : shadowRoot)
       -> IO ShadowRootMode
  
  %foreign "browser:lambda:x=>x.onslotchange"
  prim__onslotchange : AnyPtr -> PrimIO AnyPtr
  
  export
  onslotchange :  Cast shadowRoot ShadowRoot
               => ToJS ShadowRoot
               => (obj : shadowRoot)
               -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onslotchange = v}"
  prim__setOnslotchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnslotchange :  Cast eventHandler EventHandler
                  => ToJS EventHandler
                  => Cast shadowRoot ShadowRoot
                  => ToJS ShadowRoot
                  => (obj : shadowRoot)
                  -> (v : eventHandler)
                  -> IO ()

namespace Text
  
  %foreign "browser:lambda:x=>x.wholeText"
  prim__wholeText : AnyPtr -> PrimIO AnyPtr
  
  export
  wholeText : Cast text Text => ToJS Text => (obj : text) -> IO String

namespace TreeWalker
  
  %foreign "browser:lambda:x=>x.filter"
  prim__filter : AnyPtr -> PrimIO AnyPtr
  
  export
  filter :  Cast treeWalker TreeWalker
         => ToJS TreeWalker
         => (obj : treeWalker)
         -> IO (Maybe NodeFilter)
  
  %foreign "browser:lambda:x=>x.root"
  prim__root : AnyPtr -> PrimIO AnyPtr
  
  export
  root :  Cast treeWalker TreeWalker
       => ToJS TreeWalker
       => (obj : treeWalker)
       -> IO Node
  
  %foreign "browser:lambda:x=>x.whatToShow"
  prim__whatToShow : AnyPtr -> PrimIO AnyPtr
  
  export
  whatToShow :  Cast treeWalker TreeWalker
             => ToJS TreeWalker
             => (obj : treeWalker)
             -> IO UInt32
  
  %foreign "browser:lambda:x=>x.currentNode"
  prim__currentNode : AnyPtr -> PrimIO AnyPtr
  
  export
  currentNode :  Cast treeWalker TreeWalker
              => ToJS TreeWalker
              => (obj : treeWalker)
              -> IO Node
  
  %foreign "browser:lambda:(x,v)=>{x.currentNode = v}"
  prim__setCurrentNode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCurrentNode :  Cast node Node
                 => ToJS Node
                 => Cast treeWalker TreeWalker
                 => ToJS TreeWalker
                 => (obj : treeWalker)
                 -> (v : node)
                 -> IO ()

namespace XPathResult
  
  public export
  ANY_TYPE : UInt16
  ANY_TYPE = 0o0
  
  public export
  ANY_UNORDERED_NODE_TYPE : UInt16
  ANY_UNORDERED_NODE_TYPE = 8
  
  public export
  BOOLEAN_TYPE : UInt16
  BOOLEAN_TYPE = 3
  
  public export
  FIRST_ORDERED_NODE_TYPE : UInt16
  FIRST_ORDERED_NODE_TYPE = 9
  
  public export
  NUMBER_TYPE : UInt16
  NUMBER_TYPE = 1
  
  public export
  ORDERED_NODE_ITERATOR_TYPE : UInt16
  ORDERED_NODE_ITERATOR_TYPE = 5
  
  public export
  ORDERED_NODE_SNAPSHOT_TYPE : UInt16
  ORDERED_NODE_SNAPSHOT_TYPE = 7
  
  public export
  STRING_TYPE : UInt16
  STRING_TYPE = 2
  
  public export
  UNORDERED_NODE_ITERATOR_TYPE : UInt16
  UNORDERED_NODE_ITERATOR_TYPE = 4
  
  public export
  UNORDERED_NODE_SNAPSHOT_TYPE : UInt16
  UNORDERED_NODE_SNAPSHOT_TYPE = 6
  
  %foreign "browser:lambda:x=>x.booleanValue"
  prim__booleanValue : AnyPtr -> PrimIO AnyPtr
  
  export
  booleanValue :  Cast xPathResult XPathResult
               => ToJS XPathResult
               => (obj : xPathResult)
               -> IO Bool
  
  %foreign "browser:lambda:x=>x.invalidIteratorState"
  prim__invalidIteratorState : AnyPtr -> PrimIO AnyPtr
  
  export
  invalidIteratorState :  Cast xPathResult XPathResult
                       => ToJS XPathResult
                       => (obj : xPathResult)
                       -> IO Bool
  
  %foreign "browser:lambda:x=>x.numberValue"
  prim__numberValue : AnyPtr -> PrimIO AnyPtr
  
  export
  numberValue :  Cast xPathResult XPathResult
              => ToJS XPathResult
              => (obj : xPathResult)
              -> IO Double
  
  %foreign "browser:lambda:x=>x.resultType"
  prim__resultType : AnyPtr -> PrimIO AnyPtr
  
  export
  resultType :  Cast xPathResult XPathResult
             => ToJS XPathResult
             => (obj : xPathResult)
             -> IO UInt16
  
  %foreign "browser:lambda:x=>x.singleNodeValue"
  prim__singleNodeValue : AnyPtr -> PrimIO AnyPtr
  
  export
  singleNodeValue :  Cast xPathResult XPathResult
                  => ToJS XPathResult
                  => (obj : xPathResult)
                  -> IO (Maybe Node)
  
  %foreign "browser:lambda:x=>x.snapshotLength"
  prim__snapshotLength : AnyPtr -> PrimIO AnyPtr
  
  export
  snapshotLength :  Cast xPathResult XPathResult
                 => ToJS XPathResult
                 => (obj : xPathResult)
                 -> IO UInt32
  
  %foreign "browser:lambda:x=>x.stringValue"
  prim__stringValue : AnyPtr -> PrimIO AnyPtr
  
  export
  stringValue :  Cast xPathResult XPathResult
              => ToJS XPathResult
              => (obj : xPathResult)
              -> IO String

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace DocumentOrShadowRoot
  
  %foreign "browser:lambda:x=>x.styleSheets"
  prim__styleSheets : AnyPtr -> PrimIO AnyPtr
  
  export
  styleSheets :  Cast documentOrShadowRoot DocumentOrShadowRoot
              => ToJS DocumentOrShadowRoot
              => (obj : documentOrShadowRoot)
              -> IO StyleSheetList

namespace NonDocumentTypeChildNode
  
  %foreign "browser:lambda:x=>x.nextElementSibling"
  prim__nextElementSibling : AnyPtr -> PrimIO AnyPtr
  
  export
  nextElementSibling :  Cast nonDocumentTypeChildNode NonDocumentTypeChildNode
                     => ToJS NonDocumentTypeChildNode
                     => (obj : nonDocumentTypeChildNode)
                     -> IO (Maybe Element)
  
  %foreign "browser:lambda:x=>x.previousElementSibling"
  prim__previousElementSibling : AnyPtr -> PrimIO AnyPtr
  
  export
  previousElementSibling :  Cast nonDocumentTypeChildNode NonDocumentTypeChildNode
                         => ToJS NonDocumentTypeChildNode
                         => (obj : nonDocumentTypeChildNode)
                         -> IO (Maybe Element)

namespace ParentNode
  
  %foreign "browser:lambda:x=>x.childElementCount"
  prim__childElementCount : AnyPtr -> PrimIO AnyPtr
  
  export
  childElementCount :  Cast parentNode ParentNode
                    => ToJS ParentNode
                    => (obj : parentNode)
                    -> IO UInt32
  
  %foreign "browser:lambda:x=>x.children"
  prim__children : AnyPtr -> PrimIO AnyPtr
  
  export
  children :  Cast parentNode ParentNode
           => ToJS ParentNode
           => (obj : parentNode)
           -> IO HTMLCollection
  
  %foreign "browser:lambda:x=>x.firstElementChild"
  prim__firstElementChild : AnyPtr -> PrimIO AnyPtr
  
  export
  firstElementChild :  Cast parentNode ParentNode
                    => ToJS ParentNode
                    => (obj : parentNode)
                    -> IO (Maybe Element)
  
  %foreign "browser:lambda:x=>x.lastElementChild"
  prim__lastElementChild : AnyPtr -> PrimIO AnyPtr
  
  export
  lastElementChild :  Cast parentNode ParentNode
                   => ToJS ParentNode
                   => (obj : parentNode)
                   -> IO (Maybe Element)

namespace Slottable
  
  %foreign "browser:lambda:x=>x.assignedSlot"
  prim__assignedSlot : AnyPtr -> PrimIO AnyPtr
  
  export
  assignedSlot :  Cast slottable Slottable
               => ToJS Slottable
               => (obj : slottable)
               -> IO (Maybe HTMLSlotElement)

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace AddEventListenerOptions
  
  %foreign "browser:lambda:x=>x.once"
  prim__once : AnyPtr -> PrimIO AnyPtr
  
  export
  once :  Cast addEventListenerOptions AddEventListenerOptions
       => ToJS AddEventListenerOptions
       => (obj : addEventListenerOptions)
       -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.once = v}"
  prim__setOnce : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnce :  Cast addEventListenerOptions AddEventListenerOptions
          => ToJS AddEventListenerOptions
          => (obj : addEventListenerOptions)
          -> (v : Bool)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.passive"
  prim__passive : AnyPtr -> PrimIO AnyPtr
  
  export
  passive :  Cast addEventListenerOptions AddEventListenerOptions
          => ToJS AddEventListenerOptions
          => (obj : addEventListenerOptions)
          -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.passive = v}"
  prim__setPassive : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setPassive :  Cast addEventListenerOptions AddEventListenerOptions
             => ToJS AddEventListenerOptions
             => (obj : addEventListenerOptions)
             -> (v : Bool)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.signal"
  prim__signal : AnyPtr -> PrimIO AnyPtr
  
  export
  signal :  Cast addEventListenerOptions AddEventListenerOptions
         => ToJS AddEventListenerOptions
         => (obj : addEventListenerOptions)
         -> IO AbortSignal
  
  %foreign "browser:lambda:(x,v)=>{x.signal = v}"
  prim__setSignal : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSignal :  Cast abortSignal AbortSignal
            => ToJS AbortSignal
            => Cast addEventListenerOptions AddEventListenerOptions
            => ToJS AddEventListenerOptions
            => (obj : addEventListenerOptions)
            -> (v : abortSignal)
            -> IO ()

namespace CustomEventInit
  
  %foreign "browser:lambda:x=>x.detail"
  prim__detail : AnyPtr -> PrimIO AnyPtr
  
  export
  detail :  Cast customEventInit CustomEventInit
         => ToJS CustomEventInit
         => (obj : customEventInit)
         -> IO JSAny
  
  %foreign "browser:lambda:(x,v)=>{x.detail = v}"
  prim__setDetail : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDetail :  Cast customEventInit CustomEventInit
            => ToJS CustomEventInit
            => (obj : customEventInit)
            -> (v : JSAny)
            -> IO ()

namespace ElementCreationOptions
  
  %foreign "browser:lambda:x=>x.is"
  prim__is : AnyPtr -> PrimIO AnyPtr
  
  export
  is :  Cast elementCreationOptions ElementCreationOptions
     => ToJS ElementCreationOptions
     => (obj : elementCreationOptions)
     -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.is = v}"
  prim__setIs : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setIs :  Cast elementCreationOptions ElementCreationOptions
        => ToJS ElementCreationOptions
        => (obj : elementCreationOptions)
        -> (v : String)
        -> IO ()

namespace EventInit
  
  %foreign "browser:lambda:x=>x.bubbles"
  prim__bubbles : AnyPtr -> PrimIO AnyPtr
  
  export
  bubbles :  Cast eventInit EventInit
          => ToJS EventInit
          => (obj : eventInit)
          -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.bubbles = v}"
  prim__setBubbles : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setBubbles :  Cast eventInit EventInit
             => ToJS EventInit
             => (obj : eventInit)
             -> (v : Bool)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.cancelable"
  prim__cancelable : AnyPtr -> PrimIO AnyPtr
  
  export
  cancelable :  Cast eventInit EventInit
             => ToJS EventInit
             => (obj : eventInit)
             -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.cancelable = v}"
  prim__setCancelable : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCancelable :  Cast eventInit EventInit
                => ToJS EventInit
                => (obj : eventInit)
                -> (v : Bool)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.composed"
  prim__composed : AnyPtr -> PrimIO AnyPtr
  
  export
  composed :  Cast eventInit EventInit
           => ToJS EventInit
           => (obj : eventInit)
           -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.composed = v}"
  prim__setComposed : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setComposed :  Cast eventInit EventInit
              => ToJS EventInit
              => (obj : eventInit)
              -> (v : Bool)
              -> IO ()

namespace EventListenerOptions
  
  %foreign "browser:lambda:x=>x.capture"
  prim__capture : AnyPtr -> PrimIO AnyPtr
  
  export
  capture :  Cast eventListenerOptions EventListenerOptions
          => ToJS EventListenerOptions
          => (obj : eventListenerOptions)
          -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.capture = v}"
  prim__setCapture : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCapture :  Cast eventListenerOptions EventListenerOptions
             => ToJS EventListenerOptions
             => (obj : eventListenerOptions)
             -> (v : Bool)
             -> IO ()

namespace GetRootNodeOptions
  
  %foreign "browser:lambda:x=>x.composed"
  prim__composed : AnyPtr -> PrimIO AnyPtr
  
  export
  composed :  Cast getRootNodeOptions GetRootNodeOptions
           => ToJS GetRootNodeOptions
           => (obj : getRootNodeOptions)
           -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.composed = v}"
  prim__setComposed : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setComposed :  Cast getRootNodeOptions GetRootNodeOptions
              => ToJS GetRootNodeOptions
              => (obj : getRootNodeOptions)
              -> (v : Bool)
              -> IO ()

namespace MutationObserverInit
  
  %foreign "browser:lambda:x=>x.attributeFilter"
  prim__attributeFilter : AnyPtr -> PrimIO AnyPtr
  
  export
  attributeFilter :  Cast mutationObserverInit MutationObserverInit
                  => ToJS MutationObserverInit
                  => (obj : mutationObserverInit)
                  -> IO (JSArray String)
  
  %foreign "browser:lambda:(x,v)=>{x.attributeFilter = v}"
  prim__setAttributeFilter : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAttributeFilter :  Cast mutationObserverInit MutationObserverInit
                     => ToJS MutationObserverInit
                     => (obj : mutationObserverInit)
                     -> (v : JSArray String)
                     -> IO ()
  
  %foreign "browser:lambda:x=>x.attributeOldValue"
  prim__attributeOldValue : AnyPtr -> PrimIO AnyPtr
  
  export
  attributeOldValue :  Cast mutationObserverInit MutationObserverInit
                    => ToJS MutationObserverInit
                    => (obj : mutationObserverInit)
                    -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.attributeOldValue = v}"
  prim__setAttributeOldValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAttributeOldValue :  Cast mutationObserverInit MutationObserverInit
                       => ToJS MutationObserverInit
                       => (obj : mutationObserverInit)
                       -> (v : Bool)
                       -> IO ()
  
  %foreign "browser:lambda:x=>x.attributes"
  prim__attributes : AnyPtr -> PrimIO AnyPtr
  
  export
  attributes :  Cast mutationObserverInit MutationObserverInit
             => ToJS MutationObserverInit
             => (obj : mutationObserverInit)
             -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.attributes = v}"
  prim__setAttributes : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAttributes :  Cast mutationObserverInit MutationObserverInit
                => ToJS MutationObserverInit
                => (obj : mutationObserverInit)
                -> (v : Bool)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.characterData"
  prim__characterData : AnyPtr -> PrimIO AnyPtr
  
  export
  characterData :  Cast mutationObserverInit MutationObserverInit
                => ToJS MutationObserverInit
                => (obj : mutationObserverInit)
                -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.characterData = v}"
  prim__setCharacterData : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCharacterData :  Cast mutationObserverInit MutationObserverInit
                   => ToJS MutationObserverInit
                   => (obj : mutationObserverInit)
                   -> (v : Bool)
                   -> IO ()
  
  %foreign "browser:lambda:x=>x.characterDataOldValue"
  prim__characterDataOldValue : AnyPtr -> PrimIO AnyPtr
  
  export
  characterDataOldValue :  Cast mutationObserverInit MutationObserverInit
                        => ToJS MutationObserverInit
                        => (obj : mutationObserverInit)
                        -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.characterDataOldValue = v}"
  prim__setCharacterDataOldValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCharacterDataOldValue :  Cast mutationObserverInit MutationObserverInit
                           => ToJS MutationObserverInit
                           => (obj : mutationObserverInit)
                           -> (v : Bool)
                           -> IO ()
  
  %foreign "browser:lambda:x=>x.childList"
  prim__childList : AnyPtr -> PrimIO AnyPtr
  
  export
  childList :  Cast mutationObserverInit MutationObserverInit
            => ToJS MutationObserverInit
            => (obj : mutationObserverInit)
            -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.childList = v}"
  prim__setChildList : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setChildList :  Cast mutationObserverInit MutationObserverInit
               => ToJS MutationObserverInit
               => (obj : mutationObserverInit)
               -> (v : Bool)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.subtree"
  prim__subtree : AnyPtr -> PrimIO AnyPtr
  
  export
  subtree :  Cast mutationObserverInit MutationObserverInit
          => ToJS MutationObserverInit
          => (obj : mutationObserverInit)
          -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.subtree = v}"
  prim__setSubtree : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSubtree :  Cast mutationObserverInit MutationObserverInit
             => ToJS MutationObserverInit
             => (obj : mutationObserverInit)
             -> (v : Bool)
             -> IO ()

namespace ShadowRootInit
  
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : AnyPtr -> PrimIO AnyPtr
  
  export
  mode :  Cast shadowRootInit ShadowRootInit
       => ToJS ShadowRootInit
       => (obj : shadowRootInit)
       -> IO ShadowRootMode
  
  %foreign "browser:lambda:(x,v)=>{x.mode = v}"
  prim__setMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setMode :  Cast shadowRootInit ShadowRootInit
          => ToJS ShadowRootInit
          => Cast shadowRootMode ShadowRootMode
          => ToJS ShadowRootMode
          => (obj : shadowRootInit)
          -> (v : shadowRootMode)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.delegatesFocus"
  prim__delegatesFocus : AnyPtr -> PrimIO AnyPtr
  
  export
  delegatesFocus :  Cast shadowRootInit ShadowRootInit
                 => ToJS ShadowRootInit
                 => (obj : shadowRootInit)
                 -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.delegatesFocus = v}"
  prim__setDelegatesFocus : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDelegatesFocus :  Cast shadowRootInit ShadowRootInit
                    => ToJS ShadowRootInit
                    => (obj : shadowRootInit)
                    -> (v : Bool)
                    -> IO ()

namespace StaticRangeInit
  
  %foreign "browser:lambda:x=>x.endContainer"
  prim__endContainer : AnyPtr -> PrimIO AnyPtr
  
  export
  endContainer :  Cast staticRangeInit StaticRangeInit
               => ToJS StaticRangeInit
               => (obj : staticRangeInit)
               -> IO Node
  
  %foreign "browser:lambda:(x,v)=>{x.endContainer = v}"
  prim__setEndContainer : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setEndContainer :  Cast node Node
                  => ToJS Node
                  => Cast staticRangeInit StaticRangeInit
                  => ToJS StaticRangeInit
                  => (obj : staticRangeInit)
                  -> (v : node)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.endOffset"
  prim__endOffset : AnyPtr -> PrimIO AnyPtr
  
  export
  endOffset :  Cast staticRangeInit StaticRangeInit
            => ToJS StaticRangeInit
            => (obj : staticRangeInit)
            -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.endOffset = v}"
  prim__setEndOffset : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setEndOffset :  Cast staticRangeInit StaticRangeInit
               => ToJS StaticRangeInit
               => (obj : staticRangeInit)
               -> (v : UInt32)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.startContainer"
  prim__startContainer : AnyPtr -> PrimIO AnyPtr
  
  export
  startContainer :  Cast staticRangeInit StaticRangeInit
                 => ToJS StaticRangeInit
                 => (obj : staticRangeInit)
                 -> IO Node
  
  %foreign "browser:lambda:(x,v)=>{x.startContainer = v}"
  prim__setStartContainer : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setStartContainer :  Cast node Node
                    => ToJS Node
                    => Cast staticRangeInit StaticRangeInit
                    => ToJS StaticRangeInit
                    => (obj : staticRangeInit)
                    -> (v : node)
                    -> IO ()
  
  %foreign "browser:lambda:x=>x.startOffset"
  prim__startOffset : AnyPtr -> PrimIO AnyPtr
  
  export
  startOffset :  Cast staticRangeInit StaticRangeInit
              => ToJS StaticRangeInit
              => (obj : staticRangeInit)
              -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.startOffset = v}"
  prim__setStartOffset : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setStartOffset :  Cast staticRangeInit StaticRangeInit
                 => ToJS StaticRangeInit
                 => (obj : staticRangeInit)
                 -> (v : UInt32)
                 -> IO ()

--------------------------------------------------------------------------------
--          Callback Interfaces
--------------------------------------------------------------------------------

namespace NodeFilter
  
  public export
  FILTER_ACCEPT : UInt16
  FILTER_ACCEPT = 1
  
  public export
  FILTER_REJECT : UInt16
  FILTER_REJECT = 2
  
  public export
  FILTER_SKIP : UInt16
  FILTER_SKIP = 3
  
  public export
  SHOW_ALL : UInt32
  SHOW_ALL = 0xFFFFFFFF
  
  public export
  SHOW_ATTRIBUTE : UInt32
  SHOW_ATTRIBUTE = 0x2
  
  public export
  SHOW_CDATA_SECTION : UInt32
  SHOW_CDATA_SECTION = 0x8
  
  public export
  SHOW_COMMENT : UInt32
  SHOW_COMMENT = 0x80
  
  public export
  SHOW_DOCUMENT : UInt32
  SHOW_DOCUMENT = 0x100
  
  public export
  SHOW_DOCUMENT_FRAGMENT : UInt32
  SHOW_DOCUMENT_FRAGMENT = 0x400
  
  public export
  SHOW_DOCUMENT_TYPE : UInt32
  SHOW_DOCUMENT_TYPE = 0x200
  
  public export
  SHOW_ELEMENT : UInt32
  SHOW_ELEMENT = 0x1
  
  public export
  SHOW_ENTITY : UInt32
  SHOW_ENTITY = 0x20
  
  public export
  SHOW_ENTITY_REFERENCE : UInt32
  SHOW_ENTITY_REFERENCE = 0x10
  
  public export
  SHOW_NOTATION : UInt32
  SHOW_NOTATION = 0x800
  
  public export
  SHOW_PROCESSING_INSTRUCTION : UInt32
  SHOW_PROCESSING_INSTRUCTION = 0x40
  
  public export
  SHOW_TEXT : UInt32
  SHOW_TEXT = 0x4


--------------------------------------------------------------------------------
--          Casts
--------------------------------------------------------------------------------

export
Cast AbortSignal EventTarget where
  cast = believe_me

export
Cast AddEventListenerOptions EventListenerOptions where
  cast = believe_me

export
Cast Attr Node where
  cast = believe_me

export
Cast CDATASection Text where
  cast = believe_me

export
Cast CharacterData ChildNode where
  cast = believe_me

export
Cast CharacterData Node where
  cast = believe_me

export
Cast CharacterData NonDocumentTypeChildNode where
  cast = believe_me

export
Cast Comment CharacterData where
  cast = believe_me

export
Cast CustomEvent Event where
  cast = believe_me

export
Cast CustomEventInit EventInit where
  cast = believe_me

export
Cast Document DocumentOrShadowRoot where
  cast = believe_me

export
Cast Document Node where
  cast = believe_me

export
Cast Document NonElementParentNode where
  cast = believe_me

export
Cast Document ParentNode where
  cast = believe_me

export
Cast Document XPathEvaluatorBase where
  cast = believe_me

export
Cast DocumentFragment Node where
  cast = believe_me

export
Cast DocumentFragment NonElementParentNode where
  cast = believe_me

export
Cast DocumentFragment ParentNode where
  cast = believe_me

export
Cast DocumentType ChildNode where
  cast = believe_me

export
Cast DocumentType Node where
  cast = believe_me

export
Cast Element ChildNode where
  cast = believe_me

export
Cast Element Node where
  cast = believe_me

export
Cast Element NonDocumentTypeChildNode where
  cast = believe_me

export
Cast Element ParentNode where
  cast = believe_me

export
Cast Element Slottable where
  cast = believe_me

export
Cast Node EventTarget where
  cast = believe_me

export
Cast Performance EventTarget where
  cast = believe_me

export
Cast ProcessingInstruction CharacterData where
  cast = believe_me

export
Cast Range AbstractRange where
  cast = believe_me

export
Cast ShadowRoot DocumentFragment where
  cast = believe_me

export
Cast ShadowRoot DocumentOrShadowRoot where
  cast = believe_me

export
Cast StaticRange AbstractRange where
  cast = believe_me

export
Cast Text CharacterData where
  cast = believe_me

export
Cast Text Slottable where
  cast = believe_me

export
Cast XMLDocument Document where
  cast = believe_me

export
Cast XPathEvaluator XPathEvaluatorBase where
  cast = believe_me