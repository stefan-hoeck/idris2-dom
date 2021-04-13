module Web.Raw.Dom
 
import JS
import Web.Internal.DomPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace AbortController
  
  public export
  JSType AbortController where
    parents =  [ Object ]

    mixins =  []
  
  export
  new : JSIO AbortController
  new = primJS $ AbortController.prim__new 
  
  export
  signal : (obj : AbortController) -> JSIO AbortSignal
  signal a = primJS $ AbortController.prim__signal a
  
  export
  abort : (obj : AbortController) -> JSIO ()
  abort a = primJS $ AbortController.prim__abort a

namespace AbortSignal
  
  public export
  JSType AbortSignal where
    parents =  [ EventTarget , Object ]

    mixins =  []
  
  export
  abort : JSIO AbortSignal
  abort = primJS $ AbortSignal.prim__abort 
  
  export
  aborted : (obj : AbortSignal) -> JSIO Bool
  aborted a = tryJS "AbortSignal.aborted" $ AbortSignal.prim__aborted a
  
  export
  onabort : AbortSignal -> Attribute False Maybe EventHandlerNonNull
  onabort = fromNullablePrim "AbortSignal.getonabort"
                             prim__onabort
                             prim__setOnabort

namespace AbstractRange
  
  public export
  JSType AbstractRange where
    parents =  [ Object ]

    mixins =  []
  
  export
  collapsed : (obj : AbstractRange) -> JSIO Bool
  collapsed a = tryJS "AbstractRange.collapsed"
              $ AbstractRange.prim__collapsed a
  
  export
  endContainer : (obj : AbstractRange) -> JSIO Node
  endContainer a = primJS $ AbstractRange.prim__endContainer a
  
  export
  endOffset : (obj : AbstractRange) -> JSIO UInt32
  endOffset a = primJS $ AbstractRange.prim__endOffset a
  
  export
  startContainer : (obj : AbstractRange) -> JSIO Node
  startContainer a = primJS $ AbstractRange.prim__startContainer a
  
  export
  startOffset : (obj : AbstractRange) -> JSIO UInt32
  startOffset a = primJS $ AbstractRange.prim__startOffset a

namespace Attr
  
  public export
  JSType Attr where
    parents =  [ Node , EventTarget , Object ]

    mixins =  []
  
  export
  localName : (obj : Attr) -> JSIO String
  localName a = primJS $ Attr.prim__localName a
  
  export
  name : (obj : Attr) -> JSIO String
  name a = primJS $ Attr.prim__name a
  
  export
  namespaceURI : (obj : Attr) -> JSIO (Maybe String)
  namespaceURI a = tryJS "Attr.namespaceURI" $ Attr.prim__namespaceURI a
  
  export
  ownerElement : (obj : Attr) -> JSIO (Maybe Element)
  ownerElement a = tryJS "Attr.ownerElement" $ Attr.prim__ownerElement a
  
  export
  prefix_ : (obj : Attr) -> JSIO (Maybe String)
  prefix_ a = tryJS "Attr.prefix_" $ Attr.prim__prefix a
  
  export
  specified : (obj : Attr) -> JSIO Bool
  specified a = tryJS "Attr.specified" $ Attr.prim__specified a
  
  export
  value : Attr -> Attribute True I String
  value = fromPrim "Attr.getvalue" prim__value prim__setValue

namespace CDATASection
  
  public export
  JSType CDATASection where
    parents =  [ Text , CharacterData , Node , EventTarget , Object ]

    mixins =  [ ChildNode , NonDocumentTypeChildNode , Slottable ]

namespace CharacterData
  
  public export
  JSType CharacterData where
    parents =  [ Node , EventTarget , Object ]

    mixins =  [ ChildNode , NonDocumentTypeChildNode ]
  
  export
  data_ : CharacterData -> Attribute True I String
  data_ = fromPrim "CharacterData.getdata" prim__data prim__setData
  
  export
  length : (obj : CharacterData) -> JSIO UInt32
  length a = primJS $ CharacterData.prim__length a
  
  export
  appendData : (obj : CharacterData) -> (data_ : String) -> JSIO ()
  appendData a b = primJS $ CharacterData.prim__appendData a b
  
  export
  deleteData :  (obj : CharacterData)
             -> (offset : UInt32)
             -> (count : UInt32)
             -> JSIO ()
  deleteData a b c = primJS $ CharacterData.prim__deleteData a b c
  
  export
  insertData :  (obj : CharacterData)
             -> (offset : UInt32)
             -> (data_ : String)
             -> JSIO ()
  insertData a b c = primJS $ CharacterData.prim__insertData a b c
  
  export
  replaceData :  (obj : CharacterData)
              -> (offset : UInt32)
              -> (count : UInt32)
              -> (data_ : String)
              -> JSIO ()
  replaceData a b c d = primJS $ CharacterData.prim__replaceData a b c d
  
  export
  substringData :  (obj : CharacterData)
                -> (offset : UInt32)
                -> (count : UInt32)
                -> JSIO String
  substringData a b c = primJS $ CharacterData.prim__substringData a b c

namespace Comment
  
  public export
  JSType Comment where
    parents =  [ CharacterData , Node , EventTarget , Object ]

    mixins =  [ ChildNode , NonDocumentTypeChildNode ]
  
  export
  new : (data_ : Optional String) -> JSIO Comment
  new a = primJS $ Comment.prim__new (toFFI a)

  export
  new' : JSIO Comment
  new' = primJS $ Comment.prim__new undef

namespace CustomEvent
  
  public export
  JSType CustomEvent where
    parents =  [ Event , Object ]

    mixins =  []
  
  export
  new :  (type : String)
      -> (eventInitDict : Optional CustomEventInit)
      -> JSIO CustomEvent
  new a b = primJS $ CustomEvent.prim__new a (toFFI b)

  export
  new' : (type : String) -> JSIO CustomEvent
  new' a = primJS $ CustomEvent.prim__new a undef
  
  export
  detail : (obj : CustomEvent) -> JSIO Any
  detail a = tryJS "CustomEvent.detail" $ CustomEvent.prim__detail a
  
  export
  initCustomEvent :  (obj : CustomEvent)
                  -> (type : String)
                  -> (bubbles : Optional Bool)
                  -> (cancelable : Optional Bool)
                  -> (detail : Optional Any)
                  -> JSIO ()
  initCustomEvent a b c d e = primJS
                            $ CustomEvent.prim__initCustomEvent a
                                                                b
                                                                (toFFI c)
                                                                (toFFI d)
                                                                (toFFI e)

  export
  initCustomEvent' : (obj : CustomEvent) -> (type : String) -> JSIO ()
  initCustomEvent' a b = primJS
                       $ CustomEvent.prim__initCustomEvent a b undef undef undef

namespace DOMImplementation
  
  public export
  JSType DOMImplementation where
    parents =  [ Object ]

    mixins =  []
  
  export
  createDocument :  (obj : DOMImplementation)
                 -> (namespace_ : Maybe String)
                 -> (qualifiedName : String)
                 -> (doctype : Optional (Maybe DocumentType))
                 -> JSIO XMLDocument
  createDocument a b c d = primJS
                         $ DOMImplementation.prim__createDocument a
                                                                  (toFFI b)
                                                                  c
                                                                  (toFFI d)

  export
  createDocument' :  (obj : DOMImplementation)
                  -> (namespace_ : Maybe String)
                  -> (qualifiedName : String)
                  -> JSIO XMLDocument
  createDocument' a b c = primJS
                        $ DOMImplementation.prim__createDocument a
                                                                 (toFFI b)
                                                                 c
                                                                 undef
  
  export
  createDocumentType :  (obj : DOMImplementation)
                     -> (qualifiedName : String)
                     -> (publicId : String)
                     -> (systemId : String)
                     -> JSIO DocumentType
  createDocumentType a b c d = primJS
                             $ DOMImplementation.prim__createDocumentType a
                                                                          b
                                                                          c
                                                                          d
  
  export
  createHTMLDocument :  (obj : DOMImplementation)
                     -> (title : Optional String)
                     -> JSIO Document
  createHTMLDocument a b = primJS
                         $ DOMImplementation.prim__createHTMLDocument a
                                                                      (toFFI b)

  export
  createHTMLDocument' : (obj : DOMImplementation) -> JSIO Document
  createHTMLDocument' a = primJS
                        $ DOMImplementation.prim__createHTMLDocument a undef
  
  export
  hasFeature : (obj : DOMImplementation) -> JSIO Bool
  hasFeature a = tryJS "DOMImplementation.hasFeature"
               $ DOMImplementation.prim__hasFeature a

namespace DOMTokenList
  
  public export
  JSType DOMTokenList where
    parents =  [ Object ]

    mixins =  []
  
  export
  length : (obj : DOMTokenList) -> JSIO UInt32
  length a = primJS $ DOMTokenList.prim__length a
  
  export
  value : DOMTokenList -> Attribute True I String
  value = fromPrim "DOMTokenList.getvalue" prim__value prim__setValue
  
  export
  add : (obj : DOMTokenList) -> (tokens : VarArg String) -> JSIO ()
  add a b = primJS $ DOMTokenList.prim__add a b
  
  export
  contains : (obj : DOMTokenList) -> (token : String) -> JSIO Bool
  contains a b = tryJS "DOMTokenList.contains" $ DOMTokenList.prim__contains a b
  
  export
  item : (obj : DOMTokenList) -> (index : UInt32) -> JSIO (Maybe String)
  item a b = tryJS "DOMTokenList.item" $ DOMTokenList.prim__item a b
  
  export
  remove : (obj : DOMTokenList) -> (tokens : VarArg String) -> JSIO ()
  remove a b = primJS $ DOMTokenList.prim__remove a b
  
  export
  replace :  (obj : DOMTokenList)
          -> (token : String)
          -> (newToken : String)
          -> JSIO Bool
  replace a b c = tryJS "DOMTokenList.replace"
                $ DOMTokenList.prim__replace a b c
  
  export
  supports : (obj : DOMTokenList) -> (token : String) -> JSIO Bool
  supports a b = tryJS "DOMTokenList.supports" $ DOMTokenList.prim__supports a b
  
  export
  toggle :  (obj : DOMTokenList)
         -> (token : String)
         -> (force : Optional Bool)
         -> JSIO Bool
  toggle a b c = tryJS "DOMTokenList.toggle"
               $ DOMTokenList.prim__toggle a b (toFFI c)

  export
  toggle' : (obj : DOMTokenList) -> (token : String) -> JSIO Bool
  toggle' a b = tryJS "DOMTokenList.toggle'"
              $ DOMTokenList.prim__toggle a b undef

namespace Document
  
  public export
  JSType Document where
    parents =  [ Node , EventTarget , Object ]

    mixins =  [ DocumentAndElementEventHandlers
              , DocumentOrShadowRoot
              , GlobalEventHandlers
              , NonElementParentNode
              , ParentNode
              , XPathEvaluatorBase
              ]
  
  export
  new : JSIO Document
  new = primJS $ Document.prim__new 
  
  export
  get : (obj : Document) -> (name : String) -> JSIO Object
  get a b = primJS $ Document.prim__get a b
  
  export
  URL : (obj : Document) -> JSIO String
  URL a = primJS $ Document.prim__URL a
  
  export
  alinkColor : Document -> Attribute True I String
  alinkColor = fromPrim "Document.getalinkColor"
                        prim__alinkColor
                        prim__setAlinkColor
  
  export
  all : (obj : Document) -> JSIO HTMLAllCollection
  all a = primJS $ Document.prim__all a
  
  export
  anchors : (obj : Document) -> JSIO HTMLCollection
  anchors a = primJS $ Document.prim__anchors a
  
  export
  applets : (obj : Document) -> JSIO HTMLCollection
  applets a = primJS $ Document.prim__applets a
  
  export
  bgColor : Document -> Attribute True I String
  bgColor = fromPrim "Document.getbgColor" prim__bgColor prim__setBgColor
  
  export
  body : Document -> Attribute False Maybe HTMLElement
  body = fromNullablePrim "Document.getbody" prim__body prim__setBody
  
  export
  characterSet : (obj : Document) -> JSIO String
  characterSet a = primJS $ Document.prim__characterSet a
  
  export
  charset : (obj : Document) -> JSIO String
  charset a = primJS $ Document.prim__charset a
  
  export
  compatMode : (obj : Document) -> JSIO String
  compatMode a = primJS $ Document.prim__compatMode a
  
  export
  contentType : (obj : Document) -> JSIO String
  contentType a = primJS $ Document.prim__contentType a
  
  export
  cookie : Document -> Attribute True I String
  cookie = fromPrim "Document.getcookie" prim__cookie prim__setCookie
  
  export
  currentScript :  (obj : Document)
                -> JSIO (Maybe (NS I [ HTMLScriptElement , SVGScriptElement ]))
  currentScript a = tryJS "Document.currentScript"
                  $ Document.prim__currentScript a
  
  export
  defaultView : (obj : Document) -> JSIO (Maybe WindowProxy)
  defaultView a = tryJS "Document.defaultView" $ Document.prim__defaultView a
  
  export
  designMode : Document -> Attribute True I String
  designMode = fromPrim "Document.getdesignMode"
                        prim__designMode
                        prim__setDesignMode
  
  export
  dir : Document -> Attribute True I String
  dir = fromPrim "Document.getdir" prim__dir prim__setDir
  
  export
  doctype : (obj : Document) -> JSIO (Maybe DocumentType)
  doctype a = tryJS "Document.doctype" $ Document.prim__doctype a
  
  export
  documentElement : (obj : Document) -> JSIO (Maybe Element)
  documentElement a = tryJS "Document.documentElement"
                    $ Document.prim__documentElement a
  
  export
  documentURI : (obj : Document) -> JSIO String
  documentURI a = primJS $ Document.prim__documentURI a
  
  export
  domain : Document -> Attribute True I String
  domain = fromPrim "Document.getdomain" prim__domain prim__setDomain
  
  export
  embeds : (obj : Document) -> JSIO HTMLCollection
  embeds a = primJS $ Document.prim__embeds a
  
  export
  fgColor : Document -> Attribute True I String
  fgColor = fromPrim "Document.getfgColor" prim__fgColor prim__setFgColor
  
  export
  forms : (obj : Document) -> JSIO HTMLCollection
  forms a = primJS $ Document.prim__forms a
  
  export
  head : (obj : Document) -> JSIO (Maybe HTMLHeadElement)
  head a = tryJS "Document.head" $ Document.prim__head a
  
  export
  hidden : (obj : Document) -> JSIO Bool
  hidden a = tryJS "Document.hidden" $ Document.prim__hidden a
  
  export
  images : (obj : Document) -> JSIO HTMLCollection
  images a = primJS $ Document.prim__images a
  
  export
  implementation_ : (obj : Document) -> JSIO DOMImplementation
  implementation_ a = primJS $ Document.prim__implementation a
  
  export
  inputEncoding : (obj : Document) -> JSIO String
  inputEncoding a = primJS $ Document.prim__inputEncoding a
  
  export
  lastModified : (obj : Document) -> JSIO String
  lastModified a = primJS $ Document.prim__lastModified a
  
  export
  linkColor : Document -> Attribute True I String
  linkColor = fromPrim "Document.getlinkColor"
                       prim__linkColor
                       prim__setLinkColor
  
  export
  links : (obj : Document) -> JSIO HTMLCollection
  links a = primJS $ Document.prim__links a
  
  export
  location : (obj : Document) -> JSIO (Maybe Location)
  location a = tryJS "Document.location" $ Document.prim__location a
  
  export
  onreadystatechange : Document -> Attribute False Maybe EventHandlerNonNull
  onreadystatechange = fromNullablePrim "Document.getonreadystatechange"
                                        prim__onreadystatechange
                                        prim__setOnreadystatechange
  
  export
  onvisibilitychange : Document -> Attribute False Maybe EventHandlerNonNull
  onvisibilitychange = fromNullablePrim "Document.getonvisibilitychange"
                                        prim__onvisibilitychange
                                        prim__setOnvisibilitychange
  
  export
  plugins : (obj : Document) -> JSIO HTMLCollection
  plugins a = primJS $ Document.prim__plugins a
  
  export
  readyState : (obj : Document) -> JSIO DocumentReadyState
  readyState a = tryJS "Document.readyState" $ Document.prim__readyState a
  
  export
  referrer : (obj : Document) -> JSIO String
  referrer a = primJS $ Document.prim__referrer a
  
  export
  rootElement : (obj : Document) -> JSIO (Maybe SVGSVGElement)
  rootElement a = tryJS "Document.rootElement" $ Document.prim__rootElement a
  
  export
  scripts : (obj : Document) -> JSIO HTMLCollection
  scripts a = primJS $ Document.prim__scripts a
  
  export
  timeline : (obj : Document) -> JSIO DocumentTimeline
  timeline a = primJS $ Document.prim__timeline a
  
  export
  title : Document -> Attribute True I String
  title = fromPrim "Document.gettitle" prim__title prim__setTitle
  
  export
  visibilityState : (obj : Document) -> JSIO VisibilityState
  visibilityState a = tryJS "Document.visibilityState"
                    $ Document.prim__visibilityState a
  
  export
  vlinkColor : Document -> Attribute True I String
  vlinkColor = fromPrim "Document.getvlinkColor"
                        prim__vlinkColor
                        prim__setVlinkColor
  
  export
  adoptNode : (obj : Document) -> (node : Node) -> JSIO Node
  adoptNode a b = primJS $ Document.prim__adoptNode a b
  
  export
  captureEvents : (obj : Document) -> JSIO ()
  captureEvents a = primJS $ Document.prim__captureEvents a
  
  export
  clear : (obj : Document) -> JSIO ()
  clear a = primJS $ Document.prim__clear a
  
  export
  close : (obj : Document) -> JSIO ()
  close a = primJS $ Document.prim__close a
  
  export
  createAttribute : (obj : Document) -> (localName : String) -> JSIO Attr
  createAttribute a b = primJS $ Document.prim__createAttribute a b
  
  export
  createAttributeNS :  (obj : Document)
                    -> (namespace_ : Maybe String)
                    -> (qualifiedName : String)
                    -> JSIO Attr
  createAttributeNS a b c = primJS
                          $ Document.prim__createAttributeNS a (toFFI b) c
  
  export
  createCDATASection : (obj : Document) -> (data_ : String) -> JSIO CDATASection
  createCDATASection a b = primJS $ Document.prim__createCDATASection a b
  
  export
  createComment : (obj : Document) -> (data_ : String) -> JSIO Comment
  createComment a b = primJS $ Document.prim__createComment a b
  
  export
  createDocumentFragment : (obj : Document) -> JSIO DocumentFragment
  createDocumentFragment a = primJS $ Document.prim__createDocumentFragment a
  
  export
  createElement :  (obj : Document)
                -> (localName : String)
                -> (options : Optional (NS I [ String
                                             , ElementCreationOptions
                                             ]))
                -> JSIO Element
  createElement a b c = primJS $ Document.prim__createElement a b (toFFI c)

  export
  createElement' : (obj : Document) -> (localName : String) -> JSIO Element
  createElement' a b = primJS $ Document.prim__createElement a b undef
  
  export
  createElementNS :  (obj : Document)
                  -> (namespace_ : Maybe String)
                  -> (qualifiedName : String)
                  -> (options : Optional (NS I [ String
                                               , ElementCreationOptions
                                               ]))
                  -> JSIO Element
  createElementNS a b c d = primJS
                          $ Document.prim__createElementNS a
                                                           (toFFI b)
                                                           c
                                                           (toFFI d)

  export
  createElementNS' :  (obj : Document)
                   -> (namespace_ : Maybe String)
                   -> (qualifiedName : String)
                   -> JSIO Element
  createElementNS' a b c = primJS
                         $ Document.prim__createElementNS a (toFFI b) c undef
  
  export
  createEvent : (obj : Document) -> (interface_ : String) -> JSIO Event
  createEvent a b = primJS $ Document.prim__createEvent a b
  
  export
  createNodeIterator :  (obj : Document)
                     -> (root : Node)
                     -> (whatToShow : Optional UInt32)
                     -> (filter : Optional (Maybe NodeFilter))
                     -> JSIO NodeIterator
  createNodeIterator a b c d = primJS
                             $ Document.prim__createNodeIterator a
                                                                 b
                                                                 (toFFI c)
                                                                 (toFFI d)

  export
  createNodeIterator' : (obj : Document) -> (root : Node) -> JSIO NodeIterator
  createNodeIterator' a b = primJS
                          $ Document.prim__createNodeIterator a b undef undef
  
  export
  createProcessingInstruction :  (obj : Document)
                              -> (target : String)
                              -> (data_ : String)
                              -> JSIO ProcessingInstruction
  createProcessingInstruction a b c = primJS
                                    $ Document.prim__createProcessingInstruction a
                                                                                 b
                                                                                 c
  
  export
  createRange : (obj : Document) -> JSIO Range
  createRange a = primJS $ Document.prim__createRange a
  
  export
  createTextNode : (obj : Document) -> (data_ : String) -> JSIO Text
  createTextNode a b = primJS $ Document.prim__createTextNode a b
  
  export
  createTreeWalker :  (obj : Document)
                   -> (root : Node)
                   -> (whatToShow : Optional UInt32)
                   -> (filter : Optional (Maybe NodeFilter))
                   -> JSIO TreeWalker
  createTreeWalker a b c d = primJS
                           $ Document.prim__createTreeWalker a
                                                             b
                                                             (toFFI c)
                                                             (toFFI d)

  export
  createTreeWalker' : (obj : Document) -> (root : Node) -> JSIO TreeWalker
  createTreeWalker' a b = primJS
                        $ Document.prim__createTreeWalker a b undef undef
  
  export
  execCommand :  (obj : Document)
              -> (commandId : String)
              -> (showUI : Optional Bool)
              -> (value : Optional String)
              -> JSIO Bool
  execCommand a b c d = tryJS "Document.execCommand"
                      $ Document.prim__execCommand a b (toFFI c) (toFFI d)

  export
  execCommand' : (obj : Document) -> (commandId : String) -> JSIO Bool
  execCommand' a b = tryJS "Document.execCommand'"
                   $ Document.prim__execCommand a b undef undef
  
  export
  getAnimations : (obj : Document) -> JSIO (Array Animation)
  getAnimations a = primJS $ Document.prim__getAnimations a
  
  export
  getElementsByClassName :  (obj : Document)
                         -> (classNames : String)
                         -> JSIO HTMLCollection
  getElementsByClassName a b = primJS
                             $ Document.prim__getElementsByClassName a b
  
  export
  getElementsByName :  (obj : Document)
                    -> (elementName : String)
                    -> JSIO NodeList
  getElementsByName a b = primJS $ Document.prim__getElementsByName a b
  
  export
  getElementsByTagName :  (obj : Document)
                       -> (qualifiedName : String)
                       -> JSIO HTMLCollection
  getElementsByTagName a b = primJS $ Document.prim__getElementsByTagName a b
  
  export
  getElementsByTagNameNS :  (obj : Document)
                         -> (namespace_ : Maybe String)
                         -> (localName : String)
                         -> JSIO HTMLCollection
  getElementsByTagNameNS a b c = primJS
                               $ Document.prim__getElementsByTagNameNS a
                                                                       (toFFI b)
                                                                       c
  
  export
  hasFocus : (obj : Document) -> JSIO Bool
  hasFocus a = tryJS "Document.hasFocus" $ Document.prim__hasFocus a
  
  export
  importNode :  (obj : Document)
             -> (node : Node)
             -> (deep : Optional Bool)
             -> JSIO Node
  importNode a b c = primJS $ Document.prim__importNode a b (toFFI c)

  export
  importNode' : (obj : Document) -> (node : Node) -> JSIO Node
  importNode' a b = primJS $ Document.prim__importNode a b undef
  
  export
  open_ :  (obj : Document)
        -> (unused1 : Optional String)
        -> (unused2 : Optional String)
        -> JSIO Document
  open_ a b c = primJS $ Document.prim__open a (toFFI b) (toFFI c)

  export
  open' : (obj : Document) -> JSIO Document
  open' a = primJS $ Document.prim__open a undef undef
  
  export
  open1 :  (obj : Document)
        -> (url : String)
        -> (name : String)
        -> (features : String)
        -> JSIO (Maybe WindowProxy)
  open1 a b c d = tryJS "Document.open1" $ Document.prim__open1 a b c d
  
  export
  queryCommandEnabled : (obj : Document) -> (commandId : String) -> JSIO Bool
  queryCommandEnabled a b = tryJS "Document.queryCommandEnabled"
                          $ Document.prim__queryCommandEnabled a b
  
  export
  queryCommandIndeterm : (obj : Document) -> (commandId : String) -> JSIO Bool
  queryCommandIndeterm a b = tryJS "Document.queryCommandIndeterm"
                           $ Document.prim__queryCommandIndeterm a b
  
  export
  queryCommandState : (obj : Document) -> (commandId : String) -> JSIO Bool
  queryCommandState a b = tryJS "Document.queryCommandState"
                        $ Document.prim__queryCommandState a b
  
  export
  queryCommandSupported : (obj : Document) -> (commandId : String) -> JSIO Bool
  queryCommandSupported a b = tryJS "Document.queryCommandSupported"
                            $ Document.prim__queryCommandSupported a b
  
  export
  queryCommandValue : (obj : Document) -> (commandId : String) -> JSIO String
  queryCommandValue a b = primJS $ Document.prim__queryCommandValue a b
  
  export
  releaseEvents : (obj : Document) -> JSIO ()
  releaseEvents a = primJS $ Document.prim__releaseEvents a
  
  export
  write : (obj : Document) -> (text : VarArg String) -> JSIO ()
  write a b = primJS $ Document.prim__write a b
  
  export
  writeln : (obj : Document) -> (text : VarArg String) -> JSIO ()
  writeln a b = primJS $ Document.prim__writeln a b

namespace DocumentFragment
  
  public export
  JSType DocumentFragment where
    parents =  [ Node , EventTarget , Object ]

    mixins =  [ NonElementParentNode , ParentNode ]
  
  export
  new : JSIO DocumentFragment
  new = primJS $ DocumentFragment.prim__new 

namespace DocumentType
  
  public export
  JSType DocumentType where
    parents =  [ Node , EventTarget , Object ]

    mixins =  [ ChildNode ]
  
  export
  name : (obj : DocumentType) -> JSIO String
  name a = primJS $ DocumentType.prim__name a
  
  export
  publicId : (obj : DocumentType) -> JSIO String
  publicId a = primJS $ DocumentType.prim__publicId a
  
  export
  systemId : (obj : DocumentType) -> JSIO String
  systemId a = primJS $ DocumentType.prim__systemId a

namespace Element
  
  public export
  JSType Element where
    parents =  [ Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , InnerHTML
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]
  
  export
  attributes : (obj : Element) -> JSIO NamedNodeMap
  attributes a = primJS $ Element.prim__attributes a
  
  export
  classList : (obj : Element) -> JSIO DOMTokenList
  classList a = primJS $ Element.prim__classList a
  
  export
  className : Element -> Attribute True I String
  className = fromPrim "Element.getclassName" prim__className prim__setClassName
  
  export
  id : Element -> Attribute True I String
  id = fromPrim "Element.getid" prim__id prim__setId
  
  export
  localName : (obj : Element) -> JSIO String
  localName a = primJS $ Element.prim__localName a
  
  export
  namespaceURI : (obj : Element) -> JSIO (Maybe String)
  namespaceURI a = tryJS "Element.namespaceURI" $ Element.prim__namespaceURI a
  
  export
  outerHTML : Element -> Attribute True I String
  outerHTML = fromPrim "Element.getouterHTML" prim__outerHTML prim__setOuterHTML
  
  export
  prefix_ : (obj : Element) -> JSIO (Maybe String)
  prefix_ a = tryJS "Element.prefix_" $ Element.prim__prefix a
  
  export
  shadowRoot : (obj : Element) -> JSIO (Maybe ShadowRoot)
  shadowRoot a = tryJS "Element.shadowRoot" $ Element.prim__shadowRoot a
  
  export
  slot : Element -> Attribute True I String
  slot = fromPrim "Element.getslot" prim__slot prim__setSlot
  
  export
  tagName : (obj : Element) -> JSIO String
  tagName a = primJS $ Element.prim__tagName a
  
  export
  attachShadow : (obj : Element) -> (init : ShadowRootInit) -> JSIO ShadowRoot
  attachShadow a b = primJS $ Element.prim__attachShadow a b
  
  export
  closest : (obj : Element) -> (selectors : String) -> JSIO (Maybe Element)
  closest a b = tryJS "Element.closest" $ Element.prim__closest a b
  
  export
  getAttribute :  (obj : Element)
               -> (qualifiedName : String)
               -> JSIO (Maybe String)
  getAttribute a b = tryJS "Element.getAttribute"
                   $ Element.prim__getAttribute a b
  
  export
  getAttributeNS :  (obj : Element)
                 -> (namespace_ : Maybe String)
                 -> (localName : String)
                 -> JSIO (Maybe String)
  getAttributeNS a b c = tryJS "Element.getAttributeNS"
                       $ Element.prim__getAttributeNS a (toFFI b) c
  
  export
  getAttributeNames : (obj : Element) -> JSIO (Array String)
  getAttributeNames a = primJS $ Element.prim__getAttributeNames a
  
  export
  getAttributeNode :  (obj : Element)
                   -> (qualifiedName : String)
                   -> JSIO (Maybe Attr)
  getAttributeNode a b = tryJS "Element.getAttributeNode"
                       $ Element.prim__getAttributeNode a b
  
  export
  getAttributeNodeNS :  (obj : Element)
                     -> (namespace_ : Maybe String)
                     -> (localName : String)
                     -> JSIO (Maybe Attr)
  getAttributeNodeNS a b c = tryJS "Element.getAttributeNodeNS"
                           $ Element.prim__getAttributeNodeNS a (toFFI b) c
  
  export
  getElementsByClassName :  (obj : Element)
                         -> (classNames : String)
                         -> JSIO HTMLCollection
  getElementsByClassName a b = primJS $ Element.prim__getElementsByClassName a b
  
  export
  getElementsByTagName :  (obj : Element)
                       -> (qualifiedName : String)
                       -> JSIO HTMLCollection
  getElementsByTagName a b = primJS $ Element.prim__getElementsByTagName a b
  
  export
  getElementsByTagNameNS :  (obj : Element)
                         -> (namespace_ : Maybe String)
                         -> (localName : String)
                         -> JSIO HTMLCollection
  getElementsByTagNameNS a b c = primJS
                               $ Element.prim__getElementsByTagNameNS a
                                                                      (toFFI b)
                                                                      c
  
  export
  hasAttribute : (obj : Element) -> (qualifiedName : String) -> JSIO Bool
  hasAttribute a b = tryJS "Element.hasAttribute"
                   $ Element.prim__hasAttribute a b
  
  export
  hasAttributeNS :  (obj : Element)
                 -> (namespace_ : Maybe String)
                 -> (localName : String)
                 -> JSIO Bool
  hasAttributeNS a b c = tryJS "Element.hasAttributeNS"
                       $ Element.prim__hasAttributeNS a (toFFI b) c
  
  export
  hasAttributes : (obj : Element) -> JSIO Bool
  hasAttributes a = tryJS "Element.hasAttributes"
                  $ Element.prim__hasAttributes a
  
  export
  insertAdjacentElement :  (obj : Element)
                        -> (where_ : String)
                        -> (element : Element)
                        -> JSIO (Maybe Element)
  insertAdjacentElement a b c = tryJS "Element.insertAdjacentElement"
                              $ Element.prim__insertAdjacentElement a b c
  
  export
  insertAdjacentHTML :  (obj : Element)
                     -> (position : String)
                     -> (text : String)
                     -> JSIO ()
  insertAdjacentHTML a b c = primJS $ Element.prim__insertAdjacentHTML a b c
  
  export
  insertAdjacentText :  (obj : Element)
                     -> (where_ : String)
                     -> (data_ : String)
                     -> JSIO ()
  insertAdjacentText a b c = primJS $ Element.prim__insertAdjacentText a b c
  
  export
  matches : (obj : Element) -> (selectors : String) -> JSIO Bool
  matches a b = tryJS "Element.matches" $ Element.prim__matches a b
  
  export
  pseudo :  (obj : Element)
         -> (type : CSSOMString)
         -> JSIO (Maybe CSSPseudoElement)
  pseudo a b = tryJS "Element.pseudo" $ Element.prim__pseudo a b
  
  export
  removeAttribute : (obj : Element) -> (qualifiedName : String) -> JSIO ()
  removeAttribute a b = primJS $ Element.prim__removeAttribute a b
  
  export
  removeAttributeNS :  (obj : Element)
                    -> (namespace_ : Maybe String)
                    -> (localName : String)
                    -> JSIO ()
  removeAttributeNS a b c = primJS
                          $ Element.prim__removeAttributeNS a (toFFI b) c
  
  export
  removeAttributeNode : (obj : Element) -> (attr : Attr) -> JSIO Attr
  removeAttributeNode a b = primJS $ Element.prim__removeAttributeNode a b
  
  export
  setAttribute :  (obj : Element)
               -> (qualifiedName : String)
               -> (value : String)
               -> JSIO ()
  setAttribute a b c = primJS $ Element.prim__setAttribute a b c
  
  export
  setAttributeNS :  (obj : Element)
                 -> (namespace_ : Maybe String)
                 -> (qualifiedName : String)
                 -> (value : String)
                 -> JSIO ()
  setAttributeNS a b c d = primJS $ Element.prim__setAttributeNS a (toFFI b) c d
  
  export
  setAttributeNode : (obj : Element) -> (attr : Attr) -> JSIO (Maybe Attr)
  setAttributeNode a b = tryJS "Element.setAttributeNode"
                       $ Element.prim__setAttributeNode a b
  
  export
  setAttributeNodeNS : (obj : Element) -> (attr : Attr) -> JSIO (Maybe Attr)
  setAttributeNodeNS a b = tryJS "Element.setAttributeNodeNS"
                         $ Element.prim__setAttributeNodeNS a b
  
  export
  toggleAttribute :  (obj : Element)
                  -> (qualifiedName : String)
                  -> (force : Optional Bool)
                  -> JSIO Bool
  toggleAttribute a b c = tryJS "Element.toggleAttribute"
                        $ Element.prim__toggleAttribute a b (toFFI c)

  export
  toggleAttribute' : (obj : Element) -> (qualifiedName : String) -> JSIO Bool
  toggleAttribute' a b = tryJS "Element.toggleAttribute'"
                       $ Element.prim__toggleAttribute a b undef
  
  export
  webkitMatchesSelector : (obj : Element) -> (selectors : String) -> JSIO Bool
  webkitMatchesSelector a b = tryJS "Element.webkitMatchesSelector"
                            $ Element.prim__webkitMatchesSelector a b

namespace Event
  
  public export
  JSType Event where
    parents =  [ Object ]

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
  NONE = 0
  
  export
  new : (type : String) -> (eventInitDict : Optional EventInit) -> JSIO Event
  new a b = primJS $ Event.prim__new a (toFFI b)

  export
  new' : (type : String) -> JSIO Event
  new' a = primJS $ Event.prim__new a undef
  
  export
  bubbles : (obj : Event) -> JSIO Bool
  bubbles a = tryJS "Event.bubbles" $ Event.prim__bubbles a
  
  export
  cancelBubble : Event -> Attribute True I Bool
  cancelBubble = fromPrim "Event.getcancelBubble"
                          prim__cancelBubble
                          prim__setCancelBubble
  
  export
  cancelable : (obj : Event) -> JSIO Bool
  cancelable a = tryJS "Event.cancelable" $ Event.prim__cancelable a
  
  export
  composed : (obj : Event) -> JSIO Bool
  composed a = tryJS "Event.composed" $ Event.prim__composed a
  
  export
  currentTarget : (obj : Event) -> JSIO (Maybe EventTarget)
  currentTarget a = tryJS "Event.currentTarget" $ Event.prim__currentTarget a
  
  export
  defaultPrevented : (obj : Event) -> JSIO Bool
  defaultPrevented a = tryJS "Event.defaultPrevented"
                     $ Event.prim__defaultPrevented a
  
  export
  eventPhase : (obj : Event) -> JSIO UInt16
  eventPhase a = primJS $ Event.prim__eventPhase a
  
  export
  isTrusted : (obj : Event) -> JSIO Bool
  isTrusted a = tryJS "Event.isTrusted" $ Event.prim__isTrusted a
  
  export
  returnValue : Event -> Attribute True I Bool
  returnValue = fromPrim "Event.getreturnValue"
                         prim__returnValue
                         prim__setReturnValue
  
  export
  srcElement : (obj : Event) -> JSIO (Maybe EventTarget)
  srcElement a = tryJS "Event.srcElement" $ Event.prim__srcElement a
  
  export
  target : (obj : Event) -> JSIO (Maybe EventTarget)
  target a = tryJS "Event.target" $ Event.prim__target a
  
  export
  timeStamp : (obj : Event) -> JSIO Double
  timeStamp a = primJS $ Event.prim__timeStamp a
  
  export
  type : (obj : Event) -> JSIO String
  type a = primJS $ Event.prim__type a
  
  export
  composedPath : (obj : Event) -> JSIO (Array EventTarget)
  composedPath a = primJS $ Event.prim__composedPath a
  
  export
  initEvent :  (obj : Event)
            -> (type : String)
            -> (bubbles : Optional Bool)
            -> (cancelable : Optional Bool)
            -> JSIO ()
  initEvent a b c d = primJS $ Event.prim__initEvent a b (toFFI c) (toFFI d)

  export
  initEvent' : (obj : Event) -> (type : String) -> JSIO ()
  initEvent' a b = primJS $ Event.prim__initEvent a b undef undef
  
  export
  preventDefault : (obj : Event) -> JSIO ()
  preventDefault a = primJS $ Event.prim__preventDefault a
  
  export
  stopImmediatePropagation : (obj : Event) -> JSIO ()
  stopImmediatePropagation a = primJS $ Event.prim__stopImmediatePropagation a
  
  export
  stopPropagation : (obj : Event) -> JSIO ()
  stopPropagation a = primJS $ Event.prim__stopPropagation a

namespace EventTarget
  
  public export
  JSType EventTarget where
    parents =  [ Object ]

    mixins =  []
  
  export
  new : JSIO EventTarget
  new = primJS $ EventTarget.prim__new 
  
  export
  addEventListener :  (obj : EventTarget)
                   -> (type : String)
                   -> (callback : Maybe EventListener)
                   -> (options : Optional (NS I [ AddEventListenerOptions
                                                , Bool
                                                ]))
                   -> JSIO ()
  addEventListener a b c d = primJS
                           $ EventTarget.prim__addEventListener a
                                                                b
                                                                (toFFI c)
                                                                (toFFI d)

  export
  addEventListener' :  (obj : EventTarget)
                    -> (type : String)
                    -> (callback : Maybe EventListener)
                    -> JSIO ()
  addEventListener' a b c = primJS
                          $ EventTarget.prim__addEventListener a
                                                               b
                                                               (toFFI c)
                                                               undef
  
  export
  dispatchEvent : (obj : EventTarget) -> (event : Event) -> JSIO Bool
  dispatchEvent a b = tryJS "EventTarget.dispatchEvent"
                    $ EventTarget.prim__dispatchEvent a b
  
  export
  removeEventListener :  (obj : EventTarget)
                      -> (type : String)
                      -> (callback : Maybe EventListener)
                      -> (options : Optional (NS I [ EventListenerOptions
                                                   , Bool
                                                   ]))
                      -> JSIO ()
  removeEventListener a b c d = primJS
                              $ EventTarget.prim__removeEventListener a
                                                                      b
                                                                      (toFFI c)
                                                                      (toFFI d)

  export
  removeEventListener' :  (obj : EventTarget)
                       -> (type : String)
                       -> (callback : Maybe EventListener)
                       -> JSIO ()
  removeEventListener' a b c = primJS
                             $ EventTarget.prim__removeEventListener a
                                                                     b
                                                                     (toFFI c)
                                                                     undef

namespace HTMLCollection
  
  public export
  JSType HTMLCollection where
    parents =  [ Object ]

    mixins =  []
  
  export
  length : (obj : HTMLCollection) -> JSIO UInt32
  length a = primJS $ HTMLCollection.prim__length a
  
  export
  item : (obj : HTMLCollection) -> (index : UInt32) -> JSIO (Maybe Element)
  item a b = tryJS "HTMLCollection.item" $ HTMLCollection.prim__item a b
  
  export
  namedItem : (obj : HTMLCollection) -> (name : String) -> JSIO (Maybe Element)
  namedItem a b = tryJS "HTMLCollection.namedItem"
                $ HTMLCollection.prim__namedItem a b

namespace MutationObserver
  
  public export
  JSType MutationObserver where
    parents =  [ Object ]

    mixins =  []
  
  export
  new : (callback : MutationCallback) -> JSIO MutationObserver
  new a = primJS $ MutationObserver.prim__new a
  
  export
  disconnect : (obj : MutationObserver) -> JSIO ()
  disconnect a = primJS $ MutationObserver.prim__disconnect a
  
  export
  observe :  (obj : MutationObserver)
          -> (target : Node)
          -> (options : Optional MutationObserverInit)
          -> JSIO ()
  observe a b c = primJS $ MutationObserver.prim__observe a b (toFFI c)

  export
  observe' : (obj : MutationObserver) -> (target : Node) -> JSIO ()
  observe' a b = primJS $ MutationObserver.prim__observe a b undef
  
  export
  takeRecords : (obj : MutationObserver) -> JSIO (Array MutationRecord)
  takeRecords a = primJS $ MutationObserver.prim__takeRecords a

namespace MutationRecord
  
  public export
  JSType MutationRecord where
    parents =  [ Object ]

    mixins =  []
  
  export
  addedNodes : (obj : MutationRecord) -> JSIO NodeList
  addedNodes a = primJS $ MutationRecord.prim__addedNodes a
  
  export
  attributeName : (obj : MutationRecord) -> JSIO (Maybe String)
  attributeName a = tryJS "MutationRecord.attributeName"
                  $ MutationRecord.prim__attributeName a
  
  export
  attributeNamespace : (obj : MutationRecord) -> JSIO (Maybe String)
  attributeNamespace a = tryJS "MutationRecord.attributeNamespace"
                       $ MutationRecord.prim__attributeNamespace a
  
  export
  nextSibling : (obj : MutationRecord) -> JSIO (Maybe Node)
  nextSibling a = tryJS "MutationRecord.nextSibling"
                $ MutationRecord.prim__nextSibling a
  
  export
  oldValue : (obj : MutationRecord) -> JSIO (Maybe String)
  oldValue a = tryJS "MutationRecord.oldValue" $ MutationRecord.prim__oldValue a
  
  export
  previousSibling : (obj : MutationRecord) -> JSIO (Maybe Node)
  previousSibling a = tryJS "MutationRecord.previousSibling"
                    $ MutationRecord.prim__previousSibling a
  
  export
  removedNodes : (obj : MutationRecord) -> JSIO NodeList
  removedNodes a = primJS $ MutationRecord.prim__removedNodes a
  
  export
  target : (obj : MutationRecord) -> JSIO Node
  target a = primJS $ MutationRecord.prim__target a
  
  export
  type : (obj : MutationRecord) -> JSIO String
  type a = primJS $ MutationRecord.prim__type a

namespace NamedNodeMap
  
  public export
  JSType NamedNodeMap where
    parents =  [ Object ]

    mixins =  []
  
  export
  length : (obj : NamedNodeMap) -> JSIO UInt32
  length a = primJS $ NamedNodeMap.prim__length a
  
  export
  getNamedItemNS :  (obj : NamedNodeMap)
                 -> (namespace_ : Maybe String)
                 -> (localName : String)
                 -> JSIO (Maybe Attr)
  getNamedItemNS a b c = tryJS "NamedNodeMap.getNamedItemNS"
                       $ NamedNodeMap.prim__getNamedItemNS a (toFFI b) c
  
  export
  getNamedItem :  (obj : NamedNodeMap)
               -> (qualifiedName : String)
               -> JSIO (Maybe Attr)
  getNamedItem a b = tryJS "NamedNodeMap.getNamedItem"
                   $ NamedNodeMap.prim__getNamedItem a b
  
  export
  item : (obj : NamedNodeMap) -> (index : UInt32) -> JSIO (Maybe Attr)
  item a b = tryJS "NamedNodeMap.item" $ NamedNodeMap.prim__item a b
  
  export
  removeNamedItemNS :  (obj : NamedNodeMap)
                    -> (namespace_ : Maybe String)
                    -> (localName : String)
                    -> JSIO Attr
  removeNamedItemNS a b c = primJS
                          $ NamedNodeMap.prim__removeNamedItemNS a (toFFI b) c
  
  export
  removeNamedItem :  (obj : NamedNodeMap)
                  -> (qualifiedName : String)
                  -> JSIO Attr
  removeNamedItem a b = primJS $ NamedNodeMap.prim__removeNamedItem a b
  
  export
  setNamedItemNS : (obj : NamedNodeMap) -> (attr : Attr) -> JSIO (Maybe Attr)
  setNamedItemNS a b = tryJS "NamedNodeMap.setNamedItemNS"
                     $ NamedNodeMap.prim__setNamedItemNS a b
  
  export
  setNamedItem : (obj : NamedNodeMap) -> (attr : Attr) -> JSIO (Maybe Attr)
  setNamedItem a b = tryJS "NamedNodeMap.setNamedItem"
                   $ NamedNodeMap.prim__setNamedItem a b

namespace Node
  
  public export
  JSType Node where
    parents =  [ EventTarget , Object ]

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
  
  export
  baseURI : (obj : Node) -> JSIO String
  baseURI a = primJS $ Node.prim__baseURI a
  
  export
  childNodes : (obj : Node) -> JSIO NodeList
  childNodes a = primJS $ Node.prim__childNodes a
  
  export
  firstChild : (obj : Node) -> JSIO (Maybe Node)
  firstChild a = tryJS "Node.firstChild" $ Node.prim__firstChild a
  
  export
  isConnected : (obj : Node) -> JSIO Bool
  isConnected a = tryJS "Node.isConnected" $ Node.prim__isConnected a
  
  export
  lastChild : (obj : Node) -> JSIO (Maybe Node)
  lastChild a = tryJS "Node.lastChild" $ Node.prim__lastChild a
  
  export
  nextSibling : (obj : Node) -> JSIO (Maybe Node)
  nextSibling a = tryJS "Node.nextSibling" $ Node.prim__nextSibling a
  
  export
  nodeName : (obj : Node) -> JSIO String
  nodeName a = primJS $ Node.prim__nodeName a
  
  export
  nodeType : (obj : Node) -> JSIO UInt16
  nodeType a = primJS $ Node.prim__nodeType a
  
  export
  nodeValue : Node -> Attribute False Maybe String
  nodeValue = fromNullablePrim "Node.getnodeValue"
                               prim__nodeValue
                               prim__setNodeValue
  
  export
  ownerDocument : (obj : Node) -> JSIO (Maybe Document)
  ownerDocument a = tryJS "Node.ownerDocument" $ Node.prim__ownerDocument a
  
  export
  parentElement : (obj : Node) -> JSIO (Maybe Element)
  parentElement a = tryJS "Node.parentElement" $ Node.prim__parentElement a
  
  export
  parentNode : (obj : Node) -> JSIO (Maybe Node)
  parentNode a = tryJS "Node.parentNode" $ Node.prim__parentNode a
  
  export
  previousSibling : (obj : Node) -> JSIO (Maybe Node)
  previousSibling a = tryJS "Node.previousSibling"
                    $ Node.prim__previousSibling a
  
  export
  textContent : Node -> Attribute False Maybe String
  textContent = fromNullablePrim "Node.gettextContent"
                                 prim__textContent
                                 prim__setTextContent
  
  export
  appendChild : (obj : Node) -> (node : Node) -> JSIO Node
  appendChild a b = primJS $ Node.prim__appendChild a b
  
  export
  cloneNode : (obj : Node) -> (deep : Optional Bool) -> JSIO Node
  cloneNode a b = primJS $ Node.prim__cloneNode a (toFFI b)

  export
  cloneNode' : (obj : Node) -> JSIO Node
  cloneNode' a = primJS $ Node.prim__cloneNode a undef
  
  export
  compareDocumentPosition : (obj : Node) -> (other : Node) -> JSIO UInt16
  compareDocumentPosition a b = primJS $ Node.prim__compareDocumentPosition a b
  
  export
  contains : (obj : Node) -> (other : Maybe Node) -> JSIO Bool
  contains a b = tryJS "Node.contains" $ Node.prim__contains a (toFFI b)
  
  export
  getRootNode :  (obj : Node)
              -> (options : Optional GetRootNodeOptions)
              -> JSIO Node
  getRootNode a b = primJS $ Node.prim__getRootNode a (toFFI b)

  export
  getRootNode' : (obj : Node) -> JSIO Node
  getRootNode' a = primJS $ Node.prim__getRootNode a undef
  
  export
  hasChildNodes : (obj : Node) -> JSIO Bool
  hasChildNodes a = tryJS "Node.hasChildNodes" $ Node.prim__hasChildNodes a
  
  export
  insertBefore :  (obj : Node)
               -> (node : Node)
               -> (child : Maybe Node)
               -> JSIO Node
  insertBefore a b c = primJS $ Node.prim__insertBefore a b (toFFI c)
  
  export
  isDefaultNamespace : (obj : Node) -> (namespace_ : Maybe String) -> JSIO Bool
  isDefaultNamespace a b = tryJS "Node.isDefaultNamespace"
                         $ Node.prim__isDefaultNamespace a (toFFI b)
  
  export
  isEqualNode : (obj : Node) -> (otherNode : Maybe Node) -> JSIO Bool
  isEqualNode a b = tryJS "Node.isEqualNode"
                  $ Node.prim__isEqualNode a (toFFI b)
  
  export
  isSameNode : (obj : Node) -> (otherNode : Maybe Node) -> JSIO Bool
  isSameNode a b = tryJS "Node.isSameNode" $ Node.prim__isSameNode a (toFFI b)
  
  export
  lookupNamespaceURI :  (obj : Node)
                     -> (prefix_ : Maybe String)
                     -> JSIO (Maybe String)
  lookupNamespaceURI a b = tryJS "Node.lookupNamespaceURI"
                         $ Node.prim__lookupNamespaceURI a (toFFI b)
  
  export
  lookupPrefix :  (obj : Node)
               -> (namespace_ : Maybe String)
               -> JSIO (Maybe String)
  lookupPrefix a b = tryJS "Node.lookupPrefix"
                   $ Node.prim__lookupPrefix a (toFFI b)
  
  export
  normalize : (obj : Node) -> JSIO ()
  normalize a = primJS $ Node.prim__normalize a
  
  export
  removeChild : (obj : Node) -> (child : Node) -> JSIO Node
  removeChild a b = primJS $ Node.prim__removeChild a b
  
  export
  replaceChild : (obj : Node) -> (node : Node) -> (child : Node) -> JSIO Node
  replaceChild a b c = primJS $ Node.prim__replaceChild a b c

namespace NodeIterator
  
  public export
  JSType NodeIterator where
    parents =  [ Object ]

    mixins =  []
  
  export
  filter : (obj : NodeIterator) -> JSIO (Maybe NodeFilter)
  filter a = tryJS "NodeIterator.filter" $ NodeIterator.prim__filter a
  
  export
  pointerBeforeReferenceNode : (obj : NodeIterator) -> JSIO Bool
  pointerBeforeReferenceNode a = tryJS "NodeIterator.pointerBeforeReferenceNode"
                               $ NodeIterator.prim__pointerBeforeReferenceNode a
  
  export
  referenceNode : (obj : NodeIterator) -> JSIO Node
  referenceNode a = primJS $ NodeIterator.prim__referenceNode a
  
  export
  root : (obj : NodeIterator) -> JSIO Node
  root a = primJS $ NodeIterator.prim__root a
  
  export
  whatToShow : (obj : NodeIterator) -> JSIO UInt32
  whatToShow a = primJS $ NodeIterator.prim__whatToShow a
  
  export
  detach : (obj : NodeIterator) -> JSIO ()
  detach a = primJS $ NodeIterator.prim__detach a
  
  export
  nextNode : (obj : NodeIterator) -> JSIO (Maybe Node)
  nextNode a = tryJS "NodeIterator.nextNode" $ NodeIterator.prim__nextNode a
  
  export
  previousNode : (obj : NodeIterator) -> JSIO (Maybe Node)
  previousNode a = tryJS "NodeIterator.previousNode"
                 $ NodeIterator.prim__previousNode a

namespace NodeList
  
  public export
  JSType NodeList where
    parents =  [ Object ]

    mixins =  []
  
  export
  length : (obj : NodeList) -> JSIO UInt32
  length a = primJS $ NodeList.prim__length a
  
  export
  item : (obj : NodeList) -> (index : UInt32) -> JSIO (Maybe Node)
  item a b = tryJS "NodeList.item" $ NodeList.prim__item a b

namespace Performance
  
  public export
  JSType Performance where
    parents =  [ EventTarget , Object ]

    mixins =  []
  
  export
  timeOrigin : (obj : Performance) -> JSIO Double
  timeOrigin a = primJS $ Performance.prim__timeOrigin a
  
  export
  now : (obj : Performance) -> JSIO Double
  now a = primJS $ Performance.prim__now a
  
  export
  toJSON : (obj : Performance) -> JSIO Object
  toJSON a = primJS $ Performance.prim__toJSON a

namespace ProcessingInstruction
  
  public export
  JSType ProcessingInstruction where
    parents =  [ CharacterData , Node , EventTarget , Object ]

    mixins =  [ ChildNode , LinkStyle , NonDocumentTypeChildNode ]
  
  export
  target : (obj : ProcessingInstruction) -> JSIO String
  target a = primJS $ ProcessingInstruction.prim__target a

namespace Range
  
  public export
  JSType Range where
    parents =  [ AbstractRange , Object ]

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
  START_TO_START = 0
  
  export
  new : JSIO Range
  new = primJS $ Range.prim__new 
  
  export
  commonAncestorContainer : (obj : Range) -> JSIO Node
  commonAncestorContainer a = primJS $ Range.prim__commonAncestorContainer a
  
  export
  cloneContents : (obj : Range) -> JSIO DocumentFragment
  cloneContents a = primJS $ Range.prim__cloneContents a
  
  export
  cloneRange : (obj : Range) -> JSIO Range
  cloneRange a = primJS $ Range.prim__cloneRange a
  
  export
  collapse : (obj : Range) -> (toStart : Optional Bool) -> JSIO ()
  collapse a b = primJS $ Range.prim__collapse a (toFFI b)

  export
  collapse' : (obj : Range) -> JSIO ()
  collapse' a = primJS $ Range.prim__collapse a undef
  
  export
  compareBoundaryPoints :  (obj : Range)
                        -> (how : UInt16)
                        -> (sourceRange : Range)
                        -> JSIO Int16
  compareBoundaryPoints a b c = primJS $ Range.prim__compareBoundaryPoints a b c
  
  export
  comparePoint :  (obj : Range)
               -> (node : Node)
               -> (offset : UInt32)
               -> JSIO Int16
  comparePoint a b c = primJS $ Range.prim__comparePoint a b c
  
  export
  createContextualFragment :  (obj : Range)
                           -> (fragment : String)
                           -> JSIO DocumentFragment
  createContextualFragment a b = primJS
                               $ Range.prim__createContextualFragment a b
  
  export
  deleteContents : (obj : Range) -> JSIO ()
  deleteContents a = primJS $ Range.prim__deleteContents a
  
  export
  detach : (obj : Range) -> JSIO ()
  detach a = primJS $ Range.prim__detach a
  
  export
  extractContents : (obj : Range) -> JSIO DocumentFragment
  extractContents a = primJS $ Range.prim__extractContents a
  
  export
  insertNode : (obj : Range) -> (node : Node) -> JSIO ()
  insertNode a b = primJS $ Range.prim__insertNode a b
  
  export
  intersectsNode : (obj : Range) -> (node : Node) -> JSIO Bool
  intersectsNode a b = tryJS "Range.intersectsNode"
                     $ Range.prim__intersectsNode a b
  
  export
  isPointInRange :  (obj : Range)
                 -> (node : Node)
                 -> (offset : UInt32)
                 -> JSIO Bool
  isPointInRange a b c = tryJS "Range.isPointInRange"
                       $ Range.prim__isPointInRange a b c
  
  export
  selectNodeContents : (obj : Range) -> (node : Node) -> JSIO ()
  selectNodeContents a b = primJS $ Range.prim__selectNodeContents a b
  
  export
  selectNode : (obj : Range) -> (node : Node) -> JSIO ()
  selectNode a b = primJS $ Range.prim__selectNode a b
  
  export
  setEndAfter : (obj : Range) -> (node : Node) -> JSIO ()
  setEndAfter a b = primJS $ Range.prim__setEndAfter a b
  
  export
  setEndBefore : (obj : Range) -> (node : Node) -> JSIO ()
  setEndBefore a b = primJS $ Range.prim__setEndBefore a b
  
  export
  setEnd : (obj : Range) -> (node : Node) -> (offset : UInt32) -> JSIO ()
  setEnd a b c = primJS $ Range.prim__setEnd a b c
  
  export
  setStartAfter : (obj : Range) -> (node : Node) -> JSIO ()
  setStartAfter a b = primJS $ Range.prim__setStartAfter a b
  
  export
  setStartBefore : (obj : Range) -> (node : Node) -> JSIO ()
  setStartBefore a b = primJS $ Range.prim__setStartBefore a b
  
  export
  setStart : (obj : Range) -> (node : Node) -> (offset : UInt32) -> JSIO ()
  setStart a b c = primJS $ Range.prim__setStart a b c
  
  export
  surroundContents : (obj : Range) -> (newParent : Node) -> JSIO ()
  surroundContents a b = primJS $ Range.prim__surroundContents a b
  
  export
  toString : (obj : Range) -> JSIO String
  toString a = primJS $ Range.prim__toString a

namespace ShadowRoot
  
  public export
  JSType ShadowRoot where
    parents =  [ DocumentFragment , Node , EventTarget , Object ]

    mixins =  [ DocumentOrShadowRoot
              , InnerHTML
              , NonElementParentNode
              , ParentNode
              ]
  
  export
  host : (obj : ShadowRoot) -> JSIO Element
  host a = primJS $ ShadowRoot.prim__host a
  
  export
  mode : (obj : ShadowRoot) -> JSIO ShadowRootMode
  mode a = tryJS "ShadowRoot.mode" $ ShadowRoot.prim__mode a
  
  export
  onslotchange : ShadowRoot -> Attribute False Maybe EventHandlerNonNull
  onslotchange = fromNullablePrim "ShadowRoot.getonslotchange"
                                  prim__onslotchange
                                  prim__setOnslotchange

namespace StaticRange
  
  public export
  JSType StaticRange where
    parents =  [ AbstractRange , Object ]

    mixins =  []
  
  export
  new : (init : StaticRangeInit) -> JSIO StaticRange
  new a = primJS $ StaticRange.prim__new a

namespace Text
  
  public export
  JSType Text where
    parents =  [ CharacterData , Node , EventTarget , Object ]

    mixins =  [ ChildNode , NonDocumentTypeChildNode , Slottable ]
  
  export
  new : (data_ : Optional String) -> JSIO Text
  new a = primJS $ Text.prim__new (toFFI a)

  export
  new' : JSIO Text
  new' = primJS $ Text.prim__new undef
  
  export
  wholeText : (obj : Text) -> JSIO String
  wholeText a = primJS $ Text.prim__wholeText a
  
  export
  splitText : (obj : Text) -> (offset : UInt32) -> JSIO Text
  splitText a b = primJS $ Text.prim__splitText a b

namespace TreeWalker
  
  public export
  JSType TreeWalker where
    parents =  [ Object ]

    mixins =  []
  
  export
  currentNode : TreeWalker -> Attribute True I Node
  currentNode = fromPrim "TreeWalker.getcurrentNode"
                         prim__currentNode
                         prim__setCurrentNode
  
  export
  filter : (obj : TreeWalker) -> JSIO (Maybe NodeFilter)
  filter a = tryJS "TreeWalker.filter" $ TreeWalker.prim__filter a
  
  export
  root : (obj : TreeWalker) -> JSIO Node
  root a = primJS $ TreeWalker.prim__root a
  
  export
  whatToShow : (obj : TreeWalker) -> JSIO UInt32
  whatToShow a = primJS $ TreeWalker.prim__whatToShow a
  
  export
  firstChild : (obj : TreeWalker) -> JSIO (Maybe Node)
  firstChild a = tryJS "TreeWalker.firstChild" $ TreeWalker.prim__firstChild a
  
  export
  lastChild : (obj : TreeWalker) -> JSIO (Maybe Node)
  lastChild a = tryJS "TreeWalker.lastChild" $ TreeWalker.prim__lastChild a
  
  export
  nextNode : (obj : TreeWalker) -> JSIO (Maybe Node)
  nextNode a = tryJS "TreeWalker.nextNode" $ TreeWalker.prim__nextNode a
  
  export
  nextSibling : (obj : TreeWalker) -> JSIO (Maybe Node)
  nextSibling a = tryJS "TreeWalker.nextSibling"
                $ TreeWalker.prim__nextSibling a
  
  export
  parentNode : (obj : TreeWalker) -> JSIO (Maybe Node)
  parentNode a = tryJS "TreeWalker.parentNode" $ TreeWalker.prim__parentNode a
  
  export
  previousNode : (obj : TreeWalker) -> JSIO (Maybe Node)
  previousNode a = tryJS "TreeWalker.previousNode"
                 $ TreeWalker.prim__previousNode a
  
  export
  previousSibling : (obj : TreeWalker) -> JSIO (Maybe Node)
  previousSibling a = tryJS "TreeWalker.previousSibling"
                    $ TreeWalker.prim__previousSibling a

namespace XMLDocument
  
  public export
  JSType XMLDocument where
    parents =  [ Document , Node , EventTarget , Object ]

    mixins =  [ DocumentAndElementEventHandlers
              , DocumentOrShadowRoot
              , GlobalEventHandlers
              , NonElementParentNode
              , ParentNode
              , XPathEvaluatorBase
              ]

namespace XMLSerializer
  
  public export
  JSType XMLSerializer where
    parents =  [ Object ]

    mixins =  []
  
  export
  new : JSIO XMLSerializer
  new = primJS $ XMLSerializer.prim__new 
  
  export
  serializeToString : (obj : XMLSerializer) -> (root : Node) -> JSIO String
  serializeToString a b = primJS $ XMLSerializer.prim__serializeToString a b

namespace XPathEvaluator
  
  public export
  JSType XPathEvaluator where
    parents =  [ Object ]

    mixins =  [ XPathEvaluatorBase ]
  
  export
  new : JSIO XPathEvaluator
  new = primJS $ XPathEvaluator.prim__new 

namespace XPathExpression
  
  public export
  JSType XPathExpression where
    parents =  [ Object ]

    mixins =  []
  
  export
  evaluate :  (obj : XPathExpression)
           -> (contextNode : Node)
           -> (type : Optional UInt16)
           -> (result : Optional (Maybe XPathResult))
           -> JSIO XPathResult
  evaluate a b c d = primJS
                   $ XPathExpression.prim__evaluate a b (toFFI c) (toFFI d)

  export
  evaluate' :  (obj : XPathExpression)
            -> (contextNode : Node)
            -> JSIO XPathResult
  evaluate' a b = primJS $ XPathExpression.prim__evaluate a b undef undef

namespace XPathResult
  
  public export
  JSType XPathResult where
    parents =  [ Object ]

    mixins =  []
  
  public export
  ANY_TYPE : UInt16
  ANY_TYPE = 0
  
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
  
  export
  booleanValue : (obj : XPathResult) -> JSIO Bool
  booleanValue a = tryJS "XPathResult.booleanValue"
                 $ XPathResult.prim__booleanValue a
  
  export
  invalidIteratorState : (obj : XPathResult) -> JSIO Bool
  invalidIteratorState a = tryJS "XPathResult.invalidIteratorState"
                         $ XPathResult.prim__invalidIteratorState a
  
  export
  numberValue : (obj : XPathResult) -> JSIO Double
  numberValue a = primJS $ XPathResult.prim__numberValue a
  
  export
  resultType : (obj : XPathResult) -> JSIO UInt16
  resultType a = primJS $ XPathResult.prim__resultType a
  
  export
  singleNodeValue : (obj : XPathResult) -> JSIO (Maybe Node)
  singleNodeValue a = tryJS "XPathResult.singleNodeValue"
                    $ XPathResult.prim__singleNodeValue a
  
  export
  snapshotLength : (obj : XPathResult) -> JSIO UInt32
  snapshotLength a = primJS $ XPathResult.prim__snapshotLength a
  
  export
  stringValue : (obj : XPathResult) -> JSIO String
  stringValue a = primJS $ XPathResult.prim__stringValue a
  
  export
  iterateNext : (obj : XPathResult) -> JSIO (Maybe Node)
  iterateNext a = tryJS "XPathResult.iterateNext"
                $ XPathResult.prim__iterateNext a
  
  export
  snapshotItem : (obj : XPathResult) -> (index : UInt32) -> JSIO (Maybe Node)
  snapshotItem a b = tryJS "XPathResult.snapshotItem"
                   $ XPathResult.prim__snapshotItem a b

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace ChildNode
  
  export
  after : (obj : ChildNode) -> (nodes : VarArg (Union2 Node String)) -> JSIO ()
  after a b = primJS $ ChildNode.prim__after a b
  
  export
  before : (obj : ChildNode) -> (nodes : VarArg (Union2 Node String)) -> JSIO ()
  before a b = primJS $ ChildNode.prim__before a b
  
  export
  remove : (obj : ChildNode) -> JSIO ()
  remove a = primJS $ ChildNode.prim__remove a
  
  export
  replaceWith :  (obj : ChildNode)
              -> (nodes : VarArg (Union2 Node String))
              -> JSIO ()
  replaceWith a b = primJS $ ChildNode.prim__replaceWith a b

namespace DocumentOrShadowRoot
  
  export
  styleSheets : (obj : DocumentOrShadowRoot) -> JSIO StyleSheetList
  styleSheets a = primJS $ DocumentOrShadowRoot.prim__styleSheets a

namespace InnerHTML
  
  export
  innerHTML : InnerHTML -> Attribute True I String
  innerHTML = fromPrim "InnerHTML.getinnerHTML"
                       prim__innerHTML
                       prim__setInnerHTML

namespace NonDocumentTypeChildNode
  
  export
  nextElementSibling : (obj : NonDocumentTypeChildNode) -> JSIO (Maybe Element)
  nextElementSibling a = tryJS "NonDocumentTypeChildNode.nextElementSibling"
                       $ NonDocumentTypeChildNode.prim__nextElementSibling a
  
  export
  previousElementSibling :  (obj : NonDocumentTypeChildNode)
                         -> JSIO (Maybe Element)
  previousElementSibling a = tryJS "NonDocumentTypeChildNode.previousElementSibling"
                           $ NonDocumentTypeChildNode.prim__previousElementSibling a

namespace NonElementParentNode
  
  export
  getElementById :  (obj : NonElementParentNode)
                 -> (elementId : String)
                 -> JSIO (Maybe Element)
  getElementById a b = tryJS "NonElementParentNode.getElementById"
                     $ NonElementParentNode.prim__getElementById a b

namespace ParentNode
  
  export
  childElementCount : (obj : ParentNode) -> JSIO UInt32
  childElementCount a = primJS $ ParentNode.prim__childElementCount a
  
  export
  children : (obj : ParentNode) -> JSIO HTMLCollection
  children a = primJS $ ParentNode.prim__children a
  
  export
  firstElementChild : (obj : ParentNode) -> JSIO (Maybe Element)
  firstElementChild a = tryJS "ParentNode.firstElementChild"
                      $ ParentNode.prim__firstElementChild a
  
  export
  lastElementChild : (obj : ParentNode) -> JSIO (Maybe Element)
  lastElementChild a = tryJS "ParentNode.lastElementChild"
                     $ ParentNode.prim__lastElementChild a
  
  export
  append :  (obj : ParentNode)
         -> (nodes : VarArg (Union2 Node String))
         -> JSIO ()
  append a b = primJS $ ParentNode.prim__append a b
  
  export
  prepend :  (obj : ParentNode)
          -> (nodes : VarArg (Union2 Node String))
          -> JSIO ()
  prepend a b = primJS $ ParentNode.prim__prepend a b
  
  export
  querySelectorAll : (obj : ParentNode) -> (selectors : String) -> JSIO NodeList
  querySelectorAll a b = primJS $ ParentNode.prim__querySelectorAll a b
  
  export
  querySelector :  (obj : ParentNode)
                -> (selectors : String)
                -> JSIO (Maybe Element)
  querySelector a b = tryJS "ParentNode.querySelector"
                    $ ParentNode.prim__querySelector a b
  
  export
  replaceChildren :  (obj : ParentNode)
                  -> (nodes : VarArg (Union2 Node String))
                  -> JSIO ()
  replaceChildren a b = primJS $ ParentNode.prim__replaceChildren a b

namespace Slottable
  
  export
  assignedSlot : (obj : Slottable) -> JSIO (Maybe HTMLSlotElement)
  assignedSlot a = tryJS "Slottable.assignedSlot"
                 $ Slottable.prim__assignedSlot a

namespace XPathEvaluatorBase
  
  export
  createExpression :  (obj : XPathEvaluatorBase)
                   -> (expression : String)
                   -> (resolver : Optional (Maybe XPathNSResolver))
                   -> JSIO XPathExpression
  createExpression a b c = primJS
                         $ XPathEvaluatorBase.prim__createExpression a
                                                                     b
                                                                     (toFFI c)

  export
  createExpression' :  (obj : XPathEvaluatorBase)
                    -> (expression : String)
                    -> JSIO XPathExpression
  createExpression' a b = primJS
                        $ XPathEvaluatorBase.prim__createExpression a b undef
  
  export
  createNSResolver :  (obj : XPathEvaluatorBase)
                   -> (nodeResolver : Node)
                   -> JSIO XPathNSResolver
  createNSResolver a b = primJS $ XPathEvaluatorBase.prim__createNSResolver a b
  
  export
  evaluate :  (obj : XPathEvaluatorBase)
           -> (expression : String)
           -> (contextNode : Node)
           -> (resolver : Optional (Maybe XPathNSResolver))
           -> (type : Optional UInt16)
           -> (result : Optional (Maybe XPathResult))
           -> JSIO XPathResult
  evaluate a b c d e f = primJS
                       $ XPathEvaluatorBase.prim__evaluate a
                                                           b
                                                           c
                                                           (toFFI d)
                                                           (toFFI e)
                                                           (toFFI f)

  export
  evaluate' :  (obj : XPathEvaluatorBase)
            -> (expression : String)
            -> (contextNode : Node)
            -> JSIO XPathResult
  evaluate' a b c = primJS
                  $ XPathEvaluatorBase.prim__evaluate a b c undef undef undef

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace AddEventListenerOptions
  
  public export
  JSType AddEventListenerOptions where
    parents =  [ EventListenerOptions , Object ]

    mixins =  []
  
  export
  new :  (passive : Optional Bool)
      -> (once : Optional Bool)
      -> (signal : Optional AbortSignal)
      -> JSIO AddEventListenerOptions
  new a b c = primJS
            $ AddEventListenerOptions.prim__new (toFFI a) (toFFI b) (toFFI c)

  export
  new' : JSIO AddEventListenerOptions
  new' = primJS $ AddEventListenerOptions.prim__new undef undef undef
  
  export
  once : AddEventListenerOptions -> Attribute True Optional Bool
  once = fromUndefOrPrim "AddEventListenerOptions.getonce"
                         prim__once
                         prim__setOnce
                         False
  
  export
  passive : AddEventListenerOptions -> Attribute True Optional Bool
  passive = fromUndefOrPrim "AddEventListenerOptions.getpassive"
                            prim__passive
                            prim__setPassive
                            False
  
  export
  signal : AddEventListenerOptions -> Attribute False Optional AbortSignal
  signal = fromUndefOrPrimNoDefault "AddEventListenerOptions.getsignal"
                                    prim__signal
                                    prim__setSignal

namespace CustomEventInit
  
  public export
  JSType CustomEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []
  
  export
  new : (detail : Optional Any) -> JSIO CustomEventInit
  new a = primJS $ CustomEventInit.prim__new (toFFI a)

  export
  new' : JSIO CustomEventInit
  new' = primJS $ CustomEventInit.prim__new undef
  
  export
  detail : CustomEventInit -> Attribute True Optional Any
  detail = fromUndefOrPrim "CustomEventInit.getdetail"
                           prim__detail
                           prim__setDetail
                           (MkAny $ null {a = ()})

namespace ElementCreationOptions
  
  public export
  JSType ElementCreationOptions where
    parents =  [ Object ]

    mixins =  []
  
  export
  new : (is : Optional String) -> JSIO ElementCreationOptions
  new a = primJS $ ElementCreationOptions.prim__new (toFFI a)

  export
  new' : JSIO ElementCreationOptions
  new' = primJS $ ElementCreationOptions.prim__new undef
  
  export
  is : ElementCreationOptions -> Attribute False Optional String
  is = fromUndefOrPrimNoDefault "ElementCreationOptions.getis"
                                prim__is
                                prim__setIs

namespace EventInit
  
  public export
  JSType EventInit where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (bubbles : Optional Bool)
      -> (cancelable : Optional Bool)
      -> (composed : Optional Bool)
      -> JSIO EventInit
  new a b c = primJS $ EventInit.prim__new (toFFI a) (toFFI b) (toFFI c)

  export
  new' : JSIO EventInit
  new' = primJS $ EventInit.prim__new undef undef undef
  
  export
  bubbles : EventInit -> Attribute True Optional Bool
  bubbles = fromUndefOrPrim "EventInit.getbubbles"
                            prim__bubbles
                            prim__setBubbles
                            False
  
  export
  cancelable : EventInit -> Attribute True Optional Bool
  cancelable = fromUndefOrPrim "EventInit.getcancelable"
                               prim__cancelable
                               prim__setCancelable
                               False
  
  export
  composed : EventInit -> Attribute True Optional Bool
  composed = fromUndefOrPrim "EventInit.getcomposed"
                             prim__composed
                             prim__setComposed
                             False

namespace EventListenerOptions
  
  public export
  JSType EventListenerOptions where
    parents =  [ Object ]

    mixins =  []
  
  export
  new : (capture : Optional Bool) -> JSIO EventListenerOptions
  new a = primJS $ EventListenerOptions.prim__new (toFFI a)

  export
  new' : JSIO EventListenerOptions
  new' = primJS $ EventListenerOptions.prim__new undef
  
  export
  capture : EventListenerOptions -> Attribute True Optional Bool
  capture = fromUndefOrPrim "EventListenerOptions.getcapture"
                            prim__capture
                            prim__setCapture
                            False

namespace GetRootNodeOptions
  
  public export
  JSType GetRootNodeOptions where
    parents =  [ Object ]

    mixins =  []
  
  export
  new : (composed : Optional Bool) -> JSIO GetRootNodeOptions
  new a = primJS $ GetRootNodeOptions.prim__new (toFFI a)

  export
  new' : JSIO GetRootNodeOptions
  new' = primJS $ GetRootNodeOptions.prim__new undef
  
  export
  composed : GetRootNodeOptions -> Attribute True Optional Bool
  composed = fromUndefOrPrim "GetRootNodeOptions.getcomposed"
                             prim__composed
                             prim__setComposed
                             False

namespace MutationObserverInit
  
  public export
  JSType MutationObserverInit where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (childList : Optional Bool)
      -> (attributes : Optional Bool)
      -> (characterData : Optional Bool)
      -> (subtree : Optional Bool)
      -> (attributeOldValue : Optional Bool)
      -> (characterDataOldValue : Optional Bool)
      -> (attributeFilter : Optional (Array String))
      -> JSIO MutationObserverInit
  new a b c d e f g = primJS
                    $ MutationObserverInit.prim__new (toFFI a)
                                                     (toFFI b)
                                                     (toFFI c)
                                                     (toFFI d)
                                                     (toFFI e)
                                                     (toFFI f)
                                                     (toFFI g)

  export
  new' : JSIO MutationObserverInit
  new' = primJS
       $ MutationObserverInit.prim__new undef
                                        undef
                                        undef
                                        undef
                                        undef
                                        undef
                                        undef
  
  export
  attributeFilter : MutationObserverInit -> Attribute False Optional (Array String)
  attributeFilter = fromUndefOrPrimNoDefault "MutationObserverInit.getattributeFilter"
                                             prim__attributeFilter
                                             prim__setAttributeFilter
  
  export
  attributeOldValue : MutationObserverInit -> Attribute False Optional Bool
  attributeOldValue = fromUndefOrPrimNoDefault "MutationObserverInit.getattributeOldValue"
                                               prim__attributeOldValue
                                               prim__setAttributeOldValue
  
  export
  attributes : MutationObserverInit -> Attribute False Optional Bool
  attributes = fromUndefOrPrimNoDefault "MutationObserverInit.getattributes"
                                        prim__attributes
                                        prim__setAttributes
  
  export
  characterData : MutationObserverInit -> Attribute False Optional Bool
  characterData = fromUndefOrPrimNoDefault "MutationObserverInit.getcharacterData"
                                           prim__characterData
                                           prim__setCharacterData
  
  export
  characterDataOldValue : MutationObserverInit -> Attribute False Optional Bool
  characterDataOldValue = fromUndefOrPrimNoDefault "MutationObserverInit.getcharacterDataOldValue"
                                                   prim__characterDataOldValue
                                                   prim__setCharacterDataOldValue
  
  export
  childList : MutationObserverInit -> Attribute True Optional Bool
  childList = fromUndefOrPrim "MutationObserverInit.getchildList"
                              prim__childList
                              prim__setChildList
                              False
  
  export
  subtree : MutationObserverInit -> Attribute True Optional Bool
  subtree = fromUndefOrPrim "MutationObserverInit.getsubtree"
                            prim__subtree
                            prim__setSubtree
                            False

namespace ShadowRootInit
  
  public export
  JSType ShadowRootInit where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (mode : ShadowRootMode)
      -> (delegatesFocus : Optional Bool)
      -> JSIO ShadowRootInit
  new a b = primJS $ ShadowRootInit.prim__new (toFFI a) (toFFI b)

  export
  new' : (mode : ShadowRootMode) -> JSIO ShadowRootInit
  new' a = primJS $ ShadowRootInit.prim__new (toFFI a) undef
  
  export
  delegatesFocus : ShadowRootInit -> Attribute True Optional Bool
  delegatesFocus = fromUndefOrPrim "ShadowRootInit.getdelegatesFocus"
                                   prim__delegatesFocus
                                   prim__setDelegatesFocus
                                   False
  
  export
  mode : ShadowRootInit -> Attribute True I ShadowRootMode
  mode = fromPrim "ShadowRootInit.getmode" prim__mode prim__setMode

namespace StaticRangeInit
  
  public export
  JSType StaticRangeInit where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (startContainer : Node)
      -> (startOffset : UInt32)
      -> (endContainer : Node)
      -> (endOffset : UInt32)
      -> JSIO StaticRangeInit
  new a b c d = primJS $ StaticRangeInit.prim__new a b c d
  
  export
  endContainer : StaticRangeInit -> Attribute True I Node
  endContainer = fromPrim "StaticRangeInit.getendContainer"
                          prim__endContainer
                          prim__setEndContainer
  
  export
  endOffset : StaticRangeInit -> Attribute True I UInt32
  endOffset = fromPrim "StaticRangeInit.getendOffset"
                       prim__endOffset
                       prim__setEndOffset
  
  export
  startContainer : StaticRangeInit -> Attribute True I Node
  startContainer = fromPrim "StaticRangeInit.getstartContainer"
                            prim__startContainer
                            prim__setStartContainer
  
  export
  startOffset : StaticRangeInit -> Attribute True I UInt32
  startOffset = fromPrim "StaticRangeInit.getstartOffset"
                         prim__startOffset
                         prim__setStartOffset

--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------

namespace EventListener
  
  export
  toEventListener : ( Event -> IO () ) -> JSIO EventListener
  toEventListener cb = primJS $ prim__toEventListener cb

namespace MutationCallback
  
  export
  toMutationCallback :  ( Array MutationRecord -> MutationObserver -> IO () )
                     -> JSIO MutationCallback
  toMutationCallback cb = primJS $ prim__toMutationCallback cb

namespace NodeFilter
  
  export
  toNodeFilter : ( Node -> IO UInt16 ) -> JSIO NodeFilter
  toNodeFilter cb = primJS $ prim__toNodeFilter cb
  
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

namespace XPathNSResolver
  
  export
  toXPathNSResolver :  ( Nullable String -> IO (Nullable String) )
                    -> JSIO XPathNSResolver
  toXPathNSResolver cb = primJS $ prim__toXPathNSResolver cb
