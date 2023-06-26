module Web.Types.IDBOpenDBRequest

import JS
import Web.Types.EventTarget
import Web.Types.IDBRequest


%default total

export data IDBOpenDBRequest : Type where [external]

export
ToFFI IDBOpenDBRequest IDBOpenDBRequest where toFFI = id

export
FromFFI IDBOpenDBRequest IDBOpenDBRequest where fromFFI = Just

export
SafeCast IDBOpenDBRequest where
  safeCast = unsafeCastOnPrototypeName "IDBOpenDBRequest"


export %inline
Cast IDBOpenDBRequest IDBRequest where cast = believe_me


export %inline
Cast IDBOpenDBRequest EventTarget where cast = believe_me


export %inline
Cast IDBOpenDBRequest Object where cast = believe_me
