module Web.Types.UIEventInit

import JS
import Web.Types.EventInit


%default total

export data UIEventInit : Type where [external]

export
ToFFI UIEventInit UIEventInit where toFFI = id

export
FromFFI UIEventInit UIEventInit where fromFFI = Just


export %inline
Cast UIEventInit EventInit where cast = believe_me


export %inline
Cast UIEventInit Object where cast = believe_me
