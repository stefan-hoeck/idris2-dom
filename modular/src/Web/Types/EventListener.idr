module Web.Types.EventListener

import JS


%default total

export data EventListener : Type where [external]

export
ToFFI EventListener EventListener where toFFI = id

export
FromFFI EventListener EventListener where fromFFI = Just
