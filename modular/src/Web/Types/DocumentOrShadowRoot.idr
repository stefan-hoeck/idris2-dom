module Web.Types.DocumentOrShadowRoot

import JS


%default total

export data DocumentOrShadowRoot : Type where [external]

export
ToFFI DocumentOrShadowRoot DocumentOrShadowRoot where toFFI = id

export
FromFFI DocumentOrShadowRoot DocumentOrShadowRoot where fromFFI = Just
