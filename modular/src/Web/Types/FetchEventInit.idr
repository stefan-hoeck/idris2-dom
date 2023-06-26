module Web.Types.FetchEventInit

import JS
import Web.Types.EventInit
import Web.Types.ExtendableEventInit


%default total

export data FetchEventInit : Type where [external]

export
ToFFI FetchEventInit FetchEventInit where toFFI = id

export
FromFFI FetchEventInit FetchEventInit where fromFFI = Just


export %inline
Cast FetchEventInit ExtendableEventInit where cast = believe_me


export %inline
Cast FetchEventInit EventInit where cast = believe_me


export %inline
Cast FetchEventInit Object where cast = believe_me

