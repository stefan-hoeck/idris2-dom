module Web.Types.UIEventHandler

import JS


%default total

export data UIEventHandler : Type where [external]

export
ToFFI UIEventHandler UIEventHandler where toFFI = id

export
FromFFI UIEventHandler UIEventHandler where fromFFI = Just

