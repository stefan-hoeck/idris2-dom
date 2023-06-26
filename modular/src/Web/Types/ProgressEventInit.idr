module Web.Types.ProgressEventInit

import JS
import Web.Types.EventInit


%default total

export data ProgressEventInit : Type where [external]

export
ToFFI ProgressEventInit ProgressEventInit where toFFI = id

export
FromFFI ProgressEventInit ProgressEventInit where fromFFI = Just


export %inline
Cast ProgressEventInit EventInit where cast = believe_me


export %inline
Cast ProgressEventInit Object where cast = believe_me

