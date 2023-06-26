module Web.Types.OnErrorEventHandlerNonNull

import JS


%default total

export data OnErrorEventHandlerNonNull : Type where [external]

export
ToFFI OnErrorEventHandlerNonNull OnErrorEventHandlerNonNull where toFFI = id

export
FromFFI OnErrorEventHandlerNonNull OnErrorEventHandlerNonNull where fromFFI = Just
