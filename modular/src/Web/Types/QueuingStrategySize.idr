module Web.Types.QueuingStrategySize

import JS


%default total

export data QueuingStrategySize : Type where [external]

export
ToFFI QueuingStrategySize QueuingStrategySize where toFFI = id

export
FromFFI QueuingStrategySize QueuingStrategySize where fromFFI = Just
