module Web.Types.IDBFactory

import JS


%default total

export data IDBFactory : Type where [external]

export
ToFFI IDBFactory IDBFactory where toFFI = id

export
FromFFI IDBFactory IDBFactory where fromFFI = Just

export
SafeCast IDBFactory where
  safeCast = unsafeCastOnPrototypeName "IDBFactory"


export %inline
Cast IDBFactory Object where cast = believe_me
