module Web.Types.ScrollOptions

import JS


%default total

export data ScrollOptions : Type where [external]

export
ToFFI ScrollOptions ScrollOptions where toFFI = id

export
FromFFI ScrollOptions ScrollOptions where fromFFI = Just


export %inline
Cast ScrollOptions Object where cast = believe_me
