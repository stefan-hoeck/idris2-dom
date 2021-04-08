module Web.Internal.FileTypes
 
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

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data Blob : Type where [external]

export
SafeCast Blob where
  safeCast = unsafeCastOnPrototypeName "Blob"

export data File : Type where [external]

export
SafeCast File where
  safeCast = unsafeCastOnPrototypeName "File"

export data FileList : Type where [external]

export
SafeCast FileList where
  safeCast = unsafeCastOnPrototypeName "FileList"

export data FileReader : Type where [external]

export
SafeCast FileReader where
  safeCast = unsafeCastOnPrototypeName "FileReader"

export data FileReaderSync : Type where [external]

export
SafeCast FileReaderSync where
  safeCast = unsafeCastOnPrototypeName "FileReaderSync"

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export data BlobPropertyBag : Type where [external]

export
SafeCast BlobPropertyBag where
  safeCast = unsafeCastOnPrototypeName "BlobPropertyBag"

export data FilePropertyBag : Type where [external]

export
SafeCast FilePropertyBag where
  safeCast = unsafeCastOnPrototypeName "FilePropertyBag"

