module Web.Types.NonElementParentNode

import JS


%default total

export data NonElementParentNode : Type where [external]

export
ToFFI NonElementParentNode NonElementParentNode where toFFI = id

export
FromFFI NonElementParentNode NonElementParentNode where fromFFI = Just

