module Web.Types.StorageEvent

import JS
import Web.Types.Event


%default total

export data StorageEvent : Type where [external]

export
ToFFI StorageEvent StorageEvent where toFFI = id

export
FromFFI StorageEvent StorageEvent where fromFFI = Just

export
SafeCast StorageEvent where
  safeCast = unsafeCastOnPrototypeName "StorageEvent"


export %inline
Cast StorageEvent Event where cast = believe_me


export %inline
Cast StorageEvent Object where cast = believe_me
