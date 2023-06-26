module Web.Types.MultiCacheQueryOptions

import JS
import Web.Types.CacheQueryOptions


%default total

export data MultiCacheQueryOptions : Type where [external]

export
ToFFI MultiCacheQueryOptions MultiCacheQueryOptions where toFFI = id

export
FromFFI MultiCacheQueryOptions MultiCacheQueryOptions where fromFFI = Just


export %inline
Cast MultiCacheQueryOptions CacheQueryOptions where cast = believe_me


export %inline
Cast MultiCacheQueryOptions Object where cast = believe_me

