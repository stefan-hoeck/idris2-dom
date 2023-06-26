module Web.Types.AnimationPlaybackEvent

import JS
import Web.Types.Event


%default total

export data AnimationPlaybackEvent : Type where [external]

export
ToFFI AnimationPlaybackEvent AnimationPlaybackEvent where toFFI = id

export
FromFFI AnimationPlaybackEvent AnimationPlaybackEvent where fromFFI = Just

export
SafeCast AnimationPlaybackEvent where
  safeCast = unsafeCastOnPrototypeName "AnimationPlaybackEvent"


export %inline
Cast AnimationPlaybackEvent Event where cast = believe_me


export %inline
Cast AnimationPlaybackEvent Object where cast = believe_me
