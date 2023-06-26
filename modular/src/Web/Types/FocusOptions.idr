module Web.Types.FocusOptions

import JS


%default total

export data FocusOptions : Type where [external]

export
ToFFI FocusOptions FocusOptions where toFFI = id

export
FromFFI FocusOptions FocusOptions where fromFFI = Just


export %inline
Cast FocusOptions Object where cast = believe_me

