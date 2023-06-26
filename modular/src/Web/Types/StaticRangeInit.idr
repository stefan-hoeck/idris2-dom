module Web.Types.StaticRangeInit

import JS


%default total

export data StaticRangeInit : Type where [external]

export
ToFFI StaticRangeInit StaticRangeInit where toFFI = id

export
FromFFI StaticRangeInit StaticRangeInit where fromFFI = Just


export %inline
Cast StaticRangeInit Object where cast = believe_me

