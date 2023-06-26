module Web.Types.BaseKeyframe

import JS


%default total

export data BaseKeyframe : Type where [external]

export
ToFFI BaseKeyframe BaseKeyframe where toFFI = id

export
FromFFI BaseKeyframe BaseKeyframe where fromFFI = Just


export %inline
Cast BaseKeyframe Object where cast = believe_me

