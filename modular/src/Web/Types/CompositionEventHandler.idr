module Web.Types.CompositionEventHandler

import JS


%default total

export data CompositionEventHandler : Type where [external]

export
ToFFI CompositionEventHandler CompositionEventHandler where toFFI = id

export
FromFFI CompositionEventHandler CompositionEventHandler where fromFFI = Just

