module Web.Types.IDBCursorWithValue

import JS
import Web.Types.IDBCursor


%default total

export data IDBCursorWithValue : Type where [external]

export
ToFFI IDBCursorWithValue IDBCursorWithValue where toFFI = id

export
FromFFI IDBCursorWithValue IDBCursorWithValue where fromFFI = Just

export
SafeCast IDBCursorWithValue where
  safeCast = unsafeCastOnPrototypeName "IDBCursorWithValue"


export %inline
Cast IDBCursorWithValue IDBCursor where cast = believe_me


export %inline
Cast IDBCursorWithValue Object where cast = believe_me

