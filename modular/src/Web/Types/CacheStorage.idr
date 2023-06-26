module Web.Types.CacheStorage

import JS


%default total

export data CacheStorage : Type where [external]

export
ToFFI CacheStorage CacheStorage where toFFI = id

export
FromFFI CacheStorage CacheStorage where fromFFI = Just

export
SafeCast CacheStorage where
  safeCast = unsafeCastOnPrototypeName "CacheStorage"


export %inline
Cast CacheStorage Object where cast = believe_me
