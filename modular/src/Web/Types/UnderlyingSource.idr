module Web.Types.UnderlyingSource

import JS


%default total

export data UnderlyingSource : Type where [external]

export
ToFFI UnderlyingSource UnderlyingSource where toFFI = id

export
FromFFI UnderlyingSource UnderlyingSource where fromFFI = Just


export %inline
Cast UnderlyingSource Object where cast = believe_me

