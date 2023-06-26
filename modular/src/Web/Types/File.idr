module Web.Types.File

import JS
import Web.Types.Blob


%default total

export data File : Type where [external]

export
ToFFI File File where toFFI = id

export
FromFFI File File where fromFFI = Just

export
SafeCast File where
  safeCast = unsafeCastOnPrototypeName "File"


export %inline
Cast File Blob where cast = believe_me


export %inline
Cast File Object where cast = believe_me
