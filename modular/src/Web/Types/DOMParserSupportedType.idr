module Web.Types.DOMParserSupportedType

import JS

%default total

public export
data DOMParserSupportedType =
    TextHtml
  | TextXml
  | ApplicationXml
  | ApplicationXhtmlXml
  | ImageSvgXml

export
Show DOMParserSupportedType where
  show TextHtml = "text/html"
  show TextXml = "text/xml"
  show ApplicationXml = "application/xml"
  show ApplicationXhtmlXml = "application/xhtml+xml"
  show ImageSvgXml = "image/svg+xml"

export
Eq DOMParserSupportedType where
  (==) = (==) `on` show

export
Ord DOMParserSupportedType where
  compare = compare `on` show

export
read : String -> Maybe DOMParserSupportedType
read "text/html" = Just TextHtml
read "text/xml" = Just TextXml
read "application/xml" = Just ApplicationXml
read "application/xhtml+xml" = Just ApplicationXhtmlXml
read "image/svg+xml" = Just ImageSvgXml
read _ = Nothing

export
ToFFI DOMParserSupportedType String where
  toFFI = show

export
FromFFI DOMParserSupportedType String where
  fromFFI = read
