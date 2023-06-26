module Web.Types.ParentNode

import JS


%default total

export data ParentNode : Type where [external]

export
ToFFI ParentNode ParentNode where toFFI = id

export
FromFFI ParentNode ParentNode where fromFFI = Just
