module Web.Types.AddEventListenerOptions

import JS
import Web.Types.EventListenerOptions


%default total

export data AddEventListenerOptions : Type where [external]

export
ToFFI AddEventListenerOptions AddEventListenerOptions where toFFI = id

export
FromFFI AddEventListenerOptions AddEventListenerOptions where fromFFI = Just


export %inline
Cast AddEventListenerOptions EventListenerOptions where cast = believe_me


export %inline
Cast AddEventListenerOptions Object where cast = believe_me
