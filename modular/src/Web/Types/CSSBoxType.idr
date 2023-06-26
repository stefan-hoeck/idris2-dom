module Web.Types.CSSBoxType

import JS

%default total

public export
data CSSBoxType = Margin | Border | Padding | Content

export
Show CSSBoxType where
  show Margin = "margin"
  show Border = "border"
  show Padding = "padding"
  show Content = "content"

export
Eq CSSBoxType where
  (==) = (==) `on` show

export
Ord CSSBoxType where
  compare = compare `on` show

export
read : String -> Maybe CSSBoxType
read "margin" = Just Margin
read "border" = Just Border
read "padding" = Just Padding
read "content" = Just Content
read _ = Nothing

export
ToFFI CSSBoxType String where
  toFFI = show

export
FromFFI CSSBoxType String where
  fromFFI = read
