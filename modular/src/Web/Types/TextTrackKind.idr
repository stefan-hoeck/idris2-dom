module Web.Types.TextTrackKind

import JS

%default total

public export
data TextTrackKind = Subtitles | Captions | Descriptions | Chapters | Metadata

export
Show TextTrackKind where
  show Subtitles = "subtitles"
  show Captions = "captions"
  show Descriptions = "descriptions"
  show Chapters = "chapters"
  show Metadata = "metadata"

export
Eq TextTrackKind where
  (==) = (==) `on` show

export
Ord TextTrackKind where
  compare = compare `on` show

export
read : String -> Maybe TextTrackKind
read "subtitles" = Just Subtitles
read "captions" = Just Captions
read "descriptions" = Just Descriptions
read "chapters" = Just Chapters
read "metadata" = Just Metadata
read _ = Nothing

export
ToFFI TextTrackKind String where
  toFFI = show

export
FromFFI TextTrackKind String where
  fromFFI = read
