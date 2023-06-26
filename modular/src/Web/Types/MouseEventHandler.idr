module Web.Types.MouseEventHandler

import JS


%default total

export data MouseEventHandler : Type where [external]

export
ToFFI MouseEventHandler MouseEventHandler where toFFI = id

export
FromFFI MouseEventHandler MouseEventHandler where fromFFI = Just
