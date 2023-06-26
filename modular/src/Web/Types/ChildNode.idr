module Web.Types.ChildNode

import JS


%default total

export data ChildNode : Type where [external]

export
ToFFI ChildNode ChildNode where toFFI = id

export
FromFFI ChildNode ChildNode where fromFFI = Just

