module Web.Types.StreamPipeOptions

import JS


%default total

export data StreamPipeOptions : Type where [external]

export
ToFFI StreamPipeOptions StreamPipeOptions where toFFI = id

export
FromFFI StreamPipeOptions StreamPipeOptions where fromFFI = Just


export %inline
Cast StreamPipeOptions Object where cast = believe_me

