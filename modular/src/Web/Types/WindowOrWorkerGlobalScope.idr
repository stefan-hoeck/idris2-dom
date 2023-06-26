module Web.Types.WindowOrWorkerGlobalScope

import JS


%default total

export data WindowOrWorkerGlobalScope : Type where [external]

export
ToFFI WindowOrWorkerGlobalScope WindowOrWorkerGlobalScope where toFFI = id

export
FromFFI WindowOrWorkerGlobalScope WindowOrWorkerGlobalScope where fromFFI = Just

