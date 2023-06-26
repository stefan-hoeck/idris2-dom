module Web.Types.XPathResult

import JS


%default total

export data XPathResult : Type where [external]

export
ToFFI XPathResult XPathResult where toFFI = id

export
FromFFI XPathResult XPathResult where fromFFI = Just

export
SafeCast XPathResult where
  safeCast = unsafeCastOnPrototypeName "XPathResult"


export %inline
Cast XPathResult Object where cast = believe_me
