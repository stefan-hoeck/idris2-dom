module Web.Types.IDBRequest

import JS
import Web.Types.EventTarget


%default total

export data IDBRequest : Type where [external]

export
ToFFI IDBRequest IDBRequest where toFFI = id

export
FromFFI IDBRequest IDBRequest where fromFFI = Just

export
SafeCast IDBRequest where
  safeCast = unsafeCastOnPrototypeName "IDBRequest"


export %inline
Cast IDBRequest EventTarget where cast = believe_me


export %inline
Cast IDBRequest Object where cast = believe_me

