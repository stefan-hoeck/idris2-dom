module Web.Types.CanvasFilters

import JS


%default total

export data CanvasFilters : Type where [external]

export
ToFFI CanvasFilters CanvasFilters where toFFI = id

export
FromFFI CanvasFilters CanvasFilters where fromFFI = Just

