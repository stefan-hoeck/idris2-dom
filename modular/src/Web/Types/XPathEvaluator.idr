module Web.Types.XPathEvaluator

import JS
import Web.Types.XPathEvaluatorBase


%default total

export data XPathEvaluator : Type where [external]

export
ToFFI XPathEvaluator XPathEvaluator where toFFI = id

export
FromFFI XPathEvaluator XPathEvaluator where fromFFI = Just

export
SafeCast XPathEvaluator where
  safeCast = unsafeCastOnPrototypeName "XPathEvaluator"


export %inline
Cast XPathEvaluator Object where cast = believe_me


export %inline
Cast XPathEvaluator XPathEvaluatorBase where cast = believe_me

