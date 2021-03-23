module Web.ClipboardTypes

import Data.Maybe
import JS.Util

--------------------------------------------------------------------------------
--          Enums
--------------------------------------------------------------------------------

namespace PresentationStyle
  
  public export
  data PresentationStyle = Unspecified | Inline | Attachment

  public export
  Show PresentationStyle where
    show Unspecified = "unspecified"
    show Inline = "inline"
    show Attachment = "attachment"

  public export
  Eq PresentationStyle where
    (==) = (==) `on` show

  public export
  Ord PresentationStyle where
    compare = compare `on` show

  public export
  read : String -> Maybe PresentationStyle
  read "unspecified" = Just Unspecified
  read "inline" = Just Inline
  read "attachment" = Just Attachment
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (PresentationStyle.read s)}
             -> PresentationStyle
  fromString s = fromJust $ read s

  export
  ToJS PresentationStyle where
    toJS = toJS . show

  export
  FromJS PresentationStyle where
    fromJS = fromMaybe Unspecified . read . fromJS

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export
data Clipboard : Type where [external]

export
ToJS Clipboard where
  toJS = believe_me

export
FromJS Clipboard where
  fromJS = believe_me

export
data ClipboardEvent : Type where [external]

export
ToJS ClipboardEvent where
  toJS = believe_me

export
FromJS ClipboardEvent where
  fromJS = believe_me

export
data ClipboardItem : Type where [external]

export
ToJS ClipboardItem where
  toJS = believe_me

export
FromJS ClipboardItem where
  fromJS = believe_me


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export
data ClipboardEventInit : Type where [external]

export
ToJS ClipboardEventInit where
  toJS = believe_me

export
FromJS ClipboardEventInit where
  fromJS = believe_me

export
data ClipboardItemOptions : Type where [external]

export
ToJS ClipboardItemOptions where
  toJS = believe_me

export
FromJS ClipboardItemOptions where
  fromJS = believe_me

export
data ClipboardPermissionDescriptor : Type where [external]

export
ToJS ClipboardPermissionDescriptor where
  toJS = believe_me

export
FromJS ClipboardPermissionDescriptor where
  fromJS = believe_me