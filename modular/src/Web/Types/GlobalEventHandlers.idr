module Web.Types.GlobalEventHandlers

import JS


%default total

export data GlobalEventHandlers : Type where [external]

export
ToFFI GlobalEventHandlers GlobalEventHandlers where toFFI = id

export
FromFFI GlobalEventHandlers GlobalEventHandlers where fromFFI = Just
