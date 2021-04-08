module Web.Internal.ClipboardTypes
 
import JS

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

export data Clipboard : Type where [external]

export
SafeCast Clipboard where
  safeCast = unsafeCastOnPrototypeName "Clipboard"

export data ClipboardEvent : Type where [external]

export
SafeCast ClipboardEvent where
  safeCast = unsafeCastOnPrototypeName "ClipboardEvent"

export data ClipboardItem : Type where [external]

export
SafeCast ClipboardItem where
  safeCast = unsafeCastOnPrototypeName "ClipboardItem"

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export data ClipboardEventInit : Type where [external]

export
SafeCast ClipboardEventInit where
  safeCast = unsafeCastOnPrototypeName "ClipboardEventInit"

export data ClipboardItemOptions : Type where [external]

export
SafeCast ClipboardItemOptions where
  safeCast = unsafeCastOnPrototypeName "ClipboardItemOptions"

export data ClipboardPermissionDescriptor : Type where [external]

export
SafeCast ClipboardPermissionDescriptor where
  safeCast = unsafeCastOnPrototypeName "ClipboardPermissionDescriptor"


--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------

export data ClipboardItemDelayedCallback : Type where [external]