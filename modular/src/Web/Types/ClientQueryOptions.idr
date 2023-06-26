module Web.Types.ClientQueryOptions

import JS


%default total

export data ClientQueryOptions : Type where [external]

export
ToFFI ClientQueryOptions ClientQueryOptions where toFFI = id

export
FromFFI ClientQueryOptions ClientQueryOptions where fromFFI = Just


export %inline
Cast ClientQueryOptions Object where cast = believe_me
