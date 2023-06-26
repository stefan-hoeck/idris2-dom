module Web.Types.IDBTransaction

import JS
import Web.Types.EventTarget


%default total

export data IDBTransaction : Type where [external]

export
ToFFI IDBTransaction IDBTransaction where toFFI = id

export
FromFFI IDBTransaction IDBTransaction where fromFFI = Just

export
SafeCast IDBTransaction where
  safeCast = unsafeCastOnPrototypeName "IDBTransaction"


export %inline
Cast IDBTransaction EventTarget where cast = believe_me


export %inline
Cast IDBTransaction Object where cast = believe_me
