module Web.Types.OnBeforeUnloadEventHandlerNonNull

import JS


%default total

export data OnBeforeUnloadEventHandlerNonNull : Type where [external]

export
ToFFI OnBeforeUnloadEventHandlerNonNull OnBeforeUnloadEventHandlerNonNull where toFFI = id

export
FromFFI OnBeforeUnloadEventHandlerNonNull OnBeforeUnloadEventHandlerNonNull where fromFFI = Just

