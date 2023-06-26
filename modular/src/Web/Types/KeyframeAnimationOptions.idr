module Web.Types.KeyframeAnimationOptions

import JS
import Web.Types.EffectTiming
import Web.Types.KeyframeEffectOptions


%default total

export data KeyframeAnimationOptions : Type where [external]

export
ToFFI KeyframeAnimationOptions KeyframeAnimationOptions where toFFI = id

export
FromFFI KeyframeAnimationOptions KeyframeAnimationOptions where fromFFI = Just


export %inline
Cast KeyframeAnimationOptions KeyframeEffectOptions where cast = believe_me


export %inline
Cast KeyframeAnimationOptions EffectTiming where cast = believe_me


export %inline
Cast KeyframeAnimationOptions Object where cast = believe_me
