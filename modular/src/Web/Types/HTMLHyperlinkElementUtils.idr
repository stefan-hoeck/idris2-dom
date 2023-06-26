module Web.Types.HTMLHyperlinkElementUtils

import JS


%default total

export data HTMLHyperlinkElementUtils : Type where [external]

export
ToFFI HTMLHyperlinkElementUtils HTMLHyperlinkElementUtils where toFFI = id

export
FromFFI HTMLHyperlinkElementUtils HTMLHyperlinkElementUtils where fromFFI = Just

