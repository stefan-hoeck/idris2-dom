module Web.Types.ImageEncodeOptions

import JS


%default total

export data ImageEncodeOptions : Type where [external]

export
ToFFI ImageEncodeOptions ImageEncodeOptions where toFFI = id

export
FromFFI ImageEncodeOptions ImageEncodeOptions where fromFFI = Just


export %inline
Cast ImageEncodeOptions Object where cast = believe_me

