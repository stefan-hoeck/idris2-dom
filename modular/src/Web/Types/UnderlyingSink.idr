module Web.Types.UnderlyingSink

import JS


%default total

export data UnderlyingSink : Type where [external]

export
ToFFI UnderlyingSink UnderlyingSink where toFFI = id

export
FromFFI UnderlyingSink UnderlyingSink where fromFFI = Just


export %inline
Cast UnderlyingSink Object where cast = believe_me
