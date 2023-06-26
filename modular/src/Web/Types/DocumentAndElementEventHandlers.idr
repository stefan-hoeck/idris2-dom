module Web.Types.DocumentAndElementEventHandlers

import JS


%default total

export data DocumentAndElementEventHandlers : Type where [external]

export
ToFFI DocumentAndElementEventHandlers DocumentAndElementEventHandlers where toFFI = id

export
FromFFI DocumentAndElementEventHandlers DocumentAndElementEventHandlers where fromFFI = Just
