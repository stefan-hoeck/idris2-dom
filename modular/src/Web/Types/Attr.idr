module Web.Types.Attr

import JS
import Web.Types.EventTarget
import Web.Types.Node


%default total

export data Attr : Type where [external]

export
ToFFI Attr Attr where toFFI = id

export
FromFFI Attr Attr where fromFFI = Just

export
SafeCast Attr where
  safeCast = unsafeCastOnPrototypeName "Attr"


export %inline
Cast Attr Node where cast = believe_me


export %inline
Cast Attr EventTarget where cast = believe_me


export %inline
Cast Attr Object where cast = believe_me
