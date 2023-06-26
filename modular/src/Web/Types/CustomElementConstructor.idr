module Web.Types.CustomElementConstructor

import JS


%default total

export data CustomElementConstructor : Type where [external]

export
ToFFI CustomElementConstructor CustomElementConstructor where toFFI = id

export
FromFFI CustomElementConstructor CustomElementConstructor where fromFFI = Just

