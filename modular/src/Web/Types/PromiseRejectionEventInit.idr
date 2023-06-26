module Web.Types.PromiseRejectionEventInit

import JS
import Web.Types.EventInit


%default total

export data PromiseRejectionEventInit : Type where [external]

export
ToFFI PromiseRejectionEventInit PromiseRejectionEventInit where toFFI = id

export
FromFFI PromiseRejectionEventInit PromiseRejectionEventInit where fromFFI = Just


export %inline
Cast PromiseRejectionEventInit EventInit where cast = believe_me


export %inline
Cast PromiseRejectionEventInit Object where cast = believe_me

