module Web.Types.CacheQueryOptions

import JS


%default total

export data CacheQueryOptions : Type where [external]

export
ToFFI CacheQueryOptions CacheQueryOptions where toFFI = id

export
FromFFI CacheQueryOptions CacheQueryOptions where fromFFI = Just


export %inline
Cast CacheQueryOptions Object where cast = believe_me
