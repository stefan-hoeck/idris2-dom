module Web.Types.ComputedEffectTiming

import JS
import Web.Types.EffectTiming


%default total

export data ComputedEffectTiming : Type where [external]

export
ToFFI ComputedEffectTiming ComputedEffectTiming where toFFI = id

export
FromFFI ComputedEffectTiming ComputedEffectTiming where fromFFI = Just


export %inline
Cast ComputedEffectTiming EffectTiming where cast = believe_me


export %inline
Cast ComputedEffectTiming Object where cast = believe_me

