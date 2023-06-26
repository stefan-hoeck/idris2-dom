module Web.Types.IDBVersionChangeEventInit

import JS
import Web.Types.EventInit


%default total

export data IDBVersionChangeEventInit : Type where [external]

export
ToFFI IDBVersionChangeEventInit IDBVersionChangeEventInit where toFFI = id

export
FromFFI IDBVersionChangeEventInit IDBVersionChangeEventInit where fromFFI = Just


export %inline
Cast IDBVersionChangeEventInit EventInit where cast = believe_me


export %inline
Cast IDBVersionChangeEventInit Object where cast = believe_me
