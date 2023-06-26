module Web.Types.EffectTiming

import JS


%default total

export data EffectTiming : Type where [external]

export
ToFFI EffectTiming EffectTiming where toFFI = id

export
FromFFI EffectTiming EffectTiming where fromFFI = Just


export %inline
Cast EffectTiming Object where cast = believe_me

