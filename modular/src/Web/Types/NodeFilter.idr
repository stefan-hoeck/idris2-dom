module Web.Types.NodeFilter

import JS


%default total

export data NodeFilter : Type where [external]

export
ToFFI NodeFilter NodeFilter where toFFI = id

export
FromFFI NodeFilter NodeFilter where fromFFI = Just
