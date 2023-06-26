module Web.Types.NavigatorConcurrentHardware

import JS


%default total

export data NavigatorConcurrentHardware : Type where [external]

export
ToFFI NavigatorConcurrentHardware NavigatorConcurrentHardware where toFFI = id

export
FromFFI NavigatorConcurrentHardware NavigatorConcurrentHardware where fromFFI = Just
