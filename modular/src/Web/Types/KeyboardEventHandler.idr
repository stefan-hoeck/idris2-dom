module Web.Types.KeyboardEventHandler

import JS


%default total

export data KeyboardEventHandler : Type where [external]

export
ToFFI KeyboardEventHandler KeyboardEventHandler where toFFI = id

export
FromFFI KeyboardEventHandler KeyboardEventHandler where fromFFI = Just

