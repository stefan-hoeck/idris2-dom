module Web.Types.BaseComputedKeyframe

import JS


%default total

export data BaseComputedKeyframe : Type where [external]

export
ToFFI BaseComputedKeyframe BaseComputedKeyframe where toFFI = id

export
FromFFI BaseComputedKeyframe BaseComputedKeyframe where fromFFI = Just


export %inline
Cast BaseComputedKeyframe Object where cast = believe_me
