module Web.Types.BasePropertyIndexedKeyframe

import JS


%default total

export data BasePropertyIndexedKeyframe : Type where [external]

export
ToFFI BasePropertyIndexedKeyframe BasePropertyIndexedKeyframe where toFFI = id

export
FromFFI BasePropertyIndexedKeyframe BasePropertyIndexedKeyframe where fromFFI = Just


export %inline
Cast BasePropertyIndexedKeyframe Object where cast = believe_me

