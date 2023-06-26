module Web.Types.EventListenerOptions

import JS


%default total

export data EventListenerOptions : Type where [external]

export
ToFFI EventListenerOptions EventListenerOptions where toFFI = id

export
FromFFI EventListenerOptions EventListenerOptions where fromFFI = Just


export %inline
Cast EventListenerOptions Object where cast = believe_me

