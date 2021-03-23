module Web.AnimationTypes

import Data.Maybe
import JS.Util

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
  ToJS AnimationPlayState where
    toJS = toJS . show

  export
  FromJS AnimationPlayState where
    fromJS = fromMaybe Idle . read . fromJS

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
  ToJS FillMode where
    toJS = toJS . show

  export
  FromJS FillMode where
    fromJS = fromMaybe None . read . fromJS

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
  ToJS PlaybackDirection where
    toJS = toJS . show

  export
  FromJS PlaybackDirection where
    fromJS = fromMaybe Normal . read . fromJS

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
  ToJS IterationCompositeOperation where
    toJS = toJS . show

  export
  FromJS IterationCompositeOperation where
    fromJS = fromMaybe Replace . read . fromJS

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
  ToJS CompositeOperation where
    toJS = toJS . show

  export
  FromJS CompositeOperation where
    fromJS = fromMaybe Replace . read . fromJS

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
  ToJS CompositeOperationOrAuto where
    toJS = toJS . show

  export
  FromJS CompositeOperationOrAuto where
    fromJS = fromMaybe Replace . read . fromJS

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export
data Animation : Type where [external]

export
ToJS Animation where
  toJS = believe_me

export
FromJS Animation where
  fromJS = believe_me

export
data AnimationEffect : Type where [external]

export
ToJS AnimationEffect where
  toJS = believe_me

export
FromJS AnimationEffect where
  fromJS = believe_me

export
data AnimationPlaybackEvent : Type where [external]

export
ToJS AnimationPlaybackEvent where
  toJS = believe_me

export
FromJS AnimationPlaybackEvent where
  fromJS = believe_me

export
data AnimationTimeline : Type where [external]

export
ToJS AnimationTimeline where
  toJS = believe_me

export
FromJS AnimationTimeline where
  fromJS = believe_me

export
data DocumentTimeline : Type where [external]

export
ToJS DocumentTimeline where
  toJS = believe_me

export
FromJS DocumentTimeline where
  fromJS = believe_me

export
data KeyframeEffect : Type where [external]

export
ToJS KeyframeEffect where
  toJS = believe_me

export
FromJS KeyframeEffect where
  fromJS = believe_me

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

export
data Animatable : Type where [external]

export
ToJS Animatable where
  toJS = believe_me

export
FromJS Animatable where
  fromJS = believe_me

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export
data AnimationPlaybackEventInit : Type where [external]

export
ToJS AnimationPlaybackEventInit where
  toJS = believe_me

export
FromJS AnimationPlaybackEventInit where
  fromJS = believe_me

export
data BaseComputedKeyframe : Type where [external]

export
ToJS BaseComputedKeyframe where
  toJS = believe_me

export
FromJS BaseComputedKeyframe where
  fromJS = believe_me

export
data BaseKeyframe : Type where [external]

export
ToJS BaseKeyframe where
  toJS = believe_me

export
FromJS BaseKeyframe where
  fromJS = believe_me

export
data BasePropertyIndexedKeyframe : Type where [external]

export
ToJS BasePropertyIndexedKeyframe where
  toJS = believe_me

export
FromJS BasePropertyIndexedKeyframe where
  fromJS = believe_me

export
data ComputedEffectTiming : Type where [external]

export
ToJS ComputedEffectTiming where
  toJS = believe_me

export
FromJS ComputedEffectTiming where
  fromJS = believe_me

export
data DocumentTimelineOptions : Type where [external]

export
ToJS DocumentTimelineOptions where
  toJS = believe_me

export
FromJS DocumentTimelineOptions where
  fromJS = believe_me

export
data EffectTiming : Type where [external]

export
ToJS EffectTiming where
  toJS = believe_me

export
FromJS EffectTiming where
  fromJS = believe_me

export
data KeyframeAnimationOptions : Type where [external]

export
ToJS KeyframeAnimationOptions where
  toJS = believe_me

export
FromJS KeyframeAnimationOptions where
  fromJS = believe_me

export
data KeyframeEffectOptions : Type where [external]

export
ToJS KeyframeEffectOptions where
  toJS = believe_me

export
FromJS KeyframeEffectOptions where
  fromJS = believe_me

export
data OptionalEffectTiming : Type where [external]

export
ToJS OptionalEffectTiming where
  toJS = believe_me

export
FromJS OptionalEffectTiming where
  fromJS = believe_me