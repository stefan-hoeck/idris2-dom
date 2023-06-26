module Web.Types.XPathEvaluatorBase

import JS


%default total

export data XPathEvaluatorBase : Type where [external]

export
ToFFI XPathEvaluatorBase XPathEvaluatorBase where toFFI = id

export
FromFFI XPathEvaluatorBase XPathEvaluatorBase where fromFFI = Just

