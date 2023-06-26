module Web.Types.LinkStyle

import JS


%default total

export data LinkStyle : Type where [external]

export
ToFFI LinkStyle LinkStyle where toFFI = id

export
FromFFI LinkStyle LinkStyle where fromFFI = Just

