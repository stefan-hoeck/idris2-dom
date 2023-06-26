module Web.Types.CSSNamespaceRule

import JS
import Web.Types.CSSRule


%default total

export data CSSNamespaceRule : Type where [external]

export
ToFFI CSSNamespaceRule CSSNamespaceRule where toFFI = id

export
FromFFI CSSNamespaceRule CSSNamespaceRule where fromFFI = Just

export
SafeCast CSSNamespaceRule where
  safeCast = unsafeCastOnPrototypeName "CSSNamespaceRule"


export %inline
Cast CSSNamespaceRule CSSRule where cast = believe_me


export %inline
Cast CSSNamespaceRule Object where cast = believe_me
