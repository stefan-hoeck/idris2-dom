module Web.Types.XPathExpression

import JS


%default total

export data XPathExpression : Type where [external]

export
ToFFI XPathExpression XPathExpression where toFFI = id

export
FromFFI XPathExpression XPathExpression where fromFFI = Just

export
SafeCast XPathExpression where
  safeCast = unsafeCastOnPrototypeName "XPathExpression"


export %inline
Cast XPathExpression Object where cast = believe_me

