module Web.Internal.FileTypes

import JS

%default total


--------------------------------------------------------------------------------
--          Enums
--------------------------------------------------------------------------------

namespace EndingType

  public export
  data EndingType = Transparent | Native

  export
  Show EndingType where
    show Transparent = "transparent"
    show Native = "native"

  export
  Eq EndingType where
    (==) = (==) `on` show

  export
  Ord EndingType where
    compare = compare `on` show

  export
  read : String -> Maybe EndingType
  read "transparent" = Just Transparent
  read "native" = Just Native
  read _ = Nothing

  export
  ToFFI EndingType String where
    toFFI = show

  export
  FromFFI EndingType String where
    fromFFI = read



--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data Blob : Type where [external]

export
ToFFI Blob Blob where toFFI = id

export
FromFFI Blob Blob where fromFFI = Just

export
SafeCast Blob where
  safeCast = unsafeCastOnPrototypeName "Blob"

export data File : Type where [external]

export
ToFFI File File where toFFI = id

export
FromFFI File File where fromFFI = Just

export
SafeCast File where
  safeCast = unsafeCastOnPrototypeName "File"

export data FileList : Type where [external]

export
ToFFI FileList FileList where toFFI = id

export
FromFFI FileList FileList where fromFFI = Just

export
SafeCast FileList where
  safeCast = unsafeCastOnPrototypeName "FileList"

export data FileReader : Type where [external]

export
ToFFI FileReader FileReader where toFFI = id

export
FromFFI FileReader FileReader where fromFFI = Just

export
SafeCast FileReader where
  safeCast = unsafeCastOnPrototypeName "FileReader"

export data FileReaderSync : Type where [external]

export
ToFFI FileReaderSync FileReaderSync where toFFI = id

export
FromFFI FileReaderSync FileReaderSync where fromFFI = Just

export
SafeCast FileReaderSync where
  safeCast = unsafeCastOnPrototypeName "FileReaderSync"


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export data BlobPropertyBag : Type where [external]

export
ToFFI BlobPropertyBag BlobPropertyBag where toFFI = id

export
FromFFI BlobPropertyBag BlobPropertyBag where fromFFI = Just

export data FilePropertyBag : Type where [external]

export
ToFFI FilePropertyBag FilePropertyBag where toFFI = id

export
FromFFI FilePropertyBag FilePropertyBag where fromFFI = Just
