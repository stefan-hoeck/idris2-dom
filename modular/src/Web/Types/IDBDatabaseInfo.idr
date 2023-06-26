module Web.Types.IDBDatabaseInfo

import JS


%default total

export data IDBDatabaseInfo : Type where [external]

export
ToFFI IDBDatabaseInfo IDBDatabaseInfo where toFFI = id

export
FromFFI IDBDatabaseInfo IDBDatabaseInfo where fromFFI = Just


export %inline
Cast IDBDatabaseInfo Object where cast = believe_me
