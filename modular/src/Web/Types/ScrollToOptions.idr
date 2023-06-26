module Web.Types.ScrollToOptions

import JS
import Web.Types.ScrollOptions


%default total

export data ScrollToOptions : Type where [external]

export
ToFFI ScrollToOptions ScrollToOptions where toFFI = id

export
FromFFI ScrollToOptions ScrollToOptions where fromFFI = Just


export %inline
Cast ScrollToOptions ScrollOptions where cast = believe_me


export %inline
Cast ScrollToOptions Object where cast = believe_me

