module Web.Internal.DomPrim
 
import JS
import Web.Internal.Types
 

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace AbortController
  
  export
  %foreign "browser:lambda:()=> new AbortController()"
  prim__new : PrimIO AbortController
  
  export
  %foreign "browser:lambda:x=>x.signal"
  prim__signal : AbortController -> PrimIO AbortSignal
  
  export
  %foreign "browser:lambda:(x,a)=>x.abort(a)"
  prim__abort : AbortController -> PrimIO ()

namespace AbortSignal
  
  export
  %foreign "browser:lambda:x=>x.aborted"
  prim__aborted : AbortSignal -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:x=>x.onabort"
  prim__onabort : AbortSignal -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onabort = v}"
  prim__setOnabort : AbortSignal -> EventHandler -> PrimIO ()

namespace AbstractRange
  
  export
  %foreign "browser:lambda:x=>x.collapsed"
  prim__collapsed : AbstractRange -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:x=>x.endContainer"
  prim__endContainer : AbstractRange -> PrimIO Node
  
  export
  %foreign "browser:lambda:x=>x.endOffset"
  prim__endOffset : AbstractRange -> PrimIO UInt32
  
  export
  %foreign "browser:lambda:x=>x.startContainer"
  prim__startContainer : AbstractRange -> PrimIO Node
  
  export
  %foreign "browser:lambda:x=>x.startOffset"
  prim__startOffset : AbstractRange -> PrimIO UInt32

namespace Attr
  
  export
  %foreign "browser:lambda:x=>x.localName"
  prim__localName : Attr -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.name"
  prim__name : Attr -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.namespaceURI"
  prim__namespaceURI : Attr -> PrimIO (Nullable String)
  
  export
  %foreign "browser:lambda:x=>x.ownerElement"
  prim__ownerElement : Attr -> PrimIO (Nullable Element)
  
  export
  %foreign "browser:lambda:x=>x.prefix"
  prim__prefix : Attr -> PrimIO (Nullable String)
  
  export
  %foreign "browser:lambda:x=>x.specified"
  prim__specified : Attr -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:x=>x.value"
  prim__value : Attr -> PrimIO String
  
  export
  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : Attr -> String -> PrimIO ()


namespace CharacterData
  
  export
  %foreign "browser:lambda:x=>x.data"
  prim__data : CharacterData -> PrimIO String
  
  export
  %foreign "browser:lambda:(x,v)=>{x.data = v}"
  prim__setData : CharacterData -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : CharacterData -> PrimIO UInt32
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.appendData(a b)"
  prim__appendData : CharacterData -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.deleteData(a b c)"
  prim__deleteData : CharacterData -> UInt32 -> UInt32 -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.insertData(a b c)"
  prim__insertData : CharacterData -> UInt32 -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.replaceData(a b c d)"
  prim__replaceData : CharacterData -> UInt32 -> UInt32 -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.substringData(a b c)"
  prim__substringData : CharacterData -> UInt32 -> UInt32 -> PrimIO String

namespace Comment
  
  export
  %foreign "browser:lambda:(a)=> new Comment(a)"
  prim__new : UndefOr String -> PrimIO Comment

namespace CustomEvent
  
  export
  %foreign "browser:lambda:(a,b)=> new CustomEvent(a b)"
  prim__new : String -> UndefOr CustomEventInit -> PrimIO CustomEvent
  
  export
  %foreign "browser:lambda:x=>x.detail"
  prim__detail : CustomEvent -> PrimIO AnyPtr
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.initCustomEvent(a b c d e)"
  prim__initCustomEvent :  CustomEvent
                        -> String
                        -> UndefOr Boolean
                        -> UndefOr Boolean
                        -> UndefOr AnyPtr
                        -> PrimIO ()

namespace DOMImplementation
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.createDocument(a b c d)"
  prim__createDocument :  DOMImplementation
                       -> Nullable String
                       -> String
                       -> UndefOr (Nullable DocumentType)
                       -> PrimIO XMLDocument
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.createDocumentType(a b c d)"
  prim__createDocumentType :  DOMImplementation
                           -> String
                           -> String
                           -> String
                           -> PrimIO DocumentType
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.createHTMLDocument(a b)"
  prim__createHTMLDocument :  DOMImplementation
                           -> UndefOr String
                           -> PrimIO Document
  
  export
  %foreign "browser:lambda:(x,a)=>x.hasFeature(a)"
  prim__hasFeature : DOMImplementation -> PrimIO Boolean

namespace DOMTokenList
  
  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : DOMTokenList -> PrimIO UInt32
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.add(a b)"
  prim__add : DOMTokenList -> VarArg String -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.contains(a b)"
  prim__contains : DOMTokenList -> String -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.remove(a b)"
  prim__remove : DOMTokenList -> VarArg String -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.replace(a b c)"
  prim__replace : DOMTokenList -> String -> String -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.supports(a b)"
  prim__supports : DOMTokenList -> String -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.toggle(a b c)"
  prim__toggle : DOMTokenList -> String -> UndefOr Boolean -> PrimIO Boolean

namespace Document
  
  export
  %foreign "browser:lambda:()=> new Document()"
  prim__new : PrimIO Document
  
  export
  %foreign "browser:lambda:x=>x.URL"
  prim__URL : Document -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.alinkColor"
  prim__alinkColor : Document -> PrimIO String
  
  export
  %foreign "browser:lambda:(x,v)=>{x.alinkColor = v}"
  prim__setAlinkColor : Document -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.all"
  prim__all : Document -> PrimIO HTMLAllCollection
  
  export
  %foreign "browser:lambda:x=>x.anchors"
  prim__anchors : Document -> PrimIO HTMLCollection
  
  export
  %foreign "browser:lambda:x=>x.applets"
  prim__applets : Document -> PrimIO HTMLCollection
  
  export
  %foreign "browser:lambda:x=>x.bgColor"
  prim__bgColor : Document -> PrimIO String
  
  export
  %foreign "browser:lambda:(x,v)=>{x.bgColor = v}"
  prim__setBgColor : Document -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.body"
  prim__body : Document -> PrimIO (Nullable HTMLElement)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.body = v}"
  prim__setBody : Document -> Nullable HTMLElement -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.characterSet"
  prim__characterSet : Document -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.charset"
  prim__charset : Document -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.compatMode"
  prim__compatMode : Document -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.contentType"
  prim__contentType : Document -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.cookie"
  prim__cookie : Document -> PrimIO String
  
  export
  %foreign "browser:lambda:(x,v)=>{x.cookie = v}"
  prim__setCookie : Document -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.currentScript"
  prim__currentScript : Document -> PrimIO (Nullable HTMLOrSVGScriptElement)
  
  export
  %foreign "browser:lambda:x=>x.defaultView"
  prim__defaultView : Document -> PrimIO (Nullable WindowProxy)
  
  export
  %foreign "browser:lambda:x=>x.designMode"
  prim__designMode : Document -> PrimIO String
  
  export
  %foreign "browser:lambda:(x,v)=>{x.designMode = v}"
  prim__setDesignMode : Document -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.dir"
  prim__dir : Document -> PrimIO String
  
  export
  %foreign "browser:lambda:(x,v)=>{x.dir = v}"
  prim__setDir : Document -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.doctype"
  prim__doctype : Document -> PrimIO (Nullable DocumentType)
  
  export
  %foreign "browser:lambda:x=>x.documentElement"
  prim__documentElement : Document -> PrimIO (Nullable Element)
  
  export
  %foreign "browser:lambda:x=>x.documentURI"
  prim__documentURI : Document -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.domain"
  prim__domain : Document -> PrimIO String
  
  export
  %foreign "browser:lambda:(x,v)=>{x.domain = v}"
  prim__setDomain : Document -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.embeds"
  prim__embeds : Document -> PrimIO HTMLCollection
  
  export
  %foreign "browser:lambda:x=>x.fgColor"
  prim__fgColor : Document -> PrimIO String
  
  export
  %foreign "browser:lambda:(x,v)=>{x.fgColor = v}"
  prim__setFgColor : Document -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.forms"
  prim__forms : Document -> PrimIO HTMLCollection
  
  export
  %foreign "browser:lambda:x=>x.head"
  prim__head : Document -> PrimIO (Nullable HTMLHeadElement)
  
  export
  %foreign "browser:lambda:x=>x.hidden"
  prim__hidden : Document -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:x=>x.images"
  prim__images : Document -> PrimIO HTMLCollection
  
  export
  %foreign "browser:lambda:x=>x.implementation"
  prim__implementation : Document -> PrimIO DOMImplementation
  
  export
  %foreign "browser:lambda:x=>x.inputEncoding"
  prim__inputEncoding : Document -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.lastModified"
  prim__lastModified : Document -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.linkColor"
  prim__linkColor : Document -> PrimIO String
  
  export
  %foreign "browser:lambda:(x,v)=>{x.linkColor = v}"
  prim__setLinkColor : Document -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.links"
  prim__links : Document -> PrimIO HTMLCollection
  
  export
  %foreign "browser:lambda:x=>x.location"
  prim__location : Document -> PrimIO (Nullable Location)
  
  export
  %foreign "browser:lambda:x=>x.onreadystatechange"
  prim__onreadystatechange : Document -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onreadystatechange = v}"
  prim__setOnreadystatechange : Document -> EventHandler -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.onvisibilitychange"
  prim__onvisibilitychange : Document -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onvisibilitychange = v}"
  prim__setOnvisibilitychange : Document -> EventHandler -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.plugins"
  prim__plugins : Document -> PrimIO HTMLCollection
  
  export
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : Document -> PrimIO DocumentReadyState
  
  export
  %foreign "browser:lambda:x=>x.referrer"
  prim__referrer : Document -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.rootElement"
  prim__rootElement : Document -> PrimIO (Nullable SVGSVGElement)
  
  export
  %foreign "browser:lambda:x=>x.scripts"
  prim__scripts : Document -> PrimIO HTMLCollection
  
  export
  %foreign "browser:lambda:x=>x.timeline"
  prim__timeline : Document -> PrimIO DocumentTimeline
  
  export
  %foreign "browser:lambda:x=>x.title"
  prim__title : Document -> PrimIO String
  
  export
  %foreign "browser:lambda:(x,v)=>{x.title = v}"
  prim__setTitle : Document -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.visibilityState"
  prim__visibilityState : Document -> PrimIO VisibilityState
  
  export
  %foreign "browser:lambda:x=>x.vlinkColor"
  prim__vlinkColor : Document -> PrimIO String
  
  export
  %foreign "browser:lambda:(x,v)=>{x.vlinkColor = v}"
  prim__setVlinkColor : Document -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.adoptNode(a b)"
  prim__adoptNode : Document -> Node -> PrimIO Node
  
  export
  %foreign "browser:lambda:(x,a)=>x.captureEvents(a)"
  prim__captureEvents : Document -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.clear(a)"
  prim__clear : Document -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.close(a)"
  prim__close : Document -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.createAttribute(a b)"
  prim__createAttribute : Document -> String -> PrimIO Attr
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.createAttributeNS(a b c)"
  prim__createAttributeNS : Document -> Nullable String -> String -> PrimIO Attr
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.createCDATASection(a b)"
  prim__createCDATASection : Document -> String -> PrimIO CDATASection
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.createComment(a b)"
  prim__createComment : Document -> String -> PrimIO Comment
  
  export
  %foreign "browser:lambda:(x,a)=>x.createDocumentFragment(a)"
  prim__createDocumentFragment : Document -> PrimIO DocumentFragment
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.createElement(a b c)"
  prim__createElement :  Document
                      -> String
                      -> UndefOr (Union2 String ElementCreationOptions)
                      -> PrimIO Element
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.createElementNS(a b c d)"
  prim__createElementNS :  Document
                        -> Nullable String
                        -> String
                        -> UndefOr (Union2 String ElementCreationOptions)
                        -> PrimIO Element
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.createEvent(a b)"
  prim__createEvent : Document -> String -> PrimIO Event
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.createNodeIterator(a b c d)"
  prim__createNodeIterator :  Document
                           -> Node
                           -> UndefOr UInt32
                           -> UndefOr (Nullable NodeFilter)
                           -> PrimIO NodeIterator
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.createProcessingInstruction(a b c)"
  prim__createProcessingInstruction :  Document
                                    -> String
                                    -> String
                                    -> PrimIO ProcessingInstruction
  
  export
  %foreign "browser:lambda:(x,a)=>x.createRange(a)"
  prim__createRange : Document -> PrimIO Range
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.createTextNode(a b)"
  prim__createTextNode : Document -> String -> PrimIO Text
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.createTreeWalker(a b c d)"
  prim__createTreeWalker :  Document
                         -> Node
                         -> UndefOr UInt32
                         -> UndefOr (Nullable NodeFilter)
                         -> PrimIO TreeWalker
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.execCommand(a b c d)"
  prim__execCommand :  Document
                    -> String
                    -> UndefOr Boolean
                    -> UndefOr String
                    -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:(x,a)=>x.getAnimations(a)"
  prim__getAnimations : Document -> PrimIO (Array Animation)
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getElementsByClassName(a b)"
  prim__getElementsByClassName : Document -> String -> PrimIO HTMLCollection
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getElementsByName(a b)"
  prim__getElementsByName : Document -> String -> PrimIO NodeList
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getElementsByTagName(a b)"
  prim__getElementsByTagName : Document -> String -> PrimIO HTMLCollection
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.getElementsByTagNameNS(a b c)"
  prim__getElementsByTagNameNS :  Document
                               -> Nullable String
                               -> String
                               -> PrimIO HTMLCollection
  
  export
  %foreign "browser:lambda:(x,a)=>x.hasFocus(a)"
  prim__hasFocus : Document -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.importNode(a b c)"
  prim__importNode : Document -> Node -> UndefOr Boolean -> PrimIO Node
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.open(a b c)"
  prim__open : Document -> UndefOr String -> UndefOr String -> PrimIO Document
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.open(a b c d)"
  prim__open1 :  Document
              -> String
              -> String
              -> String
              -> PrimIO (Nullable WindowProxy)
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.queryCommandEnabled(a b)"
  prim__queryCommandEnabled : Document -> String -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.queryCommandIndeterm(a b)"
  prim__queryCommandIndeterm : Document -> String -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.queryCommandState(a b)"
  prim__queryCommandState : Document -> String -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.queryCommandSupported(a b)"
  prim__queryCommandSupported : Document -> String -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.queryCommandValue(a b)"
  prim__queryCommandValue : Document -> String -> PrimIO String
  
  export
  %foreign "browser:lambda:(x,a)=>x.releaseEvents(a)"
  prim__releaseEvents : Document -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.write(a b)"
  prim__write : Document -> VarArg String -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.writeln(a b)"
  prim__writeln : Document -> VarArg String -> PrimIO ()

namespace DocumentFragment
  
  export
  %foreign "browser:lambda:()=> new DocumentFragment()"
  prim__new : PrimIO DocumentFragment

namespace DocumentType
  
  export
  %foreign "browser:lambda:x=>x.name"
  prim__name : DocumentType -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.publicId"
  prim__publicId : DocumentType -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.systemId"
  prim__systemId : DocumentType -> PrimIO String

namespace Element
  
  export
  %foreign "browser:lambda:x=>x.attributes"
  prim__attributes : Element -> PrimIO NamedNodeMap
  
  export
  %foreign "browser:lambda:x=>x.classList"
  prim__classList : Element -> PrimIO DOMTokenList
  
  export
  %foreign "browser:lambda:x=>x.className"
  prim__className : Element -> PrimIO String
  
  export
  %foreign "browser:lambda:(x,v)=>{x.className = v}"
  prim__setClassName : Element -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.id"
  prim__id : Element -> PrimIO String
  
  export
  %foreign "browser:lambda:(x,v)=>{x.id = v}"
  prim__setId : Element -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.localName"
  prim__localName : Element -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.namespaceURI"
  prim__namespaceURI : Element -> PrimIO (Nullable String)
  
  export
  %foreign "browser:lambda:x=>x.prefix"
  prim__prefix : Element -> PrimIO (Nullable String)
  
  export
  %foreign "browser:lambda:x=>x.shadowRoot"
  prim__shadowRoot : Element -> PrimIO (Nullable ShadowRoot)
  
  export
  %foreign "browser:lambda:x=>x.slot"
  prim__slot : Element -> PrimIO String
  
  export
  %foreign "browser:lambda:(x,v)=>{x.slot = v}"
  prim__setSlot : Element -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.tagName"
  prim__tagName : Element -> PrimIO String
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.attachShadow(a b)"
  prim__attachShadow : Element -> ShadowRootInit -> PrimIO ShadowRoot
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.closest(a b)"
  prim__closest : Element -> String -> PrimIO (Nullable Element)
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getAttribute(a b)"
  prim__getAttribute : Element -> String -> PrimIO (Nullable String)
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.getAttributeNS(a b c)"
  prim__getAttributeNS :  Element
                       -> Nullable String
                       -> String
                       -> PrimIO (Nullable String)
  
  export
  %foreign "browser:lambda:(x,a)=>x.getAttributeNames(a)"
  prim__getAttributeNames : Element -> PrimIO (Array String)
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getAttributeNode(a b)"
  prim__getAttributeNode : Element -> String -> PrimIO (Nullable Attr)
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.getAttributeNodeNS(a b c)"
  prim__getAttributeNodeNS :  Element
                           -> Nullable String
                           -> String
                           -> PrimIO (Nullable Attr)
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getElementsByClassName(a b)"
  prim__getElementsByClassName : Element -> String -> PrimIO HTMLCollection
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getElementsByTagName(a b)"
  prim__getElementsByTagName : Element -> String -> PrimIO HTMLCollection
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.getElementsByTagNameNS(a b c)"
  prim__getElementsByTagNameNS :  Element
                               -> Nullable String
                               -> String
                               -> PrimIO HTMLCollection
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.hasAttribute(a b)"
  prim__hasAttribute : Element -> String -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.hasAttributeNS(a b c)"
  prim__hasAttributeNS : Element -> Nullable String -> String -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:(x,a)=>x.hasAttributes(a)"
  prim__hasAttributes : Element -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.insertAdjacentElement(a b c)"
  prim__insertAdjacentElement :  Element
                              -> String
                              -> Element
                              -> PrimIO (Nullable Element)
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.insertAdjacentText(a b c)"
  prim__insertAdjacentText : Element -> String -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.matches(a b)"
  prim__matches : Element -> String -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.pseudo(a b)"
  prim__pseudo : Element -> CSSOMString -> PrimIO (Nullable CSSPseudoElement)
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.removeAttribute(a b)"
  prim__removeAttribute : Element -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.removeAttributeNS(a b c)"
  prim__removeAttributeNS : Element -> Nullable String -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.removeAttributeNode(a b)"
  prim__removeAttributeNode : Element -> Attr -> PrimIO Attr
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.setAttribute(a b c)"
  prim__setAttribute : Element -> String -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.setAttributeNS(a b c d)"
  prim__setAttributeNS :  Element
                       -> Nullable String
                       -> String
                       -> String
                       -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.setAttributeNode(a b)"
  prim__setAttributeNode : Element -> Attr -> PrimIO (Nullable Attr)
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.setAttributeNodeNS(a b)"
  prim__setAttributeNodeNS : Element -> Attr -> PrimIO (Nullable Attr)
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.toggleAttribute(a b c)"
  prim__toggleAttribute : Element -> String -> UndefOr Boolean -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.webkitMatchesSelector(a b)"
  prim__webkitMatchesSelector : Element -> String -> PrimIO Boolean

namespace Event
  
  export
  %foreign "browser:lambda:(a,b)=> new Event(a b)"
  prim__new : String -> UndefOr EventInit -> PrimIO Event
  
  export
  %foreign "browser:lambda:x=>x.bubbles"
  prim__bubbles : Event -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:x=>x.cancelBubble"
  prim__cancelBubble : Event -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:(x,v)=>{x.cancelBubble = v}"
  prim__setCancelBubble : Event -> Boolean -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.cancelable"
  prim__cancelable : Event -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:x=>x.composed"
  prim__composed : Event -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:x=>x.currentTarget"
  prim__currentTarget : Event -> PrimIO (Nullable EventTarget)
  
  export
  %foreign "browser:lambda:x=>x.defaultPrevented"
  prim__defaultPrevented : Event -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:x=>x.eventPhase"
  prim__eventPhase : Event -> PrimIO UInt16
  
  export
  %foreign "browser:lambda:x=>x.isTrusted"
  prim__isTrusted : Event -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:x=>x.returnValue"
  prim__returnValue : Event -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:(x,v)=>{x.returnValue = v}"
  prim__setReturnValue : Event -> Boolean -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.srcElement"
  prim__srcElement : Event -> PrimIO (Nullable EventTarget)
  
  export
  %foreign "browser:lambda:x=>x.target"
  prim__target : Event -> PrimIO (Nullable EventTarget)
  
  export
  %foreign "browser:lambda:x=>x.timeStamp"
  prim__timeStamp : Event -> PrimIO DOMHighResTimeStamp
  
  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : Event -> PrimIO String
  
  export
  %foreign "browser:lambda:(x,a)=>x.composedPath(a)"
  prim__composedPath : Event -> PrimIO (Array EventTarget)
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.initEvent(a b c d)"
  prim__initEvent :  Event
                  -> String
                  -> UndefOr Boolean
                  -> UndefOr Boolean
                  -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.preventDefault(a)"
  prim__preventDefault : Event -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.stopImmediatePropagation(a)"
  prim__stopImmediatePropagation : Event -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.stopPropagation(a)"
  prim__stopPropagation : Event -> PrimIO ()

namespace EventTarget
  
  export
  %foreign "browser:lambda:()=> new EventTarget()"
  prim__new : PrimIO EventTarget
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.addEventListener(a b c d)"
  prim__addEventListener :  EventTarget
                         -> String
                         -> Nullable EventListener
                         -> UndefOr (Union2 AddEventListenerOptions Boolean)
                         -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.dispatchEvent(a b)"
  prim__dispatchEvent : EventTarget -> Event -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.removeEventListener(a b c d)"
  prim__removeEventListener :  EventTarget
                            -> String
                            -> Nullable EventListener
                            -> UndefOr (Union2 EventListenerOptions Boolean)
                            -> PrimIO ()

namespace HTMLCollection
  
  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : HTMLCollection -> PrimIO UInt32

namespace MutationObserver
  
  export
  %foreign "browser:lambda:(a)=> new MutationObserver(a)"
  prim__new : MutationCallback -> PrimIO MutationObserver
  
  export
  %foreign "browser:lambda:(x,a)=>x.disconnect(a)"
  prim__disconnect : MutationObserver -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.observe(a b c)"
  prim__observe :  MutationObserver
                -> Node
                -> UndefOr MutationObserverInit
                -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.takeRecords(a)"
  prim__takeRecords : MutationObserver -> PrimIO (Array MutationRecord)

namespace MutationRecord
  
  export
  %foreign "browser:lambda:x=>x.addedNodes"
  prim__addedNodes : MutationRecord -> PrimIO NodeList
  
  export
  %foreign "browser:lambda:x=>x.attributeName"
  prim__attributeName : MutationRecord -> PrimIO (Nullable String)
  
  export
  %foreign "browser:lambda:x=>x.attributeNamespace"
  prim__attributeNamespace : MutationRecord -> PrimIO (Nullable String)
  
  export
  %foreign "browser:lambda:x=>x.nextSibling"
  prim__nextSibling : MutationRecord -> PrimIO (Nullable Node)
  
  export
  %foreign "browser:lambda:x=>x.oldValue"
  prim__oldValue : MutationRecord -> PrimIO (Nullable String)
  
  export
  %foreign "browser:lambda:x=>x.previousSibling"
  prim__previousSibling : MutationRecord -> PrimIO (Nullable Node)
  
  export
  %foreign "browser:lambda:x=>x.removedNodes"
  prim__removedNodes : MutationRecord -> PrimIO NodeList
  
  export
  %foreign "browser:lambda:x=>x.target"
  prim__target : MutationRecord -> PrimIO Node
  
  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : MutationRecord -> PrimIO String

namespace NamedNodeMap
  
  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : NamedNodeMap -> PrimIO UInt32
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.getNamedItemNS(a b c)"
  prim__getNamedItemNS :  NamedNodeMap
                       -> Nullable String
                       -> String
                       -> PrimIO (Nullable Attr)
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.removeNamedItemNS(a b c)"
  prim__removeNamedItemNS :  NamedNodeMap
                          -> Nullable String
                          -> String
                          -> PrimIO Attr
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.removeNamedItem(a b)"
  prim__removeNamedItem : NamedNodeMap -> String -> PrimIO Attr
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.setNamedItemNS(a b)"
  prim__setNamedItemNS : NamedNodeMap -> Attr -> PrimIO (Nullable Attr)
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.setNamedItem(a b)"
  prim__setNamedItem : NamedNodeMap -> Attr -> PrimIO (Nullable Attr)

namespace Node
  
  export
  %foreign "browser:lambda:x=>x.baseURI"
  prim__baseURI : Node -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.childNodes"
  prim__childNodes : Node -> PrimIO NodeList
  
  export
  %foreign "browser:lambda:x=>x.firstChild"
  prim__firstChild : Node -> PrimIO (Nullable Node)
  
  export
  %foreign "browser:lambda:x=>x.isConnected"
  prim__isConnected : Node -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:x=>x.lastChild"
  prim__lastChild : Node -> PrimIO (Nullable Node)
  
  export
  %foreign "browser:lambda:x=>x.nextSibling"
  prim__nextSibling : Node -> PrimIO (Nullable Node)
  
  export
  %foreign "browser:lambda:x=>x.nodeName"
  prim__nodeName : Node -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.nodeType"
  prim__nodeType : Node -> PrimIO UInt16
  
  export
  %foreign "browser:lambda:x=>x.nodeValue"
  prim__nodeValue : Node -> PrimIO (Nullable String)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.nodeValue = v}"
  prim__setNodeValue : Node -> Nullable String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.ownerDocument"
  prim__ownerDocument : Node -> PrimIO (Nullable Document)
  
  export
  %foreign "browser:lambda:x=>x.parentElement"
  prim__parentElement : Node -> PrimIO (Nullable Element)
  
  export
  %foreign "browser:lambda:x=>x.parentNode"
  prim__parentNode : Node -> PrimIO (Nullable Node)
  
  export
  %foreign "browser:lambda:x=>x.previousSibling"
  prim__previousSibling : Node -> PrimIO (Nullable Node)
  
  export
  %foreign "browser:lambda:x=>x.textContent"
  prim__textContent : Node -> PrimIO (Nullable String)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.textContent = v}"
  prim__setTextContent : Node -> Nullable String -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.appendChild(a b)"
  prim__appendChild : Node -> Node -> PrimIO Node
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.cloneNode(a b)"
  prim__cloneNode : Node -> UndefOr Boolean -> PrimIO Node
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.compareDocumentPosition(a b)"
  prim__compareDocumentPosition : Node -> Node -> PrimIO UInt16
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.contains(a b)"
  prim__contains : Node -> Nullable Node -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getRootNode(a b)"
  prim__getRootNode : Node -> UndefOr GetRootNodeOptions -> PrimIO Node
  
  export
  %foreign "browser:lambda:(x,a)=>x.hasChildNodes(a)"
  prim__hasChildNodes : Node -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.insertBefore(a b c)"
  prim__insertBefore : Node -> Node -> Nullable Node -> PrimIO Node
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.isDefaultNamespace(a b)"
  prim__isDefaultNamespace : Node -> Nullable String -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.isEqualNode(a b)"
  prim__isEqualNode : Node -> Nullable Node -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.isSameNode(a b)"
  prim__isSameNode : Node -> Nullable Node -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.lookupNamespaceURI(a b)"
  prim__lookupNamespaceURI : Node -> Nullable String -> PrimIO (Nullable String)
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.lookupPrefix(a b)"
  prim__lookupPrefix : Node -> Nullable String -> PrimIO (Nullable String)
  
  export
  %foreign "browser:lambda:(x,a)=>x.normalize(a)"
  prim__normalize : Node -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.removeChild(a b)"
  prim__removeChild : Node -> Node -> PrimIO Node
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.replaceChild(a b c)"
  prim__replaceChild : Node -> Node -> Node -> PrimIO Node

namespace NodeIterator
  
  export
  %foreign "browser:lambda:x=>x.filter"
  prim__filter : NodeIterator -> PrimIO (Nullable NodeFilter)
  
  export
  %foreign "browser:lambda:x=>x.pointerBeforeReferenceNode"
  prim__pointerBeforeReferenceNode : NodeIterator -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:x=>x.referenceNode"
  prim__referenceNode : NodeIterator -> PrimIO Node
  
  export
  %foreign "browser:lambda:x=>x.root"
  prim__root : NodeIterator -> PrimIO Node
  
  export
  %foreign "browser:lambda:x=>x.whatToShow"
  prim__whatToShow : NodeIterator -> PrimIO UInt32
  
  export
  %foreign "browser:lambda:(x,a)=>x.detach(a)"
  prim__detach : NodeIterator -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.nextNode(a)"
  prim__nextNode : NodeIterator -> PrimIO (Nullable Node)
  
  export
  %foreign "browser:lambda:(x,a)=>x.previousNode(a)"
  prim__previousNode : NodeIterator -> PrimIO (Nullable Node)

namespace NodeList
  
  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : NodeList -> PrimIO UInt32

namespace Performance
  
  export
  %foreign "browser:lambda:x=>x.timeOrigin"
  prim__timeOrigin : Performance -> PrimIO DOMHighResTimeStamp
  
  export
  %foreign "browser:lambda:(x,a)=>x.now(a)"
  prim__now : Performance -> PrimIO DOMHighResTimeStamp
  
  export
  %foreign "browser:lambda:(x,a)=>x.toJSON(a)"
  prim__toJSON : Performance -> PrimIO Object

namespace ProcessingInstruction
  
  export
  %foreign "browser:lambda:x=>x.target"
  prim__target : ProcessingInstruction -> PrimIO String

namespace Range
  
  export
  %foreign "browser:lambda:()=> new Range()"
  prim__new : PrimIO Range
  
  export
  %foreign "browser:lambda:x=>x.commonAncestorContainer"
  prim__commonAncestorContainer : Range -> PrimIO Node
  
  export
  %foreign "browser:lambda:(x,a)=>x.cloneContents(a)"
  prim__cloneContents : Range -> PrimIO DocumentFragment
  
  export
  %foreign "browser:lambda:(x,a)=>x.cloneRange(a)"
  prim__cloneRange : Range -> PrimIO Range
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.collapse(a b)"
  prim__collapse : Range -> UndefOr Boolean -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.compareBoundaryPoints(a b c)"
  prim__compareBoundaryPoints : Range -> UInt16 -> Range -> PrimIO Int16
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.comparePoint(a b c)"
  prim__comparePoint : Range -> Node -> UInt32 -> PrimIO Int16
  
  export
  %foreign "browser:lambda:(x,a)=>x.deleteContents(a)"
  prim__deleteContents : Range -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.detach(a)"
  prim__detach : Range -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.extractContents(a)"
  prim__extractContents : Range -> PrimIO DocumentFragment
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.insertNode(a b)"
  prim__insertNode : Range -> Node -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.intersectsNode(a b)"
  prim__intersectsNode : Range -> Node -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.isPointInRange(a b c)"
  prim__isPointInRange : Range -> Node -> UInt32 -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.selectNodeContents(a b)"
  prim__selectNodeContents : Range -> Node -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.selectNode(a b)"
  prim__selectNode : Range -> Node -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.setEndAfter(a b)"
  prim__setEndAfter : Range -> Node -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.setEndBefore(a b)"
  prim__setEndBefore : Range -> Node -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.setEnd(a b c)"
  prim__setEnd : Range -> Node -> UInt32 -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.setStartAfter(a b)"
  prim__setStartAfter : Range -> Node -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.setStartBefore(a b)"
  prim__setStartBefore : Range -> Node -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.setStart(a b c)"
  prim__setStart : Range -> Node -> UInt32 -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.surroundContents(a b)"
  prim__surroundContents : Range -> Node -> PrimIO ()

namespace ShadowRoot
  
  export
  %foreign "browser:lambda:x=>x.host"
  prim__host : ShadowRoot -> PrimIO Element
  
  export
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : ShadowRoot -> PrimIO ShadowRootMode
  
  export
  %foreign "browser:lambda:x=>x.onslotchange"
  prim__onslotchange : ShadowRoot -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onslotchange = v}"
  prim__setOnslotchange : ShadowRoot -> EventHandler -> PrimIO ()

namespace StaticRange
  
  export
  %foreign "browser:lambda:(a)=> new StaticRange(a)"
  prim__new : StaticRangeInit -> PrimIO StaticRange

namespace Text
  
  export
  %foreign "browser:lambda:(a)=> new Text(a)"
  prim__new : UndefOr String -> PrimIO Text
  
  export
  %foreign "browser:lambda:x=>x.wholeText"
  prim__wholeText : Text -> PrimIO String
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.splitText(a b)"
  prim__splitText : Text -> UInt32 -> PrimIO Text

namespace TreeWalker
  
  export
  %foreign "browser:lambda:x=>x.currentNode"
  prim__currentNode : TreeWalker -> PrimIO Node
  
  export
  %foreign "browser:lambda:(x,v)=>{x.currentNode = v}"
  prim__setCurrentNode : TreeWalker -> Node -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.filter"
  prim__filter : TreeWalker -> PrimIO (Nullable NodeFilter)
  
  export
  %foreign "browser:lambda:x=>x.root"
  prim__root : TreeWalker -> PrimIO Node
  
  export
  %foreign "browser:lambda:x=>x.whatToShow"
  prim__whatToShow : TreeWalker -> PrimIO UInt32
  
  export
  %foreign "browser:lambda:(x,a)=>x.firstChild(a)"
  prim__firstChild : TreeWalker -> PrimIO (Nullable Node)
  
  export
  %foreign "browser:lambda:(x,a)=>x.lastChild(a)"
  prim__lastChild : TreeWalker -> PrimIO (Nullable Node)
  
  export
  %foreign "browser:lambda:(x,a)=>x.nextNode(a)"
  prim__nextNode : TreeWalker -> PrimIO (Nullable Node)
  
  export
  %foreign "browser:lambda:(x,a)=>x.nextSibling(a)"
  prim__nextSibling : TreeWalker -> PrimIO (Nullable Node)
  
  export
  %foreign "browser:lambda:(x,a)=>x.parentNode(a)"
  prim__parentNode : TreeWalker -> PrimIO (Nullable Node)
  
  export
  %foreign "browser:lambda:(x,a)=>x.previousNode(a)"
  prim__previousNode : TreeWalker -> PrimIO (Nullable Node)
  
  export
  %foreign "browser:lambda:(x,a)=>x.previousSibling(a)"
  prim__previousSibling : TreeWalker -> PrimIO (Nullable Node)


namespace XPathEvaluator
  
  export
  %foreign "browser:lambda:()=> new XPathEvaluator()"
  prim__new : PrimIO XPathEvaluator

namespace XPathExpression
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.evaluate(a b c d)"
  prim__evaluate :  XPathExpression
                 -> Node
                 -> UndefOr UInt16
                 -> UndefOr (Nullable XPathResult)
                 -> PrimIO XPathResult

namespace XPathResult
  
  export
  %foreign "browser:lambda:x=>x.booleanValue"
  prim__booleanValue : XPathResult -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:x=>x.invalidIteratorState"
  prim__invalidIteratorState : XPathResult -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:x=>x.numberValue"
  prim__numberValue : XPathResult -> PrimIO Double
  
  export
  %foreign "browser:lambda:x=>x.resultType"
  prim__resultType : XPathResult -> PrimIO UInt16
  
  export
  %foreign "browser:lambda:x=>x.singleNodeValue"
  prim__singleNodeValue : XPathResult -> PrimIO (Nullable Node)
  
  export
  %foreign "browser:lambda:x=>x.snapshotLength"
  prim__snapshotLength : XPathResult -> PrimIO UInt32
  
  export
  %foreign "browser:lambda:x=>x.stringValue"
  prim__stringValue : XPathResult -> PrimIO String
  
  export
  %foreign "browser:lambda:(x,a)=>x.iterateNext(a)"
  prim__iterateNext : XPathResult -> PrimIO (Nullable Node)
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.snapshotItem(a b)"
  prim__snapshotItem : XPathResult -> UInt32 -> PrimIO (Nullable Node)

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace ChildNode
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.after(a b)"
  prim__after : ChildNode -> VarArg (Union2 Node String) -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.before(a b)"
  prim__before : ChildNode -> VarArg (Union2 Node String) -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.remove(a)"
  prim__remove : ChildNode -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.replaceWith(a b)"
  prim__replaceWith : ChildNode -> VarArg (Union2 Node String) -> PrimIO ()

namespace DocumentOrShadowRoot
  
  export
  %foreign "browser:lambda:x=>x.styleSheets"
  prim__styleSheets : DocumentOrShadowRoot -> PrimIO StyleSheetList

namespace NonDocumentTypeChildNode
  
  export
  %foreign "browser:lambda:x=>x.nextElementSibling"
  prim__nextElementSibling :  NonDocumentTypeChildNode
                           -> PrimIO (Nullable Element)
  
  export
  %foreign "browser:lambda:x=>x.previousElementSibling"
  prim__previousElementSibling :  NonDocumentTypeChildNode
                               -> PrimIO (Nullable Element)

namespace NonElementParentNode
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getElementById(a b)"
  prim__getElementById :  NonElementParentNode
                       -> String
                       -> PrimIO (Nullable Element)

namespace ParentNode
  
  export
  %foreign "browser:lambda:x=>x.childElementCount"
  prim__childElementCount : ParentNode -> PrimIO UInt32
  
  export
  %foreign "browser:lambda:x=>x.children"
  prim__children : ParentNode -> PrimIO HTMLCollection
  
  export
  %foreign "browser:lambda:x=>x.firstElementChild"
  prim__firstElementChild : ParentNode -> PrimIO (Nullable Element)
  
  export
  %foreign "browser:lambda:x=>x.lastElementChild"
  prim__lastElementChild : ParentNode -> PrimIO (Nullable Element)
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.append(a b)"
  prim__append : ParentNode -> VarArg (Union2 Node String) -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.prepend(a b)"
  prim__prepend : ParentNode -> VarArg (Union2 Node String) -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.querySelectorAll(a b)"
  prim__querySelectorAll : ParentNode -> String -> PrimIO NodeList
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.querySelector(a b)"
  prim__querySelector : ParentNode -> String -> PrimIO (Nullable Element)
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.replaceChildren(a b)"
  prim__replaceChildren : ParentNode -> VarArg (Union2 Node String) -> PrimIO ()

namespace Slottable
  
  export
  %foreign "browser:lambda:x=>x.assignedSlot"
  prim__assignedSlot : Slottable -> PrimIO (Nullable HTMLSlotElement)

namespace XPathEvaluatorBase
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.createExpression(a b c)"
  prim__createExpression :  XPathEvaluatorBase
                         -> String
                         -> UndefOr (Nullable XPathNSResolver)
                         -> PrimIO XPathExpression
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.createNSResolver(a b)"
  prim__createNSResolver : XPathEvaluatorBase -> Node -> PrimIO XPathNSResolver
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.evaluate(a b c d e f)"
  prim__evaluate :  XPathEvaluatorBase
                 -> String
                 -> Node
                 -> UndefOr (Nullable XPathNSResolver)
                 -> UndefOr UInt16
                 -> UndefOr (Nullable XPathResult)
                 -> PrimIO XPathResult

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace AddEventListenerOptions
  
  export
  %foreign "browser:lambda:(a,b,c)=> {passive: a,once: b,signal: c}"
  prim__new :  UndefOr Boolean
            -> UndefOr Boolean
            -> UndefOr AbortSignal
            -> PrimIO AddEventListenerOptions
  
  export
  %foreign "browser:lambda:x=>x.once"
  prim__once : AddEventListenerOptions -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.once = v}"
  prim__setOnce : AddEventListenerOptions -> UndefOr Boolean -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.passive"
  prim__passive : AddEventListenerOptions -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.passive = v}"
  prim__setPassive : AddEventListenerOptions -> UndefOr Boolean -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.signal"
  prim__signal : AddEventListenerOptions -> PrimIO (UndefOr AbortSignal)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.signal = v}"
  prim__setSignal : AddEventListenerOptions -> UndefOr AbortSignal -> PrimIO ()

namespace CustomEventInit
  
  export
  %foreign "browser:lambda:(a)=> {detail: a}"
  prim__new : UndefOr AnyPtr -> PrimIO CustomEventInit
  
  export
  %foreign "browser:lambda:x=>x.detail"
  prim__detail : CustomEventInit -> PrimIO (UndefOr AnyPtr)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.detail = v}"
  prim__setDetail : CustomEventInit -> UndefOr AnyPtr -> PrimIO ()

namespace ElementCreationOptions
  
  export
  %foreign "browser:lambda:(a)=> {is: a}"
  prim__new : UndefOr String -> PrimIO ElementCreationOptions
  
  export
  %foreign "browser:lambda:x=>x.is"
  prim__is : ElementCreationOptions -> PrimIO (UndefOr String)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.is = v}"
  prim__setIs : ElementCreationOptions -> UndefOr String -> PrimIO ()

namespace EventInit
  
  export
  %foreign "browser:lambda:(a,b,c)=> {bubbles: a,cancelable: b,composed: c}"
  prim__new :  UndefOr Boolean
            -> UndefOr Boolean
            -> UndefOr Boolean
            -> PrimIO EventInit
  
  export
  %foreign "browser:lambda:x=>x.bubbles"
  prim__bubbles : EventInit -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.bubbles = v}"
  prim__setBubbles : EventInit -> UndefOr Boolean -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.cancelable"
  prim__cancelable : EventInit -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.cancelable = v}"
  prim__setCancelable : EventInit -> UndefOr Boolean -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.composed"
  prim__composed : EventInit -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.composed = v}"
  prim__setComposed : EventInit -> UndefOr Boolean -> PrimIO ()

namespace EventListenerOptions
  
  export
  %foreign "browser:lambda:(a)=> {capture: a}"
  prim__new : UndefOr Boolean -> PrimIO EventListenerOptions
  
  export
  %foreign "browser:lambda:x=>x.capture"
  prim__capture : EventListenerOptions -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.capture = v}"
  prim__setCapture : EventListenerOptions -> UndefOr Boolean -> PrimIO ()

namespace GetRootNodeOptions
  
  export
  %foreign "browser:lambda:(a)=> {composed: a}"
  prim__new : UndefOr Boolean -> PrimIO GetRootNodeOptions
  
  export
  %foreign "browser:lambda:x=>x.composed"
  prim__composed : GetRootNodeOptions -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.composed = v}"
  prim__setComposed : GetRootNodeOptions -> UndefOr Boolean -> PrimIO ()

namespace MutationObserverInit
  
  export
  %foreign "browser:lambda:(a,b,c,d,e,f,g)=> {childList: a,attributes: b,characterData: c,subtree: d,attributeOldValue: e,characterDataOldValue: f,attributeFilter: g}"
  prim__new :  UndefOr Boolean
            -> UndefOr Boolean
            -> UndefOr Boolean
            -> UndefOr Boolean
            -> UndefOr Boolean
            -> UndefOr Boolean
            -> UndefOr (Array String)
            -> PrimIO MutationObserverInit
  
  export
  %foreign "browser:lambda:x=>x.attributeFilter"
  prim__attributeFilter :  MutationObserverInit
                        -> PrimIO (UndefOr (Array String))
  
  export
  %foreign "browser:lambda:(x,v)=>{x.attributeFilter = v}"
  prim__setAttributeFilter :  MutationObserverInit
                           -> UndefOr (Array String)
                           -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.attributeOldValue"
  prim__attributeOldValue : MutationObserverInit -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.attributeOldValue = v}"
  prim__setAttributeOldValue :  MutationObserverInit
                             -> UndefOr Boolean
                             -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.attributes"
  prim__attributes : MutationObserverInit -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.attributes = v}"
  prim__setAttributes : MutationObserverInit -> UndefOr Boolean -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.characterData"
  prim__characterData : MutationObserverInit -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.characterData = v}"
  prim__setCharacterData : MutationObserverInit -> UndefOr Boolean -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.characterDataOldValue"
  prim__characterDataOldValue : MutationObserverInit -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.characterDataOldValue = v}"
  prim__setCharacterDataOldValue :  MutationObserverInit
                                 -> UndefOr Boolean
                                 -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.childList"
  prim__childList : MutationObserverInit -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.childList = v}"
  prim__setChildList : MutationObserverInit -> UndefOr Boolean -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.subtree"
  prim__subtree : MutationObserverInit -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.subtree = v}"
  prim__setSubtree : MutationObserverInit -> UndefOr Boolean -> PrimIO ()

namespace ShadowRootInit
  
  export
  %foreign "browser:lambda:(a,b)=> {mode: a,delegatesFocus: b}"
  prim__new : ShadowRootMode -> UndefOr Boolean -> PrimIO ShadowRootInit
  
  export
  %foreign "browser:lambda:x=>x.delegatesFocus"
  prim__delegatesFocus : ShadowRootInit -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.delegatesFocus = v}"
  prim__setDelegatesFocus : ShadowRootInit -> UndefOr Boolean -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : ShadowRootInit -> PrimIO ShadowRootMode
  
  export
  %foreign "browser:lambda:(x,v)=>{x.mode = v}"
  prim__setMode : ShadowRootInit -> ShadowRootMode -> PrimIO ()

namespace StaticRangeInit
  
  export
  %foreign "browser:lambda:(a,b,c,d)=> {startContainer: a,startOffset: b,endContainer: c,endOffset: d}"
  prim__new : Node -> UInt32 -> Node -> UInt32 -> PrimIO StaticRangeInit
  
  export
  %foreign "browser:lambda:x=>x.endContainer"
  prim__endContainer : StaticRangeInit -> PrimIO Node
  
  export
  %foreign "browser:lambda:(x,v)=>{x.endContainer = v}"
  prim__setEndContainer : StaticRangeInit -> Node -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.endOffset"
  prim__endOffset : StaticRangeInit -> PrimIO UInt32
  
  export
  %foreign "browser:lambda:(x,v)=>{x.endOffset = v}"
  prim__setEndOffset : StaticRangeInit -> UInt32 -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.startContainer"
  prim__startContainer : StaticRangeInit -> PrimIO Node
  
  export
  %foreign "browser:lambda:(x,v)=>{x.startContainer = v}"
  prim__setStartContainer : StaticRangeInit -> Node -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.startOffset"
  prim__startOffset : StaticRangeInit -> PrimIO UInt32
  
  export
  %foreign "browser:lambda:(x,v)=>{x.startOffset = v}"
  prim__setStartOffset : StaticRangeInit -> UInt32 -> PrimIO ()