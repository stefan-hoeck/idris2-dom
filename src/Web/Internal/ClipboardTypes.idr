module Web.Internal.ClipboardTypes

import JS

%default total


--------------------------------------------------------------------------------
--          Enums
--------------------------------------------------------------------------------

namespace PresentationStyle
  
  public export
  data PresentationStyle = Unspecified | Inline | Attachment
  
  export
  Show PresentationStyle where
    show Unspecified = "unspecified"
    show Inline = "inline"
    show Attachment = "attachment"
  
  export
  Eq PresentationStyle where
    (==) = (==) `on` show
  
  export
  Ord PresentationStyle where
    compare = compare `on` show
  
  export
  read : String -> Maybe PresentationStyle
  read "unspecified" = Just Unspecified
  read "inline" = Just Inline
  read "attachment" = Just Attachment
  read _ = Nothing
  
  export
  ToFFI PresentationStyle String where
    toFFI = show
  
  export
  FromFFI PresentationStyle String where
    fromFFI = read



--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data Clipboard : Type where [external]

export
ToFFI Clipboard Clipboard where toFFI = id

export
FromFFI Clipboard Clipboard where fromFFI = Just

export
SafeCast Clipboard where
  safeCast = unsafeCastOnPrototypeName "Clipboard"

export data ClipboardEvent : Type where [external]

export
ToFFI ClipboardEvent ClipboardEvent where toFFI = id

export
FromFFI ClipboardEvent ClipboardEvent where fromFFI = Just

export
SafeCast ClipboardEvent where
  safeCast = unsafeCastOnPrototypeName "ClipboardEvent"

export data ClipboardItem : Type where [external]

export
ToFFI ClipboardItem ClipboardItem where toFFI = id

export
FromFFI ClipboardItem ClipboardItem where fromFFI = Just

export
SafeCast ClipboardItem where
  safeCast = unsafeCastOnPrototypeName "ClipboardItem"


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export data ClipboardEventInit : Type where [external]

export
ToFFI ClipboardEventInit ClipboardEventInit where toFFI = id

export
FromFFI ClipboardEventInit ClipboardEventInit where fromFFI = Just

export data ClipboardItemOptions : Type where [external]

export
ToFFI ClipboardItemOptions ClipboardItemOptions where toFFI = id

export
FromFFI ClipboardItemOptions ClipboardItemOptions where fromFFI = Just

export data ClipboardPermissionDescriptor : Type where [external]

export
ToFFI ClipboardPermissionDescriptor ClipboardPermissionDescriptor where toFFI = id

export
FromFFI ClipboardPermissionDescriptor ClipboardPermissionDescriptor where fromFFI = Just



--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------

export data ClipboardItemDelayedCallback : Type where [external]

export
ToFFI ClipboardItemDelayedCallback ClipboardItemDelayedCallback where toFFI = id

export
FromFFI ClipboardItemDelayedCallback ClipboardItemDelayedCallback where fromFFI = Just

