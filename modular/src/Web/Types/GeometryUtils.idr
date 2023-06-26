module Web.Types.GeometryUtils

import JS


%default total

export data GeometryUtils : Type where [external]

export
ToFFI GeometryUtils GeometryUtils where toFFI = id

export
FromFFI GeometryUtils GeometryUtils where fromFFI = Just

