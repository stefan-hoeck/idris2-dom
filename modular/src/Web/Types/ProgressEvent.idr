module Web.Types.ProgressEvent

import JS
import Web.Types.Event


%default total

export data ProgressEvent : Type where [external]

export
ToFFI ProgressEvent ProgressEvent where toFFI = id

export
FromFFI ProgressEvent ProgressEvent where fromFFI = Just

export
SafeCast ProgressEvent where
  safeCast = unsafeCastOnPrototypeName "ProgressEvent"


export %inline
Cast ProgressEvent Event where cast = believe_me


export %inline
Cast ProgressEvent Object where cast = believe_me
