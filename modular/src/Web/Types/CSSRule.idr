module Web.Types.CSSRule

import JS


%default total

export data CSSRule : Type where [external]

export
ToFFI CSSRule CSSRule where toFFI = id

export
FromFFI CSSRule CSSRule where fromFFI = Just

export
SafeCast CSSRule where
  safeCast = unsafeCastOnPrototypeName "CSSRule"


export %inline
Cast CSSRule Object where cast = believe_me

