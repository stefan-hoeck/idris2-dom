module Web.Types.IDBVersionChangeEvent

import JS
import Web.Types.Event


%default total

export data IDBVersionChangeEvent : Type where [external]

export
ToFFI IDBVersionChangeEvent IDBVersionChangeEvent where toFFI = id

export
FromFFI IDBVersionChangeEvent IDBVersionChangeEvent where fromFFI = Just

export
SafeCast IDBVersionChangeEvent where
  safeCast = unsafeCastOnPrototypeName "IDBVersionChangeEvent"


export %inline
Cast IDBVersionChangeEvent Event where cast = believe_me


export %inline
Cast IDBVersionChangeEvent Object where cast = believe_me
