module Web.Types.IDBObjectStore

import JS


%default total

export data IDBObjectStore : Type where [external]

export
ToFFI IDBObjectStore IDBObjectStore where toFFI = id

export
FromFFI IDBObjectStore IDBObjectStore where fromFFI = Just

export
SafeCast IDBObjectStore where
  safeCast = unsafeCastOnPrototypeName "IDBObjectStore"


export %inline
Cast IDBObjectStore Object where cast = believe_me

