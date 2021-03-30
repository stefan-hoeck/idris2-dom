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

namespace AbortSignal
  
  public export
  JSType AbortSignal where
    parents =  [ EventTarget , Object ]

    mixins =  []

namespace AbstractRange
  
  public export
  JSType AbstractRange where
    parents =  [ Object ]

    mixins =  []

namespace Attr
  
  public export
  JSType Attr where
    parents =  [ Node , EventTarget , Object ]

    mixins =  []

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

namespace Comment
  
  public export
  JSType Comment where
    parents =  [ CharacterData , Node , EventTarget , Object ]

    mixins =  [ ChildNode , NonDocumentTypeChildNode ]

namespace CustomEvent
  
  public export
  JSType CustomEvent where
    parents =  [ Event , Object ]

    mixins =  []

namespace DOMImplementation
  
  public export
  JSType DOMImplementation where
    parents =  [ Object ]

    mixins =  []

namespace DOMTokenList
  
  public export
  JSType DOMTokenList where
    parents =  [ Object ]

    mixins =  []

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

namespace DocumentFragment
  
  public export
  JSType DocumentFragment where
    parents =  [ Node , EventTarget , Object ]

    mixins =  [ NonElementParentNode , ParentNode ]

namespace DocumentType
  
  public export
  JSType DocumentType where
    parents =  [ Node , EventTarget , Object ]

    mixins =  [ ChildNode ]

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

namespace EventTarget
  
  public export
  JSType EventTarget where
    parents =  [ Object ]

    mixins =  []

namespace HTMLCollection
  
  public export
  JSType HTMLCollection where
    parents =  [ Object ]

    mixins =  []

namespace MutationObserver
  
  public export
  JSType MutationObserver where
    parents =  [ Object ]

    mixins =  []

namespace MutationRecord
  
  public export
  JSType MutationRecord where
    parents =  [ Object ]

    mixins =  []

namespace NamedNodeMap
  
  public export
  JSType NamedNodeMap where
    parents =  [ Object ]

    mixins =  []

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

namespace NodeIterator
  
  public export
  JSType NodeIterator where
    parents =  [ Object ]

    mixins =  []

namespace NodeList
  
  public export
  JSType NodeList where
    parents =  [ Object ]

    mixins =  []

namespace Performance
  
  public export
  JSType Performance where
    parents =  [ EventTarget , Object ]

    mixins =  []

namespace ProcessingInstruction
  
  public export
  JSType ProcessingInstruction where
    parents =  [ CharacterData , Node , EventTarget , Object ]

    mixins =  [ ChildNode , LinkStyle , NonDocumentTypeChildNode ]

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

namespace ShadowRoot
  
  public export
  JSType ShadowRoot where
    parents =  [ DocumentFragment , Node , EventTarget , Object ]

    mixins =  [ DocumentOrShadowRoot , NonElementParentNode , ParentNode ]

namespace StaticRange
  
  public export
  JSType StaticRange where
    parents =  [ AbstractRange , Object ]

    mixins =  []

namespace Text
  
  public export
  JSType Text where
    parents =  [ CharacterData , Node , EventTarget , Object ]

    mixins =  [ ChildNode , NonDocumentTypeChildNode , Slottable ]

namespace TreeWalker
  
  public export
  JSType TreeWalker where
    parents =  [ Object ]

    mixins =  []

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

namespace XPathExpression
  
  public export
  JSType XPathExpression where
    parents =  [ Object ]

    mixins =  []

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

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------








--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace AddEventListenerOptions
  
  public export
  JSType AddEventListenerOptions where
    parents =  [ EventListenerOptions , Object ]

    mixins =  []

namespace CustomEventInit
  
  public export
  JSType CustomEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []

namespace ElementCreationOptions
  
  public export
  JSType ElementCreationOptions where
    parents =  [ Object ]

    mixins =  []

namespace EventInit
  
  public export
  JSType EventInit where
    parents =  [ Object ]

    mixins =  []

namespace EventListenerOptions
  
  public export
  JSType EventListenerOptions where
    parents =  [ Object ]

    mixins =  []

namespace GetRootNodeOptions
  
  public export
  JSType GetRootNodeOptions where
    parents =  [ Object ]

    mixins =  []

namespace MutationObserverInit
  
  public export
  JSType MutationObserverInit where
    parents =  [ Object ]

    mixins =  []

namespace ShadowRootInit
  
  public export
  JSType ShadowRootInit where
    parents =  [ Object ]

    mixins =  []

namespace StaticRangeInit
  
  public export
  JSType StaticRangeInit where
    parents =  [ Object ]

    mixins =  []

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
