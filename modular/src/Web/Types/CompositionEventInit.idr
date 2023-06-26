module Web.Types.CompositionEventInit

import JS
import Web.Types.EventInit
import Web.Types.UIEventInit


%default total

export data CompositionEventInit : Type where [external]

export
ToFFI CompositionEventInit CompositionEventInit where toFFI = id

export
FromFFI CompositionEventInit CompositionEventInit where fromFFI = Just


export %inline
Cast CompositionEventInit UIEventInit where cast = believe_me


export %inline
Cast CompositionEventInit EventInit where cast = believe_me


export %inline
Cast CompositionEventInit Object where cast = believe_me

