module Web.Types.CSSPageRule

import JS
import Web.Types.CSSGroupingRule
import Web.Types.CSSRule


%default total

export data CSSPageRule : Type where [external]

export
ToFFI CSSPageRule CSSPageRule where toFFI = id

export
FromFFI CSSPageRule CSSPageRule where fromFFI = Just

export
SafeCast CSSPageRule where
  safeCast = unsafeCastOnPrototypeName "CSSPageRule"


export %inline
Cast CSSPageRule CSSGroupingRule where cast = believe_me


export %inline
Cast CSSPageRule CSSRule where cast = believe_me


export %inline
Cast CSSPageRule Object where cast = believe_me

