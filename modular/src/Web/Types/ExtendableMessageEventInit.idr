module Web.Types.ExtendableMessageEventInit

import JS
import Web.Types.EventInit
import Web.Types.ExtendableEventInit


%default total

export data ExtendableMessageEventInit : Type where [external]

export
ToFFI ExtendableMessageEventInit ExtendableMessageEventInit where toFFI = id

export
FromFFI ExtendableMessageEventInit ExtendableMessageEventInit where fromFFI = Just


export %inline
Cast ExtendableMessageEventInit ExtendableEventInit where cast = believe_me


export %inline
Cast ExtendableMessageEventInit EventInit where cast = believe_me


export %inline
Cast ExtendableMessageEventInit Object where cast = believe_me
