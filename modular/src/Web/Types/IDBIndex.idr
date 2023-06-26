module Web.Types.IDBIndex

import JS


%default total

export data IDBIndex : Type where [external]

export
ToFFI IDBIndex IDBIndex where toFFI = id

export
FromFFI IDBIndex IDBIndex where fromFFI = Just

export
SafeCast IDBIndex where
  safeCast = unsafeCastOnPrototypeName "IDBIndex"


export %inline
Cast IDBIndex Object where cast = believe_me

