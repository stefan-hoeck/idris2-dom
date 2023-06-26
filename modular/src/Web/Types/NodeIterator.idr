module Web.Types.NodeIterator

import JS


%default total

export data NodeIterator : Type where [external]

export
ToFFI NodeIterator NodeIterator where toFFI = id

export
FromFFI NodeIterator NodeIterator where fromFFI = Just

export
SafeCast NodeIterator where
  safeCast = unsafeCastOnPrototypeName "NodeIterator"


export %inline
Cast NodeIterator Object where cast = believe_me

