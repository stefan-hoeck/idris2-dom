module JS.Date

import Data.String

%default total

||| External data type for working with JS `Date` values
public export
data JSDate : Type where [external]

%foreign "javascript:lambda:(w) => new Date(w)"
prim__date : Bits32 -> JSDate

%foreign "javascript:lambda:(w) => new Date(w)"
prim__stringDate : String -> JSDate

%foreign "javascript:lambda:(w) => w.toLocaleDateString()"
prim__toLocaleDateString : JSDate -> String

%foreign "javascript:lambda:(w) => w.toLocaleTimeString()"
prim__toLocaleTimeString : JSDate -> String

%foreign "javascript:lambda:(d) => d.getTime()"
prim__getTime : JSDate -> Bits32

%foreign "javascript:lambda:(d) => d.getFullYear()"
prim__getFullYear : JSDate -> Bits32

%foreign "javascript:lambda:(d) => d.getMonth()"
prim__getMonth : JSDate -> Bits32

%foreign "javascript:lambda:(d) => d.getDate()"
prim__getDate : JSDate -> Bits32

export %inline
Cast Bits32 JSDate where cast = prim__date

export %inline
Cast String JSDate where cast = prim__stringDate

export %inline
toLocaleDateString : JSDate -> String
toLocaleDateString = prim__toLocaleDateString

export %inline
toLocaleTimeString : JSDate -> String
toLocaleTimeString = prim__toLocaleTimeString

export %inline
getTime : JSDate -> Bits32
getTime = prim__getTime

export %inline
getFullYear : JSDate -> Bits32
getFullYear = prim__getFullYear

export %inline
getMonth : JSDate -> Bits32
getMonth = prim__getMonth

export %inline
getDate : JSDate -> Bits32
getDate = prim__getDate

pad2 : Bits32 -> String
pad2 v = padLeft 2 '0' (show v)

||| Prints a date in the format "yyyy-mm-dd"
export
dateString : Bits32 -> String
dateString ts =
  let d := cast {to = JSDate} ts
   in "\{show $ getFullYear d}-\{pad2 $ getMonth d + 1}-\{pad2 $ getDate d}"
