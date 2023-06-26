module Web.Types.IDBTransactionOptions

import JS


%default total

export data IDBTransactionOptions : Type where [external]

export
ToFFI IDBTransactionOptions IDBTransactionOptions where toFFI = id

export
FromFFI IDBTransactionOptions IDBTransactionOptions where fromFFI = Just


export %inline
Cast IDBTransactionOptions Object where cast = believe_me

