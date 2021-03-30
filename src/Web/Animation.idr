module Web.Animation
 
import JS
import Web.Internal.AnimationPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Animation
  
  public export
  JSType Animation where
    parents =  [ EventTarget , Object ]

    mixins =  []

namespace AnimationEffect
  
  public export
  JSType AnimationEffect where
    parents =  [ Object ]

    mixins =  []

namespace AnimationPlaybackEvent
  
  public export
  JSType AnimationPlaybackEvent where
    parents =  [ Event , Object ]

    mixins =  []

namespace AnimationTimeline
  
  public export
  JSType AnimationTimeline where
    parents =  [ Object ]

    mixins =  []

namespace DocumentTimeline
  
  public export
  JSType DocumentTimeline where
    parents =  [ AnimationTimeline , Object ]

    mixins =  []

namespace KeyframeEffect
  
  public export
  JSType KeyframeEffect where
    parents =  [ AnimationEffect , Object ]

    mixins =  []

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace AnimationPlaybackEventInit
  
  public export
  JSType AnimationPlaybackEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []

namespace BaseComputedKeyframe
  
  public export
  JSType BaseComputedKeyframe where
    parents =  [ Object ]

    mixins =  []

namespace BaseKeyframe
  
  public export
  JSType BaseKeyframe where
    parents =  [ Object ]

    mixins =  []

namespace BasePropertyIndexedKeyframe
  
  public export
  JSType BasePropertyIndexedKeyframe where
    parents =  [ Object ]

    mixins =  []

namespace ComputedEffectTiming
  
  public export
  JSType ComputedEffectTiming where
    parents =  [ EffectTiming , Object ]

    mixins =  []

namespace DocumentTimelineOptions
  
  public export
  JSType DocumentTimelineOptions where
    parents =  [ Object ]

    mixins =  []

namespace EffectTiming
  
  public export
  JSType EffectTiming where
    parents =  [ Object ]

    mixins =  []

namespace KeyframeAnimationOptions
  
  public export
  JSType KeyframeAnimationOptions where
    parents =  [ KeyframeEffectOptions , EffectTiming , Object ]

    mixins =  []

namespace KeyframeEffectOptions
  
  public export
  JSType KeyframeEffectOptions where
    parents =  [ EffectTiming , Object ]

    mixins =  []

namespace OptionalEffectTiming
  
  public export
  JSType OptionalEffectTiming where
    parents =  [ Object ]

    mixins =  []
