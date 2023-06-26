module Web.Types.IDBCursor

import JS


%default total

export data IDBCursor : Type where [external]

export
ToFFI IDBCursor IDBCursor where toFFI = id

export
FromFFI IDBCursor IDBCursor where fromFFI = Just

export
SafeCast IDBCursor where
  safeCast = unsafeCastOnPrototypeName "IDBCursor"


export %inline
Cast IDBCursor Object where cast = believe_me
