module Web.Types.AbstractWorker

import JS


%default total

export data AbstractWorker : Type where [external]

export
ToFFI AbstractWorker AbstractWorker where toFFI = id

export
FromFFI AbstractWorker AbstractWorker where fromFFI = Just
