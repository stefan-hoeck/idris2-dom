module Web.Types.MediaQueryListEvent

import JS
import Web.Types.Event


%default total

export data MediaQueryListEvent : Type where [external]

export
ToFFI MediaQueryListEvent MediaQueryListEvent where toFFI = id

export
FromFFI MediaQueryListEvent MediaQueryListEvent where fromFFI = Just

export
SafeCast MediaQueryListEvent where
  safeCast = unsafeCastOnPrototypeName "MediaQueryListEvent"


export %inline
Cast MediaQueryListEvent Event where cast = believe_me


export %inline
Cast MediaQueryListEvent Object where cast = believe_me
