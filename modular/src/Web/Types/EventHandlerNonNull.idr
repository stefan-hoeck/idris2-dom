module Web.Types.EventHandlerNonNull

import JS


%default total

export data EventHandlerNonNull : Type where [external]

export
ToFFI EventHandlerNonNull EventHandlerNonNull where toFFI = id

export
FromFFI EventHandlerNonNull EventHandlerNonNull where fromFFI = Just
