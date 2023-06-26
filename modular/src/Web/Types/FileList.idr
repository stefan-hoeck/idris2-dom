module Web.Types.FileList

import JS


%default total

export data FileList : Type where [external]

export
ToFFI FileList FileList where toFFI = id

export
FromFFI FileList FileList where fromFFI = Just

export
SafeCast FileList where
  safeCast = unsafeCastOnPrototypeName "FileList"


export %inline
Cast FileList Object where cast = believe_me

