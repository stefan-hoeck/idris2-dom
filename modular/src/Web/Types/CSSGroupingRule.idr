module Web.Types.CSSGroupingRule

import JS
import Web.Types.CSSRule


%default total

export data CSSGroupingRule : Type where [external]

export
ToFFI CSSGroupingRule CSSGroupingRule where toFFI = id

export
FromFFI CSSGroupingRule CSSGroupingRule where fromFFI = Just

export
SafeCast CSSGroupingRule where
  safeCast = unsafeCastOnPrototypeName "CSSGroupingRule"


export %inline
Cast CSSGroupingRule CSSRule where cast = believe_me


export %inline
Cast CSSGroupingRule Object where cast = believe_me

