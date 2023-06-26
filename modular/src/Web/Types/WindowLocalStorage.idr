module Web.Types.WindowLocalStorage

import JS


%default total

export data WindowLocalStorage : Type where [external]

export
ToFFI WindowLocalStorage WindowLocalStorage where toFFI = id

export
FromFFI WindowLocalStorage WindowLocalStorage where fromFFI = Just
