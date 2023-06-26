module Web.Types.FunctionStringCallback

import JS


%default total

export data FunctionStringCallback : Type where [external]

export
ToFFI FunctionStringCallback FunctionStringCallback where toFFI = id

export
FromFFI FunctionStringCallback FunctionStringCallback where fromFFI = Just

