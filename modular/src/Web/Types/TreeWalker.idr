module Web.Types.TreeWalker

import JS


%default total

export data TreeWalker : Type where [external]

export
ToFFI TreeWalker TreeWalker where toFFI = id

export
FromFFI TreeWalker TreeWalker where fromFFI = Just

export
SafeCast TreeWalker where
  safeCast = unsafeCastOnPrototypeName "TreeWalker"


export %inline
Cast TreeWalker Object where cast = believe_me

