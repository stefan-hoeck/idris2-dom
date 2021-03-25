module Web.Dom

import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace AbortController
  
  %foreign "browser:lambda:x=>x.signal"
  prim__signal : AnyPtr -> PrimIO AnyPtr

namespace AbortSignal
  
  %foreign "browser:lambda:x=>x.aborted"
  prim__aborted : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onabort"
  prim__onabort : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onabort = v}"
  prim__setOnabort : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace AbstractRange
  
  %foreign "browser:lambda:x=>x.collapsed"
  prim__collapsed : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.endContainer"
  prim__endContainer : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.endOffset"
  prim__endOffset : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.startContainer"
  prim__startContainer : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.startOffset"
  prim__startOffset : AnyPtr -> PrimIO AnyPtr

namespace Attr
  
  %foreign "browser:lambda:x=>x.localName"
  prim__localName : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.namespaceURI"
  prim__namespaceURI : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ownerElement"
  prim__ownerElement : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.prefix"
  prim__prefix : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.specified"
  prim__specified : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace CharacterData
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.data"
  prim__data : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.data = v}"
  prim__setData : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace CustomEvent
  
  %foreign "browser:lambda:x=>x.detail"
  prim__detail : AnyPtr -> PrimIO AnyPtr

namespace DOMTokenList
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

namespace Document
  
  %foreign "browser:lambda:x=>x.URL"
  prim__URL : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.all"
  prim__all : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.anchors"
  prim__anchors : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.applets"
  prim__applets : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.characterSet"
  prim__characterSet : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.charset"
  prim__charset : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.compatMode"
  prim__compatMode : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.contentType"
  prim__contentType : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.currentScript"
  prim__currentScript : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.defaultView"
  prim__defaultView : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.doctype"
  prim__doctype : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.documentElement"
  prim__documentElement : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.documentURI"
  prim__documentURI : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.embeds"
  prim__embeds : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.forms"
  prim__forms : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.head"
  prim__head : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.hidden"
  prim__hidden : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.images"
  prim__images : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.implementation"
  prim__implementation : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.inputEncoding"
  prim__inputEncoding : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.lastModified"
  prim__lastModified : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.links"
  prim__links : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.location"
  prim__location : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.plugins"
  prim__plugins : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.referrer"
  prim__referrer : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.rootElement"
  prim__rootElement : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.scripts"
  prim__scripts : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.timeline"
  prim__timeline : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.visibilityState"
  prim__visibilityState : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.alinkColor"
  prim__alinkColor : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.alinkColor = v}"
  prim__setAlinkColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.bgColor"
  prim__bgColor : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.bgColor = v}"
  prim__setBgColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.body"
  prim__body : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.body = v}"
  prim__setBody : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.cookie"
  prim__cookie : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.cookie = v}"
  prim__setCookie : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.designMode"
  prim__designMode : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.designMode = v}"
  prim__setDesignMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.dir"
  prim__dir : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.dir = v}"
  prim__setDir : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.domain"
  prim__domain : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.domain = v}"
  prim__setDomain : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.fgColor"
  prim__fgColor : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.fgColor = v}"
  prim__setFgColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.linkColor"
  prim__linkColor : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.linkColor = v}"
  prim__setLinkColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onreadystatechange"
  prim__onreadystatechange : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onreadystatechange = v}"
  prim__setOnreadystatechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onvisibilitychange"
  prim__onvisibilitychange : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onvisibilitychange = v}"
  prim__setOnvisibilitychange : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.title"
  prim__title : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.title = v}"
  prim__setTitle : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.vlinkColor"
  prim__vlinkColor : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.vlinkColor = v}"
  prim__setVlinkColor : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace DocumentType
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.publicId"
  prim__publicId : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.systemId"
  prim__systemId : AnyPtr -> PrimIO AnyPtr

namespace Element
  
  %foreign "browser:lambda:x=>x.attributes"
  prim__attributes : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.classList"
  prim__classList : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.localName"
  prim__localName : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.namespaceURI"
  prim__namespaceURI : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.prefix"
  prim__prefix : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.shadowRoot"
  prim__shadowRoot : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.tagName"
  prim__tagName : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.className"
  prim__className : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.className = v}"
  prim__setClassName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.id = v}"
  prim__setId : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.slot"
  prim__slot : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.slot = v}"
  prim__setSlot : AnyPtr -> AnyPtr -> PrimIO AnyPtr

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
  
  %foreign "browser:lambda:x=>x.cancelable"
  prim__cancelable : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.composed"
  prim__composed : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.currentTarget"
  prim__currentTarget : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.defaultPrevented"
  prim__defaultPrevented : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.eventPhase"
  prim__eventPhase : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.isTrusted"
  prim__isTrusted : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.srcElement"
  prim__srcElement : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.timeStamp"
  prim__timeStamp : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.cancelBubble"
  prim__cancelBubble : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.cancelBubble = v}"
  prim__setCancelBubble : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.returnValue"
  prim__returnValue : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.returnValue = v}"
  prim__setReturnValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace HTMLCollection
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

namespace MutationRecord
  
  %foreign "browser:lambda:x=>x.addedNodes"
  prim__addedNodes : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.attributeName"
  prim__attributeName : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.attributeNamespace"
  prim__attributeNamespace : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.nextSibling"
  prim__nextSibling : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.oldValue"
  prim__oldValue : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.previousSibling"
  prim__previousSibling : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.removedNodes"
  prim__removedNodes : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

namespace NamedNodeMap
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

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
  
  %foreign "browser:lambda:x=>x.childNodes"
  prim__childNodes : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.firstChild"
  prim__firstChild : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.isConnected"
  prim__isConnected : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.lastChild"
  prim__lastChild : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.nextSibling"
  prim__nextSibling : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.nodeName"
  prim__nodeName : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.nodeType"
  prim__nodeType : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ownerDocument"
  prim__ownerDocument : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.parentElement"
  prim__parentElement : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.parentNode"
  prim__parentNode : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.previousSibling"
  prim__previousSibling : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.nodeValue"
  prim__nodeValue : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.nodeValue = v}"
  prim__setNodeValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.textContent"
  prim__textContent : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.textContent = v}"
  prim__setTextContent : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace NodeIterator
  
  %foreign "browser:lambda:x=>x.filter"
  prim__filter : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.pointerBeforeReferenceNode"
  prim__pointerBeforeReferenceNode : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.referenceNode"
  prim__referenceNode : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.root"
  prim__root : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.whatToShow"
  prim__whatToShow : AnyPtr -> PrimIO AnyPtr

namespace NodeList
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

namespace Performance
  
  %foreign "browser:lambda:x=>x.timeOrigin"
  prim__timeOrigin : AnyPtr -> PrimIO AnyPtr

namespace ProcessingInstruction
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr

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

namespace ShadowRoot
  
  %foreign "browser:lambda:x=>x.host"
  prim__host : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onslotchange"
  prim__onslotchange : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onslotchange = v}"
  prim__setOnslotchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace Text
  
  %foreign "browser:lambda:x=>x.wholeText"
  prim__wholeText : AnyPtr -> PrimIO AnyPtr

namespace TreeWalker
  
  %foreign "browser:lambda:x=>x.filter"
  prim__filter : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.root"
  prim__root : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.whatToShow"
  prim__whatToShow : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.currentNode"
  prim__currentNode : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.currentNode = v}"
  prim__setCurrentNode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

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
  
  %foreign "browser:lambda:x=>x.invalidIteratorState"
  prim__invalidIteratorState : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.numberValue"
  prim__numberValue : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.resultType"
  prim__resultType : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.singleNodeValue"
  prim__singleNodeValue : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.snapshotLength"
  prim__snapshotLength : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.stringValue"
  prim__stringValue : AnyPtr -> PrimIO AnyPtr

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace DocumentOrShadowRoot
  
  %foreign "browser:lambda:x=>x.styleSheets"
  prim__styleSheets : AnyPtr -> PrimIO AnyPtr

namespace NonDocumentTypeChildNode
  
  %foreign "browser:lambda:x=>x.nextElementSibling"
  prim__nextElementSibling : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.previousElementSibling"
  prim__previousElementSibling : AnyPtr -> PrimIO AnyPtr

namespace ParentNode
  
  %foreign "browser:lambda:x=>x.childElementCount"
  prim__childElementCount : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.children"
  prim__children : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.firstElementChild"
  prim__firstElementChild : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.lastElementChild"
  prim__lastElementChild : AnyPtr -> PrimIO AnyPtr

namespace Slottable
  
  %foreign "browser:lambda:x=>x.assignedSlot"
  prim__assignedSlot : AnyPtr -> PrimIO AnyPtr

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace AddEventListenerOptions
  
  %foreign "browser:lambda:x=>x.once"
  prim__once : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.once = v}"
  prim__setOnce : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.passive"
  prim__passive : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.passive = v}"
  prim__setPassive : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.signal"
  prim__signal : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.signal = v}"
  prim__setSignal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace CustomEventInit
  
  %foreign "browser:lambda:x=>x.detail"
  prim__detail : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.detail = v}"
  prim__setDetail : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace ElementCreationOptions
  
  %foreign "browser:lambda:x=>x.is"
  prim__is : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.is = v}"
  prim__setIs : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace EventInit
  
  %foreign "browser:lambda:x=>x.bubbles"
  prim__bubbles : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.bubbles = v}"
  prim__setBubbles : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.cancelable"
  prim__cancelable : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.cancelable = v}"
  prim__setCancelable : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.composed"
  prim__composed : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.composed = v}"
  prim__setComposed : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace EventListenerOptions
  
  %foreign "browser:lambda:x=>x.capture"
  prim__capture : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.capture = v}"
  prim__setCapture : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace GetRootNodeOptions
  
  %foreign "browser:lambda:x=>x.composed"
  prim__composed : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.composed = v}"
  prim__setComposed : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace MutationObserverInit
  
  %foreign "browser:lambda:x=>x.attributeFilter"
  prim__attributeFilter : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.attributeFilter = v}"
  prim__setAttributeFilter : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.attributeOldValue"
  prim__attributeOldValue : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.attributeOldValue = v}"
  prim__setAttributeOldValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.attributes"
  prim__attributes : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.attributes = v}"
  prim__setAttributes : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.characterData"
  prim__characterData : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.characterData = v}"
  prim__setCharacterData : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.characterDataOldValue"
  prim__characterDataOldValue : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.characterDataOldValue = v}"
  prim__setCharacterDataOldValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.childList"
  prim__childList : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.childList = v}"
  prim__setChildList : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.subtree"
  prim__subtree : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.subtree = v}"
  prim__setSubtree : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace ShadowRootInit
  
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.mode = v}"
  prim__setMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.delegatesFocus"
  prim__delegatesFocus : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.delegatesFocus = v}"
  prim__setDelegatesFocus : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace StaticRangeInit
  
  %foreign "browser:lambda:x=>x.endContainer"
  prim__endContainer : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.endContainer = v}"
  prim__setEndContainer : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.endOffset"
  prim__endOffset : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.endOffset = v}"
  prim__setEndOffset : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.startContainer"
  prim__startContainer : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.startContainer = v}"
  prim__setStartContainer : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.startOffset"
  prim__startOffset : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.startOffset = v}"
  prim__setStartOffset : AnyPtr -> AnyPtr -> PrimIO AnyPtr

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