module Web.FileTypes

import Data.Maybe
import JS.Util

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
    fromJS = fromMaybe Transparent . read . fromJS

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export
data Blob : Type where [external]

export
ToJS Blob where
  toJS = believe_me

export
FromJS Blob where
  fromJS = believe_me

export
data File : Type where [external]

export
ToJS File where
  toJS = believe_me

export
FromJS File where
  fromJS = believe_me

export
data FileList : Type where [external]

export
ToJS FileList where
  toJS = believe_me

export
FromJS FileList where
  fromJS = believe_me

export
data FileReader : Type where [external]

export
ToJS FileReader where
  toJS = believe_me

export
FromJS FileReader where
  fromJS = believe_me

export
data FileReaderSync : Type where [external]

export
ToJS FileReaderSync where
  toJS = believe_me

export
FromJS FileReaderSync where
  fromJS = believe_me


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export
data BlobPropertyBag : Type where [external]

export
ToJS BlobPropertyBag where
  toJS = believe_me

export
FromJS BlobPropertyBag where
  fromJS = believe_me

export
data FilePropertyBag : Type where [external]

export
ToJS FilePropertyBag where
  toJS = believe_me

export
FromJS FilePropertyBag where
  fromJS = believe_me