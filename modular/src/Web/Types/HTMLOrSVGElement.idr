module Web.Types.HTMLOrSVGElement

import JS


%default total

export data HTMLOrSVGElement : Type where [external]

export
ToFFI HTMLOrSVGElement HTMLOrSVGElement where toFFI = id

export
FromFFI HTMLOrSVGElement HTMLOrSVGElement where fromFFI = Just

