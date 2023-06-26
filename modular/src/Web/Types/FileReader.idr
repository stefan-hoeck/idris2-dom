module Web.Types.FileReader

import JS
import Web.Types.EventTarget


%default total

export data FileReader : Type where [external]

export
ToFFI FileReader FileReader where toFFI = id

export
FromFFI FileReader FileReader where fromFFI = Just

export
SafeCast FileReader where
  safeCast = unsafeCastOnPrototypeName "FileReader"


export %inline
Cast FileReader EventTarget where cast = believe_me


export %inline
Cast FileReader Object where cast = believe_me
