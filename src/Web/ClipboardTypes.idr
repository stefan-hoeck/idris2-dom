module Web.ClipboardTypes
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

  export
  ToJS PresentationStyle where
    toJS = toJS . show

  export
  FromJS PresentationStyle where
    fromJS ptr = fromJS ptr >>= read

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------
export data Clipboard : Type where [external]

export
SafeCast Clipboard where
  safeCast = unsafeCastOnPrototypeName "Clipboard"

export ToJS Clipboard where toJS = believe_me
export FromJS Clipboard where fromJS = safeCast
export data ClipboardEvent : Type where [external]

export
SafeCast ClipboardEvent where
  safeCast = unsafeCastOnPrototypeName "ClipboardEvent"

export ToJS ClipboardEvent where toJS = believe_me
export FromJS ClipboardEvent where fromJS = safeCast
export data ClipboardItem : Type where [external]

export
SafeCast ClipboardItem where
  safeCast = unsafeCastOnPrototypeName "ClipboardItem"

export ToJS ClipboardItem where toJS = believe_me
export FromJS ClipboardItem where fromJS = safeCast


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------
export data ClipboardEventInit : Type where [external]

export
SafeCast ClipboardEventInit where
  safeCast = unsafeCastOnPrototypeName "ClipboardEventInit"

export ToJS ClipboardEventInit where toJS = believe_me
export FromJS ClipboardEventInit where fromJS = safeCast
export data ClipboardItemOptions : Type where [external]

export
SafeCast ClipboardItemOptions where
  safeCast = unsafeCastOnPrototypeName "ClipboardItemOptions"

export ToJS ClipboardItemOptions where toJS = believe_me
export FromJS ClipboardItemOptions where fromJS = safeCast
export data ClipboardPermissionDescriptor : Type where [external]

export
SafeCast ClipboardPermissionDescriptor where
  safeCast = unsafeCastOnPrototypeName "ClipboardPermissionDescriptor"

export ToJS ClipboardPermissionDescriptor where toJS = believe_me
export FromJS ClipboardPermissionDescriptor where fromJS = safeCast