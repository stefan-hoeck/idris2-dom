module Web.Raw.XPathExpression

import JS
import Web.Types.Node
import Web.Types.XPathExpression
import Web.Types.XPathResult


%default total


export
%foreign "browser:lambda:(x,a,b,c)=>x.evaluate(a,b,c)"
prim__evaluate :
     XPathExpression
  -> Node
  -> UndefOr Bits16
  -> UndefOr (Nullable XPathResult)
  -> PrimIO XPathResult


export
evaluate' :
     {auto _ : Cast t2 Node}
  -> (obj : XPathExpression)
  -> (contextNode : t2)
  -> (type : Optional Bits16)
  -> (result : Optional (Maybe XPathResult))
  -> JSIO XPathResult
evaluate' a b c d = primJS $
  XPathExpression.prim__evaluate a (cast b) (toFFI c) (toFFI d)

export
evaluate :
     {auto _ : Cast t2 Node}
  -> (obj : XPathExpression)
  -> (contextNode : t2)
  -> JSIO XPathResult
evaluate a b = primJS $ XPathExpression.prim__evaluate a (cast b) undef undef
