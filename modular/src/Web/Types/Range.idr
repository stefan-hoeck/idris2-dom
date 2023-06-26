module Web.Types.Range

import JS
import Web.Types.AbstractRange


%default total

export data Range : Type where [external]

export
ToFFI Range Range where toFFI = id

export
FromFFI Range Range where fromFFI = Just

export
SafeCast Range where
  safeCast = unsafeCastOnPrototypeName "Range"


export %inline
Cast Range AbstractRange where cast = believe_me


export %inline
Cast Range Object where cast = believe_me
