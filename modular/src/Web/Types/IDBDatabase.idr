module Web.Types.IDBDatabase

import JS
import Web.Types.EventTarget


%default total

export data IDBDatabase : Type where [external]

export
ToFFI IDBDatabase IDBDatabase where toFFI = id

export
FromFFI IDBDatabase IDBDatabase where fromFFI = Just

export
SafeCast IDBDatabase where
  safeCast = unsafeCastOnPrototypeName "IDBDatabase"


export %inline
Cast IDBDatabase EventTarget where cast = believe_me


export %inline
Cast IDBDatabase Object where cast = believe_me
