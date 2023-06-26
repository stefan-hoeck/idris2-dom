module Web.Types.Window

import JS
import Web.Types.EventTarget
import Web.Types.GlobalEventHandlers
import Web.Types.WindowEventHandlers
import Web.Types.WindowLocalStorage
import Web.Types.WindowOrWorkerGlobalScope


%default total

export data Window : Type where [external]

export
ToFFI Window Window where toFFI = id

export
FromFFI Window Window where fromFFI = Just

export
SafeCast Window where
  safeCast = unsafeCastOnPrototypeName "Window"


export %inline
Cast Window EventTarget where cast = believe_me


export %inline
Cast Window Object where cast = believe_me


export %inline
Cast Window GlobalEventHandlers where cast = believe_me


export %inline
Cast Window WindowEventHandlers where cast = believe_me


export %inline
Cast Window WindowLocalStorage where cast = believe_me


export %inline
Cast Window WindowOrWorkerGlobalScope where cast = believe_me

