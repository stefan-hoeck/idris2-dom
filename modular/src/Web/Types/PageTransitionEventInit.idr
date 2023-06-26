module Web.Types.PageTransitionEventInit

import JS
import Web.Types.EventInit


%default total

export data PageTransitionEventInit : Type where [external]

export
ToFFI PageTransitionEventInit PageTransitionEventInit where toFFI = id

export
FromFFI PageTransitionEventInit PageTransitionEventInit where fromFFI = Just


export %inline
Cast PageTransitionEventInit EventInit where cast = believe_me


export %inline
Cast PageTransitionEventInit Object where cast = believe_me

