module Web.Dom
 
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
  onabort : (obj : AbortSignal) -> JSIO (Maybe EventHandlerNonNull)
  onabort a = tryJS "AbortSignal.onabort" $ AbortSignal.prim__onabort a
  
  export
  setOnabort :  (obj : AbortSignal)
             -> (value : Maybe EventHandlerNonNull)
             -> JSIO ()
  setOnabort a b = primJS $ AbortSignal.prim__setOnabort a (toFFI b)

namespace AbstractRange
  
  public export
  JSType AbstractRange where
    parents =  [ Object ]

    mixins =  []
  
  export
  collapsed : (obj : AbstractRange) -> JSIO Bool
  collapsed a = tryJS "AbstractRange.collapsed" $ AbstractRange.prim__collapsed a
  
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
  value : (obj : Attr) -> JSIO String
  value a = primJS $ Attr.prim__value a
  
  export
  setValue : (obj : Attr) -> (value : String) -> JSIO ()
  setValue a b = primJS $ Attr.prim__setValue a b

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
  data_ : (obj : CharacterData) -> JSIO String
  data_ a = primJS $ CharacterData.prim__data a
  
  export
  setData : (obj : CharacterData) -> (value : String) -> JSIO ()
  setData a b = primJS $ CharacterData.prim__setData a b
  
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
  new' = new Undef

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
  new' a = new a Undef
  
  export
  detail : (obj : CustomEvent) -> JSIO AnyPtr
  detail a = primJS $ CustomEvent.prim__detail a
  
  export
  initCustomEvent :  (obj : CustomEvent)
                  -> (type : String)
                  -> (bubbles : Optional Bool)
                  -> (cancelable : Optional Bool)
                  -> (detail : Optional AnyPtr)
                  -> JSIO ()
  initCustomEvent a b c d e = primJS $ CustomEvent.prim__initCustomEvent a
                                                                         b
                                                                         (toFFI c)
                                                                         (toFFI d)
                                                                         (toFFI e)

  export
  initCustomEvent' : (obj : CustomEvent) -> (type : String) -> JSIO ()
  initCustomEvent' a b = initCustomEvent a b Undef Undef Undef

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
  createDocument a b c d = primJS $ DOMImplementation.prim__createDocument a
                                                                           (toFFI b)
                                                                           c
                                                                           (toFFI d)

  export
  createDocument' :  (obj : DOMImplementation)
                  -> (namespace_ : Maybe String)
                  -> (qualifiedName : String)
                  -> JSIO XMLDocument
  createDocument' a b c = createDocument a b c Undef
  
  export
  createDocumentType :  (obj : DOMImplementation)
                     -> (qualifiedName : String)
                     -> (publicId : String)
                     -> (systemId : String)
                     -> JSIO DocumentType
  createDocumentType a b c d = primJS $ DOMImplementation.prim__createDocumentType a
                                                                                   b
                                                                                   c
                                                                                   d
  
  export
  createHTMLDocument :  (obj : DOMImplementation)
                     -> (title : Optional String)
                     -> JSIO Document
  createHTMLDocument a b = primJS $ DOMImplementation.prim__createHTMLDocument a
                                                                               (toFFI b)

  export
  createHTMLDocument' : (obj : DOMImplementation) -> JSIO Document
  createHTMLDocument' a = createHTMLDocument a Undef
  
  export
  hasFeature : (obj : DOMImplementation) -> JSIO Bool
  hasFeature a = tryJS "DOMImplementation.hasFeature" $ DOMImplementation.prim__hasFeature a

namespace DOMTokenList
  
  public export
  JSType DOMTokenList where
    parents =  [ Object ]

    mixins =  []
  
  export
  length : (obj : DOMTokenList) -> JSIO UInt32
  length a = primJS $ DOMTokenList.prim__length a
  
  export
  value : (obj : DOMTokenList) -> JSIO String
  value a = primJS $ DOMTokenList.prim__value a
  
  export
  setValue : (obj : DOMTokenList) -> (value : String) -> JSIO ()
  setValue a b = primJS $ DOMTokenList.prim__setValue a b
  
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
  replace a b c = tryJS "DOMTokenList.replace" $ DOMTokenList.prim__replace a
                                                                            b
                                                                            c
  
  export
  supports : (obj : DOMTokenList) -> (token : String) -> JSIO Bool
  supports a b = tryJS "DOMTokenList.supports" $ DOMTokenList.prim__supports a b
  
  export
  toggle :  (obj : DOMTokenList)
         -> (token : String)
         -> (force : Optional Bool)
         -> JSIO Bool
  toggle a b c = tryJS "DOMTokenList.toggle" $ DOMTokenList.prim__toggle a
                                                                         b
                                                                         (toFFI c)

  export
  toggle' : (obj : DOMTokenList) -> (token : String) -> JSIO Bool
  toggle' a b = toggle a b Undef

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
  alinkColor : (obj : Document) -> JSIO String
  alinkColor a = primJS $ Document.prim__alinkColor a
  
  export
  setAlinkColor : (obj : Document) -> (value : String) -> JSIO ()
  setAlinkColor a b = primJS $ Document.prim__setAlinkColor a b
  
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
  bgColor : (obj : Document) -> JSIO String
  bgColor a = primJS $ Document.prim__bgColor a
  
  export
  setBgColor : (obj : Document) -> (value : String) -> JSIO ()
  setBgColor a b = primJS $ Document.prim__setBgColor a b
  
  export
  body : (obj : Document) -> JSIO (Maybe HTMLElement)
  body a = tryJS "Document.body" $ Document.prim__body a
  
  export
  setBody : (obj : Document) -> (value : Maybe HTMLElement) -> JSIO ()
  setBody a b = primJS $ Document.prim__setBody a (toFFI b)
  
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
  cookie : (obj : Document) -> JSIO String
  cookie a = primJS $ Document.prim__cookie a
  
  export
  setCookie : (obj : Document) -> (value : String) -> JSIO ()
  setCookie a b = primJS $ Document.prim__setCookie a b
  
  export
  currentScript :  (obj : Document)
                -> JSIO (Maybe (NS I [ HTMLScriptElement , SVGScriptElement ]))
  currentScript a = tryJS "Document.currentScript" $ Document.prim__currentScript a
  
  export
  defaultView : (obj : Document) -> JSIO (Maybe WindowProxy)
  defaultView a = tryJS "Document.defaultView" $ Document.prim__defaultView a
  
  export
  designMode : (obj : Document) -> JSIO String
  designMode a = primJS $ Document.prim__designMode a
  
  export
  setDesignMode : (obj : Document) -> (value : String) -> JSIO ()
  setDesignMode a b = primJS $ Document.prim__setDesignMode a b
  
  export
  dir : (obj : Document) -> JSIO String
  dir a = primJS $ Document.prim__dir a
  
  export
  setDir : (obj : Document) -> (value : String) -> JSIO ()
  setDir a b = primJS $ Document.prim__setDir a b
  
  export
  doctype : (obj : Document) -> JSIO (Maybe DocumentType)
  doctype a = tryJS "Document.doctype" $ Document.prim__doctype a
  
  export
  documentElement : (obj : Document) -> JSIO (Maybe Element)
  documentElement a = tryJS "Document.documentElement" $ Document.prim__documentElement a
  
  export
  documentURI : (obj : Document) -> JSIO String
  documentURI a = primJS $ Document.prim__documentURI a
  
  export
  domain : (obj : Document) -> JSIO String
  domain a = primJS $ Document.prim__domain a
  
  export
  setDomain : (obj : Document) -> (value : String) -> JSIO ()
  setDomain a b = primJS $ Document.prim__setDomain a b
  
  export
  embeds : (obj : Document) -> JSIO HTMLCollection
  embeds a = primJS $ Document.prim__embeds a
  
  export
  fgColor : (obj : Document) -> JSIO String
  fgColor a = primJS $ Document.prim__fgColor a
  
  export
  setFgColor : (obj : Document) -> (value : String) -> JSIO ()
  setFgColor a b = primJS $ Document.prim__setFgColor a b
  
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
  linkColor : (obj : Document) -> JSIO String
  linkColor a = primJS $ Document.prim__linkColor a
  
  export
  setLinkColor : (obj : Document) -> (value : String) -> JSIO ()
  setLinkColor a b = primJS $ Document.prim__setLinkColor a b
  
  export
  links : (obj : Document) -> JSIO HTMLCollection
  links a = primJS $ Document.prim__links a
  
  export
  location : (obj : Document) -> JSIO (Maybe Location)
  location a = tryJS "Document.location" $ Document.prim__location a
  
  export
  onreadystatechange : (obj : Document) -> JSIO (Maybe EventHandlerNonNull)
  onreadystatechange a = tryJS "Document.onreadystatechange" $ Document.prim__onreadystatechange a
  
  export
  setOnreadystatechange :  (obj : Document)
                        -> (value : Maybe EventHandlerNonNull)
                        -> JSIO ()
  setOnreadystatechange a b = primJS $ Document.prim__setOnreadystatechange a
                                                                            (toFFI b)
  
  export
  onvisibilitychange : (obj : Document) -> JSIO (Maybe EventHandlerNonNull)
  onvisibilitychange a = tryJS "Document.onvisibilitychange" $ Document.prim__onvisibilitychange a
  
  export
  setOnvisibilitychange :  (obj : Document)
                        -> (value : Maybe EventHandlerNonNull)
                        -> JSIO ()
  setOnvisibilitychange a b = primJS $ Document.prim__setOnvisibilitychange a
                                                                            (toFFI b)
  
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
  title : (obj : Document) -> JSIO String
  title a = primJS $ Document.prim__title a
  
  export
  setTitle : (obj : Document) -> (value : String) -> JSIO ()
  setTitle a b = primJS $ Document.prim__setTitle a b
  
  export
  visibilityState : (obj : Document) -> JSIO VisibilityState
  visibilityState a = tryJS "Document.visibilityState" $ Document.prim__visibilityState a
  
  export
  vlinkColor : (obj : Document) -> JSIO String
  vlinkColor a = primJS $ Document.prim__vlinkColor a
  
  export
  setVlinkColor : (obj : Document) -> (value : String) -> JSIO ()
  setVlinkColor a b = primJS $ Document.prim__setVlinkColor a b
  
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
  createAttributeNS a b c = primJS $ Document.prim__createAttributeNS a
                                                                      (toFFI b)
                                                                      c
  
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
  createElement' a b = createElement a b Undef
  
  export
  createElementNS :  (obj : Document)
                  -> (namespace_ : Maybe String)
                  -> (qualifiedName : String)
                  -> (options : Optional (NS I [ String
                                               , ElementCreationOptions
                                               ]))
                  -> JSIO Element
  createElementNS a b c d = primJS $ Document.prim__createElementNS a
                                                                    (toFFI b)
                                                                    c
                                                                    (toFFI d)

  export
  createElementNS' :  (obj : Document)
                   -> (namespace_ : Maybe String)
                   -> (qualifiedName : String)
                   -> JSIO Element
  createElementNS' a b c = createElementNS a b c Undef
  
  export
  createEvent : (obj : Document) -> (interface_ : String) -> JSIO Event
  createEvent a b = primJS $ Document.prim__createEvent a b
  
  export
  createNodeIterator :  (obj : Document)
                     -> (root : Node)
                     -> (whatToShow : Optional UInt32)
                     -> (filter : Optional (Maybe NodeFilter))
                     -> JSIO NodeIterator
  createNodeIterator a b c d = primJS $ Document.prim__createNodeIterator a
                                                                          b
                                                                          (toFFI c)
                                                                          (toFFI d)

  export
  createNodeIterator' : (obj : Document) -> (root : Node) -> JSIO NodeIterator
  createNodeIterator' a b = createNodeIterator a b Undef Undef
  
  export
  createProcessingInstruction :  (obj : Document)
                              -> (target : String)
                              -> (data_ : String)
                              -> JSIO ProcessingInstruction
  createProcessingInstruction a b c = primJS $ Document.prim__createProcessingInstruction a
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
  createTreeWalker a b c d = primJS $ Document.prim__createTreeWalker a
                                                                      b
                                                                      (toFFI c)
                                                                      (toFFI d)

  export
  createTreeWalker' : (obj : Document) -> (root : Node) -> JSIO TreeWalker
  createTreeWalker' a b = createTreeWalker a b Undef Undef
  
  export
  execCommand :  (obj : Document)
              -> (commandId : String)
              -> (showUI : Optional Bool)
              -> (value : Optional String)
              -> JSIO Bool
  execCommand a b c d = tryJS "Document.execCommand" $ Document.prim__execCommand a
                                                                                  b
                                                                                  (toFFI c)
                                                                                  (toFFI d)

  export
  execCommand' : (obj : Document) -> (commandId : String) -> JSIO Bool
  execCommand' a b = execCommand a b Undef Undef
  
  export
  getAnimations : (obj : Document) -> JSIO (Array Animation)
  getAnimations a = primJS $ Document.prim__getAnimations a
  
  export
  getElementsByClassName :  (obj : Document)
                         -> (classNames : String)
                         -> JSIO HTMLCollection
  getElementsByClassName a b = primJS $ Document.prim__getElementsByClassName a
                                                                              b
  
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
  getElementsByTagNameNS a b c = primJS $ Document.prim__getElementsByTagNameNS a
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
  importNode' a b = importNode a b Undef
  
  export
  open_ :  (obj : Document)
        -> (unused1 : Optional String)
        -> (unused2 : Optional String)
        -> JSIO Document
  open_ a b c = primJS $ Document.prim__open a (toFFI b) (toFFI c)

  export
  open' : (obj : Document) -> JSIO Document
  open' a = open_ a Undef Undef
  
  export
  open1 :  (obj : Document)
        -> (url : String)
        -> (name : String)
        -> (features : String)
        -> JSIO (Maybe WindowProxy)
  open1 a b c d = tryJS "Document.open1" $ Document.prim__open1 a b c d
  
  export
  queryCommandEnabled : (obj : Document) -> (commandId : String) -> JSIO Bool
  queryCommandEnabled a b = tryJS "Document.queryCommandEnabled" $ Document.prim__queryCommandEnabled a
                                                                                                      b
  
  export
  queryCommandIndeterm : (obj : Document) -> (commandId : String) -> JSIO Bool
  queryCommandIndeterm a b = tryJS "Document.queryCommandIndeterm" $ Document.prim__queryCommandIndeterm a
                                                                                                         b
  
  export
  queryCommandState : (obj : Document) -> (commandId : String) -> JSIO Bool
  queryCommandState a b = tryJS "Document.queryCommandState" $ Document.prim__queryCommandState a
                                                                                                b
  
  export
  queryCommandSupported : (obj : Document) -> (commandId : String) -> JSIO Bool
  queryCommandSupported a b = tryJS "Document.queryCommandSupported" $ Document.prim__queryCommandSupported a
                                                                                                            b
  
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
  className : (obj : Element) -> JSIO String
  className a = primJS $ Element.prim__className a
  
  export
  setClassName : (obj : Element) -> (value : String) -> JSIO ()
  setClassName a b = primJS $ Element.prim__setClassName a b
  
  export
  id : (obj : Element) -> JSIO String
  id a = primJS $ Element.prim__id a
  
  export
  setId : (obj : Element) -> (value : String) -> JSIO ()
  setId a b = primJS $ Element.prim__setId a b
  
  export
  localName : (obj : Element) -> JSIO String
  localName a = primJS $ Element.prim__localName a
  
  export
  namespaceURI : (obj : Element) -> JSIO (Maybe String)
  namespaceURI a = tryJS "Element.namespaceURI" $ Element.prim__namespaceURI a
  
  export
  prefix_ : (obj : Element) -> JSIO (Maybe String)
  prefix_ a = tryJS "Element.prefix_" $ Element.prim__prefix a
  
  export
  shadowRoot : (obj : Element) -> JSIO (Maybe ShadowRoot)
  shadowRoot a = tryJS "Element.shadowRoot" $ Element.prim__shadowRoot a
  
  export
  slot : (obj : Element) -> JSIO String
  slot a = primJS $ Element.prim__slot a
  
  export
  setSlot : (obj : Element) -> (value : String) -> JSIO ()
  setSlot a b = primJS $ Element.prim__setSlot a b
  
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
  getAttribute a b = tryJS "Element.getAttribute" $ Element.prim__getAttribute a
                                                                               b
  
  export
  getAttributeNS :  (obj : Element)
                 -> (namespace_ : Maybe String)
                 -> (localName : String)
                 -> JSIO (Maybe String)
  getAttributeNS a b c = tryJS "Element.getAttributeNS" $ Element.prim__getAttributeNS a
                                                                                       (toFFI b)
                                                                                       c
  
  export
  getAttributeNames : (obj : Element) -> JSIO (Array String)
  getAttributeNames a = primJS $ Element.prim__getAttributeNames a
  
  export
  getAttributeNode :  (obj : Element)
                   -> (qualifiedName : String)
                   -> JSIO (Maybe Attr)
  getAttributeNode a b = tryJS "Element.getAttributeNode" $ Element.prim__getAttributeNode a
                                                                                           b
  
  export
  getAttributeNodeNS :  (obj : Element)
                     -> (namespace_ : Maybe String)
                     -> (localName : String)
                     -> JSIO (Maybe Attr)
  getAttributeNodeNS a b c = tryJS "Element.getAttributeNodeNS" $ Element.prim__getAttributeNodeNS a
                                                                                                   (toFFI b)
                                                                                                   c
  
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
  getElementsByTagNameNS a b c = primJS $ Element.prim__getElementsByTagNameNS a
                                                                               (toFFI b)
                                                                               c
  
  export
  hasAttribute : (obj : Element) -> (qualifiedName : String) -> JSIO Bool
  hasAttribute a b = tryJS "Element.hasAttribute" $ Element.prim__hasAttribute a
                                                                               b
  
  export
  hasAttributeNS :  (obj : Element)
                 -> (namespace_ : Maybe String)
                 -> (localName : String)
                 -> JSIO Bool
  hasAttributeNS a b c = tryJS "Element.hasAttributeNS" $ Element.prim__hasAttributeNS a
                                                                                       (toFFI b)
                                                                                       c
  
  export
  hasAttributes : (obj : Element) -> JSIO Bool
  hasAttributes a = tryJS "Element.hasAttributes" $ Element.prim__hasAttributes a
  
  export
  insertAdjacentElement :  (obj : Element)
                        -> (where_ : String)
                        -> (element : Element)
                        -> JSIO (Maybe Element)
  insertAdjacentElement a b c = tryJS "Element.insertAdjacentElement" $ Element.prim__insertAdjacentElement a
                                                                                                            b
                                                                                                            c
  
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
  removeAttributeNS a b c = primJS $ Element.prim__removeAttributeNS a
                                                                     (toFFI b)
                                                                     c
  
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
  setAttributeNode a b = tryJS "Element.setAttributeNode" $ Element.prim__setAttributeNode a
                                                                                           b
  
  export
  setAttributeNodeNS : (obj : Element) -> (attr : Attr) -> JSIO (Maybe Attr)
  setAttributeNodeNS a b = tryJS "Element.setAttributeNodeNS" $ Element.prim__setAttributeNodeNS a
                                                                                                 b
  
  export
  toggleAttribute :  (obj : Element)
                  -> (qualifiedName : String)
                  -> (force : Optional Bool)
                  -> JSIO Bool
  toggleAttribute a b c = tryJS "Element.toggleAttribute" $ Element.prim__toggleAttribute a
                                                                                          b
                                                                                          (toFFI c)

  export
  toggleAttribute' : (obj : Element) -> (qualifiedName : String) -> JSIO Bool
  toggleAttribute' a b = toggleAttribute a b Undef
  
  export
  webkitMatchesSelector : (obj : Element) -> (selectors : String) -> JSIO Bool
  webkitMatchesSelector a b = tryJS "Element.webkitMatchesSelector" $ Element.prim__webkitMatchesSelector a
                                                                                                          b

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
  new' a = new a Undef
  
  export
  bubbles : (obj : Event) -> JSIO Bool
  bubbles a = tryJS "Event.bubbles" $ Event.prim__bubbles a
  
  export
  cancelBubble : (obj : Event) -> JSIO Bool
  cancelBubble a = tryJS "Event.cancelBubble" $ Event.prim__cancelBubble a
  
  export
  setCancelBubble : (obj : Event) -> (value : Bool) -> JSIO ()
  setCancelBubble a b = primJS $ Event.prim__setCancelBubble a (toFFI b)
  
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
  defaultPrevented a = tryJS "Event.defaultPrevented" $ Event.prim__defaultPrevented a
  
  export
  eventPhase : (obj : Event) -> JSIO UInt16
  eventPhase a = primJS $ Event.prim__eventPhase a
  
  export
  isTrusted : (obj : Event) -> JSIO Bool
  isTrusted a = tryJS "Event.isTrusted" $ Event.prim__isTrusted a
  
  export
  returnValue : (obj : Event) -> JSIO Bool
  returnValue a = tryJS "Event.returnValue" $ Event.prim__returnValue a
  
  export
  setReturnValue : (obj : Event) -> (value : Bool) -> JSIO ()
  setReturnValue a b = primJS $ Event.prim__setReturnValue a (toFFI b)
  
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
  initEvent' a b = initEvent a b Undef Undef
  
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
  addEventListener a b c d = primJS $ EventTarget.prim__addEventListener a
                                                                         b
                                                                         (toFFI c)
                                                                         (toFFI d)

  export
  addEventListener' :  (obj : EventTarget)
                    -> (type : String)
                    -> (callback : Maybe EventListener)
                    -> JSIO ()
  addEventListener' a b c = addEventListener a b c Undef
  
  export
  dispatchEvent : (obj : EventTarget) -> (event : Event) -> JSIO Bool
  dispatchEvent a b = tryJS "EventTarget.dispatchEvent" $ EventTarget.prim__dispatchEvent a
                                                                                          b
  
  export
  removeEventListener :  (obj : EventTarget)
                      -> (type : String)
                      -> (callback : Maybe EventListener)
                      -> (options : Optional (NS I [ EventListenerOptions
                                                   , Bool
                                                   ]))
                      -> JSIO ()
  removeEventListener a b c d = primJS $ EventTarget.prim__removeEventListener a
                                                                               b
                                                                               (toFFI c)
                                                                               (toFFI d)

  export
  removeEventListener' :  (obj : EventTarget)
                       -> (type : String)
                       -> (callback : Maybe EventListener)
                       -> JSIO ()
  removeEventListener' a b c = removeEventListener a b c Undef

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
  namedItem a b = tryJS "HTMLCollection.namedItem" $ HTMLCollection.prim__namedItem a
                                                                                    b

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
  observe' a b = observe a b Undef
  
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
  attributeName a = tryJS "MutationRecord.attributeName" $ MutationRecord.prim__attributeName a
  
  export
  attributeNamespace : (obj : MutationRecord) -> JSIO (Maybe String)
  attributeNamespace a = tryJS "MutationRecord.attributeNamespace" $ MutationRecord.prim__attributeNamespace a
  
  export
  nextSibling : (obj : MutationRecord) -> JSIO (Maybe Node)
  nextSibling a = tryJS "MutationRecord.nextSibling" $ MutationRecord.prim__nextSibling a
  
  export
  oldValue : (obj : MutationRecord) -> JSIO (Maybe String)
  oldValue a = tryJS "MutationRecord.oldValue" $ MutationRecord.prim__oldValue a
  
  export
  previousSibling : (obj : MutationRecord) -> JSIO (Maybe Node)
  previousSibling a = tryJS "MutationRecord.previousSibling" $ MutationRecord.prim__previousSibling a
  
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
  getNamedItemNS a b c = tryJS "NamedNodeMap.getNamedItemNS" $ NamedNodeMap.prim__getNamedItemNS a
                                                                                                 (toFFI b)
                                                                                                 c
  
  export
  getNamedItem :  (obj : NamedNodeMap)
               -> (qualifiedName : String)
               -> JSIO (Maybe Attr)
  getNamedItem a b = tryJS "NamedNodeMap.getNamedItem" $ NamedNodeMap.prim__getNamedItem a
                                                                                         b
  
  export
  item : (obj : NamedNodeMap) -> (index : UInt32) -> JSIO (Maybe Attr)
  item a b = tryJS "NamedNodeMap.item" $ NamedNodeMap.prim__item a b
  
  export
  removeNamedItemNS :  (obj : NamedNodeMap)
                    -> (namespace_ : Maybe String)
                    -> (localName : String)
                    -> JSIO Attr
  removeNamedItemNS a b c = primJS $ NamedNodeMap.prim__removeNamedItemNS a
                                                                          (toFFI b)
                                                                          c
  
  export
  removeNamedItem :  (obj : NamedNodeMap)
                  -> (qualifiedName : String)
                  -> JSIO Attr
  removeNamedItem a b = primJS $ NamedNodeMap.prim__removeNamedItem a b
  
  export
  setNamedItemNS : (obj : NamedNodeMap) -> (attr : Attr) -> JSIO (Maybe Attr)
  setNamedItemNS a b = tryJS "NamedNodeMap.setNamedItemNS" $ NamedNodeMap.prim__setNamedItemNS a
                                                                                               b
  
  export
  setNamedItem : (obj : NamedNodeMap) -> (attr : Attr) -> JSIO (Maybe Attr)
  setNamedItem a b = tryJS "NamedNodeMap.setNamedItem" $ NamedNodeMap.prim__setNamedItem a
                                                                                         b

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
  nodeValue : (obj : Node) -> JSIO (Maybe String)
  nodeValue a = tryJS "Node.nodeValue" $ Node.prim__nodeValue a
  
  export
  setNodeValue : (obj : Node) -> (value : Maybe String) -> JSIO ()
  setNodeValue a b = primJS $ Node.prim__setNodeValue a (toFFI b)
  
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
  previousSibling a = tryJS "Node.previousSibling" $ Node.prim__previousSibling a
  
  export
  textContent : (obj : Node) -> JSIO (Maybe String)
  textContent a = tryJS "Node.textContent" $ Node.prim__textContent a
  
  export
  setTextContent : (obj : Node) -> (value : Maybe String) -> JSIO ()
  setTextContent a b = primJS $ Node.prim__setTextContent a (toFFI b)
  
  export
  appendChild : (obj : Node) -> (node : Node) -> JSIO Node
  appendChild a b = primJS $ Node.prim__appendChild a b
  
  export
  cloneNode : (obj : Node) -> (deep : Optional Bool) -> JSIO Node
  cloneNode a b = primJS $ Node.prim__cloneNode a (toFFI b)

  export
  cloneNode' : (obj : Node) -> JSIO Node
  cloneNode' a = cloneNode a Undef
  
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
  getRootNode' a = getRootNode a Undef
  
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
  isDefaultNamespace a b = tryJS "Node.isDefaultNamespace" $ Node.prim__isDefaultNamespace a
                                                                                           (toFFI b)
  
  export
  isEqualNode : (obj : Node) -> (otherNode : Maybe Node) -> JSIO Bool
  isEqualNode a b = tryJS "Node.isEqualNode" $ Node.prim__isEqualNode a
                                                                      (toFFI b)
  
  export
  isSameNode : (obj : Node) -> (otherNode : Maybe Node) -> JSIO Bool
  isSameNode a b = tryJS "Node.isSameNode" $ Node.prim__isSameNode a (toFFI b)
  
  export
  lookupNamespaceURI :  (obj : Node)
                     -> (prefix_ : Maybe String)
                     -> JSIO (Maybe String)
  lookupNamespaceURI a b = tryJS "Node.lookupNamespaceURI" $ Node.prim__lookupNamespaceURI a
                                                                                           (toFFI b)
  
  export
  lookupPrefix :  (obj : Node)
               -> (namespace_ : Maybe String)
               -> JSIO (Maybe String)
  lookupPrefix a b = tryJS "Node.lookupPrefix" $ Node.prim__lookupPrefix a
                                                                         (toFFI b)
  
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
  pointerBeforeReferenceNode a = tryJS "NodeIterator.pointerBeforeReferenceNode" $ NodeIterator.prim__pointerBeforeReferenceNode a
  
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
  previousNode a = tryJS "NodeIterator.previousNode" $ NodeIterator.prim__previousNode a

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
  collapse' a = collapse a Undef
  
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
  intersectsNode a b = tryJS "Range.intersectsNode" $ Range.prim__intersectsNode a
                                                                                 b
  
  export
  isPointInRange :  (obj : Range)
                 -> (node : Node)
                 -> (offset : UInt32)
                 -> JSIO Bool
  isPointInRange a b c = tryJS "Range.isPointInRange" $ Range.prim__isPointInRange a
                                                                                   b
                                                                                   c
  
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

    mixins =  [ DocumentOrShadowRoot , NonElementParentNode , ParentNode ]
  
  export
  host : (obj : ShadowRoot) -> JSIO Element
  host a = primJS $ ShadowRoot.prim__host a
  
  export
  mode : (obj : ShadowRoot) -> JSIO ShadowRootMode
  mode a = tryJS "ShadowRoot.mode" $ ShadowRoot.prim__mode a
  
  export
  onslotchange : (obj : ShadowRoot) -> JSIO (Maybe EventHandlerNonNull)
  onslotchange a = tryJS "ShadowRoot.onslotchange" $ ShadowRoot.prim__onslotchange a
  
  export
  setOnslotchange :  (obj : ShadowRoot)
                  -> (value : Maybe EventHandlerNonNull)
                  -> JSIO ()
  setOnslotchange a b = primJS $ ShadowRoot.prim__setOnslotchange a (toFFI b)

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
  new' = new Undef
  
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
  currentNode : (obj : TreeWalker) -> JSIO Node
  currentNode a = primJS $ TreeWalker.prim__currentNode a
  
  export
  setCurrentNode : (obj : TreeWalker) -> (value : Node) -> JSIO ()
  setCurrentNode a b = primJS $ TreeWalker.prim__setCurrentNode a b
  
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
  nextSibling a = tryJS "TreeWalker.nextSibling" $ TreeWalker.prim__nextSibling a
  
  export
  parentNode : (obj : TreeWalker) -> JSIO (Maybe Node)
  parentNode a = tryJS "TreeWalker.parentNode" $ TreeWalker.prim__parentNode a
  
  export
  previousNode : (obj : TreeWalker) -> JSIO (Maybe Node)
  previousNode a = tryJS "TreeWalker.previousNode" $ TreeWalker.prim__previousNode a
  
  export
  previousSibling : (obj : TreeWalker) -> JSIO (Maybe Node)
  previousSibling a = tryJS "TreeWalker.previousSibling" $ TreeWalker.prim__previousSibling a

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
  evaluate a b c d = primJS $ XPathExpression.prim__evaluate a
                                                             b
                                                             (toFFI c)
                                                             (toFFI d)

  export
  evaluate' :  (obj : XPathExpression)
            -> (contextNode : Node)
            -> JSIO XPathResult
  evaluate' a b = evaluate a b Undef Undef

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
  booleanValue a = tryJS "XPathResult.booleanValue" $ XPathResult.prim__booleanValue a
  
  export
  invalidIteratorState : (obj : XPathResult) -> JSIO Bool
  invalidIteratorState a = tryJS "XPathResult.invalidIteratorState" $ XPathResult.prim__invalidIteratorState a
  
  export
  numberValue : (obj : XPathResult) -> JSIO Double
  numberValue a = primJS $ XPathResult.prim__numberValue a
  
  export
  resultType : (obj : XPathResult) -> JSIO UInt16
  resultType a = primJS $ XPathResult.prim__resultType a
  
  export
  singleNodeValue : (obj : XPathResult) -> JSIO (Maybe Node)
  singleNodeValue a = tryJS "XPathResult.singleNodeValue" $ XPathResult.prim__singleNodeValue a
  
  export
  snapshotLength : (obj : XPathResult) -> JSIO UInt32
  snapshotLength a = primJS $ XPathResult.prim__snapshotLength a
  
  export
  stringValue : (obj : XPathResult) -> JSIO String
  stringValue a = primJS $ XPathResult.prim__stringValue a
  
  export
  iterateNext : (obj : XPathResult) -> JSIO (Maybe Node)
  iterateNext a = tryJS "XPathResult.iterateNext" $ XPathResult.prim__iterateNext a
  
  export
  snapshotItem : (obj : XPathResult) -> (index : UInt32) -> JSIO (Maybe Node)
  snapshotItem a b = tryJS "XPathResult.snapshotItem" $ XPathResult.prim__snapshotItem a
                                                                                       b

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

namespace NonDocumentTypeChildNode
  
  export
  nextElementSibling : (obj : NonDocumentTypeChildNode) -> JSIO (Maybe Element)
  nextElementSibling a = tryJS "NonDocumentTypeChildNode.nextElementSibling" $ NonDocumentTypeChildNode.prim__nextElementSibling a
  
  export
  previousElementSibling :  (obj : NonDocumentTypeChildNode)
                         -> JSIO (Maybe Element)
  previousElementSibling a = tryJS "NonDocumentTypeChildNode.previousElementSibling" $ NonDocumentTypeChildNode.prim__previousElementSibling a

namespace NonElementParentNode
  
  export
  getElementById :  (obj : NonElementParentNode)
                 -> (elementId : String)
                 -> JSIO (Maybe Element)
  getElementById a b = tryJS "NonElementParentNode.getElementById" $ NonElementParentNode.prim__getElementById a
                                                                                                               b

namespace ParentNode
  
  export
  childElementCount : (obj : ParentNode) -> JSIO UInt32
  childElementCount a = primJS $ ParentNode.prim__childElementCount a
  
  export
  children : (obj : ParentNode) -> JSIO HTMLCollection
  children a = primJS $ ParentNode.prim__children a
  
  export
  firstElementChild : (obj : ParentNode) -> JSIO (Maybe Element)
  firstElementChild a = tryJS "ParentNode.firstElementChild" $ ParentNode.prim__firstElementChild a
  
  export
  lastElementChild : (obj : ParentNode) -> JSIO (Maybe Element)
  lastElementChild a = tryJS "ParentNode.lastElementChild" $ ParentNode.prim__lastElementChild a
  
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
  querySelector a b = tryJS "ParentNode.querySelector" $ ParentNode.prim__querySelector a
                                                                                        b
  
  export
  replaceChildren :  (obj : ParentNode)
                  -> (nodes : VarArg (Union2 Node String))
                  -> JSIO ()
  replaceChildren a b = primJS $ ParentNode.prim__replaceChildren a b

namespace Slottable
  
  export
  assignedSlot : (obj : Slottable) -> JSIO (Maybe HTMLSlotElement)
  assignedSlot a = tryJS "Slottable.assignedSlot" $ Slottable.prim__assignedSlot a

namespace XPathEvaluatorBase
  
  export
  createExpression :  (obj : XPathEvaluatorBase)
                   -> (expression : String)
                   -> (resolver : Optional (Maybe XPathNSResolver))
                   -> JSIO XPathExpression
  createExpression a b c = primJS $ XPathEvaluatorBase.prim__createExpression a
                                                                              b
                                                                              (toFFI c)

  export
  createExpression' :  (obj : XPathEvaluatorBase)
                    -> (expression : String)
                    -> JSIO XPathExpression
  createExpression' a b = createExpression a b Undef
  
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
  evaluate a b c d e f = primJS $ XPathEvaluatorBase.prim__evaluate a
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
  evaluate' a b c = evaluate a b c Undef Undef Undef

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
  new a b c = primJS $ AddEventListenerOptions.prim__new (toFFI a)
                                                         (toFFI b)
                                                         (toFFI c)

  export
  new' : JSIO AddEventListenerOptions
  new' = new Undef Undef Undef
  
  export
  once : (obj : AddEventListenerOptions) -> JSIO $ Optional Bool
  once a = tryJS "AddEventListenerOptions.once" $ AddEventListenerOptions.prim__once a
  
  export
  setOnce :  (obj : AddEventListenerOptions)
          -> (value : Optional Bool)
          -> JSIO ()
  setOnce a b = primJS $ AddEventListenerOptions.prim__setOnce a (toFFI b)

  export
  setOnce' : (obj : AddEventListenerOptions) -> JSIO ()
  setOnce' a = setOnce a Undef
  
  export
  passive : (obj : AddEventListenerOptions) -> JSIO $ Optional Bool
  passive a = tryJS "AddEventListenerOptions.passive" $ AddEventListenerOptions.prim__passive a
  
  export
  setPassive :  (obj : AddEventListenerOptions)
             -> (value : Optional Bool)
             -> JSIO ()
  setPassive a b = primJS $ AddEventListenerOptions.prim__setPassive a (toFFI b)

  export
  setPassive' : (obj : AddEventListenerOptions) -> JSIO ()
  setPassive' a = setPassive a Undef
  
  export
  signal : (obj : AddEventListenerOptions) -> JSIO $ Optional AbortSignal
  signal a = tryJS "AddEventListenerOptions.signal" $ AddEventListenerOptions.prim__signal a
  
  export
  setSignal :  (obj : AddEventListenerOptions)
            -> (value : Optional AbortSignal)
            -> JSIO ()
  setSignal a b = primJS $ AddEventListenerOptions.prim__setSignal a (toFFI b)

  export
  setSignal' : (obj : AddEventListenerOptions) -> JSIO ()
  setSignal' a = setSignal a Undef

namespace CustomEventInit
  
  public export
  JSType CustomEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []
  
  export
  new : (detail : Optional AnyPtr) -> JSIO CustomEventInit
  new a = primJS $ CustomEventInit.prim__new (toFFI a)

  export
  new' : JSIO CustomEventInit
  new' = new Undef
  
  export
  detail : (obj : CustomEventInit) -> JSIO $ Optional AnyPtr
  detail a = tryJS "CustomEventInit.detail" $ CustomEventInit.prim__detail a
  
  export
  setDetail : (obj : CustomEventInit) -> (value : Optional AnyPtr) -> JSIO ()
  setDetail a b = primJS $ CustomEventInit.prim__setDetail a (toFFI b)

  export
  setDetail' : (obj : CustomEventInit) -> JSIO ()
  setDetail' a = setDetail a Undef

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
  new' = new Undef
  
  export
  is : (obj : ElementCreationOptions) -> JSIO $ Optional String
  is a = tryJS "ElementCreationOptions.is" $ ElementCreationOptions.prim__is a
  
  export
  setIs : (obj : ElementCreationOptions) -> (value : Optional String) -> JSIO ()
  setIs a b = primJS $ ElementCreationOptions.prim__setIs a (toFFI b)

  export
  setIs' : (obj : ElementCreationOptions) -> JSIO ()
  setIs' a = setIs a Undef

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
  new' = new Undef Undef Undef
  
  export
  bubbles : (obj : EventInit) -> JSIO $ Optional Bool
  bubbles a = tryJS "EventInit.bubbles" $ EventInit.prim__bubbles a
  
  export
  setBubbles : (obj : EventInit) -> (value : Optional Bool) -> JSIO ()
  setBubbles a b = primJS $ EventInit.prim__setBubbles a (toFFI b)

  export
  setBubbles' : (obj : EventInit) -> JSIO ()
  setBubbles' a = setBubbles a Undef
  
  export
  cancelable : (obj : EventInit) -> JSIO $ Optional Bool
  cancelable a = tryJS "EventInit.cancelable" $ EventInit.prim__cancelable a
  
  export
  setCancelable : (obj : EventInit) -> (value : Optional Bool) -> JSIO ()
  setCancelable a b = primJS $ EventInit.prim__setCancelable a (toFFI b)

  export
  setCancelable' : (obj : EventInit) -> JSIO ()
  setCancelable' a = setCancelable a Undef
  
  export
  composed : (obj : EventInit) -> JSIO $ Optional Bool
  composed a = tryJS "EventInit.composed" $ EventInit.prim__composed a
  
  export
  setComposed : (obj : EventInit) -> (value : Optional Bool) -> JSIO ()
  setComposed a b = primJS $ EventInit.prim__setComposed a (toFFI b)

  export
  setComposed' : (obj : EventInit) -> JSIO ()
  setComposed' a = setComposed a Undef

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
  new' = new Undef
  
  export
  capture : (obj : EventListenerOptions) -> JSIO $ Optional Bool
  capture a = tryJS "EventListenerOptions.capture" $ EventListenerOptions.prim__capture a
  
  export
  setCapture :  (obj : EventListenerOptions)
             -> (value : Optional Bool)
             -> JSIO ()
  setCapture a b = primJS $ EventListenerOptions.prim__setCapture a (toFFI b)

  export
  setCapture' : (obj : EventListenerOptions) -> JSIO ()
  setCapture' a = setCapture a Undef

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
  new' = new Undef
  
  export
  composed : (obj : GetRootNodeOptions) -> JSIO $ Optional Bool
  composed a = tryJS "GetRootNodeOptions.composed" $ GetRootNodeOptions.prim__composed a
  
  export
  setComposed : (obj : GetRootNodeOptions) -> (value : Optional Bool) -> JSIO ()
  setComposed a b = primJS $ GetRootNodeOptions.prim__setComposed a (toFFI b)

  export
  setComposed' : (obj : GetRootNodeOptions) -> JSIO ()
  setComposed' a = setComposed a Undef

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
  new a b c d e f g = primJS $ MutationObserverInit.prim__new (toFFI a)
                                                              (toFFI b)
                                                              (toFFI c)
                                                              (toFFI d)
                                                              (toFFI e)
                                                              (toFFI f)
                                                              (toFFI g)

  export
  new' : JSIO MutationObserverInit
  new' = new Undef Undef Undef Undef Undef Undef Undef
  
  export
  attributeFilter :  (obj : MutationObserverInit)
                  -> JSIO $ Optional (Array String)
  attributeFilter a = tryJS "MutationObserverInit.attributeFilter" $ MutationObserverInit.prim__attributeFilter a
  
  export
  setAttributeFilter :  (obj : MutationObserverInit)
                     -> (value : Optional (Array String))
                     -> JSIO ()
  setAttributeFilter a b = primJS $ MutationObserverInit.prim__setAttributeFilter a
                                                                                  (toFFI b)

  export
  setAttributeFilter' : (obj : MutationObserverInit) -> JSIO ()
  setAttributeFilter' a = setAttributeFilter a Undef
  
  export
  attributeOldValue : (obj : MutationObserverInit) -> JSIO $ Optional Bool
  attributeOldValue a = tryJS "MutationObserverInit.attributeOldValue" $ MutationObserverInit.prim__attributeOldValue a
  
  export
  setAttributeOldValue :  (obj : MutationObserverInit)
                       -> (value : Optional Bool)
                       -> JSIO ()
  setAttributeOldValue a b = primJS $ MutationObserverInit.prim__setAttributeOldValue a
                                                                                      (toFFI b)

  export
  setAttributeOldValue' : (obj : MutationObserverInit) -> JSIO ()
  setAttributeOldValue' a = setAttributeOldValue a Undef
  
  export
  attributes : (obj : MutationObserverInit) -> JSIO $ Optional Bool
  attributes a = tryJS "MutationObserverInit.attributes" $ MutationObserverInit.prim__attributes a
  
  export
  setAttributes :  (obj : MutationObserverInit)
                -> (value : Optional Bool)
                -> JSIO ()
  setAttributes a b = primJS $ MutationObserverInit.prim__setAttributes a
                                                                        (toFFI b)

  export
  setAttributes' : (obj : MutationObserverInit) -> JSIO ()
  setAttributes' a = setAttributes a Undef
  
  export
  characterData : (obj : MutationObserverInit) -> JSIO $ Optional Bool
  characterData a = tryJS "MutationObserverInit.characterData" $ MutationObserverInit.prim__characterData a
  
  export
  setCharacterData :  (obj : MutationObserverInit)
                   -> (value : Optional Bool)
                   -> JSIO ()
  setCharacterData a b = primJS $ MutationObserverInit.prim__setCharacterData a
                                                                              (toFFI b)

  export
  setCharacterData' : (obj : MutationObserverInit) -> JSIO ()
  setCharacterData' a = setCharacterData a Undef
  
  export
  characterDataOldValue : (obj : MutationObserverInit) -> JSIO $ Optional Bool
  characterDataOldValue a = tryJS "MutationObserverInit.characterDataOldValue" $ MutationObserverInit.prim__characterDataOldValue a
  
  export
  setCharacterDataOldValue :  (obj : MutationObserverInit)
                           -> (value : Optional Bool)
                           -> JSIO ()
  setCharacterDataOldValue a b = primJS $ MutationObserverInit.prim__setCharacterDataOldValue a
                                                                                              (toFFI b)

  export
  setCharacterDataOldValue' : (obj : MutationObserverInit) -> JSIO ()
  setCharacterDataOldValue' a = setCharacterDataOldValue a Undef
  
  export
  childList : (obj : MutationObserverInit) -> JSIO $ Optional Bool
  childList a = tryJS "MutationObserverInit.childList" $ MutationObserverInit.prim__childList a
  
  export
  setChildList :  (obj : MutationObserverInit)
               -> (value : Optional Bool)
               -> JSIO ()
  setChildList a b = primJS $ MutationObserverInit.prim__setChildList a
                                                                      (toFFI b)

  export
  setChildList' : (obj : MutationObserverInit) -> JSIO ()
  setChildList' a = setChildList a Undef
  
  export
  subtree : (obj : MutationObserverInit) -> JSIO $ Optional Bool
  subtree a = tryJS "MutationObserverInit.subtree" $ MutationObserverInit.prim__subtree a
  
  export
  setSubtree :  (obj : MutationObserverInit)
             -> (value : Optional Bool)
             -> JSIO ()
  setSubtree a b = primJS $ MutationObserverInit.prim__setSubtree a (toFFI b)

  export
  setSubtree' : (obj : MutationObserverInit) -> JSIO ()
  setSubtree' a = setSubtree a Undef

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
  new' a = new a Undef
  
  export
  delegatesFocus : (obj : ShadowRootInit) -> JSIO $ Optional Bool
  delegatesFocus a = tryJS "ShadowRootInit.delegatesFocus" $ ShadowRootInit.prim__delegatesFocus a
  
  export
  setDelegatesFocus :  (obj : ShadowRootInit)
                    -> (value : Optional Bool)
                    -> JSIO ()
  setDelegatesFocus a b = primJS $ ShadowRootInit.prim__setDelegatesFocus a
                                                                          (toFFI b)

  export
  setDelegatesFocus' : (obj : ShadowRootInit) -> JSIO ()
  setDelegatesFocus' a = setDelegatesFocus a Undef
  
  export
  mode : (obj : ShadowRootInit) -> JSIO ShadowRootMode
  mode a = tryJS "ShadowRootInit.mode" $ ShadowRootInit.prim__mode a
  
  export
  setMode : (obj : ShadowRootInit) -> (value : ShadowRootMode) -> JSIO ()
  setMode a b = primJS $ ShadowRootInit.prim__setMode a (toFFI b)

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
  endContainer : (obj : StaticRangeInit) -> JSIO Node
  endContainer a = primJS $ StaticRangeInit.prim__endContainer a
  
  export
  setEndContainer : (obj : StaticRangeInit) -> (value : Node) -> JSIO ()
  setEndContainer a b = primJS $ StaticRangeInit.prim__setEndContainer a b
  
  export
  endOffset : (obj : StaticRangeInit) -> JSIO UInt32
  endOffset a = primJS $ StaticRangeInit.prim__endOffset a
  
  export
  setEndOffset : (obj : StaticRangeInit) -> (value : UInt32) -> JSIO ()
  setEndOffset a b = primJS $ StaticRangeInit.prim__setEndOffset a b
  
  export
  startContainer : (obj : StaticRangeInit) -> JSIO Node
  startContainer a = primJS $ StaticRangeInit.prim__startContainer a
  
  export
  setStartContainer : (obj : StaticRangeInit) -> (value : Node) -> JSIO ()
  setStartContainer a b = primJS $ StaticRangeInit.prim__setStartContainer a b
  
  export
  startOffset : (obj : StaticRangeInit) -> JSIO UInt32
  startOffset a = primJS $ StaticRangeInit.prim__startOffset a
  
  export
  setStartOffset : (obj : StaticRangeInit) -> (value : UInt32) -> JSIO ()
  setStartOffset a b = primJS $ StaticRangeInit.prim__setStartOffset a b

--------------------------------------------------------------------------------
--          Callbacks
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
