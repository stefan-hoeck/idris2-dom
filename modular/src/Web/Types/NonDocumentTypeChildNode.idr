module Web.Types.NonDocumentTypeChildNode

import JS


%default total

export data NonDocumentTypeChildNode : Type where [external]

export
ToFFI NonDocumentTypeChildNode NonDocumentTypeChildNode where toFFI = id

export
FromFFI NonDocumentTypeChildNode NonDocumentTypeChildNode where fromFFI = Just

