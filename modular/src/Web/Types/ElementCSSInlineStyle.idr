module Web.Types.ElementCSSInlineStyle

import JS


%default total

export data ElementCSSInlineStyle : Type where [external]

export
ToFFI ElementCSSInlineStyle ElementCSSInlineStyle where toFFI = id

export
FromFFI ElementCSSInlineStyle ElementCSSInlineStyle where fromFFI = Just
