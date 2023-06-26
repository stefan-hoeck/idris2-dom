module Web.Types.IDBObjectStoreParameters

import JS


%default total

export data IDBObjectStoreParameters : Type where [external]

export
ToFFI IDBObjectStoreParameters IDBObjectStoreParameters where toFFI = id

export
FromFFI IDBObjectStoreParameters IDBObjectStoreParameters where fromFFI = Just


export %inline
Cast IDBObjectStoreParameters Object where cast = believe_me

