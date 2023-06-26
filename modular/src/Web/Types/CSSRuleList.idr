module Web.Types.CSSRuleList

import JS


%default total

export data CSSRuleList : Type where [external]

export
ToFFI CSSRuleList CSSRuleList where toFFI = id

export
FromFFI CSSRuleList CSSRuleList where fromFFI = Just

export
SafeCast CSSRuleList where
  safeCast = unsafeCastOnPrototypeName "CSSRuleList"


export %inline
Cast CSSRuleList Object where cast = believe_me
