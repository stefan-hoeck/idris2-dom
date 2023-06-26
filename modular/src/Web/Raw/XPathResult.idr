module Web.Raw.XPathResult

import JS
import Web.Types.Node
import Web.Types.XPathResult


%default total


export
ANY_TYPE : Bits16
ANY_TYPE = 0


export
ANY_UNORDERED_NODE_TYPE : Bits16
ANY_UNORDERED_NODE_TYPE = 8


export
BOOLEAN_TYPE : Bits16
BOOLEAN_TYPE = 3


export
FIRST_ORDERED_NODE_TYPE : Bits16
FIRST_ORDERED_NODE_TYPE = 9


export
NUMBER_TYPE : Bits16
NUMBER_TYPE = 1


export
ORDERED_NODE_ITERATOR_TYPE : Bits16
ORDERED_NODE_ITERATOR_TYPE = 5


export
ORDERED_NODE_SNAPSHOT_TYPE : Bits16
ORDERED_NODE_SNAPSHOT_TYPE = 7


export
STRING_TYPE : Bits16
STRING_TYPE = 2


export
UNORDERED_NODE_ITERATOR_TYPE : Bits16
UNORDERED_NODE_ITERATOR_TYPE = 4


export
UNORDERED_NODE_SNAPSHOT_TYPE : Bits16
UNORDERED_NODE_SNAPSHOT_TYPE = 6


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
prim__resultType : XPathResult -> PrimIO Bits16


export
%foreign "browser:lambda:x=>x.singleNodeValue"
prim__singleNodeValue : XPathResult -> PrimIO (Nullable Node)


export
%foreign "browser:lambda:x=>x.snapshotLength"
prim__snapshotLength : XPathResult -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.stringValue"
prim__stringValue : XPathResult -> PrimIO String


export
%foreign "browser:lambda:x=>x.iterateNext()"
prim__iterateNext : XPathResult -> PrimIO (Nullable Node)


export
%foreign "browser:lambda:(x,a)=>x.snapshotItem(a)"
prim__snapshotItem : XPathResult -> Bits32 -> PrimIO (Nullable Node)


export
booleanValue : (obj : XPathResult) -> JSIO Bool
booleanValue a = tryJS "XPathResult.booleanValue" $
  XPathResult.prim__booleanValue a


export
invalidIteratorState : (obj : XPathResult) -> JSIO Bool
invalidIteratorState a = tryJS "XPathResult.invalidIteratorState" $
  XPathResult.prim__invalidIteratorState a


export
numberValue : (obj : XPathResult) -> JSIO Double
numberValue a = primJS $ XPathResult.prim__numberValue a


export
resultType : (obj : XPathResult) -> JSIO Bits16
resultType a = primJS $ XPathResult.prim__resultType a


export
singleNodeValue : (obj : XPathResult) -> JSIO (Maybe Node)
singleNodeValue a = tryJS "XPathResult.singleNodeValue" $
  XPathResult.prim__singleNodeValue a


export
snapshotLength : (obj : XPathResult) -> JSIO Bits32
snapshotLength a = primJS $ XPathResult.prim__snapshotLength a


export
stringValue : (obj : XPathResult) -> JSIO String
stringValue a = primJS $ XPathResult.prim__stringValue a


export
iterateNext : (obj : XPathResult) -> JSIO (Maybe Node)
iterateNext a = tryJS "XPathResult.iterateNext" $
  XPathResult.prim__iterateNext a


export
snapshotItem : (obj : XPathResult) -> (index : Bits32) -> JSIO (Maybe Node)
snapshotItem a b = tryJS "XPathResult.snapshotItem" $
  XPathResult.prim__snapshotItem a b

