module Web.Types.AnimationPlaybackEventInit

import JS
import Web.Types.EventInit


%default total

export data AnimationPlaybackEventInit : Type where [external]

export
ToFFI AnimationPlaybackEventInit AnimationPlaybackEventInit where toFFI = id

export
FromFFI AnimationPlaybackEventInit AnimationPlaybackEventInit where fromFFI = Just


export %inline
Cast AnimationPlaybackEventInit EventInit where cast = believe_me


export %inline
Cast AnimationPlaybackEventInit Object where cast = believe_me
