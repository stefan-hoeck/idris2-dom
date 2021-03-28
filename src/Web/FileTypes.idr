module Web.FileTypes
import JS

--------------------------------------------------------------------------------
--          Enums
--------------------------------------------------------------------------------

namespace EndingType
  
  public export
  data EndingType = Transparent | Native

  public export
  Show EndingType where
    show Transparent = "transparent"
    show Native = "native"

  public export
  Eq EndingType where
    (==) = (==) `on` show

  public export
  Ord EndingType where
    compare = compare `on` show

  public export
  read : String -> Maybe EndingType
  read "transparent" = Just Transparent
  read "native" = Just Native
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (EndingType.read s)}
             -> EndingType
  fromString s = fromJust $ read s

  export
  ToJS EndingType where
    toJS = toJS . show

  export
  FromJS EndingType where
    fromJS ptr = fromJS ptr >>= read

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data Blob : Type where [external]

export
SafeCast Blob where
  safeCast = unsafeCastOnPrototypeName "Blob"

export ToJS Blob where toJS = believe_me
export FromJS Blob where fromJS = safeCast

export data File : Type where [external]

export
SafeCast File where
  safeCast = unsafeCastOnPrototypeName "File"

export ToJS File where toJS = believe_me
export FromJS File where fromJS = safeCast

export data FileList : Type where [external]

export
SafeCast FileList where
  safeCast = unsafeCastOnPrototypeName "FileList"

export ToJS FileList where toJS = believe_me
export FromJS FileList where fromJS = safeCast

export data FileReader : Type where [external]

export
SafeCast FileReader where
  safeCast = unsafeCastOnPrototypeName "FileReader"

export ToJS FileReader where toJS = believe_me
export FromJS FileReader where fromJS = safeCast

export data FileReaderSync : Type where [external]

export
SafeCast FileReaderSync where
  safeCast = unsafeCastOnPrototypeName "FileReaderSync"

export ToJS FileReaderSync where toJS = believe_me
export FromJS FileReaderSync where fromJS = safeCast


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export data BlobPropertyBag : Type where [external]

export
SafeCast BlobPropertyBag where
  safeCast = unsafeCastOnPrototypeName "BlobPropertyBag"

export ToJS BlobPropertyBag where toJS = believe_me
export FromJS BlobPropertyBag where fromJS = safeCast

export data FilePropertyBag : Type where [external]

export
SafeCast FilePropertyBag where
  safeCast = unsafeCastOnPrototypeName "FilePropertyBag"

export ToJS FilePropertyBag where toJS = believe_me
export FromJS FilePropertyBag where fromJS = safeCast