module Web.Types.WheelEventHandler

import JS


%default total

export data WheelEventHandler : Type where [external]

export
ToFFI WheelEventHandler WheelEventHandler where toFFI = id

export
FromFFI WheelEventHandler WheelEventHandler where fromFFI = Just
