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
  %foreign "browser:lambda:x=>x.abort()"
  prim__abort : AbortController -> PrimIO ()

namespace AbortSignal

  export
  %foreign "browser:lambda:x=>x.abort()"
  prim__abort : PrimIO AbortSignal

  export
  %foreign "browser:lambda:x=>x.aborted"
  prim__aborted : AbortSignal -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.onabort"
  prim__onabort : AbortSignal -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onabort = v}"
  prim__setOnabort : AbortSignal -> Nullable EventHandlerNonNull -> PrimIO ()

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
  %foreign "browser:lambda:(x,a)=>x.appendData(a)"
  prim__appendData : CharacterData -> String -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b)=>x.deleteData(a,b)"
  prim__deleteData : CharacterData -> UInt32 -> UInt32 -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b)=>x.insertData(a,b)"
  prim__insertData : CharacterData -> UInt32 -> String -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b,c)=>x.replaceData(a,b,c)"
  prim__replaceData : CharacterData -> UInt32 -> UInt32 -> String -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b)=>x.substringData(a,b)"
  prim__substringData : CharacterData -> UInt32 -> UInt32 -> PrimIO String

namespace Comment

  export
  %foreign "browser:lambda:(a)=> new Comment(a)"
  prim__new : UndefOr String -> PrimIO Comment

namespace CustomEvent

  export
  %foreign "browser:lambda:(a,b)=> new CustomEvent(a,b)"
  prim__new : String -> UndefOr CustomEventInit -> PrimIO CustomEvent

  export
  %foreign "browser:lambda:x=>x.detail"
  prim__detail : CustomEvent -> PrimIO AnyPtr

  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.initCustomEvent(a,b,c,d)"
  prim__initCustomEvent :  CustomEvent
                        -> String
                        -> UndefOr Boolean
                        -> UndefOr Boolean
                        -> UndefOr AnyPtr
                        -> PrimIO ()

namespace DOMImplementation

  export
  %foreign "browser:lambda:(x,a,b,c)=>x.createDocument(a,b,c)"
  prim__createDocument :  DOMImplementation
                       -> Nullable String
                       -> String
                       -> UndefOr (Nullable DocumentType)
                       -> PrimIO XMLDocument

  export
  %foreign "browser:lambda:(x,a,b,c)=>x.createDocumentType(a,b,c)"
  prim__createDocumentType :  DOMImplementation
                           -> String
                           -> String
                           -> String
                           -> PrimIO DocumentType

  export
  %foreign "browser:lambda:(x,a)=>x.createHTMLDocument(a)"
  prim__createHTMLDocument :  DOMImplementation
                           -> UndefOr String
                           -> PrimIO Document

  export
  %foreign "browser:lambda:x=>x.hasFeature()"
  prim__hasFeature : DOMImplementation -> PrimIO Boolean

namespace DOMTokenList

  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : DOMTokenList -> PrimIO UInt32

  export
  %foreign "browser:lambda:x=>x.value"
  prim__value : DOMTokenList -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : DOMTokenList -> String -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.add(a)"
  prim__add : DOMTokenList -> VarArg String -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.contains(a)"
  prim__contains : DOMTokenList -> String -> PrimIO Boolean

  export
  %foreign "browser:lambda:(x,a)=>x.item(a)"
  prim__item : DOMTokenList -> UInt32 -> PrimIO (Nullable String)

  export
  %foreign "browser:lambda:(x,a)=>x.remove(a)"
  prim__remove : DOMTokenList -> VarArg String -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b)=>x.replace(a,b)"
  prim__replace : DOMTokenList -> String -> String -> PrimIO Boolean

  export
  %foreign "browser:lambda:(x,a)=>x.supports(a)"
  prim__supports : DOMTokenList -> String -> PrimIO Boolean

  export
  %foreign "browser:lambda:(x,a,b)=>x.toggle(a,b)"
  prim__toggle : DOMTokenList -> String -> UndefOr Boolean -> PrimIO Boolean

namespace Document

  export
  %foreign "browser:lambda:()=> new Document()"
  prim__new : PrimIO Document

  export
  %foreign "browser:lambda:(o,x)=>o[x]"
  prim__get : Document -> String -> PrimIO Object

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
  prim__currentScript :  Document
                      -> PrimIO (Nullable (Union2 HTMLScriptElement
                                                  SVGScriptElement))

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
  prim__onreadystatechange : Document -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onreadystatechange = v}"
  prim__setOnreadystatechange :  Document
                              -> Nullable EventHandlerNonNull
                              -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.onvisibilitychange"
  prim__onvisibilitychange : Document -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onvisibilitychange = v}"
  prim__setOnvisibilitychange :  Document
                              -> Nullable EventHandlerNonNull
                              -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.plugins"
  prim__plugins : Document -> PrimIO HTMLCollection

  export
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : Document -> PrimIO String

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
  prim__visibilityState : Document -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.vlinkColor"
  prim__vlinkColor : Document -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.vlinkColor = v}"
  prim__setVlinkColor : Document -> String -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.adoptNode(a)"
  prim__adoptNode : Document -> Node -> PrimIO Node

  export
  %foreign "browser:lambda:x=>x.captureEvents()"
  prim__captureEvents : Document -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.clear()"
  prim__clear : Document -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.close()"
  prim__close : Document -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.createAttribute(a)"
  prim__createAttribute : Document -> String -> PrimIO Attr

  export
  %foreign "browser:lambda:(x,a,b)=>x.createAttributeNS(a,b)"
  prim__createAttributeNS : Document -> Nullable String -> String -> PrimIO Attr

  export
  %foreign "browser:lambda:(x,a)=>x.createCDATASection(a)"
  prim__createCDATASection : Document -> String -> PrimIO CDATASection

  export
  %foreign "browser:lambda:(x,a)=>x.createComment(a)"
  prim__createComment : Document -> String -> PrimIO Comment

  export
  %foreign "browser:lambda:x=>x.createDocumentFragment()"
  prim__createDocumentFragment : Document -> PrimIO DocumentFragment

  export
  %foreign "browser:lambda:(x,a,b)=>x.createElement(a,b)"
  prim__createElement :  Document
                      -> String
                      -> UndefOr (Union2 String ElementCreationOptions)
                      -> PrimIO Element

  export
  %foreign "browser:lambda:(x,a,b,c)=>x.createElementNS(a,b,c)"
  prim__createElementNS :  Document
                        -> Nullable String
                        -> String
                        -> UndefOr (Union2 String ElementCreationOptions)
                        -> PrimIO Element

  export
  %foreign "browser:lambda:(x,a)=>x.createEvent(a)"
  prim__createEvent : Document -> String -> PrimIO Event

  export
  %foreign "browser:lambda:(x,a,b,c)=>x.createNodeIterator(a,b,c)"
  prim__createNodeIterator :  Document
                           -> Node
                           -> UndefOr UInt32
                           -> UndefOr (Nullable NodeFilter)
                           -> PrimIO NodeIterator

  export
  %foreign "browser:lambda:(x,a,b)=>x.createProcessingInstruction(a,b)"
  prim__createProcessingInstruction :  Document
                                    -> String
                                    -> String
                                    -> PrimIO ProcessingInstruction

  export
  %foreign "browser:lambda:x=>x.createRange()"
  prim__createRange : Document -> PrimIO Range

  export
  %foreign "browser:lambda:(x,a)=>x.createTextNode(a)"
  prim__createTextNode : Document -> String -> PrimIO Text

  export
  %foreign "browser:lambda:(x,a,b,c)=>x.createTreeWalker(a,b,c)"
  prim__createTreeWalker :  Document
                         -> Node
                         -> UndefOr UInt32
                         -> UndefOr (Nullable NodeFilter)
                         -> PrimIO TreeWalker

  export
  %foreign "browser:lambda:(x,a,b,c)=>x.execCommand(a,b,c)"
  prim__execCommand :  Document
                    -> String
                    -> UndefOr Boolean
                    -> UndefOr String
                    -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.getAnimations()"
  prim__getAnimations : Document -> PrimIO (Array Animation)

  export
  %foreign "browser:lambda:(x,a)=>x.getElementsByClassName(a)"
  prim__getElementsByClassName : Document -> String -> PrimIO HTMLCollection

  export
  %foreign "browser:lambda:(x,a)=>x.getElementsByName(a)"
  prim__getElementsByName : Document -> String -> PrimIO NodeList

  export
  %foreign "browser:lambda:(x,a)=>x.getElementsByTagName(a)"
  prim__getElementsByTagName : Document -> String -> PrimIO HTMLCollection

  export
  %foreign "browser:lambda:(x,a,b)=>x.getElementsByTagNameNS(a,b)"
  prim__getElementsByTagNameNS :  Document
                               -> Nullable String
                               -> String
                               -> PrimIO HTMLCollection

  export
  %foreign "browser:lambda:x=>x.hasFocus()"
  prim__hasFocus : Document -> PrimIO Boolean

  export
  %foreign "browser:lambda:(x,a,b)=>x.importNode(a,b)"
  prim__importNode : Document -> Node -> UndefOr Boolean -> PrimIO Node

  export
  %foreign "browser:lambda:(x,a,b)=>x.open(a,b)"
  prim__open : Document -> UndefOr String -> UndefOr String -> PrimIO Document

  export
  %foreign "browser:lambda:(x,a,b,c)=>x.open(a,b,c)"
  prim__open1 :  Document
              -> String
              -> String
              -> String
              -> PrimIO (Nullable WindowProxy)

  export
  %foreign "browser:lambda:(x,a)=>x.queryCommandEnabled(a)"
  prim__queryCommandEnabled : Document -> String -> PrimIO Boolean

  export
  %foreign "browser:lambda:(x,a)=>x.queryCommandIndeterm(a)"
  prim__queryCommandIndeterm : Document -> String -> PrimIO Boolean

  export
  %foreign "browser:lambda:(x,a)=>x.queryCommandState(a)"
  prim__queryCommandState : Document -> String -> PrimIO Boolean

  export
  %foreign "browser:lambda:(x,a)=>x.queryCommandSupported(a)"
  prim__queryCommandSupported : Document -> String -> PrimIO Boolean

  export
  %foreign "browser:lambda:(x,a)=>x.queryCommandValue(a)"
  prim__queryCommandValue : Document -> String -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.releaseEvents()"
  prim__releaseEvents : Document -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.write(a)"
  prim__write : Document -> VarArg String -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.writeln(a)"
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
  %foreign "browser:lambda:x=>x.outerHTML"
  prim__outerHTML : Element -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.outerHTML = v}"
  prim__setOuterHTML : Element -> String -> PrimIO ()

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
  %foreign "browser:lambda:(x,a)=>x.attachShadow(a)"
  prim__attachShadow : Element -> ShadowRootInit -> PrimIO ShadowRoot

  export
  %foreign "browser:lambda:(x,a)=>x.closest(a)"
  prim__closest : Element -> String -> PrimIO (Nullable Element)

  export
  %foreign "browser:lambda:(x,a)=>x.getAttribute(a)"
  prim__getAttribute : Element -> String -> PrimIO (Nullable String)

  export
  %foreign "browser:lambda:(x,a,b)=>x.getAttributeNS(a,b)"
  prim__getAttributeNS :  Element
                       -> Nullable String
                       -> String
                       -> PrimIO (Nullable String)

  export
  %foreign "browser:lambda:x=>x.getAttributeNames()"
  prim__getAttributeNames : Element -> PrimIO (Array String)

  export
  %foreign "browser:lambda:(x,a)=>x.getAttributeNode(a)"
  prim__getAttributeNode : Element -> String -> PrimIO (Nullable Attr)

  export
  %foreign "browser:lambda:(x,a,b)=>x.getAttributeNodeNS(a,b)"
  prim__getAttributeNodeNS :  Element
                           -> Nullable String
                           -> String
                           -> PrimIO (Nullable Attr)

  export
  %foreign "browser:lambda:(x,a)=>x.getElementsByClassName(a)"
  prim__getElementsByClassName : Element -> String -> PrimIO HTMLCollection

  export
  %foreign "browser:lambda:(x,a)=>x.getElementsByTagName(a)"
  prim__getElementsByTagName : Element -> String -> PrimIO HTMLCollection

  export
  %foreign "browser:lambda:(x,a,b)=>x.getElementsByTagNameNS(a,b)"
  prim__getElementsByTagNameNS :  Element
                               -> Nullable String
                               -> String
                               -> PrimIO HTMLCollection

  export
  %foreign "browser:lambda:(x,a)=>x.hasAttribute(a)"
  prim__hasAttribute : Element -> String -> PrimIO Boolean

  export
  %foreign "browser:lambda:(x,a,b)=>x.hasAttributeNS(a,b)"
  prim__hasAttributeNS : Element -> Nullable String -> String -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.hasAttributes()"
  prim__hasAttributes : Element -> PrimIO Boolean

  export
  %foreign "browser:lambda:(x,a,b)=>x.insertAdjacentElement(a,b)"
  prim__insertAdjacentElement :  Element
                              -> String
                              -> Element
                              -> PrimIO (Nullable Element)

  export
  %foreign "browser:lambda:(x,a,b)=>x.insertAdjacentHTML(a,b)"
  prim__insertAdjacentHTML : Element -> String -> String -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b)=>x.insertAdjacentText(a,b)"
  prim__insertAdjacentText : Element -> String -> String -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.matches(a)"
  prim__matches : Element -> String -> PrimIO Boolean

  export
  %foreign "browser:lambda:(x,a)=>x.pseudo(a)"
  prim__pseudo : Element -> CSSOMString -> PrimIO (Nullable CSSPseudoElement)

  export
  %foreign "browser:lambda:(x,a)=>x.removeAttribute(a)"
  prim__removeAttribute : Element -> String -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b)=>x.removeAttributeNS(a,b)"
  prim__removeAttributeNS : Element -> Nullable String -> String -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.removeAttributeNode(a)"
  prim__removeAttributeNode : Element -> Attr -> PrimIO Attr

  export
  %foreign "browser:lambda:(x,a,b)=>x.setAttribute(a,b)"
  prim__setAttribute : Element -> String -> String -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b,c)=>x.setAttributeNS(a,b,c)"
  prim__setAttributeNS :  Element
                       -> Nullable String
                       -> String
                       -> String
                       -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.setAttributeNode(a)"
  prim__setAttributeNode : Element -> Attr -> PrimIO (Nullable Attr)

  export
  %foreign "browser:lambda:(x,a)=>x.setAttributeNodeNS(a)"
  prim__setAttributeNodeNS : Element -> Attr -> PrimIO (Nullable Attr)

  export
  %foreign "browser:lambda:(x,a,b)=>x.toggleAttribute(a,b)"
  prim__toggleAttribute : Element -> String -> UndefOr Boolean -> PrimIO Boolean

  export
  %foreign "browser:lambda:(x,a)=>x.webkitMatchesSelector(a)"
  prim__webkitMatchesSelector : Element -> String -> PrimIO Boolean

namespace Event

  export
  %foreign "browser:lambda:(a,b)=> new Event(a,b)"
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
  prim__timeStamp : Event -> PrimIO Double

  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : Event -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.composedPath()"
  prim__composedPath : Event -> PrimIO (Array EventTarget)

  export
  %foreign "browser:lambda:(x,a,b,c)=>x.initEvent(a,b,c)"
  prim__initEvent :  Event
                  -> String
                  -> UndefOr Boolean
                  -> UndefOr Boolean
                  -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.preventDefault()"
  prim__preventDefault : Event -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.stopImmediatePropagation()"
  prim__stopImmediatePropagation : Event -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.stopPropagation()"
  prim__stopPropagation : Event -> PrimIO ()

namespace EventTarget

  export
  %foreign "browser:lambda:()=> new EventTarget()"
  prim__new : PrimIO EventTarget

  export
  %foreign "browser:lambda:(x,a,b,c)=>x.addEventListener(a,b,c)"
  prim__addEventListener :  EventTarget
                         -> String
                         -> Nullable EventListener
                         -> UndefOr (Union2 AddEventListenerOptions Boolean)
                         -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.dispatchEvent(a)"
  prim__dispatchEvent : EventTarget -> Event -> PrimIO Boolean

  export
  %foreign "browser:lambda:(x,a,b,c)=>x.removeEventListener(a,b,c)"
  prim__removeEventListener :  EventTarget
                            -> String
                            -> Nullable EventListener
                            -> UndefOr (Union2 EventListenerOptions Boolean)
                            -> PrimIO ()

namespace HTMLCollection

  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : HTMLCollection -> PrimIO UInt32

  export
  %foreign "browser:lambda:(x,a)=>x.item(a)"
  prim__item : HTMLCollection -> UInt32 -> PrimIO (Nullable Element)

  export
  %foreign "browser:lambda:(x,a)=>x.namedItem(a)"
  prim__namedItem : HTMLCollection -> String -> PrimIO (Nullable Element)

namespace MutationObserver

  export
  %foreign "browser:lambda:(a)=> new MutationObserver(a)"
  prim__new : MutationCallback -> PrimIO MutationObserver

  export
  %foreign "browser:lambda:x=>x.disconnect()"
  prim__disconnect : MutationObserver -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b)=>x.observe(a,b)"
  prim__observe :  MutationObserver
                -> Node
                -> UndefOr MutationObserverInit
                -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.takeRecords()"
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
  %foreign "browser:lambda:(x,a,b)=>x.getNamedItemNS(a,b)"
  prim__getNamedItemNS :  NamedNodeMap
                       -> Nullable String
                       -> String
                       -> PrimIO (Nullable Attr)

  export
  %foreign "browser:lambda:(x,a)=>x.getNamedItem(a)"
  prim__getNamedItem : NamedNodeMap -> String -> PrimIO (Nullable Attr)

  export
  %foreign "browser:lambda:(x,a)=>x.item(a)"
  prim__item : NamedNodeMap -> UInt32 -> PrimIO (Nullable Attr)

  export
  %foreign "browser:lambda:(x,a,b)=>x.removeNamedItemNS(a,b)"
  prim__removeNamedItemNS :  NamedNodeMap
                          -> Nullable String
                          -> String
                          -> PrimIO Attr

  export
  %foreign "browser:lambda:(x,a)=>x.removeNamedItem(a)"
  prim__removeNamedItem : NamedNodeMap -> String -> PrimIO Attr

  export
  %foreign "browser:lambda:(x,a)=>x.setNamedItemNS(a)"
  prim__setNamedItemNS : NamedNodeMap -> Attr -> PrimIO (Nullable Attr)

  export
  %foreign "browser:lambda:(x,a)=>x.setNamedItem(a)"
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
  %foreign "browser:lambda:(x,a)=>x.appendChild(a)"
  prim__appendChild : Node -> Node -> PrimIO Node

  export
  %foreign "browser:lambda:(x,a)=>x.cloneNode(a)"
  prim__cloneNode : Node -> UndefOr Boolean -> PrimIO Node

  export
  %foreign "browser:lambda:(x,a)=>x.compareDocumentPosition(a)"
  prim__compareDocumentPosition : Node -> Node -> PrimIO UInt16

  export
  %foreign "browser:lambda:(x,a)=>x.contains(a)"
  prim__contains : Node -> Nullable Node -> PrimIO Boolean

  export
  %foreign "browser:lambda:(x,a)=>x.getRootNode(a)"
  prim__getRootNode : Node -> UndefOr GetRootNodeOptions -> PrimIO Node

  export
  %foreign "browser:lambda:x=>x.hasChildNodes()"
  prim__hasChildNodes : Node -> PrimIO Boolean

  export
  %foreign "browser:lambda:(x,a,b)=>x.insertBefore(a,b)"
  prim__insertBefore : Node -> Node -> Nullable Node -> PrimIO Node

  export
  %foreign "browser:lambda:(x,a)=>x.isDefaultNamespace(a)"
  prim__isDefaultNamespace : Node -> Nullable String -> PrimIO Boolean

  export
  %foreign "browser:lambda:(x,a)=>x.isEqualNode(a)"
  prim__isEqualNode : Node -> Nullable Node -> PrimIO Boolean

  export
  %foreign "browser:lambda:(x,a)=>x.isSameNode(a)"
  prim__isSameNode : Node -> Nullable Node -> PrimIO Boolean

  export
  %foreign "browser:lambda:(x,a)=>x.lookupNamespaceURI(a)"
  prim__lookupNamespaceURI : Node -> Nullable String -> PrimIO (Nullable String)

  export
  %foreign "browser:lambda:(x,a)=>x.lookupPrefix(a)"
  prim__lookupPrefix : Node -> Nullable String -> PrimIO (Nullable String)

  export
  %foreign "browser:lambda:x=>x.normalize()"
  prim__normalize : Node -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.removeChild(a)"
  prim__removeChild : Node -> Node -> PrimIO Node

  export
  %foreign "browser:lambda:(x,a,b)=>x.replaceChild(a,b)"
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
  %foreign "browser:lambda:x=>x.detach()"
  prim__detach : NodeIterator -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.nextNode()"
  prim__nextNode : NodeIterator -> PrimIO (Nullable Node)

  export
  %foreign "browser:lambda:x=>x.previousNode()"
  prim__previousNode : NodeIterator -> PrimIO (Nullable Node)

namespace NodeList

  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : NodeList -> PrimIO UInt32

  export
  %foreign "browser:lambda:(x,a)=>x.item(a)"
  prim__item : NodeList -> UInt32 -> PrimIO (Nullable Node)

namespace Performance

  export
  %foreign "browser:lambda:x=>x.timeOrigin"
  prim__timeOrigin : Performance -> PrimIO Double

  export
  %foreign "browser:lambda:x=>x.now()"
  prim__now : Performance -> PrimIO Double

  export
  %foreign "browser:lambda:x=>x.toJSON()"
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
  %foreign "browser:lambda:x=>x.cloneContents()"
  prim__cloneContents : Range -> PrimIO DocumentFragment

  export
  %foreign "browser:lambda:x=>x.cloneRange()"
  prim__cloneRange : Range -> PrimIO Range

  export
  %foreign "browser:lambda:(x,a)=>x.collapse(a)"
  prim__collapse : Range -> UndefOr Boolean -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b)=>x.compareBoundaryPoints(a,b)"
  prim__compareBoundaryPoints : Range -> UInt16 -> Range -> PrimIO Int16

  export
  %foreign "browser:lambda:(x,a,b)=>x.comparePoint(a,b)"
  prim__comparePoint : Range -> Node -> UInt32 -> PrimIO Int16

  export
  %foreign "browser:lambda:(x,a)=>x.createContextualFragment(a)"
  prim__createContextualFragment : Range -> String -> PrimIO DocumentFragment

  export
  %foreign "browser:lambda:x=>x.deleteContents()"
  prim__deleteContents : Range -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.detach()"
  prim__detach : Range -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.extractContents()"
  prim__extractContents : Range -> PrimIO DocumentFragment

  export
  %foreign "browser:lambda:(x,a)=>x.insertNode(a)"
  prim__insertNode : Range -> Node -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.intersectsNode(a)"
  prim__intersectsNode : Range -> Node -> PrimIO Boolean

  export
  %foreign "browser:lambda:(x,a,b)=>x.isPointInRange(a,b)"
  prim__isPointInRange : Range -> Node -> UInt32 -> PrimIO Boolean

  export
  %foreign "browser:lambda:(x,a)=>x.selectNodeContents(a)"
  prim__selectNodeContents : Range -> Node -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.selectNode(a)"
  prim__selectNode : Range -> Node -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.setEndAfter(a)"
  prim__setEndAfter : Range -> Node -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.setEndBefore(a)"
  prim__setEndBefore : Range -> Node -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b)=>x.setEnd(a,b)"
  prim__setEnd : Range -> Node -> UInt32 -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.setStartAfter(a)"
  prim__setStartAfter : Range -> Node -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.setStartBefore(a)"
  prim__setStartBefore : Range -> Node -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b)=>x.setStart(a,b)"
  prim__setStart : Range -> Node -> UInt32 -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.surroundContents(a)"
  prim__surroundContents : Range -> Node -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.toString()"
  prim__toString : Range -> PrimIO String

namespace ShadowRoot

  export
  %foreign "browser:lambda:x=>x.host"
  prim__host : ShadowRoot -> PrimIO Element

  export
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : ShadowRoot -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.onslotchange"
  prim__onslotchange : ShadowRoot -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onslotchange = v}"
  prim__setOnslotchange :  ShadowRoot
                        -> Nullable EventHandlerNonNull
                        -> PrimIO ()

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
  %foreign "browser:lambda:(x,a)=>x.splitText(a)"
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
  %foreign "browser:lambda:x=>x.firstChild()"
  prim__firstChild : TreeWalker -> PrimIO (Nullable Node)

  export
  %foreign "browser:lambda:x=>x.lastChild()"
  prim__lastChild : TreeWalker -> PrimIO (Nullable Node)

  export
  %foreign "browser:lambda:x=>x.nextNode()"
  prim__nextNode : TreeWalker -> PrimIO (Nullable Node)

  export
  %foreign "browser:lambda:x=>x.nextSibling()"
  prim__nextSibling : TreeWalker -> PrimIO (Nullable Node)

  export
  %foreign "browser:lambda:x=>x.parentNode()"
  prim__parentNode : TreeWalker -> PrimIO (Nullable Node)

  export
  %foreign "browser:lambda:x=>x.previousNode()"
  prim__previousNode : TreeWalker -> PrimIO (Nullable Node)

  export
  %foreign "browser:lambda:x=>x.previousSibling()"
  prim__previousSibling : TreeWalker -> PrimIO (Nullable Node)


namespace XMLSerializer

  export
  %foreign "browser:lambda:()=> new XMLSerializer()"
  prim__new : PrimIO XMLSerializer

  export
  %foreign "browser:lambda:(x,a)=>x.serializeToString(a)"
  prim__serializeToString : XMLSerializer -> Node -> PrimIO String

namespace XPathEvaluator

  export
  %foreign "browser:lambda:()=> new XPathEvaluator()"
  prim__new : PrimIO XPathEvaluator

namespace XPathExpression

  export
  %foreign "browser:lambda:(x,a,b,c)=>x.evaluate(a,b,c)"
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
  %foreign "browser:lambda:x=>x.iterateNext()"
  prim__iterateNext : XPathResult -> PrimIO (Nullable Node)

  export
  %foreign "browser:lambda:(x,a)=>x.snapshotItem(a)"
  prim__snapshotItem : XPathResult -> UInt32 -> PrimIO (Nullable Node)

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace ChildNode

  export
  %foreign "browser:lambda:(x,a)=>x.after(a)"
  prim__after : ChildNode -> VarArg (Union2 Node String) -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.before(a)"
  prim__before : ChildNode -> VarArg (Union2 Node String) -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.remove()"
  prim__remove : ChildNode -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.replaceWith(a)"
  prim__replaceWith : ChildNode -> VarArg (Union2 Node String) -> PrimIO ()

namespace DocumentOrShadowRoot

  export
  %foreign "browser:lambda:x=>x.styleSheets"
  prim__styleSheets : DocumentOrShadowRoot -> PrimIO StyleSheetList

namespace InnerHTML

  export
  %foreign "browser:lambda:x=>x.innerHTML"
  prim__innerHTML : InnerHTML -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.innerHTML = v}"
  prim__setInnerHTML : InnerHTML -> String -> PrimIO ()

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
  %foreign "browser:lambda:(x,a)=>x.getElementById(a)"
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
  %foreign "browser:lambda:(x,a)=>x.append(a)"
  prim__append : ParentNode -> VarArg (Union2 Node String) -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.prepend(a)"
  prim__prepend : ParentNode -> VarArg (Union2 Node String) -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.querySelectorAll(a)"
  prim__querySelectorAll : ParentNode -> String -> PrimIO NodeList

  export
  %foreign "browser:lambda:(x,a)=>x.querySelector(a)"
  prim__querySelector : ParentNode -> String -> PrimIO (Nullable Element)

  export
  %foreign "browser:lambda:(x,a)=>x.replaceChildren(a)"
  prim__replaceChildren : ParentNode -> VarArg (Union2 Node String) -> PrimIO ()

namespace Slottable

  export
  %foreign "browser:lambda:x=>x.assignedSlot"
  prim__assignedSlot : Slottable -> PrimIO (Nullable HTMLSlotElement)

namespace XPathEvaluatorBase

  export
  %foreign "browser:lambda:(x,a,b)=>x.createExpression(a,b)"
  prim__createExpression :  XPathEvaluatorBase
                         -> String
                         -> UndefOr (Nullable XPathNSResolver)
                         -> PrimIO XPathExpression

  export
  %foreign "browser:lambda:(x,a)=>x.createNSResolver(a)"
  prim__createNSResolver : XPathEvaluatorBase -> Node -> PrimIO XPathNSResolver

  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.evaluate(a,b,c,d,e)"
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
  prim__once : AddEventListenerOptions -> PrimIO $ UndefOr Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.once = v}"
  prim__setOnce : AddEventListenerOptions -> UndefOr Boolean -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.passive"
  prim__passive : AddEventListenerOptions -> PrimIO $ UndefOr Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.passive = v}"
  prim__setPassive : AddEventListenerOptions -> UndefOr Boolean -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.signal"
  prim__signal : AddEventListenerOptions -> PrimIO $ UndefOr AbortSignal


  export
  %foreign "browser:lambda:(x,v)=>{x.signal = v}"
  prim__setSignal : AddEventListenerOptions -> UndefOr AbortSignal -> PrimIO ()

namespace CustomEventInit

  export
  %foreign "browser:lambda:(a)=> {detail: a}"
  prim__new : UndefOr AnyPtr -> PrimIO CustomEventInit

  export
  %foreign "browser:lambda:x=>x.detail"
  prim__detail : CustomEventInit -> PrimIO $ UndefOr AnyPtr


  export
  %foreign "browser:lambda:(x,v)=>{x.detail = v}"
  prim__setDetail : CustomEventInit -> UndefOr AnyPtr -> PrimIO ()

namespace ElementCreationOptions

  export
  %foreign "browser:lambda:(a)=> {is: a}"
  prim__new : UndefOr String -> PrimIO ElementCreationOptions

  export
  %foreign "browser:lambda:x=>x.is"
  prim__is : ElementCreationOptions -> PrimIO $ UndefOr String


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
  prim__bubbles : EventInit -> PrimIO $ UndefOr Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.bubbles = v}"
  prim__setBubbles : EventInit -> UndefOr Boolean -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.cancelable"
  prim__cancelable : EventInit -> PrimIO $ UndefOr Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.cancelable = v}"
  prim__setCancelable : EventInit -> UndefOr Boolean -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.composed"
  prim__composed : EventInit -> PrimIO $ UndefOr Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.composed = v}"
  prim__setComposed : EventInit -> UndefOr Boolean -> PrimIO ()

namespace EventListenerOptions

  export
  %foreign "browser:lambda:(a)=> {capture: a}"
  prim__new : UndefOr Boolean -> PrimIO EventListenerOptions

  export
  %foreign "browser:lambda:x=>x.capture"
  prim__capture : EventListenerOptions -> PrimIO $ UndefOr Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.capture = v}"
  prim__setCapture : EventListenerOptions -> UndefOr Boolean -> PrimIO ()

namespace GetRootNodeOptions

  export
  %foreign "browser:lambda:(a)=> {composed: a}"
  prim__new : UndefOr Boolean -> PrimIO GetRootNodeOptions

  export
  %foreign "browser:lambda:x=>x.composed"
  prim__composed : GetRootNodeOptions -> PrimIO $ UndefOr Boolean


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
                        -> PrimIO $ UndefOr (Array String)


  export
  %foreign "browser:lambda:(x,v)=>{x.attributeFilter = v}"
  prim__setAttributeFilter :  MutationObserverInit
                           -> UndefOr (Array String)
                           -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.attributeOldValue"
  prim__attributeOldValue : MutationObserverInit -> PrimIO $ UndefOr Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.attributeOldValue = v}"
  prim__setAttributeOldValue :  MutationObserverInit
                             -> UndefOr Boolean
                             -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.attributes"
  prim__attributes : MutationObserverInit -> PrimIO $ UndefOr Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.attributes = v}"
  prim__setAttributes : MutationObserverInit -> UndefOr Boolean -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.characterData"
  prim__characterData : MutationObserverInit -> PrimIO $ UndefOr Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.characterData = v}"
  prim__setCharacterData : MutationObserverInit -> UndefOr Boolean -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.characterDataOldValue"
  prim__characterDataOldValue : MutationObserverInit -> PrimIO $ UndefOr Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.characterDataOldValue = v}"
  prim__setCharacterDataOldValue :  MutationObserverInit
                                 -> UndefOr Boolean
                                 -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.childList"
  prim__childList : MutationObserverInit -> PrimIO $ UndefOr Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.childList = v}"
  prim__setChildList : MutationObserverInit -> UndefOr Boolean -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.subtree"
  prim__subtree : MutationObserverInit -> PrimIO $ UndefOr Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.subtree = v}"
  prim__setSubtree : MutationObserverInit -> UndefOr Boolean -> PrimIO ()

namespace ShadowRootInit

  export
  %foreign "browser:lambda:(a,b)=> {mode: a,delegatesFocus: b}"
  prim__new : String -> UndefOr Boolean -> PrimIO ShadowRootInit

  export
  %foreign "browser:lambda:x=>x.delegatesFocus"
  prim__delegatesFocus : ShadowRootInit -> PrimIO $ UndefOr Boolean


  export
  %foreign "browser:lambda:(x,v)=>{x.delegatesFocus = v}"
  prim__setDelegatesFocus : ShadowRootInit -> UndefOr Boolean -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : ShadowRootInit -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.mode = v}"
  prim__setMode : ShadowRootInit -> String -> PrimIO ()

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

--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------

namespace EventListener

  export
  %foreign "browser:lambda:x=>(a)=>x(a)()"
  prim__toEventListener : ( Event -> IO () ) -> PrimIO EventListener

namespace MutationCallback

  export
  %foreign "browser:lambda:x=>(a,b)=>x(a,b)()"
  prim__toMutationCallback :  (  Array MutationRecord
                              -> MutationObserver
                              -> IO ()
                              )
                           -> PrimIO MutationCallback

namespace NodeFilter

  export
  %foreign "browser:lambda:x=>(a)=>x(a)()"
  prim__toNodeFilter : ( Node -> IO UInt16 ) -> PrimIO NodeFilter

namespace XPathNSResolver

  export
  %foreign "browser:lambda:x=>(a)=>x(a)()"
  prim__toXPathNSResolver :  ( Nullable String -> IO (Nullable String) )
                          -> PrimIO XPathNSResolver
