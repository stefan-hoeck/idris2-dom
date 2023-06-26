module Web.Types.WindowEventHandlers

import JS


%default total

export data WindowEventHandlers : Type where [external]

export
ToFFI WindowEventHandlers WindowEventHandlers where toFFI = id

export
FromFFI WindowEventHandlers WindowEventHandlers where fromFFI = Just
