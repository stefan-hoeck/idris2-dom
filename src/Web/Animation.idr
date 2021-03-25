module Web.Animation

import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Casts
--------------------------------------------------------------------------------

export
Cast Animation EventTarget where
  cast = believe_me

export
Cast AnimationPlaybackEvent Event where
  cast = believe_me

export
Cast AnimationPlaybackEventInit EventInit where
  cast = believe_me

export
Cast CSSPseudoElement Animatable where
  cast = believe_me

export
Cast ComputedEffectTiming EffectTiming where
  cast = believe_me

export
Cast DocumentTimeline AnimationTimeline where
  cast = believe_me

export
Cast Element Animatable where
  cast = believe_me

export
Cast KeyframeAnimationOptions KeyframeEffectOptions where
  cast = believe_me

export
Cast KeyframeEffect AnimationEffect where
  cast = believe_me

export
Cast KeyframeEffectOptions EffectTiming where
  cast = believe_me