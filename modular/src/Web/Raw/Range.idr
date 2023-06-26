module Web.Raw.Range

import JS
import Web.Types.AbstractRange
import Web.Types.DOMRect
import Web.Types.DOMRectList
import Web.Types.DocumentFragment
import Web.Types.Node
import Web.Types.Range


%default total


export
END_TO_END : Bits16
END_TO_END = 2


export
END_TO_START : Bits16
END_TO_START = 3


export
START_TO_END : Bits16
START_TO_END = 1


export
START_TO_START : Bits16
START_TO_START = 0


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
prim__compareBoundaryPoints : Range -> Bits16 -> Range -> PrimIO Int16


export
%foreign "browser:lambda:(x,a,b)=>x.comparePoint(a,b)"
prim__comparePoint : Range -> Node -> Bits32 -> PrimIO Int16


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
%foreign "browser:lambda:x=>x.getBoundingClientRect()"
prim__getBoundingClientRect : Range -> PrimIO DOMRect


export
%foreign "browser:lambda:x=>x.getClientRects()"
prim__getClientRects : Range -> PrimIO DOMRectList


export
%foreign "browser:lambda:(x,a)=>x.insertNode(a)"
prim__insertNode : Range -> Node -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.intersectsNode(a)"
prim__intersectsNode : Range -> Node -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a,b)=>x.isPointInRange(a,b)"
prim__isPointInRange : Range -> Node -> Bits32 -> PrimIO Boolean


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
prim__setEnd : Range -> Node -> Bits32 -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.setStartAfter(a)"
prim__setStartAfter : Range -> Node -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.setStartBefore(a)"
prim__setStartBefore : Range -> Node -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.setStart(a,b)"
prim__setStart : Range -> Node -> Bits32 -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.surroundContents(a)"
prim__surroundContents : Range -> Node -> PrimIO ()


export
%foreign "browser:lambda:x=>x.toString()"
prim__toString : Range -> PrimIO String


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
collapse' : (obj : Range) -> (toStart : Optional Bool) -> JSIO ()
collapse' a b = primJS $ Range.prim__collapse a (toFFI b)

export
collapse : (obj : Range) -> JSIO ()
collapse a = primJS $ Range.prim__collapse a undef


export
compareBoundaryPoints :
     (obj : Range)
  -> (how : Bits16)
  -> (sourceRange : Range)
  -> JSIO Int16
compareBoundaryPoints a b c = primJS $ Range.prim__compareBoundaryPoints a b c


export
comparePoint :
     {auto _ : Cast t2 Node}
  -> (obj : Range)
  -> (node : t2)
  -> (offset : Bits32)
  -> JSIO Int16
comparePoint a b c = primJS $ Range.prim__comparePoint a (cast b) c


export
createContextualFragment :
     (obj : Range)
  -> (fragment : String)
  -> JSIO DocumentFragment
createContextualFragment a b = primJS $ Range.prim__createContextualFragment a b


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
getBoundingClientRect : (obj : Range) -> JSIO DOMRect
getBoundingClientRect a = primJS $ Range.prim__getBoundingClientRect a


export
getClientRects : (obj : Range) -> JSIO DOMRectList
getClientRects a = primJS $ Range.prim__getClientRects a


export
insertNode : {auto _ : Cast t2 Node} -> (obj : Range) -> (node : t2) -> JSIO ()
insertNode a b = primJS $ Range.prim__insertNode a (cast b)


export
intersectsNode :
     {auto _ : Cast t2 Node}
  -> (obj : Range)
  -> (node : t2)
  -> JSIO Bool
intersectsNode a b = tryJS "Range.intersectsNode" $
  Range.prim__intersectsNode a (cast b)


export
isPointInRange :
     {auto _ : Cast t2 Node}
  -> (obj : Range)
  -> (node : t2)
  -> (offset : Bits32)
  -> JSIO Bool
isPointInRange a b c = tryJS "Range.isPointInRange" $
  Range.prim__isPointInRange a (cast b) c


export
selectNodeContents :
     {auto _ : Cast t2 Node}
  -> (obj : Range)
  -> (node : t2)
  -> JSIO ()
selectNodeContents a b = primJS $ Range.prim__selectNodeContents a (cast b)


export
selectNode : {auto _ : Cast t2 Node} -> (obj : Range) -> (node : t2) -> JSIO ()
selectNode a b = primJS $ Range.prim__selectNode a (cast b)


export
setEndAfter : {auto _ : Cast t2 Node} -> (obj : Range) -> (node : t2) -> JSIO ()
setEndAfter a b = primJS $ Range.prim__setEndAfter a (cast b)


export
setEndBefore :
     {auto _ : Cast t2 Node}
  -> (obj : Range)
  -> (node : t2)
  -> JSIO ()
setEndBefore a b = primJS $ Range.prim__setEndBefore a (cast b)


export
setEnd :
     {auto _ : Cast t2 Node}
  -> (obj : Range)
  -> (node : t2)
  -> (offset : Bits32)
  -> JSIO ()
setEnd a b c = primJS $ Range.prim__setEnd a (cast b) c


export
setStartAfter :
     {auto _ : Cast t2 Node}
  -> (obj : Range)
  -> (node : t2)
  -> JSIO ()
setStartAfter a b = primJS $ Range.prim__setStartAfter a (cast b)


export
setStartBefore :
     {auto _ : Cast t2 Node}
  -> (obj : Range)
  -> (node : t2)
  -> JSIO ()
setStartBefore a b = primJS $ Range.prim__setStartBefore a (cast b)


export
setStart :
     {auto _ : Cast t2 Node}
  -> (obj : Range)
  -> (node : t2)
  -> (offset : Bits32)
  -> JSIO ()
setStart a b c = primJS $ Range.prim__setStart a (cast b) c


export
surroundContents :
     {auto _ : Cast t2 Node}
  -> (obj : Range)
  -> (newParent : t2)
  -> JSIO ()
surroundContents a b = primJS $ Range.prim__surroundContents a (cast b)


export
toString : (obj : Range) -> JSIO String
toString a = primJS $ Range.prim__toString a
