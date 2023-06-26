module Web.Types.CanvasTextAlign

import JS

%default total

public export
data CanvasTextAlign = Start | End | Left | Right | Center

export
Show CanvasTextAlign where
  show Start = "start"
  show End = "end"
  show Left = "left"
  show Right = "right"
  show Center = "center"

export
Eq CanvasTextAlign where
  (==) = (==) `on` show

export
Ord CanvasTextAlign where
  compare = compare `on` show

export
read : String -> Maybe CanvasTextAlign
read "start" = Just Start
read "end" = Just End
read "left" = Just Left
read "right" = Just Right
read "center" = Just Center
read _ = Nothing

export
ToFFI CanvasTextAlign String where
  toFFI = show

export
FromFFI CanvasTextAlign String where
  fromFFI = read
