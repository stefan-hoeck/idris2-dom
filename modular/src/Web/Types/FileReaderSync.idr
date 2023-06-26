module Web.Types.FileReaderSync

import JS


%default total

export data FileReaderSync : Type where [external]

export
ToFFI FileReaderSync FileReaderSync where toFFI = id

export
FromFFI FileReaderSync FileReaderSync where fromFFI = Just

export
SafeCast FileReaderSync where
  safeCast = unsafeCastOnPrototypeName "FileReaderSync"


export %inline
Cast FileReaderSync Object where cast = believe_me

