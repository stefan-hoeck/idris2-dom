module Web.Types.Request

import JS
import Web.Types.Body


%default total

export data Request : Type where [external]

export
ToFFI Request Request where toFFI = id

export
FromFFI Request Request where fromFFI = Just

export
SafeCast Request where
  safeCast = unsafeCastOnPrototypeName "Request"


export %inline
Cast Request Object where cast = believe_me


export %inline
Cast Request Body where cast = believe_me
