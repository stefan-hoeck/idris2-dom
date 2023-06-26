module Web.Types.CanvasLineCap

import JS

%default total

public export
data CanvasLineCap = Butt | Round | Square

export
Show CanvasLineCap where
  show Butt = "butt"
  show Round = "round"
  show Square = "square"

export
Eq CanvasLineCap where
  (==) = (==) `on` show

export
Ord CanvasLineCap where
  compare = compare `on` show

export
read : String -> Maybe CanvasLineCap
read "butt" = Just Butt
read "round" = Just Round
read "square" = Just Square
read _ = Nothing

export
ToFFI CanvasLineCap String where
  toFFI = show

export
FromFFI CanvasLineCap String where
  fromFFI = read
