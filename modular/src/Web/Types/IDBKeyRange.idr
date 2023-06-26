module Web.Types.IDBKeyRange

import JS


%default total

export data IDBKeyRange : Type where [external]

export
ToFFI IDBKeyRange IDBKeyRange where toFFI = id

export
FromFFI IDBKeyRange IDBKeyRange where fromFFI = Just

export
SafeCast IDBKeyRange where
  safeCast = unsafeCastOnPrototypeName "IDBKeyRange"


export %inline
Cast IDBKeyRange Object where cast = believe_me
