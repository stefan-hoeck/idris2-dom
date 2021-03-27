module Web.Dom
import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace AbortController
  
  public export
  JSVal AbortController where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.signal"
  prim__signal : AnyPtr -> PrimIO AnyPtr

  export
  signal : (obj : AbortController) -> IO AbortSignal

namespace AbortSignal
  
  public export
  JSVal AbortSignal where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.aborted"
  prim__aborted : AnyPtr -> PrimIO AnyPtr

  export
  aborted : (obj : AbortSignal) -> IO Bool
  
  %foreign "browser:lambda:x=>x.onabort"
  prim__onabort : AnyPtr -> PrimIO AnyPtr

  export
  onabort : (obj : AbortSignal) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onabort  = v}"
  prim__setOnabort : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnabort : (obj : AbortSignal) -> (v : EventHandler) -> IO ()

namespace AbstractRange
  
  public export
  JSVal AbstractRange where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.collapsed"
  prim__collapsed : AnyPtr -> PrimIO AnyPtr

  export
  collapsed : (obj : AbstractRange) -> IO Bool
  
  %foreign "browser:lambda:x=>x.endContainer"
  prim__endContainer : AnyPtr -> PrimIO AnyPtr

  export
  endContainer : (obj : AbstractRange) -> IO Node
  
  %foreign "browser:lambda:x=>x.endOffset"
  prim__endOffset : AnyPtr -> PrimIO AnyPtr

  export
  endOffset : (obj : AbstractRange) -> IO UInt32
  
  %foreign "browser:lambda:x=>x.startContainer"
  prim__startContainer : AnyPtr -> PrimIO AnyPtr

  export
  startContainer : (obj : AbstractRange) -> IO Node
  
  %foreign "browser:lambda:x=>x.startOffset"
  prim__startOffset : AnyPtr -> PrimIO AnyPtr

  export
  startOffset : (obj : AbstractRange) -> IO UInt32

namespace Attr
  
  public export
  JSVal Attr where
    parents =  [ Node , EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.localName"
  prim__localName : AnyPtr -> PrimIO AnyPtr

  export
  localName : (obj : Attr) -> IO String
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : Attr) -> IO String
  
  %foreign "browser:lambda:x=>x.namespaceURI"
  prim__namespaceURI : AnyPtr -> PrimIO AnyPtr

  export
  namespaceURI : (obj : Attr) -> IO (Maybe String)
  
  %foreign "browser:lambda:x=>x.ownerElement"
  prim__ownerElement : AnyPtr -> PrimIO AnyPtr

  export
  ownerElement : (obj : Attr) -> IO (Maybe Element)
  
  %foreign "browser:lambda:x=>x.prefix"
  prim__prefix_ : AnyPtr -> PrimIO AnyPtr

  export
  prefix_ : (obj : Attr) -> IO (Maybe String)
  
  %foreign "browser:lambda:x=>x.specified"
  prim__specified : AnyPtr -> PrimIO AnyPtr

  export
  specified : (obj : Attr) -> IO Bool
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : Attr) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue : (obj : Attr) -> (v : String) -> IO ()

namespace CDATASection
  
  public export
  JSVal CDATASection where
    parents =  [ Text , CharacterData , Node , EventTarget , JSObject ]

    mixins =  [ ChildNode , NonDocumentTypeChildNode , Slottable ]

namespace CharacterData
  
  public export
  JSVal CharacterData where
    parents =  [ Node , EventTarget , JSObject ]

    mixins =  [ ChildNode , NonDocumentTypeChildNode ]
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : CharacterData) -> IO UInt32
  
  %foreign "browser:lambda:x=>x.data"
  prim__data_ : AnyPtr -> PrimIO AnyPtr

  export
  data_ : (obj : CharacterData) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.data  = v}"
  prim__setData : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setData : (obj : CharacterData) -> (v : String) -> IO ()

namespace Comment
  
  public export
  JSVal Comment where
    parents =  [ CharacterData , Node , EventTarget , JSObject ]

    mixins =  [ ChildNode , NonDocumentTypeChildNode ]

namespace CustomEvent
  
  public export
  JSVal CustomEvent where
    parents =  [ Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.detail"
  prim__detail : AnyPtr -> PrimIO AnyPtr

  export
  detail : (obj : CustomEvent) -> IO JSAny

namespace DOMImplementation
  
  public export
  JSVal DOMImplementation where
    parents =  [ JSObject ]

    mixins =  []

namespace DOMTokenList
  
  public export
  JSVal DOMTokenList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : DOMTokenList) -> IO UInt32

namespace Document
  
  public export
  JSVal Document where
    parents =  [ Node , EventTarget , JSObject ]

    mixins =  [ DocumentAndElementEventHandlers
              , DocumentOrShadowRoot
              , GlobalEventHandlers
              , NonElementParentNode
              , ParentNode
              , XPathEvaluatorBase
              ]
  
  %foreign "browser:lambda:x=>x.URL"
  prim__URL : AnyPtr -> PrimIO AnyPtr

  export
  URL : (obj : Document) -> IO String
  
  %foreign "browser:lambda:x=>x.all"
  prim__all : AnyPtr -> PrimIO AnyPtr

  export
  all : (obj : Document) -> IO HTMLAllCollection
  
  %foreign "browser:lambda:x=>x.anchors"
  prim__anchors : AnyPtr -> PrimIO AnyPtr

  export
  anchors : (obj : Document) -> IO HTMLCollection
  
  %foreign "browser:lambda:x=>x.applets"
  prim__applets : AnyPtr -> PrimIO AnyPtr

  export
  applets : (obj : Document) -> IO HTMLCollection
  
  %foreign "browser:lambda:x=>x.characterSet"
  prim__characterSet : AnyPtr -> PrimIO AnyPtr

  export
  characterSet : (obj : Document) -> IO String
  
  %foreign "browser:lambda:x=>x.charset"
  prim__charset : AnyPtr -> PrimIO AnyPtr

  export
  charset : (obj : Document) -> IO String
  
  %foreign "browser:lambda:x=>x.compatMode"
  prim__compatMode : AnyPtr -> PrimIO AnyPtr

  export
  compatMode : (obj : Document) -> IO String
  
  %foreign "browser:lambda:x=>x.contentType"
  prim__contentType : AnyPtr -> PrimIO AnyPtr

  export
  contentType : (obj : Document) -> IO String
  
  %foreign "browser:lambda:x=>x.currentScript"
  prim__currentScript : AnyPtr -> PrimIO AnyPtr

  export
  currentScript : (obj : Document) -> IO (Maybe HTMLOrSVGScriptElement)
  
  %foreign "browser:lambda:x=>x.defaultView"
  prim__defaultView : AnyPtr -> PrimIO AnyPtr

  export
  defaultView : (obj : Document) -> IO (Maybe WindowProxy)
  
  %foreign "browser:lambda:x=>x.doctype"
  prim__doctype : AnyPtr -> PrimIO AnyPtr

  export
  doctype : (obj : Document) -> IO (Maybe DocumentType)
  
  %foreign "browser:lambda:x=>x.documentElement"
  prim__documentElement : AnyPtr -> PrimIO AnyPtr

  export
  documentElement : (obj : Document) -> IO (Maybe Element)
  
  %foreign "browser:lambda:x=>x.documentURI"
  prim__documentURI : AnyPtr -> PrimIO AnyPtr

  export
  documentURI : (obj : Document) -> IO String
  
  %foreign "browser:lambda:x=>x.embeds"
  prim__embeds : AnyPtr -> PrimIO AnyPtr

  export
  embeds : (obj : Document) -> IO HTMLCollection
  
  %foreign "browser:lambda:x=>x.forms"
  prim__forms : AnyPtr -> PrimIO AnyPtr

  export
  forms : (obj : Document) -> IO HTMLCollection
  
  %foreign "browser:lambda:x=>x.head"
  prim__head : AnyPtr -> PrimIO AnyPtr

  export
  head : (obj : Document) -> IO (Maybe HTMLHeadElement)
  
  %foreign "browser:lambda:x=>x.hidden"
  prim__hidden : AnyPtr -> PrimIO AnyPtr

  export
  hidden : (obj : Document) -> IO Bool
  
  %foreign "browser:lambda:x=>x.images"
  prim__images : AnyPtr -> PrimIO AnyPtr

  export
  images : (obj : Document) -> IO HTMLCollection
  
  %foreign "browser:lambda:x=>x.implementation"
  prim__implementation_ : AnyPtr -> PrimIO AnyPtr

  export
  implementation_ : (obj : Document) -> IO DOMImplementation
  
  %foreign "browser:lambda:x=>x.inputEncoding"
  prim__inputEncoding : AnyPtr -> PrimIO AnyPtr

  export
  inputEncoding : (obj : Document) -> IO String
  
  %foreign "browser:lambda:x=>x.lastModified"
  prim__lastModified : AnyPtr -> PrimIO AnyPtr

  export
  lastModified : (obj : Document) -> IO String
  
  %foreign "browser:lambda:x=>x.links"
  prim__links : AnyPtr -> PrimIO AnyPtr

  export
  links : (obj : Document) -> IO HTMLCollection
  
  %foreign "browser:lambda:x=>x.location"
  prim__location : AnyPtr -> PrimIO AnyPtr

  export
  location : (obj : Document) -> IO (Maybe Location)
  
  %foreign "browser:lambda:x=>x.plugins"
  prim__plugins : AnyPtr -> PrimIO AnyPtr

  export
  plugins : (obj : Document) -> IO HTMLCollection
  
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : AnyPtr -> PrimIO AnyPtr

  export
  readyState : (obj : Document) -> IO DocumentReadyState
  
  %foreign "browser:lambda:x=>x.referrer"
  prim__referrer : AnyPtr -> PrimIO AnyPtr

  export
  referrer : (obj : Document) -> IO String
  
  %foreign "browser:lambda:x=>x.rootElement"
  prim__rootElement : AnyPtr -> PrimIO AnyPtr

  export
  rootElement : (obj : Document) -> IO (Maybe SVGSVGElement)
  
  %foreign "browser:lambda:x=>x.scripts"
  prim__scripts : AnyPtr -> PrimIO AnyPtr

  export
  scripts : (obj : Document) -> IO HTMLCollection
  
  %foreign "browser:lambda:x=>x.timeline"
  prim__timeline : AnyPtr -> PrimIO AnyPtr

  export
  timeline : (obj : Document) -> IO DocumentTimeline
  
  %foreign "browser:lambda:x=>x.visibilityState"
  prim__visibilityState : AnyPtr -> PrimIO AnyPtr

  export
  visibilityState : (obj : Document) -> IO VisibilityState
  
  %foreign "browser:lambda:x=>x.alinkColor"
  prim__alinkColor : AnyPtr -> PrimIO AnyPtr

  export
  alinkColor : (obj : Document) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.alinkColor  = v}"
  prim__setAlinkColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlinkColor : (obj : Document) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.bgColor"
  prim__bgColor : AnyPtr -> PrimIO AnyPtr

  export
  bgColor : (obj : Document) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.bgColor  = v}"
  prim__setBgColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBgColor : (obj : Document) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.body"
  prim__body : AnyPtr -> PrimIO AnyPtr

  export
  body : (obj : Document) -> IO (Maybe HTMLElement)

  %foreign "browser:lambda:(x,v)=>{x.body  = v}"
  prim__setBody : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBody : (obj : Document) -> (v : Maybe HTMLElement) -> IO ()
  
  %foreign "browser:lambda:x=>x.cookie"
  prim__cookie : AnyPtr -> PrimIO AnyPtr

  export
  cookie : (obj : Document) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.cookie  = v}"
  prim__setCookie : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCookie : (obj : Document) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.designMode"
  prim__designMode : AnyPtr -> PrimIO AnyPtr

  export
  designMode : (obj : Document) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.designMode  = v}"
  prim__setDesignMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDesignMode : (obj : Document) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.dir"
  prim__dir : AnyPtr -> PrimIO AnyPtr

  export
  dir : (obj : Document) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.dir  = v}"
  prim__setDir : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDir : (obj : Document) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.domain"
  prim__domain : AnyPtr -> PrimIO AnyPtr

  export
  domain : (obj : Document) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.domain  = v}"
  prim__setDomain : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDomain : (obj : Document) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.fgColor"
  prim__fgColor : AnyPtr -> PrimIO AnyPtr

  export
  fgColor : (obj : Document) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.fgColor  = v}"
  prim__setFgColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFgColor : (obj : Document) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.linkColor"
  prim__linkColor : AnyPtr -> PrimIO AnyPtr

  export
  linkColor : (obj : Document) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.linkColor  = v}"
  prim__setLinkColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLinkColor : (obj : Document) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.onreadystatechange"
  prim__onreadystatechange : AnyPtr -> PrimIO AnyPtr

  export
  onreadystatechange : (obj : Document) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onreadystatechange  = v}"
  prim__setOnreadystatechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnreadystatechange : (obj : Document) -> (v : EventHandler) -> IO ()
  
  %foreign "browser:lambda:x=>x.onvisibilitychange"
  prim__onvisibilitychange : AnyPtr -> PrimIO AnyPtr

  export
  onvisibilitychange : (obj : Document) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onvisibilitychange  = v}"
  prim__setOnvisibilitychange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnvisibilitychange : (obj : Document) -> (v : EventHandler) -> IO ()
  
  %foreign "browser:lambda:x=>x.title"
  prim__title : AnyPtr -> PrimIO AnyPtr

  export
  title : (obj : Document) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.title  = v}"
  prim__setTitle : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTitle : (obj : Document) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.vlinkColor"
  prim__vlinkColor : AnyPtr -> PrimIO AnyPtr

  export
  vlinkColor : (obj : Document) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.vlinkColor  = v}"
  prim__setVlinkColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setVlinkColor : (obj : Document) -> (v : String) -> IO ()

namespace DocumentFragment
  
  public export
  JSVal DocumentFragment where
    parents =  [ Node , EventTarget , JSObject ]

    mixins =  [ NonElementParentNode , ParentNode ]

namespace DocumentType
  
  public export
  JSVal DocumentType where
    parents =  [ Node , EventTarget , JSObject ]

    mixins =  [ ChildNode ]
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : DocumentType) -> IO String
  
  %foreign "browser:lambda:x=>x.publicId"
  prim__publicId : AnyPtr -> PrimIO AnyPtr

  export
  publicId : (obj : DocumentType) -> IO String
  
  %foreign "browser:lambda:x=>x.systemId"
  prim__systemId : AnyPtr -> PrimIO AnyPtr

  export
  systemId : (obj : DocumentType) -> IO String

namespace Element
  
  public export
  JSVal Element where
    parents =  [ Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.attributes"
  prim__attributes : AnyPtr -> PrimIO AnyPtr

  export
  attributes : (obj : Element) -> IO NamedNodeMap
  
  %foreign "browser:lambda:x=>x.classList"
  prim__classList : AnyPtr -> PrimIO AnyPtr

  export
  classList : (obj : Element) -> IO DOMTokenList
  
  %foreign "browser:lambda:x=>x.localName"
  prim__localName : AnyPtr -> PrimIO AnyPtr

  export
  localName : (obj : Element) -> IO String
  
  %foreign "browser:lambda:x=>x.namespaceURI"
  prim__namespaceURI : AnyPtr -> PrimIO AnyPtr

  export
  namespaceURI : (obj : Element) -> IO (Maybe String)
  
  %foreign "browser:lambda:x=>x.prefix"
  prim__prefix_ : AnyPtr -> PrimIO AnyPtr

  export
  prefix_ : (obj : Element) -> IO (Maybe String)
  
  %foreign "browser:lambda:x=>x.shadowRoot"
  prim__shadowRoot : AnyPtr -> PrimIO AnyPtr

  export
  shadowRoot : (obj : Element) -> IO (Maybe ShadowRoot)
  
  %foreign "browser:lambda:x=>x.tagName"
  prim__tagName : AnyPtr -> PrimIO AnyPtr

  export
  tagName : (obj : Element) -> IO String
  
  %foreign "browser:lambda:x=>x.className"
  prim__className : AnyPtr -> PrimIO AnyPtr

  export
  className : (obj : Element) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.className  = v}"
  prim__setClassName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setClassName : (obj : Element) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr

  export
  id : (obj : Element) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.id  = v}"
  prim__setId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setId : (obj : Element) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.slot"
  prim__slot : AnyPtr -> PrimIO AnyPtr

  export
  slot : (obj : Element) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.slot  = v}"
  prim__setSlot : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSlot : (obj : Element) -> (v : String) -> IO ()

namespace Event
  
  public export
  JSVal Event where
    parents =  [ JSObject ]

    mixins =  []
  
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
  bubbles : (obj : Event) -> IO Bool
  
  %foreign "browser:lambda:x=>x.cancelable"
  prim__cancelable : AnyPtr -> PrimIO AnyPtr

  export
  cancelable : (obj : Event) -> IO Bool
  
  %foreign "browser:lambda:x=>x.composed"
  prim__composed : AnyPtr -> PrimIO AnyPtr

  export
  composed : (obj : Event) -> IO Bool
  
  %foreign "browser:lambda:x=>x.currentTarget"
  prim__currentTarget : AnyPtr -> PrimIO AnyPtr

  export
  currentTarget : (obj : Event) -> IO (Maybe EventTarget)
  
  %foreign "browser:lambda:x=>x.defaultPrevented"
  prim__defaultPrevented : AnyPtr -> PrimIO AnyPtr

  export
  defaultPrevented : (obj : Event) -> IO Bool
  
  %foreign "browser:lambda:x=>x.eventPhase"
  prim__eventPhase : AnyPtr -> PrimIO AnyPtr

  export
  eventPhase : (obj : Event) -> IO UInt16
  
  %foreign "browser:lambda:x=>x.isTrusted"
  prim__isTrusted : AnyPtr -> PrimIO AnyPtr

  export
  isTrusted : (obj : Event) -> IO Bool
  
  %foreign "browser:lambda:x=>x.srcElement"
  prim__srcElement : AnyPtr -> PrimIO AnyPtr

  export
  srcElement : (obj : Event) -> IO (Maybe EventTarget)
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr

  export
  target : (obj : Event) -> IO (Maybe EventTarget)
  
  %foreign "browser:lambda:x=>x.timeStamp"
  prim__timeStamp : AnyPtr -> PrimIO AnyPtr

  export
  timeStamp : (obj : Event) -> IO DOMHighResTimeStamp
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : Event) -> IO String
  
  %foreign "browser:lambda:x=>x.cancelBubble"
  prim__cancelBubble : AnyPtr -> PrimIO AnyPtr

  export
  cancelBubble : (obj : Event) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.cancelBubble  = v}"
  prim__setCancelBubble : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCancelBubble : (obj : Event) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.returnValue"
  prim__returnValue : AnyPtr -> PrimIO AnyPtr

  export
  returnValue : (obj : Event) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.returnValue  = v}"
  prim__setReturnValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReturnValue : (obj : Event) -> (v : Bool) -> IO ()

namespace EventTarget
  
  public export
  JSVal EventTarget where
    parents =  [ JSObject ]

    mixins =  []

namespace HTMLCollection
  
  public export
  JSVal HTMLCollection where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : HTMLCollection) -> IO UInt32

namespace MutationObserver
  
  public export
  JSVal MutationObserver where
    parents =  [ JSObject ]

    mixins =  []

namespace MutationRecord
  
  public export
  JSVal MutationRecord where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.addedNodes"
  prim__addedNodes : AnyPtr -> PrimIO AnyPtr

  export
  addedNodes : (obj : MutationRecord) -> IO NodeList
  
  %foreign "browser:lambda:x=>x.attributeName"
  prim__attributeName : AnyPtr -> PrimIO AnyPtr

  export
  attributeName : (obj : MutationRecord) -> IO (Maybe String)
  
  %foreign "browser:lambda:x=>x.attributeNamespace"
  prim__attributeNamespace : AnyPtr -> PrimIO AnyPtr

  export
  attributeNamespace : (obj : MutationRecord) -> IO (Maybe String)
  
  %foreign "browser:lambda:x=>x.nextSibling"
  prim__nextSibling : AnyPtr -> PrimIO AnyPtr

  export
  nextSibling : (obj : MutationRecord) -> IO (Maybe Node)
  
  %foreign "browser:lambda:x=>x.oldValue"
  prim__oldValue : AnyPtr -> PrimIO AnyPtr

  export
  oldValue : (obj : MutationRecord) -> IO (Maybe String)
  
  %foreign "browser:lambda:x=>x.previousSibling"
  prim__previousSibling : AnyPtr -> PrimIO AnyPtr

  export
  previousSibling : (obj : MutationRecord) -> IO (Maybe Node)
  
  %foreign "browser:lambda:x=>x.removedNodes"
  prim__removedNodes : AnyPtr -> PrimIO AnyPtr

  export
  removedNodes : (obj : MutationRecord) -> IO NodeList
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr

  export
  target : (obj : MutationRecord) -> IO Node
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : MutationRecord) -> IO String

namespace NamedNodeMap
  
  public export
  JSVal NamedNodeMap where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : NamedNodeMap) -> IO UInt32

namespace Node
  
  public export
  JSVal Node where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
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
  baseURI : (obj : Node) -> IO String
  
  %foreign "browser:lambda:x=>x.childNodes"
  prim__childNodes : AnyPtr -> PrimIO AnyPtr

  export
  childNodes : (obj : Node) -> IO NodeList
  
  %foreign "browser:lambda:x=>x.firstChild"
  prim__firstChild : AnyPtr -> PrimIO AnyPtr

  export
  firstChild : (obj : Node) -> IO (Maybe Node)
  
  %foreign "browser:lambda:x=>x.isConnected"
  prim__isConnected : AnyPtr -> PrimIO AnyPtr

  export
  isConnected : (obj : Node) -> IO Bool
  
  %foreign "browser:lambda:x=>x.lastChild"
  prim__lastChild : AnyPtr -> PrimIO AnyPtr

  export
  lastChild : (obj : Node) -> IO (Maybe Node)
  
  %foreign "browser:lambda:x=>x.nextSibling"
  prim__nextSibling : AnyPtr -> PrimIO AnyPtr

  export
  nextSibling : (obj : Node) -> IO (Maybe Node)
  
  %foreign "browser:lambda:x=>x.nodeName"
  prim__nodeName : AnyPtr -> PrimIO AnyPtr

  export
  nodeName : (obj : Node) -> IO String
  
  %foreign "browser:lambda:x=>x.nodeType"
  prim__nodeType : AnyPtr -> PrimIO AnyPtr

  export
  nodeType : (obj : Node) -> IO UInt16
  
  %foreign "browser:lambda:x=>x.ownerDocument"
  prim__ownerDocument : AnyPtr -> PrimIO AnyPtr

  export
  ownerDocument : (obj : Node) -> IO (Maybe Document)
  
  %foreign "browser:lambda:x=>x.parentElement"
  prim__parentElement : AnyPtr -> PrimIO AnyPtr

  export
  parentElement : (obj : Node) -> IO (Maybe Element)
  
  %foreign "browser:lambda:x=>x.parentNode"
  prim__parentNode : AnyPtr -> PrimIO AnyPtr

  export
  parentNode : (obj : Node) -> IO (Maybe Node)
  
  %foreign "browser:lambda:x=>x.previousSibling"
  prim__previousSibling : AnyPtr -> PrimIO AnyPtr

  export
  previousSibling : (obj : Node) -> IO (Maybe Node)
  
  %foreign "browser:lambda:x=>x.nodeValue"
  prim__nodeValue : AnyPtr -> PrimIO AnyPtr

  export
  nodeValue : (obj : Node) -> IO (Maybe String)

  %foreign "browser:lambda:(x,v)=>{x.nodeValue  = v}"
  prim__setNodeValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setNodeValue : (obj : Node) -> (v : Maybe String) -> IO ()
  
  %foreign "browser:lambda:x=>x.textContent"
  prim__textContent : AnyPtr -> PrimIO AnyPtr

  export
  textContent : (obj : Node) -> IO (Maybe String)

  %foreign "browser:lambda:(x,v)=>{x.textContent  = v}"
  prim__setTextContent : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTextContent : (obj : Node) -> (v : Maybe String) -> IO ()

namespace NodeIterator
  
  public export
  JSVal NodeIterator where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.filter"
  prim__filter : AnyPtr -> PrimIO AnyPtr

  export
  filter : (obj : NodeIterator) -> IO (Maybe NodeFilter)
  
  %foreign "browser:lambda:x=>x.pointerBeforeReferenceNode"
  prim__pointerBeforeReferenceNode : AnyPtr -> PrimIO AnyPtr

  export
  pointerBeforeReferenceNode : (obj : NodeIterator) -> IO Bool
  
  %foreign "browser:lambda:x=>x.referenceNode"
  prim__referenceNode : AnyPtr -> PrimIO AnyPtr

  export
  referenceNode : (obj : NodeIterator) -> IO Node
  
  %foreign "browser:lambda:x=>x.root"
  prim__root : AnyPtr -> PrimIO AnyPtr

  export
  root : (obj : NodeIterator) -> IO Node
  
  %foreign "browser:lambda:x=>x.whatToShow"
  prim__whatToShow : AnyPtr -> PrimIO AnyPtr

  export
  whatToShow : (obj : NodeIterator) -> IO UInt32

namespace NodeList
  
  public export
  JSVal NodeList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : NodeList) -> IO UInt32

namespace Performance
  
  public export
  JSVal Performance where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.timeOrigin"
  prim__timeOrigin : AnyPtr -> PrimIO AnyPtr

  export
  timeOrigin : (obj : Performance) -> IO DOMHighResTimeStamp

namespace ProcessingInstruction
  
  public export
  JSVal ProcessingInstruction where
    parents =  [ CharacterData , Node , EventTarget , JSObject ]

    mixins =  [ ChildNode , LinkStyle , NonDocumentTypeChildNode ]
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr

  export
  target : (obj : ProcessingInstruction) -> IO String

namespace Range
  
  public export
  JSVal Range where
    parents =  [ AbstractRange , JSObject ]

    mixins =  []
  
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
  commonAncestorContainer : (obj : Range) -> IO Node

namespace ShadowRoot
  
  public export
  JSVal ShadowRoot where
    parents =  [ DocumentFragment , Node , EventTarget , JSObject ]

    mixins =  [ DocumentOrShadowRoot , NonElementParentNode , ParentNode ]
  
  %foreign "browser:lambda:x=>x.host"
  prim__host : AnyPtr -> PrimIO AnyPtr

  export
  host : (obj : ShadowRoot) -> IO Element
  
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : AnyPtr -> PrimIO AnyPtr

  export
  mode : (obj : ShadowRoot) -> IO ShadowRootMode
  
  %foreign "browser:lambda:x=>x.onslotchange"
  prim__onslotchange : AnyPtr -> PrimIO AnyPtr

  export
  onslotchange : (obj : ShadowRoot) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onslotchange  = v}"
  prim__setOnslotchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnslotchange : (obj : ShadowRoot) -> (v : EventHandler) -> IO ()

namespace StaticRange
  
  public export
  JSVal StaticRange where
    parents =  [ AbstractRange , JSObject ]

    mixins =  []

namespace Text
  
  public export
  JSVal Text where
    parents =  [ CharacterData , Node , EventTarget , JSObject ]

    mixins =  [ ChildNode , NonDocumentTypeChildNode , Slottable ]
  
  %foreign "browser:lambda:x=>x.wholeText"
  prim__wholeText : AnyPtr -> PrimIO AnyPtr

  export
  wholeText : (obj : Text) -> IO String

namespace TreeWalker
  
  public export
  JSVal TreeWalker where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.filter"
  prim__filter : AnyPtr -> PrimIO AnyPtr

  export
  filter : (obj : TreeWalker) -> IO (Maybe NodeFilter)
  
  %foreign "browser:lambda:x=>x.root"
  prim__root : AnyPtr -> PrimIO AnyPtr

  export
  root : (obj : TreeWalker) -> IO Node
  
  %foreign "browser:lambda:x=>x.whatToShow"
  prim__whatToShow : AnyPtr -> PrimIO AnyPtr

  export
  whatToShow : (obj : TreeWalker) -> IO UInt32
  
  %foreign "browser:lambda:x=>x.currentNode"
  prim__currentNode : AnyPtr -> PrimIO AnyPtr

  export
  currentNode : (obj : TreeWalker) -> IO Node

  %foreign "browser:lambda:(x,v)=>{x.currentNode  = v}"
  prim__setCurrentNode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCurrentNode : (obj : TreeWalker) -> (v : Node) -> IO ()

namespace XMLDocument
  
  public export
  JSVal XMLDocument where
    parents =  [ Document , Node , EventTarget , JSObject ]

    mixins =  [ DocumentAndElementEventHandlers
              , DocumentOrShadowRoot
              , GlobalEventHandlers
              , NonElementParentNode
              , ParentNode
              , XPathEvaluatorBase
              ]

namespace XPathEvaluator
  
  public export
  JSVal XPathEvaluator where
    parents =  [ JSObject ]

    mixins =  [ XPathEvaluatorBase ]

namespace XPathExpression
  
  public export
  JSVal XPathExpression where
    parents =  [ JSObject ]

    mixins =  []

namespace XPathResult
  
  public export
  JSVal XPathResult where
    parents =  [ JSObject ]

    mixins =  []
  
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
  booleanValue : (obj : XPathResult) -> IO Bool
  
  %foreign "browser:lambda:x=>x.invalidIteratorState"
  prim__invalidIteratorState : AnyPtr -> PrimIO AnyPtr

  export
  invalidIteratorState : (obj : XPathResult) -> IO Bool
  
  %foreign "browser:lambda:x=>x.numberValue"
  prim__numberValue : AnyPtr -> PrimIO AnyPtr

  export
  numberValue : (obj : XPathResult) -> IO Double
  
  %foreign "browser:lambda:x=>x.resultType"
  prim__resultType : AnyPtr -> PrimIO AnyPtr

  export
  resultType : (obj : XPathResult) -> IO UInt16
  
  %foreign "browser:lambda:x=>x.singleNodeValue"
  prim__singleNodeValue : AnyPtr -> PrimIO AnyPtr

  export
  singleNodeValue : (obj : XPathResult) -> IO (Maybe Node)
  
  %foreign "browser:lambda:x=>x.snapshotLength"
  prim__snapshotLength : AnyPtr -> PrimIO AnyPtr

  export
  snapshotLength : (obj : XPathResult) -> IO UInt32
  
  %foreign "browser:lambda:x=>x.stringValue"
  prim__stringValue : AnyPtr -> PrimIO AnyPtr

  export
  stringValue : (obj : XPathResult) -> IO String

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------


namespace DocumentOrShadowRoot
  
  %foreign "browser:lambda:x=>x.styleSheets"
  prim__styleSheets : AnyPtr -> PrimIO AnyPtr

  export
  styleSheets : (obj : DocumentOrShadowRoot) -> IO StyleSheetList

namespace NonDocumentTypeChildNode
  
  %foreign "browser:lambda:x=>x.nextElementSibling"
  prim__nextElementSibling : AnyPtr -> PrimIO AnyPtr

  export
  nextElementSibling : (obj : NonDocumentTypeChildNode) -> IO (Maybe Element)
  
  %foreign "browser:lambda:x=>x.previousElementSibling"
  prim__previousElementSibling : AnyPtr -> PrimIO AnyPtr

  export
  previousElementSibling :  (obj : NonDocumentTypeChildNode)
                         -> IO (Maybe Element)


namespace ParentNode
  
  %foreign "browser:lambda:x=>x.childElementCount"
  prim__childElementCount : AnyPtr -> PrimIO AnyPtr

  export
  childElementCount : (obj : ParentNode) -> IO UInt32
  
  %foreign "browser:lambda:x=>x.children"
  prim__children : AnyPtr -> PrimIO AnyPtr

  export
  children : (obj : ParentNode) -> IO HTMLCollection
  
  %foreign "browser:lambda:x=>x.firstElementChild"
  prim__firstElementChild : AnyPtr -> PrimIO AnyPtr

  export
  firstElementChild : (obj : ParentNode) -> IO (Maybe Element)
  
  %foreign "browser:lambda:x=>x.lastElementChild"
  prim__lastElementChild : AnyPtr -> PrimIO AnyPtr

  export
  lastElementChild : (obj : ParentNode) -> IO (Maybe Element)

namespace Slottable
  
  %foreign "browser:lambda:x=>x.assignedSlot"
  prim__assignedSlot : AnyPtr -> PrimIO AnyPtr

  export
  assignedSlot : (obj : Slottable) -> IO (Maybe HTMLSlotElement)


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace AddEventListenerOptions
  
  public export
  JSVal AddEventListenerOptions where
    parents =  [ EventListenerOptions , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.once"
  prim__once : AnyPtr -> PrimIO AnyPtr

  export
  once : (obj : AddEventListenerOptions) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.once  = v}"
  prim__setOnce : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnce : (obj : AddEventListenerOptions) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.passive"
  prim__passive : AnyPtr -> PrimIO AnyPtr

  export
  passive : (obj : AddEventListenerOptions) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.passive  = v}"
  prim__setPassive : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPassive : (obj : AddEventListenerOptions) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.signal"
  prim__signal : AnyPtr -> PrimIO AnyPtr

  export
  signal : (obj : AddEventListenerOptions) -> IO AbortSignal

  %foreign "browser:lambda:(x,v)=>{x.signal  = v}"
  prim__setSignal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSignal : (obj : AddEventListenerOptions) -> (v : AbortSignal) -> IO ()

namespace CustomEventInit
  
  public export
  JSVal CustomEventInit where
    parents =  [ EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.detail"
  prim__detail : AnyPtr -> PrimIO AnyPtr

  export
  detail : (obj : CustomEventInit) -> IO JSAny

  %foreign "browser:lambda:(x,v)=>{x.detail  = v}"
  prim__setDetail : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDetail : (obj : CustomEventInit) -> (v : JSAny) -> IO ()

namespace ElementCreationOptions
  
  public export
  JSVal ElementCreationOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.is"
  prim__is : AnyPtr -> PrimIO AnyPtr

  export
  is : (obj : ElementCreationOptions) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.is  = v}"
  prim__setIs : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIs : (obj : ElementCreationOptions) -> (v : String) -> IO ()

namespace EventInit
  
  public export
  JSVal EventInit where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.bubbles"
  prim__bubbles : AnyPtr -> PrimIO AnyPtr

  export
  bubbles : (obj : EventInit) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.bubbles  = v}"
  prim__setBubbles : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBubbles : (obj : EventInit) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.cancelable"
  prim__cancelable : AnyPtr -> PrimIO AnyPtr

  export
  cancelable : (obj : EventInit) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.cancelable  = v}"
  prim__setCancelable : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCancelable : (obj : EventInit) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.composed"
  prim__composed : AnyPtr -> PrimIO AnyPtr

  export
  composed : (obj : EventInit) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.composed  = v}"
  prim__setComposed : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setComposed : (obj : EventInit) -> (v : Bool) -> IO ()

namespace EventListenerOptions
  
  public export
  JSVal EventListenerOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.capture"
  prim__capture : AnyPtr -> PrimIO AnyPtr

  export
  capture : (obj : EventListenerOptions) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.capture  = v}"
  prim__setCapture : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCapture : (obj : EventListenerOptions) -> (v : Bool) -> IO ()

namespace GetRootNodeOptions
  
  public export
  JSVal GetRootNodeOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.composed"
  prim__composed : AnyPtr -> PrimIO AnyPtr

  export
  composed : (obj : GetRootNodeOptions) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.composed  = v}"
  prim__setComposed : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setComposed : (obj : GetRootNodeOptions) -> (v : Bool) -> IO ()

namespace MutationObserverInit
  
  public export
  JSVal MutationObserverInit where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.attributeFilter"
  prim__attributeFilter : AnyPtr -> PrimIO AnyPtr

  export
  attributeFilter : (obj : MutationObserverInit) -> IO (JSArray String)

  %foreign "browser:lambda:(x,v)=>{x.attributeFilter  = v}"
  prim__setAttributeFilter : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAttributeFilter :  (obj : MutationObserverInit)
                     -> (v : JSArray String)
                     -> IO ()
  
  %foreign "browser:lambda:x=>x.attributeOldValue"
  prim__attributeOldValue : AnyPtr -> PrimIO AnyPtr

  export
  attributeOldValue : (obj : MutationObserverInit) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.attributeOldValue  = v}"
  prim__setAttributeOldValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAttributeOldValue : (obj : MutationObserverInit) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.attributes"
  prim__attributes : AnyPtr -> PrimIO AnyPtr

  export
  attributes : (obj : MutationObserverInit) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.attributes  = v}"
  prim__setAttributes : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAttributes : (obj : MutationObserverInit) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.characterData"
  prim__characterData : AnyPtr -> PrimIO AnyPtr

  export
  characterData : (obj : MutationObserverInit) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.characterData  = v}"
  prim__setCharacterData : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCharacterData : (obj : MutationObserverInit) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.characterDataOldValue"
  prim__characterDataOldValue : AnyPtr -> PrimIO AnyPtr

  export
  characterDataOldValue : (obj : MutationObserverInit) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.characterDataOldValue  = v}"
  prim__setCharacterDataOldValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCharacterDataOldValue : (obj : MutationObserverInit) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.childList"
  prim__childList : AnyPtr -> PrimIO AnyPtr

  export
  childList : (obj : MutationObserverInit) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.childList  = v}"
  prim__setChildList : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setChildList : (obj : MutationObserverInit) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.subtree"
  prim__subtree : AnyPtr -> PrimIO AnyPtr

  export
  subtree : (obj : MutationObserverInit) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.subtree  = v}"
  prim__setSubtree : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSubtree : (obj : MutationObserverInit) -> (v : Bool) -> IO ()

namespace ShadowRootInit
  
  public export
  JSVal ShadowRootInit where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : AnyPtr -> PrimIO AnyPtr

  export
  mode : (obj : ShadowRootInit) -> IO ShadowRootMode

  %foreign "browser:lambda:(x,v)=>{x.mode  = v}"
  prim__setMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMode : (obj : ShadowRootInit) -> (v : ShadowRootMode) -> IO ()
  
  %foreign "browser:lambda:x=>x.delegatesFocus"
  prim__delegatesFocus : AnyPtr -> PrimIO AnyPtr

  export
  delegatesFocus : (obj : ShadowRootInit) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.delegatesFocus  = v}"
  prim__setDelegatesFocus : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDelegatesFocus : (obj : ShadowRootInit) -> (v : Bool) -> IO ()

namespace StaticRangeInit
  
  public export
  JSVal StaticRangeInit where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.endContainer"
  prim__endContainer : AnyPtr -> PrimIO AnyPtr

  export
  endContainer : (obj : StaticRangeInit) -> IO Node

  %foreign "browser:lambda:(x,v)=>{x.endContainer  = v}"
  prim__setEndContainer : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEndContainer : (obj : StaticRangeInit) -> (v : Node) -> IO ()
  
  %foreign "browser:lambda:x=>x.endOffset"
  prim__endOffset : AnyPtr -> PrimIO AnyPtr

  export
  endOffset : (obj : StaticRangeInit) -> IO UInt32

  %foreign "browser:lambda:(x,v)=>{x.endOffset  = v}"
  prim__setEndOffset : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEndOffset : (obj : StaticRangeInit) -> (v : UInt32) -> IO ()
  
  %foreign "browser:lambda:x=>x.startContainer"
  prim__startContainer : AnyPtr -> PrimIO AnyPtr

  export
  startContainer : (obj : StaticRangeInit) -> IO Node

  %foreign "browser:lambda:(x,v)=>{x.startContainer  = v}"
  prim__setStartContainer : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStartContainer : (obj : StaticRangeInit) -> (v : Node) -> IO ()
  
  %foreign "browser:lambda:x=>x.startOffset"
  prim__startOffset : AnyPtr -> PrimIO AnyPtr

  export
  startOffset : (obj : StaticRangeInit) -> IO UInt32

  %foreign "browser:lambda:(x,v)=>{x.startOffset  = v}"
  prim__setStartOffset : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStartOffset : (obj : StaticRangeInit) -> (v : UInt32) -> IO ()

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

