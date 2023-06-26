module Web.Types.FocusEventHandler

import JS


%default total

export data FocusEventHandler : Type where [external]

export
ToFFI FocusEventHandler FocusEventHandler where toFFI = id

export
FromFFI FocusEventHandler FocusEventHandler where fromFFI = Just

