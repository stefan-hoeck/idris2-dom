module Web.Raw.XPathEvaluator

import JS
import Web.Types.XPathEvaluator
import Web.Types.XPathEvaluatorBase


%default total


export
%foreign "browser:lambda:()=> new XPathEvaluator()"
prim__new : PrimIO XPathEvaluator


export
new : JSIO XPathEvaluator
new = primJS $ XPathEvaluator.prim__new
