module Web.ClipboardTypes

import Data.Maybe

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

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export
data Clipboard : Type where [external]

export
data ClipboardEvent : Type where [external]

export
data ClipboardItem : Type where [external]


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export
data ClipboardEventInit : Type where [external]

export
data ClipboardItemOptions : Type where [external]

export
data ClipboardPermissionDescriptor : Type where [external]