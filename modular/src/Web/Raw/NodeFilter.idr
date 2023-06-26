module Web.Raw.NodeFilter

import JS
import Web.Types.Node
import Web.Types.NodeFilter


%default total


export
%foreign "browser:lambda:x=>(a)=>x(a)()"
prim__toNodeFilter : (Node -> IO Bits16) -> PrimIO NodeFilter


export
toNodeFilter : (Node -> IO Bits16) -> JSIO NodeFilter
toNodeFilter cb = primJS $ prim__toNodeFilter cb


export
FILTER_ACCEPT : Bits16
FILTER_ACCEPT = 1


export
FILTER_REJECT : Bits16
FILTER_REJECT = 2


export
FILTER_SKIP : Bits16
FILTER_SKIP = 3


export
SHOW_ALL : Bits32
SHOW_ALL = 0xffffffff


export
SHOW_ATTRIBUTE : Bits32
SHOW_ATTRIBUTE = 0x2


export
SHOW_CDATA_SECTION : Bits32
SHOW_CDATA_SECTION = 0x8


export
SHOW_COMMENT : Bits32
SHOW_COMMENT = 0x80


export
SHOW_DOCUMENT : Bits32
SHOW_DOCUMENT = 0x100


export
SHOW_DOCUMENT_FRAGMENT : Bits32
SHOW_DOCUMENT_FRAGMENT = 0x400


export
SHOW_DOCUMENT_TYPE : Bits32
SHOW_DOCUMENT_TYPE = 0x200


export
SHOW_ELEMENT : Bits32
SHOW_ELEMENT = 0x1


export
SHOW_ENTITY : Bits32
SHOW_ENTITY = 0x20


export
SHOW_ENTITY_REFERENCE : Bits32
SHOW_ENTITY_REFERENCE = 0x10


export
SHOW_NOTATION : Bits32
SHOW_NOTATION = 0x800


export
SHOW_PROCESSING_INSTRUCTION : Bits32
SHOW_PROCESSING_INSTRUCTION = 0x40


export
SHOW_TEXT : Bits32
SHOW_TEXT = 0x4

