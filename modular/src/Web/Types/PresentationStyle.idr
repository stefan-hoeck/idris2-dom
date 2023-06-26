module Web.Types.PresentationStyle

import JS

%default total

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
