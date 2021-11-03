module Web.Internal.AnimationTypes

import JS

--------------------------------------------------------------------------------
--          Enums
--------------------------------------------------------------------------------

namespace AnimationPlayState
  
  public export
  data AnimationPlayState = Idle | Running | Paused | Finished

  public export
  Show AnimationPlayState where
    show Idle = "idle"
    show Running = "running"
    show Paused = "paused"
    show Finished = "finished"

  public export
  Eq AnimationPlayState where
    (==) = (==) `on` show

  public export
  Ord AnimationPlayState where
    compare = compare `on` show

  public export
  read : String -> Maybe AnimationPlayState
  read "idle" = Just Idle
  read "running" = Just Running
  read "paused" = Just Paused
  read "finished" = Just Finished
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (AnimationPlayState.read s)}
             -> AnimationPlayState
  fromString s = fromJust $ read s

  export
  ToFFI AnimationPlayState String where
    toFFI = show

  export
  FromFFI AnimationPlayState String where
    fromFFI = read

namespace FillMode
  
  public export
  data FillMode = None | Forwards | Backwards | Both | Auto

  public export
  Show FillMode where
    show None = "none"
    show Forwards = "forwards"
    show Backwards = "backwards"
    show Both = "both"
    show Auto = "auto"

  public export
  Eq FillMode where
    (==) = (==) `on` show

  public export
  Ord FillMode where
    compare = compare `on` show

  public export
  read : String -> Maybe FillMode
  read "none" = Just None
  read "forwards" = Just Forwards
  read "backwards" = Just Backwards
  read "both" = Just Both
  read "auto" = Just Auto
  read _ = Nothing

  public export
  fromString : (s : String) -> {auto 0 _ : IsJust (FillMode.read s)} -> FillMode
  fromString s = fromJust $ read s

  export
  ToFFI FillMode String where
    toFFI = show

  export
  FromFFI FillMode String where
    fromFFI = read

namespace PlaybackDirection
  
  public export
  data PlaybackDirection = Normal | Reverse | Alternate | AlternateReverse

  public export
  Show PlaybackDirection where
    show Normal = "normal"
    show Reverse = "reverse"
    show Alternate = "alternate"
    show AlternateReverse = "alternate-reverse"

  public export
  Eq PlaybackDirection where
    (==) = (==) `on` show

  public export
  Ord PlaybackDirection where
    compare = compare `on` show

  public export
  read : String -> Maybe PlaybackDirection
  read "normal" = Just Normal
  read "reverse" = Just Reverse
  read "alternate" = Just Alternate
  read "alternate-reverse" = Just AlternateReverse
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (PlaybackDirection.read s)}
             -> PlaybackDirection
  fromString s = fromJust $ read s

  export
  ToFFI PlaybackDirection String where
    toFFI = show

  export
  FromFFI PlaybackDirection String where
    fromFFI = read

namespace IterationCompositeOperation
  
  public export
  data IterationCompositeOperation = Replace | Accumulate

  public export
  Show IterationCompositeOperation where
    show Replace = "replace"
    show Accumulate = "accumulate"

  public export
  Eq IterationCompositeOperation where
    (==) = (==) `on` show

  public export
  Ord IterationCompositeOperation where
    compare = compare `on` show

  public export
  read : String -> Maybe IterationCompositeOperation
  read "replace" = Just Replace
  read "accumulate" = Just Accumulate
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (IterationCompositeOperation.read s)}
             -> IterationCompositeOperation
  fromString s = fromJust $ read s

  export
  ToFFI IterationCompositeOperation String where
    toFFI = show

  export
  FromFFI IterationCompositeOperation String where
    fromFFI = read

namespace CompositeOperation
  
  public export
  data CompositeOperation = Replace | Add | Accumulate

  public export
  Show CompositeOperation where
    show Replace = "replace"
    show Add = "add"
    show Accumulate = "accumulate"

  public export
  Eq CompositeOperation where
    (==) = (==) `on` show

  public export
  Ord CompositeOperation where
    compare = compare `on` show

  public export
  read : String -> Maybe CompositeOperation
  read "replace" = Just Replace
  read "add" = Just Add
  read "accumulate" = Just Accumulate
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (CompositeOperation.read s)}
             -> CompositeOperation
  fromString s = fromJust $ read s

  export
  ToFFI CompositeOperation String where
    toFFI = show

  export
  FromFFI CompositeOperation String where
    fromFFI = read

namespace CompositeOperationOrAuto
  
  public export
  data CompositeOperationOrAuto = Replace | Add | Accumulate | Auto

  public export
  Show CompositeOperationOrAuto where
    show Replace = "replace"
    show Add = "add"
    show Accumulate = "accumulate"
    show Auto = "auto"

  public export
  Eq CompositeOperationOrAuto where
    (==) = (==) `on` show

  public export
  Ord CompositeOperationOrAuto where
    compare = compare `on` show

  public export
  read : String -> Maybe CompositeOperationOrAuto
  read "replace" = Just Replace
  read "add" = Just Add
  read "accumulate" = Just Accumulate
  read "auto" = Just Auto
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (CompositeOperationOrAuto.read s)}
             -> CompositeOperationOrAuto
  fromString s = fromJust $ read s

  export
  ToFFI CompositeOperationOrAuto String where
    toFFI = show

  export
  FromFFI CompositeOperationOrAuto String where
    fromFFI = read


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data Animation : Type where [external]

export
ToFFI Animation Animation where toFFI = id

export
FromFFI Animation Animation where fromFFI = Just

export
SafeCast Animation where
  safeCast = unsafeCastOnPrototypeName "Animation"

export data AnimationEffect : Type where [external]

export
ToFFI AnimationEffect AnimationEffect where toFFI = id

export
FromFFI AnimationEffect AnimationEffect where fromFFI = Just

export
SafeCast AnimationEffect where
  safeCast = unsafeCastOnPrototypeName "AnimationEffect"

export data AnimationPlaybackEvent : Type where [external]

export
ToFFI AnimationPlaybackEvent AnimationPlaybackEvent where toFFI = id

export
FromFFI AnimationPlaybackEvent AnimationPlaybackEvent where fromFFI = Just

export
SafeCast AnimationPlaybackEvent where
  safeCast = unsafeCastOnPrototypeName "AnimationPlaybackEvent"

export data AnimationTimeline : Type where [external]

export
ToFFI AnimationTimeline AnimationTimeline where toFFI = id

export
FromFFI AnimationTimeline AnimationTimeline where fromFFI = Just

export
SafeCast AnimationTimeline where
  safeCast = unsafeCastOnPrototypeName "AnimationTimeline"

export data DocumentTimeline : Type where [external]

export
ToFFI DocumentTimeline DocumentTimeline where toFFI = id

export
FromFFI DocumentTimeline DocumentTimeline where fromFFI = Just

export
SafeCast DocumentTimeline where
  safeCast = unsafeCastOnPrototypeName "DocumentTimeline"

export data KeyframeEffect : Type where [external]

export
ToFFI KeyframeEffect KeyframeEffect where toFFI = id

export
FromFFI KeyframeEffect KeyframeEffect where fromFFI = Just

export
SafeCast KeyframeEffect where
  safeCast = unsafeCastOnPrototypeName "KeyframeEffect"


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export data AnimationPlaybackEventInit : Type where [external]

export
ToFFI AnimationPlaybackEventInit AnimationPlaybackEventInit where toFFI = id

export
FromFFI AnimationPlaybackEventInit AnimationPlaybackEventInit where fromFFI = Just

export data BaseComputedKeyframe : Type where [external]

export
ToFFI BaseComputedKeyframe BaseComputedKeyframe where toFFI = id

export
FromFFI BaseComputedKeyframe BaseComputedKeyframe where fromFFI = Just

export data BaseKeyframe : Type where [external]

export
ToFFI BaseKeyframe BaseKeyframe where toFFI = id

export
FromFFI BaseKeyframe BaseKeyframe where fromFFI = Just

export data BasePropertyIndexedKeyframe : Type where [external]

export
ToFFI BasePropertyIndexedKeyframe BasePropertyIndexedKeyframe where toFFI = id

export
FromFFI BasePropertyIndexedKeyframe BasePropertyIndexedKeyframe where fromFFI = Just

export data ComputedEffectTiming : Type where [external]

export
ToFFI ComputedEffectTiming ComputedEffectTiming where toFFI = id

export
FromFFI ComputedEffectTiming ComputedEffectTiming where fromFFI = Just

export data DocumentTimelineOptions : Type where [external]

export
ToFFI DocumentTimelineOptions DocumentTimelineOptions where toFFI = id

export
FromFFI DocumentTimelineOptions DocumentTimelineOptions where fromFFI = Just

export data EffectTiming : Type where [external]

export
ToFFI EffectTiming EffectTiming where toFFI = id

export
FromFFI EffectTiming EffectTiming where fromFFI = Just

export data KeyframeAnimationOptions : Type where [external]

export
ToFFI KeyframeAnimationOptions KeyframeAnimationOptions where toFFI = id

export
FromFFI KeyframeAnimationOptions KeyframeAnimationOptions where fromFFI = Just

export data KeyframeEffectOptions : Type where [external]

export
ToFFI KeyframeEffectOptions KeyframeEffectOptions where toFFI = id

export
FromFFI KeyframeEffectOptions KeyframeEffectOptions where fromFFI = Just

export data OptionalEffectTiming : Type where [external]

export
ToFFI OptionalEffectTiming OptionalEffectTiming where toFFI = id

export
FromFFI OptionalEffectTiming OptionalEffectTiming where fromFFI = Just


--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

export data Animatable : Type where [external]

export
ToFFI Animatable Animatable where toFFI = id

export
FromFFI Animatable Animatable where fromFFI = Just


