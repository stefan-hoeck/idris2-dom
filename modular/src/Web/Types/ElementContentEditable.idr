module Web.Types.ElementContentEditable

import JS


%default total

export data ElementContentEditable : Type where [external]

export
ToFFI ElementContentEditable ElementContentEditable where toFFI = id

export
FromFFI ElementContentEditable ElementContentEditable where fromFFI = Just

