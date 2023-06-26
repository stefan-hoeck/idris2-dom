module Web.Types.ScrollIntoViewOptions

import JS
import Web.Types.ScrollOptions


%default total

export data ScrollIntoViewOptions : Type where [external]

export
ToFFI ScrollIntoViewOptions ScrollIntoViewOptions where toFFI = id

export
FromFFI ScrollIntoViewOptions ScrollIntoViewOptions where fromFFI = Just


export %inline
Cast ScrollIntoViewOptions ScrollOptions where cast = believe_me


export %inline
Cast ScrollIntoViewOptions Object where cast = believe_me
