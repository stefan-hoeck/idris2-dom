module Web.Types.MutationObserver

import JS


%default total

export data MutationObserver : Type where [external]

export
ToFFI MutationObserver MutationObserver where toFFI = id

export
FromFFI MutationObserver MutationObserver where fromFFI = Just

export
SafeCast MutationObserver where
  safeCast = unsafeCastOnPrototypeName "MutationObserver"


export %inline
Cast MutationObserver Object where cast = believe_me

