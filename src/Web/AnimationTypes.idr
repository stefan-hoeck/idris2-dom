module Web.AnimationTypes

import Data.Maybe

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

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export
data Animation : Type where [external]

export
data AnimationEffect : Type where [external]

export
data AnimationPlaybackEvent : Type where [external]

export
data AnimationTimeline : Type where [external]

export
data DocumentTimeline : Type where [external]

export
data KeyframeEffect : Type where [external]

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

export
data Animatable : Type where [external]

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export
data AnimationPlaybackEventInit : Type where [external]

export
data BaseComputedKeyframe : Type where [external]

export
data BaseKeyframe : Type where [external]

export
data BasePropertyIndexedKeyframe : Type where [external]

export
data ComputedEffectTiming : Type where [external]

export
data DocumentTimelineOptions : Type where [external]

export
data EffectTiming : Type where [external]

export
data KeyframeAnimationOptions : Type where [external]

export
data KeyframeEffectOptions : Type where [external]

export
data OptionalEffectTiming : Type where [external]