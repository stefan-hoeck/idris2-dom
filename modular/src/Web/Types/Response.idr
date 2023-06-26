module Web.Types.Response

import JS
import Web.Types.Body


%default total

export data Response : Type where [external]

export
ToFFI Response Response where toFFI = id

export
FromFFI Response Response where fromFFI = Just

export
SafeCast Response where
  safeCast = unsafeCastOnPrototypeName "Response"


export %inline
Cast Response Object where cast = believe_me


export %inline
Cast Response Body where cast = believe_me

