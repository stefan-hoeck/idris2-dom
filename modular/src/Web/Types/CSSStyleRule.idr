module Web.Types.CSSStyleRule

import JS
import Web.Types.CSSRule


%default total

export data CSSStyleRule : Type where [external]

export
ToFFI CSSStyleRule CSSStyleRule where toFFI = id

export
FromFFI CSSStyleRule CSSStyleRule where fromFFI = Just

export
SafeCast CSSStyleRule where
  safeCast = unsafeCastOnPrototypeName "CSSStyleRule"


export %inline
Cast CSSStyleRule CSSRule where cast = believe_me


export %inline
Cast CSSStyleRule Object where cast = believe_me
