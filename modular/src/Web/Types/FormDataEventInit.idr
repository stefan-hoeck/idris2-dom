module Web.Types.FormDataEventInit

import JS
import Web.Types.EventInit


%default total

export data FormDataEventInit : Type where [external]

export
ToFFI FormDataEventInit FormDataEventInit where toFFI = id

export
FromFFI FormDataEventInit FormDataEventInit where fromFFI = Just


export %inline
Cast FormDataEventInit EventInit where cast = believe_me


export %inline
Cast FormDataEventInit Object where cast = believe_me
