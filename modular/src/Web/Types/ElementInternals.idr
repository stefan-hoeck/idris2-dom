module Web.Types.ElementInternals

import JS
import Web.Types.ARIAMixin


%default total

export data ElementInternals : Type where [external]

export
ToFFI ElementInternals ElementInternals where toFFI = id

export
FromFFI ElementInternals ElementInternals where fromFFI = Just

export
SafeCast ElementInternals where
  safeCast = unsafeCastOnPrototypeName "ElementInternals"


export %inline
Cast ElementInternals Object where cast = believe_me


export %inline
Cast ElementInternals ARIAMixin where cast = believe_me
