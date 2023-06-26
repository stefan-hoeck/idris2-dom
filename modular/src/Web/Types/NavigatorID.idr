module Web.Types.NavigatorID

import JS


%default total

export data NavigatorID : Type where [external]

export
ToFFI NavigatorID NavigatorID where toFFI = id

export
FromFFI NavigatorID NavigatorID where fromFFI = Just

