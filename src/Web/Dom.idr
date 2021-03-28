module Web.Dom
import JS
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace AbortController
  
  public export
  JSType AbortController where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.signal"
  prim__signal : AnyPtr -> PrimIO AnyPtr

  export
  signal : (obj : AbortController) -> JSIO AbortSignal
  signal a =   primToJSIO "signal" $ prim__signal (toJS a)

namespace AbortSignal
  
  public export
  JSType AbortSignal where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.aborted"
  prim__aborted : AnyPtr -> PrimIO AnyPtr

  export
  aborted : (obj : AbortSignal) -> JSIO Bool
  aborted a =   primToJSIO "aborted" $ prim__aborted (toJS a)
  
  %foreign "browser:lambda:x=>x.onabort"
  prim__onabort : AnyPtr -> PrimIO AnyPtr

  export
  onabort : (obj : AbortSignal) -> JSIO EventHandler
  onabort a =   primToJSIO "onabort" $ prim__onabort (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onabort  = v}"
  prim__setOnabort : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnabort : (obj : AbortSignal) -> (v : EventHandler) -> JSIO ()
  setOnabort a b =
    primToJSIO "setOnabort" $ prim__setOnabort (toJS a) (toJS b)

namespace AbstractRange
  
  public export
  JSType AbstractRange where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.collapsed"
  prim__collapsed : AnyPtr -> PrimIO AnyPtr

  export
  collapsed : (obj : AbstractRange) -> JSIO Bool
  collapsed a =   primToJSIO "collapsed" $ prim__collapsed (toJS a)
  
  %foreign "browser:lambda:x=>x.endContainer"
  prim__endContainer : AnyPtr -> PrimIO AnyPtr

  export
  endContainer : (obj : AbstractRange) -> JSIO Node
  endContainer a =   primToJSIO "endContainer" $ prim__endContainer (toJS a)
  
  %foreign "browser:lambda:x=>x.endOffset"
  prim__endOffset : AnyPtr -> PrimIO AnyPtr

  export
  endOffset : (obj : AbstractRange) -> JSIO UInt32
  endOffset a =   primToJSIO "endOffset" $ prim__endOffset (toJS a)
  
  %foreign "browser:lambda:x=>x.startContainer"
  prim__startContainer : AnyPtr -> PrimIO AnyPtr

  export
  startContainer : (obj : AbstractRange) -> JSIO Node
  startContainer a =
    primToJSIO "startContainer" $ prim__startContainer (toJS a)
  
  %foreign "browser:lambda:x=>x.startOffset"
  prim__startOffset : AnyPtr -> PrimIO AnyPtr

  export
  startOffset : (obj : AbstractRange) -> JSIO UInt32
  startOffset a =   primToJSIO "startOffset" $ prim__startOffset (toJS a)

namespace Attr
  
  public export
  JSType Attr where
    parents =  [ Node , EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.localName"
  prim__localName : AnyPtr -> PrimIO AnyPtr

  export
  localName : (obj : Attr) -> JSIO String
  localName a =   primToJSIO "localName" $ prim__localName (toJS a)
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : Attr) -> JSIO String
  name a =   primToJSIO "name" $ prim__name (toJS a)
  
  %foreign "browser:lambda:x=>x.namespaceURI"
  prim__namespaceURI : AnyPtr -> PrimIO AnyPtr

  export
  namespaceURI : (obj : Attr) -> JSIO (Maybe String)
  namespaceURI a =   primToJSIO "namespaceURI" $ prim__namespaceURI (toJS a)
  
  %foreign "browser:lambda:x=>x.ownerElement"
  prim__ownerElement : AnyPtr -> PrimIO AnyPtr

  export
  ownerElement : (obj : Attr) -> JSIO (Maybe Element)
  ownerElement a =   primToJSIO "ownerElement" $ prim__ownerElement (toJS a)
  
  %foreign "browser:lambda:x=>x.prefix"
  prim__prefix_ : AnyPtr -> PrimIO AnyPtr

  export
  prefix_ : (obj : Attr) -> JSIO (Maybe String)
  prefix_ a =   primToJSIO "prefix_" $ prim__prefix_ (toJS a)
  
  %foreign "browser:lambda:x=>x.specified"
  prim__specified : AnyPtr -> PrimIO AnyPtr

  export
  specified : (obj : Attr) -> JSIO Bool
  specified a =   primToJSIO "specified" $ prim__specified (toJS a)
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : Attr) -> JSIO String
  value a =   primToJSIO "value" $ prim__value (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue : (obj : Attr) -> (v : String) -> JSIO ()
  setValue a b =   primToJSIO "setValue" $ prim__setValue (toJS a) (toJS b)

namespace CDATASection
  
  public export
  JSType CDATASection where
    parents =  [ Text , CharacterData , Node , EventTarget , JSObject ]

    mixins =  [ ChildNode , NonDocumentTypeChildNode , Slottable ]

namespace CharacterData
  
  public export
  JSType CharacterData where
    parents =  [ Node , EventTarget , JSObject ]

    mixins =  [ ChildNode , NonDocumentTypeChildNode ]
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : CharacterData) -> JSIO UInt32
  length a =   primToJSIO "length" $ prim__length (toJS a)
  
  %foreign "browser:lambda:x=>x.data"
  prim__data_ : AnyPtr -> PrimIO AnyPtr

  export
  data_ : (obj : CharacterData) -> JSIO String
  data_ a =   primToJSIO "data_" $ prim__data_ (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.data  = v}"
  prim__setData : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setData : (obj : CharacterData) -> (v : String) -> JSIO ()
  setData a b =   primToJSIO "setData" $ prim__setData (toJS a) (toJS b)

namespace Comment
  
  public export
  JSType Comment where
    parents =  [ CharacterData , Node , EventTarget , JSObject ]

    mixins =  [ ChildNode , NonDocumentTypeChildNode ]

namespace CustomEvent
  
  public export
  JSType CustomEvent where
    parents =  [ Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.detail"
  prim__detail : AnyPtr -> PrimIO AnyPtr

  export
  detail : (obj : CustomEvent) -> JSIO Any
  detail a =   primToJSIO "detail" $ prim__detail (toJS a)

namespace DOMImplementation
  
  public export
  JSType DOMImplementation where
    parents =  [ JSObject ]

    mixins =  []

namespace DOMTokenList
  
  public export
  JSType DOMTokenList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : DOMTokenList) -> JSIO UInt32
  length a =   primToJSIO "length" $ prim__length (toJS a)

namespace Document
  
  public export
  JSType Document where
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
  URL : (obj : Document) -> JSIO String
  URL a =   primToJSIO "URL" $ prim__URL (toJS a)
  
  %foreign "browser:lambda:x=>x.all"
  prim__all : AnyPtr -> PrimIO AnyPtr

  export
  all : (obj : Document) -> JSIO HTMLAllCollection
  all a =   primToJSIO "all" $ prim__all (toJS a)
  
  %foreign "browser:lambda:x=>x.anchors"
  prim__anchors : AnyPtr -> PrimIO AnyPtr

  export
  anchors : (obj : Document) -> JSIO HTMLCollection
  anchors a =   primToJSIO "anchors" $ prim__anchors (toJS a)
  
  %foreign "browser:lambda:x=>x.applets"
  prim__applets : AnyPtr -> PrimIO AnyPtr

  export
  applets : (obj : Document) -> JSIO HTMLCollection
  applets a =   primToJSIO "applets" $ prim__applets (toJS a)
  
  %foreign "browser:lambda:x=>x.characterSet"
  prim__characterSet : AnyPtr -> PrimIO AnyPtr

  export
  characterSet : (obj : Document) -> JSIO String
  characterSet a =   primToJSIO "characterSet" $ prim__characterSet (toJS a)
  
  %foreign "browser:lambda:x=>x.charset"
  prim__charset : AnyPtr -> PrimIO AnyPtr

  export
  charset : (obj : Document) -> JSIO String
  charset a =   primToJSIO "charset" $ prim__charset (toJS a)
  
  %foreign "browser:lambda:x=>x.compatMode"
  prim__compatMode : AnyPtr -> PrimIO AnyPtr

  export
  compatMode : (obj : Document) -> JSIO String
  compatMode a =   primToJSIO "compatMode" $ prim__compatMode (toJS a)
  
  %foreign "browser:lambda:x=>x.contentType"
  prim__contentType : AnyPtr -> PrimIO AnyPtr

  export
  contentType : (obj : Document) -> JSIO String
  contentType a =   primToJSIO "contentType" $ prim__contentType (toJS a)
  
  %foreign "browser:lambda:x=>x.currentScript"
  prim__currentScript : AnyPtr -> PrimIO AnyPtr

  export
  currentScript : (obj : Document) -> JSIO (Maybe HTMLOrSVGScriptElement)
  currentScript a =   primToJSIO "currentScript" $ prim__currentScript (toJS a)
  
  %foreign "browser:lambda:x=>x.defaultView"
  prim__defaultView : AnyPtr -> PrimIO AnyPtr

  export
  defaultView : (obj : Document) -> JSIO (Maybe WindowProxy)
  defaultView a =   primToJSIO "defaultView" $ prim__defaultView (toJS a)
  
  %foreign "browser:lambda:x=>x.doctype"
  prim__doctype : AnyPtr -> PrimIO AnyPtr

  export
  doctype : (obj : Document) -> JSIO (Maybe DocumentType)
  doctype a =   primToJSIO "doctype" $ prim__doctype (toJS a)
  
  %foreign "browser:lambda:x=>x.documentElement"
  prim__documentElement : AnyPtr -> PrimIO AnyPtr

  export
  documentElement : (obj : Document) -> JSIO (Maybe Element)
  documentElement a =
    primToJSIO "documentElement" $ prim__documentElement (toJS a)
  
  %foreign "browser:lambda:x=>x.documentURI"
  prim__documentURI : AnyPtr -> PrimIO AnyPtr

  export
  documentURI : (obj : Document) -> JSIO String
  documentURI a =   primToJSIO "documentURI" $ prim__documentURI (toJS a)
  
  %foreign "browser:lambda:x=>x.embeds"
  prim__embeds : AnyPtr -> PrimIO AnyPtr

  export
  embeds : (obj : Document) -> JSIO HTMLCollection
  embeds a =   primToJSIO "embeds" $ prim__embeds (toJS a)
  
  %foreign "browser:lambda:x=>x.forms"
  prim__forms : AnyPtr -> PrimIO AnyPtr

  export
  forms : (obj : Document) -> JSIO HTMLCollection
  forms a =   primToJSIO "forms" $ prim__forms (toJS a)
  
  %foreign "browser:lambda:x=>x.head"
  prim__head : AnyPtr -> PrimIO AnyPtr

  export
  head : (obj : Document) -> JSIO (Maybe HTMLHeadElement)
  head a =   primToJSIO "head" $ prim__head (toJS a)
  
  %foreign "browser:lambda:x=>x.hidden"
  prim__hidden : AnyPtr -> PrimIO AnyPtr

  export
  hidden : (obj : Document) -> JSIO Bool
  hidden a =   primToJSIO "hidden" $ prim__hidden (toJS a)
  
  %foreign "browser:lambda:x=>x.images"
  prim__images : AnyPtr -> PrimIO AnyPtr

  export
  images : (obj : Document) -> JSIO HTMLCollection
  images a =   primToJSIO "images" $ prim__images (toJS a)
  
  %foreign "browser:lambda:x=>x.implementation"
  prim__implementation_ : AnyPtr -> PrimIO AnyPtr

  export
  implementation_ : (obj : Document) -> JSIO DOMImplementation
  implementation_ a =
    primToJSIO "implementation_" $ prim__implementation_ (toJS a)
  
  %foreign "browser:lambda:x=>x.inputEncoding"
  prim__inputEncoding : AnyPtr -> PrimIO AnyPtr

  export
  inputEncoding : (obj : Document) -> JSIO String
  inputEncoding a =   primToJSIO "inputEncoding" $ prim__inputEncoding (toJS a)
  
  %foreign "browser:lambda:x=>x.lastModified"
  prim__lastModified : AnyPtr -> PrimIO AnyPtr

  export
  lastModified : (obj : Document) -> JSIO String
  lastModified a =   primToJSIO "lastModified" $ prim__lastModified (toJS a)
  
  %foreign "browser:lambda:x=>x.links"
  prim__links : AnyPtr -> PrimIO AnyPtr

  export
  links : (obj : Document) -> JSIO HTMLCollection
  links a =   primToJSIO "links" $ prim__links (toJS a)
  
  %foreign "browser:lambda:x=>x.location"
  prim__location : AnyPtr -> PrimIO AnyPtr

  export
  location : (obj : Document) -> JSIO (Maybe Location)
  location a =   primToJSIO "location" $ prim__location (toJS a)
  
  %foreign "browser:lambda:x=>x.plugins"
  prim__plugins : AnyPtr -> PrimIO AnyPtr

  export
  plugins : (obj : Document) -> JSIO HTMLCollection
  plugins a =   primToJSIO "plugins" $ prim__plugins (toJS a)
  
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : AnyPtr -> PrimIO AnyPtr

  export
  readyState : (obj : Document) -> JSIO DocumentReadyState
  readyState a =   primToJSIO "readyState" $ prim__readyState (toJS a)
  
  %foreign "browser:lambda:x=>x.referrer"
  prim__referrer : AnyPtr -> PrimIO AnyPtr

  export
  referrer : (obj : Document) -> JSIO String
  referrer a =   primToJSIO "referrer" $ prim__referrer (toJS a)
  
  %foreign "browser:lambda:x=>x.rootElement"
  prim__rootElement : AnyPtr -> PrimIO AnyPtr

  export
  rootElement : (obj : Document) -> JSIO (Maybe SVGSVGElement)
  rootElement a =   primToJSIO "rootElement" $ prim__rootElement (toJS a)
  
  %foreign "browser:lambda:x=>x.scripts"
  prim__scripts : AnyPtr -> PrimIO AnyPtr

  export
  scripts : (obj : Document) -> JSIO HTMLCollection
  scripts a =   primToJSIO "scripts" $ prim__scripts (toJS a)
  
  %foreign "browser:lambda:x=>x.timeline"
  prim__timeline : AnyPtr -> PrimIO AnyPtr

  export
  timeline : (obj : Document) -> JSIO DocumentTimeline
  timeline a =   primToJSIO "timeline" $ prim__timeline (toJS a)
  
  %foreign "browser:lambda:x=>x.visibilityState"
  prim__visibilityState : AnyPtr -> PrimIO AnyPtr

  export
  visibilityState : (obj : Document) -> JSIO VisibilityState
  visibilityState a =
    primToJSIO "visibilityState" $ prim__visibilityState (toJS a)
  
  %foreign "browser:lambda:x=>x.alinkColor"
  prim__alinkColor : AnyPtr -> PrimIO AnyPtr

  export
  alinkColor : (obj : Document) -> JSIO String
  alinkColor a =   primToJSIO "alinkColor" $ prim__alinkColor (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.alinkColor  = v}"
  prim__setAlinkColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlinkColor : (obj : Document) -> (v : String) -> JSIO ()
  setAlinkColor a b =
    primToJSIO "setAlinkColor" $ prim__setAlinkColor (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.bgColor"
  prim__bgColor : AnyPtr -> PrimIO AnyPtr

  export
  bgColor : (obj : Document) -> JSIO String
  bgColor a =   primToJSIO "bgColor" $ prim__bgColor (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.bgColor  = v}"
  prim__setBgColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBgColor : (obj : Document) -> (v : String) -> JSIO ()
  setBgColor a b =
    primToJSIO "setBgColor" $ prim__setBgColor (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.body"
  prim__body : AnyPtr -> PrimIO AnyPtr

  export
  body : (obj : Document) -> JSIO (Maybe HTMLElement)
  body a =   primToJSIO "body" $ prim__body (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.body  = v}"
  prim__setBody : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBody : (obj : Document) -> (v : Maybe HTMLElement) -> JSIO ()
  setBody a b =   primToJSIO "setBody" $ prim__setBody (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.cookie"
  prim__cookie : AnyPtr -> PrimIO AnyPtr

  export
  cookie : (obj : Document) -> JSIO String
  cookie a =   primToJSIO "cookie" $ prim__cookie (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.cookie  = v}"
  prim__setCookie : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCookie : (obj : Document) -> (v : String) -> JSIO ()
  setCookie a b =   primToJSIO "setCookie" $ prim__setCookie (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.designMode"
  prim__designMode : AnyPtr -> PrimIO AnyPtr

  export
  designMode : (obj : Document) -> JSIO String
  designMode a =   primToJSIO "designMode" $ prim__designMode (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.designMode  = v}"
  prim__setDesignMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDesignMode : (obj : Document) -> (v : String) -> JSIO ()
  setDesignMode a b =
    primToJSIO "setDesignMode" $ prim__setDesignMode (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.dir"
  prim__dir : AnyPtr -> PrimIO AnyPtr

  export
  dir : (obj : Document) -> JSIO String
  dir a =   primToJSIO "dir" $ prim__dir (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.dir  = v}"
  prim__setDir : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDir : (obj : Document) -> (v : String) -> JSIO ()
  setDir a b =   primToJSIO "setDir" $ prim__setDir (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.domain"
  prim__domain : AnyPtr -> PrimIO AnyPtr

  export
  domain : (obj : Document) -> JSIO String
  domain a =   primToJSIO "domain" $ prim__domain (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.domain  = v}"
  prim__setDomain : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDomain : (obj : Document) -> (v : String) -> JSIO ()
  setDomain a b =   primToJSIO "setDomain" $ prim__setDomain (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.fgColor"
  prim__fgColor : AnyPtr -> PrimIO AnyPtr

  export
  fgColor : (obj : Document) -> JSIO String
  fgColor a =   primToJSIO "fgColor" $ prim__fgColor (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.fgColor  = v}"
  prim__setFgColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFgColor : (obj : Document) -> (v : String) -> JSIO ()
  setFgColor a b =
    primToJSIO "setFgColor" $ prim__setFgColor (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.linkColor"
  prim__linkColor : AnyPtr -> PrimIO AnyPtr

  export
  linkColor : (obj : Document) -> JSIO String
  linkColor a =   primToJSIO "linkColor" $ prim__linkColor (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.linkColor  = v}"
  prim__setLinkColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLinkColor : (obj : Document) -> (v : String) -> JSIO ()
  setLinkColor a b =
    primToJSIO "setLinkColor" $ prim__setLinkColor (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onreadystatechange"
  prim__onreadystatechange : AnyPtr -> PrimIO AnyPtr

  export
  onreadystatechange : (obj : Document) -> JSIO EventHandler
  onreadystatechange a =
    primToJSIO "onreadystatechange" $ prim__onreadystatechange (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onreadystatechange  = v}"
  prim__setOnreadystatechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnreadystatechange : (obj : Document) -> (v : EventHandler) -> JSIO ()
  setOnreadystatechange a b =
    primToJSIO "setOnreadystatechange" $ prim__setOnreadystatechange (toJS a)
                                                                     (toJS b)
  
  %foreign "browser:lambda:x=>x.onvisibilitychange"
  prim__onvisibilitychange : AnyPtr -> PrimIO AnyPtr

  export
  onvisibilitychange : (obj : Document) -> JSIO EventHandler
  onvisibilitychange a =
    primToJSIO "onvisibilitychange" $ prim__onvisibilitychange (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onvisibilitychange  = v}"
  prim__setOnvisibilitychange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnvisibilitychange : (obj : Document) -> (v : EventHandler) -> JSIO ()
  setOnvisibilitychange a b =
    primToJSIO "setOnvisibilitychange" $ prim__setOnvisibilitychange (toJS a)
                                                                     (toJS b)
  
  %foreign "browser:lambda:x=>x.title"
  prim__title : AnyPtr -> PrimIO AnyPtr

  export
  title : (obj : Document) -> JSIO String
  title a =   primToJSIO "title" $ prim__title (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.title  = v}"
  prim__setTitle : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTitle : (obj : Document) -> (v : String) -> JSIO ()
  setTitle a b =   primToJSIO "setTitle" $ prim__setTitle (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.vlinkColor"
  prim__vlinkColor : AnyPtr -> PrimIO AnyPtr

  export
  vlinkColor : (obj : Document) -> JSIO String
  vlinkColor a =   primToJSIO "vlinkColor" $ prim__vlinkColor (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.vlinkColor  = v}"
  prim__setVlinkColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setVlinkColor : (obj : Document) -> (v : String) -> JSIO ()
  setVlinkColor a b =
    primToJSIO "setVlinkColor" $ prim__setVlinkColor (toJS a) (toJS b)

namespace DocumentFragment
  
  public export
  JSType DocumentFragment where
    parents =  [ Node , EventTarget , JSObject ]

    mixins =  [ NonElementParentNode , ParentNode ]

namespace DocumentType
  
  public export
  JSType DocumentType where
    parents =  [ Node , EventTarget , JSObject ]

    mixins =  [ ChildNode ]
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : DocumentType) -> JSIO String
  name a =   primToJSIO "name" $ prim__name (toJS a)
  
  %foreign "browser:lambda:x=>x.publicId"
  prim__publicId : AnyPtr -> PrimIO AnyPtr

  export
  publicId : (obj : DocumentType) -> JSIO String
  publicId a =   primToJSIO "publicId" $ prim__publicId (toJS a)
  
  %foreign "browser:lambda:x=>x.systemId"
  prim__systemId : AnyPtr -> PrimIO AnyPtr

  export
  systemId : (obj : DocumentType) -> JSIO String
  systemId a =   primToJSIO "systemId" $ prim__systemId (toJS a)

namespace Element
  
  public export
  JSType Element where
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
  attributes : (obj : Element) -> JSIO NamedNodeMap
  attributes a =   primToJSIO "attributes" $ prim__attributes (toJS a)
  
  %foreign "browser:lambda:x=>x.classList"
  prim__classList : AnyPtr -> PrimIO AnyPtr

  export
  classList : (obj : Element) -> JSIO DOMTokenList
  classList a =   primToJSIO "classList" $ prim__classList (toJS a)
  
  %foreign "browser:lambda:x=>x.localName"
  prim__localName : AnyPtr -> PrimIO AnyPtr

  export
  localName : (obj : Element) -> JSIO String
  localName a =   primToJSIO "localName" $ prim__localName (toJS a)
  
  %foreign "browser:lambda:x=>x.namespaceURI"
  prim__namespaceURI : AnyPtr -> PrimIO AnyPtr

  export
  namespaceURI : (obj : Element) -> JSIO (Maybe String)
  namespaceURI a =   primToJSIO "namespaceURI" $ prim__namespaceURI (toJS a)
  
  %foreign "browser:lambda:x=>x.prefix"
  prim__prefix_ : AnyPtr -> PrimIO AnyPtr

  export
  prefix_ : (obj : Element) -> JSIO (Maybe String)
  prefix_ a =   primToJSIO "prefix_" $ prim__prefix_ (toJS a)
  
  %foreign "browser:lambda:x=>x.shadowRoot"
  prim__shadowRoot : AnyPtr -> PrimIO AnyPtr

  export
  shadowRoot : (obj : Element) -> JSIO (Maybe ShadowRoot)
  shadowRoot a =   primToJSIO "shadowRoot" $ prim__shadowRoot (toJS a)
  
  %foreign "browser:lambda:x=>x.tagName"
  prim__tagName : AnyPtr -> PrimIO AnyPtr

  export
  tagName : (obj : Element) -> JSIO String
  tagName a =   primToJSIO "tagName" $ prim__tagName (toJS a)
  
  %foreign "browser:lambda:x=>x.className"
  prim__className : AnyPtr -> PrimIO AnyPtr

  export
  className : (obj : Element) -> JSIO String
  className a =   primToJSIO "className" $ prim__className (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.className  = v}"
  prim__setClassName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setClassName : (obj : Element) -> (v : String) -> JSIO ()
  setClassName a b =
    primToJSIO "setClassName" $ prim__setClassName (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr

  export
  id : (obj : Element) -> JSIO String
  id a =   primToJSIO "id" $ prim__id (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.id  = v}"
  prim__setId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setId : (obj : Element) -> (v : String) -> JSIO ()
  setId a b =   primToJSIO "setId" $ prim__setId (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.slot"
  prim__slot : AnyPtr -> PrimIO AnyPtr

  export
  slot : (obj : Element) -> JSIO String
  slot a =   primToJSIO "slot" $ prim__slot (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.slot  = v}"
  prim__setSlot : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSlot : (obj : Element) -> (v : String) -> JSIO ()
  setSlot a b =   primToJSIO "setSlot" $ prim__setSlot (toJS a) (toJS b)

namespace Event
  
  public export
  JSType Event where
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
  bubbles : (obj : Event) -> JSIO Bool
  bubbles a =   primToJSIO "bubbles" $ prim__bubbles (toJS a)
  
  %foreign "browser:lambda:x=>x.cancelable"
  prim__cancelable : AnyPtr -> PrimIO AnyPtr

  export
  cancelable : (obj : Event) -> JSIO Bool
  cancelable a =   primToJSIO "cancelable" $ prim__cancelable (toJS a)
  
  %foreign "browser:lambda:x=>x.composed"
  prim__composed : AnyPtr -> PrimIO AnyPtr

  export
  composed : (obj : Event) -> JSIO Bool
  composed a =   primToJSIO "composed" $ prim__composed (toJS a)
  
  %foreign "browser:lambda:x=>x.currentTarget"
  prim__currentTarget : AnyPtr -> PrimIO AnyPtr

  export
  currentTarget : (obj : Event) -> JSIO (Maybe EventTarget)
  currentTarget a =   primToJSIO "currentTarget" $ prim__currentTarget (toJS a)
  
  %foreign "browser:lambda:x=>x.defaultPrevented"
  prim__defaultPrevented : AnyPtr -> PrimIO AnyPtr

  export
  defaultPrevented : (obj : Event) -> JSIO Bool
  defaultPrevented a =
    primToJSIO "defaultPrevented" $ prim__defaultPrevented (toJS a)
  
  %foreign "browser:lambda:x=>x.eventPhase"
  prim__eventPhase : AnyPtr -> PrimIO AnyPtr

  export
  eventPhase : (obj : Event) -> JSIO UInt16
  eventPhase a =   primToJSIO "eventPhase" $ prim__eventPhase (toJS a)
  
  %foreign "browser:lambda:x=>x.isTrusted"
  prim__isTrusted : AnyPtr -> PrimIO AnyPtr

  export
  isTrusted : (obj : Event) -> JSIO Bool
  isTrusted a =   primToJSIO "isTrusted" $ prim__isTrusted (toJS a)
  
  %foreign "browser:lambda:x=>x.srcElement"
  prim__srcElement : AnyPtr -> PrimIO AnyPtr

  export
  srcElement : (obj : Event) -> JSIO (Maybe EventTarget)
  srcElement a =   primToJSIO "srcElement" $ prim__srcElement (toJS a)
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr

  export
  target : (obj : Event) -> JSIO (Maybe EventTarget)
  target a =   primToJSIO "target" $ prim__target (toJS a)
  
  %foreign "browser:lambda:x=>x.timeStamp"
  prim__timeStamp : AnyPtr -> PrimIO AnyPtr

  export
  timeStamp : (obj : Event) -> JSIO DOMHighResTimeStamp
  timeStamp a =   primToJSIO "timeStamp" $ prim__timeStamp (toJS a)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : Event) -> JSIO String
  type a =   primToJSIO "type" $ prim__type (toJS a)
  
  %foreign "browser:lambda:x=>x.cancelBubble"
  prim__cancelBubble : AnyPtr -> PrimIO AnyPtr

  export
  cancelBubble : (obj : Event) -> JSIO Bool
  cancelBubble a =   primToJSIO "cancelBubble" $ prim__cancelBubble (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.cancelBubble  = v}"
  prim__setCancelBubble : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCancelBubble : (obj : Event) -> (v : Bool) -> JSIO ()
  setCancelBubble a b =
    primToJSIO "setCancelBubble" $ prim__setCancelBubble (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.returnValue"
  prim__returnValue : AnyPtr -> PrimIO AnyPtr

  export
  returnValue : (obj : Event) -> JSIO Bool
  returnValue a =   primToJSIO "returnValue" $ prim__returnValue (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.returnValue  = v}"
  prim__setReturnValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReturnValue : (obj : Event) -> (v : Bool) -> JSIO ()
  setReturnValue a b =
    primToJSIO "setReturnValue" $ prim__setReturnValue (toJS a) (toJS b)

namespace EventTarget
  
  public export
  JSType EventTarget where
    parents =  [ JSObject ]

    mixins =  []

namespace HTMLCollection
  
  public export
  JSType HTMLCollection where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : HTMLCollection) -> JSIO UInt32
  length a =   primToJSIO "length" $ prim__length (toJS a)

namespace MutationObserver
  
  public export
  JSType MutationObserver where
    parents =  [ JSObject ]

    mixins =  []

namespace MutationRecord
  
  public export
  JSType MutationRecord where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.addedNodes"
  prim__addedNodes : AnyPtr -> PrimIO AnyPtr

  export
  addedNodes : (obj : MutationRecord) -> JSIO NodeList
  addedNodes a =   primToJSIO "addedNodes" $ prim__addedNodes (toJS a)
  
  %foreign "browser:lambda:x=>x.attributeName"
  prim__attributeName : AnyPtr -> PrimIO AnyPtr

  export
  attributeName : (obj : MutationRecord) -> JSIO (Maybe String)
  attributeName a =   primToJSIO "attributeName" $ prim__attributeName (toJS a)
  
  %foreign "browser:lambda:x=>x.attributeNamespace"
  prim__attributeNamespace : AnyPtr -> PrimIO AnyPtr

  export
  attributeNamespace : (obj : MutationRecord) -> JSIO (Maybe String)
  attributeNamespace a =
    primToJSIO "attributeNamespace" $ prim__attributeNamespace (toJS a)
  
  %foreign "browser:lambda:x=>x.nextSibling"
  prim__nextSibling : AnyPtr -> PrimIO AnyPtr

  export
  nextSibling : (obj : MutationRecord) -> JSIO (Maybe Node)
  nextSibling a =   primToJSIO "nextSibling" $ prim__nextSibling (toJS a)
  
  %foreign "browser:lambda:x=>x.oldValue"
  prim__oldValue : AnyPtr -> PrimIO AnyPtr

  export
  oldValue : (obj : MutationRecord) -> JSIO (Maybe String)
  oldValue a =   primToJSIO "oldValue" $ prim__oldValue (toJS a)
  
  %foreign "browser:lambda:x=>x.previousSibling"
  prim__previousSibling : AnyPtr -> PrimIO AnyPtr

  export
  previousSibling : (obj : MutationRecord) -> JSIO (Maybe Node)
  previousSibling a =
    primToJSIO "previousSibling" $ prim__previousSibling (toJS a)
  
  %foreign "browser:lambda:x=>x.removedNodes"
  prim__removedNodes : AnyPtr -> PrimIO AnyPtr

  export
  removedNodes : (obj : MutationRecord) -> JSIO NodeList
  removedNodes a =   primToJSIO "removedNodes" $ prim__removedNodes (toJS a)
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr

  export
  target : (obj : MutationRecord) -> JSIO Node
  target a =   primToJSIO "target" $ prim__target (toJS a)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : MutationRecord) -> JSIO String
  type a =   primToJSIO "type" $ prim__type (toJS a)

namespace NamedNodeMap
  
  public export
  JSType NamedNodeMap where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : NamedNodeMap) -> JSIO UInt32
  length a =   primToJSIO "length" $ prim__length (toJS a)

namespace Node
  
  public export
  JSType Node where
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
  baseURI : (obj : Node) -> JSIO String
  baseURI a =   primToJSIO "baseURI" $ prim__baseURI (toJS a)
  
  %foreign "browser:lambda:x=>x.childNodes"
  prim__childNodes : AnyPtr -> PrimIO AnyPtr

  export
  childNodes : (obj : Node) -> JSIO NodeList
  childNodes a =   primToJSIO "childNodes" $ prim__childNodes (toJS a)
  
  %foreign "browser:lambda:x=>x.firstChild"
  prim__firstChild : AnyPtr -> PrimIO AnyPtr

  export
  firstChild : (obj : Node) -> JSIO (Maybe Node)
  firstChild a =   primToJSIO "firstChild" $ prim__firstChild (toJS a)
  
  %foreign "browser:lambda:x=>x.isConnected"
  prim__isConnected : AnyPtr -> PrimIO AnyPtr

  export
  isConnected : (obj : Node) -> JSIO Bool
  isConnected a =   primToJSIO "isConnected" $ prim__isConnected (toJS a)
  
  %foreign "browser:lambda:x=>x.lastChild"
  prim__lastChild : AnyPtr -> PrimIO AnyPtr

  export
  lastChild : (obj : Node) -> JSIO (Maybe Node)
  lastChild a =   primToJSIO "lastChild" $ prim__lastChild (toJS a)
  
  %foreign "browser:lambda:x=>x.nextSibling"
  prim__nextSibling : AnyPtr -> PrimIO AnyPtr

  export
  nextSibling : (obj : Node) -> JSIO (Maybe Node)
  nextSibling a =   primToJSIO "nextSibling" $ prim__nextSibling (toJS a)
  
  %foreign "browser:lambda:x=>x.nodeName"
  prim__nodeName : AnyPtr -> PrimIO AnyPtr

  export
  nodeName : (obj : Node) -> JSIO String
  nodeName a =   primToJSIO "nodeName" $ prim__nodeName (toJS a)
  
  %foreign "browser:lambda:x=>x.nodeType"
  prim__nodeType : AnyPtr -> PrimIO AnyPtr

  export
  nodeType : (obj : Node) -> JSIO UInt16
  nodeType a =   primToJSIO "nodeType" $ prim__nodeType (toJS a)
  
  %foreign "browser:lambda:x=>x.ownerDocument"
  prim__ownerDocument : AnyPtr -> PrimIO AnyPtr

  export
  ownerDocument : (obj : Node) -> JSIO (Maybe Document)
  ownerDocument a =   primToJSIO "ownerDocument" $ prim__ownerDocument (toJS a)
  
  %foreign "browser:lambda:x=>x.parentElement"
  prim__parentElement : AnyPtr -> PrimIO AnyPtr

  export
  parentElement : (obj : Node) -> JSIO (Maybe Element)
  parentElement a =   primToJSIO "parentElement" $ prim__parentElement (toJS a)
  
  %foreign "browser:lambda:x=>x.parentNode"
  prim__parentNode : AnyPtr -> PrimIO AnyPtr

  export
  parentNode : (obj : Node) -> JSIO (Maybe Node)
  parentNode a =   primToJSIO "parentNode" $ prim__parentNode (toJS a)
  
  %foreign "browser:lambda:x=>x.previousSibling"
  prim__previousSibling : AnyPtr -> PrimIO AnyPtr

  export
  previousSibling : (obj : Node) -> JSIO (Maybe Node)
  previousSibling a =
    primToJSIO "previousSibling" $ prim__previousSibling (toJS a)
  
  %foreign "browser:lambda:x=>x.nodeValue"
  prim__nodeValue : AnyPtr -> PrimIO AnyPtr

  export
  nodeValue : (obj : Node) -> JSIO (Maybe String)
  nodeValue a =   primToJSIO "nodeValue" $ prim__nodeValue (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.nodeValue  = v}"
  prim__setNodeValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setNodeValue : (obj : Node) -> (v : Maybe String) -> JSIO ()
  setNodeValue a b =
    primToJSIO "setNodeValue" $ prim__setNodeValue (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.textContent"
  prim__textContent : AnyPtr -> PrimIO AnyPtr

  export
  textContent : (obj : Node) -> JSIO (Maybe String)
  textContent a =   primToJSIO "textContent" $ prim__textContent (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.textContent  = v}"
  prim__setTextContent : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTextContent : (obj : Node) -> (v : Maybe String) -> JSIO ()
  setTextContent a b =
    primToJSIO "setTextContent" $ prim__setTextContent (toJS a) (toJS b)

namespace NodeIterator
  
  public export
  JSType NodeIterator where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.filter"
  prim__filter : AnyPtr -> PrimIO AnyPtr

  export
  filter : (obj : NodeIterator) -> JSIO (Maybe NodeFilter)
  filter a =   primToJSIO "filter" $ prim__filter (toJS a)
  
  %foreign "browser:lambda:x=>x.pointerBeforeReferenceNode"
  prim__pointerBeforeReferenceNode : AnyPtr -> PrimIO AnyPtr

  export
  pointerBeforeReferenceNode : (obj : NodeIterator) -> JSIO Bool
  pointerBeforeReferenceNode a =
    primToJSIO "pointerBeforeReferenceNode" $ prim__pointerBeforeReferenceNode (toJS a)
  
  %foreign "browser:lambda:x=>x.referenceNode"
  prim__referenceNode : AnyPtr -> PrimIO AnyPtr

  export
  referenceNode : (obj : NodeIterator) -> JSIO Node
  referenceNode a =   primToJSIO "referenceNode" $ prim__referenceNode (toJS a)
  
  %foreign "browser:lambda:x=>x.root"
  prim__root : AnyPtr -> PrimIO AnyPtr

  export
  root : (obj : NodeIterator) -> JSIO Node
  root a =   primToJSIO "root" $ prim__root (toJS a)
  
  %foreign "browser:lambda:x=>x.whatToShow"
  prim__whatToShow : AnyPtr -> PrimIO AnyPtr

  export
  whatToShow : (obj : NodeIterator) -> JSIO UInt32
  whatToShow a =   primToJSIO "whatToShow" $ prim__whatToShow (toJS a)

namespace NodeList
  
  public export
  JSType NodeList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : NodeList) -> JSIO UInt32
  length a =   primToJSIO "length" $ prim__length (toJS a)

namespace Performance
  
  public export
  JSType Performance where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.timeOrigin"
  prim__timeOrigin : AnyPtr -> PrimIO AnyPtr

  export
  timeOrigin : (obj : Performance) -> JSIO DOMHighResTimeStamp
  timeOrigin a =   primToJSIO "timeOrigin" $ prim__timeOrigin (toJS a)

namespace ProcessingInstruction
  
  public export
  JSType ProcessingInstruction where
    parents =  [ CharacterData , Node , EventTarget , JSObject ]

    mixins =  [ ChildNode , LinkStyle , NonDocumentTypeChildNode ]
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr

  export
  target : (obj : ProcessingInstruction) -> JSIO String
  target a =   primToJSIO "target" $ prim__target (toJS a)

namespace Range
  
  public export
  JSType Range where
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
  commonAncestorContainer : (obj : Range) -> JSIO Node
  commonAncestorContainer a =
    primToJSIO "commonAncestorContainer" $ prim__commonAncestorContainer (toJS a)

namespace ShadowRoot
  
  public export
  JSType ShadowRoot where
    parents =  [ DocumentFragment , Node , EventTarget , JSObject ]

    mixins =  [ DocumentOrShadowRoot , NonElementParentNode , ParentNode ]
  
  %foreign "browser:lambda:x=>x.host"
  prim__host : AnyPtr -> PrimIO AnyPtr

  export
  host : (obj : ShadowRoot) -> JSIO Element
  host a =   primToJSIO "host" $ prim__host (toJS a)
  
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : AnyPtr -> PrimIO AnyPtr

  export
  mode : (obj : ShadowRoot) -> JSIO ShadowRootMode
  mode a =   primToJSIO "mode" $ prim__mode (toJS a)
  
  %foreign "browser:lambda:x=>x.onslotchange"
  prim__onslotchange : AnyPtr -> PrimIO AnyPtr

  export
  onslotchange : (obj : ShadowRoot) -> JSIO EventHandler
  onslotchange a =   primToJSIO "onslotchange" $ prim__onslotchange (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onslotchange  = v}"
  prim__setOnslotchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnslotchange : (obj : ShadowRoot) -> (v : EventHandler) -> JSIO ()
  setOnslotchange a b =
    primToJSIO "setOnslotchange" $ prim__setOnslotchange (toJS a) (toJS b)

namespace StaticRange
  
  public export
  JSType StaticRange where
    parents =  [ AbstractRange , JSObject ]

    mixins =  []

namespace Text
  
  public export
  JSType Text where
    parents =  [ CharacterData , Node , EventTarget , JSObject ]

    mixins =  [ ChildNode , NonDocumentTypeChildNode , Slottable ]
  
  %foreign "browser:lambda:x=>x.wholeText"
  prim__wholeText : AnyPtr -> PrimIO AnyPtr

  export
  wholeText : (obj : Text) -> JSIO String
  wholeText a =   primToJSIO "wholeText" $ prim__wholeText (toJS a)

namespace TreeWalker
  
  public export
  JSType TreeWalker where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.filter"
  prim__filter : AnyPtr -> PrimIO AnyPtr

  export
  filter : (obj : TreeWalker) -> JSIO (Maybe NodeFilter)
  filter a =   primToJSIO "filter" $ prim__filter (toJS a)
  
  %foreign "browser:lambda:x=>x.root"
  prim__root : AnyPtr -> PrimIO AnyPtr

  export
  root : (obj : TreeWalker) -> JSIO Node
  root a =   primToJSIO "root" $ prim__root (toJS a)
  
  %foreign "browser:lambda:x=>x.whatToShow"
  prim__whatToShow : AnyPtr -> PrimIO AnyPtr

  export
  whatToShow : (obj : TreeWalker) -> JSIO UInt32
  whatToShow a =   primToJSIO "whatToShow" $ prim__whatToShow (toJS a)
  
  %foreign "browser:lambda:x=>x.currentNode"
  prim__currentNode : AnyPtr -> PrimIO AnyPtr

  export
  currentNode : (obj : TreeWalker) -> JSIO Node
  currentNode a =   primToJSIO "currentNode" $ prim__currentNode (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.currentNode  = v}"
  prim__setCurrentNode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCurrentNode : (obj : TreeWalker) -> (v : Node) -> JSIO ()
  setCurrentNode a b =
    primToJSIO "setCurrentNode" $ prim__setCurrentNode (toJS a) (toJS b)

namespace XMLDocument
  
  public export
  JSType XMLDocument where
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
  JSType XPathEvaluator where
    parents =  [ JSObject ]

    mixins =  [ XPathEvaluatorBase ]

namespace XPathExpression
  
  public export
  JSType XPathExpression where
    parents =  [ JSObject ]

    mixins =  []

namespace XPathResult
  
  public export
  JSType XPathResult where
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
  booleanValue : (obj : XPathResult) -> JSIO Bool
  booleanValue a =   primToJSIO "booleanValue" $ prim__booleanValue (toJS a)
  
  %foreign "browser:lambda:x=>x.invalidIteratorState"
  prim__invalidIteratorState : AnyPtr -> PrimIO AnyPtr

  export
  invalidIteratorState : (obj : XPathResult) -> JSIO Bool
  invalidIteratorState a =
    primToJSIO "invalidIteratorState" $ prim__invalidIteratorState (toJS a)
  
  %foreign "browser:lambda:x=>x.numberValue"
  prim__numberValue : AnyPtr -> PrimIO AnyPtr

  export
  numberValue : (obj : XPathResult) -> JSIO Double
  numberValue a =   primToJSIO "numberValue" $ prim__numberValue (toJS a)
  
  %foreign "browser:lambda:x=>x.resultType"
  prim__resultType : AnyPtr -> PrimIO AnyPtr

  export
  resultType : (obj : XPathResult) -> JSIO UInt16
  resultType a =   primToJSIO "resultType" $ prim__resultType (toJS a)
  
  %foreign "browser:lambda:x=>x.singleNodeValue"
  prim__singleNodeValue : AnyPtr -> PrimIO AnyPtr

  export
  singleNodeValue : (obj : XPathResult) -> JSIO (Maybe Node)
  singleNodeValue a =
    primToJSIO "singleNodeValue" $ prim__singleNodeValue (toJS a)
  
  %foreign "browser:lambda:x=>x.snapshotLength"
  prim__snapshotLength : AnyPtr -> PrimIO AnyPtr

  export
  snapshotLength : (obj : XPathResult) -> JSIO UInt32
  snapshotLength a =
    primToJSIO "snapshotLength" $ prim__snapshotLength (toJS a)
  
  %foreign "browser:lambda:x=>x.stringValue"
  prim__stringValue : AnyPtr -> PrimIO AnyPtr

  export
  stringValue : (obj : XPathResult) -> JSIO String
  stringValue a =   primToJSIO "stringValue" $ prim__stringValue (toJS a)

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------


namespace DocumentOrShadowRoot
  
  %foreign "browser:lambda:x=>x.styleSheets"
  prim__styleSheets : AnyPtr -> PrimIO AnyPtr

  export
  styleSheets : (obj : DocumentOrShadowRoot) -> JSIO StyleSheetList
  styleSheets a =   primToJSIO "styleSheets" $ prim__styleSheets (toJS a)

namespace NonDocumentTypeChildNode
  
  %foreign "browser:lambda:x=>x.nextElementSibling"
  prim__nextElementSibling : AnyPtr -> PrimIO AnyPtr

  export
  nextElementSibling : (obj : NonDocumentTypeChildNode) -> JSIO (Maybe Element)
  nextElementSibling a =
    primToJSIO "nextElementSibling" $ prim__nextElementSibling (toJS a)
  
  %foreign "browser:lambda:x=>x.previousElementSibling"
  prim__previousElementSibling : AnyPtr -> PrimIO AnyPtr

  export
  previousElementSibling :  (obj : NonDocumentTypeChildNode)
                         -> JSIO (Maybe Element)
  previousElementSibling a =
    primToJSIO "previousElementSibling" $ prim__previousElementSibling (toJS a)


namespace ParentNode
  
  %foreign "browser:lambda:x=>x.childElementCount"
  prim__childElementCount : AnyPtr -> PrimIO AnyPtr

  export
  childElementCount : (obj : ParentNode) -> JSIO UInt32
  childElementCount a =
    primToJSIO "childElementCount" $ prim__childElementCount (toJS a)
  
  %foreign "browser:lambda:x=>x.children"
  prim__children : AnyPtr -> PrimIO AnyPtr

  export
  children : (obj : ParentNode) -> JSIO HTMLCollection
  children a =   primToJSIO "children" $ prim__children (toJS a)
  
  %foreign "browser:lambda:x=>x.firstElementChild"
  prim__firstElementChild : AnyPtr -> PrimIO AnyPtr

  export
  firstElementChild : (obj : ParentNode) -> JSIO (Maybe Element)
  firstElementChild a =
    primToJSIO "firstElementChild" $ prim__firstElementChild (toJS a)
  
  %foreign "browser:lambda:x=>x.lastElementChild"
  prim__lastElementChild : AnyPtr -> PrimIO AnyPtr

  export
  lastElementChild : (obj : ParentNode) -> JSIO (Maybe Element)
  lastElementChild a =
    primToJSIO "lastElementChild" $ prim__lastElementChild (toJS a)

namespace Slottable
  
  %foreign "browser:lambda:x=>x.assignedSlot"
  prim__assignedSlot : AnyPtr -> PrimIO AnyPtr

  export
  assignedSlot : (obj : Slottable) -> JSIO (Maybe HTMLSlotElement)
  assignedSlot a =   primToJSIO "assignedSlot" $ prim__assignedSlot (toJS a)


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace AddEventListenerOptions
  
  public export
  JSType AddEventListenerOptions where
    parents =  [ EventListenerOptions , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.once"
  prim__once : AnyPtr -> PrimIO AnyPtr

  export
  once : (obj : AddEventListenerOptions) -> JSIO Bool
  once a =   primToJSIO "once" $ prim__once (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.once  = v}"
  prim__setOnce : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnce : (obj : AddEventListenerOptions) -> (v : Bool) -> JSIO ()
  setOnce a b =   primToJSIO "setOnce" $ prim__setOnce (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.passive"
  prim__passive : AnyPtr -> PrimIO AnyPtr

  export
  passive : (obj : AddEventListenerOptions) -> JSIO Bool
  passive a =   primToJSIO "passive" $ prim__passive (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.passive  = v}"
  prim__setPassive : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPassive : (obj : AddEventListenerOptions) -> (v : Bool) -> JSIO ()
  setPassive a b =
    primToJSIO "setPassive" $ prim__setPassive (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.signal"
  prim__signal : AnyPtr -> PrimIO AnyPtr

  export
  signal : (obj : AddEventListenerOptions) -> JSIO AbortSignal
  signal a =   primToJSIO "signal" $ prim__signal (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.signal  = v}"
  prim__setSignal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSignal : (obj : AddEventListenerOptions) -> (v : AbortSignal) -> JSIO ()
  setSignal a b =   primToJSIO "setSignal" $ prim__setSignal (toJS a) (toJS b)

namespace CustomEventInit
  
  public export
  JSType CustomEventInit where
    parents =  [ EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.detail"
  prim__detail : AnyPtr -> PrimIO AnyPtr

  export
  detail : (obj : CustomEventInit) -> JSIO Any
  detail a =   primToJSIO "detail" $ prim__detail (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.detail  = v}"
  prim__setDetail : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDetail : (obj : CustomEventInit) -> (v : Any) -> JSIO ()
  setDetail a b =   primToJSIO "setDetail" $ prim__setDetail (toJS a) (toJS b)

namespace ElementCreationOptions
  
  public export
  JSType ElementCreationOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.is"
  prim__is : AnyPtr -> PrimIO AnyPtr

  export
  is : (obj : ElementCreationOptions) -> JSIO String
  is a =   primToJSIO "is" $ prim__is (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.is  = v}"
  prim__setIs : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIs : (obj : ElementCreationOptions) -> (v : String) -> JSIO ()
  setIs a b =   primToJSIO "setIs" $ prim__setIs (toJS a) (toJS b)

namespace EventInit
  
  public export
  JSType EventInit where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.bubbles"
  prim__bubbles : AnyPtr -> PrimIO AnyPtr

  export
  bubbles : (obj : EventInit) -> JSIO Bool
  bubbles a =   primToJSIO "bubbles" $ prim__bubbles (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.bubbles  = v}"
  prim__setBubbles : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBubbles : (obj : EventInit) -> (v : Bool) -> JSIO ()
  setBubbles a b =
    primToJSIO "setBubbles" $ prim__setBubbles (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.cancelable"
  prim__cancelable : AnyPtr -> PrimIO AnyPtr

  export
  cancelable : (obj : EventInit) -> JSIO Bool
  cancelable a =   primToJSIO "cancelable" $ prim__cancelable (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.cancelable  = v}"
  prim__setCancelable : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCancelable : (obj : EventInit) -> (v : Bool) -> JSIO ()
  setCancelable a b =
    primToJSIO "setCancelable" $ prim__setCancelable (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.composed"
  prim__composed : AnyPtr -> PrimIO AnyPtr

  export
  composed : (obj : EventInit) -> JSIO Bool
  composed a =   primToJSIO "composed" $ prim__composed (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.composed  = v}"
  prim__setComposed : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setComposed : (obj : EventInit) -> (v : Bool) -> JSIO ()
  setComposed a b =
    primToJSIO "setComposed" $ prim__setComposed (toJS a) (toJS b)

namespace EventListenerOptions
  
  public export
  JSType EventListenerOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.capture"
  prim__capture : AnyPtr -> PrimIO AnyPtr

  export
  capture : (obj : EventListenerOptions) -> JSIO Bool
  capture a =   primToJSIO "capture" $ prim__capture (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.capture  = v}"
  prim__setCapture : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCapture : (obj : EventListenerOptions) -> (v : Bool) -> JSIO ()
  setCapture a b =
    primToJSIO "setCapture" $ prim__setCapture (toJS a) (toJS b)

namespace GetRootNodeOptions
  
  public export
  JSType GetRootNodeOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.composed"
  prim__composed : AnyPtr -> PrimIO AnyPtr

  export
  composed : (obj : GetRootNodeOptions) -> JSIO Bool
  composed a =   primToJSIO "composed" $ prim__composed (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.composed  = v}"
  prim__setComposed : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setComposed : (obj : GetRootNodeOptions) -> (v : Bool) -> JSIO ()
  setComposed a b =
    primToJSIO "setComposed" $ prim__setComposed (toJS a) (toJS b)

namespace MutationObserverInit
  
  public export
  JSType MutationObserverInit where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.attributeFilter"
  prim__attributeFilter : AnyPtr -> PrimIO AnyPtr

  export
  attributeFilter : (obj : MutationObserverInit) -> JSIO (JSArray String)
  attributeFilter a =
    primToJSIO "attributeFilter" $ prim__attributeFilter (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.attributeFilter  = v}"
  prim__setAttributeFilter : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAttributeFilter :  (obj : MutationObserverInit)
                     -> (v : JSArray String)
                     -> JSIO ()
  setAttributeFilter a b =
    primToJSIO "setAttributeFilter" $ prim__setAttributeFilter (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.attributeOldValue"
  prim__attributeOldValue : AnyPtr -> PrimIO AnyPtr

  export
  attributeOldValue : (obj : MutationObserverInit) -> JSIO Bool
  attributeOldValue a =
    primToJSIO "attributeOldValue" $ prim__attributeOldValue (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.attributeOldValue  = v}"
  prim__setAttributeOldValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAttributeOldValue : (obj : MutationObserverInit) -> (v : Bool) -> JSIO ()
  setAttributeOldValue a b =
    primToJSIO "setAttributeOldValue" $ prim__setAttributeOldValue (toJS a)
                                                                   (toJS b)
  
  %foreign "browser:lambda:x=>x.attributes"
  prim__attributes : AnyPtr -> PrimIO AnyPtr

  export
  attributes : (obj : MutationObserverInit) -> JSIO Bool
  attributes a =   primToJSIO "attributes" $ prim__attributes (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.attributes  = v}"
  prim__setAttributes : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAttributes : (obj : MutationObserverInit) -> (v : Bool) -> JSIO ()
  setAttributes a b =
    primToJSIO "setAttributes" $ prim__setAttributes (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.characterData"
  prim__characterData : AnyPtr -> PrimIO AnyPtr

  export
  characterData : (obj : MutationObserverInit) -> JSIO Bool
  characterData a =   primToJSIO "characterData" $ prim__characterData (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.characterData  = v}"
  prim__setCharacterData : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCharacterData : (obj : MutationObserverInit) -> (v : Bool) -> JSIO ()
  setCharacterData a b =
    primToJSIO "setCharacterData" $ prim__setCharacterData (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.characterDataOldValue"
  prim__characterDataOldValue : AnyPtr -> PrimIO AnyPtr

  export
  characterDataOldValue : (obj : MutationObserverInit) -> JSIO Bool
  characterDataOldValue a =
    primToJSIO "characterDataOldValue" $ prim__characterDataOldValue (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.characterDataOldValue  = v}"
  prim__setCharacterDataOldValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCharacterDataOldValue :  (obj : MutationObserverInit)
                           -> (v : Bool)
                           -> JSIO ()
  setCharacterDataOldValue a b =
    primToJSIO "setCharacterDataOldValue" $ prim__setCharacterDataOldValue (toJS a)
                                                                           (toJS b)
  
  %foreign "browser:lambda:x=>x.childList"
  prim__childList : AnyPtr -> PrimIO AnyPtr

  export
  childList : (obj : MutationObserverInit) -> JSIO Bool
  childList a =   primToJSIO "childList" $ prim__childList (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.childList  = v}"
  prim__setChildList : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setChildList : (obj : MutationObserverInit) -> (v : Bool) -> JSIO ()
  setChildList a b =
    primToJSIO "setChildList" $ prim__setChildList (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.subtree"
  prim__subtree : AnyPtr -> PrimIO AnyPtr

  export
  subtree : (obj : MutationObserverInit) -> JSIO Bool
  subtree a =   primToJSIO "subtree" $ prim__subtree (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.subtree  = v}"
  prim__setSubtree : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSubtree : (obj : MutationObserverInit) -> (v : Bool) -> JSIO ()
  setSubtree a b =
    primToJSIO "setSubtree" $ prim__setSubtree (toJS a) (toJS b)

namespace ShadowRootInit
  
  public export
  JSType ShadowRootInit where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : AnyPtr -> PrimIO AnyPtr

  export
  mode : (obj : ShadowRootInit) -> JSIO ShadowRootMode
  mode a =   primToJSIO "mode" $ prim__mode (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.mode  = v}"
  prim__setMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMode : (obj : ShadowRootInit) -> (v : ShadowRootMode) -> JSIO ()
  setMode a b =   primToJSIO "setMode" $ prim__setMode (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.delegatesFocus"
  prim__delegatesFocus : AnyPtr -> PrimIO AnyPtr

  export
  delegatesFocus : (obj : ShadowRootInit) -> JSIO Bool
  delegatesFocus a =
    primToJSIO "delegatesFocus" $ prim__delegatesFocus (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.delegatesFocus  = v}"
  prim__setDelegatesFocus : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDelegatesFocus : (obj : ShadowRootInit) -> (v : Bool) -> JSIO ()
  setDelegatesFocus a b =
    primToJSIO "setDelegatesFocus" $ prim__setDelegatesFocus (toJS a) (toJS b)

namespace StaticRangeInit
  
  public export
  JSType StaticRangeInit where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.endContainer"
  prim__endContainer : AnyPtr -> PrimIO AnyPtr

  export
  endContainer : (obj : StaticRangeInit) -> JSIO Node
  endContainer a =   primToJSIO "endContainer" $ prim__endContainer (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.endContainer  = v}"
  prim__setEndContainer : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEndContainer : (obj : StaticRangeInit) -> (v : Node) -> JSIO ()
  setEndContainer a b =
    primToJSIO "setEndContainer" $ prim__setEndContainer (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.endOffset"
  prim__endOffset : AnyPtr -> PrimIO AnyPtr

  export
  endOffset : (obj : StaticRangeInit) -> JSIO UInt32
  endOffset a =   primToJSIO "endOffset" $ prim__endOffset (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.endOffset  = v}"
  prim__setEndOffset : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEndOffset : (obj : StaticRangeInit) -> (v : UInt32) -> JSIO ()
  setEndOffset a b =
    primToJSIO "setEndOffset" $ prim__setEndOffset (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.startContainer"
  prim__startContainer : AnyPtr -> PrimIO AnyPtr

  export
  startContainer : (obj : StaticRangeInit) -> JSIO Node
  startContainer a =
    primToJSIO "startContainer" $ prim__startContainer (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.startContainer  = v}"
  prim__setStartContainer : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStartContainer : (obj : StaticRangeInit) -> (v : Node) -> JSIO ()
  setStartContainer a b =
    primToJSIO "setStartContainer" $ prim__setStartContainer (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.startOffset"
  prim__startOffset : AnyPtr -> PrimIO AnyPtr

  export
  startOffset : (obj : StaticRangeInit) -> JSIO UInt32
  startOffset a =   primToJSIO "startOffset" $ prim__startOffset (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.startOffset  = v}"
  prim__setStartOffset : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStartOffset : (obj : StaticRangeInit) -> (v : UInt32) -> JSIO ()
  setStartOffset a b =
    primToJSIO "setStartOffset" $ prim__setStartOffset (toJS a) (toJS b)

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

