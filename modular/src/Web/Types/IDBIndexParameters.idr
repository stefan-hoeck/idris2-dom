module Web.Types.IDBIndexParameters

import JS


%default total

export data IDBIndexParameters : Type where [external]

export
ToFFI IDBIndexParameters IDBIndexParameters where toFFI = id

export
FromFFI IDBIndexParameters IDBIndexParameters where fromFFI = Just


export %inline
Cast IDBIndexParameters Object where cast = believe_me
