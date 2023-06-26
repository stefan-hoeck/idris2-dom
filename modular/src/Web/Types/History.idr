module Web.Types.History

import JS


%default total

export data History : Type where [external]

export
ToFFI History History where toFFI = id

export
FromFFI History History where fromFFI = Just

export
SafeCast History where
  safeCast = unsafeCastOnPrototypeName "History"


export %inline
Cast History Object where cast = believe_me
