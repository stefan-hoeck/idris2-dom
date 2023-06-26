module Web.Types.RequestDestination

import JS

%default total

public export
data RequestDestination =
    Empty
  | Audio
  | Audioworklet
  | Document
  | Embed
  | Font
  | Frame
  | Iframe
  | Image
  | Manifest
  | Object
  | Paintworklet
  | Report
  | Script
  | Sharedworker
  | Style
  | Track
  | Video
  | Worker
  | Xslt

export
Show RequestDestination where
  show Empty = ""
  show Audio = "audio"
  show Audioworklet = "audioworklet"
  show Document = "document"
  show Embed = "embed"
  show Font = "font"
  show Frame = "frame"
  show Iframe = "iframe"
  show Image = "image"
  show Manifest = "manifest"
  show Object = "object"
  show Paintworklet = "paintworklet"
  show Report = "report"
  show Script = "script"
  show Sharedworker = "sharedworker"
  show Style = "style"
  show Track = "track"
  show Video = "video"
  show Worker = "worker"
  show Xslt = "xslt"

export
Eq RequestDestination where
  (==) = (==) `on` show

export
Ord RequestDestination where
  compare = compare `on` show

export
read : String -> Maybe RequestDestination
read "" = Just Empty
read "audio" = Just Audio
read "audioworklet" = Just Audioworklet
read "document" = Just Document
read "embed" = Just Embed
read "font" = Just Font
read "frame" = Just Frame
read "iframe" = Just Iframe
read "image" = Just Image
read "manifest" = Just Manifest
read "object" = Just Object
read "paintworklet" = Just Paintworklet
read "report" = Just Report
read "script" = Just Script
read "sharedworker" = Just Sharedworker
read "style" = Just Style
read "track" = Just Track
read "video" = Just Video
read "worker" = Just Worker
read "xslt" = Just Xslt
read _ = Nothing

export
ToFFI RequestDestination String where
  toFFI = show

export
FromFFI RequestDestination String where
  fromFFI = read
