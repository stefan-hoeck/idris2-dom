module Web.Types.CSSMarginRule

import JS
import Web.Types.CSSRule


%default total

export data CSSMarginRule : Type where [external]

export
ToFFI CSSMarginRule CSSMarginRule where toFFI = id

export
FromFFI CSSMarginRule CSSMarginRule where fromFFI = Just

export
SafeCast CSSMarginRule where
  safeCast = unsafeCastOnPrototypeName "CSSMarginRule"


export %inline
Cast CSSMarginRule CSSRule where cast = believe_me


export %inline
Cast CSSMarginRule Object where cast = believe_me
