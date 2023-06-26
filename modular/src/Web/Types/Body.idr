module Web.Types.Body

import JS


%default total

export data Body : Type where [external]

export
ToFFI Body Body where toFFI = id

export
FromFFI Body Body where fromFFI = Just
