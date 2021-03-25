module Web.Dom

import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

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