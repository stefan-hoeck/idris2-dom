module Web.Raw.IDBCursorWithValue

import JS
import Web.Types.IDBCursor
import Web.Types.IDBCursorWithValue


%default total


export
%foreign "browser:lambda:x=>x.value"
prim__value : IDBCursorWithValue -> PrimIO AnyPtr


export
value : (obj : IDBCursorWithValue) -> JSIO Any
value a = tryJS "IDBCursorWithValue.value" $ IDBCursorWithValue.prim__value a

