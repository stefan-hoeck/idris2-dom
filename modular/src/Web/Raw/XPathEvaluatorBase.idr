module Web.Raw.XPathEvaluatorBase

import JS
import Web.Types.Node
import Web.Types.XPathEvaluatorBase
import Web.Types.XPathExpression
import Web.Types.XPathNSResolver
import Web.Types.XPathResult


%default total


export
%foreign "browser:lambda:(x,a,b)=>x.createExpression(a,b)"
prim__createExpression :
     XPathEvaluatorBase
  -> String
  -> UndefOr (Nullable XPathNSResolver)
  -> PrimIO XPathExpression


export
%foreign "browser:lambda:(x,a)=>x.createNSResolver(a)"
prim__createNSResolver : XPathEvaluatorBase -> Node -> PrimIO XPathNSResolver


export
%foreign "browser:lambda:(x,a,b,c,d,e)=>x.evaluate(a,b,c,d,e)"
prim__evaluate :
     XPathEvaluatorBase
  -> String
  -> Node
  -> UndefOr (Nullable XPathNSResolver)
  -> UndefOr Bits16
  -> UndefOr (Nullable XPathResult)
  -> PrimIO XPathResult


export
createExpression' :
     {auto _ : Cast t1 XPathEvaluatorBase}
  -> (obj : t1)
  -> (expression : String)
  -> (resolver : Optional (Maybe XPathNSResolver))
  -> JSIO XPathExpression
createExpression' a b c = primJS $
  XPathEvaluatorBase.prim__createExpression (cast a) b (toFFI c)

export
createExpression :
     {auto _ : Cast t1 XPathEvaluatorBase}
  -> (obj : t1)
  -> (expression : String)
  -> JSIO XPathExpression
createExpression a b = primJS $
  XPathEvaluatorBase.prim__createExpression (cast a) b undef


export
createNSResolver :
     {auto _ : Cast t1 XPathEvaluatorBase}
  -> {auto _ : Cast t2 Node}
  -> (obj : t1)
  -> (nodeResolver : t2)
  -> JSIO XPathNSResolver
createNSResolver a b = primJS $
  XPathEvaluatorBase.prim__createNSResolver (cast a) (cast b)


export
evaluate' :
     {auto _ : Cast t1 XPathEvaluatorBase}
  -> {auto _ : Cast t3 Node}
  -> (obj : t1)
  -> (expression : String)
  -> (contextNode : t3)
  -> (resolver : Optional (Maybe XPathNSResolver))
  -> (type : Optional Bits16)
  -> (result : Optional (Maybe XPathResult))
  -> JSIO XPathResult
evaluate' a b c d e f = primJS $
  XPathEvaluatorBase.prim__evaluate
    (cast a)
    b
    (cast c)
    (toFFI d)
    (toFFI e)
    (toFFI f)

export
evaluate :
     {auto _ : Cast t1 XPathEvaluatorBase}
  -> {auto _ : Cast t3 Node}
  -> (obj : t1)
  -> (expression : String)
  -> (contextNode : t3)
  -> JSIO XPathResult
evaluate a b c = primJS $
  XPathEvaluatorBase.prim__evaluate (cast a) b (cast c) undef undef undef
