module Web.Types.KeyframeEffectOptions

import JS
import Web.Types.EffectTiming


%default total

export data KeyframeEffectOptions : Type where [external]

export
ToFFI KeyframeEffectOptions KeyframeEffectOptions where toFFI = id

export
FromFFI KeyframeEffectOptions KeyframeEffectOptions where fromFFI = Just


export %inline
Cast KeyframeEffectOptions EffectTiming where cast = believe_me


export %inline
Cast KeyframeEffectOptions Object where cast = believe_me
