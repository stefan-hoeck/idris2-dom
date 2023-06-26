module Web.Types.SubmitEventInit

import JS
import Web.Types.EventInit


%default total

export data SubmitEventInit : Type where [external]

export
ToFFI SubmitEventInit SubmitEventInit where toFFI = id

export
FromFFI SubmitEventInit SubmitEventInit where fromFFI = Just


export %inline
Cast SubmitEventInit EventInit where cast = believe_me


export %inline
Cast SubmitEventInit Object where cast = believe_me

