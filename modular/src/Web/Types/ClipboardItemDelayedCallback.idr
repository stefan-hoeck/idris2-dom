module Web.Types.ClipboardItemDelayedCallback

import JS


%default total

export data ClipboardItemDelayedCallback : Type where [external]

export
ToFFI ClipboardItemDelayedCallback ClipboardItemDelayedCallback where toFFI = id

export
FromFFI ClipboardItemDelayedCallback ClipboardItemDelayedCallback where fromFFI = Just
