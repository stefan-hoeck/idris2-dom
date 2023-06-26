module Web.Types.InputEventHandler

import JS


%default total

export data InputEventHandler : Type where [external]

export
ToFFI InputEventHandler InputEventHandler where toFFI = id

export
FromFFI InputEventHandler InputEventHandler where fromFFI = Just

