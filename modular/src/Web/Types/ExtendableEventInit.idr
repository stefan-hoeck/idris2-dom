module Web.Types.ExtendableEventInit

import JS
import Web.Types.EventInit


%default total

export data ExtendableEventInit : Type where [external]

export
ToFFI ExtendableEventInit ExtendableEventInit where toFFI = id

export
FromFFI ExtendableEventInit ExtendableEventInit where fromFFI = Just


export %inline
Cast ExtendableEventInit EventInit where cast = believe_me


export %inline
Cast ExtendableEventInit Object where cast = believe_me
